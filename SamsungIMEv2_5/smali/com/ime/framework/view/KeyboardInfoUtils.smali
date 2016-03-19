.class public Lcom/ime/framework/view/KeyboardInfoUtils;
.super Ljava/lang/Object;
.source "KeyboardInfoUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ime/framework/view/KeyboardInfoUtils$SuggestionsHandler;
    }
.end annotation


# static fields
.field public static final DEFAULT_SIP_INFO:I = 0x1

.field public static final EXPANDED_CV_SIP_INFO:I = 0x2

.field public static final POPUP_SIP_INFO:I = 0x3

.field public static final SIP_CLOSED:I = 0x6

.field public static final SIP_EMOTICON_INFO:I = 0x5

.field public static final SIP_POPUP_DISMISS_DEFAULT_SIP_INFO:I = 0x4

.field private static final TAG:Ljava/lang/String; = "KeyboardInfoUtils"

.field private static mKeyboardInfoUtils:Lcom/ime/framework/view/KeyboardInfoUtils;


# instance fields
.field private final KEYCODE_NULLKEY:I

.field private final MSG_CANDIDATE_VIEW_INFO:I

.field private final MSG_EMOTICON_VIEW_INFO:I

.field private final MSG_EXPANDED_CANDIDATE_VIEW_INFO:I

.field private final SIPINFO_BROADCAST_DELAY:I

.field private final SIP_INFO_BROADCAST:Ljava/lang/String;

.field private final TAG_KEYBOARD_INFO:Ljava/lang/String;

.field private mDefaultKeyboardHeight:I

.field private mDefaultKeyboardWidth:I

.field private mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private mExpandCandidateLayout:Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;

.field private mExpandedButtonVisibility:Z

.field private mInputManager:Lcom/ime/framework/common/InputManager;

.field private mSIPPopUpKeyboardView:Lcom/ime/framework/view/AbstractKeyboardView;

.field private mSIPPopUpKeyboardViewX:I

.field private mSIPPopUpKeyboardViewY:I

.field private mScreenHeight:I

.field private mScreenWidth:I

.field private mSuggestionsHandler:Lcom/ime/framework/view/KeyboardInfoUtils$SuggestionsHandler;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "com.samsung.android.universalswitch.SipInformation"

    iput-object v0, p0, Lcom/ime/framework/view/KeyboardInfoUtils;->SIP_INFO_BROADCAST:Ljava/lang/String;

    const-string v0, "KeyBoardInfo"

    iput-object v0, p0, Lcom/ime/framework/view/KeyboardInfoUtils;->TAG_KEYBOARD_INFO:Ljava/lang/String;

    const/16 v0, -0x103

    iput v0, p0, Lcom/ime/framework/view/KeyboardInfoUtils;->KEYCODE_NULLKEY:I

    new-instance v0, Lcom/ime/framework/view/KeyboardInfoUtils$SuggestionsHandler;

    invoke-direct {v0, p0}, Lcom/ime/framework/view/KeyboardInfoUtils$SuggestionsHandler;-><init>(Lcom/ime/framework/view/KeyboardInfoUtils;)V

    iput-object v0, p0, Lcom/ime/framework/view/KeyboardInfoUtils;->mSuggestionsHandler:Lcom/ime/framework/view/KeyboardInfoUtils$SuggestionsHandler;

    const/4 v0, 0x1

    iput v0, p0, Lcom/ime/framework/view/KeyboardInfoUtils;->MSG_CANDIDATE_VIEW_INFO:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/ime/framework/view/KeyboardInfoUtils;->MSG_EXPANDED_CANDIDATE_VIEW_INFO:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/ime/framework/view/KeyboardInfoUtils;->MSG_EMOTICON_VIEW_INFO:I

    const/16 v0, 0x12c

    iput v0, p0, Lcom/ime/framework/view/KeyboardInfoUtils;->SIPINFO_BROADCAST_DELAY:I

    invoke-virtual {p0}, Lcom/ime/framework/view/KeyboardInfoUtils;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/ime/framework/view/KeyboardInfoUtils;)Lcom/ime/framework/common/InputManager;
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/view/KeyboardInfoUtils;->mInputManager:Lcom/ime/framework/common/InputManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/ime/framework/view/KeyboardInfoUtils;Lcom/samsung/android/universalswitch/SIP/KeyBoardInfo;)Lcom/samsung/android/universalswitch/SIP/KeyBoardInfo;
    .locals 1

    invoke-direct {p0, p1}, Lcom/ime/framework/view/KeyboardInfoUtils;->getCandidateViewInfo(Lcom/samsung/android/universalswitch/SIP/KeyBoardInfo;)Lcom/samsung/android/universalswitch/SIP/KeyBoardInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/ime/framework/view/KeyboardInfoUtils;)Lcom/samsung/android/universalswitch/SIP/KeyBoardInfo;
    .locals 1

    invoke-direct {p0}, Lcom/ime/framework/view/KeyboardInfoUtils;->getExpandedCandidateViewInfo()Lcom/samsung/android/universalswitch/SIP/KeyBoardInfo;

    move-result-object v0

    return-object v0
.end method

