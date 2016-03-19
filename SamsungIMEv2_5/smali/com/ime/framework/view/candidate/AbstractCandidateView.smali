.class public abstract Lcom/ime/framework/view/candidate/AbstractCandidateView;
.super Landroid/widget/LinearLayout;
.source "AbstractCandidateView.java"


# instance fields
.field private final CANDIDATE_VIEW_BASE_INDEX:I

.field private DoneButtonView:Landroid/view/View;

.field private KNOB_SHOW_CANDIDATES_COUNT:I

.field private final SCROLL_CANDIDATE_VIEW_LEFT_SCROLL_STATE:I

.field private final SCROLL_CANDIDATE_VIEW_RIGHT_SCROLL_STATE:I

.field private final UPDATE_PREVIOUS_KEY_STATE:I

.field protected mCandidateLayout:Lcom/ime/framework/view/candidate/AbstractCandidateLayout;

.field private mClipboardButton:Landroid/view/View;

.field public mCreateExpandCandidateLayout:Ljava/lang/Runnable;

.field private mDialogBuilder:Landroid/app/AlertDialog$Builder;

.field private mDisplayedCount:I

.field mDrawHandler:Landroid/os/Handler;

.field private mEmoticonButton:Landroid/view/View;

.field private mExpandButton:Landroid/view/View;

.field private mExpandButtonLayout:Landroid/view/View;

.field private mExpandCandidateLayout:Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;

.field private mExpandCandidatePopup:Landroid/widget/PopupWindow;

.field private mExpandCandidateSpellScrollView:Lcom/ime/framework/view/candidate/CandidateExpandSpellScrollView;

.field private mExpandHeightHandler:Landroid/os/Handler;

.field public mFireUpdateCandidateRunnable:Ljava/lang/Runnable;

.field private mFirstButtonInCandidate:Landroid/widget/Button;

.field public mHandler:Landroid/os/Handler;

.field protected mInputManager:Lcom/ime/framework/common/InputManager;

.field protected mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

.field protected mIsAlreadyDismissExpandPopup:Z

.field protected mIsPopupCandidateView:Z

.field protected mIsSupportOneHanded:Z

.field protected mIsTabletMode:Z

.field private mIsUpdateCandidateLayout:Z

.field private mLanguageButton:Landroid/view/View;

.field private mLeftArrowKnobButton:Landroid/view/View;

.field private mMobileKeyboardToolBar:Landroid/view/View;

.field protected mPrivateImeOptionsController:Lcom/ime/framework/common/PrivateImeOptionsController;

.field protected mRepository:Lcom/ime/framework/repository/Repository;

.field private mRightArrowKnobButton:Landroid/view/View;

.field private mSettingsButton:Landroid/view/View;

.field private mStartKnobIndex:I

