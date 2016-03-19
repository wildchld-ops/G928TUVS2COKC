.class Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;
.super Landroid/widget/BaseAdapter;
.source "AbstractCandidateLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ime/framework/view/candidate/AbstractCandidateLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SuggestionsAdapter"
.end annotation


# instance fields
.field private activeIndex:I

.field private candidateStatus:I

.field private defaultWidthSymbol:Ljava/lang/String;

.field private expandButtonWidth:I

.field private firstChildExceedsWidth:Z

.field private fontSize:F

.field private forcedCount:I

.field private height:I

.field private isDefaultSymbol:Z

.field private isShownExpandView:Z

.field private maxWidth:I

.field private maxWidthTextView:I

.field final synthetic this$0:Lcom/ime/framework/view/candidate/AbstractCandidateLayout;

.field private typeFace:Landroid/graphics/Typeface;


# direct methods
.method private constructor <init>(Lcom/ime/framework/view/candidate/AbstractCandidateLayout;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, -0x1

    iput-object p1, p0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateLayout;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput v1, p0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->activeIndex:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->defaultWidthSymbol:Ljava/lang/String;

    iput v2, p0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->expandButtonWidth:I

    iput-boolean v2, p0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->isShownExpandView:Z

    iput v1, p0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->forcedCount:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/ime/framework/view/candidate/AbstractCandidateLayout;Lcom/ime/framework/view/candidate/AbstractCandidateLayout$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;-><init>(Lcom/ime/framework/view/candidate/AbstractCandidateLayout;)V

    return-void
.end method

.method private isApplyAutoCorrectionDA()Z
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateLayout;

    iget-object v1, v1, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->isEnableAutoCorrectionDA()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateLayout;

    iget-object v1, v1, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v1}, Lcom/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/ime/framework/repository/InputModeStatus;->getInputMethodStatus()I

    move-result v1

    if-eq v1, v0, :cond_0

    iget v1, p0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->candidateStatus:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public checkSwapPosition(I)I
    .locals 3

    const/4 v2, 0x1

    iget-object v1, p0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateLayout;

    # getter for: Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mIsSwiftKeyMode:Z
    invoke-static {v1}, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->access$100(Lcom/ime/framework/view/candidate/AbstractCandidateLayout;)Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, p0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->activeIndex:I

    if-ne v1, v2, :cond_0

    move v0, p1

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateLayout;

    iget-object v1, v1, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->isChineseLanguageMode()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateLayout;

    iget-object v1, v1, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->isJapaneseLanguageMode()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateLayout;

    iget-object v1, v1, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->getHanjaStatus()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->isShownExpandView:Z

    if-eqz v1, :cond_2

    :cond_1
    iget-object v1, p0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateLayout;

    iget-object v1, v1, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v1}, Lcom/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateLayout;

    iget-object v1, v1, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->isCurrentCarModeKnobSIP()Z

    move-result v1

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->firstChildExceedsWidth:Z

    if-nez v1, :cond_2

    if-ne p1, v2, :cond_3

    const/4 p1, 0x0

    :cond_2
    :goto_1
    move v0, p1

    goto :goto_0

    :cond_3
    if-nez p1, :cond_2

    invoke-virtual {p0}, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->getCount()I

    move-result v1

    if-le v1, v2, :cond_2

    const/4 p1, 0x1

    goto :goto_1
.end method