.method private getAllChildren(Landroid/view/View;)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    instance-of v5, p1, Landroid/view/ViewGroup;

    if-nez v5, :cond_0

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    return-object v4

    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v3, p1

    check-cast v3, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    if-ge v1, v5, :cond_1

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, v0}, Lcom/ime/framework/view/KeyboardInfoUtils;->getAllChildren(Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    move-object v4, v2

    goto :goto_0
.end method

.method private getCandidateViewInfo(Lcom/samsung/android/universalswitch/SIP/KeyBoardInfo;)Lcom/samsung/android/universalswitch/SIP/KeyBoardInfo;
    .locals 16

    const-string v13, "KeyboardInfoUtils"

    const-string v14, "setCandidateViewInfo start"

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ime/framework/view/KeyboardInfoUtils;->mInputManager:Lcom/ime/framework/common/InputManager;

    const/4 v14, 0x0

    invoke-interface {v13, v14}, Lcom/ime/framework/common/InputManager;->getCandidateView(Z)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/ime/implement/view/candidate/CandidateView;

    invoke-virtual {v7}, Lcom/ime/implement/view/candidate/CandidateView;->getCandidateLayout()Lcom/ime/framework/view/candidate/AbstractCandidateLayout;

    move-result-object v13

    invoke-virtual {v13}, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->getSuggestionViews()[Lcom/ime/framework/view/candidate/CandidateTextView;

    move-result-object v6

    if-eqz v6, :cond_0

    const-string v13, "KeyboardInfoUtils"

    const-string v14, "suggestions"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x0

    :goto_0
    array-length v13, v6

    if-ge v9, v13, :cond_0

    const-string v13, "KeyboardInfoUtils"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "i :"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ":"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    aget-object v15, v6, v9

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_0
    const-string v13, "KeyboardInfoUtils"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "display count:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v7}, Lcom/ime/implement/view/candidate/CandidateView;->getCandidatesDisplayedCount()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/universalswitch/SIP/KeyBoardInfo;->getCVSuggestionList()Ljava/util/ArrayList;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/ArrayList;->clear()V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ime/framework/view/KeyboardInfoUtils;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v13}, Lcom/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/ime/framework/view/KeyboardInfoUtils;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ime/framework/view/KeyboardInfoUtils;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v13, v13, Landroid/util/DisplayMetrics;->heightPixels:I

    move-object/from16 v0, p0

    iput v13, v0, Lcom/ime/framework/view/KeyboardInfoUtils;->mScreenHeight:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ime/framework/view/KeyboardInfoUtils;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v13, v13, Landroid/util/DisplayMetrics;->widthPixels:I

    move-object/from16 v0, p0

    iput v13, v0, Lcom/ime/framework/view/KeyboardInfoUtils;->mScreenWidth:I

    const-string v13, "KeyboardInfoUtils"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "ScreenHeight:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/ime/framework/view/KeyboardInfoUtils;->mScreenHeight:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/ime/framework/view/KeyboardInfoUtils;->mScreenHeight:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/ime/framework/view/KeyboardInfoUtils;->mDefaultKeyboardHeight:I

    sub-int/2addr v13, v14

    invoke-virtual {v7}, Lcom/ime/implement/view/candidate/CandidateView;->getCandidateViewHeight()I

    move-result v14

    sub-int v3, v13, v14

    const-string v13, "KeyboardInfoUtils"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "CVheight:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ime/framework/view/KeyboardInfoUtils;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v13}, Lcom/ime/framework/common/InputManager;->isChnMode()Z

    move-result v13

    if-eqz v13, :cond_4

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ime/framework/view/KeyboardInfoUtils;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v13}, Lcom/ime/framework/common/InputManager;->isToolbarVisible()Z

    move-result v13

    if-eqz v13, :cond_4

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ime/framework/view/KeyboardInfoUtils;->mInputManager:Lcom/ime/framework/common/InputManager;

    const/4 v14, 0x0

    invoke-interface {v13, v14}, Lcom/ime/framework/common/InputManager;->getCandidateView(Z)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/ime/framework/view/candidate/AbstractCandidateView;

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Lcom/ime/framework/view/candidate/AbstractCandidateView;->getToolbarContainer()Lcom/ime/framework/view/toolbar/ToolBarContainer;

    move-result-object v13

    invoke-virtual {v13}, Lcom/ime/framework/view/toolbar/ToolBarContainer;->getToolbarView()Lcom/ime/framework/view/toolbar/ToolBarView;

    move-result-object v11

    invoke-virtual {v11}, Lcom/ime/framework/view/toolbar/ToolBarView;->getChildCount()I

    move-result v10

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v10, :cond_1

    invoke-virtual {v11, v9}, Lcom/ime/framework/view/toolbar/ToolBarView;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    new-instance v4, Lcom/samsung/android/universalswitch/SIP/KeyBoardInfo$Key;

    invoke-direct {v4}, Lcom/samsung/android/universalswitch/SIP/KeyBoardInfo$Key;-><init>()V

    invoke-virtual {v12}, Landroid/view/View;->getX()F

    move-result v13

    float-to-int v13, v13

    invoke-virtual {v4, v13}, Lcom/samsung/android/universalswitch/SIP/KeyBoardInfo$Key;->setX(I)V

    invoke-virtual {v4, v3}, Lcom/samsung/android/universalswitch/SIP/KeyBoardInfo$Key;->setY(I)V

    invoke-virtual {v12}, Landroid/view/View;->getRight()I

    move-result v13

    invoke-virtual {v12}, Landroid/view/View;->getLeft()I

    move-result v14

    sub-int/2addr v13, v14

    invoke-virtual {v4, v13}, Lcom/samsung/android/universalswitch/SIP/KeyBoardInfo$Key;->setWidth(I)V

    invoke-virtual {v7}, Lcom/ime/implement/view/candidate/CandidateView;->getCandidateViewHeight()I

    move-result v13

    invoke-virtual {v4, v13}, Lcom/samsung/android/universalswitch/SIP/KeyBoardInfo$Key;->setHeight(I)V

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/universalswitch/SIP/KeyBoardInfo;->getCVSuggestionList()Ljava/util/ArrayList;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_1
    new-instance v1, Lcom/samsung/android/universalswitch/SIP/KeyBoardInfo$Key;

    invoke-direct {v1}, Lcom/samsung/android/universalswitch/SIP/KeyBoardInfo$Key;-><init>()V

    invoke-virtual {v5}, Lcom/ime/framework/view/candidate/AbstractCandidateView;->getToolbarContainer()Lcom/ime/framework/view/toolbar/ToolBarContainer;

    move-result-object v13

    invoke-virtual {v13}, Lcom/ime/framework/view/toolbar/ToolBarContainer;->getToolbarCloseButton()Landroid/widget/ImageButton;

    move-result-object v12

    if-eqz v12, :cond_2

    invoke-virtual {v12}, Landroid/view/View;->getX()F

    move-result v13

    float-to-int v13, v13

    invoke-virtual {v1, v13}, Lcom/samsung/android/universalswitch/SIP/KeyBoardInfo$Key;->setX(I)V

    invoke-virtual {v1, v3}, Lcom/samsung/android/universalswitch/SIP/KeyBoardInfo$Key;->setY(I)V

    invoke-virtual {v12}, Landroid/view/View;->getRight()I

    move-result v13

    invoke-virtual {v12}, Landroid/view/View;->getLeft()I

    move-result v14

    sub-int/2addr v13, v14

    invoke-virtual {v1, v13}, Lcom/samsung/android/universalswitch/SIP/KeyBoardInfo$Key;->setWidth(I)V

    invoke-virtual {v7}, Lcom/ime/implement/view/candidate/CandidateView;->getCandidateViewHeight()I

    move-result v13

    invoke-virtual {v1, v13}, Lcom/samsung/android/universalswitch/SIP/KeyBoardInfo$Key;->setHeight(I)V

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/universalswitch/SIP/KeyBoardInfo;->getCVSuggestionList()Ljava/util/ArrayList;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-virtual {v7}, Lcom/ime/implement/view/candidate/CandidateView;->getCandidateViewHeight()I

    move-result v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lcom/samsung/android/universalswitch/SIP/KeyBoardInfo;->setCandidateViewHeight(I)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Lcom/samsung/android/universalswitch/SIP/KeyBoardInfo;->setCandidateViewDisplayedCount(I)V

    :cond_3
    :goto_2
    return-object p1

    :cond_4
    if-eqz v6, :cond_6

    const-string v13, "KeyboardInfoUtils"

    const-string v14, "candidateTextViewList is not NULL"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x0

    :goto_3
    invoke-virtual {v7}, Lcom/ime/implement/view/candidate/CandidateView;->getCandidatesDisplayedCount()I

    move-result v13

    if-ge v9, v13, :cond_6

    array-length v13, v6

    if-ge v9, v13, :cond_6

    aget-object v12, v6, v9

    if-eqz v12, :cond_5

    new-instance v4, Lcom/samsung/android/universalswitch/SIP/KeyBoardInfo$Key;

    invoke-direct {v4}, Lcom/samsung/android/universalswitch/SIP/KeyBoardInfo$Key;-><init>()V

    invoke-virtual {v12}, Landroid/view/View;->getX()F

    move-result v13

    float-to-int v13, v13

    invoke-virtual {v4, v13}, Lcom/samsung/android/universalswitch/SIP/KeyBoardInfo$Key;->setX(I)V

    invoke-virtual {v4, v3}, Lcom/samsung/android/universalswitch/SIP/KeyBoardInfo$Key;->setY(I)V

    invoke-virtual {v12}, Landroid/view/View;->getRight()I

    move-result v13

    invoke-virtual {v12}, Landroid/view/View;->getLeft()I

    move-result v14

    sub-int/2addr v13, v14

    invoke-virtual {v4, v13}, Lcom/samsung/android/universalswitch/SIP/KeyBoardInfo$Key;->setWidth(I)V

    invoke-virtual {v7}, Lcom/ime/implement/view/candidate/CandidateView;->getCandidateViewHeight()I

    move-result v13

    invoke-virtual {v4, v13}, Lcom/samsung/android/universalswitch/SIP/KeyBoardInfo$Key;->setHeight(I)V

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/universalswitch/SIP/KeyBoardInfo;->getCVSuggestionList()Ljava/util/ArrayList;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_6
    invoke-virtual {v7}, Lcom/ime/implement/view/candidate/CandidateView;->getExpandButtonLayoutForUniversalSwitch()Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/universalswitch/SIP/KeyBoardInfo;->getCVSuggestionList()Ljava/util/ArrayList;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    invoke-virtual {v7}, Lcom/ime/implement/view/candidate/CandidateView;->getCandidatesDisplayedCount()I

    move-result v14

    if-ne v13, v14, :cond_7

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/ime/framework/view/KeyboardInfoUtils;->mExpandedButtonVisibility:Z

    if-eqz v13, :cond_7

    new-instance v1, Lcom/samsung/android/universalswitch/SIP/KeyBoardInfo$Key;

    invoke-direct {v1}, Lcom/samsung/android/universalswitch/SIP/KeyBoardInfo$Key;-><init>()V

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getX()F

    move-result v13

    float-to-int v13, v13

    invoke-virtual {v1, v13}, Lcom/samsung/android/universalswitch/SIP/KeyBoardInfo$Key;->setX(I)V

    invoke-virtual {v1, v3}, Lcom/samsung/android/universalswitch/SIP/KeyBoardInfo$Key;->setY(I)V

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getRight()I

    move-result v13

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getLeft()I

    move-result v14

    sub-int/2addr v13, v14

    invoke-virtual {v1, v13}, Lcom/samsung/android/universalswitch/SIP/KeyBoardInfo$Key;->setWidth(I)V

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getBottom()I

    move-result v13

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getTop()I

    move-result v14

    sub-int/2addr v13, v14

    invoke-virtual {v1, v13}, Lcom/samsung/android/universalswitch/SIP/KeyBoardInfo$Key;->setHeight(I)V

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/universalswitch/SIP/KeyBoardInfo;->getCVSuggestionList()Ljava/util/ArrayList;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    const-string v13, "KeyboardInfoUtils"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "candidate view suggestion list including expand button:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/universalswitch/SIP/KeyBoardInfo;->getCVSuggestionList()Ljava/util/ArrayList;

    move-result-object v15

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/universalswitch/SIP/KeyBoardInfo;->getCVSuggestionList()Ljava/util/ArrayList;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    invoke-virtual {v7}, Lcom/ime/implement/view/candidate/CandidateView;->getCandidatesDisplayedCount()I

    move-result v14

    add-int/lit8 v14, v14, 0x1

    if-ne v13, v14, :cond_8

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/universalswitch/SIP/KeyBoardInfo;->getCVSuggestionList()Ljava/util/ArrayList;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    const/4 v14, 0x1

    if-le v13, v14, :cond_8

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/universalswitch/SIP/KeyBoardInfo;->getCVSuggestionList()Ljava/util/ArrayList;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/universalswitch/SIP/KeyBoardInfo$Key;

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/universalswitch/SIP/KeyBoardInfo;->getCVSuggestionList()Ljava/util/ArrayList;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/universalswitch/SIP/KeyBoardInfo;->getCVSuggestionList()Ljava/util/ArrayList;

    move-result-object v13

    const/4 v14, 0x1

    invoke-virtual {v13, v14, v8}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_8
    const-string v13, "KeyboardInfoUtils"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Candidateview  height:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v7}, Lcom/ime/implement/view/candidate/CandidateView;->getCandidateViewHeight()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " displayCount:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v7}, Lcom/ime/implement/view/candidate/CandidateView;->getCandidatesDisplayedCount()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v7}, Lcom/ime/implement/view/candidate/CandidateView;->getCandidateViewHeight()I

    move-result v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lcom/samsung/android/universalswitch/SIP/KeyBoardInfo;->setCandidateViewHeight(I)V

    invoke-virtual {v7}, Lcom/ime/implement/view/candidate/CandidateView;->getCandidatesDisplayedCount()I

    move-result v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lcom/samsung/android/universalswitch/SIP/KeyBoardInfo;->setCandidateViewDisplayedCount(I)V

    const-string v13, "KeyboardInfoUtils"

    const-string v14, "setCandidateViewInfo end"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2