.field private mSuggestionViews:[Lcom/ime/framework/view/candidate/CandidateTextView;

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

.field private mSuggestionsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private mSwitchingDialog:Landroid/app/AlertDialog;

.field private mToolBarContainer:Lcom/ime/framework/view/toolbar/ToolBarContainer;

.field private mVoiceButton:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mExpandCandidateSpellScrollView:Lcom/ime/framework/view/candidate/CandidateExpandSpellScrollView;

    const/16 v0, 0x65

    iput v0, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->CANDIDATE_VIEW_BASE_INDEX:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->UPDATE_PREVIOUS_KEY_STATE:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->SCROLL_CANDIDATE_VIEW_RIGHT_SCROLL_STATE:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->SCROLL_CANDIDATE_VIEW_LEFT_SCROLL_STATE:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mStartKnobIndex:I

    const/4 v0, 0x5

    iput v0, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->KNOB_SHOW_CANDIDATES_COUNT:I

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mExpandHeightHandler:Landroid/os/Handler;

    new-instance v0, Lcom/ime/framework/view/candidate/AbstractCandidateView$1;

    invoke-direct {v0, p0}, Lcom/ime/framework/view/candidate/AbstractCandidateView$1;-><init>(Lcom/ime/framework/view/candidate/AbstractCandidateView;)V

    iput-object v0, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mCreateExpandCandidateLayout:Ljava/lang/Runnable;

    new-instance v0, Lcom/ime/framework/view/candidate/AbstractCandidateView$2;

    invoke-direct {v0, p0}, Lcom/ime/framework/view/candidate/AbstractCandidateView$2;-><init>(Lcom/ime/framework/view/candidate/AbstractCandidateView;)V

    iput-object v0, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mFireUpdateCandidateRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/ime/framework/view/candidate/AbstractCandidateView$7;

    invoke-direct {v0, p0}, Lcom/ime/framework/view/candidate/AbstractCandidateView$7;-><init>(Lcom/ime/framework/view/candidate/AbstractCandidateView;)V

    iput-object v0, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mDrawHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Lcom/ime/framework/view/candidate/AbstractCandidateView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mExpandCandidateSpellScrollView:Lcom/ime/framework/view/candidate/CandidateExpandSpellScrollView;

    const/16 v0, 0x65

    iput v0, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->CANDIDATE_VIEW_BASE_INDEX:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->UPDATE_PREVIOUS_KEY_STATE:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->SCROLL_CANDIDATE_VIEW_RIGHT_SCROLL_STATE:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->SCROLL_CANDIDATE_VIEW_LEFT_SCROLL_STATE:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mStartKnobIndex:I

    const/4 v0, 0x5

    iput v0, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->KNOB_SHOW_CANDIDATES_COUNT:I

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mExpandHeightHandler:Landroid/os/Handler;

    new-instance v0, Lcom/ime/framework/view/candidate/AbstractCandidateView$1;

    invoke-direct {v0, p0}, Lcom/ime/framework/view/candidate/AbstractCandidateView$1;-><init>(Lcom/ime/framework/view/candidate/AbstractCandidateView;)V

    iput-object v0, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mCreateExpandCandidateLayout:Ljava/lang/Runnable;

    new-instance v0, Lcom/ime/framework/view/candidate/AbstractCandidateView$2;

    invoke-direct {v0, p0}, Lcom/ime/framework/view/candidate/AbstractCandidateView$2;-><init>(Lcom/ime/framework/view/candidate/AbstractCandidateView;)V

    iput-object v0, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mFireUpdateCandidateRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/ime/framework/view/candidate/AbstractCandidateView$7;

    invoke-direct {v0, p0}, Lcom/ime/framework/view/candidate/AbstractCandidateView$7;-><init>(Lcom/ime/framework/view/candidate/AbstractCandidateView;)V

    iput-object v0, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mDrawHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Lcom/ime/framework/view/candidate/AbstractCandidateView;->init(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/ime/framework/view/candidate/AbstractCandidateView;)Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mExpandCandidateLayout:Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;

    return-object v0
.end method

.method static synthetic access$002(Lcom/ime/framework/view/candidate/AbstractCandidateView;Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;)Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;
    .locals 0

    iput-object p1, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mExpandCandidateLayout:Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;

    return-object p1
.end method

.method static synthetic access$100(Lcom/ime/framework/view/candidate/AbstractCandidateView;)Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mSwitchingDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/ime/framework/view/candidate/AbstractCandidateView;)[Lcom/ime/framework/view/candidate/CandidateTextView;
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mSuggestionViews:[Lcom/ime/framework/view/candidate/CandidateTextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/ime/framework/view/candidate/AbstractCandidateView;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mExpandButtonLayout:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$300(Lcom/ime/framework/view/candidate/AbstractCandidateView;)Lcom/ime/framework/view/candidate/CandidateTextView;
    .locals 1

    invoke-direct {p0}, Lcom/ime/framework/view/candidate/AbstractCandidateView;->getFocussedCandidateView()Lcom/ime/framework/view/candidate/CandidateTextView;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/ime/framework/view/candidate/AbstractCandidateView;Lcom/ime/framework/view/candidate/CandidateTextView;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ime/framework/view/candidate/AbstractCandidateView;->updateDrawableState(Lcom/ime/framework/view/candidate/CandidateTextView;)V

    return-void
.end method

.method static synthetic access$500(Lcom/ime/framework/view/candidate/AbstractCandidateView;)I
    .locals 1

    iget v0, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mStartKnobIndex:I

    return v0
.end method

.method static synthetic access$600(Lcom/ime/framework/view/candidate/AbstractCandidateView;)I
    .locals 1

    iget v0, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->KNOB_SHOW_CANDIDATES_COUNT:I

    return v0
.end method

.method static synthetic access$700(Lcom/ime/framework/view/candidate/AbstractCandidateView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ime/framework/view/candidate/AbstractCandidateView;->updateRightArrowVisibility(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/ime/framework/view/candidate/AbstractCandidateView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ime/framework/view/candidate/AbstractCandidateView;->updateLeftArrowVisibility(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/ime/framework/view/candidate/AbstractCandidateView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ime/framework/view/candidate/AbstractCandidateView;->updateKnobViewVisibility(I)V

    return-void
.end method

.method private getFocussedCandidateView()Lcom/ime/framework/view/candidate/CandidateTextView;
    .locals 5

    iget-object v4, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mCandidateLayout:Lcom/ime/framework/view/candidate/AbstractCandidateLayout;

    invoke-virtual {v4}, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->getSuggestionViews()[Lcom/ime/framework/view/candidate/CandidateTextView;

    move-result-object v4

    iput-object v4, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mSuggestionViews:[Lcom/ime/framework/view/candidate/CandidateTextView;

    iget-object v0, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mSuggestionViews:[Lcom/ime/framework/view/candidate/CandidateTextView;

    array-length v2, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    if-nez v3, :cond_2

    :cond_0
    const/4 v3, 0x0

    :cond_1
    return-object v3

    :cond_2
    iget-boolean v4, v3, Lcom/ime/framework/view/candidate/CandidateTextView;->mIsInFocusState:Z

    if-nez v4, :cond_1

    iget-boolean v4, v3, Lcom/ime/framework/view/candidate/CandidateTextView;->mIsInPressedState:Z

    if-nez v4, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private getFocussedCandidateViewIndex()I
    .locals 5

    iget-object v4, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mCandidateLayout:Lcom/ime/framework/view/candidate/AbstractCandidateLayout;

    invoke-virtual {v4}, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->getSuggestionViews()[Lcom/ime/framework/view/candidate/CandidateTextView;

    move-result-object v4

    iput-object v4, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mSuggestionViews:[Lcom/ime/framework/view/candidate/CandidateTextView;

    iget-object v0, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mSuggestionViews:[Lcom/ime/framework/view/candidate/CandidateTextView;

    array-length v2, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    if-nez v3, :cond_1

    :cond_0
    const/4 v4, -0x1

    :goto_1
    return v4

    :cond_1
    iget-boolean v4, v3, Lcom/ime/framework/view/candidate/CandidateTextView;->mIsInFocusState:Z

    if-eqz v4, :cond_2

    iget v4, v3, Lcom/ime/framework/view/candidate/CandidateTextView;->mViewIndex:I

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private getKnobFocusKeyIndex(I)I
    .locals 3

    const/4 v0, -0x1

    iget v1, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mStartKnobIndex:I

    if-ne v1, p1, :cond_1

    const/4 v0, 0x3

    :cond_0
    :goto_0
    return v0

    :cond_1
    add-int/lit8 v2, v1, 0x1

    if-ne v2, p1, :cond_2

    const/16 v0, 0x8

    goto :goto_0

    :cond_2
    add-int/lit8 v2, v1, 0x2

    if-ne v2, p1, :cond_3

    const/16 v0, 0xd

    goto :goto_0

    :cond_3
    add-int/lit8 v2, v1, 0x3

    if-ne v2, p1, :cond_4

    const/16 v0, 0x13

    goto :goto_0

    :cond_4
    add-int/lit8 v2, v1, 0x4

    if-ne v2, p1, :cond_0

    const/16 v0, 0x18

    goto :goto_0
.end method

.method private getPressedCandidateViewIndex()I
    .locals 5

    iget-object v4, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mCandidateLayout:Lcom/ime/framework/view/candidate/AbstractCandidateLayout;

    invoke-virtual {v4}, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->getSuggestionViews()[Lcom/ime/framework/view/candidate/CandidateTextView;

    move-result-object v4

    iput-object v4, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mSuggestionViews:[Lcom/ime/framework/view/candidate/CandidateTextView;

    iget-object v0, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mSuggestionViews:[Lcom/ime/framework/view/candidate/CandidateTextView;

    array-length v2, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    if-nez v3, :cond_1

    :cond_0
    const/4 v4, -0x1

    :goto_1
    return v4

    :cond_1
    iget-boolean v4, v3, Lcom/ime/framework/view/candidate/CandidateTextView;->mIsInPressedState:Z

    if-eqz v4, :cond_2

    iget v4, v3, Lcom/ime/framework/view/candidate/CandidateTextView;->mViewIndex:I

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private handleKnobCenterKey([Lcom/ime/framework/view/candidate/CandidateTextView;I)V
    .locals 6

    const/4 v2, -0x1

    move-object v0, p1

    array-length v3, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v0, v1

    if-nez v4, :cond_1

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-boolean v5, v4, Lcom/ime/framework/view/candidate/CandidateTextView;->mIsInFocusState:Z

    if-eqz v5, :cond_2

    iget v2, v4, Lcom/ime/framework/view/candidate/CandidateTextView;->mViewIndex:I

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/ime/framework/view/candidate/CandidateTextView;->mIsInFocusState:Z

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/ime/framework/view/candidate/CandidateTextView;->mIsInPressedState:Z

    invoke-direct {p0, v4}, Lcom/ime/framework/view/candidate/AbstractCandidateView;->updateDrawableState(Lcom/ime/framework/view/candidate/CandidateTextView;)V

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private handleKnobLeftArrow([Lcom/ime/framework/view/candidate/CandidateTextView;)V
    .locals 10

    const/4 v2, -0x1

    move-object v0, p1

    array-length v3, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v5, v0, v1

    if-nez v5, :cond_2

    :cond_0
    :goto_1
    iget v6, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mStartKnobIndex:I

    if-lez v6, :cond_4

    iget v6, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mStartKnobIndex:I

    if-ne v2, v6, :cond_4

    iget-object v6, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mCandidateLayout:Lcom/ime/framework/view/candidate/AbstractCandidateLayout;

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mCandidateLayout:Lcom/ime/framework/view/candidate/AbstractCandidateLayout;

    iget v7, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mStartKnobIndex:I

    iget v8, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->KNOB_SHOW_CANDIDATES_COUNT:I

    sub-int/2addr v7, v8

    invoke-virtual {v6, v7}, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->scrollToPosition(I)V

    iget-object v6, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mDrawHandler:Landroid/os/Handler;

    const/4 v7, 0x3

    invoke-static {v6, v7}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v4

    iput v2, v4, Landroid/os/Message;->arg1:I

    iget-object v6, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mDrawHandler:Landroid/os/Handler;

    const-wide/16 v8, 0x64

    invoke-virtual {v6, v4, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_1
    :goto_2
    return-void

    :cond_2
    iget-boolean v6, v5, Lcom/ime/framework/view/candidate/CandidateTextView;->mIsInFocusState:Z

    if-eqz v6, :cond_3

    iget v6, v5, Lcom/ime/framework/view/candidate/CandidateTextView;->mViewIndex:I

    if-eqz v6, :cond_3

    iget v2, v5, Lcom/ime/framework/view/candidate/CandidateTextView;->mViewIndex:I

    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/ime/framework/view/candidate/CandidateTextView;->mIsInFocusState:Z

    invoke-direct {p0, v5}, Lcom/ime/framework/view/candidate/AbstractCandidateView;->updateDrawableState(Lcom/ime/framework/view/candidate/CandidateTextView;)V

    goto :goto_1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    const/4 v6, -0x1

    if-eq v2, v6, :cond_1

    if-lez v2, :cond_1

    add-int/lit8 v6, v2, -0x1

    aget-object v5, p1, v6

    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/ime/framework/view/candidate/CandidateTextView;->mIsInFocusState:Z

    invoke-direct {p0, v5}, Lcom/ime/framework/view/candidate/AbstractCandidateView;->updateDrawableState(Lcom/ime/framework/view/candidate/CandidateTextView;)V

    goto :goto_2
.end method

.method private handleKnobRightArrow([Lcom/ime/framework/view/candidate/CandidateTextView;)V
    .locals 11

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, -0x1

    const/4 v2, -0x1

    move-object v0, p1

    array-length v3, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v5, v0, v1

    if-nez v5, :cond_2

    :cond_0
    :goto_1
    if-eq v2, v8, :cond_4

    add-int/lit8 v6, v2, 0x1

    iget-object v7, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mSuggestionsList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_4

    add-int/lit8 v6, v2, 0x1

    array-length v7, p1

    if-ge v6, v7, :cond_4

    iget v6, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mStartKnobIndex:I

    add-int/lit8 v6, v6, 0x4

    if-ne v2, v6, :cond_4

    iget-object v6, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mCandidateLayout:Lcom/ime/framework/view/candidate/AbstractCandidateLayout;

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mCandidateLayout:Lcom/ime/framework/view/candidate/AbstractCandidateLayout;

    iget v7, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mStartKnobIndex:I

    iget v8, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->KNOB_SHOW_CANDIDATES_COUNT:I

    add-int/2addr v7, v8

    invoke-virtual {v6, v7}, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->scrollToPosition(I)V

    iget-object v6, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mDrawHandler:Landroid/os/Handler;

    const/4 v7, 0x2

    invoke-static {v6, v7}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v4

    iput v2, v4, Landroid/os/Message;->arg1:I

    iget-object v6, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mDrawHandler:Landroid/os/Handler;

    const-wide/16 v8, 0x64

    invoke-virtual {v6, v4, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_1
    :goto_2
    return-void

    :cond_2
    iget-boolean v6, v5, Lcom/ime/framework/view/candidate/CandidateTextView;->mIsInFocusState:Z

    if-eqz v6, :cond_3

    iget v2, v5, Lcom/ime/framework/view/candidate/CandidateTextView;->mViewIndex:I

    iput-boolean v9, v5, Lcom/ime/framework/view/candidate/CandidateTextView;->mIsInFocusState:Z

    invoke-direct {p0, v5}, Lcom/ime/framework/view/candidate/AbstractCandidateView;->updateDrawableState(Lcom/ime/framework/view/candidate/CandidateTextView;)V

    goto :goto_1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    if-eq v2, v8, :cond_5

    add-int/lit8 v6, v2, 0x1

    iget-object v7, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mSuggestionsList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_5

    add-int/lit8 v6, v2, 0x1

    array-length v7, p1

    if-ge v6, v7, :cond_5

    add-int/lit8 v6, v2, 0x1

    aget-object v5, p1, v6

    iput-boolean v10, v5, Lcom/ime/framework/view/candidate/CandidateTextView;->mIsInFocusState:Z

    invoke-direct {p0, v5}, Lcom/ime/framework/view/candidate/AbstractCandidateView;->updateDrawableState(Lcom/ime/framework/view/candidate/CandidateTextView;)V

    goto :goto_2

    :cond_5
    add-int/lit8 v6, v2, 0x1

    iget-object v7, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mSuggestionsList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ne v6, v7, :cond_1

    iget-object v6, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v6, v9}, Lcom/ime/framework/common/InputManager;->getInputView(Z)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v6, v10}, Lcom/ime/framework/view/AbstractKeyboardView;->updateKnobKeyFocus(I)V

    goto :goto_2
.end method

.method private hasPrevNextButton()Z
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mPrivateImeOptionsController:Lcom/ime/framework/common/PrivateImeOptionsController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mPrivateImeOptionsController:Lcom/ime/framework/common/PrivateImeOptionsController;

    invoke-interface {v0}, Lcom/ime/framework/common/PrivateImeOptionsController;->getPrevNextTypeOfPrivateImeOptions()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initializeToolbar()V
    .locals 3

    iget-object v0, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->isChnMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    const v1, 0x7f030099

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/ime/framework/common/InputManager;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ime/framework/view/toolbar/ToolBarContainer;

    iput-object v0, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mToolBarContainer:Lcom/ime/framework/view/toolbar/ToolBarContainer;

    iget-object v0, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->isKeyGuardScreen()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->isEncryptedScreen()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mToolBarContainer:Lcom/ime/framework/view/toolbar/ToolBarContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ime/framework/view/toolbar/ToolBarContainer;->setVisibility(I)V

    :goto_0
    iget-object v0, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mToolBarContainer:Lcom/ime/framework/view/toolbar/ToolBarContainer;

    invoke-virtual {v0}, Lcom/ime/framework/view/toolbar/ToolBarContainer;->initialize()V

    iget-object v0, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mToolBarContainer:Lcom/ime/framework/view/toolbar/ToolBarContainer;

    invoke-virtual {p0, v0}, Lcom/ime/framework/view/candidate/AbstractCandidateView;->addView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/ime/framework/view/candidate/AbstractCandidateView;->updateToolbar()V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mToolBarContainer:Lcom/ime/framework/view/toolbar/ToolBarContainer;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/ime/framework/view/toolbar/ToolBarContainer;->setVisibility(I)V

    goto :goto_0
.end method

.method private isBstHandwriteFSMode()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->isUseBstHWRPanel()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v1}, Lcom/ime/framework/inputmode/InputModeManager;->isHandwriteFSMode()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private makeArrayToString(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    const-string v1, ""

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method private updateDrawableState(Lcom/ime/framework/view/candidate/CandidateTextView;)V
    .locals 2

    const/4 v1, -0x1

    iget-boolean v0, p1, Lcom/ime/framework/view/candidate/CandidateTextView;->mIsInPressedState:Z

    if-eqz v0, :cond_0

    const/high16 v0, -0x1000000

    invoke-virtual {p1, v0}, Lcom/ime/framework/view/candidate/CandidateTextView;->setTextColor(I)V

    const v0, 0x7f020015

    invoke-virtual {p1, v0}, Lcom/ime/framework/view/candidate/CandidateTextView;->setBackgroundResource(I)V

    :goto_0
    invoke-virtual {p1}, Lcom/ime/framework/view/candidate/CandidateTextView;->invalidate()V

    return-void

    :cond_0
    iget-boolean v0, p1, Lcom/ime/framework/view/candidate/CandidateTextView;->mIsInFocusState:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1, v1}, Lcom/ime/framework/view/candidate/CandidateTextView;->setTextColor(I)V

    const v0, 0x7f020012

    invoke-virtual {p1, v0}, Lcom/ime/framework/view/candidate/CandidateTextView;->setBackgroundResource(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v1}, Lcom/ime/framework/view/candidate/CandidateTextView;->setTextColor(I)V

    invoke-virtual {p0}, Lcom/ime/framework/view/candidate/AbstractCandidateView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020006

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ime/framework/view/candidate/CandidateTextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private updateKnobViewFocus(I)V
    .locals 2

    iget-object v1, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mSuggestionViews:[Lcom/ime/framework/view/candidate/CandidateTextView;

    aget-object v0, v1, p1

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/ime/framework/view/candidate/CandidateTextView;->mIsInFocusState:Z

    invoke-direct {p0, v0}, Lcom/ime/framework/view/candidate/AbstractCandidateView;->updateDrawableState(Lcom/ime/framework/view/candidate/CandidateTextView;)V

    return-void
.end method

.method private updateKnobViewVisibility(I)V
    .locals 6

    iget-object v0, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mSuggestionViews:[Lcom/ime/framework/view/candidate/CandidateTextView;

    array-length v2, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    if-nez v3, :cond_1

    :cond_0
    return-void

    :cond_1
    iget v4, v3, Lcom/ime/framework/view/candidate/CandidateTextView;->mViewIndex:I

    if-lt v4, p1, :cond_2

    iget v4, v3, Lcom/ime/framework/view/candidate/CandidateTextView;->mViewIndex:I

    iget v5, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->KNOB_SHOW_CANDIDATES_COUNT:I

    add-int/2addr v5, p1

    if-ge v4, v5, :cond_2

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/ime/framework/view/candidate/CandidateTextView;->mIsVisible:Z

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/ime/framework/view/candidate/CandidateTextView;->mIsVisible:Z

    goto :goto_1
.end method

.method private updateLeftArrowVisibility(I)V
    .locals 3

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mLeftArrowKnobButton:Landroid/view/View;

    iget-object v1, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020022

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mLeftArrowKnobButton:Landroid/view/View;

    iget-object v1, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020023

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private updateRightArrowVisibility(I)V
    .locals 3

    add-int/lit8 v0, p1, 0x4

    iget-object v1, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mSuggestionsList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    add-int/lit8 v0, p1, 0x4

    iget-object v1, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mSuggestionViews:[Lcom/ime/framework/view/candidate/CandidateTextView;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mRightArrowKnobButton:Landroid/view/View;

    iget-object v1, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020025

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mRightArrowKnobButton:Landroid/view/View;

    iget-object v1, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020024

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private useExpandingAnimationInternal()Z
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->useAnimationOfExpandCandidate()Z

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public changeMobileKeyboardSymPage()V
    .locals 4

    invoke-virtual {p0}, Lcom/ime/framework/view/candidate/AbstractCandidateView;->getFirstButtonInCandidate()Landroid/widget/Button;

    move-result-object v1

    iput-object v1, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mFirstButtonInCandidate:Landroid/widget/Button;

    iget-object v1, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->getMobileKeyboardSymPage()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    iget-object v1, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1, v0}, Lcom/ime/framework/common/InputManager;->setMobileKeyboardSymPage(I)V

    iget-object v1, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/ime/framework/common/InputManager;->setSymPageClick(Z)V

    return-void

    :pswitch_0
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mFirstButtonInCandidate:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/ime/framework/view/candidate/AbstractCandidateView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d02fa

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mFirstButtonInCandidate:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/ime/framework/view/candidate/AbstractCandidateView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d02fb

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mFirstButtonInCandidate:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/ime/framework/view/candidate/AbstractCandidateView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d02f9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public dismissExpandPopup()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mExpandCandidatePopup:Landroid/widget/PopupWindow;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mExpandCandidatePopup:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mExpandCandidatePopup:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->dismiss()V

    iget-object v2, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v2}, Lcom/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v0

    iget-object v2, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/ime/framework/common/InputManager;->isInputViewShown()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/ime/framework/common/InputManager;->isShownSoftFuncKbd()Z

    move-result v2

    if-nez v2, :cond_4

    const/4 v2, 0x4

    if-eq v0, v2, :cond_4

    invoke-virtual {p0, v3}, Lcom/ime/framework/view/candidate/AbstractCandidateView;->setExpandButtonImage(Z)V

    :goto_0
    iget-object v2, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/ime/framework/common/InputManager;->isMobileKeyboard()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/ime/framework/common/InputManager;->isMobileKeyboardSYMCandidate()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2, v3}, Lcom/ime/framework/common/InputManager;->setMobilekeyboardSYMCandidate(Z)V

    :cond_0
    iget-object v2, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/ime/framework/common/InputManager;->isMobileKeyboardUmlautCandidate()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2, v3}, Lcom/ime/framework/common/InputManager;->setMobilekeyboardUmlautCandidate(Z)V

    :cond_1
    iget-object v2, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2, v3}, Lcom/ime/framework/common/InputManager;->setCandidateExpandedFlag(Z)V

    iget-object v2, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/ime/framework/common/InputManager;->dismissPopupKeyboard()V

    iget-object v2, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/ime/framework/common/InputManager;->invalidateKeyboardView()V

    iget-object v2, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2, v3}, Lcom/ime/framework/common/InputManager;->setOneHandBgDim(Z)V

    iget-object v2, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/ime/framework/common/InputManager;->getUniversalSwitchMode()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/ime/framework/view/KeyboardInfoUtils;->getInstance()Lcom/ime/framework/view/KeyboardInfoUtils;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/ime/framework/view/KeyboardInfoUtils;->sendSIPInformation(I)V

    :cond_2
    iget-object v2, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/ime/framework/common/InputManager;->isChnMode()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/ime/framework/common/InputManager;->isChineseLanguageMode()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/ime/framework/common/InputManager;->isSpellViewShown()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p0}, Lcom/ime/framework/view/candidate/AbstractCandidateView;->updateExpandCandidateLayout()V

    :cond_3
    invoke-virtual {p0}, Lcom/ime/framework/view/candidate/AbstractCandidateView;->udpateContentDescription()V

    return-void

    :cond_4
    invoke-direct {p0}, Lcom/ime/framework/view/candidate/AbstractCandidateView;->isBstHandwriteFSMode()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p0, v3}, Lcom/ime/framework/view/candidate/AbstractCandidateView;->setExpandButtonImage(Z)V

    goto :goto_0

    :cond_5
    invoke-virtual {p0, v4}, Lcom/ime/framework/view/candidate/AbstractCandidateView;->setExpandButtonImage(Z)V

    goto :goto_0
.end method

.method protected abstract getCandidateCustomButtonLayout()Landroid/widget/LinearLayout;
.end method

.method protected abstract getCandidateExpandLayout()Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;
.end method

.method protected abstract getCandidateExpandSpellScrollView()Lcom/ime/framework/view/candidate/CandidateExpandSpellScrollView;
.end method

.method public abstract getCandidateLayout()Lcom/ime/framework/view/candidate/AbstractCandidateLayout;
.end method

.method public abstract getCandidateViewHeight()I
.end method

.method public getCandidates()Ljava/util/ArrayList;
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

    iget-object v0, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mSuggestions:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getCandidatesDisplayedCount()I
    .locals 1

    iget v0, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mDisplayedCount:I

    return v0
.end method

.method protected abstract getClipboardButton()Landroid/view/View;
.end method

.method protected abstract getEmoticonButton()Landroid/view/View;
.end method

.method protected abstract getExpandButton()Landroid/view/View;
.end method

.method protected abstract getExpandButtonClickListener()Landroid/view/View$OnClickListener;
.end method

.method protected abstract getExpandButtonHoverListener()Landroid/view/View$OnHoverListener;
.end method

.method protected abstract getExpandButtonLayout()Landroid/widget/LinearLayout;
.end method

.method protected abstract getExpandButtonTouchListener()Landroid/view/View$OnTouchListener;
.end method

.method public abstract getExpandButtonWidth()I
.end method

.method protected abstract getExpandPopupBackground()Landroid/graphics/drawable/Drawable;
.end method

.method protected abstract getExpandPopupHeight(I)I
.end method

.method protected abstract getExpandPopupWidth()I
.end method

.method protected getExpandPopupYPositon()I
    .locals 9

    const/4 v4, 0x0

    :try_start_0
    iget-object v6, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/ime/framework/common/InputManager;->getService()Lcom/ime/framework/common/AbstractInputMethod;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ime/framework/common/AbstractInputMethod;->onEvaluateFullscreenMode()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v5}, Lcom/ime/framework/common/AbstractInputMethod;->getWindow()Landroid/app/Dialog;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v3

    iget-object v6, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Lcom/ime/framework/common/InputManager;->getInputView(Z)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    sub-int v4, v3, v6

    :cond_0
    :goto_0
    return v4

    :cond_1
    iget-object v6, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/ime/framework/common/InputManager;->isFullLandMode()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {p0}, Lcom/ime/framework/view/candidate/AbstractCandidateView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0900fe

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v4, v6

    :goto_1
    iget-object v6, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/ime/framework/common/InputManager;->isMobileKeyboard()Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/ime/framework/view/candidate/AbstractCandidateView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f090728

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v0, v6

    iget-object v6, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/ime/framework/common/InputManager;->isMobileKeyboardUmlautCandidate()Z

    move-result v6

    if-eqz v6, :cond_3

    mul-int/lit8 v6, v0, 0x2

    add-int/2addr v4, v6

    goto :goto_0

    :cond_2
    const/high16 v6, 0x40400000    # 3.0f

    invoke-virtual {p0}, Lcom/ime/framework/view/candidate/AbstractCandidateView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0900fe

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    mul-float/2addr v6, v7

    float-to-int v4, v6

    goto :goto_1

    :cond_3
    iget-object v6, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/ime/framework/common/InputManager;->isMobileKeyboardSYMCandidate()Z

    move-result v6

    if-eqz v6, :cond_4

    add-int/2addr v4, v0

    goto :goto_0

    :cond_4
    iget-object v6, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/ime/framework/common/InputManager;->isChnMode()Z

    move-result v6

    if-eqz v6, :cond_5

    const/4 v4, 0x0

    goto :goto_0

    :cond_5
    iget-object v6, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mExpandCandidateLayout:Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;

    iget v1, v6, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mCountOfRow:I
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    mul-int/lit8 v6, v0, 0x2

    add-int/2addr v4, v6

    goto :goto_0

    :pswitch_1
    add-int/2addr v4, v0

    goto :goto_0

    :pswitch_2
    const/4 v4, 0x0

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {p0}, Lcom/ime/framework/view/candidate/AbstractCandidateView;->getHeight()I

    move-result v4

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected abstract getExpandPouupMaxLine()I
.end method

.method protected abstract getFirstButtonInCandidate()Landroid/widget/Button;
.end method

.method public abstract getFloatingKeyboardLeftEdge()I
.end method

.method public abstract getFloatingKeyboardRightEdge()I
.end method

.method protected abstract getLanguageButton()Landroid/view/View;
.end method

.method protected abstract getLeftArrowKnobButton()Landroid/view/View;
.end method

.method protected abstract getMobileKeyboardToolBarClickListener()Landroid/view/View$OnClickListener;
.end method

.method protected abstract getMobileKeyboardToolBarLongClickListener()Landroid/view/View$OnLongClickListener;
.end method

.method protected abstract getRightArrowKnobButton()Landroid/view/View;
.end method

.method protected abstract getSettingsButton()Landroid/view/View;
.end method

.method public getToolbarContainer()Lcom/ime/framework/view/toolbar/ToolBarContainer;
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mToolBarContainer:Lcom/ime/framework/view/toolbar/ToolBarContainer;

    return-object v0
.end method

.method protected abstract getVoiceButton()Landroid/view/View;
.end method

.method protected abstract getVoiceButtonTouchListener()Landroid/view/View$OnTouchListener;
.end method

.method protected init(Landroid/content/Context;)V
    .locals 4

    const/4 v2, 0x0

    invoke-static {}, Lcom/ime/framework/common/InputManagerImpl;->getInstance()Lcom/ime/framework/common/InputManager;

    move-result-object v0

    iput-object v0, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    iget-object v0, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->isCurrentCarModeKnobSIP()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020006

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ime/framework/view/candidate/AbstractCandidateView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    iget-object v0, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->getInputModeManager()Lcom/ime/framework/inputmode/InputModeManager;

    move-result-object v0

    iput-object v0, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    iget-object v0, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->getRepository()Lcom/ime/framework/repository/Repository;

    move-result-object v0

    iput-object v0, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mRepository:Lcom/ime/framework/repository/Repository;

    invoke-static {}, Lcom/ime/framework/common/PrivateImeOptionsControllerImpl;->getInstance()Lcom/ime/framework/common/PrivateImeOptionsController;

    move-result-object v0

    iput-object v0, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mPrivateImeOptionsController:Lcom/ime/framework/common/PrivateImeOptionsController;

    iget-object v0, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->isTabletMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mIsTabletMode:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mIsSupportOneHanded:Z

    invoke-virtual {p0, v2, v2, v2, v2}, Lcom/ime/framework/view/candidate/AbstractCandidateView;->setPadding(IIII)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mSuggestionsList:Ljava/util/ArrayList;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->isChnMode()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/ime/framework/view/candidate/AbstractCandidateView;->initializeToolbar()V

    iget-object v0, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mCreateExpandCandidateLayout:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method

.method public isToolBarVisible()Z
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mToolBarContainer:Lcom/ime/framework/view/toolbar/ToolBarContainer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mToolBarContainer:Lcom/ime/framework/view/toolbar/ToolBarContainer;

    invoke-virtual {v0}, Lcom/ime/framework/view/toolbar/ToolBarContainer;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public needToUpdateCandidateLayout(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mIsUpdateCandidateLayout:Z

    return-void
.end method

.method public processSuggestionKnobEvents(Landroid/view/KeyEvent;I)V
    .locals 13

    const/16 v12, 0x17

    const/4 v9, 0x1

    const/4 v11, 0x0

    const/4 v10, -0x1

    iget-object v8, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/ime/framework/common/InputManager;->getDoneButton()Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->DoneButtonView:Landroid/view/View;

    iget-object v8, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mCandidateLayout:Lcom/ime/framework/view/candidate/AbstractCandidateLayout;

    invoke-virtual {v8}, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->getSuggestionViews()[Lcom/ime/framework/view/candidate/CandidateTextView;

    move-result-object v8

    iput-object v8, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mSuggestionViews:[Lcom/ime/framework/view/candidate/CandidateTextView;

    iget-object v0, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mSuggestionViews:[Lcom/ime/framework/view/candidate/CandidateTextView;

    array-length v5, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v5, :cond_0

    aget-object v7, v0, v3

    iget-boolean v8, v7, Lcom/ime/framework/view/candidate/CandidateTextView;->mIsVisible:Z

    if-eqz v8, :cond_3

    iget v8, v7, Lcom/ime/framework/view/candidate/CandidateTextView;->mViewIndex:I

    iput v8, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mStartKnobIndex:I

    :cond_0
    if-eq p2, v10, :cond_4

    iget v8, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mStartKnobIndex:I

    add-int/2addr v8, p2

    add-int/lit8 p2, v8, -0x65

    iget-object v8, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mSuggestionsList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    iget v9, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mStartKnobIndex:I

    add-int/lit8 v9, v9, 0x5

    if-ge v8, v9, :cond_1

    iget-object v8, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mSuggestionsList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    if-lt p2, v8, :cond_1

    const/16 v8, 0x16

    if-eq p2, v8, :cond_1

    iget-object v8, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mSuggestionsList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 p2, v8, -0x1

    :cond_1
    invoke-direct {p0, p2}, Lcom/ime/framework/view/candidate/AbstractCandidateView;->updateKnobViewFocus(I)V

    :cond_2
    :goto_1
    return-void

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v8

    if-nez v8, :cond_c

    const/4 v4, -0x1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v8

    sparse-switch v8, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    iget-object v8, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->DoneButtonView:Landroid/view/View;

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->DoneButtonView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->hasFocus()Z

    move-result v8

    if-nez v8, :cond_2

    iget-object v8, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->DoneButtonView:Landroid/view/View;

    invoke-virtual {v8, v9}, Landroid/view/View;->setFocusable(Z)V

    iget-object v8, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->DoneButtonView:Landroid/view/View;

    invoke-virtual {v8, v9}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    iget-object v8, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->DoneButtonView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->requestFocus()Z

    iget-object v0, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mSuggestionViews:[Lcom/ime/framework/view/candidate/CandidateTextView;

    array-length v5, v0

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v5, :cond_2

    aget-object v7, v0, v3

    iget-boolean v8, v7, Lcom/ime/framework/view/candidate/CandidateTextView;->mIsInFocusState:Z

    if-eqz v8, :cond_a

    iget v4, v7, Lcom/ime/framework/view/candidate/CandidateTextView;->mViewIndex:I

    iput-boolean v11, v7, Lcom/ime/framework/view/candidate/CandidateTextView;->mIsInFocusState:Z

    invoke-direct {p0, v7}, Lcom/ime/framework/view/candidate/AbstractCandidateView;->updateDrawableState(Lcom/ime/framework/view/candidate/CandidateTextView;)V

    goto :goto_1

    :sswitch_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v8

    if-eqz v8, :cond_5

    iget-object v8, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mSuggestionViews:[Lcom/ime/framework/view/candidate/CandidateTextView;

    invoke-direct {p0, v8}, Lcom/ime/framework/view/candidate/AbstractCandidateView;->handleKnobLeftArrow([Lcom/ime/framework/view/candidate/CandidateTextView;)V

    goto :goto_1

    :cond_5
    iget-object v8, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mSuggestionViews:[Lcom/ime/framework/view/candidate/CandidateTextView;

    invoke-direct {p0, v8}, Lcom/ime/framework/view/candidate/AbstractCandidateView;->handleKnobRightArrow([Lcom/ime/framework/view/candidate/CandidateTextView;)V

    goto :goto_1

    :sswitch_2
    iget-object v8, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mSuggestionViews:[Lcom/ime/framework/view/candidate/CandidateTextView;

    invoke-direct {p0, v8}, Lcom/ime/framework/view/candidate/AbstractCandidateView;->handleKnobLeftArrow([Lcom/ime/framework/view/candidate/CandidateTextView;)V

    goto :goto_1

    :sswitch_3
    iget-object v8, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mSuggestionViews:[Lcom/ime/framework/view/candidate/CandidateTextView;

    invoke-direct {p0, v8}, Lcom/ime/framework/view/candidate/AbstractCandidateView;->handleKnobRightArrow([Lcom/ime/framework/view/candidate/CandidateTextView;)V

    goto :goto_1

    :sswitch_4
    iget-object v8, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->DoneButtonView:Landroid/view/View;

    if-eqz v8, :cond_7

    iget-object v8, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->DoneButtonView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->hasFocus()Z

    move-result v8

    if-eqz v8, :cond_7

    iget-object v8, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->DoneButtonView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->clearFocus()V

    iget-object v0, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mSuggestionViews:[Lcom/ime/framework/view/candidate/CandidateTextView;

    array-length v5, v0

    const/4 v3, 0x0

    :goto_3
    if-ge v3, v5, :cond_2

    aget-object v7, v0, v3

    iget-boolean v8, v7, Lcom/ime/framework/view/candidate/CandidateTextView;->mIsVisible:Z

    if-eqz v8, :cond_6

    iget v4, v7, Lcom/ime/framework/view/candidate/CandidateTextView;->mViewIndex:I

    iput-boolean v9, v7, Lcom/ime/framework/view/candidate/CandidateTextView;->mIsInFocusState:Z

    invoke-direct {p0, v7}, Lcom/ime/framework/view/candidate/AbstractCandidateView;->updateDrawableState(Lcom/ime/framework/view/candidate/CandidateTextView;)V

    goto/16 :goto_1

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_7
    iget-object v0, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mSuggestionViews:[Lcom/ime/framework/view/candidate/CandidateTextView;

    array-length v5, v0

    const/4 v3, 0x0

    :goto_4
    if-ge v3, v5, :cond_8

    aget-object v7, v0, v3

    iget-boolean v8, v7, Lcom/ime/framework/view/candidate/CandidateTextView;->mIsInFocusState:Z

    if-eqz v8, :cond_9

    iget v4, v7, Lcom/ime/framework/view/candidate/CandidateTextView;->mViewIndex:I

    iput-boolean v11, v7, Lcom/ime/framework/view/candidate/CandidateTextView;->mIsInFocusState:Z

    invoke-direct {p0, v7}, Lcom/ime/framework/view/candidate/AbstractCandidateView;->updateDrawableState(Lcom/ime/framework/view/candidate/CandidateTextView;)V

    :cond_8
    invoke-direct {p0, v4}, Lcom/ime/framework/view/candidate/AbstractCandidateView;->getKnobFocusKeyIndex(I)I

    move-result v1

    if-eq v1, v10, :cond_2

    iget-object v8, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v8, v11}, Lcom/ime/framework/common/InputManager;->getInputView(Z)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v8, v1}, Lcom/ime/framework/view/AbstractKeyboardView;->updateKnobKeyFocus(I)V

    goto/16 :goto_1

    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_a
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_2

    :sswitch_5
    iget-object v8, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->DoneButtonView:Landroid/view/View;

    if-eqz v8, :cond_b

    iget-object v8, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->DoneButtonView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->hasFocus()Z

    move-result v8

    if-nez v8, :cond_2

    :cond_b
    iget-object v8, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mSuggestionViews:[Lcom/ime/framework/view/candidate/CandidateTextView;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v9

    invoke-direct {p0, v8, v9}, Lcom/ime/framework/view/candidate/AbstractCandidateView;->handleKnobCenterKey([Lcom/ime/framework/view/candidate/CandidateTextView;I)V

    goto/16 :goto_1

    :cond_c
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v8

    if-ne v8, v9, :cond_2

    invoke-direct {p0}, Lcom/ime/framework/view/candidate/AbstractCandidateView;->getPressedCandidateViewIndex()I

    move-result v6

    iget-object v8, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->DoneButtonView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->hasFocus()Z

    move-result v8

    if-eqz v8, :cond_d

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v8

    if-ne v8, v12, :cond_d

    iget-object v8, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->DoneButtonView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->performClick()Z

    :cond_d
    iget-object v8, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->DoneButtonView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->hasFocus()Z

    move-result v8

    if-nez v8, :cond_2

    if-eq v6, v10, :cond_f

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v8

    const/16 v9, 0x42

    if-eq v8, v9, :cond_e

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v8

    if-ne v8, v12, :cond_f

    :cond_e
    iget-object v8, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mSuggestionViews:[Lcom/ime/framework/view/candidate/CandidateTextView;

    aget-object v7, v8, v6

    iget-object v8, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    iget v9, v7, Lcom/ime/framework/view/candidate/CandidateTextView;->mViewIndex:I

    invoke-virtual {v7}, Lcom/ime/framework/view/candidate/CandidateTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v8, v9, v10}, Lcom/ime/framework/common/InputManager;->pickSuggestionManually(ILjava/lang/CharSequence;)V

    iget-object v8, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v8, v11}, Lcom/ime/framework/common/InputManager;->getInputView(Z)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v8}, Lcom/ime/framework/view/AbstractKeyboardView;->restoreKnobKeyFocus()V

    goto/16 :goto_1

    :cond_f
    invoke-direct {p0}, Lcom/ime/framework/view/candidate/AbstractCandidateView;->getFocussedCandidateViewIndex()I

    move-result v2

    if-eq v2, v10, :cond_2

    invoke-direct {p0, v2}, Lcom/ime/framework/view/candidate/AbstractCandidateView;->updateKnobViewFocus(I)V

    goto/16 :goto_1

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x14 -> :sswitch_4
        0x15 -> :sswitch_2
        0x16 -> :sswitch_3
        0x17 -> :sswitch_5
        0x3d -> :sswitch_1
        0x42 -> :sswitch_5
    .end sparse-switch
.end method

.method public resetToolbarContainer()V
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mToolBarContainer:Lcom/ime/framework/view/toolbar/ToolBarContainer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mToolBarContainer:Lcom/ime/framework/view/toolbar/ToolBarContainer;

    invoke-virtual {v0}, Lcom/ime/framework/view/toolbar/ToolBarContainer;->recycleVariables()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mToolBarContainer:Lcom/ime/framework/view/toolbar/ToolBarContainer;

    :cond_0
    return-void
.end method

.method public setCandidates(Ljava/util/ArrayList;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mDisplayedCount:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v14}, Lcom/ime/framework/common/InputManager;->isCandidateExpanded()Z

    move-result v7

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mSuggestions:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v14}, Lcom/ime/framework/common/InputManager;->isCurrentCarModeKnobSIP()Z

    move-result v14

    if-eqz v14, :cond_3

    if-eqz p1, :cond_3

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-lez v14, :cond_3

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mSuggestionsList:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->clear()V

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mSuggestionsList:Ljava/util/ArrayList;

    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mLeftArrowKnobButton:Landroid/view/View;

    if-nez v14, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/view/candidate/AbstractCandidateView;->getLeftArrowKnobButton()Landroid/view/View;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mLeftArrowKnobButton:Landroid/view/View;

    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mRightArrowKnobButton:Landroid/view/View;

    if-nez v14, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/view/candidate/AbstractCandidateView;->getRightArrowKnobButton()Landroid/view/View;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mRightArrowKnobButton:Landroid/view/View;

    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mLeftArrowKnobButton:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v15}, Lcom/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f020022

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mSuggestions:Ljava/util/ArrayList;

    if-eqz v14, :cond_a

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mSuggestions:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->KNOB_SHOW_CANDIDATES_COUNT:I

    if-le v14, v15, :cond_a

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mRightArrowKnobButton:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v15}, Lcom/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f020025

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    :goto_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mCandidateLayout:Lcom/ime/framework/view/candidate/AbstractCandidateLayout;

    if-eqz v14, :cond_4

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v14}, Lcom/ime/framework/common/InputManager;->isMobileKeyboardNeedFresh()Z

    move-result v14

    if-nez v14, :cond_4

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mIsUpdateCandidateLayout:Z

    if-eqz v14, :cond_5

    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/view/candidate/AbstractCandidateView;->getCandidateLayout()Lcom/ime/framework/view/candidate/AbstractCandidateLayout;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mCandidateLayout:Lcom/ime/framework/view/candidate/AbstractCandidateLayout;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mIsUpdateCandidateLayout:Z

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mIsPopupCandidateView:Z

    if-eqz v14, :cond_5

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mCandidateLayout:Lcom/ime/framework/view/candidate/AbstractCandidateLayout;

    invoke-virtual {v14}, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->setPopupCandidateLayout()V

    :cond_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mExpandButton:Landroid/view/View;

    if-eqz v14, :cond_6

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mIsSupportOneHanded:Z

    if-nez v14, :cond_6

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v14}, Lcom/ime/framework/common/InputManager;->isMobileKeyboardNeedFresh()Z

    move-result v14

    if-eqz v14, :cond_7

    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/view/candidate/AbstractCandidateView;->getExpandButton()Landroid/view/View;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mExpandButton:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mExpandButton:Landroid/view/View;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mExpandButton:Landroid/view/View;

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/view/candidate/AbstractCandidateView;->getExpandButtonTouchListener()Landroid/view/View$OnTouchListener;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mExpandButton:Landroid/view/View;

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/view/candidate/AbstractCandidateView;->getExpandButtonClickListener()Landroid/view/View$OnClickListener;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/view/candidate/AbstractCandidateView;->getExpandButtonLayout()Landroid/widget/LinearLayout;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mExpandButtonLayout:Landroid/view/View;

    :cond_7
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mExpandButtonLayout:Landroid/view/View;

    if-eqz v14, :cond_8

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mExpandButtonLayout:Landroid/view/View;

    const/16 v15, 0x8

    invoke-virtual {v14, v15}, Landroid/view/View;->setVisibility(I)V

    :cond_8
    const/4 v10, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/view/candidate/AbstractCandidateView;->getCandidateCustomButtonLayout()Landroid/widget/LinearLayout;

    move-result-object v2

    if-eqz v2, :cond_9

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v14

    if-lez v14, :cond_9

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v14

    if-nez v14, :cond_b

    const/4 v10, 0x1

    :cond_9
    :goto_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v14}, Lcom/ime/framework/common/InputManager;->isMobileKeyboard()Z

    move-result v14

    if-eqz v14, :cond_f

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v14}, Lcom/ime/framework/common/InputManager;->isMobileKeyboardSYMCandidate()Z

    move-result v14

    if-eqz v14, :cond_f

    const/4 v7, 0x1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v14}, Lcom/ime/framework/common/InputManager;->isMobileKeyboard()Z

    move-result v14

    if-eqz v14, :cond_10

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v14}, Lcom/ime/framework/common/InputManager;->isMobileKeyboardSYMCandidate()Z

    move-result v14

    if-eqz v14, :cond_10

    if-nez p1, :cond_c

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct/range {p1 .. p1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->clear()V

    :goto_3
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v14}, Lcom/ime/framework/common/InputManager;->getMobileKeyboardSymPage()I

    move-result v14

    if-nez v14, :cond_d

    sget-object v14, Lcom/ime/framework/common/Constant;->mobile_keyboard_symbols:[[Ljava/lang/String;

    const/4 v15, 0x0

    aget-object v14, v14, v15

    array-length v11, v14

    const/4 v3, 0x0

    :goto_4
    if-ge v3, v11, :cond_10

    sget-object v14, Lcom/ime/framework/common/Constant;->mobile_keyboard_symbols:[[Ljava/lang/String;

    const/4 v15, 0x0

    aget-object v14, v14, v15

    aget-object v14, v14, v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_a
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mRightArrowKnobButton:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v15}, Lcom/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f020024

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    :cond_b
    const/4 v10, 0x0

    goto :goto_2

    :cond_c
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->clear()V

    goto :goto_3

    :cond_d
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v14}, Lcom/ime/framework/common/InputManager;->getMobileKeyboardSymPage()I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_e

    sget-object v14, Lcom/ime/framework/common/Constant;->mobile_keyboard_symbols:[[Ljava/lang/String;

    const/4 v15, 0x1

    aget-object v14, v14, v15

    array-length v11, v14

    const/4 v3, 0x0

    :goto_5
    if-ge v3, v11, :cond_10

    sget-object v14, Lcom/ime/framework/common/Constant;->mobile_keyboard_symbols:[[Ljava/lang/String;

    const/4 v15, 0x1

    aget-object v14, v14, v15

    aget-object v14, v14, v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_e
    sget-object v14, Lcom/ime/framework/common/Constant;->mobile_keyboard_symbols:[[Ljava/lang/String;

    const/4 v15, 0x2

    aget-object v14, v14, v15

    array-length v11, v14

    const/4 v3, 0x0

    :goto_6
    if-ge v3, v11, :cond_10

    sget-object v14, Lcom/ime/framework/common/Constant;->mobile_keyboard_symbols:[[Ljava/lang/String;

    const/4 v15, 0x2

    aget-object v14, v14, v15

    aget-object v14, v14, v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_f
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v14}, Lcom/ime/framework/common/InputManager;->isMobileKeyboard()Z

    move-result v14

    if-eqz v14, :cond_10

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v14}, Lcom/ime/framework/common/InputManager;->isMobileKeyboardUmlautCandidate()Z

    move-result v14

    if-eqz v14, :cond_10

    const/4 v7, 0x1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v14}, Lcom/ime/framework/common/InputManager;->isMobileKeyboard()Z

    move-result v14

    if-eqz v14, :cond_10

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v14}, Lcom/ime/framework/common/InputManager;->isMobileKeyboardUmlautCandidate()Z

    move-result v14

    if-eqz v14, :cond_10

    if-nez p1, :cond_10

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct/range {p1 .. p1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->clear()V

    :cond_10
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v14}, Lcom/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v14}, Lcom/ime/framework/common/InputManager;->isInputViewShown()Z

    move-result v14

    if-eqz v14, :cond_19

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v14}, Lcom/ime/framework/common/InputManager;->isShownSoftFuncKbd()Z

    move-result v14

    if-nez v14, :cond_19

    const/4 v14, 0x4

    if-eq v5, v14, :cond_19

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/ime/framework/view/candidate/AbstractCandidateView;->updateExpandButtonImage(Z)V

    :goto_7
    if-eqz v7, :cond_21

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mCandidateLayout:Lcom/ime/framework/view/candidate/AbstractCandidateLayout;

    if-eqz v14, :cond_18

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mCandidateLayout:Lcom/ime/framework/view/candidate/AbstractCandidateLayout;

    move-object/from16 v0, p1

    invoke-virtual {v14, v0, v10}, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->setCandidates(Ljava/util/ArrayList;Z)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mDisplayedCount:I

    if-eqz p1, :cond_1e

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-lez v14, :cond_1e

    move-object/from16 v0, p0

    iget v14, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mDisplayedCount:I

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-lt v14, v15, :cond_12

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v14}, Lcom/ime/framework/common/InputManager;->isChnMode()Z

    move-result v14

    if-eqz v14, :cond_11

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v14}, Lcom/ime/framework/common/InputManager;->isChineseLanguageMode()Z

    move-result v14

    if-nez v14, :cond_12

    :cond_11
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v14}, Lcom/ime/framework/common/InputManager;->getHanjaStatus()Z

    move-result v14

    if-eqz v14, :cond_1e

    :cond_12
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v14}, Lcom/ime/framework/common/InputManager;->isEnabledMagnification()Z

    move-result v14

    if-nez v14, :cond_1e

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mExpandCandidateLayout:Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;

    if-nez v14, :cond_13

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/view/candidate/AbstractCandidateView;->getCandidateExpandLayout()Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mExpandCandidateLayout:Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;

    :cond_13
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mExpandCandidateLayout:Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mDisplayedCount:I

    move-object/from16 v0, p1

    invoke-virtual {v14, v0, v15}, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->setCandidates(Ljava/util/ArrayList;I)I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mExpandButtonLayout:Landroid/view/View;

    if-eqz v14, :cond_15

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v14}, Lcom/ime/framework/common/InputManager;->isHWKeyboardOpen()Z

    move-result v14

    if-eqz v14, :cond_14

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mExpandCandidateLayout:Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/view/candidate/AbstractCandidateView;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0b0078

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getColor(I)I

    move-result v15

    invoke-virtual {v14, v15}, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->setBackgroundColor(I)V

    :cond_14
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mExpandButtonLayout:Landroid/view/View;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v14}, Lcom/ime/framework/common/InputManager;->isMobileKeyboardUmlautCandidate()Z

    move-result v14

    if-eqz v14, :cond_15

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/view/candidate/AbstractCandidateView;->showExpandPopup()V

    :cond_15
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v14}, Lcom/ime/framework/common/InputManager;->getInputModeManager()Lcom/ime/framework/inputmode/InputModeManager;

    move-result-object v14

    if-eqz v14, :cond_1c

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v14}, Lcom/ime/framework/common/InputManager;->getInputModeManager()Lcom/ime/framework/inputmode/InputModeManager;

    move-result-object v14

    invoke-virtual {v14}, Lcom/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode()Z

    move-result v14

    if-eqz v14, :cond_1c

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v14}, Lcom/ime/framework/common/InputManager;->isUseBstHWRPanel()Z

    move-result v14

    if-eqz v14, :cond_1c

    const/4 v6, 0x1

    :goto_8
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v14}, Lcom/ime/framework/common/InputManager;->isChineseStrokeModeOn()Z

    move-result v14

    if-nez v14, :cond_1d

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v14}, Lcom/ime/framework/common/InputManager;->getInputLanguage()I

    move-result v14

    const v15, 0x7a68484b

    if-eq v14, v15, :cond_1d

    const/4 v8, 0x1

    :goto_9
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v14}, Lcom/ime/framework/common/InputManager;->isChnMode()Z

    move-result v14

    if-eqz v14, :cond_17

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v14}, Lcom/ime/framework/common/InputManager;->isChineseLanguageMode()Z

    move-result v14

    if-eqz v14, :cond_17

    if-nez v6, :cond_17

    if-eqz v8, :cond_17

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mExpandCandidateSpellScrollView:Lcom/ime/framework/view/candidate/CandidateExpandSpellScrollView;

    if-nez v14, :cond_16

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/view/candidate/AbstractCandidateView;->getCandidateExpandSpellScrollView()Lcom/ime/framework/view/candidate/CandidateExpandSpellScrollView;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mExpandCandidateSpellScrollView:Lcom/ime/framework/view/candidate/CandidateExpandSpellScrollView;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mExpandCandidateSpellScrollView:Lcom/ime/framework/view/candidate/CandidateExpandSpellScrollView;

    invoke-virtual {v14}, Lcom/ime/framework/view/candidate/CandidateExpandSpellScrollView;->initView()V

    :cond_16
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    const/4 v15, 0x0

    invoke-interface {v14, v15}, Lcom/ime/framework/common/InputManager;->getPhoneticSpellScrollView(Z)Landroid/view/View;

    move-result-object v12

    check-cast v12, Lcom/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;

    if-eqz v12, :cond_17

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mExpandCandidateSpellScrollView:Lcom/ime/framework/view/candidate/CandidateExpandSpellScrollView;

    invoke-virtual {v12}, Lcom/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->getPhoeticSpellScrollViewList()Ljava/util/ArrayList;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/ime/framework/view/candidate/CandidateExpandSpellScrollView;->setPhoeticSpellScrollViewList(Ljava/util/ArrayList;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mExpandCandidateSpellScrollView:Lcom/ime/framework/view/candidate/CandidateExpandSpellScrollView;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Lcom/ime/framework/view/candidate/CandidateExpandSpellScrollView;->setSpellToSpellLayout(Z)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mExpandCandidateSpellScrollView:Lcom/ime/framework/view/candidate/CandidateExpandSpellScrollView;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lcom/ime/framework/view/candidate/CandidateExpandSpellScrollView;->setVisibility(I)V

    :cond_17
    :goto_a
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v14}, Lcom/ime/framework/common/InputManager;->getUniversalSwitchMode()Z

    move-result v14

    if-eqz v14, :cond_18

    invoke-static {}, Lcom/ime/framework/view/KeyboardInfoUtils;->getInstance()Lcom/ime/framework/view/KeyboardInfoUtils;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mExpandCandidateLayout:Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;

    invoke-virtual {v9, v14}, Lcom/ime/framework/view/KeyboardInfoUtils;->setExpandedViewLayout(Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;)V

    const/4 v14, 0x2

    invoke-virtual {v9, v14}, Lcom/ime/framework/view/KeyboardInfoUtils;->sendSIPInformation(I)V

    :cond_18
    :goto_b
    return-void

    :cond_19
    invoke-direct/range {p0 .. p0}, Lcom/ime/framework/view/candidate/AbstractCandidateView;->isBstHandwriteFSMode()Z

    move-result v14

    if-eqz v14, :cond_1a

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/ime/framework/view/candidate/AbstractCandidateView;->updateExpandButtonImage(Z)V

    goto/16 :goto_7

    :cond_1a
    if-nez v7, :cond_1b

    const/4 v14, 0x1

    :goto_c
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/ime/framework/view/candidate/AbstractCandidateView;->updateExpandButtonImage(Z)V

    goto/16 :goto_7

    :cond_1b
    const/4 v14, 0x0

    goto :goto_c

    :cond_1c
    const/4 v6, 0x0

    goto/16 :goto_8

    :cond_1d
    const/4 v8, 0x0

    goto/16 :goto_9

    :cond_1e
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mExpandButtonLayout:Landroid/view/View;

    if-eqz v14, :cond_1f

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mExpandButtonLayout:Landroid/view/View;

    const/16 v15, 0x8

    invoke-virtual {v14, v15}, Landroid/view/View;->setVisibility(I)V

    :cond_1f
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mExpandCandidateSpellScrollView:Lcom/ime/framework/view/candidate/CandidateExpandSpellScrollView;

    if-eqz v14, :cond_20

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mExpandCandidateSpellScrollView:Lcom/ime/framework/view/candidate/CandidateExpandSpellScrollView;

    const/16 v15, 0x8

    invoke-virtual {v14, v15}, Lcom/ime/framework/view/candidate/CandidateExpandSpellScrollView;->setVisibility(I)V

    :cond_20
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v14}, Lcom/ime/framework/common/InputManager;->isChnMode()Z

    move-result v14

    if-eqz v14, :cond_17

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v14}, Lcom/ime/framework/common/InputManager;->isCandidateExpanded()Z

    move-result v14

    if-eqz v14, :cond_17

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/view/candidate/AbstractCandidateView;->dismissExpandPopup()V

    goto :goto_a

    :cond_21
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mCandidateLayout:Lcom/ime/framework/view/candidate/AbstractCandidateLayout;

    if-eqz v14, :cond_23

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mCandidateLayout:Lcom/ime/framework/view/candidate/AbstractCandidateLayout;

    move-object/from16 v0, p1

    invoke-virtual {v14, v0, v10}, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->setCandidates(Ljava/util/ArrayList;Z)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mDisplayedCount:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mExpandButtonLayout:Landroid/view/View;

    if-eqz v14, :cond_23

    if-eqz p1, :cond_24

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-lez v14, :cond_24

    move-object/from16 v0, p0

    iget v14, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mDisplayedCount:I

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-lt v14, v15, :cond_22

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v14}, Lcom/ime/framework/common/InputManager;->getHanjaStatus()Z

    move-result v14

    if-eqz v14, :cond_24

    :cond_22
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v14}, Lcom/ime/framework/common/InputManager;->isEnabledMagnification()Z

    move-result v14

    if-nez v14, :cond_24

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v14}, Lcom/ime/framework/common/InputManager;->isCurrentCarModeKnobSIP()Z

    move-result v14

    if-nez v14, :cond_24

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mExpandButtonLayout:Landroid/view/View;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/view/View;->setVisibility(I)V

    :cond_23
    :goto_d
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v14}, Lcom/ime/framework/common/InputManager;->getUniversalSwitchMode()Z

    move-result v14

    if-eqz v14, :cond_18

    invoke-static {}, Lcom/ime/framework/view/KeyboardInfoUtils;->getInstance()Lcom/ime/framework/view/KeyboardInfoUtils;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mExpandButtonLayout:Landroid/view/View;

    invoke-virtual {v14}, Landroid/view/View;->getVisibility()I

    move-result v14

    if-nez v14, :cond_25

    const/4 v14, 0x1

    :goto_e
    invoke-virtual {v9, v14}, Lcom/ime/framework/view/KeyboardInfoUtils;->setExpandedButtonVisibility(Z)V

    const/4 v14, 0x1

    invoke-virtual {v9, v14}, Lcom/ime/framework/view/KeyboardInfoUtils;->sendSIPInformation(I)V

    goto/16 :goto_b

    :cond_24
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mExpandButtonLayout:Landroid/view/View;

    const/16 v15, 0x8

    invoke-virtual {v14, v15}, Landroid/view/View;->setVisibility(I)V

    goto :goto_d

    :cond_25
    const/4 v14, 0x0

    goto :goto_e