.method public getCount()I
    .locals 2

    iget-object v0, p0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateLayout;

    # getter for: Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestions:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->access$1000(Lcom/ime/framework/view/candidate/AbstractCandidateLayout;)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->forcedCount:I

    if-ltz v0, :cond_1

    iget v0, p0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->forcedCount:I

    iget-object v1, p0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateLayout;

    # getter for: Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestions:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->access$1000(Lcom/ime/framework/view/candidate/AbstractCandidateLayout;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v0, v1, :cond_3

    :cond_1
    iget-object v0, p0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateLayout;

    # getter for: Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestions:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->access$1000(Lcom/ime/framework/view/candidate/AbstractCandidateLayout;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateLayout;

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->isCurrentCarModeKnobSIP()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateLayout;

    # getter for: Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestions:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->access$1000(Lcom/ime/framework/view/candidate/AbstractCandidateLayout;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateLayout;

    # getter for: Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestions:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->access$1000(Lcom/ime/framework/view/candidate/AbstractCandidateLayout;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->forcedCount:I

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateLayout;

    # getter for: Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestions:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->access$1000(Lcom/ime/framework/view/candidate/AbstractCandidateLayout;)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateLayout;

    # getter for: Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestions:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->access$1000(Lcom/ime/framework/view/candidate/AbstractCandidateLayout;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->getItem(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 30

    const-string v26, "SamsungIME_UnifiedIME"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "AbstractCandidateLayout, getView position value is get view  "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateLayout;

    move-object/from16 v26, v0

    # getter for: Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestions:Ljava/util/ArrayList;
    invoke-static/range {v26 .. v26}, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->access$1000(Lcom/ime/framework/view/candidate/AbstractCandidateLayout;)Ljava/util/ArrayList;

    move-result-object v26

    if-eqz v26, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateLayout;

    move-object/from16 v26, v0

    # getter for: Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestions:Ljava/util/ArrayList;
    invoke-static/range {v26 .. v26}, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->access$1000(Lcom/ime/framework/view/candidate/AbstractCandidateLayout;)Ljava/util/ArrayList;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v26

    if-lez v26, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateLayout;

    move-object/from16 v26, v0

    # getter for: Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestions:Ljava/util/ArrayList;
    invoke-static/range {v26 .. v26}, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->access$1000(Lcom/ime/framework/view/candidate/AbstractCandidateLayout;)Ljava/util/ArrayList;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v26

    move/from16 v0, p1

    move/from16 v1, v26

    if-lt v0, v1, :cond_2

    :cond_0
    const/16 v24, 0x0

    :cond_1
    :goto_0
    return-object v24

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateLayout;

    move-object/from16 v26, v0

    # getter for: Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestions:Ljava/util/ArrayList;
    invoke-static/range {v26 .. v26}, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->access$1000(Lcom/ime/framework/view/candidate/AbstractCandidateLayout;)Ljava/util/ArrayList;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    if-eqz v26, :cond_3

    const-string v26, ""

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateLayout;

    move-object/from16 v27, v0

    # getter for: Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestions:Ljava/util/ArrayList;
    invoke-static/range {v27 .. v27}, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->access$1000(Lcom/ime/framework/view/candidate/AbstractCandidateLayout;)Ljava/util/ArrayList;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_4

    :cond_3
    const/16 v24, 0x0

    goto :goto_0

    :cond_4
    if-eqz p2, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateLayout;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Lcom/ime/framework/common/InputManager;->isCurrentCarModeKnobSIP()Z

    move-result v26

    if-eqz v26, :cond_6

    :cond_5
    new-instance v24, Lcom/ime/framework/view/candidate/CandidateTextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateLayout;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->getContext()Landroid/content/Context;

    move-result-object v26

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/ime/framework/view/candidate/CandidateTextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateLayout;

    move-object/from16 v26, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/ime/framework/view/candidate/CandidateTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateLayout;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-boolean v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mIsLastItemFooter:Z

    move/from16 v26, v0

    if-eqz v26, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->getCount()I

    move-result v26

    add-int/lit8 v26, v26, -0x1

    move/from16 v0, p1

    move/from16 v1, v26

    if-ne v0, v1, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateLayout;

    move-object/from16 v26, v0

    # getter for: Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestions:Ljava/util/ArrayList;
    invoke-static/range {v26 .. v26}, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->access$1000(Lcom/ime/framework/view/candidate/AbstractCandidateLayout;)Ljava/util/ArrayList;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateLayout;

    move-object/from16 v27, v0

    # getter for: Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->KNOB_SHOW_CANDIDATES_COUNT:I
    invoke-static/range {v27 .. v27}, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->access$1200(Lcom/ime/framework/view/candidate/AbstractCandidateLayout;)I

    move-result v27

    rem-int v25, v26, v27

    const/16 v26, 0x11

    move-object/from16 v0, v24

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/ime/framework/view/candidate/CandidateTextView;->setGravity(I)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->maxWidthTextView:I

    move/from16 v26, v0

    mul-int v26, v26, v25

    move-object/from16 v0, v24

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/ime/framework/view/candidate/CandidateTextView;->setWidth(I)V

    const-string v26, ""

    const-string v27, ""

    const/16 v28, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    move/from16 v3, p1

    move/from16 v4, v28

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/ime/framework/view/candidate/CandidateTextView;->setText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZ)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateLayout;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/ime/framework/view/candidate/CandidateTextView;

    move-object/from16 v26, v0

    aget-object v26, v26, p1

    if-nez v26, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateLayout;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/ime/framework/view/candidate/CandidateTextView;

    move-object/from16 v26, v0

    aput-object v24, v26, p1

    goto/16 :goto_0

    :cond_6
    move-object/from16 v24, p2

    check-cast v24, Lcom/ime/framework/view/candidate/CandidateTextView;

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v26

    move/from16 v2, v27

    move/from16 v3, v28

    move/from16 v4, v29

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/ime/framework/view/candidate/CandidateTextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto/16 :goto_1

    :cond_7
    const/16 v26, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->fontSize:F

    move/from16 v27, v0

    move-object/from16 v0, v24

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/ime/framework/view/candidate/CandidateTextView;->setTextSize(IF)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->typeFace:Landroid/graphics/Typeface;

    move-object/from16 v26, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/ime/framework/view/candidate/CandidateTextView;->setTypeface(Landroid/graphics/Typeface;)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->height:I

    move/from16 v26, v0

    move-object/from16 v0, v24

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/ime/framework/view/candidate/CandidateTextView;->setHeight(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateLayout;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->getTextColor()I

    move-result v26

    move-object/from16 v0, v24

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/ime/framework/view/candidate/CandidateTextView;->setTextColor(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateLayout;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->getPressedTextColor()I

    move-result v26

    move-object/from16 v0, v24

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/ime/framework/view/candidate/CandidateTextView;->setPressedTextColor(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateLayout;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->getInputedTextColor()I

    move-result v26

    move-object/from16 v0, v24

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/ime/framework/view/candidate/CandidateTextView;->setInputedTextColor(I)V

    const/16 v26, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/ime/framework/view/candidate/CandidateTextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    const/16 v26, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/ime/framework/view/candidate/CandidateTextView;->setSingleLine(Z)V

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/ime/framework/view/candidate/CandidateTextView;->setAttribute(ZZ)V

    const/16 v26, 0x11

    move-object/from16 v0, v24

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/ime/framework/view/candidate/CandidateTextView;->setGravity(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateLayout;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Lcom/ime/framework/common/InputManager;->isMobileKeyboardSYMCandidate()Z

    move-result v26

    if-nez v26, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateLayout;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Lcom/ime/framework/common/InputManager;->isMobileKeyboardUmlautCandidate()Z

    move-result v26

    if-nez v26, :cond_8

    invoke-virtual/range {p0 .. p1}, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->checkSwapPosition(I)I

    move-result p1

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateLayout;

    move-object/from16 v26, v0

    # getter for: Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestions:Ljava/util/ArrayList;
    invoke-static/range {v26 .. v26}, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->access$1000(Lcom/ime/framework/view/candidate/AbstractCandidateLayout;)Ljava/util/ArrayList;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v26

    move/from16 v0, v26

    move/from16 v1, p1

    if-le v0, v1, :cond_9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->activeIndex:I

    move/from16 v26, v0

    move/from16 v0, p1

    move/from16 v1, v26

    if-ne v0, v1, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateLayout;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Lcom/ime/framework/common/InputManager;->isMobileKeyboardSYMCandidate()Z

    move-result v26

    if-nez v26, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateLayout;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Lcom/ime/framework/common/InputManager;->isMobileKeyboardUmlautCandidate()Z

    move-result v26

    if-nez v26, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateLayout;

    move-object/from16 v26, v0

    # getter for: Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestions:Ljava/util/ArrayList;
    invoke-static/range {v26 .. v26}, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->access$1000(Lcom/ime/framework/view/candidate/AbstractCandidateLayout;)Ljava/util/ArrayList;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateLayout;

    move-object/from16 v27, v0

    # getter for: Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestions:Ljava/util/ArrayList;
    invoke-static/range {v27 .. v27}, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->access$1000(Lcom/ime/framework/view/candidate/AbstractCandidateLayout;)Ljava/util/ArrayList;

    move-result-object v27

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/lang/CharSequence;

    const/16 v28, 0x1

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    move/from16 v3, p1

    move/from16 v4, v28

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/ime/framework/view/candidate/CandidateTextView;->setText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZ)V

    :cond_9
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateLayout;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Lcom/ime/framework/common/InputManager;->isChnMode()Z

    move-result v26

    if-eqz v26, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateLayout;

    move-object/from16 v26, v0

    # getter for: Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mWordSequenceData:Ljava/util/ArrayList;
    invoke-static/range {v26 .. v26}, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->access$200(Lcom/ime/framework/view/candidate/AbstractCandidateLayout;)Ljava/util/ArrayList;

    move-result-object v26

    if-eqz v26, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateLayout;

    move-object/from16 v26, v0

    # getter for: Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mWordSequenceData:Ljava/util/ArrayList;
    invoke-static/range {v26 .. v26}, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->access$200(Lcom/ime/framework/view/candidate/AbstractCandidateLayout;)Ljava/util/ArrayList;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v26

    move/from16 v0, v26

    move/from16 v1, p1

    if-le v0, v1, :cond_1a

    const-string v26, ""

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateLayout;

    move-object/from16 v27, v0

    # getter for: Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestions:Ljava/util/ArrayList;
    invoke-static/range {v27 .. v27}, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->access$1000(Lcom/ime/framework/view/candidate/AbstractCandidateLayout;)Ljava/util/ArrayList;

    move-result-object v27

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_19

    if-lez p1, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateLayout;

    move-object/from16 v26, v0

    # getter for: Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mWordSequenceData:Ljava/util/ArrayList;
    invoke-static/range {v26 .. v26}, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->access$200(Lcom/ime/framework/view/candidate/AbstractCandidateLayout;)Ljava/util/ArrayList;

    move-result-object v26

    add-int/lit8 v27, p1, -0x1

    invoke-virtual/range {v26 .. v27}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/Byte;

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Byte;->intValue()I

    move-result v26

    move/from16 v0, v26

    move-object/from16 v1, v24

    iput v0, v1, Lcom/ime/framework/view/candidate/CandidateTextView;->mSequenceTypeInfo:I

    :cond_a
    :goto_3
    invoke-direct/range {p0 .. p0}, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->isApplyAutoCorrectionDA()Z

    move-result v8

    if-eqz v8, :cond_1b

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v26

    if-eqz v26, :cond_1b

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->hasKeyAT()Z

    move-result v26

    if-nez v26, :cond_1b

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->hasWWWdot()Z

    move-result v26

    if-nez v26, :cond_1b

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->hasKeydot()Z

    move-result v26

    if-nez v26, :cond_1b

    const/4 v9, 0x1

    :goto_4
    move/from16 v0, p1

    move-object/from16 v1, v24

    iput v0, v1, Lcom/ime/framework/view/candidate/CandidateTextView;->mViewIndex:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateLayout;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Lcom/ime/framework/common/InputManager;->isCurrentCarModeKnobSIP()Z

    move-result v26

    if-nez v26, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateLayout;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Lcom/ime/framework/common/InputManager;->getUniversalSwitchMode()Z

    move-result v26

    if-eqz v26, :cond_c

    :cond_b
    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, v24

    iput-boolean v0, v1, Lcom/ime/framework/view/candidate/CandidateTextView;->mIsVisible:Z

    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, v24

    iput-boolean v0, v1, Lcom/ime/framework/view/candidate/CandidateTextView;->mIsInFocusState:Z

    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, v24

    iput-boolean v0, v1, Lcom/ime/framework/view/candidate/CandidateTextView;->mIsInPressedState:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateLayout;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/ime/framework/view/candidate/CandidateTextView;

    move-object/from16 v26, v0

    aput-object v24, v26, p1

    const-string v26, "SamsungIME"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "filling mSuggestionViews information position:"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    if-eqz v8, :cond_1d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateLayout;

    move-object/from16 v26, v0

    # getter for: Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestions:Ljava/util/ArrayList;
    invoke-static/range {v26 .. v26}, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->access$1000(Lcom/ime/framework/view/candidate/AbstractCandidateLayout;)Ljava/util/ArrayList;

    move-result-object v26

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/CharSequence;

    if-nez p1, :cond_1c

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v26

    if-eqz v26, :cond_1c

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_1c

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->hasKeyAT()Z

    move-result v26

    if-nez v26, :cond_1c

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->hasWWWdot()Z

    move-result v26

    if-nez v26, :cond_1c

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->hasKeydot()Z

    move-result v26

    if-nez v26, :cond_1c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateLayout;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->getHighlightTextColor()I

    move-result v26

    move-object/from16 v0, v24

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/ime/framework/view/candidate/CandidateTextView;->setHighlightColor(I)V

    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateLayout;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Lcom/ime/framework/common/InputManager;->isFocusOnCandidateView()Z

    move-result v26

    if-eqz v26, :cond_1f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->activeIndex:I

    move/from16 v26, v0

    move/from16 v0, p1

    move/from16 v1, v26

    if-ne v0, v1, :cond_1f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateLayout;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Lcom/ime/framework/common/InputManager;->isChnMode()Z

    move-result v26

    if-nez v26, :cond_1f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateLayout;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->getSelecedBackgroundResourceId()I

    move-result v26

    move-object/from16 v0, v24

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/ime/framework/view/candidate/CandidateTextView;->setBackgroundResource(I)V

    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateLayout;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->getLeftPaddingSize()I

    move-result v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateLayout;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->getRightPaddingSize()I

    move-result v17

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->isDefaultSymbol:Z

    move/from16 v26, v0

    if-eqz v26, :cond_20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->defaultWidthSymbol:Ljava/lang/String;

    move-object/from16 v26, v0

    if-eqz v26, :cond_20

    invoke-virtual/range {v24 .. v24}, Lcom/ime/framework/view/candidate/CandidateTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->defaultWidthSymbol:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v26

    invoke-virtual/range {v24 .. v24}, Lcom/ime/framework/view/candidate/CandidateTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v27

    invoke-virtual/range {v24 .. v24}, Lcom/ime/framework/view/candidate/CandidateTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v28

    invoke-interface/range {v28 .. v28}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v27

    sub-float v26, v26, v27

    const/high16 v27, 0x40000000    # 2.0f

    div-float v26, v26, v27

    move/from16 v0, v26

    float-to-int v15, v0

    add-int v26, v13, v15

    const/16 v27, 0x0

    add-int v28, v17, v15

    const/16 v29, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v26

    move/from16 v2, v27

    move/from16 v3, v28

    move/from16 v4, v29

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/ime/framework/view/candidate/CandidateTextView;->setPadding(IIII)V

    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateLayout;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Lcom/ime/framework/common/InputManager;->isChineseLanguageMode()Z

    move-result v26

    if-nez v26, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateLayout;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Lcom/ime/framework/common/InputManager;->isJapaneseLanguageMode()Z

    move-result v26

    if-eqz v26, :cond_21

    :cond_d
    const/4 v11, 0x1

    :goto_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->candidateStatus:I

    move/from16 v26, v0

    const/16 v27, 0x3

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_31

    if-eqz v11, :cond_24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateLayout;

    move-object/from16 v26, v0

    # getter for: Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestions:Ljava/util/ArrayList;
    invoke-static/range {v26 .. v26}, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->access$1000(Lcom/ime/framework/view/candidate/AbstractCandidateLayout;)Ljava/util/ArrayList;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v26

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->maxWidth:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->expandButtonWidth:I

    move/from16 v27, v0

    sub-int v26, v26, v27

    move-object/from16 v0, v24

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/ime/framework/view/candidate/CandidateTextView;->setWidth(I)V

    const/16 v26, 0x1

    const/16 v27, 0x1

    move-object/from16 v0, v24

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/ime/framework/view/candidate/CandidateTextView;->setAttribute(ZZ)V

    const/16 v26, 0x1

    move-object/from16 v0, v24

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/ime/framework/view/candidate/CandidateTextView;->setSingleLine(Z)V

    sget-object v26, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/ime/framework/view/candidate/CandidateTextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    new-instance v16, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v26, -0x2

    const/16 v27, -0x1

    move-object/from16 v0, v16

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v26, 0xd

    move-object/from16 v0, v16

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    move-object/from16 v0, v24

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/ime/framework/view/candidate/CandidateTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v26, 0x13

    move-object/from16 v0, v24

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/ime/framework/view/candidate/CandidateTextView;->setGravity(I)V

    :goto_9
    if-nez p1, :cond_e

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->firstChildExceedsWidth:Z

    move/from16 v26, v0

    if-eqz v26, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateLayout;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Lcom/ime/framework/common/InputManager;->getHanjaStatus()Z

    move-result v26

    if-nez v26, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateLayout;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Lcom/ime/framework/common/InputManager;->isCurrentCarModeKnobSIP()Z

    move-result v26

    if-nez v26, :cond_e

    const/16 v26, 0x1

    const/16 v27, 0x1

    move-object/from16 v0, v24

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/ime/framework/view/candidate/CandidateTextView;->setAttribute(ZZ)V

    const/16 v26, 0x1

    move-object/from16 v0, v24

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/ime/framework/view/candidate/CandidateTextView;->setSingleLine(Z)V

    sget-object v26, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/ime/framework/view/candidate/CandidateTextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    new-instance v16, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v26, -0x2

    const/16 v27, -0x1

    move-object/from16 v0, v16

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v26, 0xd

    move-object/from16 v0, v16

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    move-object/from16 v0, v24

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/ime/framework/view/candidate/CandidateTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_e
    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateLayout;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Lcom/ime/framework/common/InputManager;->isUsePopupKeyboard()Z

    move-result v22

    if-eqz v22, :cond_32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateLayout;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->getTouchListener()Landroid/view/View$OnTouchListener;

    move-result-object v26

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/ime/framework/view/candidate/CandidateTextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :goto_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateLayout;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mRepository:Lcom/ime/framework/repository/Repository;

    move-object/from16 v26, v0

    const-string v27, "SWIFTKEY_VERBATIM_INDEX"

    const/16 v28, -0x1

    invoke-interface/range {v26 .. v28}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateLayout;

    move-object/from16 v26, v0

    # getter for: Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mIsSwiftKeyMode:Z
    invoke-static/range {v26 .. v26}, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->access$100(Lcom/ime/framework/view/candidate/AbstractCandidateLayout;)Z

    move-result v26

    if-eqz v26, :cond_13

    const/16 v20, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->getCount()I

    move-result v26

    move/from16 v0, p1

    move/from16 v1, v26

    if-ge v0, v1, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateLayout;

    move-object/from16 v26, v0

    # getter for: Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestions:Ljava/util/ArrayList;
    invoke-static/range {v26 .. v26}, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->access$1000(Lcom/ime/framework/view/candidate/AbstractCandidateLayout;)Ljava/util/ArrayList;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/CharSequence;

    invoke-interface/range {v26 .. v26}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v20

    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateLayout;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Lcom/ime/framework/common/InputManager;->isEnableAutoCorrection()Z

    move-result v26

    if-eqz v26, :cond_33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateLayout;

    move-object/from16 v26, v0

    # getter for: Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestions:Ljava/util/ArrayList;
    invoke-static/range {v26 .. v26}, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->access$1000(Lcom/ime/framework/view/candidate/AbstractCandidateLayout;)Ljava/util/ArrayList;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v26

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_33

    const/4 v10, 0x1

    :goto_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateLayout;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode()Z

    move-result v26

    if-nez v26, :cond_3a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateLayout;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Lcom/ime/framework/common/InputManager;->getStateCandidate()I

    move-result v26

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_10

    if-eqz v20, :cond_10

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v26

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_10

    const/16 v26, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v26

    if-nez v26, :cond_10

    const-string v26, ".,;!?\u061b\u060c\u061f"

    const/16 v27, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v27

    invoke-static/range {v27 .. v27}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v26

    if-eqz v26, :cond_3a

    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateLayout;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Lcom/ime/framework/common/InputManager;->getHanjaStatus()Z

    move-result v26

    if-nez v26, :cond_3a

    if-nez v11, :cond_3a

    const-string v26, ""

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateLayout;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v27, v0

    invoke-interface/range {v27 .. v27}, Lcom/ime/framework/common/InputManager;->getBackCorrectionWord()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_11

    const-string v26, ""

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateLayout;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v27, v0

    invoke-interface/range {v27 .. v27}, Lcom/ime/framework/common/InputManager;->getBackCorrectionWord()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_3a

    const/16 v26, 0x1

    move/from16 v0, p1

    move/from16 v1, v26

    if-eq v0, v1, :cond_3a

    :cond_11
    const/4 v12, 0x1

    move/from16 v0, p1

    move/from16 v1, v23

    if-eq v0, v1, :cond_36

    if-nez v10, :cond_36

    if-eqz v20, :cond_12

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v26

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_12

    const-string v26, ".,;!?\u061b\u060c\u061f"

    const/16 v27, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v27

    invoke-static/range {v27 .. v27}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v26

    if-eqz v26, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateLayout;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Lcom/ime/framework/common/InputManager;->getStateCandidate()I

    move-result v26

    const/16 v27, 0x2

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_34

    const/4 v12, 0x1

    :cond_12
    :goto_d
    const-string v26, "SamsungIME"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "< REMOVE TEST > isNextWordPredictionSymbol 1: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v12, :cond_35

    new-instance v26, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter$1;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter$1;-><init>(Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;)V

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/ime/framework/view/candidate/CandidateTextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :cond_13
    :goto_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateLayout;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mXt9Version:I

    move/from16 v26, v0

    const/16 v27, 0x3

    move/from16 v0, v26

    move/from16 v1, v27

    if-lt v0, v1, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateLayout;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    move-object/from16 v26, v0

    if-eqz v26, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateLayout;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-boolean v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mIsKorMode:Z

    move/from16 v26, v0

    if-nez v26, :cond_3b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateLayout;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode()Z

    move-result v26

    if-nez v26, :cond_3b

    move/from16 v0, p1

    move/from16 v1, v23

    if-eq v0, v1, :cond_3b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateLayout;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Lcom/ime/framework/common/InputManager;->isChineseLanguageMode()Z

    move-result v26

    if-nez v26, :cond_3b

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->isDefaultSymbol:Z

    move/from16 v26, v0

    if-nez v26, :cond_3b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateLayout;

    move-object/from16 v26, v0

    # getter for: Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;
    invoke-static/range {v26 .. v26}, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->access$900(Lcom/ime/framework/view/candidate/AbstractCandidateLayout;)Lcom/ime/framework/engine/InputEngineManager;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Lcom/ime/framework/engine/InputEngineManager;->getCurrentEngineIndex()I

    move-result v26

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_3b

    new-instance v26, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter$3;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter$3;-><init>(Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;)V

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/ime/framework/view/candidate/CandidateTextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :cond_14
    :goto_f
    if-eqz v9, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateLayout;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Lcom/ime/framework/common/InputManager;->isMobileKeyboardUmlautCandidate()Z

    move-result v26

    if-nez v26, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateLayout;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mXt9Version:I

    move/from16 v26, v0

    const/16 v27, 0x2

    move/from16 v0, v26

    move/from16 v1, v27

    if-lt v0, v1, :cond_3e

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->activeIndex:I

    move/from16 v26, v0

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_15

    if-nez p1, :cond_15

    const/16 v26, 0x0

    const/16 v27, 0x0

    const v28, 0x7f020332

    const/16 v29, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v26

    move/from16 v2, v27

    move/from16 v3, v28

    move/from16 v4, v29

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/ime/framework/view/candidate/CandidateTextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    const/16 v26, 0x1

    move-object/from16 v0, v24

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/ime/framework/view/candidate/CandidateTextView;->setCompoundDrawablePadding(I)V

    const-string v26, " "

    const-string v27, " "

    const/16 v28, 0x1

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    move/from16 v3, p1

    move/from16 v4, v28

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/ime/framework/view/candidate/CandidateTextView;->setText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZ)V

    :cond_15
    move-object/from16 v0, p0

    iget v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->activeIndex:I

    move/from16 v26, v0

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_16

    const/16 v26, 0x1

    move/from16 v0, p1

    move/from16 v1, v26

    if-ne v0, v1, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateLayout;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->getHighlightTextColor()I

    move-result v26

    move-object/from16 v0, v24

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/ime/framework/view/candidate/CandidateTextView;->setHighlightColor(I)V

    :cond_16
    :goto_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateLayout;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Lcom/ime/framework/common/InputManager;->isChnMode()Z

    move-result v26

    if-eqz v26, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateLayout;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Lcom/ime/framework/common/InputManager;->isChineseLanguageMode()Z

    move-result v26

    if-eqz v26, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateLayout;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Lcom/ime/framework/common/InputManager;->isTalkbackEnabled()Z

    move-result v26

    if-eqz v26, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateLayout;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Lcom/ime/framework/common/InputManager;->isTouchExplorationEnabled()Z

    move-result v26

    if-eqz v26, :cond_1

    invoke-virtual/range {v24 .. v24}, Lcom/ime/framework/view/candidate/CandidateTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateLayout;

    move-object/from16 v26, v0

    # getter for: Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mExplainer:Lcom/sec/android/inputmethod/databases/CandidateExplainer;
    invoke-static/range {v26 .. v26}, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->access$1400(Lcom/ime/framework/view/candidate/AbstractCandidateLayout;)Lcom/sec/android/inputmethod/databases/CandidateExplainer;

    move-result-object v26

    if-eqz v26, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateLayout;

    move-object/from16 v26, v0

    # getter for: Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mExplainer:Lcom/sec/android/inputmethod/databases/CandidateExplainer;
    invoke-static/range {v26 .. v26}, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->access$1400(Lcom/ime/framework/view/candidate/AbstractCandidateLayout;)Lcom/sec/android/inputmethod/databases/CandidateExplainer;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lcom/sec/android/inputmethod/databases/CandidateExplainer;->isAvailable()Z

    move-result v26

    if-eqz v26, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateLayout;

    move-object/from16 v26, v0

    # getter for: Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mExplainer:Lcom/sec/android/inputmethod/databases/CandidateExplainer;
    invoke-static/range {v26 .. v26}, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->access$1400(Lcom/ime/framework/view/candidate/AbstractCandidateLayout;)Lcom/sec/android/inputmethod/databases/CandidateExplainer;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/databases/CandidateExplainer;->getDescription(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    :cond_17
    move-object/from16 v0, v24

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/ime/framework/view/candidate/CandidateTextView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateLayout;

    move-object/from16 v26, v0

    # getter for: Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestions:Ljava/util/ArrayList;
    invoke-static/range {v26 .. v26}, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->access$1000(Lcom/ime/framework/view/candidate/AbstractCandidateLayout;)Ljava/util/ArrayList;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateLayout;

    move-object/from16 v27, v0

    # getter for: Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestions:Ljava/util/ArrayList;
    invoke-static/range {v27 .. v27}, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->access$1000(Lcom/ime/framework/view/candidate/AbstractCandidateLayout;)Ljava/util/ArrayList;

    move-result-object v27

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/lang/CharSequence;

    const/16 v28, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    move/from16 v3, p1

    move/from16 v4, v28

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/ime/framework/view/candidate/CandidateTextView;->setText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZ)V

    goto/16 :goto_2

    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateLayout;

    move-object/from16 v26, v0

    # getter for: Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mWordSequenceData:Ljava/util/ArrayList;
    invoke-static/range {v26 .. v26}, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->access$200(Lcom/ime/framework/view/candidate/AbstractCandidateLayout;)Ljava/util/ArrayList;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/Byte;

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Byte;->intValue()I

    move-result v26

    move/from16 v0, v26

    move-object/from16 v1, v24

    iput v0, v1, Lcom/ime/framework/view/candidate/CandidateTextView;->mSequenceTypeInfo:I

    goto/16 :goto_3

    :cond_1a
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, v24

    iput v0, v1, Lcom/ime/framework/view/candidate/CandidateTextView;->mSequenceTypeInfo:I

    goto/16 :goto_3

    :cond_1b
    const/4 v9, 0x0

    goto/16 :goto_4

    :cond_1c
    const/16 v26, -0x1

    move-object/from16 v0, v24

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/ime/framework/view/candidate/CandidateTextView;->setHighlightColor(I)V

    goto/16 :goto_5

    :cond_1d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->activeIndex:I

    move/from16 v26, v0

    if-nez v26, :cond_1e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateLayout;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Lcom/ime/framework/common/InputManager;->isEnableAutoCorrection()Z

    move-result v26

    if-eqz v26, :cond_1e

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->candidateStatus:I

    move/from16 v26, v0

    const/16 v27, 0x4

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_1e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateLayout;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mXt9Version:I

    move/from16 v26, v0

    const/16 v27, 0x2

    move/from16 v0, v26

    move/from16 v1, v27

    if-lt v0, v1, :cond_1e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateLayout;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Lcom/ime/framework/common/InputManager;->isChineseLanguageMode()Z

    move-result v26

    if-nez v26, :cond_1e

    const/16 v26, -0x1

    move-object/from16 v0, v24

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/ime/framework/view/candidate/CandidateTextView;->setHighlightColor(I)V

    goto/16 :goto_5

    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateLayout;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->getHighlightTextColor()I

    move-result v26

    move-object/from16 v0, v24

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/ime/framework/view/candidate/CandidateTextView;->setHighlightColor(I)V

    goto/16 :goto_5

    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateLayout;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->getBackgroundResourceId()I

    move-result v26

    move-object/from16 v0, v24

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/ime/framework/view/candidate/CandidateTextView;->setBackgroundResource(I)V

    goto/16 :goto_6

    :cond_20
    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v26

    move/from16 v2, v17

    move/from16 v3, v27

    invoke-virtual {v0, v13, v1, v2, v3}, Lcom/ime/framework/view/candidate/CandidateTextView;->setPadding(IIII)V

    goto/16 :goto_7

    :cond_21
    const/4 v11, 0x0

    goto/16 :goto_8

    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateLayout;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Lcom/ime/framework/common/InputManager;->isCurrentCarModeKnobSIP()Z

    move-result v26

    if-eqz v26, :cond_23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->maxWidthTextView:I

    move/from16 v26, v0

    move-object/from16 v0, v24

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/ime/framework/view/candidate/CandidateTextView;->setWidth(I)V

    goto/16 :goto_9

    :cond_23
    invoke-virtual/range {v24 .. v24}, Lcom/ime/framework/view/candidate/CandidateTextView;->getCandidateTextViewWidth()F

    move-result v26

    move/from16 v0, v26

    float-to-int v0, v0

    move/from16 v26, v0

    move-object/from16 v0, v24

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/ime/framework/view/candidate/CandidateTextView;->setWidth(I)V

    goto/16 :goto_9

    :cond_24
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->isShownExpandView:Z

    move/from16 v26, v0

    if-eqz v26, :cond_2f

    invoke-virtual/range {v24 .. v24}, Lcom/ime/framework/view/candidate/CandidateTextView;->getCandidateTextViewWidth()F

    move-result v26

    move/from16 v0, v26

    float-to-int v6, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->candidateStatus:I

    move/from16 v26, v0

    const/16 v27, 0x4

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_28

    const/16 v26, 0x1

    const/16 v27, 0x1

    move-object/from16 v0, v24

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/ime/framework/view/candidate/CandidateTextView;->setAttribute(ZZ)V

    const/16 v26, 0x1

    move-object/from16 v0, v24

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/ime/framework/view/candidate/CandidateTextView;->setSingleLine(Z)V

    sget-object v26, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/ime/framework/view/candidate/CandidateTextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    new-instance v16, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v26, -0x2

    const/16 v27, -0x1

    move-object/from16 v0, v16

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v26, 0xd

    move-object/from16 v0, v16

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    move-object/from16 v0, v24

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/ime/framework/view/candidate/CandidateTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz v8, :cond_27

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->maxWidthTextView:I

    move/from16 v26, v0

    move/from16 v0, v26

    if-le v6, v0, :cond_26

    const/16 v26, 0x13

    move-object/from16 v0, v24

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/ime/framework/view/candidate/CandidateTextView;->setGravity(I)V

    :goto_11
    if-eqz v9, :cond_2b

    const/16 v26, 0x1

    move/from16 v0, p1

    move/from16 v1, v26

    if-ne v0, v1, :cond_2b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateLayout;

    move-object/from16 v26, v0

    # getter for: Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestions:Ljava/util/ArrayList;
    invoke-static/range {v26 .. v26}, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->access$1000(Lcom/ime/framework/view/candidate/AbstractCandidateLayout;)Ljava/util/ArrayList;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v26

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-le v0, v1, :cond_25

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateLayout;

    move-object/from16 v27, v0

    # getter for: Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestions:Ljava/util/ArrayList;
    invoke-static/range {v27 .. v27}, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->access$1000(Lcom/ime/framework/view/candidate/AbstractCandidateLayout;)Ljava/util/ArrayList;

    move-result-object v27

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_2b

    :cond_25
    move-object/from16 v0, p0

    iget v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->maxWidth:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->expandButtonWidth:I

    move/from16 v27, v0

    sub-int v26, v26, v27

    div-int/lit8 v14, v26, 0x3

    move v5, v6

    if-ge v6, v14, :cond_29

    move v5, v14

    :goto_12
    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Lcom/ime/framework/view/candidate/CandidateTextView;->setWidth(I)V

    goto/16 :goto_a

    :cond_26
    const/16 v26, 0x11

    move-object/from16 v0, v24

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/ime/framework/view/candidate/CandidateTextView;->setGravity(I)V

    goto :goto_11

    :cond_27
    const/16 v26, 0x13

    move-object/from16 v0, v24

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/ime/framework/view/candidate/CandidateTextView;->setGravity(I)V

    goto :goto_11

    :cond_28
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateLayout;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->getPreviewSuggestionTypeface()Landroid/graphics/Typeface;

    move-result-object v26

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/ime/framework/view/candidate/CandidateTextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_11

    :cond_29
    if-le v6, v14, :cond_2a

    move v5, v14

    :goto_13
    goto :goto_12

    :cond_2a
    move v5, v6

    goto :goto_13

    :cond_2b
    if-eqz v8, :cond_2e

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->maxWidthTextView:I

    move/from16 v26, v0

    move/from16 v0, v26

    if-ge v6, v0, :cond_2c

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->maxWidthTextView:I

    move/from16 v26, v0

    move-object/from16 v0, v24

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/ime/framework/view/candidate/CandidateTextView;->setWidth(I)V

    goto/16 :goto_a

    :cond_2c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->maxWidthTextView:I

    move/from16 v26, v0

    move/from16 v0, v26

    if-lt v6, v0, :cond_2d

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Lcom/ime/framework/view/candidate/CandidateTextView;->setWidth(I)V

    goto/16 :goto_a

    :cond_2d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->maxWidth:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->expandButtonWidth:I

    move/from16 v27, v0

    sub-int v26, v26, v27

    move-object/from16 v0, v24

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/ime/framework/view/candidate/CandidateTextView;->setWidth(I)V

    goto/16 :goto_a

    :cond_2e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->maxWidth:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->expandButtonWidth:I

    move/from16 v27, v0

    sub-int v26, v26, v27

    move-object/from16 v0, v24

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/ime/framework/view/candidate/CandidateTextView;->setWidth(I)V

    goto/16 :goto_a

    :cond_2f
    move-object/from16 v0, p0

    iget v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->maxWidthTextView:I

    move/from16 v26, v0

    move-object/from16 v0, v24

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/ime/framework/view/candidate/CandidateTextView;->setWidth(I)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->maxWidthTextView:I

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    invoke-virtual/range {v24 .. v24}, Lcom/ime/framework/view/candidate/CandidateTextView;->getCandidateTextViewWidth()F

    move-result v27

    div-float v18, v26, v27

    const/high16 v26, 0x3f800000    # 1.0f

    cmpg-float v26, v18, v26

    if-gez v26, :cond_30

    :goto_14
    const/16 v26, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->fontSize:F

    move/from16 v27, v0

    mul-float v27, v27, v18

    move-object/from16 v0, v24

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/ime/framework/view/candidate/CandidateTextView;->setTextSize(IF)V

    goto/16 :goto_a

    :cond_30
    const/high16 v18, 0x3f800000    # 1.0f

    goto :goto_14

    :cond_31
    invoke-virtual/range {v24 .. v24}, Lcom/ime/framework/view/candidate/CandidateTextView;->getCandidateTextViewWidth()F

    move-result v26

    move/from16 v0, v26

    float-to-int v0, v0

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateLayout;

    move-object/from16 v27, v0

    # getter for: Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mDividerWidth:I
    invoke-static/range {v27 .. v27}, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->access$800(Lcom/ime/framework/view/candidate/AbstractCandidateLayout;)I

    move-result v27

    add-int v21, v26, v27

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->maxWidth:I

    move/from16 v26, v0

    move/from16 v0, v21

    move/from16 v1, v26

    if-ge v0, v1, :cond_e

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->maxWidth:I

    move/from16 v26, v0

    sub-int v26, v26, v21

    div-int/lit8 v13, v26, 0x2

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v26

    move/from16 v2, v17

    move/from16 v3, v27

    invoke-virtual {v0, v13, v1, v2, v3}, Lcom/ime/framework/view/candidate/CandidateTextView;->setPadding(IIII)V

    goto/16 :goto_a

    :cond_32
    const/16 v26, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/ime/framework/view/candidate/CandidateTextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto/16 :goto_b

    :cond_33
    const/4 v10, 0x0

    goto/16 :goto_c

    :cond_34
    const/4 v12, 0x0

    goto/16 :goto_d

    :cond_35
    const/16 v26, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/ime/framework/view/candidate/CandidateTextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto/16 :goto_e

    :cond_36
    move/from16 v0, p1

    move/from16 v1, v23

    if-ne v0, v1, :cond_13

    if-eqz v20, :cond_37

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v26

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_37

    const-string v26, ".,;!?\u061b\u060c\u061f"

    const/16 v27, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v27

    invoke-static/range {v27 .. v27}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v26

    if-eqz v26, :cond_37

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateLayout;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Lcom/ime/framework/common/InputManager;->getStateCandidate()I

    move-result v26

    const/16 v27, 0x2

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_38

    const/4 v12, 0x1

    :cond_37
    :goto_15
    const-string v26, "SamsungIME"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "< REMOVE TEST > isNextWordPredictionSymbol 2 : "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v12, :cond_39

    new-instance v26, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter$2;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter$2;-><init>(Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;)V

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/ime/framework/view/candidate/CandidateTextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto/16 :goto_e

    :cond_38
    const/4 v12, 0x0

    goto :goto_15

    :cond_39
    const/16 v26, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/ime/framework/view/candidate/CandidateTextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto/16 :goto_e

    :cond_3a
    const/16 v26, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/ime/framework/view/candidate/CandidateTextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto/16 :goto_e

    :cond_3b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateLayout;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Lcom/ime/framework/common/InputManager;->isChnMode()Z

    move-result v26

    if-eqz v26, :cond_3d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateLayout;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Lcom/ime/framework/common/InputManager;->isChineseLanguageMode()Z

    move-result v26

    if-eqz v26, :cond_3d

    sget-boolean v26, Lcom/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v26, :cond_3c

    const-string v26, "SamsungIME_UnifiedIME"

    const-string v27, "AbstractCandidateLayout, mXt9Version >= Constant.XT9_VERSION_INDEX_9_8"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3c
    new-instance v26, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter$4;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter$4;-><init>(Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;)V

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/ime/framework/view/candidate/CandidateTextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto/16 :goto_f

    :cond_3d
    const/16 v26, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/ime/framework/view/candidate/CandidateTextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto/16 :goto_f

    :cond_3e
    const/16 v26, 0x1

    move/from16 v0, p1

    move/from16 v1, v26

    if-ne v0, v1, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateLayout;

    move-object/from16 v26, v0

    # getter for: Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestions:Ljava/util/ArrayList;
    invoke-static/range {v26 .. v26}, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->access$1000(Lcom/ime/framework/view/candidate/AbstractCandidateLayout;)Ljava/util/ArrayList;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v26

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-le v0, v1, :cond_3f

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateLayout;

    move-object/from16 v27, v0

    # getter for: Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestions:Ljava/util/ArrayList;
    invoke-static/range {v27 .. v27}, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->access$1000(Lcom/ime/framework/view/candidate/AbstractCandidateLayout;)Ljava/util/ArrayList;

    move-result-object v27

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_16

    :cond_3f
    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const v29, 0x7f020332

    move-object/from16 v0, v24

    move/from16 v1, v26

    move/from16 v2, v27

    move/from16 v3, v28

    move/from16 v4, v29

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/ime/framework/view/candidate/CandidateTextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    const/16 v26, 0x1

    move-object/from16 v0, v24

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/ime/framework/view/candidate/CandidateTextView;->setCompoundDrawablePadding(I)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->maxWidth:I

    move/from16 v26, v0

    div-int/lit8 v14, v26, 0x3

    invoke-virtual/range {v24 .. v24}, Lcom/ime/framework/view/candidate/CandidateTextView;->getWidth()I

    move-result v26

    move/from16 v0, v26

    if-lt v0, v14, :cond_40

    move-object/from16 v0, v24

    invoke-virtual {v0, v14}, Lcom/ime/framework/view/candidate/CandidateTextView;->setWidth(I)V

    :cond_40
    const-string v26, " "

    const-string v27, " "

    const/16 v28, 0x1

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    move/from16 v3, p1

    move/from16 v4, v28

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/ime/framework/view/candidate/CandidateTextView;->setText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZ)V

    goto/16 :goto_10
.end method

.method public setSuggestions(Ljava/util/ArrayList;Z)I
    .locals 36
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;Z)I"
        }
    .end annotation

    const/4 v11, 0x0

    const/16 v28, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateLayout;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v31, v0

    invoke-interface/range {v31 .. v31}, Lcom/ime/framework/common/InputManager;->isChnMode()Z

    move-result v31

    if-eqz v31, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateLayout;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateLayout;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v32, v0

    invoke-interface/range {v32 .. v32}, Lcom/ime/framework/common/InputManager;->getWordCandidateData()Ljava/util/ArrayList;

    move-result-object v32

    # setter for: Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mWordSequenceData:Ljava/util/ArrayList;
    invoke-static/range {v31 .. v32}, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->access$202(Lcom/ime/framework/view/candidate/AbstractCandidateLayout;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    :cond_0
    const/16 v31, -0x1

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->forcedCount:I

    const/16 v31, 0x0

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->firstChildExceedsWidth:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateLayout;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v31, v0

    invoke-interface/range {v31 .. v31}, Lcom/ime/framework/common/InputManager;->isCurrentCarModeKnobSIP()Z

    move-result v31

    if-eqz v31, :cond_d

    if-eqz p1, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateLayout;

    move-object/from16 v31, v0

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v32

    add-int/lit8 v32, v32, 0x1

    move/from16 v0, v32

    new-array v0, v0, [Lcom/ime/framework/view/candidate/CandidateTextView;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v31

    iput-object v0, v1, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/ime/framework/view/candidate/CandidateTextView;

    :cond_1
    :goto_0
    if-eqz p1, :cond_2a

    sget-boolean v31, Lcom/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v31, :cond_2

    const-string v31, "SamsungIME"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "AbstractCandidateLayout-setCandidates suggestions count : "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateLayout;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v31, v0

    invoke-interface/range {v31 .. v31}, Lcom/ime/framework/common/InputManager;->getCandidateviewStatus()I

    move-result v31

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->candidateStatus:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateLayout;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->getSuggestionFontSize()F

    move-result v31

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->fontSize:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateLayout;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->getSuggestionTypeface()Landroid/graphics/Typeface;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->typeFace:Landroid/graphics/Typeface;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateLayout;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->getSuggestionHeight()I

    move-result v31

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->height:I

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateLayout;

    move-object/from16 v31, v0

    # getter for: Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mIsBackupPadding:Z
    invoke-static/range {v31 .. v31}, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->access$300(Lcom/ime/framework/view/candidate/AbstractCandidateLayout;)Z

    move-result v31

    if-nez v31, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateLayout;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateLayout;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->getPaddingLeft()I

    move-result v32

    # setter for: Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mOriginLeftPadding:I
    invoke-static/range {v31 .. v32}, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->access$402(Lcom/ime/framework/view/candidate/AbstractCandidateLayout;I)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateLayout;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateLayout;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->getPaddingRight()I

    move-result v32

    # setter for: Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mOriginRightPadding:I
    invoke-static/range {v31 .. v32}, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->access$502(Lcom/ime/framework/view/candidate/AbstractCandidateLayout;I)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateLayout;

    move-object/from16 v31, v0

    const/16 v32, 0x1

    # setter for: Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mIsBackupPadding:Z
    invoke-static/range {v31 .. v32}, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->access$302(Lcom/ime/framework/view/candidate/AbstractCandidateLayout;Z)Z

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateLayout;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v31, v0

    invoke-interface/range {v31 .. v31}, Lcom/ime/framework/common/InputManager;->isEnableOneHandKeypad()Z

    move-result v31

    if-eqz v31, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateLayout;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v31, v0

    invoke-interface/range {v31 .. v31}, Lcom/ime/framework/common/InputManager;->isOneHandKeypadRightSet()Z

    move-result v6

    if-eqz v6, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateLayout;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->getCandidateLeftRightGapForOneHand()I

    move-result v21

    :cond_4
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateLayout;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v13

    const/4 v10, 0x0

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v31

    if-gtz v31, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->candidateStatus:I

    move/from16 v31, v0

    const/16 v32, 0x4

    move/from16 v0, v31

    move/from16 v1, v32

    if-eq v0, v1, :cond_12

    :cond_5
    const/16 v31, 0x8

    move/from16 v0, v31

    if-ne v13, v0, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateLayout;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v31

    const v32, 0x7f090103

    invoke-virtual/range {v31 .. v32}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v31

    move/from16 v0, v31

    float-to-int v10, v0

    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateLayout;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v31, v0

    invoke-interface/range {v31 .. v31}, Lcom/ime/framework/common/InputManager;->isTabletMode()Z

    move-result v31

    if-eqz v31, :cond_11

    if-eqz p2, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateLayout;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    const/16 v33, 0x0

    move-object/from16 v0, v31

    move/from16 v1, v21

    move/from16 v2, v32

    move/from16 v3, v22

    move/from16 v4, v33

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->setPadding(IIII)V

    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateLayout;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->getTopPaddingSize()I

    move-result v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateLayout;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->getBottomPaddingSize()I

    move-result v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateLayout;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->getMaxWidth(Z)I

    move-result v31

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->maxWidth:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateLayout;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v31, v0

    invoke-interface/range {v31 .. v31}, Lcom/ime/framework/common/InputManager;->isTabletMode()Z

    move-result v31

    if-eqz v31, :cond_13

    if-eqz p2, :cond_13

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->maxWidth:I

    move/from16 v31, v0

    add-int v32, v21, v22

    sub-int v31, v31, v32

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->maxWidth:I

    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateLayout;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v31, v0

    invoke-interface/range {v31 .. v31}, Lcom/ime/framework/common/InputManager;->getSuggestionActiveIndex()I

    move-result v31

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->activeIndex:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateLayout;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mXt9Version:I

    move/from16 v31, v0

    const/16 v32, 0x2

    move/from16 v0, v31

    move/from16 v1, v32

    if-ge v0, v1, :cond_6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->activeIndex:I

    move/from16 v31, v0

    if-gez v31, :cond_14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->candidateStatus:I

    move/from16 v31, v0

    const/16 v32, 0x2

    move/from16 v0, v31

    move/from16 v1, v32

    if-eq v0, v1, :cond_14

    const/16 v31, 0x0

    :goto_5
    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->activeIndex:I

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateLayout;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-boolean v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mIsKorMode:Z

    move/from16 v31, v0

    if-nez v31, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateLayout;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-boolean v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mIsKorMode:Z

    move/from16 v31, v0

    if-nez v31, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateLayout;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v31, v0

    invoke-interface/range {v31 .. v31}, Lcom/ime/framework/common/InputManager;->isKoreaLanguage()Z

    move-result v31

    if-eqz v31, :cond_8

    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->candidateStatus:I

    move/from16 v31, v0

    const/16 v32, 0x2

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_8

    const/16 v31, -0x1

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->activeIndex:I

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateLayout;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    invoke-interface/range {v31 .. v32}, Lcom/ime/framework/common/InputManager;->getCandidateView(Z)Landroid/view/View;

    move-result-object v9

    if-eqz v9, :cond_15

    instance-of v0, v9, Lcom/ime/framework/view/candidate/AbstractCandidateView;

    move/from16 v31, v0

    if-eqz v31, :cond_15

    if-eqz p1, :cond_15

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v31

    const/16 v32, 0x3

    move/from16 v0, v31

    move/from16 v1, v32

    if-le v0, v1, :cond_15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->expandButtonWidth:I

    move/from16 v31, v0

    if-nez v31, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateLayout;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v31, v0

    invoke-interface/range {v31 .. v31}, Lcom/ime/framework/common/InputManager;->isMobileKeyboardUmlautCandidate()Z

    move-result v31

    if-nez v31, :cond_9

    check-cast v9, Lcom/ime/framework/view/candidate/AbstractCandidateView;

    invoke-virtual {v9}, Lcom/ime/framework/view/candidate/AbstractCandidateView;->getExpandButtonWidth()I

    move-result v31

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->expandButtonWidth:I

    :cond_9
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateLayout;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v31, v0

    invoke-interface/range {v31 .. v31}, Lcom/ime/framework/common/InputManager;->isMobileKeyboard()Z

    move-result v31

    if-eqz v31, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateLayout;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v31, v0

    invoke-interface/range {v31 .. v31}, Lcom/ime/framework/common/InputManager;->isMobileKeyboardSYMCandidate()Z

    move-result v31

    if-eqz v31, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateLayout;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v31, v0

    invoke-interface/range {v31 .. v31}, Lcom/ime/framework/common/InputManager;->isMobileKeyboard()Z

    move-result v31

    if-eqz v31, :cond_17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->maxWidth:I

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->expandButtonWidth:I

    move/from16 v32, v0

    sub-int v31, v31, v32

    div-int/lit8 v31, v31, 0x4

    :goto_7
    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->maxWidthTextView:I

    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateLayout;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->maxWidth:I

    move/from16 v32, v0

    move-object/from16 v0, v31

    move-object/from16 v1, p1

    move/from16 v2, v32

    # invokes: Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->isShownExpandView(Ljava/util/ArrayList;I)Z
    invoke-static {v0, v1, v2}, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->access$600(Lcom/ime/framework/view/candidate/AbstractCandidateLayout;Ljava/util/ArrayList;I)Z

    move-result v31

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->isShownExpandView:Z

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->candidateStatus:I

    move/from16 v31, v0

    const/16 v32, 0x2

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_1a

    const/16 v31, 0x1

    :goto_9
    move/from16 v0, v31

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->isDefaultSymbol:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateLayout;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v31, v0

    invoke-interface/range {v31 .. v31}, Lcom/ime/framework/common/InputManager;->isCurrentCarModeKnobSIP()Z

    move-result v31

    if-eqz v31, :cond_a

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->maxWidth:I

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->expandButtonWidth:I

    move/from16 v32, v0

    sub-int v31, v31, v32

    div-int/lit8 v31, v31, 0x5

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->maxWidthTextView:I

    :cond_a
    sget-boolean v31, Lcom/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v31, :cond_b

    const-string v31, "SamsungIME"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "AbstractCandidateLayout-setCandidates fontSize : "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->fontSize:F

    move/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v31, "SamsungIME"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "AbstractCandidateLayout-setCandidates typeFace : "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->typeFace:Landroid/graphics/Typeface;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v31, "SamsungIME"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "AbstractCandidateLayout-setCandidates topPadding : "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v31, "SamsungIME"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "AbstractCandidateLayout-setCandidates bottomPadding : "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v31, "SamsungIME"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "AbstractCandidateLayout-setCandidates height : "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->height:I

    move/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v31, "SamsungIME"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "AbstractCandidateLayout-setCandidates maxWidth : "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->maxWidth:I

    move/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->isDefaultSymbol:Z

    move/from16 v31, v0

    if-eqz v31, :cond_1b

    const/16 v30, 0x0

    new-instance v26, Lcom/ime/framework/view/candidate/CandidateTextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateLayout;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->getContext()Landroid/content/Context;

    move-result-object v31

    move-object/from16 v0, v26

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Lcom/ime/framework/view/candidate/CandidateTextView;-><init>(Landroid/content/Context;)V

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->getCount()I

    move-result v17

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v18

    const/4 v12, 0x0

    :goto_a
    move/from16 v0, v17

    if-ge v12, v0, :cond_1b

    move/from16 v0, v18

    if-ge v12, v0, :cond_1b

    invoke-virtual/range {v26 .. v26}, Lcom/ime/framework/view/candidate/CandidateTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v32

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Ljava/lang/CharSequence;

    invoke-interface/range {v31 .. v31}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v32

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v31

    move/from16 v0, v31

    float-to-int v0, v0

    move/from16 v24, v0

    move/from16 v0, v30

    move/from16 v1, v24

    if-ge v0, v1, :cond_c

    move/from16 v30, v24

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Ljava/lang/CharSequence;

    invoke-interface/range {v31 .. v31}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->defaultWidthSymbol:Ljava/lang/String;

    :cond_c
    add-int/lit8 v12, v12, 0x1

    goto :goto_a

    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateLayout;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v31, v0

    invoke-interface/range {v31 .. v31}, Lcom/ime/framework/common/InputManager;->getUniversalSwitchMode()Z

    move-result v31

    if-eqz v31, :cond_1

    if-eqz p1, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateLayout;

    move-object/from16 v31, v0

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v32

    move/from16 v0, v32

    new-array v0, v0, [Lcom/ime/framework/view/candidate/CandidateTextView;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v31

    iput-object v0, v1, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionViews:[Lcom/ime/framework/view/candidate/CandidateTextView;

    goto/16 :goto_0

    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateLayout;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->getCandidateLeftRightGapForOneHand()I

    move-result v22

    goto/16 :goto_1

    :cond_f
    const/16 v31, 0x7

    move/from16 v0, v31

    if-ne v13, v0, :cond_10

    const/4 v10, 0x0

    goto/16 :goto_2

    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateLayout;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v31

    const v32, 0x7f090102

    invoke-virtual/range {v31 .. v32}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v31

    move/from16 v0, v31

    float-to-int v10, v0

    goto/16 :goto_2

    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateLayout;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateLayout;

    move-object/from16 v32, v0

    # getter for: Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mOriginLeftPadding:I
    invoke-static/range {v32 .. v32}, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->access$400(Lcom/ime/framework/view/candidate/AbstractCandidateLayout;)I

    move-result v32

    const/16 v33, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateLayout;

    move-object/from16 v34, v0

    # getter for: Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mOriginRightPadding:I
    invoke-static/range {v34 .. v34}, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->access$500(Lcom/ime/framework/view/candidate/AbstractCandidateLayout;)I

    move-result v34

    const/16 v35, 0x0

    invoke-virtual/range {v31 .. v35}, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->setPadding(IIII)V

    goto/16 :goto_3

    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateLayout;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateLayout;

    move-object/from16 v32, v0

    # getter for: Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mOriginLeftPadding:I
    invoke-static/range {v32 .. v32}, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->access$400(Lcom/ime/framework/view/candidate/AbstractCandidateLayout;)I

    move-result v32

    const/16 v33, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateLayout;

    move-object/from16 v34, v0

    # getter for: Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mOriginRightPadding:I
    invoke-static/range {v34 .. v34}, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->access$500(Lcom/ime/framework/view/candidate/AbstractCandidateLayout;)I

    move-result v34

    const/16 v35, 0x0

    invoke-virtual/range {v31 .. v35}, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->setPadding(IIII)V

    goto/16 :goto_3

    :cond_13
    move-object/from16 v0, p0

    iget v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->maxWidth:I

    move/from16 v31, v0

    add-int v32, v21, v22

    add-int v32, v32, v10

    sub-int v31, v31, v32

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->maxWidth:I

    goto/16 :goto_4

    :cond_14
    move-object/from16 v0, p0

    iget v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->activeIndex:I

    move/from16 v31, v0

    goto/16 :goto_5

    :cond_15
    if-eqz v9, :cond_9

    instance-of v0, v9, Lcom/ime/framework/view/candidate/AbstractCandidateView;

    move/from16 v31, v0

    if-eqz v31, :cond_9

    if-eqz p1, :cond_9

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v31

    const/16 v32, 0x3

    move/from16 v0, v31

    move/from16 v1, v32

    if-gt v0, v1, :cond_9

    if-lez v10, :cond_16

    if-nez p2, :cond_16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->expandButtonWidth:I

    move/from16 v31, v0

    if-nez v31, :cond_9

    check-cast v9, Lcom/ime/framework/view/candidate/AbstractCandidateView;

    invoke-virtual {v9}, Lcom/ime/framework/view/candidate/AbstractCandidateView;->getExpandButtonWidth()I

    move-result v31

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->expandButtonWidth:I

    goto/16 :goto_6

    :cond_16
    const/16 v31, 0x0

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->expandButtonWidth:I

    goto/16 :goto_6

    :cond_17
    move-object/from16 v0, p0

    iget v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->maxWidth:I

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->expandButtonWidth:I

    move/from16 v32, v0

    sub-int v31, v31, v32

    div-int/lit8 v31, v31, 0x3

    goto/16 :goto_7

    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateLayout;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v31, v0

    invoke-interface/range {v31 .. v31}, Lcom/ime/framework/common/InputManager;->isMobileKeyboard()Z

    move-result v31

    if-eqz v31, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateLayout;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v31, v0

    invoke-interface/range {v31 .. v31}, Lcom/ime/framework/common/InputManager;->isMobileKeyboardUmlautCandidate()Z

    move-result v31

    if-eqz v31, :cond_19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->maxWidth:I

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->expandButtonWidth:I

    move/from16 v32, v0

    sub-int v31, v31, v32

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateLayout;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v32

    const v33, 0x7f09073c

    invoke-virtual/range {v32 .. v33}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v32

    const/high16 v33, 0x40000000    # 2.0f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateLayout;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v34

    const v35, 0x7f09073b

    invoke-virtual/range {v34 .. v35}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v34

    mul-float v33, v33, v34

    add-float v32, v32, v33

    sub-float v31, v31, v32

    const/high16 v32, 0x41000000    # 8.0f

    div-float v31, v31, v32

    move/from16 v0, v31

    float-to-int v0, v0

    move/from16 v31, v0

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->maxWidthTextView:I

    goto/16 :goto_8

    :cond_19
    move-object/from16 v0, p0

    iget v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->maxWidth:I

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->expandButtonWidth:I

    move/from16 v32, v0

    sub-int v31, v31, v32

    div-int/lit8 v31, v31, 0x3

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->maxWidthTextView:I

    goto/16 :goto_8

    :cond_1a
    const/16 v31, 0x0

    goto/16 :goto_9

    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateLayout;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mXt9Version:I

    move/from16 v31, v0

    const/16 v32, 0x2

    move/from16 v0, v31

    move/from16 v1, v32

    if-lt v0, v1, :cond_1c

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->getCount()I

    move-result v31

    if-lez v31, :cond_1c

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v31

    if-lez v31, :cond_1c

    const-string v31, ""

    const/16 v32, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_1c

    const/16 v31, -0x1

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->activeIndex:I

    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateLayout;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v31, v0

    invoke-interface/range {v31 .. v31}, Lcom/ime/framework/common/InputManager;->isUseBstHWRPanel()Z

    move-result v31

    if-eqz v31, :cond_1f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateLayout;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode()Z

    move-result v31

    if-eqz v31, :cond_1f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateLayout;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v31, v0

    invoke-interface/range {v31 .. v31}, Lcom/ime/framework/common/InputManager;->isBstHwrCandidates()Z

    move-result v31

    if-eqz v31, :cond_1f

    const/4 v14, 0x1

    :goto_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateLayout;

    move-object/from16 v31, v0

    # getter for: Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mCachedTextView:Lcom/ime/framework/view/candidate/CandidateTextView;
    invoke-static/range {v31 .. v31}, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->access$700(Lcom/ime/framework/view/candidate/AbstractCandidateLayout;)Lcom/ime/framework/view/candidate/CandidateTextView;

    move-result-object v31

    if-eqz v31, :cond_1d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateLayout;

    move-object/from16 v31, v0

    # getter for: Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mCachedTextView:Lcom/ime/framework/view/candidate/CandidateTextView;
    invoke-static/range {v31 .. v31}, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->access$700(Lcom/ime/framework/view/candidate/AbstractCandidateLayout;)Lcom/ime/framework/view/candidate/CandidateTextView;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Lcom/ime/framework/view/candidate/CandidateTextView;->clearPhoneticSpellings()V

    :cond_1d
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v18

    const/4 v11, 0x0

    :goto_c
    move/from16 v0, v18

    if-ge v11, v0, :cond_2a

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->maxWidth:I

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->expandButtonWidth:I

    move/from16 v32, v0

    sub-int v31, v31, v32

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    cmpg-float v31, v28, v31

    if-gez v31, :cond_2a

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v31

    if-eqz v31, :cond_1e

    const-string v31, ""

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_20

    :cond_1e
    :goto_d
    add-int/lit8 v11, v11, 0x1

    goto :goto_c

    :cond_1f
    const/4 v14, 0x0

    goto :goto_b

    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateLayout;

    move-object/from16 v31, v0

    # getter for: Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mDividerWidth:I
    invoke-static/range {v31 .. v31}, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->access$800(Lcom/ime/framework/view/candidate/AbstractCandidateLayout;)I

    move-result v31

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    add-float v28, v28, v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateLayout;

    move-object/from16 v31, v0

    # getter for: Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mCachedTextView:Lcom/ime/framework/view/candidate/CandidateTextView;
    invoke-static/range {v31 .. v31}, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->access$700(Lcom/ime/framework/view/candidate/AbstractCandidateLayout;)Lcom/ime/framework/view/candidate/CandidateTextView;

    move-result-object v31

    const/16 v32, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->fontSize:F

    move/from16 v33, v0

    invoke-virtual/range {v31 .. v33}, Lcom/ime/framework/view/candidate/CandidateTextView;->setTextSize(IF)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateLayout;

    move-object/from16 v31, v0

    # getter for: Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mCachedTextView:Lcom/ime/framework/view/candidate/CandidateTextView;
    invoke-static/range {v31 .. v31}, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->access$700(Lcom/ime/framework/view/candidate/AbstractCandidateLayout;)Lcom/ime/framework/view/candidate/CandidateTextView;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->typeFace:Landroid/graphics/Typeface;

    move-object/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Lcom/ime/framework/view/candidate/CandidateTextView;->setTypeface(Landroid/graphics/Typeface;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateLayout;

    move-object/from16 v31, v0

    # getter for: Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mCachedTextView:Lcom/ime/framework/view/candidate/CandidateTextView;
    invoke-static/range {v31 .. v31}, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->access$700(Lcom/ime/framework/view/candidate/AbstractCandidateLayout;)Lcom/ime/framework/view/candidate/CandidateTextView;

    move-result-object v31

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->height:I

    move/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Lcom/ime/framework/view/candidate/CandidateTextView;->setHeight(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateLayout;

    move-object/from16 v31, v0

    # getter for: Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mCachedTextView:Lcom/ime/framework/view/candidate/CandidateTextView;
    invoke-static/range {v31 .. v31}, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->access$700(Lcom/ime/framework/view/candidate/AbstractCandidateLayout;)Lcom/ime/framework/view/candidate/CandidateTextView;

    move-result-object v31

    const/16 v32, 0x0

    invoke-virtual/range {v31 .. v32}, Lcom/ime/framework/view/candidate/CandidateTextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateLayout;

    move-object/from16 v31, v0

    # getter for: Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mCachedTextView:Lcom/ime/framework/view/candidate/CandidateTextView;
    invoke-static/range {v31 .. v31}, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->access$700(Lcom/ime/framework/view/candidate/AbstractCandidateLayout;)Lcom/ime/framework/view/candidate/CandidateTextView;

    move-result-object v31

    const/16 v32, 0x0

    invoke-virtual/range {v31 .. v32}, Lcom/ime/framework/view/candidate/CandidateTextView;->setSingleLine(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateLayout;

    move-object/from16 v31, v0

    # getter for: Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mCachedTextView:Lcom/ime/framework/view/candidate/CandidateTextView;
    invoke-static/range {v31 .. v31}, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->access$700(Lcom/ime/framework/view/candidate/AbstractCandidateLayout;)Lcom/ime/framework/view/candidate/CandidateTextView;

    move-result-object v31

    const/16 v32, 0x0

    const/16 v33, 0x0

    invoke-virtual/range {v31 .. v33}, Lcom/ime/framework/view/candidate/CandidateTextView;->setAttribute(ZZ)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateLayout;

    move-object/from16 v31, v0

    # getter for: Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mCachedTextView:Lcom/ime/framework/view/candidate/CandidateTextView;
    invoke-static/range {v31 .. v31}, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->access$700(Lcom/ime/framework/view/candidate/AbstractCandidateLayout;)Lcom/ime/framework/view/candidate/CandidateTextView;

    move-result-object v33

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Ljava/lang/CharSequence;

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Ljava/lang/CharSequence;

    const/16 v34, 0x0

    move-object/from16 v0, v33

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    move/from16 v3, v34

    invoke-virtual {v0, v1, v2, v11, v3}, Lcom/ime/framework/view/candidate/CandidateTextView;->setText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZ)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateLayout;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v31, v0

    invoke-interface/range {v31 .. v31}, Lcom/ime/framework/common/InputManager;->isChnMode()Z

    move-result v31

    if-eqz v31, :cond_21

    if-eqz v14, :cond_21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateLayout;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v31, v0

    invoke-interface/range {v31 .. v31}, Lcom/ime/framework/common/InputManager;->isSimplifiedChineseLanguageMode()Z

    move-result v31

    if-eqz v31, :cond_21

    if-nez v11, :cond_21

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/CharSequence;

    if-eqz v8, :cond_21

    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v31

    const/16 v32, 0x1

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_21

    const/16 v31, 0x0

    move/from16 v0, v31

    invoke-interface {v8, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v31

    move/from16 v0, v31

    int-to-short v0, v0

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateLayout;

    move-object/from16 v31, v0

    # getter for: Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mCachedTextView:Lcom/ime/framework/view/candidate/CandidateTextView;
    invoke-static/range {v31 .. v31}, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->access$700(Lcom/ime/framework/view/candidate/AbstractCandidateLayout;)Lcom/ime/framework/view/candidate/CandidateTextView;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateLayout;

    move-object/from16 v32, v0

    # getter for: Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;
    invoke-static/range {v32 .. v32}, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->access$900(Lcom/ime/framework/view/candidate/AbstractCandidateLayout;)Lcom/ime/framework/engine/InputEngineManager;

    move-result-object v32

    move-object/from16 v0, v32

    move/from16 v1, v29

    invoke-interface {v0, v1}, Lcom/ime/framework/engine/InputEngineManager;->getPhoneticSpellings(S)Ljava/util/List;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Lcom/ime/framework/view/candidate/CandidateTextView;->setPhoneticSpellings(Ljava/util/List;)V

    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateLayout;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->getLeftPaddingSize()I

    move-result v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateLayout;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->getRightPaddingSize()I

    move-result v23

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->isDefaultSymbol:Z

    move/from16 v31, v0

    if-eqz v31, :cond_25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->defaultWidthSymbol:Ljava/lang/String;

    move-object/from16 v31, v0

    if-eqz v31, :cond_25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateLayout;

    move-object/from16 v31, v0

    # getter for: Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mCachedTextView:Lcom/ime/framework/view/candidate/CandidateTextView;
    invoke-static/range {v31 .. v31}, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->access$700(Lcom/ime/framework/view/candidate/AbstractCandidateLayout;)Lcom/ime/framework/view/candidate/CandidateTextView;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Lcom/ime/framework/view/candidate/CandidateTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->defaultWidthSymbol:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateLayout;

    move-object/from16 v32, v0

    # getter for: Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mCachedTextView:Lcom/ime/framework/view/candidate/CandidateTextView;
    invoke-static/range {v32 .. v32}, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->access$700(Lcom/ime/framework/view/candidate/AbstractCandidateLayout;)Lcom/ime/framework/view/candidate/CandidateTextView;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Lcom/ime/framework/view/candidate/CandidateTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateLayout;

    move-object/from16 v33, v0

    # getter for: Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mCachedTextView:Lcom/ime/framework/view/candidate/CandidateTextView;
    invoke-static/range {v33 .. v33}, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->access$700(Lcom/ime/framework/view/candidate/AbstractCandidateLayout;)Lcom/ime/framework/view/candidate/CandidateTextView;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Lcom/ime/framework/view/candidate/CandidateTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v33

    invoke-interface/range {v33 .. v33}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v32

    sub-float v31, v31, v32

    const/high16 v32, 0x40000000    # 2.0f

    div-float v31, v31, v32

    move/from16 v0, v31

    float-to-int v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateLayout;

    move-object/from16 v31, v0

    # getter for: Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mCachedTextView:Lcom/ime/framework/view/candidate/CandidateTextView;
    invoke-static/range {v31 .. v31}, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->access$700(Lcom/ime/framework/view/candidate/AbstractCandidateLayout;)Lcom/ime/framework/view/candidate/CandidateTextView;

    move-result-object v31

    add-int v32, v16, v20

    const/16 v33, 0x0

    add-int v34, v23, v20

    const/16 v35, 0x0

    invoke-virtual/range {v31 .. v35}, Lcom/ime/framework/view/candidate/CandidateTextView;->setPadding(IIII)V

    :goto_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateLayout;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v31, v0

    invoke-interface/range {v31 .. v31}, Lcom/ime/framework/common/InputManager;->isChineseLanguageMode()Z

    move-result v31

    if-nez v31, :cond_22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateLayout;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v31, v0

    invoke-interface/range {v31 .. v31}, Lcom/ime/framework/common/InputManager;->isJapaneseLanguageMode()Z

    move-result v31

    if-eqz v31, :cond_26

    :cond_22
    const/4 v15, 0x1

    :goto_f
    move-object/from16 v0, p0

    iget v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->candidateStatus:I

    move/from16 v31, v0

    const/16 v32, 0x3

    move/from16 v0, v31

    move/from16 v1, v32

    if-eq v0, v1, :cond_32

    if-nez v15, :cond_23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateLayout;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v31, v0

    invoke-interface/range {v31 .. v31}, Lcom/ime/framework/common/InputManager;->getHanjaStatus()Z

    move-result v31

    if-eqz v31, :cond_2d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateLayout;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v31, v0

    invoke-interface/range {v31 .. v31}, Lcom/ime/framework/common/InputManager;->isCandidateExpanded()Z

    move-result v31

    if-nez v31, :cond_2d

    :cond_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateLayout;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v31, v0

    invoke-interface/range {v31 .. v31}, Lcom/ime/framework/common/InputManager;->getHanjaStatus()Z

    move-result v31

    if-eqz v31, :cond_24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateLayout;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v31, v0

    invoke-interface/range {v31 .. v31}, Lcom/ime/framework/common/InputManager;->isCandidateExpanded()Z

    move-result v31

    if-nez v31, :cond_24

    if-eqz p1, :cond_24

    if-lez v18, :cond_24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateLayout;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v31, v0

    invoke-interface/range {v31 .. v31}, Lcom/ime/framework/common/InputManager;->getIsFinishingHanjaShowing()Z

    move-result v31

    if-nez v31, :cond_24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateLayout;

    move-object/from16 v31, v0

    # getter for: Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mCachedTextView:Lcom/ime/framework/view/candidate/CandidateTextView;
    invoke-static/range {v31 .. v31}, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->access$700(Lcom/ime/framework/view/candidate/AbstractCandidateLayout;)Lcom/ime/framework/view/candidate/CandidateTextView;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Lcom/ime/framework/view/candidate/CandidateTextView;->getCandidateTextViewWidth()F

    move-result v31

    move/from16 v0, v31

    float-to-int v0, v0

    move/from16 v31, v0

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->maxWidthTextView:I

    :cond_24
    const/16 v31, 0x1

    move/from16 v0, v18

    move/from16 v1, v31

    if-ne v0, v1, :cond_27

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->maxWidth:I

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->expandButtonWidth:I

    move/from16 v32, v0

    sub-int v31, v31, v32

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    add-float v28, v28, v31

    :goto_10
    move-object/from16 v0, p0

    iget v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->maxWidth:I

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->expandButtonWidth:I

    move/from16 v32, v0

    sub-int v31, v31, v32

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    cmpl-float v31, v28, v31

    if-lez v31, :cond_1e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateLayout;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v31, v0

    invoke-interface/range {v31 .. v31}, Lcom/ime/framework/common/InputManager;->getHanjaStatus()Z

    move-result v31

    if-nez v31, :cond_1e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateLayout;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v31, v0

    invoke-interface/range {v31 .. v31}, Lcom/ime/framework/common/InputManager;->isCurrentCarModeKnobSIP()Z

    move-result v31

    if-nez v31, :cond_1e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateLayout;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v31, v0

    invoke-interface/range {v31 .. v31}, Lcom/ime/framework/common/InputManager;->isChnMode()Z

    move-result v31

    if-nez v31, :cond_1e

    if-nez v11, :cond_29

    const/16 v31, 0x1

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->forcedCount:I

    const/16 v31, 0x1

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->firstChildExceedsWidth:Z

    goto/16 :goto_d

    :cond_25
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateLayout;

    move-object/from16 v31, v0

    # getter for: Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mCachedTextView:Lcom/ime/framework/view/candidate/CandidateTextView;
    invoke-static/range {v31 .. v31}, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->access$700(Lcom/ime/framework/view/candidate/AbstractCandidateLayout;)Lcom/ime/framework/view/candidate/CandidateTextView;

    move-result-object v31

    const/16 v32, 0x0

    const/16 v33, 0x0

    move-object/from16 v0, v31

    move/from16 v1, v16

    move/from16 v2, v32

    move/from16 v3, v23

    move/from16 v4, v33

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/ime/framework/view/candidate/CandidateTextView;->setPadding(IIII)V

    goto/16 :goto_e

    :cond_26
    const/4 v15, 0x0

    goto/16 :goto_f

    :cond_27
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateLayout;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v31, v0

    invoke-interface/range {v31 .. v31}, Lcom/ime/framework/common/InputManager;->isCurrentCarModeKnobSIP()Z

    move-result v31

    if-eqz v31, :cond_28

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->maxWidthTextView:I

    move/from16 v31, v0

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    add-float v28, v28, v31

    goto/16 :goto_10

    :cond_28
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateLayout;

    move-object/from16 v31, v0

    # getter for: Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mCachedTextView:Lcom/ime/framework/view/candidate/CandidateTextView;
    invoke-static/range {v31 .. v31}, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->access$700(Lcom/ime/framework/view/candidate/AbstractCandidateLayout;)Lcom/ime/framework/view/candidate/CandidateTextView;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Lcom/ime/framework/view/candidate/CandidateTextView;->getCandidateTextViewWidth()F

    move-result v31

    add-float v28, v28, v31

    goto/16 :goto_10

    :cond_29
    move-object/from16 v0, p0

    iput v11, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->forcedCount:I

    :cond_2a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateLayout;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v31, v0

    invoke-interface/range {v31 .. v31}, Lcom/ime/framework/common/InputManager;->isCurrentCarModeKnobSIP()Z

    move-result v31

    if-eqz v31, :cond_35

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->forcedCount:I

    move/from16 v31, v0

    const/16 v32, 0x1

    move/from16 v0, v31

    move/from16 v1, v32

    if-eq v0, v1, :cond_35

    if-eqz p1, :cond_35

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v31

    const/16 v32, 0x1

    move/from16 v0, v31

    move/from16 v1, v32

    if-eq v0, v1, :cond_35

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateLayout;

    move-object/from16 v31, v0

    const/16 v32, 0x1

    move/from16 v0, v32

    move-object/from16 v1, v31

    iput-boolean v0, v1, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mIsLastItemFooter:Z

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->forcedCount:I

    move/from16 v31, v0

    if-gez v31, :cond_34

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v31

    add-int/lit8 v31, v31, 0x1

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->forcedCount:I

    :goto_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateLayout;

    move-object/from16 v31, v0

    # getter for: Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestions:Ljava/util/ArrayList;
    invoke-static/range {v31 .. v31}, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->access$1000(Lcom/ime/framework/view/candidate/AbstractCandidateLayout;)Ljava/util/ArrayList;

    move-result-object v31

    if-nez v31, :cond_36

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateLayout;

    move-object/from16 v31, v0

    new-instance v32, Ljava/util/ArrayList;

    invoke-direct/range {v32 .. v32}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestions:Ljava/util/ArrayList;
    invoke-static/range {v31 .. v32}, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->access$1002(Lcom/ime/framework/view/candidate/AbstractCandidateLayout;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    :goto_12
    if-eqz p1, :cond_2b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateLayout;

    move-object/from16 v31, v0

    # getter for: Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestions:Ljava/util/ArrayList;
    invoke-static/range {v31 .. v31}, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->access$1000(Lcom/ime/framework/view/candidate/AbstractCandidateLayout;)Ljava/util/ArrayList;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_2b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateLayout;

    move-object/from16 v31, v0

    # getter for: Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestionsAdapter:Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;
    invoke-static/range {v31 .. v31}, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->access$1100(Lcom/ime/framework/view/candidate/AbstractCandidateLayout;)Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->notifyDataSetChanged()V

    sget-boolean v31, Lcom/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v31, :cond_2c

    const-string v31, "SamsungIME"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "AbstractCandidateLayout-setCandidates finished : "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2c
    return v11

    :cond_2d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateLayout;

    move-object/from16 v31, v0

    # getter for: Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mCachedTextView:Lcom/ime/framework/view/candidate/CandidateTextView;
    invoke-static/range {v31 .. v31}, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->access$700(Lcom/ime/framework/view/candidate/AbstractCandidateLayout;)Lcom/ime/framework/view/candidate/CandidateTextView;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Lcom/ime/framework/view/candidate/CandidateTextView;->getCandidateTextViewWidth()F

    move-result v25

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->maxWidth:I

    move/from16 v31, v0

    div-int/lit8 v19, v31, 0x3

    invoke-direct/range {p0 .. p0}, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->isApplyAutoCorrectionDA()Z

    move-result v31

    if-eqz v31, :cond_2f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateLayout;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v31, v0

    invoke-interface/range {v31 .. v31}, Lcom/ime/framework/common/InputManager;->isCurrentCarModeKnobSIP()Z

    move-result v31

    if-nez v31, :cond_2f

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->isEmpty()Z

    move-result v31

    if-nez v31, :cond_2f

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->hasKeyAT()Z

    move-result v31

    if-nez v31, :cond_2f

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->hasWWWdot()Z

    move-result v31

    if-nez v31, :cond_2f

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->hasKeydot()Z

    move-result v31

    if-nez v31, :cond_2f

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    const/16 v32, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-nez v31, :cond_2f

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v31, v0

    cmpl-float v31, v25, v31

    if-lez v31, :cond_2f

    move-object/from16 v0, p0

    iget v5, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->maxWidthTextView:I

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v31, v0

    cmpl-float v31, v25, v31

    if-ltz v31, :cond_2e

    move/from16 v5, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateLayout;

    move-object/from16 v31, v0

    # getter for: Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mCachedTextView:Lcom/ime/framework/view/candidate/CandidateTextView;
    invoke-static/range {v31 .. v31}, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->access$700(Lcom/ime/framework/view/candidate/AbstractCandidateLayout;)Lcom/ime/framework/view/candidate/CandidateTextView;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v5}, Lcom/ime/framework/view/candidate/CandidateTextView;->setWidth(I)V

    :cond_2e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->expandButtonWidth:I

    move/from16 v31, v0

    sub-int v31, v5, v31

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    add-float v28, v28, v31

    goto/16 :goto_d

    :cond_2f
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->isShownExpandView:Z

    move/from16 v31, v0

    if-eqz v31, :cond_31

    invoke-direct/range {p0 .. p0}, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->isApplyAutoCorrectionDA()Z

    move-result v31

    if-eqz v31, :cond_30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateLayout;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v31, v0

    invoke-interface/range {v31 .. v31}, Lcom/ime/framework/common/InputManager;->isCurrentCarModeKnobSIP()Z

    move-result v31

    if-nez v31, :cond_30

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->maxWidthTextView:I

    move/from16 v31, v0

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    add-float v28, v28, v31

    goto/16 :goto_d

    :cond_30
    move-object/from16 v0, p0

    iget v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->maxWidth:I

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->expandButtonWidth:I

    move/from16 v32, v0

    sub-int v31, v31, v32

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    add-float v28, v28, v31

    add-int/lit8 v31, v11, 0x1

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->forcedCount:I

    goto/16 :goto_d

    :cond_31
    move-object/from16 v0, p0

    iget v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->maxWidthTextView:I

    move/from16 v31, v0

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    add-float v28, v28, v31

    goto/16 :goto_d

    :cond_32
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateLayout;

    move-object/from16 v31, v0

    # getter for: Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mCachedTextView:Lcom/ime/framework/view/candidate/CandidateTextView;
    invoke-static/range {v31 .. v31}, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->access$700(Lcom/ime/framework/view/candidate/AbstractCandidateLayout;)Lcom/ime/framework/view/candidate/CandidateTextView;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Lcom/ime/framework/view/candidate/CandidateTextView;->getCandidateTextViewWidth()F

    move-result v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateLayout;

    move-object/from16 v32, v0

    # getter for: Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mDividerWidth:I
    invoke-static/range {v32 .. v32}, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->access$800(Lcom/ime/framework/view/candidate/AbstractCandidateLayout;)I

    move-result v32

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    add-float v31, v31, v32

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->maxWidth:I

    move/from16 v32, v0

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    cmpg-float v31, v31, v32

    if-gez v31, :cond_33

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->maxWidth:I

    move/from16 v31, v0

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    sub-float v31, v31, v28

    const/high16 v32, 0x40000000    # 2.0f

    div-float v31, v31, v32

    move/from16 v0, v31

    float-to-int v0, v0

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateLayout;

    move-object/from16 v31, v0

    # getter for: Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mCachedTextView:Lcom/ime/framework/view/candidate/CandidateTextView;
    invoke-static/range {v31 .. v31}, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->access$700(Lcom/ime/framework/view/candidate/AbstractCandidateLayout;)Lcom/ime/framework/view/candidate/CandidateTextView;

    move-result-object v31

    const/16 v32, 0x0

    const/16 v33, 0x0

    move-object/from16 v0, v31

    move/from16 v1, v16

    move/from16 v2, v32

    move/from16 v3, v23

    move/from16 v4, v33

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/ime/framework/view/candidate/CandidateTextView;->setPadding(IIII)V

    :cond_33
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateLayout;

    move-object/from16 v31, v0

    # getter for: Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mCachedTextView:Lcom/ime/framework/view/candidate/CandidateTextView;
    invoke-static/range {v31 .. v31}, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->access$700(Lcom/ime/framework/view/candidate/AbstractCandidateLayout;)Lcom/ime/framework/view/candidate/CandidateTextView;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Lcom/ime/framework/view/candidate/CandidateTextView;->getCandidateTextViewWidth()F

    move-result v31

    add-float v28, v28, v31

    goto/16 :goto_d

    :cond_34
    move-object/from16 v0, p0

    iget v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->forcedCount:I

    move/from16 v31, v0

    add-int/lit8 v31, v31, 0x1

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->forcedCount:I

    goto/16 :goto_11

    :cond_35
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateLayout;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    move/from16 v0, v32

    move-object/from16 v1, v31

    iput-boolean v0, v1, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mIsLastItemFooter:Z

    goto/16 :goto_11

    :cond_36
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateLayout;

    move-object/from16 v31, v0

    # getter for: Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestions:Ljava/util/ArrayList;
    invoke-static/range {v31 .. v31}, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->access$1000(Lcom/ime/framework/view/candidate/AbstractCandidateLayout;)Ljava/util/ArrayList;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_12
.end method