.end method

.method private getExpandedCandidateViewInfo()Lcom/samsung/android/universalswitch/SIP/KeyBoardInfo;
    .locals 15

    const-string v12, "KeyboardInfoUtils"

    const-string v13, "setExpandedCandidateViewInfo start"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v12, p0, Lcom/ime/framework/view/KeyboardInfoUtils;->mExpandCandidateLayout:Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;

    if-nez v12, :cond_0

    const/4 v3, 0x0

    :goto_0
    return-object v3

    :cond_0
    new-instance v3, Lcom/samsung/android/universalswitch/SIP/KeyBoardInfo;

    invoke-direct {v3}, Lcom/samsung/android/universalswitch/SIP/KeyBoardInfo;-><init>()V

    invoke-direct {p0, v3}, Lcom/ime/framework/view/KeyboardInfoUtils;->getCandidateViewInfo(Lcom/samsung/android/universalswitch/SIP/KeyBoardInfo;)Lcom/samsung/android/universalswitch/SIP/KeyBoardInfo;

    move-result-object v3

    iget v12, p0, Lcom/ime/framework/view/KeyboardInfoUtils;->mDefaultKeyboardHeight:I

    invoke-virtual {v3, v12}, Lcom/samsung/android/universalswitch/SIP/KeyBoardInfo;->setCurrentKeyBoardHeight(I)V

    iget v12, p0, Lcom/ime/framework/view/KeyboardInfoUtils;->mDefaultKeyboardWidth:I

    invoke-virtual {v3, v12}, Lcom/samsung/android/universalswitch/SIP/KeyBoardInfo;->setCurrentKeyBoardWidth(I)V

    iget v12, p0, Lcom/ime/framework/view/KeyboardInfoUtils;->mDefaultKeyboardHeight:I

    invoke-virtual {v3, v12}, Lcom/samsung/android/universalswitch/SIP/KeyBoardInfo;->setDefaultKeyBoardHeight(I)V

    iget v12, p0, Lcom/ime/framework/view/KeyboardInfoUtils;->mDefaultKeyboardWidth:I

    invoke-virtual {v3, v12}, Lcom/samsung/android/universalswitch/SIP/KeyBoardInfo;->setDefaultKeyBoardWidth(I)V

    const/4 v12, 0x1

    invoke-virtual {v3, v12}, Lcom/samsung/android/universalswitch/SIP/KeyBoardInfo;->setCVExpanded(Z)V

    const/4 v12, 0x0

    invoke-virtual {v3, v12}, Lcom/samsung/android/universalswitch/SIP/KeyBoardInfo;->setPopUpDismissState(Z)V

    const/4 v12, 0x0

    invoke-virtual {v3, v12}, Lcom/samsung/android/universalswitch/SIP/KeyBoardInfo;->setPopWindowShown(Z)V

    iget-object v12, p0, Lcom/ime/framework/view/KeyboardInfoUtils;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/ime/framework/common/InputManager;->isPridictionOn()Z

    move-result v12

    invoke-virtual {v3, v12}, Lcom/samsung/android/universalswitch/SIP/KeyBoardInfo;->setPrediction(Z)V

    invoke-virtual {v3}, Lcom/samsung/android/universalswitch/SIP/KeyBoardInfo;->getCVSuggestionList()Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v4

    const-string v12, "KeyboardInfoUtils"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "after getting candidate view information size:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v4, :cond_1

    const-string v12, "KeyboardInfoUtils"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "i:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " key:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v3}, Lcom/samsung/android/universalswitch/SIP/KeyBoardInfo;->getCVSuggestionList()Ljava/util/ArrayList;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    iget-object v12, p0, Lcom/ime/framework/view/KeyboardInfoUtils;->mInputManager:Lcom/ime/framework/common/InputManager;

    const/4 v13, 0x0

    invoke-interface {v12, v13}, Lcom/ime/framework/common/InputManager;->getCandidateView(Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/ime/implement/view/candidate/CandidateView;

    iget-object v12, p0, Lcom/ime/framework/view/KeyboardInfoUtils;->mExpandCandidateLayout:Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;

    invoke-virtual {v12}, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->getExpandCandidateScrollView()Landroid/widget/ScrollView;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/ime/framework/view/KeyboardInfoUtils;->getAllChildren(Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object v11

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v4, :cond_3

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/View;

    instance-of v12, v10, Lcom/ime/framework/view/candidate/CandidateTextView;

    if-eqz v12, :cond_2

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v13, "KeyboardInfoUtils"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, " values : "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getLeft()I

    move-result v12

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v14, " "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getRight()I

    move-result v12

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v14, " "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getTop()I

    move-result v12

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v14, " "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getBottom()I

    move-result v12

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v13, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v12, 0x2

    new-array v6, v12, [I

    invoke-virtual {v10, v6}, Landroid/view/View;->getLocationOnScreen([I)V

    const-string v12, "KeyboardInfoUtils"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "location of "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    check-cast v10, Lcom/ime/framework/view/candidate/CandidateTextView;

    invoke-virtual {v10}, Lcom/ime/framework/view/candidate/CandidateTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " is "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const/4 v14, 0x0

    aget v14, v6, v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ","

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const/4 v14, 0x1

    aget v14, v6, v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/samsung/android/universalswitch/SIP/KeyBoardInfo$Key;

    invoke-direct {v0}, Lcom/samsung/android/universalswitch/SIP/KeyBoardInfo$Key;-><init>()V

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    const/4 v12, 0x2

    new-array v7, v12, [I

    invoke-virtual {v5, v7}, Landroid/widget/LinearLayout;->getLocationOnScreen([I)V

    const-string v12, "KeyboardInfoUtils"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "location of parent is x:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const/4 v14, 0x0

    aget v14, v7, v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", y:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const/4 v14, 0x1

    aget v14, v7, v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v12, 0x1

    aget v12, v7, v12

    invoke-virtual {v0, v12}, Lcom/samsung/android/universalswitch/SIP/KeyBoardInfo$Key;->setY(I)V

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getX()F

    move-result v12

    float-to-int v12, v12

    invoke-virtual {v0, v12}, Lcom/samsung/android/universalswitch/SIP/KeyBoardInfo$Key;->setX(I)V

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getWidth()I

    move-result v12

    invoke-virtual {v0, v12}, Lcom/samsung/android/universalswitch/SIP/KeyBoardInfo$Key;->setWidth(I)V

    invoke-virtual {v1}, Lcom/ime/implement/view/candidate/CandidateView;->getCandidateViewHeight()I

    move-result v12

    invoke-virtual {v0, v12}, Lcom/samsung/android/universalswitch/SIP/KeyBoardInfo$Key;->setHeight(I)V

    const-string v12, "KeyboardInfoUtils"

    const-string v13, "adding expnanded CV information:"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Lcom/samsung/android/universalswitch/SIP/KeyBoardInfo;->getCVSuggestionList()Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_2

    :cond_3
    invoke-virtual {v3}, Lcom/samsung/android/universalswitch/SIP/KeyBoardInfo;->getCVSuggestionList()Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v4

    const-string v12, "KeyboardInfoUtils"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "setExpandedCandidateViewInfo  keyBoardInfo.mCVSuggestionList size:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v4, :cond_4

    const-string v12, "KeyboardInfoUtils"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "i:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " key:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v3}, Lcom/samsung/android/universalswitch/SIP/KeyBoardInfo;->getCVSuggestionList()Ljava/util/ArrayList;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_4
    const-string v12, "KeyboardInfoUtils"

    const-string v13, "setExpandedCandidateViewInfo end"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public static getInstance()Lcom/ime/framework/view/KeyboardInfoUtils;
    .locals 2

    const-string v0, "KeyboardInfoUtils"

    const-string v1, "getInstance start"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/ime/framework/view/KeyboardInfoUtils;->mKeyboardInfoUtils:Lcom/ime/framework/view/KeyboardInfoUtils;

    if-nez v0, :cond_0

    new-instance v0, Lcom/ime/framework/view/KeyboardInfoUtils;

    invoke-direct {v0}, Lcom/ime/framework/view/KeyboardInfoUtils;-><init>()V

    sput-object v0, Lcom/ime/framework/view/KeyboardInfoUtils;->mKeyboardInfoUtils:Lcom/ime/framework/view/KeyboardInfoUtils;

    :cond_0
    sget-object v0, Lcom/ime/framework/view/KeyboardInfoUtils;->mKeyboardInfoUtils:Lcom/ime/framework/view/KeyboardInfoUtils;

    return-object v0
.end method

.method private getPopUpKeyboardInfo()Lcom/samsung/android/universalswitch/SIP/KeyBoardInfo;
    .locals 12

    const/4 v8, 0x0

    const/4 v11, 0x0

    const-string v9, "KeyboardInfoUtils"

    const-string v10, "setPopUpKeyboardInfo start"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, p0, Lcom/ime/framework/view/KeyboardInfoUtils;->mSIPPopUpKeyboardView:Lcom/ime/framework/view/AbstractKeyboardView;

    if-nez v9, :cond_0

    move-object v4, v8

    :goto_0
    return-object v4

    :cond_0
    new-instance v4, Lcom/samsung/android/universalswitch/SIP/KeyBoardInfo;

    invoke-direct {v4}, Lcom/samsung/android/universalswitch/SIP/KeyBoardInfo;-><init>()V

    iget-object v9, p0, Lcom/ime/framework/view/KeyboardInfoUtils;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v9, v11}, Lcom/ime/framework/common/InputManager;->getCandidateView(Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/ime/implement/view/candidate/CandidateView;

    iget v9, p0, Lcom/ime/framework/view/KeyboardInfoUtils;->mSIPPopUpKeyboardViewX:I

    invoke-virtual {v4, v9}, Lcom/samsung/android/universalswitch/SIP/KeyBoardInfo;->setPopWindowX(I)V

    iget v9, p0, Lcom/ime/framework/view/KeyboardInfoUtils;->mSIPPopUpKeyboardViewY:I

    invoke-virtual {v4, v9}, Lcom/samsung/android/universalswitch/SIP/KeyBoardInfo;->setPopupWindowY(I)V

    const/4 v9, 0x1

    invoke-virtual {v4, v9}, Lcom/samsung/android/universalswitch/SIP/KeyBoardInfo;->setPopWindowShown(Z)V

    invoke-virtual {v4, v11}, Lcom/samsung/android/universalswitch/SIP/KeyBoardInfo;->setPopUpDismissState(Z)V

    invoke-virtual {v4, v11}, Lcom/samsung/android/universalswitch/SIP/KeyBoardInfo;->setCVExpanded(Z)V

    iget-object v9, p0, Lcom/ime/framework/view/KeyboardInfoUtils;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v9}, Lcom/ime/framework/common/InputManager;->isPridictionOn()Z

    move-result v9

    invoke-virtual {v4, v9}, Lcom/samsung/android/universalswitch/SIP/KeyBoardInfo;->setPrediction(Z)V

    invoke-virtual {v1}, Lcom/ime/implement/view/candidate/CandidateView;->getCandidateViewHeight()I

    move-result v9

    invoke-virtual {v4, v9}, Lcom/samsung/android/universalswitch/SIP/KeyBoardInfo;->setCandidateViewHeight(I)V

    iget-object v9, p0, Lcom/ime/framework/view/KeyboardInfoUtils;->mSIPPopUpKeyboardView:Lcom/ime/framework/view/AbstractKeyboardView;

    iget-object v5, v9, Lcom/ime/framework/view/AbstractKeyboardView;->mKeys:[Lcom/ime/framework/view/Keyboard$Key;

    if-nez v5, :cond_1

    move-object v4, v8

    goto :goto_0

    :cond_1
    const-string v8, "KeyboardInfoUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "popupkeys size:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    array-length v10, v5

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v5

    array-length v6, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v6, :cond_2

    aget-object v3, v0, v2

    new-instance v7, Lcom/samsung/android/universalswitch/SIP/KeyBoardInfo$Key;

    invoke-direct {v7}, Lcom/samsung/android/universalswitch/SIP/KeyBoardInfo$Key;-><init>()V

    iget v8, v3, Lcom/ime/framework/view/Keyboard$Key;->x:I

    invoke-virtual {v7, v8}, Lcom/samsung/android/universalswitch/SIP/KeyBoardInfo$Key;->setX(I)V

    iget v8, v3, Lcom/ime/framework/view/Keyboard$Key;->y:I

    invoke-virtual {v7, v8}, Lcom/samsung/android/universalswitch/SIP/KeyBoardInfo$Key;->setY(I)V

    iget v8, v3, Lcom/ime/framework/view/Keyboard$Key;->width:I

    invoke-virtual {v7, v8}, Lcom/samsung/android/universalswitch/SIP/KeyBoardInfo$Key;->setWidth(I)V

    iget v8, v3, Lcom/ime/framework/view/Keyboard$Key;->height:I

    invoke-virtual {v7, v8}, Lcom/samsung/android/universalswitch/SIP/KeyBoardInfo$Key;->setHeight(I)V

    const-string v8, "KeyboardInfoUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "popup x:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v3, Lcom/ime/framework/view/Keyboard$Key;->x:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " y:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v3, Lcom/ime/framework/view/Keyboard$Key;->y:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " width:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v3, Lcom/ime/framework/view/Keyboard$Key;->width:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " height:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v3, Lcom/ime/framework/view/Keyboard$Key;->height:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4}, Lcom/samsung/android/universalswitch/SIP/KeyBoardInfo;->getKeyList()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    const-string v8, "KeyboardInfoUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "popup height:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/ime/framework/view/KeyboardInfoUtils;->mSIPPopUpKeyboardView:Lcom/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v10}, Lcom/ime/framework/view/AbstractKeyboardView;->getKeyboard()Lcom/ime/framework/view/Keyboard;

    move-result-object v10

    invoke-virtual {v10}, Lcom/ime/framework/view/Keyboard;->getHeight()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v8, "KeyboardInfoUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "popup width:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/ime/framework/view/KeyboardInfoUtils;->mSIPPopUpKeyboardView:Lcom/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v10}, Lcom/ime/framework/view/AbstractKeyboardView;->getKeyboard()Lcom/ime/framework/view/Keyboard;

    move-result-object v10

    invoke-virtual {v10}, Lcom/ime/framework/view/Keyboard;->getMinWidth()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/ime/framework/view/KeyboardInfoUtils;->mSIPPopUpKeyboardView:Lcom/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v8}, Lcom/ime/framework/view/AbstractKeyboardView;->getKeyboard()Lcom/ime/framework/view/Keyboard;

    move-result-object v8

    invoke-virtual {v8}, Lcom/ime/framework/view/Keyboard;->getHeight()I

    move-result v8

    invoke-virtual {v4, v8}, Lcom/samsung/android/universalswitch/SIP/KeyBoardInfo;->setCurrentKeyBoardHeight(I)V

    iget-object v8, p0, Lcom/ime/framework/view/KeyboardInfoUtils;->mSIPPopUpKeyboardView:Lcom/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v8}, Lcom/ime/framework/view/AbstractKeyboardView;->getKeyboard()Lcom/ime/framework/view/Keyboard;

    move-result-object v8

    invoke-virtual {v8}, Lcom/ime/framework/view/Keyboard;->getMinWidth()I

    move-result v8

    invoke-virtual {v4, v8}, Lcom/samsung/android/universalswitch/SIP/KeyBoardInfo;->setCurrentKeyBoardWidth(I)V

    iget v8, p0, Lcom/ime/framework/view/KeyboardInfoUtils;->mDefaultKeyboardHeight:I

    invoke-virtual {v4, v8}, Lcom/samsung/android/universalswitch/SIP/KeyBoardInfo;->setDefaultKeyBoardHeight(I)V

    iget v8, p0, Lcom/ime/framework/view/KeyboardInfoUtils;->mDefaultKeyboardWidth:I

    invoke-virtual {v4, v8}, Lcom/samsung/android/universalswitch/SIP/KeyBoardInfo;->setDefaultKeyBoardWidth(I)V

    const-string v8, "KeyboardInfoUtils"

    const-string v9, "setPopUpKeyboardInfo end"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method


# virtual methods
.method public getDefaultKeyboardInfo()Lcom/samsung/android/universalswitch/SIP/KeyBoardInfo;
    .locals 21

    const-string v18, "KeyboardInfoUtils"

    const-string v19, "setDefaultKeyboardInfo start"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Lcom/samsung/android/universalswitch/SIP/KeyBoardInfo;

    invoke-direct {v3}, Lcom/samsung/android/universalswitch/SIP/KeyBoardInfo;-><init>()V

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/KeyboardInfoUtils;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/ime/framework/common/InputManager;->isEmoticonMode()Z

    move-result v18

    if-eqz v18, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/KeyboardInfoUtils;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-interface/range {v18 .. v19}, Lcom/ime/framework/common/InputManager;->getInputView(Z)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    const v18, 0x7f100051

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v10

    :goto_0
    check-cast v10, Lcom/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v10}, Lcom/ime/framework/view/AbstractKeyboardView;->getKeyboard()Lcom/ime/framework/view/Keyboard;

    move-result-object v9

    check-cast v9, Lcom/ime/framework/view/DefaultKeyboard;

    if-nez v9, :cond_1

    const/4 v3, 0x0

    :goto_1
    return-object v3

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/KeyboardInfoUtils;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-interface/range {v18 .. v19}, Lcom/ime/framework/common/InputManager;->getInputView(Z)Landroid/view/View;

    move-result-object v10

    goto :goto_0

    :cond_1
    invoke-virtual {v9}, Lcom/ime/framework/view/DefaultKeyboard;->getHeight()I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ime/framework/view/KeyboardInfoUtils;->mDefaultKeyboardHeight:I

    invoke-virtual {v9}, Lcom/ime/framework/view/DefaultKeyboard;->getMinWidth()I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ime/framework/view/KeyboardInfoUtils;->mDefaultKeyboardWidth:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ime/framework/view/KeyboardInfoUtils;->mDefaultKeyboardHeight:I

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Lcom/samsung/android/universalswitch/SIP/KeyBoardInfo;->setDefaultKeyBoardHeight(I)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ime/framework/view/KeyboardInfoUtils;->mDefaultKeyboardWidth:I

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Lcom/samsung/android/universalswitch/SIP/KeyBoardInfo;->setDefaultKeyBoardWidth(I)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ime/framework/view/KeyboardInfoUtils;->mDefaultKeyboardHeight:I

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Lcom/samsung/android/universalswitch/SIP/KeyBoardInfo;->setCurrentKeyBoardHeight(I)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ime/framework/view/KeyboardInfoUtils;->mDefaultKeyboardWidth:I

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Lcom/samsung/android/universalswitch/SIP/KeyBoardInfo;->setCurrentKeyBoardWidth(I)V

    const-string v18, "KeyboardInfoUtils"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "keyboard height:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v9}, Lcom/ime/framework/view/DefaultKeyboard;->getHeight()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " width:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v9}, Lcom/ime/framework/view/DefaultKeyboard;->getHeight()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Lcom/samsung/android/universalswitch/SIP/KeyBoardInfo;->setCVExpanded(Z)V

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Lcom/samsung/android/universalswitch/SIP/KeyBoardInfo;->setPopUpDismissState(Z)V

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Lcom/samsung/android/universalswitch/SIP/KeyBoardInfo;->setPopWindowShown(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/KeyboardInfoUtils;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/ime/framework/common/InputManager;->isPridictionOn()Z

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Lcom/samsung/android/universalswitch/SIP/KeyBoardInfo;->setPrediction(Z)V

    const-string v18, "KeyboardInfoUtils"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "predicition:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/KeyboardInfoUtils;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/ime/framework/common/InputManager;->isPridictionOn()Z

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v9}, Lcom/ime/framework/view/DefaultKeyboard;->getRows()Ljava/util/ArrayList;

    move-result-object v17

    if-nez v17, :cond_2

    const/4 v3, 0x0

    goto/16 :goto_1

    :cond_2
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v12

    const-string v18, "KeyboardInfoUtils"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "default keyboard rows size:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v12, :cond_6

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/ime/framework/view/Keyboard$Row;

    invoke-virtual {v15}, Lcom/ime/framework/view/Keyboard$Row;->getRowKeys()Ljava/util/ArrayList;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v14

    const-string v18, "KeyboardInfoUtils"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "numberOfKeys:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v18, 0x1

    move/from16 v0, v18

    if-le v14, v0, :cond_5

    new-instance v11, Lcom/samsung/android/universalswitch/SIP/KeyBoardInfo$Row;

    invoke-direct {v11}, Lcom/samsung/android/universalswitch/SIP/KeyBoardInfo$Row;-><init>()V

    const-string v18, "KeyboardInfoUtils"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, " i:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "row height:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget v0, v15, Lcom/ime/framework/view/Keyboard$Row;->defaultHeight:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " row.defaultWidth:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget v0, v15, Lcom/ime/framework/view/Keyboard$Row;->defaultWidth:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    :goto_3
    if-ge v6, v14, :cond_4

    invoke-virtual {v15}, Lcom/ime/framework/view/Keyboard$Row;->getRowKeys()Ljava/util/ArrayList;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/ime/framework/view/Keyboard$Key;

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/ime/framework/view/Keyboard$Key;->codes:[I

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aget v18, v18, v19

    const/16 v19, -0x103

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_3

    new-instance v8, Lcom/samsung/android/universalswitch/SIP/KeyBoardInfo$Key;

    invoke-direct {v8}, Lcom/samsung/android/universalswitch/SIP/KeyBoardInfo$Key;-><init>()V

    move-object/from16 v0, v16

    iget v0, v0, Lcom/ime/framework/view/Keyboard$Key;->x:I

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-virtual {v8, v0}, Lcom/samsung/android/universalswitch/SIP/KeyBoardInfo$Key;->setX(I)V

    move-object/from16 v0, v16

    iget v0, v0, Lcom/ime/framework/view/Keyboard$Key;->y:I

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-virtual {v8, v0}, Lcom/samsung/android/universalswitch/SIP/KeyBoardInfo$Key;->setY(I)V

    move-object/from16 v0, v16

    iget v0, v0, Lcom/ime/framework/view/Keyboard$Key;->width:I

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-virtual {v8, v0}, Lcom/samsung/android/universalswitch/SIP/KeyBoardInfo$Key;->setWidth(I)V

    move-object/from16 v0, v16

    iget v0, v0, Lcom/ime/framework/view/Keyboard$Key;->height:I

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-virtual {v8, v0}, Lcom/samsung/android/universalswitch/SIP/KeyBoardInfo$Key;->setHeight(I)V

    const-string v18, "KeyboardInfoUtils"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, " i:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " j:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "key height:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v16

    iget v0, v0, Lcom/ime/framework/view/Keyboard$Key;->height:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "key width :"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v16

    iget v0, v0, Lcom/ime/framework/view/Keyboard$Key;->width:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v11, Lcom/samsung/android/universalswitch/SIP/KeyBoardInfo$Row;->mKeyforRow:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_3

    :cond_4
    invoke-virtual {v3}, Lcom/samsung/android/universalswitch/SIP/KeyBoardInfo;->getRowList()Ljava/util/ArrayList;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_2

    :cond_6
    invoke-virtual {v9}, Lcom/ime/framework/view/DefaultKeyboard;->getKeys()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v12

    const/4 v5, 0x0

    :goto_4
    if-ge v5, v12, :cond_7

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/ime/framework/view/Keyboard$Key;

    new-instance v7, Lcom/samsung/android/universalswitch/SIP/KeyBoardInfo$Key;

    invoke-direct {v7}, Lcom/samsung/android/universalswitch/SIP/KeyBoardInfo$Key;-><init>()V

    iget v0, v13, Lcom/ime/framework/view/Keyboard$Key;->x:I

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-virtual {v7, v0}, Lcom/samsung/android/universalswitch/SIP/KeyBoardInfo$Key;->setX(I)V

    iget v0, v13, Lcom/ime/framework/view/Keyboard$Key;->y:I

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-virtual {v7, v0}, Lcom/samsung/android/universalswitch/SIP/KeyBoardInfo$Key;->setY(I)V

    iget v0, v13, Lcom/ime/framework/view/Keyboard$Key;->width:I

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-virtual {v7, v0}, Lcom/samsung/android/universalswitch/SIP/KeyBoardInfo$Key;->setWidth(I)V

    iget v0, v13, Lcom/ime/framework/view/Keyboard$Key;->height:I

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-virtual {v7, v0}, Lcom/samsung/android/universalswitch/SIP/KeyBoardInfo$Key;->setHeight(I)V

    invoke-virtual {v3}, Lcom/samsung/android/universalswitch/SIP/KeyBoardInfo;->getKeyList()Ljava/util/ArrayList;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_7
    const-string v18, "KeyboardInfoUtils"

    const-string v19, "setDefaultKeyboardInfo end"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method public getEmoticonInfo(Lcom/samsung/android/universalswitch/SIP/KeyBoardInfo;)Lcom/samsung/android/universalswitch/SIP/KeyBoardInfo;
    .locals 13

    const/4 v12, 0x1

    const-string v9, "KeyboardInfoUtils"

    const-string v10, "Emoticon Layout getEmoticonInfo start"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, p0, Lcom/ime/framework/view/KeyboardInfoUtils;->mInputManager:Lcom/ime/framework/common/InputManager;

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Lcom/ime/framework/common/InputManager;->getInputView(Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    const v9, 0x7f100045

    invoke-virtual {v1, v9}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;

    invoke-virtual {v5}, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;->getEmoticonListView()Landroid/widget/GridView;

    move-result-object v6

    invoke-virtual {p1, v12}, Lcom/samsung/android/universalswitch/SIP/KeyBoardInfo;->setIsEmoticonMode(Z)V

    if-eqz v6, :cond_3

    invoke-virtual {v6}, Landroid/widget/GridView;->getHeight()I

    move-result v9

    invoke-virtual {p1, v9}, Lcom/samsung/android/universalswitch/SIP/KeyBoardInfo;->setEmoticonLayoutHeight(I)V

    invoke-virtual {v6}, Landroid/widget/GridView;->getWidth()I

    move-result v9

    invoke-virtual {p1, v9}, Lcom/samsung/android/universalswitch/SIP/KeyBoardInfo;->setEmoticonLayoutWidth(I)V

    const-string v9, "KeyboardInfoUtils"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Emoticon Layout height:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v6}, Landroid/widget/GridView;->getHeight()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " width:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v6}, Landroid/widget/GridView;->getWidth()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v6}, Landroid/widget/GridView;->getCount()I

    move-result v9

    if-ge v3, v9, :cond_3

    invoke-virtual {v6, v3}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    if-eqz v7, :cond_2

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v9

    if-le v9, v12, :cond_2

    new-instance v2, Lcom/samsung/android/universalswitch/SIP/KeyBoardInfo$Row;

    invoke-direct {v2}, Lcom/samsung/android/universalswitch/SIP/KeyBoardInfo$Row;-><init>()V

    const-string v9, "KeyboardInfoUtils"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Emoticon Layout   i:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "row height:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " row.defaultWidth:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    :goto_1
    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v9

    if-ge v4, v9, :cond_1

    invoke-virtual {v7, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    if-eqz v8, :cond_0

    new-instance v0, Lcom/samsung/android/universalswitch/SIP/KeyBoardInfo$Key;

    invoke-direct {v0}, Lcom/samsung/android/universalswitch/SIP/KeyBoardInfo$Key;-><init>()V

    invoke-virtual {v8}, Landroid/widget/TextView;->getLeft()I

    move-result v9

    invoke-virtual {v0, v9}, Lcom/samsung/android/universalswitch/SIP/KeyBoardInfo$Key;->setX(I)V

    invoke-virtual {v8}, Landroid/widget/TextView;->getTop()I

    move-result v9

    invoke-virtual {v0, v9}, Lcom/samsung/android/universalswitch/SIP/KeyBoardInfo$Key;->setY(I)V

    invoke-virtual {v8}, Landroid/widget/TextView;->getWidth()I

    move-result v9

    invoke-virtual {v0, v9}, Lcom/samsung/android/universalswitch/SIP/KeyBoardInfo$Key;->setWidth(I)V

    invoke-virtual {v8}, Landroid/widget/TextView;->getHeight()I

    move-result v9

    invoke-virtual {v0, v9}, Lcom/samsung/android/universalswitch/SIP/KeyBoardInfo$Key;->setHeight(I)V

    const-string v9, "KeyboardInfoUtils"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Emoticon Layout i:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " j:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "emoticon height:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v8}, Landroid/widget/TextView;->getHeight()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "emoticon width :"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v8}, Landroid/widget/TextView;->getWidth()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " emoticon left : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v8}, Landroid/widget/TextView;->getLeft()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " emoticon right : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v8}, Landroid/widget/TextView;->getRight()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, v2, Lcom/samsung/android/universalswitch/SIP/KeyBoardInfo$Row;->mKeyforRow:Ljava/util/ArrayList;

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/universalswitch/SIP/KeyBoardInfo;->getEmoticonRowList()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_3
    const-string v9, "KeyboardInfoUtils"

    const-string v10, "Emoticon Layout getEmoticonInfo end"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1