.end method

.method protected abstract setExpandButtonImage(Z)V
.end method

.method public setMobileKeyboardButtonListener()V
    .locals 5

    const v4, 0x7f0b000c

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mVoiceButton:Landroid/view/View;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/ime/framework/view/candidate/AbstractCandidateView;->getVoiceButton()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mVoiceButton:Landroid/view/View;

    iget-object v1, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mVoiceButton:Landroid/view/View;

    invoke-virtual {p0}, Lcom/ime/framework/view/candidate/AbstractCandidateView;->getVoiceButtonTouchListener()Landroid/view/View$OnTouchListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v1, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mVoiceButton:Landroid/view/View;

    invoke-virtual {p0}, Lcom/ime/framework/view/candidate/AbstractCandidateView;->getMobileKeyboardToolBarClickListener()Landroid/view/View$OnClickListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    iget-object v1, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mSettingsButton:Landroid/view/View;

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/ime/framework/view/candidate/AbstractCandidateView;->getSettingsButton()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mSettingsButton:Landroid/view/View;

    iget-object v1, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mSettingsButton:Landroid/view/View;

    invoke-virtual {p0}, Lcom/ime/framework/view/candidate/AbstractCandidateView;->getMobileKeyboardToolBarClickListener()Landroid/view/View$OnClickListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    iget-object v1, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mClipboardButton:Landroid/view/View;

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/ime/framework/view/candidate/AbstractCandidateView;->getClipboardButton()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mClipboardButton:Landroid/view/View;

    iget-object v1, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mClipboardButton:Landroid/view/View;

    invoke-virtual {p0}, Lcom/ime/framework/view/candidate/AbstractCandidateView;->getMobileKeyboardToolBarClickListener()Landroid/view/View$OnClickListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    iget-object v1, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mEmoticonButton:Landroid/view/View;

    if-nez v1, :cond_3

    invoke-virtual {p0}, Lcom/ime/framework/view/candidate/AbstractCandidateView;->getEmoticonButton()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mEmoticonButton:Landroid/view/View;

    iget-object v1, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mEmoticonButton:Landroid/view/View;

    invoke-virtual {p0}, Lcom/ime/framework/view/candidate/AbstractCandidateView;->getMobileKeyboardToolBarClickListener()Landroid/view/View$OnClickListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    iget-object v1, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mLanguageButton:Landroid/view/View;

    if-nez v1, :cond_4

    invoke-virtual {p0}, Lcom/ime/framework/view/candidate/AbstractCandidateView;->getLanguageButton()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mLanguageButton:Landroid/view/View;

    iget-object v1, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mLanguageButton:Landroid/view/View;

    invoke-virtual {p0}, Lcom/ime/framework/view/candidate/AbstractCandidateView;->getMobileKeyboardToolBarClickListener()Landroid/view/View$OnClickListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mLanguageButton:Landroid/view/View;

    invoke-virtual {p0}, Lcom/ime/framework/view/candidate/AbstractCandidateView;->getMobileKeyboardToolBarLongClickListener()Landroid/view/View$OnLongClickListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :cond_4
    iget-object v1, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v1}, Lcom/ime/framework/inputmode/InputModeManager;->isVoiceInputEnabled()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {p0}, Lcom/ime/framework/view/candidate/AbstractCandidateView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iget-object v1, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mVoiceButton:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    new-instance v2, Landroid/graphics/LightingColorFilter;

    invoke-direct {v2, v0, v0}, Landroid/graphics/LightingColorFilter;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget-object v1, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mVoiceButton:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setEnabled(Z)V

    :cond_5
    invoke-static {}, Lcom/ime/framework/repository/EditorStatus;->isNumberOnlyInputType()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-static {}, Lcom/ime/framework/repository/EditorStatus;->isPasswordInputType()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-static {}, Lcom/ime/framework/repository/EditorStatus;->isDigitEditor()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-static {}, Lcom/ime/framework/repository/EditorStatus;->isUrlEmailMode()Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mPrivateImeOptionsController:Lcom/ime/framework/common/PrivateImeOptionsController;

    invoke-interface {v1}, Lcom/ime/framework/common/PrivateImeOptionsController;->getInputType()I

    move-result v1

    const/16 v2, 0xd

    if-eq v1, v2, :cond_6

    invoke-static {}, Lcom/ime/framework/repository/InputStatus;->isNoEmoticonInput()Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mPrivateImeOptionsController:Lcom/ime/framework/common/PrivateImeOptionsController;

    invoke-interface {v1}, Lcom/ime/framework/common/PrivateImeOptionsController;->getInputType()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_6

    iget-object v1, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mPrivateImeOptionsController:Lcom/ime/framework/common/PrivateImeOptionsController;

    invoke-interface {v1}, Lcom/ime/framework/common/PrivateImeOptionsController;->getInputType()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_6

    iget-object v1, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mPrivateImeOptionsController:Lcom/ime/framework/common/PrivateImeOptionsController;

    invoke-interface {v1}, Lcom/ime/framework/common/PrivateImeOptionsController;->getInputType()I

    move-result v1

    const/16 v2, 0x1b

    if-eq v1, v2, :cond_6

    iget-object v1, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mPrivateImeOptionsController:Lcom/ime/framework/common/PrivateImeOptionsController;

    invoke-interface {v1}, Lcom/ime/framework/common/PrivateImeOptionsController;->isDisableEmoticonInput()Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_6
    invoke-virtual {p0}, Lcom/ime/framework/view/candidate/AbstractCandidateView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iget-object v1, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mEmoticonButton:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    new-instance v2, Landroid/graphics/LightingColorFilter;

    invoke-direct {v2, v0, v0}, Landroid/graphics/LightingColorFilter;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget-object v1, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mEmoticonButton:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setEnabled(Z)V

    :goto_0
    iget-object v1, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v1}, Lcom/ime/framework/inputmode/InputModeManager;->isClipboardEnabled()Z

    move-result v1

    if-nez v1, :cond_7

    invoke-virtual {p0}, Lcom/ime/framework/view/candidate/AbstractCandidateView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iget-object v1, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mClipboardButton:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    new-instance v2, Landroid/graphics/LightingColorFilter;

    invoke-direct {v2, v0, v0}, Landroid/graphics/LightingColorFilter;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget-object v1, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mClipboardButton:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setEnabled(Z)V

    :cond_7
    return-void

    :cond_8
    invoke-virtual {p0}, Lcom/ime/framework/view/candidate/AbstractCandidateView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b000d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iget-object v1, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mEmoticonButton:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    new-instance v2, Landroid/graphics/LightingColorFilter;

    invoke-direct {v2, v0, v0}, Landroid/graphics/LightingColorFilter;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_0
.end method

.method public setPopupCandidateView()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mIsPopupCandidateView:Z

    return-void
.end method

.method public setToolBarVisibility(Z)V
    .locals 3

    const/16 v2, 0x8

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->isChnMode()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mToolBarContainer:Lcom/ime/framework/view/toolbar/ToolBarContainer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mToolBarContainer:Lcom/ime/framework/view/toolbar/ToolBarContainer;

    invoke-virtual {v0, v2}, Lcom/ime/framework/view/toolbar/ToolBarContainer;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mToolBarContainer:Lcom/ime/framework/view/toolbar/ToolBarContainer;

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/ime/framework/view/candidate/AbstractCandidateView;->initializeToolbar()V

    :cond_2
    if-nez p1, :cond_4

    iget-object v0, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->isPridictionOn()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/ime/framework/view/candidate/AbstractCandidateView;->hasPrevNextButton()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/ime/framework/repository/EditorStatus;->isDigitEditor()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_3
    iget-object v0, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mToolBarContainer:Lcom/ime/framework/view/toolbar/ToolBarContainer;

    invoke-virtual {v0, v2}, Lcom/ime/framework/view/toolbar/ToolBarContainer;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/ime/framework/view/candidate/AbstractCandidateView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/ime/framework/view/candidate/AbstractCandidateView;->dismissExpandPopup()V

    iget-object v0, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mToolBarContainer:Lcom/ime/framework/view/toolbar/ToolBarContainer;

    invoke-virtual {v0}, Lcom/ime/framework/view/toolbar/ToolBarContainer;->isShown()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mToolBarContainer:Lcom/ime/framework/view/toolbar/ToolBarContainer;

    invoke-virtual {v0, v1}, Lcom/ime/framework/view/toolbar/ToolBarContainer;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/ime/framework/view/candidate/AbstractCandidateView;->updateToolbar()V

    iget-object v0, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/ime/framework/common/InputManager;->setCandidatesViewShown(Z)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mToolBarContainer:Lcom/ime/framework/view/toolbar/ToolBarContainer;

    invoke-virtual {v0}, Lcom/ime/framework/view/toolbar/ToolBarContainer;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/ime/framework/view/candidate/AbstractCandidateView;->updateToolbar()V

    iget-object v0, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mToolBarContainer:Lcom/ime/framework/view/toolbar/ToolBarContainer;

    invoke-virtual {v0, v1}, Lcom/ime/framework/view/toolbar/ToolBarContainer;->setVisibility(I)V

    goto :goto_0