.end method

.method init()V
    .locals 1

    invoke-static {}, Lcom/ime/framework/common/InputManagerImpl;->getInstance()Lcom/ime/framework/common/InputManager;

    move-result-object v0

    iput-object v0, p0, Lcom/ime/framework/view/KeyboardInfoUtils;->mInputManager:Lcom/ime/framework/common/InputManager;

    return-void
.end method

.method public sendSIPInformation(I)V
    .locals 12

    const-wide/16 v10, 0x12c

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    iget-object v3, p0, Lcom/ime/framework/view/KeyboardInfoUtils;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/ime/framework/common/InputManager;->isInputViewShown()Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "KeyboardInfoUtils"

    const-string v4, "returning from sendSIPInformation as SIP is not actually shown"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/ime/framework/view/KeyboardInfoUtils;->mInputManager:Lcom/ime/framework/common/InputManager;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lcom/ime/framework/common/InputManager;->getInputView(Z)Landroid/view/View;

    move-result-object v2

    const-string v3, "KeyboardInfoUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sendSIPInformation state:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  isAbstractKeyboardView : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    instance-of v5, v2, Lcom/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.samsung.android.universalswitch.SipInformation"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    instance-of v3, v2, Lcom/ime/framework/view/AbstractKeyboardView;

    if-eqz v3, :cond_7

    if-ne p1, v6, :cond_3

    iget-object v3, p0, Lcom/ime/framework/view/KeyboardInfoUtils;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/ime/framework/common/InputManager;->isPridictionOn()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "KeyboardInfoUtils"

    const-string v4, "sending message with delay for CV info"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/ime/framework/view/KeyboardInfoUtils;->mSuggestionsHandler:Lcom/ime/framework/view/KeyboardInfoUtils$SuggestionsHandler;

    invoke-virtual {v3, v6}, Lcom/ime/framework/view/KeyboardInfoUtils$SuggestionsHandler;->removeMessages(I)V

    iget-object v3, p0, Lcom/ime/framework/view/KeyboardInfoUtils;->mSuggestionsHandler:Lcom/ime/framework/view/KeyboardInfoUtils$SuggestionsHandler;

    invoke-virtual {v3, v6, v10, v11}, Lcom/ime/framework/view/KeyboardInfoUtils$SuggestionsHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/ime/framework/view/KeyboardInfoUtils;->getDefaultKeyboardInfo()Lcom/samsung/android/universalswitch/SIP/KeyBoardInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v3, "KeyBoardInfo"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v3, "KeyboardInfoUtils"

    const-string v4, "sending default keyboard info, preditive text is off"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/ime/framework/view/KeyboardInfoUtils;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    :cond_3
    if-ne p1, v8, :cond_4

    invoke-direct {p0}, Lcom/ime/framework/view/KeyboardInfoUtils;->getPopUpKeyboardInfo()Lcom/samsung/android/universalswitch/SIP/KeyBoardInfo;

    move-result-object v0

    const-string v3, "KeyBoardInfo"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v3, "KeyboardInfoUtils"

    const-string v4, "sending SIP popup keyboard info"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/ime/framework/view/KeyboardInfoUtils;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_4
    if-ne p1, v7, :cond_5

    const-string v3, "KeyboardInfoUtils"

    const-string v4, "sending message with delay for expanded CV info"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/ime/framework/view/KeyboardInfoUtils;->mSuggestionsHandler:Lcom/ime/framework/view/KeyboardInfoUtils$SuggestionsHandler;

    invoke-virtual {v3, v7}, Lcom/ime/framework/view/KeyboardInfoUtils$SuggestionsHandler;->removeMessages(I)V

    iget-object v3, p0, Lcom/ime/framework/view/KeyboardInfoUtils;->mSuggestionsHandler:Lcom/ime/framework/view/KeyboardInfoUtils$SuggestionsHandler;

    invoke-virtual {v3, v7, v10, v11}, Lcom/ime/framework/view/KeyboardInfoUtils$SuggestionsHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    :cond_5
    const/4 v3, 0x4

    if-ne p1, v3, :cond_6

    invoke-virtual {p0}, Lcom/ime/framework/view/KeyboardInfoUtils;->getDefaultKeyboardInfo()Lcom/samsung/android/universalswitch/SIP/KeyBoardInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/ime/framework/view/KeyboardInfoUtils;->getCandidateViewInfo(Lcom/samsung/android/universalswitch/SIP/KeyBoardInfo;)Lcom/samsung/android/universalswitch/SIP/KeyBoardInfo;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/samsung/android/universalswitch/SIP/KeyBoardInfo;->setPopUpDismissState(Z)V

    const-string v3, "KeyBoardInfo"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v3, "KeyboardInfoUtils"

    const-string v4, "sending default keyboard info popup dismiss"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/ime/framework/view/KeyboardInfoUtils;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_6
    const/4 v3, 0x6

    if-ne p1, v3, :cond_0

    const/4 v0, 0x0

    const-string v3, "KeyBoardInfo"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v3, "KeyboardInfoUtils"

    const-string v4, "sending null keyboardInfo as SIP is closed"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/ime/framework/view/KeyboardInfoUtils;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_7
    const/4 v3, 0x5

    if-ne p1, v3, :cond_0

    iget-object v3, p0, Lcom/ime/framework/view/KeyboardInfoUtils;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/ime/framework/common/InputManager;->isEmoticonMode()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/ime/framework/view/KeyboardInfoUtils;->mSuggestionsHandler:Lcom/ime/framework/view/KeyboardInfoUtils$SuggestionsHandler;

    invoke-virtual {v3, v8}, Lcom/ime/framework/view/KeyboardInfoUtils$SuggestionsHandler;->removeMessages(I)V

    iget-object v3, p0, Lcom/ime/framework/view/KeyboardInfoUtils;->mSuggestionsHandler:Lcom/ime/framework/view/KeyboardInfoUtils$SuggestionsHandler;

    invoke-virtual {v3, v8, v10, v11}, Lcom/ime/framework/view/KeyboardInfoUtils$SuggestionsHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0
.end method

.method public setExpandedButtonVisibility(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ime/framework/view/KeyboardInfoUtils;->mExpandedButtonVisibility:Z

    return-void
.end method

.method public setExpandedViewLayout(Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/ime/framework/view/KeyboardInfoUtils;->mExpandCandidateLayout:Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;

    return-void
.end method

.method public setPopUpKeyboardParams(Lcom/ime/framework/view/AbstractKeyboardView;II)V
    .locals 0

    iput-object p1, p0, Lcom/ime/framework/view/KeyboardInfoUtils;->mSIPPopUpKeyboardView:Lcom/ime/framework/view/AbstractKeyboardView;

    iput p2, p0, Lcom/ime/framework/view/KeyboardInfoUtils;->mSIPPopUpKeyboardViewX:I

    iput p3, p0, Lcom/ime/framework/view/KeyboardInfoUtils;->mSIPPopUpKeyboardViewY:I

    return-void
.end method