.end method

.method public showExpandPopup()V
    .locals 29

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v24, v0

    if-eqz v24, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Lcom/ime/framework/common/InputManager;->releaseAllKeyPressed()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mExpandCandidateLayout:Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;

    move-object/from16 v24, v0

    if-nez v24, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/view/candidate/AbstractCandidateView;->getCandidateExpandLayout()Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mExpandCandidateLayout:Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v24, v0

    if-eqz v24, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Lcom/ime/framework/common/InputManager;->isChnMode()Z

    move-result v24

    if-eqz v24, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Lcom/ime/framework/common/InputManager;->isChineseLanguageMode()Z

    move-result v24

    if-eqz v24, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mExpandCandidateSpellScrollView:Lcom/ime/framework/view/candidate/CandidateExpandSpellScrollView;

    move-object/from16 v24, v0

    if-nez v24, :cond_b

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/view/candidate/AbstractCandidateView;->getCandidateExpandSpellScrollView()Lcom/ime/framework/view/candidate/CandidateExpandSpellScrollView;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mExpandCandidateSpellScrollView:Lcom/ime/framework/view/candidate/CandidateExpandSpellScrollView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mExpandCandidateSpellScrollView:Lcom/ime/framework/view/candidate/CandidateExpandSpellScrollView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/ime/framework/view/candidate/CandidateExpandSpellScrollView;->initView()V

    :cond_1
    :goto_0
    const/4 v10, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-interface/range {v24 .. v25}, Lcom/ime/framework/common/InputManager;->getPhoneticSpellScrollView(Z)Landroid/view/View;

    move-result-object v18

    check-cast v18, Lcom/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;

    if-eqz v18, :cond_3

    invoke-virtual/range {v18 .. v18}, Lcom/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->getPhoeticSpellScrollViewList()Ljava/util/ArrayList;

    move-result-object v14

    const-string v24, "SamsungIME_UnifiedIME"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "showExpandPopup: list = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v14, :cond_2

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v24

    if-gtz v24, :cond_3

    :cond_2
    const/4 v10, 0x0

    :cond_3
    const-string v24, "SamsungIME_UnifiedIME"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "showExpandPopup: isPhoneticSpellViewShown="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " isSpellViewShown="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Lcom/ime/framework/common/InputManager;->isSpellViewShown()Z

    move-result v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Lcom/ime/framework/common/InputManager;->isSpellViewShown()Z

    move-result v24

    if-eqz v24, :cond_e

    if-eqz v10, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mExpandCandidateLayout:Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->getExpandCandidateScrollView()Landroid/widget/ScrollView;

    move-result-object v23

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Lcom/ime/framework/common/InputManager;->getKeyboardViewHeight()I

    move-result v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Lcom/ime/framework/common/InputManager;->getCandidateViewHeight()I

    move-result v25

    sub-int v5, v24, v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Lcom/ime/framework/common/InputManager;->getKeyboardViewHeight()I

    move-result v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Lcom/ime/framework/common/InputManager;->isChineseStrokeModeOn()Z

    move-result v24

    if-nez v24, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Lcom/ime/framework/common/InputManager;->getInputLanguage()I

    move-result v24

    const v25, 0x7a68484b

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_c

    const/4 v12, 0x1

    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Lcom/ime/framework/common/InputManager;->isChineseLanguageMode()Z

    move-result v24

    if-eqz v24, :cond_d

    if-eqz v12, :cond_d

    move v7, v5

    :goto_2
    invoke-virtual/range {v21 .. v21}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v24

    move-object/from16 v0, v24

    iput v7, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual/range {v23 .. v23}, Landroid/widget/ScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v24

    move-object/from16 v0, v24

    iput v7, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mExpandCandidateSpellScrollView:Lcom/ime/framework/view/candidate/CandidateExpandSpellScrollView;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Lcom/ime/framework/view/candidate/CandidateExpandSpellScrollView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mExpandCandidateLayout:Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mExpandCandidateSpellScrollView:Lcom/ime/framework/view/candidate/CandidateExpandSpellScrollView;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->addView(Landroid/view/View;)V

    :cond_4
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mExpandCandidatePopup:Landroid/widget/PopupWindow;

    move-object/from16 v24, v0

    if-nez v24, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v24, v0

    if-eqz v24, :cond_5

    new-instance v24, Landroid/widget/PopupWindow;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Lcom/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v25

    invoke-direct/range {v24 .. v25}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mExpandCandidatePopup:Landroid/widget/PopupWindow;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mExpandCandidatePopup:Landroid/widget/PopupWindow;

    move-object/from16 v24, v0

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/view/candidate/AbstractCandidateView;->getExpandPopupBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mExpandCandidatePopup:Landroid/widget/PopupWindow;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mExpandCandidateLayout:Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mExpandCandidatePopup:Landroid/widget/PopupWindow;

    move-object/from16 v24, v0

    const/16 v25, 0x2

    invoke-virtual/range {v24 .. v25}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    :cond_5
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mIsAlreadyDismissExpandPopup:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    move-object/from16 v24, v0

    if-eqz v24, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v8

    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mExpandCandidatePopup:Landroid/widget/PopupWindow;

    move-object/from16 v24, v0

    if-eqz v24, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    move-object/from16 v24, v0

    if-eqz v24, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v24, v0

    if-eqz v24, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Lcom/ime/framework/common/InputManager;->isChnMode()Z

    move-result v24

    if-eqz v24, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Lcom/ime/framework/common/InputManager;->isChnMode()Z

    move-result v24

    if-eqz v24, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Lcom/ime/framework/common/InputManager;->isMobileKeyboard()Z

    move-result v24

    if-eqz v24, :cond_11

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mExpandCandidatePopup:Landroid/widget/PopupWindow;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mExpandCandidateLayout:Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->getRowCount()I

    move-result v25

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/ime/framework/view/candidate/AbstractCandidateView;->getExpandPopupHeight(I)I

    move-result v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mExpandCandidateLayout:Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->getPaddingTop()I

    move-result v26

    add-int v25, v25, v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mExpandCandidateLayout:Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->getPaddingBottom()I

    move-result v26

    add-int v25, v25, v26

    invoke-virtual/range {v24 .. v25}, Landroid/widget/PopupWindow;->setHeight(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mExpandCandidatePopup:Landroid/widget/PopupWindow;

    move-object/from16 v24, v0

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/view/candidate/AbstractCandidateView;->getExpandPopupWidth()I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Landroid/widget/PopupWindow;->setWidth(I)V

    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mExpandCandidatePopup:Landroid/widget/PopupWindow;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    invoke-virtual/range {v24 .. v25}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mExpandCandidatePopup:Landroid/widget/PopupWindow;

    move-object/from16 v24, v0

    new-instance v25, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct/range {v25 .. v25}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual/range {v24 .. v25}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Lcom/ime/framework/common/InputManager;->isChnMode()Z

    move-result v24

    if-eqz v24, :cond_12

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mExpandCandidatePopup:Landroid/widget/PopupWindow;

    move-object/from16 v24, v0

    const v25, 0x7f0e0017

    invoke-virtual/range {v24 .. v25}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :cond_7
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mExpandCandidatePopup:Landroid/widget/PopupWindow;

    move-object/from16 v24, v0

    new-instance v25, Lcom/ime/framework/view/candidate/AbstractCandidateView$6;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v8}, Lcom/ime/framework/view/candidate/AbstractCandidateView$6;-><init>(Lcom/ime/framework/view/candidate/AbstractCandidateView;I)V

    invoke-virtual/range {v24 .. v25}, Landroid/widget/PopupWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    const/16 v24, 0x8

    move/from16 v0, v24

    if-ne v8, v0, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v24, v0

    if-eqz v24, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Lcom/ime/framework/common/InputManager;->getPopupCandidateView()Lcom/ime/framework/view/PopupCandidateView;

    move-result-object v24

    if-eqz v24, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Lcom/ime/framework/common/InputManager;->getPopupKeyboardView()Lcom/ime/framework/view/PopupKeyboardView;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mExpandCandidatePopup:Landroid/widget/PopupWindow;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Lcom/ime/framework/common/InputManager;->isUseBstHWRPanel()Z

    move-result v24

    if-eqz v24, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode()Z

    move-result v24

    if-eqz v24, :cond_13

    const/4 v9, 0x1

    :goto_7
    invoke-virtual/range {v19 .. v19}, Lcom/ime/framework/view/PopupKeyboardView;->getKeyboardCurrentLocationY()I

    move-result v13

    invoke-virtual/range {v19 .. v19}, Lcom/ime/framework/view/PopupKeyboardView;->getCurrentLocationX()I

    move-result v24

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/view/candidate/AbstractCandidateView;->getFloatingKeyboardLeftEdge()I

    move-result v25

    add-int v15, v24, v25

    if-eqz v9, :cond_14

    move/from16 v16, v13

    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mExpandCandidatePopup:Landroid/widget/PopupWindow;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Lcom/ime/framework/common/InputManager;->getPopupCandidateView()Lcom/ime/framework/view/PopupCandidateView;

    move-result-object v25

    const/16 v26, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move/from16 v2, v26

    move/from16 v3, v16

    invoke-virtual {v0, v1, v2, v15, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    :cond_8
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v24, v0

    if-eqz v24, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Lcom/ime/framework/common/InputManager;->isInputViewShown()Z

    move-result v24

    if-eqz v24, :cond_1f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Lcom/ime/framework/common/InputManager;->isShownSoftFuncKbd()Z

    move-result v24

    if-nez v24, :cond_1f

    const/16 v24, 0x4

    move/from16 v0, v24

    if-eq v8, v0, :cond_1f

    const/16 v24, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/ime/framework/view/candidate/AbstractCandidateView;->setExpandButtonImage(Z)V

    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Lcom/ime/framework/common/InputManager;->isChnMode()Z

    move-result v24

    if-eqz v24, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Lcom/ime/framework/common/InputManager;->isChineseLanguageMode()Z

    move-result v24

    if-eqz v24, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mExpandCandidateLayout:Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->getExpandCandidateScrollView()Landroid/widget/ScrollView;

    move-result-object v22

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/widget/ScrollView;->scrollTo(II)V

    invoke-virtual/range {v22 .. v22}, Landroid/widget/ScrollView;->computeScroll()V

    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/view/candidate/AbstractCandidateView;->udpateContentDescription()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Lcom/ime/framework/common/InputManager;->invalidateKeyboardView()V

    :cond_a
    return-void

    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mExpandCandidateSpellScrollView:Lcom/ime/framework/view/candidate/CandidateExpandSpellScrollView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/ime/framework/view/candidate/CandidateExpandSpellScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v17

    move-object/from16 v0, v17

    instance-of v0, v0, Landroid/view/ViewGroup;

    move/from16 v24, v0

    if-eqz v24, :cond_1

    check-cast v17, Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mExpandCandidateSpellScrollView:Lcom/ime/framework/view/candidate/CandidateExpandSpellScrollView;

    move-object/from16 v24, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto/16 :goto_0

    :cond_c
    const/4 v12, 0x0

    goto/16 :goto_1

    :cond_d
    move v7, v6

    goto/16 :goto_2

    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mExpandCandidateLayout:Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->getExpandCandidateScrollView()Landroid/widget/ScrollView;

    move-result-object v23

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Lcom/ime/framework/common/InputManager;->getKeyboardViewHeight()I

    move-result v6

    invoke-virtual/range {v21 .. v21}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v24

    move-object/from16 v0, v24

    iput v6, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual/range {v23 .. v23}, Landroid/widget/ScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v24

    move-object/from16 v0, v24

    iput v6, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto/16 :goto_3

    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mExpandCandidateSpellScrollView:Lcom/ime/framework/view/candidate/CandidateExpandSpellScrollView;

    move-object/from16 v24, v0

    if-eqz v24, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mExpandCandidateSpellScrollView:Lcom/ime/framework/view/candidate/CandidateExpandSpellScrollView;

    move-object/from16 v24, v0

    const/16 v25, 0x8

    invoke-virtual/range {v24 .. v25}, Lcom/ime/framework/view/candidate/CandidateExpandSpellScrollView;->setVisibility(I)V

    goto/16 :goto_3

    :cond_10
    const/4 v8, -0x1

    const-string v24, "SamsungIME"

    const-string v25, "mInputModeManager is null !!!"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mExpandCandidatePopup:Landroid/widget/PopupWindow;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Lcom/ime/framework/common/InputManager;->getKeyboardViewHeight()I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Landroid/widget/PopupWindow;->setHeight(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mExpandCandidatePopup:Landroid/widget/PopupWindow;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mExpandCandidateLayout:Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->getMaxWidth()I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Landroid/widget/PopupWindow;->setWidth(I)V

    goto/16 :goto_5

    :cond_12
    invoke-direct/range {p0 .. p0}, Lcom/ime/framework/view/candidate/AbstractCandidateView;->useExpandingAnimationInternal()Z

    move-result v24

    if-eqz v24, :cond_7

    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mExpandCandidatePopup:Landroid/widget/PopupWindow;

    move-object/from16 v24, v0

    const v25, 0x7f0e0016

    invoke-virtual/range {v24 .. v25}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_6

    :catch_0
    move-exception v24

    goto/16 :goto_6

    :cond_13
    const/4 v9, 0x0

    goto/16 :goto_7

    :cond_14
    invoke-virtual/range {v19 .. v19}, Lcom/ime/framework/view/PopupKeyboardView;->getKeyboardCurrentLocationYTopMargin()I

    move-result v24

    add-int v16, v13, v24

    goto/16 :goto_8

    :cond_15
    const/16 v24, 0x7

    move/from16 v0, v24

    if-ne v8, v0, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v24, v0

    if-eqz v24, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Lcom/ime/framework/common/InputManager;->getPopupCandidateView()Lcom/ime/framework/view/PopupCandidateView;

    move-result-object v24

    if-eqz v24, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Lcom/ime/framework/common/InputManager;->getPopupKeyboardView()Lcom/ime/framework/view/PopupKeyboardView;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mExpandCandidatePopup:Landroid/widget/PopupWindow;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    invoke-virtual/range {v19 .. v19}, Lcom/ime/framework/view/PopupKeyboardView;->isRightSide()Z

    move-result v24

    if-eqz v24, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mExpandCandidatePopup:Landroid/widget/PopupWindow;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Lcom/ime/framework/common/InputManager;->getPopupCandidateView()Lcom/ime/framework/view/PopupCandidateView;

    move-result-object v25

    const/16 v26, 0x0

    invoke-virtual/range {v19 .. v19}, Lcom/ime/framework/view/PopupKeyboardView;->getSplitRightInitX()I

    move-result v27

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/view/candidate/AbstractCandidateView;->getFloatingKeyboardLeftEdge()I

    move-result v28

    add-int v27, v27, v28

    const/16 v28, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/ime/framework/view/PopupKeyboardView;->getKeyboardCurrentLocationY(Z)I

    move-result v28

    invoke-virtual/range {v24 .. v28}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto/16 :goto_9

    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mExpandCandidatePopup:Landroid/widget/PopupWindow;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Lcom/ime/framework/common/InputManager;->getPopupCandidateView()Lcom/ime/framework/view/PopupCandidateView;

    move-result-object v25

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/ime/framework/view/PopupKeyboardView;->getKeyboardCurrentLocationY(Z)I

    move-result v28

    invoke-virtual/range {v24 .. v28}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto/16 :goto_9

    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v24, v0

    if-eqz v24, :cond_1e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Lcom/ime/framework/common/InputManager;->isInputViewShown()Z

    move-result v24

    if-eqz v24, :cond_1e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Lcom/ime/framework/common/InputManager;->isShownSoftFuncKbd()Z

    move-result v24

    if-nez v24, :cond_1e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Lcom/ime/framework/common/InputManager;->isChnMode()Z

    move-result v24

    if-eqz v24, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Lcom/ime/framework/common/InputManager;->isEnableOneHandKeypad()Z

    move-result v24

    if-eqz v24, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Lcom/ime/framework/common/InputManager;->getViewController()Lcom/ime/framework/view/ViewController;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Lcom/ime/framework/view/ViewController;->isOneHandKeypadRightSet()Z

    move-result v11

    if-eqz v11, :cond_19

    const/16 v20, 0x0

    const/16 v24, 0x1

    move/from16 v0, v24

    if-ne v8, v0, :cond_18

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/view/candidate/AbstractCandidateView;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x7f0903e2

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v20

    :goto_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mExpandCandidatePopup:Landroid/widget/PopupWindow;

    move-object/from16 v24, v0

    const/16 v25, 0x33

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/view/candidate/AbstractCandidateView;->getExpandPopupYPositon()I

    move-result v26

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move/from16 v2, v25

    move/from16 v3, v20

    move/from16 v4, v26

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto/16 :goto_9

    :cond_18
    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/view/candidate/AbstractCandidateView;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x7f0903e1

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v20

    goto :goto_b

    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mExpandCandidatePopup:Landroid/widget/PopupWindow;

    move-object/from16 v24, v0

    const/16 v25, 0x33

    const/16 v26, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/view/candidate/AbstractCandidateView;->getExpandPopupYPositon()I

    move-result v27

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move/from16 v2, v25

    move/from16 v3, v26

    move/from16 v4, v27

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto/16 :goto_9

    :cond_1a
    const/16 v24, 0x4

    move/from16 v0, v24

    if-ne v8, v0, :cond_1c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mExpandCandidatePopup:Landroid/widget/PopupWindow;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Lcom/ime/framework/common/InputManager;->isUseBstHWRPanel()Z

    move-result v24

    if-eqz v24, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mExpandCandidatePopup:Landroid/widget/PopupWindow;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;)V

    goto/16 :goto_9

    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mExpandCandidatePopup:Landroid/widget/PopupWindow;

    move-object/from16 v24, v0

    const/16 v25, 0x33

    const/16 v26, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mExpandCandidateLayout:Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->getRowCount()I

    move-result v27

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/ime/framework/view/candidate/AbstractCandidateView;->getExpandPopupHeight(I)I

    move-result v27

    move/from16 v0, v27

    neg-int v0, v0

    move/from16 v27, v0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move/from16 v2, v25

    move/from16 v3, v26

    move/from16 v4, v27

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto/16 :goto_9

    :cond_1c
    invoke-static {}, Lcom/ime/framework/repository/PropertyItems;->getWindowHeight()I

    move-result v24

    const/16 v25, 0x320

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_1d

    invoke-static {}, Lcom/ime/framework/repository/PropertyItems;->getWindowWidth()I

    move-result v24

    const/16 v25, 0x1e0

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_1d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mExpandCandidatePopup:Landroid/widget/PopupWindow;

    move-object/from16 v24, v0

    const/16 v25, 0x53

    const/16 v26, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-interface/range {v27 .. v28}, Lcom/ime/framework/common/InputManager;->getInputView(Z)Landroid/view/View;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getHeight()I

    move-result v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mExpandCandidatePopup:Landroid/widget/PopupWindow;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v28

    sub-int v27, v27, v28

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move/from16 v2, v25

    move/from16 v3, v26

    move/from16 v4, v27

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto/16 :goto_9

    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mExpandCandidatePopup:Landroid/widget/PopupWindow;

    move-object/from16 v24, v0

    const/16 v25, 0x33

    const/16 v26, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/view/candidate/AbstractCandidateView;->getExpandPopupYPositon()I

    move-result v27

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move/from16 v2, v25

    move/from16 v3, v26

    move/from16 v4, v27

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto/16 :goto_9

    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mExpandCandidatePopup:Landroid/widget/PopupWindow;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mExpandCandidatePopup:Landroid/widget/PopupWindow;

    move-object/from16 v24, v0

    const/16 v25, 0x33

    const/16 v26, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mExpandCandidateLayout:Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->getRowCount()I

    move-result v27

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/ime/framework/view/candidate/AbstractCandidateView;->getExpandPopupHeight(I)I

    move-result v27

    move/from16 v0, v27

    neg-int v0, v0

    move/from16 v27, v0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move/from16 v2, v25

    move/from16 v3, v26

    move/from16 v4, v27

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto/16 :goto_9

    :cond_1f
    invoke-direct/range {p0 .. p0}, Lcom/ime/framework/view/candidate/AbstractCandidateView;->isBstHandwriteFSMode()Z

    move-result v24

    if-eqz v24, :cond_20

    const/16 v24, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/ime/framework/view/candidate/AbstractCandidateView;->setExpandButtonImage(Z)V

    goto/16 :goto_a

    :cond_20
    const/16 v24, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/ime/framework/view/candidate/AbstractCandidateView;->setExpandButtonImage(Z)V

    goto/16 :goto_a

    :catch_1
    move-exception v24

    goto/16 :goto_6
.end method

.method public showMobileKeyboardLanguageDialog()V
    .locals 31

    new-instance v27, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Lcom/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v28

    invoke-direct/range {v27 .. v28}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    move-object/from16 v27, v0

    new-instance v28, Lcom/ime/framework/view/candidate/AbstractCandidateView$3;

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/ime/framework/view/candidate/AbstractCandidateView$3;-><init>(Lcom/ime/framework/view/candidate/AbstractCandidateView;)V

    invoke-virtual/range {v27 .. v28}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v8

    const/16 v27, 0x0

    sget-object v28, Lcom/android/internal/R$styleable;->DialogPreference:[I

    const v29, 0x101005d

    const/16 v30, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move/from16 v2, v29

    move/from16 v3, v30

    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v4

    const/16 v27, 0x2

    move/from16 v0, v27

    invoke-virtual {v4, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v9}, Landroid/app/AlertDialog$Builder;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/app/AlertDialog$Builder;

    const-string v27, "layout_inflater"

    move-object/from16 v0, v27

    invoke-virtual {v8, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/LayoutInflater;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v27, v0

    invoke-interface/range {v27 .. v27}, Lcom/ime/framework/common/InputManager;->getSelectedLanguageList()[Lcom/ime/framework/common/Language;

    move-result-object v18

    const/4 v12, 0x0

    const-string v27, "SamsungIME_MKDB"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "supported.length"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v15, -0x1

    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    new-instance v24, Ljava/util/ArrayList;

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v27, v0

    invoke-interface/range {v27 .. v27}, Lcom/ime/framework/common/InputManager;->getCurrentInputLanguage()Lcom/ime/framework/common/Language;

    move-result-object v7

    const/4 v5, -0x1

    const/4 v10, 0x0

    :goto_0
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    if-ge v10, v0, :cond_2

    const-string v27, "0x%08x"

    const/16 v28, 0x1

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    aget-object v30, v18, v10

    invoke-virtual/range {v30 .. v30}, Lcom/ime/framework/common/Language;->getId()I

    move-result v30

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    aput-object v30, v28, v29

    invoke-static/range {v27 .. v28}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    const-string v27, "SamsungIME_MKDB"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "supported[i].getName()"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    aget-object v29, v18, v10

    invoke-virtual/range {v29 .. v29}, Lcom/ime/framework/common/Language;->getName()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " i = "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v27, v0

    invoke-static {v12}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Integer;->intValue()I

    move-result v28

    invoke-interface/range {v27 .. v28}, Lcom/ime/framework/common/InputManager;->isMobileKeyboardSupportedLanguage(I)Z

    move-result v27

    if-nez v27, :cond_0

    aget-object v27, v18, v10

    invoke-virtual/range {v27 .. v27}, Lcom/ime/framework/common/Language;->getName()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v15, v15, 0x1

    aget-object v27, v18, v10

    move-object/from16 v0, v27

    invoke-virtual {v7, v0}, Lcom/ime/framework/common/Language;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_1

    move v5, v15

    :cond_1
    aget-object v27, v18, v10

    invoke-virtual/range {v27 .. v27}, Lcom/ime/framework/common/Language;->getName()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v19

    move-object/from16 v1, v27

    invoke-virtual {v0, v15, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    aget-object v27, v18, v10

    invoke-virtual/range {v27 .. v27}, Lcom/ime/framework/common/Language;->getId()I

    move-result v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v13, v15, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const-string v27, "SamsungIME_MKDB"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "supported[i].getName()"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    aget-object v29, v18, v10

    invoke-virtual/range {v29 .. v29}, Lcom/ime/framework/common/Language;->getName()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " i = "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    const v27, 0x7f030047

    const/16 v28, 0x0

    move/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v11, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v22

    const v27, 0x7f100073

    move-object/from16 v0, v22

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/TextView;

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v20

    const-string v27, "SamsungIME_MKDB"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "supportSelectedLanguageCnt"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v14, ""

    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v27

    if-nez v27, :cond_4

    const/16 v27, 0x1

    move/from16 v0, v20

    move/from16 v1, v27

    if-ne v0, v1, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/view/candidate/AbstractCandidateView;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    const v28, 0x7f0d0301

    invoke-virtual/range {v27 .. v28}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v27

    const/16 v28, 0x1

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/ime/framework/view/candidate/AbstractCandidateView;->makeArrayToString(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v30

    aput-object v30, v28, v29

    invoke-static/range {v27 .. v28}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v27, v0

    invoke-interface/range {v27 .. v27}, Lcom/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v27

    const/16 v28, 0x0

    move-object/from16 v0, v27

    move/from16 v1, v28

    invoke-static {v0, v14, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/widget/Toast;->show()V

    const-string v27, "SamsungIME_MKDB"

    const-string v28, "show Toast Popup"

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    return-void

    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/view/candidate/AbstractCandidateView;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    const v28, 0x7f0d0302

    invoke-virtual/range {v27 .. v28}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v27

    const/16 v28, 0x1

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/ime/framework/view/candidate/AbstractCandidateView;->makeArrayToString(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v30

    aput-object v30, v28, v29

    invoke-static/range {v27 .. v28}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    goto :goto_2

    :cond_4
    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v27

    if-lez v27, :cond_6

    if-lez v20, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/view/candidate/AbstractCandidateView;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    const v28, 0x7f0d0307

    invoke-virtual/range {v27 .. v28}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v27

    const/16 v28, 0x0

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    invoke-static/range {v27 .. v28}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v27

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/CharSequence;

    move-object/from16 v27, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    move-object/from16 v27, v0

    new-instance v28, Lcom/ime/framework/view/candidate/AbstractCandidateView$4;

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v13}, Lcom/ime/framework/view/candidate/AbstractCandidateView$4;-><init>(Lcom/ime/framework/view/candidate/AbstractCandidateView;Ljava/util/ArrayList;)V

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v0, v6, v5, v1}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :cond_5
    :goto_4
    new-instance v17, Lcom/ime/framework/view/candidate/AbstractCandidateView$5;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/ime/framework/view/candidate/AbstractCandidateView$5;-><init>(Lcom/ime/framework/view/candidate/AbstractCandidateView;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCustomTitle(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/view/candidate/AbstractCandidateView;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    const v28, 0x7f0d0305

    invoke-virtual/range {v27 .. v28}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mSwitchingDialog:Landroid/app/AlertDialog;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mSwitchingDialog:Landroid/app/AlertDialog;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mSwitchingDialog:Landroid/app/AlertDialog;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v27

    const/16 v28, 0x7dc

    invoke-virtual/range {v27 .. v28}, Landroid/view/Window;->setType(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mSwitchingDialog:Landroid/app/AlertDialog;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v27

    move-object/from16 v0, v27

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    move/from16 v28, v0

    or-int/lit8 v28, v28, 0x10

    move/from16 v0, v28

    move-object/from16 v1, v27

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mSwitchingDialog:Landroid/app/AlertDialog;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_3

    :cond_6
    if-nez v20, :cond_5

    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v23

    const/16 v27, 0x1

    move/from16 v0, v23

    move/from16 v1, v27

    if-ne v0, v1, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/view/candidate/AbstractCandidateView;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    const v28, 0x7f0d0304

    invoke-virtual/range {v27 .. v28}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v27

    const/16 v28, 0x0

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    invoke-static/range {v27 .. v28}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    :cond_7
    const/16 v27, 0x1

    move/from16 v0, v23

    move/from16 v1, v27

    if-le v0, v1, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/view/candidate/AbstractCandidateView;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    const v28, 0x7f0d0306

    invoke-virtual/range {v27 .. v28}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v27

    const/16 v28, 0x0

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    invoke-static/range {v27 .. v28}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4
.end method

.method public udpateContentDescription()V
    .locals 4

    iget-object v1, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->isCandidateExpanded()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/ime/framework/view/candidate/AbstractCandidateView;->getExpandButton()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, Lcom/ime/framework/view/candidate/AbstractCandidateView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d013f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/ime/framework/view/candidate/AbstractCandidateView;->getExpandButton()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, Lcom/ime/framework/view/candidate/AbstractCandidateView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d013a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public updateCandidates()V
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mSuggestions:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcom/ime/framework/view/candidate/AbstractCandidateView;->setCandidates(Ljava/util/ArrayList;)V

    return-void
.end method

.method public updateExpandButtonImage(Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/ime/framework/view/candidate/AbstractCandidateView;->setExpandButtonImage(Z)V

    return-void
.end method

.method public updateExpandCandViews(Z)V
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mExpandCandidateLayout:Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mExpandCandidateLayout:Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mScrollViewLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->isCandidateExpanded()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mExpandCandidateLayout:Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mExpandGridViewHandler:Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout$ExpandGridViewHandler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mExpandCandidateLayout:Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mExpandGridViewHandler:Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout$ExpandGridViewHandler;

    invoke-virtual {v0}, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout$ExpandGridViewHandler;->stopPrepareCandidatesTimer()V

    :cond_1
    iget-object v0, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mExpandCandidateLayout:Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mScrollViewLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    :cond_2
    return-void
.end method

.method public updateExpandCandidateLayout()V
    .locals 4

    iget-object v0, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mExpandHeightHandler:Landroid/os/Handler;

    new-instance v1, Lcom/ime/framework/view/candidate/AbstractCandidateView$8;

    invoke-direct {v1, p0}, Lcom/ime/framework/view/candidate/AbstractCandidateView$8;-><init>(Lcom/ime/framework/view/candidate/AbstractCandidateView;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public updateToolbar()V
    .locals 3

    iget-object v1, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->getService()Lcom/ime/framework/common/AbstractInputMethod;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mToolBarContainer:Lcom/ime/framework/view/toolbar/ToolBarContainer;

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/ime/framework/repository/InputModeStatus;->getInputRange()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v1, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mToolBarContainer:Lcom/ime/framework/view/toolbar/ToolBarContainer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/ime/framework/view/toolbar/ToolBarContainer;->updateToolBarPage(Z)V

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->isTransparentKeypad()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/ime/framework/view/candidate/AbstractCandidateView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v2, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/ime/framework/common/InputManager;->getTransparencyLevel()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :goto_1
    return-void

    :cond_1
    iget-object v1, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mToolBarContainer:Lcom/ime/framework/view/toolbar/ToolBarContainer;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/ime/framework/view/toolbar/ToolBarContainer;->updateToolBarPage(Z)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/ime/framework/view/candidate/AbstractCandidateView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/16 v2, 0xff

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_1
.end method
