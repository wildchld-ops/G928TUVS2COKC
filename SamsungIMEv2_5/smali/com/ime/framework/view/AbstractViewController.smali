.class public abstract Lcom/ime/framework/view/AbstractViewController;
.super Ljava/lang/Object;
.source "AbstractViewController.java"

# interfaces
.implements Lcom/ime/framework/view/ViewController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ime/framework/view/AbstractViewController$7;
    }
.end annotation


# static fields
.field public static final ONE_HAND_LEFT_SET:I = 0x1

.field public static final ONE_HAND_OFF:I = 0x0

.field public static final ONE_HAND_RIGHT_SET:I = 0x2


# instance fields
.field private mBoxHWLayout:Landroid/widget/FrameLayout;

.field protected mCandidateView:Lcom/ime/framework/view/candidate/AbstractCandidateView;

.field protected mContext:Landroid/content/Context;

.field private mCurrentFrameLayout:Landroid/widget/FrameLayout;

.field private mCurrentLayout:Landroid/widget/LinearLayout;

.field protected mCurrentThaiVowelPageNum:I

.field private mCurrentView:Lcom/ime/framework/view/AbstractKeyboardView;

.field private mCurrentViewFloating:Lcom/ime/framework/view/AbstractKeyboardView;

.field private mCurrentViewLeft:Lcom/ime/framework/view/AbstractKeyboardView;

.field private mCurrentViewRight:Lcom/ime/framework/view/AbstractKeyboardView;

.field private mCurrnetViewFullHwrPanel:Lcom/ime/framework/view/FullScreenHwrPanelView;

.field private mEmoticonScrollLayout:Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;

.field private mEnableOneHandKeypad:Z

.field private mFloatingPhonepadView:Landroid/widget/FrameLayout;

.field protected mFontManager:Lcom/ime/framework/common/FontManager;

.field private mFullScreenHwrKeyboardView:Lcom/ime/framework/view/FullScreenHwrKeyboardView;

.field private mFullScreenView:Lcom/ime/framework/engine/bsthwr/FullScreenHWView;

.field private mFullScreenWindow:Lcom/ime/framework/engine/bsthwr/FullScreenHWindow;

.field protected mInputManager:Lcom/ime/framework/common/InputManager;

.field protected mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

.field protected mIsChnMode:Z

.field protected mIsKorMode:Z

.field protected mIsTabletMode:Z

.field protected mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

.field private mMicEffectView:Lcom/dragon/android/voiceime/ui/MicEffectView;

.field private mOneHandDimView:Landroid/widget/ImageView;

.field private mOneHandLeftView:Landroid/widget/ImageButton;

.field private mOneHandLeftViewClickListener:Landroid/view/View$OnClickListener;

.field private mOneHandLeftViewLayout:Landroid/widget/LinearLayout;

.field private mOneHandRightView:Landroid/widget/ImageButton;

.field private mOneHandRightViewClickListener:Landroid/view/View$OnClickListener;

.field private mOneHandRightViewLayout:Landroid/widget/LinearLayout;

.field private mOneHandViewClicked:Z

.field private mPhonepadView:Landroid/widget/FrameLayout;

.field private mPhoneticSpellScrollLayout:Landroid/widget/LinearLayout;

.field private mPhoneticSpellScrollView:Lcom/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;

.field private mPopupCandidateView:Lcom/ime/framework/view/PopupCandidateView;

.field private mPopupKeyboardView:Lcom/ime/framework/view/PopupKeyboardView;

.field public mPopupWindow:Landroid/widget/PopupWindow;

.field private mPrevSpaceStatus:Z

.field protected mPrivateImeOptionsController:Lcom/ime/framework/common/PrivateImeOptionsController;

.field protected mRepository:Lcom/ime/framework/repository/Repository;

.field private mSpellView:Lcom/ime/framework/view/chinesespell/AbstractSpellLayout;

.field private mSplitLeftView:Landroid/widget/FrameLayout;

.field private mSplitRightView:Landroid/widget/FrameLayout;

.field private mTipsDialog:Lcom/ime/framework/view/TipsDialog;

.field private mVOHWRKeypadView:Landroid/widget/FrameLayout;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/ime/framework/view/AbstractViewController;->mFullScreenView:Lcom/ime/framework/engine/bsthwr/FullScreenHWView;

    iput-object v0, p0, Lcom/ime/framework/view/AbstractViewController;->mMicEffectView:Lcom/dragon/android/voiceime/ui/MicEffectView;

    iput-object v0, p0, Lcom/ime/framework/view/AbstractViewController;->mBoxHWLayout:Landroid/widget/FrameLayout;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ime/framework/view/AbstractViewController;->mOneHandViewClicked:Z

    new-instance v0, Lcom/ime/framework/view/AbstractViewController$2;

    invoke-direct {v0, p0}, Lcom/ime/framework/view/AbstractViewController$2;-><init>(Lcom/ime/framework/view/AbstractViewController;)V

    iput-object v0, p0, Lcom/ime/framework/view/AbstractViewController;->mOneHandLeftViewClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/ime/framework/view/AbstractViewController$3;

    invoke-direct {v0, p0}, Lcom/ime/framework/view/AbstractViewController$3;-><init>(Lcom/ime/framework/view/AbstractViewController;)V

    iput-object v0, p0, Lcom/ime/framework/view/AbstractViewController;->mOneHandRightViewClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$002(Lcom/ime/framework/view/AbstractViewController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/ime/framework/view/AbstractViewController;->mOneHandViewClicked:Z

    return p1
.end method

.method private getLabelFromKeyCode(ILjava/util/List;)Ljava/lang/CharSequence;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/ime/framework/view/Keyboard$Key;",
            ">;)",
            "Ljava/lang/CharSequence;"
        }
    .end annotation

    const/4 v3, 0x0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-object v3

    :cond_1
    const/4 v0, 0x0

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ime/framework/view/Keyboard$Key;

    iget-object v4, v2, Lcom/ime/framework/view/Keyboard$Key;->codes:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    if-ne v4, p1, :cond_2

    move-object v0, v2

    :cond_3
    if-eqz v0, :cond_0

    iget-object v3, v0, Lcom/ime/framework/view/Keyboard$Key;->label:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method private getLatestSymbolEmoticon()[Ljava/lang/String;
    .locals 8

    invoke-static {}, Lcom/ime/framework/common/SymbolCountManagerImpl;->getInstance()Lcom/ime/framework/common/SymbolCountManager;

    move-result-object v4

    const/16 v7, 0x14

    invoke-interface {v4, v7}, Lcom/ime/framework/common/SymbolCountManager;->getSymbolCountList(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Ljava/util/StringTokenizer;

    const-string v7, " "

    invoke-direct {v6, v1, v7}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-char v7, v0

    invoke-static {v7}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v7, v7, [Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    return-object v3
.end method

.method private initFullModeInputView(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;)V
    .locals 13

    const v12, 0x7f020693

    const/16 v11, 0x11

    const/4 v10, 0x0

    invoke-direct {p0}, Lcom/ime/framework/view/AbstractViewController;->getLatestSymbolEmoticon()[Ljava/lang/String;

    move-result-object v4

    iget-object v8, p0, Lcom/ime/framework/view/AbstractViewController;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f090819

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    iget-object v8, p0, Lcom/ime/framework/view/AbstractViewController;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f090817

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v7, v8

    iget-object v8, p0, Lcom/ime/framework/view/AbstractViewController;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f090818

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v0, v8

    const/16 v3, 0x14

    iget-object v8, p0, Lcom/ime/framework/view/AbstractViewController;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0b0007

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    iget-object v8, p0, Lcom/ime/framework/view/AbstractViewController;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/ime/framework/common/InputManager;->isPridictionOn()Z

    move-result v8

    if-eqz v8, :cond_0

    const/16 v3, 0xa

    const/16 v8, 0x8

    invoke-virtual {p1, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_2

    new-instance v6, Landroid/widget/TextView;

    iget-object v8, p0, Lcom/ime/framework/view/AbstractViewController;->mContext:Landroid/content/Context;

    invoke-direct {v6, v8}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    aget-object v8, v4, v1

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v8, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v8, v7, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {v6, v12}, Landroid/widget/TextView;->setBackgroundResource(I)V

    invoke-virtual {v6, v10, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setTextColor(I)V

    new-instance v8, Lcom/ime/framework/view/AbstractViewController$5;

    invoke-direct {v8, p0}, Lcom/ime/framework/view/AbstractViewController$5;-><init>(Lcom/ime/framework/view/AbstractViewController;)V

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p2, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v3, :cond_2

    new-instance v6, Landroid/widget/TextView;

    iget-object v8, p0, Lcom/ime/framework/view/AbstractViewController;->mContext:Landroid/content/Context;

    invoke-direct {v6, v8}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    aget-object v8, v4, v1

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v8, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v8, v7, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {v6, v12}, Landroid/widget/TextView;->setBackgroundResource(I)V

    invoke-virtual {v6, v10, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setTextColor(I)V

    new-instance v8, Lcom/ime/framework/view/AbstractViewController$6;

    invoke-direct {v8, p0}, Lcom/ime/framework/view/AbstractViewController$6;-><init>(Lcom/ime/framework/view/AbstractViewController;)V

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 v8, 0xa

    if-ge v1, v8, :cond_1

    invoke-virtual {p1, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p2, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_2

    :cond_2
    return-void
.end method

.method private isNeedSpaceUpdate()Z
    .locals 2

    iget-object v1, p0, Lcom/ime/framework/view/AbstractViewController;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->isCurrentSpaceStatusSuggestion()Z

    move-result v0

    iget-boolean v1, p0, Lcom/ime/framework/view/AbstractViewController;->mPrevSpaceStatus:Z

    if-eq v0, v1, :cond_0

    iput-boolean v0, p0, Lcom/ime/framework/view/AbstractViewController;->mPrevSpaceStatus:Z

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private makeNewView()Landroid/view/View;
    .locals 29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mRepository:Lcom/ime/framework/repository/Repository;

    move-object/from16 v24, v0

    const-string v25, "NOT_CREATE_NEW_KEYBOARDVIEW"

    const/16 v26, 0x0

    invoke-interface/range {v24 .. v26}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Lcom/ime/framework/common/InputManager;->isUsePopupKeyboard()Z

    move-result v24

    if-nez v24, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Lcom/ime/framework/common/InputManager;->isMultiwindowPhone()Z

    move-result v24

    if-eqz v24, :cond_19

    :cond_0
    const/4 v14, 0x1

    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mRepository:Lcom/ime/framework/repository/Repository;

    move-object/from16 v24, v0

    const-string v25, "SETTINGS_DEFAULT_USE_FULL_HANDWRITING"

    const/16 v26, 0x0

    invoke-interface/range {v24 .. v26}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v23

    invoke-static {}, Lcom/ime/framework/repository/PropertyItems;->isSupportFullHandwriting()Z

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Lcom/ime/framework/common/InputManager;->getSystemHandAdaptableOperationSettingValue()I

    move-result v24

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_1a

    const/4 v3, 0x1

    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Lcom/ime/framework/common/InputManager;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v12

    if-eqz v12, :cond_1

    iget v0, v12, Landroid/view/inputmethod/EditorInfo;->inputType:I

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/ime/framework/repository/EditorStatus;->setInputType(I)V

    :cond_1
    const/16 v24, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/ime/framework/view/AbstractViewController;->setCurrentThaiVowelPageNum(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v24, v0

    if-eqz v24, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/ime/framework/view/AbstractKeyboardView;->closing()V

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mPhonepadView:Landroid/widget/FrameLayout;

    move-object/from16 v24, v0

    if-eqz v24, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mPhonepadView:Landroid/widget/FrameLayout;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/widget/FrameLayout;->removeAllViews()V

    const/16 v24, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ime/framework/view/AbstractViewController;->mPhonepadView:Landroid/widget/FrameLayout;

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mSplitLeftView:Landroid/widget/FrameLayout;

    move-object/from16 v24, v0

    if-eqz v24, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mSplitLeftView:Landroid/widget/FrameLayout;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/widget/FrameLayout;->removeAllViews()V

    const/16 v24, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ime/framework/view/AbstractViewController;->mSplitLeftView:Landroid/widget/FrameLayout;

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mSplitRightView:Landroid/widget/FrameLayout;

    move-object/from16 v24, v0

    if-eqz v24, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mSplitRightView:Landroid/widget/FrameLayout;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/widget/FrameLayout;->removeAllViews()V

    const/16 v24, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ime/framework/view/AbstractViewController;->mSplitRightView:Landroid/widget/FrameLayout;

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mFloatingPhonepadView:Landroid/widget/FrameLayout;

    move-object/from16 v24, v0

    if-eqz v24, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mFloatingPhonepadView:Landroid/widget/FrameLayout;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/widget/FrameLayout;->removeAllViews()V

    const/16 v24, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ime/framework/view/AbstractViewController;->mFloatingPhonepadView:Landroid/widget/FrameLayout;

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mEmoticonScrollLayout:Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;

    move-object/from16 v24, v0

    if-eqz v24, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mEmoticonScrollLayout:Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;->saveLatestEmoticonList()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mEmoticonScrollLayout:Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;->clearInitialEmoticonBitmap()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mEmoticonScrollLayout:Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;->removeAllViews()V

    const/16 v24, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ime/framework/view/AbstractViewController;->mEmoticonScrollLayout:Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mVOHWRKeypadView:Landroid/widget/FrameLayout;

    move-object/from16 v24, v0

    if-eqz v24, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mVOHWRKeypadView:Landroid/widget/FrameLayout;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/widget/FrameLayout;->removeAllViews()V

    const/16 v24, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ime/framework/view/AbstractViewController;->mVOHWRKeypadView:Landroid/widget/FrameLayout;

    :cond_8
    if-eqz v5, :cond_1e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode()Z

    move-result v24

    if-eqz v24, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    instance-of v0, v0, Lcom/ime/framework/view/AbstractKeyboardView;

    move/from16 v24, v0

    if-eqz v24, :cond_1b

    const/16 v24, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/ime/framework/view/AbstractKeyboardView;

    :cond_9
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v24, v0

    if-nez v24, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mCurrentFrameLayout:Landroid/widget/FrameLayout;

    move-object/from16 v24, v0

    if-eqz v24, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mCurrentFrameLayout:Landroid/widget/FrameLayout;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/widget/FrameLayout;->removeAllViews()V

    const/16 v24, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ime/framework/view/AbstractViewController;->mCurrentFrameLayout:Landroid/widget/FrameLayout;

    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v24, v0

    if-nez v24, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mCurrentLayout:Landroid/widget/LinearLayout;

    move-object/from16 v24, v0

    if-eqz v24, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mCurrentLayout:Landroid/widget/LinearLayout;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/widget/LinearLayout;->removeAllViews()V

    const/16 v24, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ime/framework/view/AbstractViewController;->mOneHandLeftView:Landroid/widget/ImageButton;

    const/16 v24, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ime/framework/view/AbstractViewController;->mOneHandRightView:Landroid/widget/ImageButton;

    const/16 v24, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ime/framework/view/AbstractViewController;->mOneHandLeftViewLayout:Landroid/widget/LinearLayout;

    const/16 v24, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ime/framework/view/AbstractViewController;->mOneHandRightViewLayout:Landroid/widget/LinearLayout;

    const/16 v24, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ime/framework/view/AbstractViewController;->mCurrentLayout:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mCandidateView:Lcom/ime/framework/view/candidate/AbstractCandidateView;

    move-object/from16 v24, v0

    if-eqz v24, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mCandidateView:Lcom/ime/framework/view/candidate/AbstractCandidateView;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    invoke-virtual/range {v24 .. v25}, Lcom/ime/framework/view/candidate/AbstractCandidateView;->needToUpdateCandidateLayout(Z)V

    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mCurrentViewFloating:Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v24, v0

    if-eqz v24, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mCurrentViewFloating:Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/ime/framework/view/AbstractKeyboardView;->closing()V

    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mCurrentViewLeft:Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v24, v0

    if-eqz v24, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mCurrentViewLeft:Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/ime/framework/view/AbstractKeyboardView;->closing()V

    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mCurrentViewRight:Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v24, v0

    if-eqz v24, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mCurrentViewRight:Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/ime/framework/view/AbstractKeyboardView;->closing()V

    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mCurrnetViewFullHwrPanel:Lcom/ime/framework/view/FullScreenHwrPanelView;

    move-object/from16 v24, v0

    if-eqz v24, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mCurrnetViewFullHwrPanel:Lcom/ime/framework/view/FullScreenHwrPanelView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/ime/framework/view/FullScreenHwrPanelView;->closing()V

    :cond_f
    const/16 v24, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ime/framework/view/AbstractViewController;->mCurrentViewLeft:Lcom/ime/framework/view/AbstractKeyboardView;

    const/16 v24, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ime/framework/view/AbstractViewController;->mCurrentViewRight:Lcom/ime/framework/view/AbstractKeyboardView;

    const/16 v24, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ime/framework/view/AbstractViewController;->mCurrentViewFloating:Lcom/ime/framework/view/AbstractKeyboardView;

    const/16 v24, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ime/framework/view/AbstractViewController;->mCurrnetViewFullHwrPanel:Lcom/ime/framework/view/FullScreenHwrPanelView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mPopupKeyboardView:Lcom/ime/framework/view/PopupKeyboardView;

    move-object/from16 v24, v0

    if-eqz v24, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mPopupKeyboardView:Lcom/ime/framework/view/PopupKeyboardView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/ime/framework/view/PopupKeyboardView;->hideKeyboard()V

    const/16 v24, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ime/framework/view/AbstractViewController;->mPopupKeyboardView:Lcom/ime/framework/view/PopupKeyboardView;

    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mFullScreenHwrKeyboardView:Lcom/ime/framework/view/FullScreenHwrKeyboardView;

    move-object/from16 v24, v0

    if-eqz v24, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mFullScreenHwrKeyboardView:Lcom/ime/framework/view/FullScreenHwrKeyboardView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/ime/framework/view/FullScreenHwrKeyboardView;->hideFullscreenHwrPanel()V

    const/16 v24, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ime/framework/view/AbstractViewController;->mFullScreenHwrKeyboardView:Lcom/ime/framework/view/FullScreenHwrKeyboardView;

    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mPhoneticSpellScrollLayout:Landroid/widget/LinearLayout;

    move-object/from16 v24, v0

    if-eqz v24, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mPhoneticSpellScrollLayout:Landroid/widget/LinearLayout;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/widget/LinearLayout;->removeAllViews()V

    const/16 v24, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ime/framework/view/AbstractViewController;->mPhoneticSpellScrollLayout:Landroid/widget/LinearLayout;

    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mPhoneticSpellScrollView:Lcom/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;

    move-object/from16 v24, v0

    if-eqz v24, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mPhoneticSpellScrollView:Lcom/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Lcom/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->setPhoneticSpellScrollViewShown(Z)V

    const/16 v24, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ime/framework/view/AbstractViewController;->mPhoneticSpellScrollView:Lcom/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;

    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Lcom/ime/framework/common/InputManager;->isCurrentCarModeKnobSIP()Z

    move-result v24

    if-eqz v24, :cond_14

    if-eqz v13, :cond_14

    const/4 v13, 0x0

    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/ime/framework/inputmode/InputModeManager;->isBstHWRmodeEnable()Z

    move-result v24

    if-eqz v24, :cond_25

    const/16 v24, 0x8

    move/from16 v0, v24

    if-ne v13, v0, :cond_21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Lcom/ime/framework/common/InputManager;->isEmoticonMode()Z

    move-result v24

    if-eqz v24, :cond_1f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/ime/framework/view/AbstractViewController;->getHWREmoticonLayoutRscId(I)I

    move-result v25

    const/16 v26, 0x0

    invoke-interface/range {v24 .. v26}, Lcom/ime/framework/common/InputManager;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/LinearLayout;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ime/framework/view/AbstractViewController;->mCurrentLayout:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/ime/framework/view/AbstractViewController;->getKeyboardViewRscId(I)I

    move-result v25

    const/16 v26, 0x0

    invoke-interface/range {v24 .. v26}, Lcom/ime/framework/common/InputManager;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v24

    check-cast v24, Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ime/framework/view/AbstractViewController;->mCurrentViewLeft:Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mCurrentViewLeft:Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    invoke-virtual/range {v24 .. v25}, Lcom/ime/framework/view/AbstractKeyboardView;->setLeftKeyboardMode(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/ime/framework/view/AbstractViewController;->getKeyboardViewRscId(I)I

    move-result v25

    const/16 v26, 0x0

    invoke-interface/range {v24 .. v26}, Lcom/ime/framework/common/InputManager;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v24

    check-cast v24, Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ime/framework/view/AbstractViewController;->mCurrentViewRight:Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mCurrentViewRight:Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Lcom/ime/framework/view/AbstractKeyboardView;->setLeftKeyboardMode(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mCurrentLayout:Landroid/widget/LinearLayout;

    move-object/from16 v24, v0

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/view/AbstractViewController;->getHWRKeyboardRscId()I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ime/framework/view/AbstractViewController;->mCurrentViewFloating:Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mCurrentLayout:Landroid/widget/LinearLayout;

    move-object/from16 v24, v0

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/view/AbstractViewController;->getHWRKeyboardRscId()I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mCurrentLayout:Landroid/widget/LinearLayout;

    move-object/from16 v24, v0

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/view/AbstractViewController;->getEmoticonScrollLayoutRscId()I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ime/framework/view/AbstractViewController;->mEmoticonScrollLayout:Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;

    :cond_15
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mCurrentViewLeft:Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v24, v0

    if-eqz v24, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mCurrentViewLeft:Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mCurrentViewRight:Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Lcom/ime/framework/view/AbstractKeyboardView;->setPairView(Lcom/ime/framework/view/AbstractKeyboardView;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mCurrentViewLeft:Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    invoke-virtual/range {v24 .. v25}, Lcom/ime/framework/view/AbstractKeyboardView;->setIsLeftPopupKeyboard(Z)V

    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mCurrentViewRight:Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v24, v0

    if-eqz v24, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mCurrentViewRight:Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mCurrentViewLeft:Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Lcom/ime/framework/view/AbstractKeyboardView;->setPairView(Lcom/ime/framework/view/AbstractKeyboardView;)V

    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/ime/framework/inputmode/InputModeManager;->isBstHWRmodeEnable()Z

    move-result v24

    if-eqz v24, :cond_55

    const/16 v24, 0x8

    move/from16 v0, v24

    if-ne v13, v0, :cond_53

    const/16 v24, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/ime/framework/view/AbstractViewController;->getCurrentPopupKeyboard(Z)Lcom/ime/framework/view/DefaultKeyboard;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mCurrentViewFloating:Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v15}, Lcom/ime/framework/view/AbstractKeyboardView;->setKeyboard(Lcom/ime/framework/view/DefaultKeyboard;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mCurrentViewLeft:Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/ime/framework/view/AbstractViewController;->getCurrentPopupKeyboard(Z)Lcom/ime/framework/view/DefaultKeyboard;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lcom/ime/framework/view/AbstractKeyboardView;->setKeyboard(Lcom/ime/framework/view/DefaultKeyboard;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mCurrentViewRight:Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/ime/framework/view/AbstractViewController;->getCurrentPopupKeyboard(Z)Lcom/ime/framework/view/DefaultKeyboard;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lcom/ime/framework/view/AbstractKeyboardView;->setKeyboard(Lcom/ime/framework/view/DefaultKeyboard;)V

    new-instance v16, Lcom/ime/framework/view/event/KeyboardActionListener;

    invoke-direct/range {v16 .. v16}, Lcom/ime/framework/view/event/KeyboardActionListener;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mCurrentViewLeft:Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/ime/framework/view/AbstractKeyboardView;->setOnKeyboardActionListener(Lcom/ime/framework/view/AbstractKeyboardView$OnKeyboardActionListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mCurrentViewRight:Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/ime/framework/view/AbstractKeyboardView;->setOnKeyboardActionListener(Lcom/ime/framework/view/AbstractKeyboardView$OnKeyboardActionListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mCurrentViewFloating:Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/ime/framework/view/AbstractKeyboardView;->setOnKeyboardActionListener(Lcom/ime/framework/view/AbstractKeyboardView$OnKeyboardActionListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-interface {v0, v15}, Lcom/ime/framework/common/InputManager;->setKeyboard(Lcom/ime/framework/view/Keyboard;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Lcom/ime/framework/common/InputManager;->isEmoticonMode()Z

    move-result v24

    if-eqz v24, :cond_51

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/ime/framework/view/AbstractViewController;->getCandiateView(Z)Landroid/view/View;

    move-result-object v25

    invoke-interface/range {v24 .. v25}, Lcom/ime/framework/common/InputManager;->setCandidateView(Landroid/view/View;)V

    new-instance v24, Lcom/ime/framework/view/PopupKeyboardView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Lcom/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v25

    invoke-direct/range {v24 .. v25}, Lcom/ime/framework/view/PopupKeyboardView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ime/framework/view/AbstractViewController;->mPopupKeyboardView:Lcom/ime/framework/view/PopupKeyboardView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mPopupKeyboardView:Lcom/ime/framework/view/PopupKeyboardView;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mCurrentViewLeft:Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mCurrentViewRight:Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mCurrentLayout:Landroid/widget/LinearLayout;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mCandidateView:Lcom/ime/framework/view/candidate/AbstractCandidateView;

    move-object/from16 v28, v0

    invoke-virtual/range {v24 .. v28}, Lcom/ime/framework/view/PopupKeyboardView;->init(Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mCurrentLayout:Landroid/widget/LinearLayout;

    move-object/from16 v24, v0

    const v25, 0x7f100059

    invoke-virtual/range {v24 .. v25}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/ime/framework/view/AbstractKeyboardView;

    :cond_18
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/ime/framework/inputmode/InputModeManager;->isBstHWRmodeEnable()Z

    move-result v24

    if-eqz v24, :cond_66

    const/16 v24, 0x8

    move/from16 v0, v24

    if-ne v13, v0, :cond_62

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mPopupKeyboardView:Lcom/ime/framework/view/PopupKeyboardView;

    move-object/from16 v24, v0

    if-eqz v24, :cond_62

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mPopupKeyboardView:Lcom/ime/framework/view/PopupKeyboardView;

    move-object/from16 v24, v0

    :goto_5
    return-object v24

    :cond_19
    const/4 v14, 0x0

    goto/16 :goto_0

    :cond_1a
    const/4 v3, 0x0

    goto/16 :goto_1

    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode()Z

    move-result v24

    if-nez v24, :cond_1c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    instance-of v0, v0, Lcom/ime/framework/view/AbstractHwrKeyboardView;

    move/from16 v24, v0

    if-nez v24, :cond_1d

    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Lcom/ime/framework/common/InputManager;->isChnMode()Z

    move-result v24

    if-eqz v24, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Lcom/ime/framework/common/InputManager;->isUseBstHWRPanel()Z

    move-result v24

    if-eqz v24, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    instance-of v0, v0, Lcom/ime/framework/view/AbstractKeyboardView;

    move/from16 v24, v0

    if-eqz v24, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Lcom/ime/framework/common/InputManager;->getInputModeManager()Lcom/ime/framework/inputmode/InputModeManager;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/ime/framework/inputmode/InputModeManager;->getPrevInputMethod()I

    move-result v24

    const/16 v25, 0x2

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_1d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Lcom/ime/framework/common/InputManager;->getInputModeManager()Lcom/ime/framework/inputmode/InputModeManager;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/ime/framework/inputmode/InputModeManager;->getPrevInputMethod()I

    move-result v24

    const/16 v25, 0x4

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_9

    :cond_1d
    const/16 v24, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/ime/framework/view/AbstractKeyboardView;

    goto/16 :goto_2

    :cond_1e
    const/16 v24, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/ime/framework/view/AbstractKeyboardView;

    goto/16 :goto_2

    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Lcom/ime/framework/common/InputManager;->isDragonVoiceMode()Z

    move-result v24

    if-eqz v24, :cond_20

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/ime/framework/view/AbstractViewController;->getVoicePanelLayout(I)I

    move-result v18

    const/16 v24, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/ime/framework/view/AbstractViewController;->getCurrentPopupKeyboard(Z)Lcom/ime/framework/view/DefaultKeyboard;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v18

    move-object/from16 v2, v25

    invoke-interface {v0, v1, v2}, Lcom/ime/framework/common/InputManager;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/FrameLayout;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ime/framework/view/AbstractViewController;->mFloatingPhonepadView:Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/ime/framework/view/AbstractViewController;->getKeyboardViewRscId(I)I

    move-result v25

    const/16 v26, 0x0

    invoke-interface/range {v24 .. v26}, Lcom/ime/framework/common/InputManager;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v24

    check-cast v24, Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ime/framework/view/AbstractViewController;->mCurrentViewLeft:Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mCurrentViewLeft:Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    invoke-virtual/range {v24 .. v25}, Lcom/ime/framework/view/AbstractKeyboardView;->setLeftKeyboardMode(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/ime/framework/view/AbstractViewController;->getKeyboardViewRscId(I)I

    move-result v25

    const/16 v26, 0x0

    invoke-interface/range {v24 .. v26}, Lcom/ime/framework/common/InputManager;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v24

    check-cast v24, Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ime/framework/view/AbstractViewController;->mCurrentViewRight:Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mCurrentViewRight:Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Lcom/ime/framework/view/AbstractKeyboardView;->setLeftKeyboardMode(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mFloatingPhonepadView:Landroid/widget/FrameLayout;

    move-object/from16 v24, v0

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/view/AbstractViewController;->getKeyboardRscId()I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ime/framework/view/AbstractViewController;->mCurrentViewFloating:Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mCurrentViewFloating:Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v15}, Lcom/ime/framework/view/AbstractKeyboardView;->setKeyboard(Lcom/ime/framework/view/DefaultKeyboard;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mFloatingPhonepadView:Landroid/widget/FrameLayout;

    move-object/from16 v24, v0

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/view/AbstractViewController;->getMicEffectViewRscId()I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Lcom/dragon/android/voiceime/ui/MicEffectView;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ime/framework/view/AbstractViewController;->mMicEffectView:Lcom/dragon/android/voiceime/ui/MicEffectView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mMicEffectView:Lcom/dragon/android/voiceime/ui/MicEffectView;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Lcom/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lcom/dragon/android/voiceime/ui/MicEffectView;->initialize(Landroid/content/Context;)V

    goto/16 :goto_3

    :cond_20
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/ime/framework/view/AbstractViewController;->getBoxKeyboardViewRscId(I)I

    move-result v18

    const/16 v24, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/ime/framework/view/AbstractViewController;->getCurrentPopupKeyboard(Z)Lcom/ime/framework/view/DefaultKeyboard;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v18

    move-object/from16 v2, v25

    invoke-interface {v0, v1, v2}, Lcom/ime/framework/common/InputManager;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/FrameLayout;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ime/framework/view/AbstractViewController;->mFloatingPhonepadView:Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/ime/framework/view/AbstractViewController;->getKeyboardViewRscId(I)I

    move-result v25

    const/16 v26, 0x0

    invoke-interface/range {v24 .. v26}, Lcom/ime/framework/common/InputManager;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v24

    check-cast v24, Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ime/framework/view/AbstractViewController;->mCurrentViewLeft:Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mCurrentViewLeft:Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    invoke-virtual/range {v24 .. v25}, Lcom/ime/framework/view/AbstractKeyboardView;->setLeftKeyboardMode(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/ime/framework/view/AbstractViewController;->getKeyboardViewRscId(I)I

    move-result v25

    const/16 v26, 0x0

    invoke-interface/range {v24 .. v26}, Lcom/ime/framework/common/InputManager;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v24

    check-cast v24, Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ime/framework/view/AbstractViewController;->mCurrentViewRight:Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mCurrentViewRight:Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Lcom/ime/framework/view/AbstractKeyboardView;->setLeftKeyboardMode(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mFloatingPhonepadView:Landroid/widget/FrameLayout;

    move-object/from16 v24, v0

    const v25, 0x7f10001e

    invoke-virtual/range {v24 .. v25}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ime/framework/view/AbstractViewController;->mCurrentViewFloating:Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mCurrentViewFloating:Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v15}, Lcom/ime/framework/view/AbstractKeyboardView;->setKeyboard(Lcom/ime/framework/view/DefaultKeyboard;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mFloatingPhonepadView:Landroid/widget/FrameLayout;

    move-object/from16 v24, v0

    const v25, 0x7f10001f

    invoke-virtual/range {v24 .. v25}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/ime/framework/engine/bsthwr/BoxHWView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Lcom/ime/framework/common/InputManager;->getHWManager()Lcom/ime/framework/engine/bsthwr/HWManager;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Lcom/ime/framework/engine/bsthwr/HWManager;->setBoxView(Lcom/ime/framework/engine/bsthwr/BoxHWView;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Lcom/ime/framework/common/InputManager;->getHWManager()Lcom/ime/framework/engine/bsthwr/HWManager;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/ime/framework/engine/bsthwr/HWManager;->onInputModeChange()V

    goto/16 :goto_3

    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Lcom/ime/framework/common/InputManager;->isEmoticonMode()Z

    move-result v24

    if-eqz v24, :cond_22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/ime/framework/view/AbstractViewController;->getHWREmoticonLayoutRscId(I)I

    move-result v25

    const/16 v26, 0x0

    invoke-interface/range {v24 .. v26}, Lcom/ime/framework/common/InputManager;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/LinearLayout;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ime/framework/view/AbstractViewController;->mCurrentLayout:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mCurrentLayout:Landroid/widget/LinearLayout;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/ime/framework/view/AbstractViewController;->getKeyboardView(Landroid/widget/LinearLayout;)Landroid/view/View;

    move-result-object v24

    check-cast v24, Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mCurrentLayout:Landroid/widget/LinearLayout;

    move-object/from16 v24, v0

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/view/AbstractViewController;->getEmoticonScrollLayoutRscId()I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ime/framework/view/AbstractViewController;->mEmoticonScrollLayout:Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;

    goto/16 :goto_3

    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Lcom/ime/framework/common/InputManager;->isDragonVoiceMode()Z

    move-result v24

    if-eqz v24, :cond_23

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/ime/framework/view/AbstractViewController;->getVoicePanelLayout(I)I

    move-result v18

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/view/AbstractViewController;->getCurrentKeyboard()Lcom/ime/framework/view/DefaultKeyboard;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v18

    move-object/from16 v2, v25

    invoke-interface {v0, v1, v2}, Lcom/ime/framework/common/InputManager;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/FrameLayout;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ime/framework/view/AbstractViewController;->mCurrentFrameLayout:Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mCurrentFrameLayout:Landroid/widget/FrameLayout;

    move-object/from16 v24, v0

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/view/AbstractViewController;->getKeyboardRscId()I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v15}, Lcom/ime/framework/view/AbstractKeyboardView;->setKeyboard(Lcom/ime/framework/view/DefaultKeyboard;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mCurrentFrameLayout:Landroid/widget/FrameLayout;

    move-object/from16 v24, v0

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/view/AbstractViewController;->getMicEffectViewRscId()I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Lcom/dragon/android/voiceime/ui/MicEffectView;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ime/framework/view/AbstractViewController;->mMicEffectView:Lcom/dragon/android/voiceime/ui/MicEffectView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mMicEffectView:Lcom/dragon/android/voiceime/ui/MicEffectView;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Lcom/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lcom/dragon/android/voiceime/ui/MicEffectView;->initialize(Landroid/content/Context;)V

    goto/16 :goto_3

    :cond_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/ime/framework/inputmode/InputModeManager;->isHandwriteFSMode()Z

    move-result v24

    if-eqz v24, :cond_24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/ime/framework/view/AbstractViewController;->getKeyboardViewRscId(I)I

    move-result v25

    const/16 v26, 0x0

    invoke-interface/range {v24 .. v26}, Lcom/ime/framework/common/InputManager;->inflateWithCache(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v24

    check-cast v24, Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/ime/framework/view/AbstractKeyboardView;

    const-string v24, "SamsungIME"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "mCurrentView 001 = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Lcom/ime/framework/common/InputManager;->getHWManager()Lcom/ime/framework/engine/bsthwr/HWManager;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/ime/framework/engine/bsthwr/HWManager;->onInputModeChange()V

    goto/16 :goto_3

    :cond_24
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/ime/framework/inputmode/InputModeManager;->isHanwriteBoxMode()Z

    move-result v24

    if-eqz v24, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/ime/framework/view/AbstractViewController;->getBoxKeyboardViewRscId(I)I

    move-result v25

    const/16 v26, 0x0

    invoke-interface/range {v24 .. v26}, Lcom/ime/framework/common/InputManager;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/FrameLayout;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ime/framework/view/AbstractViewController;->mBoxHWLayout:Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mBoxHWLayout:Landroid/widget/FrameLayout;

    move-object/from16 v24, v0

    const v25, 0x7f10001f

    invoke-virtual/range {v24 .. v25}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/ime/framework/engine/bsthwr/BoxHWView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Lcom/ime/framework/common/InputManager;->getHWManager()Lcom/ime/framework/engine/bsthwr/HWManager;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Lcom/ime/framework/engine/bsthwr/HWManager;->setBoxView(Lcom/ime/framework/engine/bsthwr/BoxHWView;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Lcom/ime/framework/common/InputManager;->getHWManager()Lcom/ime/framework/engine/bsthwr/HWManager;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/ime/framework/engine/bsthwr/HWManager;->onInputModeChange()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mBoxHWLayout:Landroid/widget/FrameLayout;

    move-object/from16 v24, v0

    const v25, 0x7f10001e

    invoke-virtual/range {v24 .. v25}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/ime/framework/view/AbstractKeyboardView;

    goto/16 :goto_3

    :cond_25
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/ime/framework/inputmode/InputModeManager;->isVOHWRmodeEnable()Z

    move-result v24

    if-eqz v24, :cond_29

    const/16 v24, 0x8

    move/from16 v0, v24

    if-ne v13, v0, :cond_27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Lcom/ime/framework/common/InputManager;->isEmoticonMode()Z

    move-result v24

    if-eqz v24, :cond_26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/ime/framework/view/AbstractViewController;->getHWREmoticonLayoutRscId(I)I

    move-result v25

    const/16 v26, 0x0

    invoke-interface/range {v24 .. v26}, Lcom/ime/framework/common/InputManager;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/LinearLayout;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ime/framework/view/AbstractViewController;->mCurrentLayout:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/ime/framework/view/AbstractViewController;->getKeyboardViewRscId(I)I

    move-result v25

    const/16 v26, 0x0

    invoke-interface/range {v24 .. v26}, Lcom/ime/framework/common/InputManager;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v24

    check-cast v24, Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ime/framework/view/AbstractViewController;->mCurrentViewLeft:Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mCurrentViewLeft:Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    invoke-virtual/range {v24 .. v25}, Lcom/ime/framework/view/AbstractKeyboardView;->setLeftKeyboardMode(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/ime/framework/view/AbstractViewController;->getKeyboardViewRscId(I)I

    move-result v25

    const/16 v26, 0x0

    invoke-interface/range {v24 .. v26}, Lcom/ime/framework/common/InputManager;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v24

    check-cast v24, Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ime/framework/view/AbstractViewController;->mCurrentViewRight:Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mCurrentViewRight:Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Lcom/ime/framework/view/AbstractKeyboardView;->setLeftKeyboardMode(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mCurrentLayout:Landroid/widget/LinearLayout;

    move-object/from16 v24, v0

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/view/AbstractViewController;->getHWRKeyboardRscId()I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ime/framework/view/AbstractViewController;->mCurrentViewFloating:Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mCurrentLayout:Landroid/widget/LinearLayout;

    move-object/from16 v24, v0

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/view/AbstractViewController;->getHWRKeyboardRscId()I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mCurrentLayout:Landroid/widget/LinearLayout;

    move-object/from16 v24, v0

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/view/AbstractViewController;->getEmoticonScrollLayoutRscId()I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ime/framework/view/AbstractViewController;->mEmoticonScrollLayout:Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;

    goto/16 :goto_3

    :cond_26
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/ime/framework/view/AbstractViewController;->getHWRFloatingKeyboardViewRscId(I)I

    move-result v25

    const/16 v26, 0x0

    invoke-interface/range {v24 .. v26}, Lcom/ime/framework/common/InputManager;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/FrameLayout;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ime/framework/view/AbstractViewController;->mVOHWRKeypadView:Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/ime/framework/view/AbstractViewController;->getKeyboardViewRscId(I)I

    move-result v25

    const/16 v26, 0x0

    invoke-interface/range {v24 .. v26}, Lcom/ime/framework/common/InputManager;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v24

    check-cast v24, Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ime/framework/view/AbstractViewController;->mCurrentViewLeft:Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mCurrentViewLeft:Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    invoke-virtual/range {v24 .. v25}, Lcom/ime/framework/view/AbstractKeyboardView;->setLeftKeyboardMode(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/ime/framework/view/AbstractViewController;->getKeyboardViewRscId(I)I

    move-result v25

    const/16 v26, 0x0

    invoke-interface/range {v24 .. v26}, Lcom/ime/framework/common/InputManager;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v24

    check-cast v24, Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ime/framework/view/AbstractViewController;->mCurrentViewRight:Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mCurrentViewRight:Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Lcom/ime/framework/view/AbstractKeyboardView;->setLeftKeyboardMode(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mVOHWRKeypadView:Landroid/widget/FrameLayout;

    move-object/from16 v24, v0

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/view/AbstractViewController;->getHWRKeyboardRscId()I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ime/framework/view/AbstractViewController;->mCurrentViewFloating:Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mVOHWRKeypadView:Landroid/widget/FrameLayout;

    move-object/from16 v24, v0

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/view/AbstractViewController;->getHWRKeyboardRscId()I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/ime/framework/view/AbstractKeyboardView;

    goto/16 :goto_3

    :cond_27
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Lcom/ime/framework/common/InputManager;->isEmoticonMode()Z

    move-result v24

    if-eqz v24, :cond_28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/ime/framework/view/AbstractViewController;->getHWREmoticonLayoutRscId(I)I

    move-result v25

    const/16 v26, 0x0

    invoke-interface/range {v24 .. v26}, Lcom/ime/framework/common/InputManager;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/LinearLayout;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ime/framework/view/AbstractViewController;->mCurrentLayout:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mCurrentLayout:Landroid/widget/LinearLayout;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/ime/framework/view/AbstractViewController;->getKeyboardView(Landroid/widget/LinearLayout;)Landroid/view/View;

    move-result-object v24

    check-cast v24, Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mCurrentLayout:Landroid/widget/LinearLayout;

    move-object/from16 v24, v0

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/view/AbstractViewController;->getEmoticonScrollLayoutRscId()I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ime/framework/view/AbstractViewController;->mEmoticonScrollLayout:Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;

    goto/16 :goto_3

    :cond_28
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/ime/framework/view/AbstractViewController;->getVOHWRKeyboardViewRscId(I)I

    move-result v25

    const/16 v26, 0x0

    invoke-interface/range {v24 .. v26}, Lcom/ime/framework/common/InputManager;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/FrameLayout;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ime/framework/view/AbstractViewController;->mVOHWRKeypadView:Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mVOHWRKeypadView:Landroid/widget/FrameLayout;

    move-object/from16 v24, v0

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/view/AbstractViewController;->getHWRKeyboardRscId()I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/ime/framework/view/AbstractKeyboardView;

    goto/16 :goto_3

    :cond_29
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/ime/framework/inputmode/InputModeManager;->isFloatingHWRKeyboard()Z

    move-result v24

    if-eqz v24, :cond_2a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/ime/framework/view/AbstractViewController;->getHWRFloatingKeyboardViewRscId(I)I

    move-result v25

    const/16 v26, 0x0

    invoke-interface/range {v24 .. v26}, Lcom/ime/framework/common/InputManager;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/FrameLayout;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ime/framework/view/AbstractViewController;->mFloatingPhonepadView:Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/ime/framework/view/AbstractViewController;->getKeyboardViewRscId(I)I

    move-result v25

    const/16 v26, 0x0

    invoke-interface/range {v24 .. v26}, Lcom/ime/framework/common/InputManager;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v24

    check-cast v24, Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ime/framework/view/AbstractViewController;->mCurrentViewLeft:Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mCurrentViewLeft:Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    invoke-virtual/range {v24 .. v25}, Lcom/ime/framework/view/AbstractKeyboardView;->setLeftKeyboardMode(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/ime/framework/view/AbstractViewController;->getKeyboardViewRscId(I)I

    move-result v25

    const/16 v26, 0x0

    invoke-interface/range {v24 .. v26}, Lcom/ime/framework/common/InputManager;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v24

    check-cast v24, Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ime/framework/view/AbstractViewController;->mCurrentViewRight:Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mCurrentViewRight:Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Lcom/ime/framework/view/AbstractKeyboardView;->setLeftKeyboardMode(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mFloatingPhonepadView:Landroid/widget/FrameLayout;

    move-object/from16 v24, v0

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/view/AbstractViewController;->getHWRKeyboardRscId()I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ime/framework/view/AbstractViewController;->mCurrentViewFloating:Lcom/ime/framework/view/AbstractKeyboardView;

    goto/16 :goto_3

    :cond_2a
    const/16 v24, 0x8

    move/from16 v0, v24

    if-ne v13, v0, :cond_2d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Lcom/ime/framework/common/InputManager;->isEmoticonMode()Z

    move-result v24

    if-eqz v24, :cond_2b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/ime/framework/view/AbstractViewController;->getEmoticonLayoutRscId(I)I

    move-result v25

    const/16 v26, 0x0

    invoke-interface/range {v24 .. v26}, Lcom/ime/framework/common/InputManager;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/FrameLayout;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ime/framework/view/AbstractViewController;->mFloatingPhonepadView:Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/ime/framework/view/AbstractViewController;->getKeyboardViewRscId(I)I

    move-result v25

    const/16 v26, 0x0

    invoke-interface/range {v24 .. v26}, Lcom/ime/framework/common/InputManager;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v24

    check-cast v24, Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ime/framework/view/AbstractViewController;->mCurrentViewLeft:Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mCurrentViewLeft:Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    invoke-virtual/range {v24 .. v25}, Lcom/ime/framework/view/AbstractKeyboardView;->setLeftKeyboardMode(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/ime/framework/view/AbstractViewController;->getKeyboardViewRscId(I)I

    move-result v25

    const/16 v26, 0x0

    invoke-interface/range {v24 .. v26}, Lcom/ime/framework/common/InputManager;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v24

    check-cast v24, Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ime/framework/view/AbstractViewController;->mCurrentViewRight:Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mCurrentViewRight:Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Lcom/ime/framework/view/AbstractKeyboardView;->setLeftKeyboardMode(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mFloatingPhonepadView:Landroid/widget/FrameLayout;

    move-object/from16 v24, v0

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/view/AbstractViewController;->getKeyboardRscId()I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ime/framework/view/AbstractViewController;->mCurrentViewFloating:Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mFloatingPhonepadView:Landroid/widget/FrameLayout;

    move-object/from16 v24, v0

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/view/AbstractViewController;->getEmoticonScrollLayoutRscId()I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ime/framework/view/AbstractViewController;->mEmoticonScrollLayout:Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;

    goto/16 :goto_3

    :cond_2b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Lcom/ime/framework/common/InputManager;->isDragonVoiceMode()Z

    move-result v24

    if-eqz v24, :cond_2c

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/ime/framework/view/AbstractViewController;->getVoicePanelLayout(I)I

    move-result v18

    const/16 v24, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/ime/framework/view/AbstractViewController;->getCurrentPopupKeyboard(Z)Lcom/ime/framework/view/DefaultKeyboard;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v18

    move-object/from16 v2, v25

    invoke-interface {v0, v1, v2}, Lcom/ime/framework/common/InputManager;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/FrameLayout;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ime/framework/view/AbstractViewController;->mFloatingPhonepadView:Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/ime/framework/view/AbstractViewController;->getKeyboardViewRscId(I)I

    move-result v25

    const/16 v26, 0x0

    invoke-interface/range {v24 .. v26}, Lcom/ime/framework/common/InputManager;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v24

    check-cast v24, Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ime/framework/view/AbstractViewController;->mCurrentViewLeft:Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mCurrentViewLeft:Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    invoke-virtual/range {v24 .. v25}, Lcom/ime/framework/view/AbstractKeyboardView;->setLeftKeyboardMode(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/ime/framework/view/AbstractViewController;->getKeyboardViewRscId(I)I

    move-result v25

    const/16 v26, 0x0

    invoke-interface/range {v24 .. v26}, Lcom/ime/framework/common/InputManager;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v24

    check-cast v24, Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ime/framework/view/AbstractViewController;->mCurrentViewRight:Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mCurrentViewRight:Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Lcom/ime/framework/view/AbstractKeyboardView;->setLeftKeyboardMode(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mFloatingPhonepadView:Landroid/widget/FrameLayout;

    move-object/from16 v24, v0

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/view/AbstractViewController;->getKeyboardRscId()I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ime/framework/view/AbstractViewController;->mCurrentViewFloating:Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mCurrentViewFloating:Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v15}, Lcom/ime/framework/view/AbstractKeyboardView;->setKeyboard(Lcom/ime/framework/view/DefaultKeyboard;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mFloatingPhonepadView:Landroid/widget/FrameLayout;

    move-object/from16 v24, v0

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/view/AbstractViewController;->getMicEffectViewRscId()I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Lcom/dragon/android/voiceime/ui/MicEffectView;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ime/framework/view/AbstractViewController;->mMicEffectView:Lcom/dragon/android/voiceime/ui/MicEffectView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mMicEffectView:Lcom/dragon/android/voiceime/ui/MicEffectView;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Lcom/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lcom/dragon/android/voiceime/ui/MicEffectView;->initialize(Landroid/content/Context;)V

    goto/16 :goto_3

    :cond_2c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/ime/framework/view/AbstractViewController;->getCNFloatingKeyboardViewRscId(I)I

    move-result v25

    const/16 v26, 0x0

    invoke-interface/range {v24 .. v26}, Lcom/ime/framework/common/InputManager;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/FrameLayout;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ime/framework/view/AbstractViewController;->mFloatingPhonepadView:Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/ime/framework/view/AbstractViewController;->getKeyboardViewRscId(I)I

    move-result v25

    const/16 v26, 0x0

    invoke-interface/range {v24 .. v26}, Lcom/ime/framework/common/InputManager;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v24

    check-cast v24, Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ime/framework/view/AbstractViewController;->mCurrentViewLeft:Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mCurrentViewLeft:Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    invoke-virtual/range {v24 .. v25}, Lcom/ime/framework/view/AbstractKeyboardView;->setLeftKeyboardMode(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/ime/framework/view/AbstractViewController;->getKeyboardViewRscId(I)I

    move-result v25

    const/16 v26, 0x0

    invoke-interface/range {v24 .. v26}, Lcom/ime/framework/common/InputManager;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v24

    check-cast v24, Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ime/framework/view/AbstractViewController;->mCurrentViewRight:Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mCurrentViewRight:Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Lcom/ime/framework/view/AbstractKeyboardView;->setLeftKeyboardMode(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mFloatingPhonepadView:Landroid/widget/FrameLayout;

    move-object/from16 v24, v0

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/view/AbstractViewController;->getKeyboardRscId()I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ime/framework/view/AbstractViewController;->mCurrentViewFloating:Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mFloatingPhonepadView:Landroid/widget/FrameLayout;

    move-object/from16 v24, v0

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/view/AbstractViewController;->getPhoneticSpellScrollLayoutRscId()I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/LinearLayout;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ime/framework/view/AbstractViewController;->mPhoneticSpellScrollLayout:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mFloatingPhonepadView:Landroid/widget/FrameLayout;

    move-object/from16 v24, v0

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/view/AbstractViewController;->getPhoneticSpellScrollViewRscId()I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Lcom/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ime/framework/view/AbstractViewController;->mPhoneticSpellScrollView:Lcom/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mPhoneticSpellScrollView:Lcom/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;

    move-object/from16 v24, v0

    const/16 v25, 0x8

    invoke-virtual/range {v24 .. v25}, Lcom/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mRepository:Lcom/ime/framework/repository/Repository;

    move-object/from16 v24, v0

    const-string v25, "CHINESE_PHONETIC_SPELL_LAYOUT_SHOWN"

    const/16 v26, 0x0

    invoke-interface/range {v24 .. v26}, Lcom/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mPhoneticSpellScrollView:Lcom/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mPhoneticSpellScrollLayout:Landroid/widget/LinearLayout;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Lcom/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->initView(Landroid/widget/LinearLayout;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mPhoneticSpellScrollView:Lcom/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;

    move-object/from16 v24, v0

    const/16 v25, 0x8

    invoke-virtual/range {v24 .. v25}, Lcom/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->setVisibility(I)V

    goto/16 :goto_3

    :cond_2d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Lcom/ime/framework/common/InputManager;->isEmoticonMode()Z

    move-result v24

    if-nez v24, :cond_41

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Lcom/ime/framework/common/InputManager;->isChineseLanguageMode()Z

    move-result v24

    if-eqz v24, :cond_41

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Lcom/ime/framework/common/InputManager;->isCurrentCarModeKnobSIP()Z

    move-result v24

    if-nez v24, :cond_41

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Lcom/ime/framework/common/InputManager;->isDragonVoiceMode()Z

    move-result v24

    if-nez v24, :cond_41

    invoke-static {}, Lcom/ime/framework/repository/KeyboardStatus;->isPhoneticSpellLayout()Z

    move-result v24

    if-eqz v24, :cond_36

    const/16 v24, 0x1

    move/from16 v0, v24

    if-eq v13, v0, :cond_2e

    if-eqz v13, :cond_2e

    const/16 v24, 0x7

    move/from16 v0, v24

    if-eq v13, v0, :cond_2e

    const/16 v24, 0x8

    move/from16 v0, v24

    if-ne v13, v0, :cond_36

    :cond_2e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Lcom/ime/framework/common/InputManager;->isEnableOneHandKeypad()Z

    move-result v24

    if-eqz v24, :cond_35

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v24, v0

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/view/AbstractViewController;->getOneHandCNKeyboardViewRscId()I

    move-result v25

    const/16 v26, 0x0

    invoke-interface/range {v24 .. v26}, Lcom/ime/framework/common/InputManager;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/LinearLayout;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ime/framework/view/AbstractViewController;->mCurrentLayout:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mCurrentLayout:Landroid/widget/LinearLayout;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/ime/framework/view/AbstractViewController;->getKeyboardOneHandView(Landroid/widget/LinearLayout;Z)Landroid/widget/ImageButton;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ime/framework/view/AbstractViewController;->mOneHandLeftView:Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mCurrentLayout:Landroid/widget/LinearLayout;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/ime/framework/view/AbstractViewController;->getKeyboardOneHandView(Landroid/widget/LinearLayout;Z)Landroid/widget/ImageButton;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ime/framework/view/AbstractViewController;->mOneHandRightView:Landroid/widget/ImageButton;

    if-eqz v3, :cond_33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mOneHandLeftView:Landroid/widget/ImageButton;

    move-object/from16 v24, v0

    const/16 v25, 0x8

    invoke-virtual/range {v24 .. v25}, Landroid/widget/ImageButton;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mOneHandRightView:Landroid/widget/ImageButton;

    move-object/from16 v24, v0

    const/16 v25, 0x8

    invoke-virtual/range {v24 .. v25}, Landroid/widget/ImageButton;->setVisibility(I)V

    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mCurrentLayout:Landroid/widget/LinearLayout;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/ime/framework/view/AbstractViewController;->getKeyboardOneHandLayoutView(Landroid/widget/LinearLayout;Z)Landroid/widget/LinearLayout;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ime/framework/view/AbstractViewController;->mOneHandLeftViewLayout:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mCurrentLayout:Landroid/widget/LinearLayout;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/ime/framework/view/AbstractViewController;->getKeyboardOneHandLayoutView(Landroid/widget/LinearLayout;Z)Landroid/widget/LinearLayout;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ime/framework/view/AbstractViewController;->mOneHandRightViewLayout:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mCurrentLayout:Landroid/widget/LinearLayout;

    move-object/from16 v24, v0

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/view/AbstractViewController;->getOeHandCNPhonepadViewRscId()I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/FrameLayout;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ime/framework/view/AbstractViewController;->mPhonepadView:Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mPhonepadView:Landroid/widget/FrameLayout;

    move-object/from16 v24, v0

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/view/AbstractViewController;->getKeyboardRscId()I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/ime/framework/view/AbstractViewController;->mOneHandViewClicked:Z

    move/from16 v24, v0

    if-nez v24, :cond_2f

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/view/AbstractViewController;->isOneHandKeypadRightSet()Z

    move-result v24

    if-eqz v24, :cond_34

    const/16 v24, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/ime/framework/view/AbstractViewController;->setOneHandLayoutShownWithOption(I)V

    :cond_2f
    :goto_7
    if-eqz v14, :cond_31

    const/16 v24, 0x7

    move/from16 v0, v24

    if-eq v13, v0, :cond_30

    const/16 v24, 0x8

    move/from16 v0, v24

    if-ne v13, v0, :cond_31

    :cond_30
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/ime/framework/view/AbstractViewController;->getSplitKeyboardViewRscId(Z)I

    move-result v25

    const/16 v26, 0x0

    invoke-interface/range {v24 .. v26}, Lcom/ime/framework/common/InputManager;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/FrameLayout;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ime/framework/view/AbstractViewController;->mSplitLeftView:Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mSplitLeftView:Landroid/widget/FrameLayout;

    move-object/from16 v24, v0

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/view/AbstractViewController;->getKeyboardRscId()I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ime/framework/view/AbstractViewController;->mCurrentViewLeft:Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mCurrentViewLeft:Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    invoke-virtual/range {v24 .. v25}, Lcom/ime/framework/view/AbstractKeyboardView;->setLeftKeyboardMode(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/ime/framework/view/AbstractViewController;->getSplitKeyboardViewRscId(Z)I

    move-result v25

    const/16 v26, 0x0

    invoke-interface/range {v24 .. v26}, Lcom/ime/framework/common/InputManager;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/FrameLayout;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ime/framework/view/AbstractViewController;->mSplitRightView:Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mSplitRightView:Landroid/widget/FrameLayout;

    move-object/from16 v24, v0

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/view/AbstractViewController;->getKeyboardRscId()I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ime/framework/view/AbstractViewController;->mCurrentViewRight:Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mCurrentViewRight:Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Lcom/ime/framework/view/AbstractKeyboardView;->setLeftKeyboardMode(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/ime/framework/view/AbstractViewController;->getKeyboardViewRscId(I)I

    move-result v25

    const/16 v26, 0x0

    invoke-interface/range {v24 .. v26}, Lcom/ime/framework/common/InputManager;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v24

    check-cast v24, Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ime/framework/view/AbstractViewController;->mCurrentViewFloating:Lcom/ime/framework/view/AbstractKeyboardView;

    :cond_31
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mPhoneticSpellScrollLayout:Landroid/widget/LinearLayout;

    move-object/from16 v24, v0

    if-eqz v24, :cond_32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mPhoneticSpellScrollLayout:Landroid/widget/LinearLayout;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/widget/LinearLayout;->removeAllViews()V

    :cond_32
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mPhonepadView:Landroid/widget/FrameLayout;

    move-object/from16 v24, v0

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/view/AbstractViewController;->getPhoneticSpellScrollLayoutRscId()I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/LinearLayout;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ime/framework/view/AbstractViewController;->mPhoneticSpellScrollLayout:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mPhonepadView:Landroid/widget/FrameLayout;

    move-object/from16 v24, v0

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/view/AbstractViewController;->getPhoneticSpellScrollViewRscId()I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Lcom/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ime/framework/view/AbstractViewController;->mPhoneticSpellScrollView:Lcom/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mPhoneticSpellScrollView:Lcom/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;

    move-object/from16 v24, v0

    const/16 v25, 0x8

    invoke-virtual/range {v24 .. v25}, Lcom/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mRepository:Lcom/ime/framework/repository/Repository;

    move-object/from16 v24, v0

    const-string v25, "CHINESE_PHONETIC_SPELL_LAYOUT_SHOWN"

    const/16 v26, 0x0

    invoke-interface/range {v24 .. v26}, Lcom/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mPhoneticSpellScrollView:Lcom/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mPhoneticSpellScrollLayout:Landroid/widget/LinearLayout;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Lcom/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->initView(Landroid/widget/LinearLayout;)V

    goto/16 :goto_3

    :cond_33
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mOneHandLeftView:Landroid/widget/ImageButton;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mOneHandLeftViewClickListener:Landroid/view/View$OnClickListener;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mOneHandRightView:Landroid/widget/ImageButton;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mOneHandRightViewClickListener:Landroid/view/View$OnClickListener;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_6

    :cond_34
    const/16 v24, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/ime/framework/view/AbstractViewController;->setOneHandLayoutShownWithOption(I)V

    goto/16 :goto_7

    :cond_35
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/ime/framework/view/AbstractViewController;->getCNKeyboardViewRscId(I)I

    move-result v25

    const/16 v26, 0x0

    invoke-interface/range {v24 .. v26}, Lcom/ime/framework/common/InputManager;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/FrameLayout;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ime/framework/view/AbstractViewController;->mPhonepadView:Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mPhonepadView:Landroid/widget/FrameLayout;

    move-object/from16 v24, v0

    if-eqz v24, :cond_2f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mPhonepadView:Landroid/widget/FrameLayout;

    move-object/from16 v24, v0

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/view/AbstractViewController;->getKeyboardRscId()I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/ime/framework/view/AbstractKeyboardView;

    goto/16 :goto_7

    :cond_36
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Lcom/ime/framework/common/InputManager;->isEnableOneHandKeypad()Z

    move-result v24

    if-eqz v24, :cond_3e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/ime/framework/view/AbstractViewController;->getOneHandKeyboardViewRscId(I)I

    move-result v25

    const/16 v26, 0x0

    invoke-interface/range {v24 .. v26}, Lcom/ime/framework/common/InputManager;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/LinearLayout;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ime/framework/view/AbstractViewController;->mCurrentLayout:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mCurrentLayout:Landroid/widget/LinearLayout;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/ime/framework/view/AbstractViewController;->getKeyboardView(Landroid/widget/LinearLayout;)Landroid/view/View;

    move-result-object v24

    check-cast v24, Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mCurrentLayout:Landroid/widget/LinearLayout;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/ime/framework/view/AbstractViewController;->getKeyboardOneHandView(Landroid/widget/LinearLayout;Z)Landroid/widget/ImageButton;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ime/framework/view/AbstractViewController;->mOneHandLeftView:Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mCurrentLayout:Landroid/widget/LinearLayout;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/ime/framework/view/AbstractViewController;->getKeyboardOneHandView(Landroid/widget/LinearLayout;Z)Landroid/widget/ImageButton;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ime/framework/view/AbstractViewController;->mOneHandRightView:Landroid/widget/ImageButton;

    if-eqz v3, :cond_3c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mOneHandLeftView:Landroid/widget/ImageButton;

    move-object/from16 v24, v0

    const/16 v25, 0x8

    invoke-virtual/range {v24 .. v25}, Landroid/widget/ImageButton;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mOneHandRightView:Landroid/widget/ImageButton;

    move-object/from16 v24, v0

    const/16 v25, 0x8

    invoke-virtual/range {v24 .. v25}, Landroid/widget/ImageButton;->setVisibility(I)V

    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mCurrentLayout:Landroid/widget/LinearLayout;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/ime/framework/view/AbstractViewController;->getKeyboardOneHandLayoutView(Landroid/widget/LinearLayout;Z)Landroid/widget/LinearLayout;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ime/framework/view/AbstractViewController;->mOneHandLeftViewLayout:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mCurrentLayout:Landroid/widget/LinearLayout;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/ime/framework/view/AbstractViewController;->getKeyboardOneHandLayoutView(Landroid/widget/LinearLayout;Z)Landroid/widget/LinearLayout;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ime/framework/view/AbstractViewController;->mOneHandRightViewLayout:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/ime/framework/view/AbstractViewController;->mOneHandViewClicked:Z

    move/from16 v24, v0

    if-nez v24, :cond_37

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/view/AbstractViewController;->isOneHandKeypadRightSet()Z

    move-result v24

    if-eqz v24, :cond_3d

    const/16 v24, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/ime/framework/view/AbstractViewController;->setOneHandLayoutShownWithOption(I)V

    :cond_37
    :goto_9
    if-eqz v14, :cond_39

    const/16 v24, 0x7

    move/from16 v0, v24

    if-eq v13, v0, :cond_38

    const/16 v24, 0x8

    move/from16 v0, v24

    if-ne v13, v0, :cond_39

    :cond_38
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/ime/framework/view/AbstractViewController;->getKeyboardViewRscId(I)I

    move-result v25

    const/16 v26, 0x0

    invoke-interface/range {v24 .. v26}, Lcom/ime/framework/common/InputManager;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v24

    check-cast v24, Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ime/framework/view/AbstractViewController;->mCurrentViewLeft:Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mCurrentViewLeft:Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    invoke-virtual/range {v24 .. v25}, Lcom/ime/framework/view/AbstractKeyboardView;->setLeftKeyboardMode(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/ime/framework/view/AbstractViewController;->getKeyboardViewRscId(I)I

    move-result v25

    const/16 v26, 0x0

    invoke-interface/range {v24 .. v26}, Lcom/ime/framework/common/InputManager;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v24

    check-cast v24, Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ime/framework/view/AbstractViewController;->mCurrentViewRight:Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mCurrentViewRight:Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Lcom/ime/framework/view/AbstractKeyboardView;->setLeftKeyboardMode(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/ime/framework/view/AbstractViewController;->getKeyboardViewRscId(I)I

    move-result v25

    const/16 v26, 0x0

    invoke-interface/range {v24 .. v26}, Lcom/ime/framework/common/InputManager;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v24

    check-cast v24, Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ime/framework/view/AbstractViewController;->mCurrentViewFloating:Lcom/ime/framework/view/AbstractKeyboardView;

    :cond_39
    if-eqz v22, :cond_15

    if-eqz v23, :cond_15

    const/16 v24, 0x4

    move/from16 v0, v24

    if-ne v13, v0, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    instance-of v0, v0, Lcom/ime/framework/view/FullScreenHwrKeyboardView;

    move/from16 v24, v0

    if-eqz v24, :cond_40

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v24, v0

    check-cast v24, Lcom/ime/framework/view/FullScreenHwrKeyboardView;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ime/framework/view/AbstractViewController;->mFullScreenHwrKeyboardView:Lcom/ime/framework/view/FullScreenHwrKeyboardView;

    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mCurrnetViewFullHwrPanel:Lcom/ime/framework/view/FullScreenHwrPanelView;

    move-object/from16 v24, v0

    if-eqz v24, :cond_3b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mCurrnetViewFullHwrPanel:Lcom/ime/framework/view/FullScreenHwrPanelView;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    instance-of v0, v0, Lcom/ime/framework/view/AbstractKeyboardView;

    move/from16 v24, v0

    if-eqz v24, :cond_3a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mCurrnetViewFullHwrPanel:Lcom/ime/framework/view/FullScreenHwrPanelView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/ime/framework/view/FullScreenHwrPanelView;->closing()V

    :cond_3a
    const/16 v24, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ime/framework/view/AbstractViewController;->mCurrnetViewFullHwrPanel:Lcom/ime/framework/view/FullScreenHwrPanelView;

    :cond_3b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v24, v0

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/view/AbstractViewController;->getFullHwrPanelViewRscId()I

    move-result v25

    const/16 v26, 0x0

    invoke-interface/range {v24 .. v26}, Lcom/ime/framework/common/InputManager;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v24

    check-cast v24, Lcom/ime/framework/view/FullScreenHwrPanelView;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ime/framework/view/AbstractViewController;->mCurrnetViewFullHwrPanel:Lcom/ime/framework/view/FullScreenHwrPanelView;

    goto/16 :goto_3

    :cond_3c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mOneHandLeftView:Landroid/widget/ImageButton;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mOneHandLeftViewClickListener:Landroid/view/View$OnClickListener;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mOneHandRightView:Landroid/widget/ImageButton;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mOneHandRightViewClickListener:Landroid/view/View$OnClickListener;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_8

    :cond_3d
    const/16 v24, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/ime/framework/view/AbstractViewController;->setOneHandLayoutShownWithOption(I)V

    goto/16 :goto_9

    :cond_3e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Lcom/ime/framework/common/InputManager;->isEmoticonMode()Z

    move-result v24

    if-eqz v24, :cond_3f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/ime/framework/view/AbstractViewController;->getEmoticonLayoutRscId(I)I

    move-result v25

    const/16 v26, 0x0

    invoke-interface/range {v24 .. v26}, Lcom/ime/framework/common/InputManager;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/LinearLayout;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ime/framework/view/AbstractViewController;->mCurrentLayout:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mCurrentLayout:Landroid/widget/LinearLayout;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/ime/framework/view/AbstractViewController;->getKeyboardView(Landroid/widget/LinearLayout;)Landroid/view/View;

    move-result-object v24

    check-cast v24, Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mCurrentLayout:Landroid/widget/LinearLayout;

    move-object/from16 v24, v0

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/view/AbstractViewController;->getEmoticonScrollLayoutRscId()I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ime/framework/view/AbstractViewController;->mEmoticonScrollLayout:Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;

    goto/16 :goto_9

    :cond_3f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/ime/framework/view/AbstractViewController;->getKeyboardViewRscId(I)I

    move-result v25

    const/16 v26, 0x0

    invoke-interface/range {v24 .. v26}, Lcom/ime/framework/common/InputManager;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v24

    check-cast v24, Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/ime/framework/view/AbstractKeyboardView;

    goto/16 :goto_9

    :cond_40
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/ime/framework/view/AbstractViewController;->getKeyboardViewRscId(I)I

    move-result v25

    const/16 v26, 0x0

    invoke-interface/range {v24 .. v26}, Lcom/ime/framework/common/InputManager;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v24

    check-cast v24, Lcom/ime/framework/view/FullScreenHwrKeyboardView;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ime/framework/view/AbstractViewController;->mFullScreenHwrKeyboardView:Lcom/ime/framework/view/FullScreenHwrKeyboardView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mFullScreenHwrKeyboardView:Lcom/ime/framework/view/FullScreenHwrKeyboardView;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/ime/framework/view/AbstractKeyboardView;

    goto/16 :goto_a

    :cond_41
    const/16 v24, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ime/framework/view/AbstractViewController;->mPhonepadView:Landroid/widget/FrameLayout;

    const/16 v24, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ime/framework/view/AbstractViewController;->mEmoticonScrollLayout:Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v24, v0

    if-nez v24, :cond_42

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Lcom/ime/framework/common/InputManager;->isDragonVoiceMode()Z

    move-result v24

    if-eqz v24, :cond_47

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/ime/framework/view/AbstractViewController;->getVoicePanelLayout(I)I

    move-result v18

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/view/AbstractViewController;->getCurrentKeyboard()Lcom/ime/framework/view/DefaultKeyboard;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v18

    move-object/from16 v2, v25

    invoke-interface {v0, v1, v2}, Lcom/ime/framework/common/InputManager;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/FrameLayout;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ime/framework/view/AbstractViewController;->mCurrentFrameLayout:Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mCurrentFrameLayout:Landroid/widget/FrameLayout;

    move-object/from16 v24, v0

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/view/AbstractViewController;->getKeyboardRscId()I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v15}, Lcom/ime/framework/view/AbstractKeyboardView;->setKeyboard(Lcom/ime/framework/view/DefaultKeyboard;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mCurrentFrameLayout:Landroid/widget/FrameLayout;

    move-object/from16 v24, v0

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/view/AbstractViewController;->getMicEffectViewRscId()I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Lcom/dragon/android/voiceime/ui/MicEffectView;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ime/framework/view/AbstractViewController;->mMicEffectView:Lcom/dragon/android/voiceime/ui/MicEffectView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mMicEffectView:Lcom/dragon/android/voiceime/ui/MicEffectView;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Lcom/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lcom/dragon/android/voiceime/ui/MicEffectView;->initialize(Landroid/content/Context;)V

    :cond_42
    :goto_b
    if-eqz v14, :cond_44

    const/16 v24, 0x7

    move/from16 v0, v24

    if-eq v13, v0, :cond_43

    const/16 v24, 0x8

    move/from16 v0, v24

    if-ne v13, v0, :cond_44

    :cond_43
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/ime/framework/view/AbstractViewController;->getSplitKeyboardViewRscId(Z)I

    move-result v25

    const/16 v26, 0x0

    invoke-interface/range {v24 .. v26}, Lcom/ime/framework/common/InputManager;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/FrameLayout;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ime/framework/view/AbstractViewController;->mSplitLeftView:Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mSplitLeftView:Landroid/widget/FrameLayout;

    move-object/from16 v24, v0

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/view/AbstractViewController;->getKeyboardRscId()I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ime/framework/view/AbstractViewController;->mCurrentViewLeft:Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mCurrentViewLeft:Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    invoke-virtual/range {v24 .. v25}, Lcom/ime/framework/view/AbstractKeyboardView;->setLeftKeyboardMode(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/ime/framework/view/AbstractViewController;->getSplitKeyboardViewRscId(Z)I

    move-result v25

    const/16 v26, 0x0

    invoke-interface/range {v24 .. v26}, Lcom/ime/framework/common/InputManager;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/FrameLayout;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ime/framework/view/AbstractViewController;->mSplitRightView:Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mSplitRightView:Landroid/widget/FrameLayout;

    move-object/from16 v24, v0

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/view/AbstractViewController;->getKeyboardRscId()I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ime/framework/view/AbstractViewController;->mCurrentViewRight:Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mCurrentViewRight:Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Lcom/ime/framework/view/AbstractKeyboardView;->setLeftKeyboardMode(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/ime/framework/view/AbstractViewController;->getKeyboardViewRscId(I)I

    move-result v25

    const/16 v26, 0x0

    invoke-interface/range {v24 .. v26}, Lcom/ime/framework/common/InputManager;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v24

    check-cast v24, Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ime/framework/view/AbstractViewController;->mCurrentViewFloating:Lcom/ime/framework/view/AbstractKeyboardView;

    :cond_44
    if-eqz v22, :cond_15

    if-eqz v23, :cond_15

    const/16 v24, 0x4

    move/from16 v0, v24

    if-ne v13, v0, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    instance-of v0, v0, Lcom/ime/framework/view/FullScreenHwrKeyboardView;

    move/from16 v24, v0

    if-eqz v24, :cond_50

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v24, v0

    check-cast v24, Lcom/ime/framework/view/FullScreenHwrKeyboardView;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ime/framework/view/AbstractViewController;->mFullScreenHwrKeyboardView:Lcom/ime/framework/view/FullScreenHwrKeyboardView;

    :goto_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mCurrnetViewFullHwrPanel:Lcom/ime/framework/view/FullScreenHwrPanelView;

    move-object/from16 v24, v0

    if-eqz v24, :cond_46

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mCurrnetViewFullHwrPanel:Lcom/ime/framework/view/FullScreenHwrPanelView;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    instance-of v0, v0, Lcom/ime/framework/view/AbstractKeyboardView;

    move/from16 v24, v0

    if-eqz v24, :cond_45

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mCurrnetViewFullHwrPanel:Lcom/ime/framework/view/FullScreenHwrPanelView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/ime/framework/view/FullScreenHwrPanelView;->closing()V

    :cond_45
    const/16 v24, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ime/framework/view/AbstractViewController;->mCurrnetViewFullHwrPanel:Lcom/ime/framework/view/FullScreenHwrPanelView;

    :cond_46
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v24, v0

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/view/AbstractViewController;->getFullHwrPanelViewRscId()I

    move-result v25

    const/16 v26, 0x0

    invoke-interface/range {v24 .. v26}, Lcom/ime/framework/common/InputManager;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v24

    check-cast v24, Lcom/ime/framework/view/FullScreenHwrPanelView;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ime/framework/view/AbstractViewController;->mCurrnetViewFullHwrPanel:Lcom/ime/framework/view/FullScreenHwrPanelView;

    goto/16 :goto_3

    :cond_47
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Lcom/ime/framework/common/InputManager;->isEnableOneHandKeypad()Z

    move-result v24

    if-eqz v24, :cond_4b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Lcom/ime/framework/common/InputManager;->isEmoticonMode()Z

    move-result v24

    if-eqz v24, :cond_48

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/ime/framework/view/AbstractViewController;->getEmoticonLayoutRscId(I)I

    move-result v25

    const/16 v26, 0x0

    invoke-interface/range {v24 .. v26}, Lcom/ime/framework/common/InputManager;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/FrameLayout;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ime/framework/view/AbstractViewController;->mCurrentFrameLayout:Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mCurrentFrameLayout:Landroid/widget/FrameLayout;

    move-object/from16 v24, v0

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/view/AbstractViewController;->getEmoticonScrollLayoutRscId()I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ime/framework/view/AbstractViewController;->mEmoticonScrollLayout:Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mCurrentFrameLayout:Landroid/widget/FrameLayout;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/ime/framework/view/AbstractViewController;->getKeyboardOneHandDimView(Landroid/widget/FrameLayout;)Landroid/widget/ImageView;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ime/framework/view/AbstractViewController;->mOneHandDimView:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mCurrentFrameLayout:Landroid/widget/FrameLayout;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/ime/framework/view/AbstractViewController;->getKeyboardOneHandLayout(Landroid/widget/FrameLayout;)Landroid/widget/LinearLayout;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ime/framework/view/AbstractViewController;->mCurrentLayout:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mCurrentLayout:Landroid/widget/LinearLayout;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Landroid/widget/LinearLayout;->setLayoutDirection(I)V

    :goto_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mCurrentLayout:Landroid/widget/LinearLayout;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/ime/framework/view/AbstractViewController;->getKeyboardView(Landroid/widget/LinearLayout;)Landroid/view/View;

    move-result-object v24

    check-cast v24, Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mOneHandDimView:Landroid/widget/ImageView;

    move-object/from16 v24, v0

    new-instance v25, Lcom/ime/framework/view/AbstractViewController$1;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/ime/framework/view/AbstractViewController$1;-><init>(Lcom/ime/framework/view/AbstractViewController;)V

    invoke-virtual/range {v24 .. v25}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mCurrentLayout:Landroid/widget/LinearLayout;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/ime/framework/view/AbstractViewController;->getKeyboardOneHandView(Landroid/widget/LinearLayout;Z)Landroid/widget/ImageButton;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ime/framework/view/AbstractViewController;->mOneHandLeftView:Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mCurrentLayout:Landroid/widget/LinearLayout;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/ime/framework/view/AbstractViewController;->getKeyboardOneHandView(Landroid/widget/LinearLayout;Z)Landroid/widget/ImageButton;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ime/framework/view/AbstractViewController;->mOneHandRightView:Landroid/widget/ImageButton;

    if-eqz v3, :cond_49

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mOneHandLeftView:Landroid/widget/ImageButton;

    move-object/from16 v24, v0

    const/16 v25, 0x8

    invoke-virtual/range {v24 .. v25}, Landroid/widget/ImageButton;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mOneHandRightView:Landroid/widget/ImageButton;

    move-object/from16 v24, v0

    const/16 v25, 0x8

    invoke-virtual/range {v24 .. v25}, Landroid/widget/ImageButton;->setVisibility(I)V

    :goto_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mCurrentLayout:Landroid/widget/LinearLayout;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/ime/framework/view/AbstractViewController;->getKeyboardOneHandLayoutView(Landroid/widget/LinearLayout;Z)Landroid/widget/LinearLayout;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ime/framework/view/AbstractViewController;->mOneHandLeftViewLayout:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mCurrentLayout:Landroid/widget/LinearLayout;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/ime/framework/view/AbstractViewController;->getKeyboardOneHandLayoutView(Landroid/widget/LinearLayout;Z)Landroid/widget/LinearLayout;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ime/framework/view/AbstractViewController;->mOneHandRightViewLayout:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/ime/framework/view/AbstractViewController;->mOneHandViewClicked:Z

    move/from16 v24, v0

    if-nez v24, :cond_42

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/view/AbstractViewController;->isOneHandKeypadRightSet()Z

    move-result v24

    if-eqz v24, :cond_4a

    const/16 v24, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/ime/framework/view/AbstractViewController;->setOneHandLayoutShownWithOption(I)V

    goto/16 :goto_b

    :cond_48
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/ime/framework/view/AbstractViewController;->getOneHandKeyboardViewRscId(I)I

    move-result v25

    const/16 v26, 0x0

    invoke-interface/range {v24 .. v26}, Lcom/ime/framework/common/InputManager;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/FrameLayout;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ime/framework/view/AbstractViewController;->mCurrentFrameLayout:Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mCurrentFrameLayout:Landroid/widget/FrameLayout;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/ime/framework/view/AbstractViewController;->getKeyboardOneHandDimView(Landroid/widget/FrameLayout;)Landroid/widget/ImageView;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ime/framework/view/AbstractViewController;->mOneHandDimView:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mCurrentFrameLayout:Landroid/widget/FrameLayout;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/ime/framework/view/AbstractViewController;->getKeyboardOneHandLayout(Landroid/widget/FrameLayout;)Landroid/widget/LinearLayout;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ime/framework/view/AbstractViewController;->mCurrentLayout:Landroid/widget/LinearLayout;

    goto/16 :goto_d

    :cond_49
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mOneHandLeftView:Landroid/widget/ImageButton;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mOneHandLeftViewClickListener:Landroid/view/View$OnClickListener;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mOneHandRightView:Landroid/widget/ImageButton;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mOneHandRightViewClickListener:Landroid/view/View$OnClickListener;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_e

    :cond_4a
    const/16 v24, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/ime/framework/view/AbstractViewController;->setOneHandLayoutShownWithOption(I)V

    goto/16 :goto_b

    :cond_4b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Lcom/ime/framework/common/InputManager;->isEmoticonMode()Z

    move-result v24

    if-eqz v24, :cond_4d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/ime/framework/inputmode/InputModeManager;->isHandwritingInputModeForVO()Z

    move-result v24

    if-eqz v24, :cond_4c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/ime/framework/view/AbstractViewController;->getHWREmoticonLayoutRscId(I)I

    move-result v25

    const/16 v26, 0x0

    invoke-interface/range {v24 .. v26}, Lcom/ime/framework/common/InputManager;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/LinearLayout;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ime/framework/view/AbstractViewController;->mCurrentLayout:Landroid/widget/LinearLayout;

    :goto_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mCurrentLayout:Landroid/widget/LinearLayout;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/ime/framework/view/AbstractViewController;->getKeyboardView(Landroid/widget/LinearLayout;)Landroid/view/View;

    move-result-object v24

    check-cast v24, Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mCurrentLayout:Landroid/widget/LinearLayout;

    move-object/from16 v24, v0

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/view/AbstractViewController;->getEmoticonScrollLayoutRscId()I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ime/framework/view/AbstractViewController;->mEmoticonScrollLayout:Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;

    goto/16 :goto_b

    :cond_4c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/ime/framework/view/AbstractViewController;->getEmoticonLayoutRscId(I)I

    move-result v25

    const/16 v26, 0x0

    invoke-interface/range {v24 .. v26}, Lcom/ime/framework/common/InputManager;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/LinearLayout;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ime/framework/view/AbstractViewController;->mCurrentLayout:Landroid/widget/LinearLayout;

    goto :goto_f

    :cond_4d
    const/16 v24, 0x7

    move/from16 v0, v24

    if-eq v13, v0, :cond_42

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Lcom/ime/framework/common/InputManager;->isFullLandMode()Z

    move-result v24

    if-eqz v24, :cond_4f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v24, v0

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/view/AbstractViewController;->getDualFullLayoutRscId()I

    move-result v25

    const/16 v26, 0x0

    invoke-interface/range {v24 .. v26}, Lcom/ime/framework/common/InputManager;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/LinearLayout;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ime/framework/view/AbstractViewController;->mCurrentLayout:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mCurrentLayout:Landroid/widget/LinearLayout;

    move-object/from16 v24, v0

    const v25, 0x7f10006b

    invoke-virtual/range {v24 .. v25}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mCurrentLayout:Landroid/widget/LinearLayout;

    move-object/from16 v24, v0

    const v25, 0x7f10006c

    invoke-virtual/range {v24 .. v25}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Lcom/ime/framework/common/InputManager;->isNumberSymbolOnlyEditor()Z

    move-result v24

    if-nez v24, :cond_4e

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9}, Lcom/ime/framework/view/AbstractViewController;->initFullModeInputView(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;)V

    :goto_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mCurrentLayout:Landroid/widget/LinearLayout;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/ime/framework/view/AbstractViewController;->getKeyboardView(Landroid/widget/LinearLayout;)Landroid/view/View;

    move-result-object v24

    check-cast v24, Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/ime/framework/view/AbstractKeyboardView;

    goto/16 :goto_b

    :cond_4e
    const/16 v24, 0x8

    move/from16 v0, v24

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/16 v24, 0x8

    move/from16 v0, v24

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_10

    :cond_4f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/ime/framework/view/AbstractViewController;->getKeyboardViewRscId(I)I

    move-result v25

    const/16 v26, 0x0

    invoke-interface/range {v24 .. v26}, Lcom/ime/framework/common/InputManager;->inflateWithCache(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v24

    check-cast v24, Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/ime/framework/view/AbstractKeyboardView;

    goto/16 :goto_b

    :cond_50
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/ime/framework/view/AbstractViewController;->getKeyboardViewRscId(I)I

    move-result v25

    const/16 v26, 0x0

    invoke-interface/range {v24 .. v26}, Lcom/ime/framework/common/InputManager;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v24

    check-cast v24, Lcom/ime/framework/view/FullScreenHwrKeyboardView;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ime/framework/view/AbstractViewController;->mFullScreenHwrKeyboardView:Lcom/ime/framework/view/FullScreenHwrKeyboardView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mFullScreenHwrKeyboardView:Lcom/ime/framework/view/FullScreenHwrKeyboardView;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/ime/framework/view/AbstractKeyboardView;

    goto/16 :goto_c

    :cond_51
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Lcom/ime/framework/common/InputManager;->isDragonVoiceMode()Z

    move-result v24

    if-eqz v24, :cond_52

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/ime/framework/view/AbstractViewController;->getCandiateView(Z)Landroid/view/View;

    move-result-object v25

    invoke-interface/range {v24 .. v25}, Lcom/ime/framework/common/InputManager;->setCandidateView(Landroid/view/View;)V

    new-instance v24, Lcom/ime/framework/view/PopupKeyboardView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Lcom/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v25

    invoke-direct/range {v24 .. v25}, Lcom/ime/framework/view/PopupKeyboardView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ime/framework/view/AbstractViewController;->mPopupKeyboardView:Lcom/ime/framework/view/PopupKeyboardView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mPopupKeyboardView:Lcom/ime/framework/view/PopupKeyboardView;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mCurrentViewLeft:Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mCurrentViewRight:Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mFloatingPhonepadView:Landroid/widget/FrameLayout;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mCandidateView:Lcom/ime/framework/view/candidate/AbstractCandidateView;

    move-object/from16 v28, v0

    invoke-virtual/range {v24 .. v28}, Lcom/ime/framework/view/PopupKeyboardView;->init(Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mFloatingPhonepadView:Landroid/widget/FrameLayout;

    move-object/from16 v24, v0

    const v25, 0x7f10001e

    invoke-virtual/range {v24 .. v25}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/ime/framework/view/AbstractKeyboardView;

    goto/16 :goto_4

    :cond_52
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/ime/framework/view/AbstractViewController;->getCandiateView(Z)Landroid/view/View;

    move-result-object v25

    invoke-interface/range {v24 .. v25}, Lcom/ime/framework/common/InputManager;->setCandidateView(Landroid/view/View;)V

    new-instance v24, Lcom/ime/framework/view/PopupKeyboardView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Lcom/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v25

    invoke-direct/range {v24 .. v25}, Lcom/ime/framework/view/PopupKeyboardView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ime/framework/view/AbstractViewController;->mPopupKeyboardView:Lcom/ime/framework/view/PopupKeyboardView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mPopupKeyboardView:Lcom/ime/framework/view/PopupKeyboardView;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mCurrentViewLeft:Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mCurrentViewRight:Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mFloatingPhonepadView:Landroid/widget/FrameLayout;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mCandidateView:Lcom/ime/framework/view/candidate/AbstractCandidateView;

    move-object/from16 v28, v0

    invoke-virtual/range {v24 .. v28}, Lcom/ime/framework/view/PopupKeyboardView;->init(Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mFloatingPhonepadView:Landroid/widget/FrameLayout;

    move-object/from16 v24, v0

    const v25, 0x7f10001e

    invoke-virtual/range {v24 .. v25}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/ime/framework/view/AbstractKeyboardView;->mWindowHeight:I

    move/from16 v24, v0

    const/16 v25, 0x780

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/ime/framework/view/AbstractKeyboardView;->mWindowWidth:I

    move/from16 v24, v0

    const/16 v25, 0x438

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    invoke-virtual/range {v24 .. v28}, Lcom/ime/framework/view/AbstractKeyboardView;->setPadding(IIII)V

    goto/16 :goto_4

    :cond_53
    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/view/AbstractViewController;->getCurrentKeyboard()Lcom/ime/framework/view/DefaultKeyboard;

    move-result-object v7

    const-string v24, "SamsungIME"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "--setKeyboard--mCurrentView--mCurrentView = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v24, v0

    if-eqz v24, :cond_54

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v7}, Lcom/ime/framework/view/AbstractKeyboardView;->setKeyboard(Lcom/ime/framework/view/DefaultKeyboard;)V

    :cond_54
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-interface {v0, v7}, Lcom/ime/framework/common/InputManager;->setKeyboard(Lcom/ime/framework/view/Keyboard;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v24, v0

    invoke-virtual {v7}, Lcom/ime/framework/view/DefaultKeyboard;->getMinWidth()I

    move-result v25

    invoke-virtual {v7}, Lcom/ime/framework/view/DefaultKeyboard;->getHeight()I

    move-result v26

    invoke-interface/range {v24 .. v26}, Lcom/ime/framework/common/InputManager;->setKeyboardSize(II)V

    new-instance v16, Lcom/ime/framework/view/event/KeyboardActionListener;

    invoke-direct/range {v16 .. v16}, Lcom/ime/framework/view/event/KeyboardActionListener;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v24, v0

    if-eqz v24, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/ime/framework/view/AbstractKeyboardView;->setOnKeyboardActionListener(Lcom/ime/framework/view/AbstractKeyboardView$OnKeyboardActionListener;)V

    goto/16 :goto_4

    :cond_55
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/ime/framework/inputmode/InputModeManager;->isVOHWRmodeEnable()Z

    move-result v24

    if-eqz v24, :cond_59

    const-string v24, "SamsungIME"

    const-string v25, "---1---isVOHWRmodeEnable"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v24, 0x8

    move/from16 v0, v24

    if-ne v13, v0, :cond_57

    const/16 v24, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/ime/framework/view/AbstractViewController;->getCurrentPopupKeyboard(Z)Lcom/ime/framework/view/DefaultKeyboard;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mCurrentViewFloating:Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v15}, Lcom/ime/framework/view/AbstractKeyboardView;->setKeyboard(Lcom/ime/framework/view/DefaultKeyboard;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mCurrentViewLeft:Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/ime/framework/view/AbstractViewController;->getCurrentPopupKeyboard(Z)Lcom/ime/framework/view/DefaultKeyboard;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lcom/ime/framework/view/AbstractKeyboardView;->setKeyboard(Lcom/ime/framework/view/DefaultKeyboard;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mCurrentViewRight:Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/ime/framework/view/AbstractViewController;->getCurrentPopupKeyboard(Z)Lcom/ime/framework/view/DefaultKeyboard;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lcom/ime/framework/view/AbstractKeyboardView;->setKeyboard(Lcom/ime/framework/view/DefaultKeyboard;)V

    new-instance v16, Lcom/ime/framework/view/event/KeyboardActionListener;

    invoke-direct/range {v16 .. v16}, Lcom/ime/framework/view/event/KeyboardActionListener;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mCurrentViewLeft:Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/ime/framework/view/AbstractKeyboardView;->setOnKeyboardActionListener(Lcom/ime/framework/view/AbstractKeyboardView$OnKeyboardActionListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mCurrentViewRight:Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/ime/framework/view/AbstractKeyboardView;->setOnKeyboardActionListener(Lcom/ime/framework/view/AbstractKeyboardView$OnKeyboardActionListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mCurrentViewFloating:Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/ime/framework/view/AbstractKeyboardView;->setOnKeyboardActionListener(Lcom/ime/framework/view/AbstractKeyboardView$OnKeyboardActionListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-interface {v0, v15}, Lcom/ime/framework/common/InputManager;->setKeyboard(Lcom/ime/framework/view/Keyboard;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Lcom/ime/framework/common/InputManager;->isEmoticonMode()Z

    move-result v24

    if-eqz v24, :cond_56

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mVOHWRKeypadView:Landroid/widget/FrameLayout;

    move-object/from16 v25, v0

    invoke-interface/range {v24 .. v25}, Lcom/ime/framework/common/InputManager;->initHwrPanel(Landroid/widget/FrameLayout;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/ime/framework/view/AbstractViewController;->getCandiateView(Z)Landroid/view/View;

    move-result-object v25

    invoke-interface/range {v24 .. v25}, Lcom/ime/framework/common/InputManager;->setCandidateView(Landroid/view/View;)V

    new-instance v24, Lcom/ime/framework/view/PopupKeyboardView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Lcom/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v25

    invoke-direct/range {v24 .. v25}, Lcom/ime/framework/view/PopupKeyboardView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ime/framework/view/AbstractViewController;->mPopupKeyboardView:Lcom/ime/framework/view/PopupKeyboardView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mPopupKeyboardView:Lcom/ime/framework/view/PopupKeyboardView;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mCurrentViewLeft:Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mCurrentViewRight:Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mCurrentLayout:Landroid/widget/LinearLayout;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mCandidateView:Lcom/ime/framework/view/candidate/AbstractCandidateView;

    move-object/from16 v28, v0

    invoke-virtual/range {v24 .. v28}, Lcom/ime/framework/view/PopupKeyboardView;->init(Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mCurrentLayout:Landroid/widget/LinearLayout;

    move-object/from16 v24, v0

    const v25, 0x7f100059

    invoke-virtual/range {v24 .. v25}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/ime/framework/view/AbstractKeyboardView;

    goto/16 :goto_4

    :cond_56
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mVOHWRKeypadView:Landroid/widget/FrameLayout;

    move-object/from16 v25, v0

    invoke-interface/range {v24 .. v25}, Lcom/ime/framework/common/InputManager;->initHwrPanel(Landroid/widget/FrameLayout;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/ime/framework/view/AbstractViewController;->getCandiateView(Z)Landroid/view/View;

    move-result-object v25

    invoke-interface/range {v24 .. v25}, Lcom/ime/framework/common/InputManager;->setCandidateView(Landroid/view/View;)V

    new-instance v24, Lcom/ime/framework/view/PopupKeyboardView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Lcom/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v25

    invoke-direct/range {v24 .. v25}, Lcom/ime/framework/view/PopupKeyboardView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ime/framework/view/AbstractViewController;->mPopupKeyboardView:Lcom/ime/framework/view/PopupKeyboardView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mPopupKeyboardView:Lcom/ime/framework/view/PopupKeyboardView;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mCurrentViewLeft:Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mCurrentViewRight:Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mVOHWRKeypadView:Landroid/widget/FrameLayout;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mCandidateView:Lcom/ime/framework/view/candidate/AbstractCandidateView;

    move-object/from16 v28, v0

    invoke-virtual/range {v24 .. v28}, Lcom/ime/framework/view/PopupKeyboardView;->init(Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mVOHWRKeypadView:Landroid/widget/FrameLayout;

    move-object/from16 v24, v0

    const v25, 0x7f100059

    invoke-virtual/range {v24 .. v25}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/ime/framework/view/AbstractKeyboardView;->mWindowHeight:I

    move/from16 v24, v0

    const/16 v25, 0x780

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/ime/framework/view/AbstractKeyboardView;->mWindowWidth:I

    move/from16 v24, v0

    const/16 v25, 0x438

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    invoke-virtual/range {v24 .. v28}, Lcom/ime/framework/view/AbstractKeyboardView;->setPadding(IIII)V

    goto/16 :goto_4

    :cond_57
    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/view/AbstractViewController;->getCurrentKeyboard()Lcom/ime/framework/view/DefaultKeyboard;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v7}, Lcom/ime/framework/view/AbstractKeyboardView;->setKeyboard(Lcom/ime/framework/view/DefaultKeyboard;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-interface {v0, v7}, Lcom/ime/framework/common/InputManager;->setKeyboard(Lcom/ime/framework/view/Keyboard;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v24, v0

    invoke-virtual {v7}, Lcom/ime/framework/view/DefaultKeyboard;->getMinWidth()I

    move-result v25

    invoke-virtual {v7}, Lcom/ime/framework/view/DefaultKeyboard;->getHeight()I

    move-result v26

    invoke-interface/range {v24 .. v26}, Lcom/ime/framework/common/InputManager;->setKeyboardSize(II)V

    new-instance v16, Lcom/ime/framework/view/event/KeyboardActionListener;

    invoke-direct/range {v16 .. v16}, Lcom/ime/framework/view/event/KeyboardActionListener;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/ime/framework/view/AbstractKeyboardView;->setOnKeyboardActionListener(Lcom/ime/framework/view/AbstractKeyboardView$OnKeyboardActionListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/ime/framework/view/AbstractKeyboardView;->mWindowHeight:I

    move/from16 v24, v0

    const/16 v25, 0x780

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_58

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/ime/framework/view/AbstractKeyboardView;->mWindowWidth:I

    move/from16 v24, v0

    const/16 v25, 0x438

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_58

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    invoke-virtual/range {v24 .. v28}, Lcom/ime/framework/view/AbstractKeyboardView;->setPadding(IIII)V

    :cond_58
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mVOHWRKeypadView:Landroid/widget/FrameLayout;

    move-object/from16 v25, v0

    invoke-interface/range {v24 .. v25}, Lcom/ime/framework/common/InputManager;->initHwrPanel(Landroid/widget/FrameLayout;)V

    goto/16 :goto_4

    :cond_59
    if-eqz v14, :cond_5d

    const/16 v24, 0x7

    move/from16 v0, v24

    if-eq v13, v0, :cond_5a

    const/16 v24, 0x8

    move/from16 v0, v24

    if-ne v13, v0, :cond_5d

    :cond_5a
    const/16 v24, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/ime/framework/view/AbstractViewController;->getCurrentPopupKeyboard(Z)Lcom/ime/framework/view/DefaultKeyboard;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mCurrentViewFloating:Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v15}, Lcom/ime/framework/view/AbstractKeyboardView;->setKeyboard(Lcom/ime/framework/view/DefaultKeyboard;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mCurrentViewLeft:Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/ime/framework/view/AbstractViewController;->getCurrentPopupKeyboard(Z)Lcom/ime/framework/view/DefaultKeyboard;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lcom/ime/framework/view/AbstractKeyboardView;->setKeyboard(Lcom/ime/framework/view/DefaultKeyboard;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mCurrentViewRight:Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/ime/framework/view/AbstractViewController;->getCurrentPopupKeyboard(Z)Lcom/ime/framework/view/DefaultKeyboard;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lcom/ime/framework/view/AbstractKeyboardView;->setKeyboard(Lcom/ime/framework/view/DefaultKeyboard;)V

    new-instance v16, Lcom/ime/framework/view/event/KeyboardActionListener;

    invoke-direct/range {v16 .. v16}, Lcom/ime/framework/view/event/KeyboardActionListener;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mCurrentViewLeft:Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/ime/framework/view/AbstractKeyboardView;->setOnKeyboardActionListener(Lcom/ime/framework/view/AbstractKeyboardView$OnKeyboardActionListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mCurrentViewRight:Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/ime/framework/view/AbstractKeyboardView;->setOnKeyboardActionListener(Lcom/ime/framework/view/AbstractKeyboardView$OnKeyboardActionListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mCurrentViewFloating:Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/ime/framework/view/AbstractKeyboardView;->setOnKeyboardActionListener(Lcom/ime/framework/view/AbstractKeyboardView$OnKeyboardActionListener;)V

    const/16 v24, 0x7

    move/from16 v0, v24

    if-ne v13, v0, :cond_5b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v24, v0

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/view/AbstractViewController;->getCurrentKeyboard()Lcom/ime/framework/view/DefaultKeyboard;

    move-result-object v25

    invoke-interface/range {v24 .. v25}, Lcom/ime/framework/common/InputManager;->setKeyboard(Lcom/ime/framework/view/Keyboard;)V

    :goto_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/ime/framework/view/AbstractViewController;->getCandiateView(Z)Landroid/view/View;

    move-result-object v25

    invoke-interface/range {v24 .. v25}, Lcom/ime/framework/common/InputManager;->setCandidateView(Landroid/view/View;)V

    new-instance v24, Lcom/ime/framework/view/PopupKeyboardView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Lcom/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v25

    invoke-direct/range {v24 .. v25}, Lcom/ime/framework/view/PopupKeyboardView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ime/framework/view/AbstractViewController;->mPopupKeyboardView:Lcom/ime/framework/view/PopupKeyboardView;

    const/16 v24, 0x8

    move/from16 v0, v24

    if-ne v13, v0, :cond_5c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mPopupKeyboardView:Lcom/ime/framework/view/PopupKeyboardView;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mCurrentViewLeft:Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mCurrentViewRight:Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mFloatingPhonepadView:Landroid/widget/FrameLayout;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mCandidateView:Lcom/ime/framework/view/candidate/AbstractCandidateView;

    move-object/from16 v28, v0

    invoke-virtual/range {v24 .. v28}, Lcom/ime/framework/view/PopupKeyboardView;->init(Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    goto/16 :goto_4

    :cond_5b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mCurrentViewFloating:Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/ime/framework/view/AbstractKeyboardView;->getFloatingKeyboardWidth()I

    move-result v24

    move/from16 v0, v24

    invoke-virtual {v15, v0}, Lcom/ime/framework/view/DefaultKeyboard;->setWidth(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-interface {v0, v15}, Lcom/ime/framework/common/InputManager;->setKeyboard(Lcom/ime/framework/view/Keyboard;)V

    goto :goto_11

    :cond_5c
    const/16 v24, 0x7

    move/from16 v0, v24

    if-ne v13, v0, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mPopupKeyboardView:Lcom/ime/framework/view/PopupKeyboardView;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mSplitLeftView:Landroid/widget/FrameLayout;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mSplitRightView:Landroid/widget/FrameLayout;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mCurrentViewFloating:Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mCandidateView:Lcom/ime/framework/view/candidate/AbstractCandidateView;

    move-object/from16 v28, v0

    invoke-virtual/range {v24 .. v28}, Lcom/ime/framework/view/PopupKeyboardView;->init(Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    goto/16 :goto_4

    :cond_5d
    if-eqz v22, :cond_5e

    if-eqz v23, :cond_5e

    const/16 v24, 0x4

    move/from16 v0, v24

    if-ne v13, v0, :cond_5e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mFullScreenHwrKeyboardView:Lcom/ime/framework/view/FullScreenHwrKeyboardView;

    move-object/from16 v24, v0

    if-eqz v24, :cond_5e

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/view/AbstractViewController;->getCurrentKeyboard()Lcom/ime/framework/view/DefaultKeyboard;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mFullScreenHwrKeyboardView:Lcom/ime/framework/view/FullScreenHwrKeyboardView;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v7}, Lcom/ime/framework/view/FullScreenHwrKeyboardView;->setKeyboard(Lcom/ime/framework/view/DefaultKeyboard;)V

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/view/AbstractViewController;->getFullHwrKeyboard()Lcom/ime/framework/view/DefaultKeyboard;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mCurrnetViewFullHwrPanel:Lcom/ime/framework/view/FullScreenHwrPanelView;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Lcom/ime/framework/view/FullScreenHwrPanelView;->setKeyboard(Lcom/ime/framework/view/DefaultKeyboard;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mFullScreenHwrKeyboardView:Lcom/ime/framework/view/FullScreenHwrKeyboardView;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mCurrnetViewFullHwrPanel:Lcom/ime/framework/view/FullScreenHwrPanelView;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Lcom/ime/framework/view/FullScreenHwrKeyboardView;->init(Lcom/ime/framework/view/FullScreenHwrPanelView;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-interface {v0, v7}, Lcom/ime/framework/common/InputManager;->setKeyboard(Lcom/ime/framework/view/Keyboard;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v24, v0

    invoke-virtual {v7}, Lcom/ime/framework/view/DefaultKeyboard;->getMinWidth()I

    move-result v25

    invoke-virtual {v7}, Lcom/ime/framework/view/DefaultKeyboard;->getHeight()I

    move-result v26

    invoke-interface/range {v24 .. v26}, Lcom/ime/framework/common/InputManager;->setKeyboardSize(II)V

    new-instance v16, Lcom/ime/framework/view/event/KeyboardActionListener;

    invoke-direct/range {v16 .. v16}, Lcom/ime/framework/view/event/KeyboardActionListener;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mFullScreenHwrKeyboardView:Lcom/ime/framework/view/FullScreenHwrKeyboardView;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/ime/framework/view/FullScreenHwrKeyboardView;->setOnKeyboardActionListener(Lcom/ime/framework/view/AbstractKeyboardView$OnKeyboardActionListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mCurrnetViewFullHwrPanel:Lcom/ime/framework/view/FullScreenHwrPanelView;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    instance-of v0, v0, Lcom/ime/framework/view/AbstractHwrKeyboardView;

    move/from16 v24, v0

    if-eqz v24, :cond_18

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/ime/framework/view/AbstractViewController;->mCurrnetViewFullHwrPanel:Lcom/ime/framework/view/FullScreenHwrPanelView;

    new-instance v10, Lcom/ime/framework/view/event/HwrActionListener;

    invoke-direct {v10}, Lcom/ime/framework/view/event/HwrActionListener;-><init>()V

    invoke-virtual {v11, v10}, Lcom/ime/framework/view/AbstractHwrKeyboardView;->setHwrActionListener(Lcom/ime/framework/view/event/HwrActionListener;)V

    invoke-virtual {v11}, Lcom/ime/framework/view/AbstractHwrKeyboardView;->getHwrRectArea()Landroid/graphics/Rect;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v24, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v25, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v26, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v27, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v28, v0

    invoke-interface/range {v24 .. v28}, Lcom/ime/framework/common/InputManager;->setHwrPanelRect(IIII)V

    goto/16 :goto_4

    :cond_5e
    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/view/AbstractViewController;->getCurrentKeyboard()Lcom/ime/framework/view/DefaultKeyboard;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v24, v0

    if-eqz v24, :cond_5f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v7}, Lcom/ime/framework/view/AbstractKeyboardView;->setKeyboard(Lcom/ime/framework/view/DefaultKeyboard;)V

    :cond_5f
    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/view/AbstractViewController;->isEnableOneHandKeypad()Z

    move-result v24

    if-eqz v24, :cond_60

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v24, v0

    if-eqz v24, :cond_60

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mCurrentLayout:Landroid/widget/LinearLayout;

    move-object/from16 v24, v0

    if-eqz v24, :cond_60

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mOneHandLeftViewLayout:Landroid/widget/LinearLayout;

    move-object/from16 v24, v0

    if-eqz v24, :cond_60

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mOneHandRightViewLayout:Landroid/widget/LinearLayout;

    move-object/from16 v24, v0

    if-eqz v24, :cond_60

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mOneHandLeftViewLayout:Landroid/widget/LinearLayout;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mOneHandRightViewLayout:Landroid/widget/LinearLayout;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/ime/framework/view/AbstractKeyboardView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Lcom/ime/framework/view/AbstractKeyboardView;->getOneHandLeftRightViewWidth(Z)I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, v19

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Lcom/ime/framework/view/AbstractKeyboardView;->getOneHandLeftRightViewWidth(Z)I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, v20

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    move-object/from16 v24, v20

    check-cast v24, Landroid/view/ViewGroup$MarginLayoutParams;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/ime/framework/view/AbstractKeyboardView;->getOneHandLeftRightViewHorizontalGapArrow()I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/ime/framework/view/AbstractKeyboardView;->getOneHandKeyboardViewWidth()I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, v17

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mOneHandLeftViewLayout:Landroid/widget/LinearLayout;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mOneHandRightViewLayout:Landroid/widget/LinearLayout;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/ime/framework/view/AbstractKeyboardView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_60
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-interface {v0, v7}, Lcom/ime/framework/common/InputManager;->setKeyboard(Lcom/ime/framework/view/Keyboard;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v24, v0

    invoke-virtual {v7}, Lcom/ime/framework/view/DefaultKeyboard;->getMinWidth()I

    move-result v25

    invoke-virtual {v7}, Lcom/ime/framework/view/DefaultKeyboard;->getHeight()I

    move-result v26

    invoke-interface/range {v24 .. v26}, Lcom/ime/framework/common/InputManager;->setKeyboardSize(II)V

    new-instance v16, Lcom/ime/framework/view/event/KeyboardActionListener;

    invoke-direct/range {v16 .. v16}, Lcom/ime/framework/view/event/KeyboardActionListener;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v24, v0

    if-eqz v24, :cond_61

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/ime/framework/view/AbstractKeyboardView;->setOnKeyboardActionListener(Lcom/ime/framework/view/AbstractKeyboardView$OnKeyboardActionListener;)V

    :cond_61
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    instance-of v0, v0, Lcom/ime/framework/view/AbstractHwrKeyboardView;

    move/from16 v24, v0

    if-eqz v24, :cond_18

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/ime/framework/view/AbstractKeyboardView;

    check-cast v11, Lcom/ime/framework/view/AbstractHwrKeyboardView;

    new-instance v10, Lcom/ime/framework/view/event/HwrActionListener;

    invoke-direct {v10}, Lcom/ime/framework/view/event/HwrActionListener;-><init>()V

    invoke-virtual {v11, v10}, Lcom/ime/framework/view/AbstractHwrKeyboardView;->setHwrActionListener(Lcom/ime/framework/view/event/HwrActionListener;)V

    invoke-virtual {v11}, Lcom/ime/framework/view/AbstractHwrKeyboardView;->getHwrRectArea()Landroid/graphics/Rect;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v24, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v25, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v26, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v27, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v28, v0

    invoke-interface/range {v24 .. v28}, Lcom/ime/framework/common/InputManager;->setHwrPanelRect(IIII)V

    goto/16 :goto_4

    :cond_62
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Lcom/ime/framework/common/InputManager;->isEmoticonMode()Z

    move-result v24

    if-eqz v24, :cond_63

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mCurrentLayout:Landroid/widget/LinearLayout;

    move-object/from16 v24, v0

    goto/16 :goto_5

    :cond_63
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Lcom/ime/framework/common/InputManager;->isDragonVoiceMode()Z

    move-result v24

    if-eqz v24, :cond_64

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mCurrentFrameLayout:Landroid/widget/FrameLayout;

    move-object/from16 v24, v0

    goto/16 :goto_5

    :cond_64
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/ime/framework/inputmode/InputModeManager;->isHandwriteFSMode()Z

    move-result v24

    if-eqz v24, :cond_65

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v24, v0

    goto/16 :goto_5

    :cond_65
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/ime/framework/inputmode/InputModeManager;->isHanwriteBoxMode()Z

    move-result v24

    if-eqz v24, :cond_69

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mBoxHWLayout:Landroid/widget/FrameLayout;

    move-object/from16 v24, v0

    goto/16 :goto_5

    :cond_66
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/ime/framework/inputmode/InputModeManager;->isVOHWRmodeEnable()Z

    move-result v24

    if-eqz v24, :cond_69

    const/16 v24, 0x8

    move/from16 v0, v24

    if-ne v13, v0, :cond_67

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/ime/framework/inputmode/InputModeManager;->isFloatingHWRKeyboard()Z

    move-result v24

    if-eqz v24, :cond_67

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mPopupKeyboardView:Lcom/ime/framework/view/PopupKeyboardView;

    move-object/from16 v24, v0

    if-eqz v24, :cond_67

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mPopupKeyboardView:Lcom/ime/framework/view/PopupKeyboardView;

    move-object/from16 v24, v0

    goto/16 :goto_5

    :cond_67
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Lcom/ime/framework/common/InputManager;->isEmoticonMode()Z

    move-result v24

    if-eqz v24, :cond_68

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mCurrentLayout:Landroid/widget/LinearLayout;

    move-object/from16 v24, v0

    goto/16 :goto_5

    :cond_68
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mVOHWRKeypadView:Landroid/widget/FrameLayout;

    move-object/from16 v24, v0

    goto/16 :goto_5

    :cond_69
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Lcom/ime/framework/common/InputManager;->isDragonVoiceMode()Z

    move-result v24

    if-eqz v24, :cond_6b

    const/16 v24, 0x8

    move/from16 v0, v24

    if-ne v13, v0, :cond_6a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mPopupKeyboardView:Lcom/ime/framework/view/PopupKeyboardView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/ime/framework/view/PopupKeyboardView;->getFloatingView()Landroid/view/View;

    move-result-object v24

    check-cast v24, Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mPopupKeyboardView:Lcom/ime/framework/view/PopupKeyboardView;

    move-object/from16 v24, v0

    goto/16 :goto_5

    :cond_6a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mCurrentFrameLayout:Landroid/widget/FrameLayout;

    move-object/from16 v24, v0

    goto/16 :goto_5

    :cond_6b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Lcom/ime/framework/common/InputManager;->isEmoticonMode()Z

    move-result v24

    if-nez v24, :cond_6f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Lcom/ime/framework/common/InputManager;->isChineseLanguageMode()Z

    move-result v24

    if-eqz v24, :cond_6f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Lcom/ime/framework/common/InputManager;->isCurrentCarModeKnobSIP()Z

    move-result v24

    if-nez v24, :cond_6f

    invoke-static {}, Lcom/ime/framework/repository/KeyboardStatus;->isPhoneticSpellLayout()Z

    move-result v24

    if-eqz v24, :cond_6f

    const/16 v24, 0x1

    move/from16 v0, v24

    if-eq v13, v0, :cond_6c

    if-nez v13, :cond_6f

    :cond_6c
    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/view/AbstractViewController;->isEnableOneHandKeypad()Z

    move-result v24

    if-nez v24, :cond_6e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mCurrentLayout:Landroid/widget/LinearLayout;

    move-object/from16 v24, v0

    if-eqz v24, :cond_6d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mCurrentLayout:Landroid/widget/LinearLayout;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mPhonepadView:Landroid/widget/FrameLayout;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    :cond_6d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mPhonepadView:Landroid/widget/FrameLayout;

    move-object/from16 v24, v0

    goto/16 :goto_5

    :cond_6e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mCurrentLayout:Landroid/widget/LinearLayout;

    move-object/from16 v24, v0

    goto/16 :goto_5

    :cond_6f
    const/16 v24, 0x7

    move/from16 v0, v24

    if-eq v13, v0, :cond_70

    const/16 v24, 0x8

    move/from16 v0, v24

    if-ne v13, v0, :cond_73

    :cond_70
    const/16 v24, 0x8

    move/from16 v0, v24

    if-ne v13, v0, :cond_72

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Lcom/ime/framework/common/InputManager;->isMultiwindowPhone()Z

    move-result v24

    if-nez v24, :cond_71

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/ime/framework/view/AbstractViewController;->mIsTabletMode:Z

    move/from16 v24, v0

    if-eqz v24, :cond_72

    :cond_71
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mPopupKeyboardView:Lcom/ime/framework/view/PopupKeyboardView;

    move-object/from16 v24, v0

    if-eqz v24, :cond_72

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mPopupKeyboardView:Lcom/ime/framework/view/PopupKeyboardView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/ime/framework/view/PopupKeyboardView;->getFloatingView()Landroid/view/View;

    move-result-object v24

    check-cast v24, Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/ime/framework/view/AbstractKeyboardView;

    :cond_72
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mPopupKeyboardView:Lcom/ime/framework/view/PopupKeyboardView;

    move-object/from16 v24, v0

    goto/16 :goto_5

    :cond_73
    if-eqz v22, :cond_74

    if-eqz v23, :cond_74

    const/16 v24, 0x4

    move/from16 v0, v24

    if-ne v13, v0, :cond_74

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mFullScreenHwrKeyboardView:Lcom/ime/framework/view/FullScreenHwrKeyboardView;

    move-object/from16 v24, v0

    goto/16 :goto_5

    :cond_74
    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/view/AbstractViewController;->isEnableOneHandKeypad()Z

    move-result v24

    if-nez v24, :cond_77

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Lcom/ime/framework/common/InputManager;->isEmoticonMode()Z

    move-result v24

    if-nez v24, :cond_77

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Lcom/ime/framework/common/InputManager;->isFullLandMode()Z

    move-result v24

    if-eqz v24, :cond_75

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mCurrentLayout:Landroid/widget/LinearLayout;

    move-object/from16 v24, v0

    goto/16 :goto_5

    :cond_75
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mCurrentLayout:Landroid/widget/LinearLayout;

    move-object/from16 v24, v0

    if-eqz v24, :cond_76

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mCurrentLayout:Landroid/widget/LinearLayout;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    :cond_76
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v24, v0

    goto/16 :goto_5

    :cond_77
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Lcom/ime/framework/common/InputManager;->isChineseLanguageMode()Z

    move-result v24

    if-nez v24, :cond_78

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Lcom/ime/framework/common/InputManager;->isEmoticonMode()Z

    move-result v24

    if-nez v24, :cond_78

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mCurrentFrameLayout:Landroid/widget/FrameLayout;

    move-object/from16 v24, v0

    if-eqz v24, :cond_78

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mCurrentFrameLayout:Landroid/widget/FrameLayout;

    move-object/from16 v24, v0

    goto/16 :goto_5

    :cond_78
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Lcom/ime/framework/common/InputManager;->isEmoticonMode()Z

    move-result v24

    if-eqz v24, :cond_79

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/view/AbstractViewController;->isEnableOneHandKeypad()Z

    move-result v24

    if-eqz v24, :cond_79

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mCurrentFrameLayout:Landroid/widget/FrameLayout;

    move-object/from16 v24, v0

    if-eqz v24, :cond_79

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mCurrentFrameLayout:Landroid/widget/FrameLayout;

    move-object/from16 v24, v0

    goto/16 :goto_5

    :cond_79
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mCurrentLayout:Landroid/widget/LinearLayout;

    move-object/from16 v24, v0

    goto/16 :goto_5
.end method


# virtual methods
.method public changeInputMode(I)V
    .locals 0

    invoke-virtual {p0}, Lcom/ime/framework/view/AbstractViewController;->dismissPopupKeyboard()V

    invoke-static {p1}, Lcom/ime/framework/repository/InputModeStatus;->setInputMethodStatus(I)V

    invoke-virtual {p0}, Lcom/ime/framework/view/AbstractViewController;->updateKeyboard()V

    return-void
.end method

.method public changeValidSymbolsPage(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/ime/framework/view/AbstractViewController;->setSymbolPage(I)V

    return-void
.end method

.method public checkEnableOneHandKeypad()V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v2, 0x1

    if-nez v2, :cond_0

    iput-boolean v5, p0, Lcom/ime/framework/view/AbstractViewController;->mEnableOneHandKeypad:Z

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/sec/android/inputmethod/accessibility/AccessibilityMagnificationCompat;->isEnabledMagnification()Z

    move-result v3

    if-eqz v3, :cond_1

    iput-boolean v5, p0, Lcom/ime/framework/view/AbstractViewController;->mEnableOneHandKeypad:Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    iget-object v4, p0, Lcom/ime/framework/view/AbstractViewController;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/ime/framework/common/InputManager;->getSystemOneHandOperationSettingValue()I

    move-result v4

    if-ne v4, v6, :cond_2

    const/4 v0, 0x1

    :cond_2
    iget-object v4, p0, Lcom/ime/framework/view/AbstractViewController;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/ime/framework/common/InputManager;->isOrientationLandscape()Z

    move-result v1

    if-eqz v0, :cond_3

    if-nez v1, :cond_3

    iput-boolean v6, p0, Lcom/ime/framework/view/AbstractViewController;->mEnableOneHandKeypad:Z

    goto :goto_0

    :cond_3
    iput-boolean v5, p0, Lcom/ime/framework/view/AbstractViewController;->mEnableOneHandKeypad:Z

    goto :goto_0
.end method

.method public clearEmoticonCacheView()V
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/view/AbstractViewController;->mEmoticonScrollLayout:Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/view/AbstractViewController;->mEmoticonScrollLayout:Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;

    invoke-virtual {v0}, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;->clearEmoticonCacheView()V

    :cond_0
    return-void
.end method

.method public clearLastestEmoticonList()V
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/view/AbstractViewController;->mEmoticonScrollLayout:Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/view/AbstractViewController;->mEmoticonScrollLayout:Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;

    invoke-virtual {v0}, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;->clearLastestEmoticonList()V

    :cond_0
    return-void
.end method

.method public closeEmoticonView()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/ime/framework/view/AbstractViewController;->mPopupKeyboardView:Lcom/ime/framework/view/PopupKeyboardView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/view/AbstractViewController;->mPopupKeyboardView:Lcom/ime/framework/view/PopupKeyboardView;

    invoke-virtual {v0}, Lcom/ime/framework/view/PopupKeyboardView;->hideKeyboard()V

    iput-object v2, p0, Lcom/ime/framework/view/AbstractViewController;->mPopupKeyboardView:Lcom/ime/framework/view/PopupKeyboardView;

    iget-object v0, p0, Lcom/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ime/framework/inputmode/InputModeManager;->setNeedUpdateKeyboardView(Z)V

    :cond_0
    iget-object v0, p0, Lcom/ime/framework/view/AbstractViewController;->mEmoticonScrollLayout:Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ime/framework/view/AbstractViewController;->mEmoticonScrollLayout:Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;

    invoke-virtual {v0}, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;->saveLatestEmoticonList()V

    iget-object v0, p0, Lcom/ime/framework/view/AbstractViewController;->mEmoticonScrollLayout:Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;

    invoke-virtual {v0}, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;->removeAllViews()V

    iput-object v2, p0, Lcom/ime/framework/view/AbstractViewController;->mEmoticonScrollLayout:Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;

    :cond_1
    iget-object v0, p0, Lcom/ime/framework/view/AbstractViewController;->mCurrentLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ime/framework/view/AbstractViewController;->mCurrentLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    iput-object v2, p0, Lcom/ime/framework/view/AbstractViewController;->mCurrentLayout:Landroid/widget/LinearLayout;

    :cond_2
    return-void
.end method

.method public closeView()V
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/view/AbstractViewController;->mCandidateView:Lcom/ime/framework/view/candidate/AbstractCandidateView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/view/AbstractViewController;->mCandidateView:Lcom/ime/framework/view/candidate/AbstractCandidateView;

    invoke-virtual {v0}, Lcom/ime/framework/view/candidate/AbstractCandidateView;->dismissExpandPopup()V

    :cond_0
    iget-object v0, p0, Lcom/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/ime/framework/view/AbstractKeyboardView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v0}, Lcom/ime/framework/view/AbstractKeyboardView;->closeKeyboardView()V

    :cond_1
    iget-object v0, p0, Lcom/ime/framework/view/AbstractViewController;->mCurrentViewLeft:Lcom/ime/framework/view/AbstractKeyboardView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ime/framework/view/AbstractViewController;->mCurrentViewLeft:Lcom/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v0}, Lcom/ime/framework/view/AbstractKeyboardView;->closeKeyboardView()V

    :cond_2
    iget-object v0, p0, Lcom/ime/framework/view/AbstractViewController;->mCurrentViewRight:Lcom/ime/framework/view/AbstractKeyboardView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/ime/framework/view/AbstractViewController;->mCurrentViewRight:Lcom/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v0}, Lcom/ime/framework/view/AbstractKeyboardView;->closeKeyboardView()V

    :cond_3
    iget-object v0, p0, Lcom/ime/framework/view/AbstractViewController;->mCurrentViewFloating:Lcom/ime/framework/view/AbstractKeyboardView;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/ime/framework/view/AbstractViewController;->mCurrentViewFloating:Lcom/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v0}, Lcom/ime/framework/view/AbstractKeyboardView;->closeKeyboardView()V

    :cond_4
    iget-object v0, p0, Lcom/ime/framework/view/AbstractViewController;->mTipsDialog:Lcom/ime/framework/view/TipsDialog;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/ime/framework/view/AbstractViewController;->mTipsDialog:Lcom/ime/framework/view/TipsDialog;

    invoke-virtual {v0}, Lcom/ime/framework/view/TipsDialog;->dismissAllDialog()V

    :cond_5
    return-void
.end method

.method public closeVoiceView()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/ime/framework/view/AbstractViewController;->mCurrentFrameLayout:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/view/AbstractViewController;->mCurrentFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    iput-object v1, p0, Lcom/ime/framework/view/AbstractViewController;->mCurrentFrameLayout:Landroid/widget/FrameLayout;

    :cond_0
    iget-object v0, p0, Lcom/ime/framework/view/AbstractViewController;->mMicEffectView:Lcom/dragon/android/voiceime/ui/MicEffectView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ime/framework/view/AbstractViewController;->mMicEffectView:Lcom/dragon/android/voiceime/ui/MicEffectView;

    invoke-virtual {v0}, Lcom/dragon/android/voiceime/ui/MicEffectView;->destroy()V

    iput-object v1, p0, Lcom/ime/framework/view/AbstractViewController;->mMicEffectView:Lcom/dragon/android/voiceime/ui/MicEffectView;

    :cond_1
    return-void
.end method

.method public createPopupCandidateView()V
    .locals 0

    return-void
.end method

.method public deallocateMem()V
    .locals 3

    iget-object v1, p0, Lcom/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/ime/framework/view/AbstractKeyboardView;

    if-eqz v1, :cond_0

    const-string v1, "SamsungIME"

    const-string v2, "deallocateMem"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v1}, Lcom/ime/framework/view/AbstractKeyboardView;->deallocateMemory()V

    iget-object v1, p0, Lcom/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v1}, Lcom/ime/framework/view/AbstractKeyboardView;->getMiniKeyboard()Lcom/ime/framework/view/AbstractKeyboardView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v1}, Lcom/ime/framework/view/AbstractKeyboardView;->isMiniKeyboardOnScreen()Z

    move-result v1

    if-eqz v1, :cond_0

    instance-of v1, v0, Lcom/ime/framework/view/AbstractKeyboardView;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v0}, Lcom/ime/framework/view/AbstractKeyboardView;->deallocateMemory()V

    :cond_0
    return-void
.end method

.method public dismissAllDialog()V
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/view/AbstractViewController;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->isChnMode()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/ime/framework/view/AbstractViewController;->isToobarPopupWindowShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/view/AbstractViewController;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_0
    iget-object v0, p0, Lcom/ime/framework/view/AbstractViewController;->mCandidateView:Lcom/ime/framework/view/candidate/AbstractCandidateView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ime/framework/view/AbstractViewController;->mCandidateView:Lcom/ime/framework/view/candidate/AbstractCandidateView;

    invoke-virtual {v0}, Lcom/ime/framework/view/candidate/AbstractCandidateView;->getCandidateLayout()Lcom/ime/framework/view/candidate/AbstractCandidateLayout;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ime/framework/view/AbstractViewController;->mCandidateView:Lcom/ime/framework/view/candidate/AbstractCandidateView;

    invoke-virtual {v0}, Lcom/ime/framework/view/candidate/AbstractCandidateView;->getCandidateLayout()Lcom/ime/framework/view/candidate/AbstractCandidateLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->hideContactDialog()V

    :cond_1
    iget-object v0, p0, Lcom/ime/framework/view/AbstractViewController;->mTipsDialog:Lcom/ime/framework/view/TipsDialog;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ime/framework/view/AbstractViewController;->mTipsDialog:Lcom/ime/framework/view/TipsDialog;

    invoke-virtual {v0}, Lcom/ime/framework/view/TipsDialog;->dismissAllDialog()V

    :cond_2
    return-void
.end method

.method public dismissPopupCandidate()V
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/view/AbstractViewController;->mCandidateView:Lcom/ime/framework/view/candidate/AbstractCandidateView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/view/AbstractViewController;->mCandidateView:Lcom/ime/framework/view/candidate/AbstractCandidateView;

    invoke-virtual {v0}, Lcom/ime/framework/view/candidate/AbstractCandidateView;->dismissExpandPopup()V

    :cond_0
    return-void
.end method

.method public dismissPopupKeyboard()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/ime/framework/view/AbstractKeyboardView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v0}, Lcom/ime/framework/view/AbstractKeyboardView;->dismissPopupKeyboard()V

    :cond_0
    iget-object v0, p0, Lcom/ime/framework/view/AbstractViewController;->mCurrentViewLeft:Lcom/ime/framework/view/AbstractKeyboardView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ime/framework/view/AbstractViewController;->mCurrentViewLeft:Lcom/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v0}, Lcom/ime/framework/view/AbstractKeyboardView;->dismissPopupKeyboard()V

    iget-object v0, p0, Lcom/ime/framework/view/AbstractViewController;->mCurrentViewLeft:Lcom/ime/framework/view/AbstractKeyboardView;

    iput-boolean v1, v0, Lcom/ime/framework/view/AbstractKeyboardView;->mMiniKeyboardOnScreen:Z

    :cond_1
    iget-object v0, p0, Lcom/ime/framework/view/AbstractViewController;->mCurrentViewRight:Lcom/ime/framework/view/AbstractKeyboardView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ime/framework/view/AbstractViewController;->mCurrentViewRight:Lcom/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v0}, Lcom/ime/framework/view/AbstractKeyboardView;->dismissPopupKeyboard()V

    iget-object v0, p0, Lcom/ime/framework/view/AbstractViewController;->mCurrentViewRight:Lcom/ime/framework/view/AbstractKeyboardView;

    iput-boolean v1, v0, Lcom/ime/framework/view/AbstractKeyboardView;->mMiniKeyboardOnScreen:Z

    :cond_2
    iget-object v0, p0, Lcom/ime/framework/view/AbstractViewController;->mCurrentViewFloating:Lcom/ime/framework/view/AbstractKeyboardView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/ime/framework/view/AbstractViewController;->mCurrentViewFloating:Lcom/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v0}, Lcom/ime/framework/view/AbstractKeyboardView;->dismissPopupKeyboard()V

    :cond_3
    return-void
.end method

.method public dismissPopupKeyboardWithoutFloatingAndSplit()V
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/ime/framework/view/AbstractKeyboardView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v0}, Lcom/ime/framework/view/AbstractKeyboardView;->dismissPopupKeyboard()V

    :cond_0
    return-void
.end method

.method protected abstract getBoxKeyboardViewRscId(I)I
.end method

.method protected abstract getCNFloatingKeyboardViewRscId(I)I
.end method

.method protected abstract getCNKeyboardViewRscId(I)I
.end method

.method public getCandiateView(Z)Landroid/view/View;
    .locals 4

    iget-object v2, p0, Lcom/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v2}, Lcom/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v0

    iget-object v2, p0, Lcom/ime/framework/view/AbstractViewController;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/ime/framework/common/InputManager;->isMultiwindowPhone()Z

    move-result v1

    iget-object v2, p0, Lcom/ime/framework/view/AbstractViewController;->mCandidateView:Lcom/ime/framework/view/candidate/AbstractCandidateView;

    if-eqz v2, :cond_0

    if-eqz p1, :cond_3

    :cond_0
    invoke-virtual {p0}, Lcom/ime/framework/view/AbstractViewController;->getCurrentCandidateView()Lcom/ime/framework/view/candidate/AbstractCandidateView;

    move-result-object v2

    iput-object v2, p0, Lcom/ime/framework/view/AbstractViewController;->mCandidateView:Lcom/ime/framework/view/candidate/AbstractCandidateView;

    iget-object v2, p0, Lcom/ime/framework/view/AbstractViewController;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/ime/framework/common/InputManager;->isUsePopupKeyboard()Z

    move-result v2

    if-nez v2, :cond_1

    if-eqz v1, :cond_3

    :cond_1
    const/4 v2, 0x7

    if-eq v0, v2, :cond_2

    const/16 v2, 0x8

    if-ne v0, v2, :cond_3

    :cond_2
    iget-object v2, p0, Lcom/ime/framework/view/AbstractViewController;->mCandidateView:Lcom/ime/framework/view/candidate/AbstractCandidateView;

    invoke-virtual {v2}, Lcom/ime/framework/view/candidate/AbstractCandidateView;->setPopupCandidateView()V

    new-instance v2, Lcom/ime/framework/view/PopupCandidateView;

    iget-object v3, p0, Lcom/ime/framework/view/AbstractViewController;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/ime/framework/view/PopupCandidateView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/ime/framework/view/AbstractViewController;->mPopupCandidateView:Lcom/ime/framework/view/PopupCandidateView;

    iget-object v2, p0, Lcom/ime/framework/view/AbstractViewController;->mPopupCandidateView:Lcom/ime/framework/view/PopupCandidateView;

    iget-object v3, p0, Lcom/ime/framework/view/AbstractViewController;->mCandidateView:Lcom/ime/framework/view/candidate/AbstractCandidateView;

    invoke-virtual {v2, v3}, Lcom/ime/framework/view/PopupCandidateView;->init(Lcom/ime/framework/view/candidate/AbstractCandidateView;)V

    iget-object v2, p0, Lcom/ime/framework/view/AbstractViewController;->mPopupCandidateView:Lcom/ime/framework/view/PopupCandidateView;

    :goto_0
    return-object v2

    :cond_3
    iget-object v2, p0, Lcom/ime/framework/view/AbstractViewController;->mCandidateView:Lcom/ime/framework/view/candidate/AbstractCandidateView;

    goto :goto_0
.end method

.method public getCandidatesDisplayedCount()I
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/view/AbstractViewController;->mCandidateView:Lcom/ime/framework/view/candidate/AbstractCandidateView;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/ime/framework/view/AbstractViewController;->mCandidateView:Lcom/ime/framework/view/candidate/AbstractCandidateView;

    invoke-virtual {v0}, Lcom/ime/framework/view/candidate/AbstractCandidateView;->getCandidatesDisplayedCount()I

    move-result v0

    goto :goto_0
.end method

.method public getChineseLanguageCurrentView()Landroid/view/View;
    .locals 2

    iget-object v1, p0, Lcom/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v1}, Lcom/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v0

    iget-object v1, p0, Lcom/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/ime/framework/view/AbstractKeyboardView;

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/ime/framework/repository/KeyboardStatus;->isPhoneticSpellLayout()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    if-eqz v0, :cond_0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/ime/framework/view/AbstractKeyboardView;

    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/ime/framework/view/AbstractViewController;->getInputView(Z)Landroid/view/View;

    move-result-object v1

    goto :goto_0
.end method

.method protected abstract getCurrentCandidateView()Lcom/ime/framework/view/candidate/AbstractCandidateView;
.end method

.method protected abstract getCurrentKeyboard()Lcom/ime/framework/view/DefaultKeyboard;
.end method

.method protected abstract getCurrentPhoneticSpellScroll()Landroid/widget/FrameLayout;
.end method

.method protected abstract getCurrentPopupKeyboard(Z)Lcom/ime/framework/view/DefaultKeyboard;
.end method

.method protected abstract getCurrentSpellView()Lcom/ime/framework/view/chinesespell/AbstractSpellLayout;
.end method

.method public getCurrentThaiVowelPageNum()I
    .locals 1

    iget v0, p0, Lcom/ime/framework/view/AbstractViewController;->mCurrentThaiVowelPageNum:I

    return v0
.end method

.method public getDefaultCandidateList()Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    const/16 v6, 0x8

    const/4 v1, 0x1

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/ime/framework/view/AbstractKeyboardView;

    if-eqz v5, :cond_0

    iget-object v4, p0, Lcom/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v4}, Lcom/ime/framework/view/AbstractKeyboardView;->getDefaultCandidateList()Ljava/util/ArrayList;

    move-result-object v4

    :goto_0
    return-object v4

    :cond_0
    iget-object v5, p0, Lcom/ime/framework/view/AbstractViewController;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/ime/framework/common/InputManager;->isMultiwindowPhone()Z

    move-result v2

    iget-object v5, p0, Lcom/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v5}, Lcom/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v0

    if-eq v0, v6, :cond_1

    const/4 v5, 0x7

    if-ne v0, v5, :cond_2

    :cond_1
    move v3, v1

    :goto_1
    if-ne v0, v6, :cond_3

    if-eqz v2, :cond_3

    :goto_2
    if-eqz v3, :cond_4

    if-eqz v1, :cond_4

    iget-object v4, p0, Lcom/ime/framework/view/AbstractViewController;->mCurrentViewFloating:Lcom/ime/framework/view/AbstractKeyboardView;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/ime/framework/view/AbstractViewController;->mCurrentViewFloating:Lcom/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v4}, Lcom/ime/framework/view/AbstractKeyboardView;->getDefaultCandidateList()Ljava/util/ArrayList;

    move-result-object v4

    goto :goto_0

    :cond_2
    move v3, v4

    goto :goto_1

    :cond_3
    move v1, v4

    goto :goto_2

    :cond_4
    const/4 v4, 0x0

    goto :goto_0
.end method

.method protected abstract getDualFullLayoutRscId()I
.end method

.method protected abstract getEmoticonLayoutRscId(I)I
.end method

.method protected abstract getEmoticonScrollLayoutRscId()I
.end method

.method public getEmoticonViewHeight()I
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/view/AbstractViewController;->mEmoticonScrollLayout:Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/view/AbstractViewController;->mEmoticonScrollLayout:Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;

    invoke-virtual {v0}, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;->getHeight()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract getFloatingEmoticonKeyboardViewRscId(I)I
.end method

.method protected abstract getFloatingHWREmoticonLayoutRscId()I
.end method

.method protected abstract getFullHwrKeyboard()Lcom/ime/framework/view/DefaultKeyboard;
.end method

.method protected abstract getFullHwrPanelViewRscId()I
.end method

.method public getFullScreenHwrKeyboardView()Lcom/ime/framework/view/FullScreenHwrKeyboardView;
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/view/AbstractViewController;->mFullScreenHwrKeyboardView:Lcom/ime/framework/view/FullScreenHwrKeyboardView;

    return-object v0
.end method

.method protected abstract getHWREmoticonLayoutRscId(I)I
.end method

.method protected abstract getHWRFloatingKeyboardViewRscId(I)I
.end method

.method protected abstract getHWRKeyboardRscId()I
.end method

.method public getHWRKeyboardView()Landroid/widget/FrameLayout;
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/view/AbstractViewController;->mVOHWRKeypadView:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public getInputView(Z)Landroid/view/View;
    .locals 4

    const/4 v3, 0x7

    const/16 v2, 0x8

    iget-object v1, p0, Lcom/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v1}, Lcom/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v0

    iget-object v1, p0, Lcom/ime/framework/view/AbstractViewController;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->isChineseLanguageMode()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/ime/framework/view/AbstractViewController;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->isCurrentCarModeKnobSIP()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/ime/framework/view/AbstractViewController;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->isCurrentCarModeTouchSIP()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/ime/framework/view/AbstractViewController;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->isDragonVoiceMode()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/ime/framework/repository/KeyboardStatus;->isPhoneticSpellLayout()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    if-nez v0, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/ime/framework/view/AbstractViewController;->mPhonepadView:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_1

    if-nez p1, :cond_1

    iget-object v1, p0, Lcom/ime/framework/view/AbstractViewController;->mPhonepadView:Landroid/widget/FrameLayout;

    :goto_0
    return-object v1

    :cond_1
    if-ne v0, v2, :cond_3

    iget-object v1, p0, Lcom/ime/framework/view/AbstractViewController;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->isMultiwindowPhone()Z

    move-result v1

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/ime/framework/view/AbstractViewController;->mIsTabletMode:Z

    if-eqz v1, :cond_3

    :cond_2
    iget-object v1, p0, Lcom/ime/framework/view/AbstractViewController;->mPopupKeyboardView:Lcom/ime/framework/view/PopupKeyboardView;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/ime/framework/view/AbstractViewController;->mPopupKeyboardView:Lcom/ime/framework/view/PopupKeyboardView;

    invoke-virtual {v1}, Lcom/ime/framework/view/PopupKeyboardView;->getFloatingView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_3

    if-nez p1, :cond_3

    invoke-virtual {p0}, Lcom/ime/framework/view/AbstractViewController;->updatePopupKeyboard()V

    iget-object v1, p0, Lcom/ime/framework/view/AbstractViewController;->mPopupKeyboardView:Lcom/ime/framework/view/PopupKeyboardView;

    invoke-virtual {v1}, Lcom/ime/framework/view/PopupKeyboardView;->getFloatingView()Landroid/view/View;

    move-result-object v1

    goto :goto_0

    :cond_3
    if-ne v0, v3, :cond_4

    iget-object v1, p0, Lcom/ime/framework/view/AbstractViewController;->mPopupKeyboardView:Lcom/ime/framework/view/PopupKeyboardView;

    if-eqz v1, :cond_4

    if-nez p1, :cond_4

    iget-object v1, p0, Lcom/ime/framework/view/AbstractViewController;->mPopupKeyboardView:Lcom/ime/framework/view/PopupKeyboardView;

    invoke-virtual {v1}, Lcom/ime/framework/view/PopupKeyboardView;->getSplitRightView()Landroid/view/View;

    move-result-object v1

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v1}, Lcom/ime/framework/inputmode/InputModeManager;->isBstHWRmodeEnable()Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/ime/framework/view/AbstractViewController;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->isEmoticonMode()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/ime/framework/view/AbstractViewController;->mCurrentLayout:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_15

    if-nez p1, :cond_15

    iget-object v1, p0, Lcom/ime/framework/view/AbstractViewController;->mCurrentLayout:Landroid/widget/LinearLayout;

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/ime/framework/view/AbstractViewController;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->isDragonVoiceMode()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/ime/framework/view/AbstractViewController;->mCurrentFrameLayout:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_15

    if-nez p1, :cond_15

    iget-object v1, p0, Lcom/ime/framework/view/AbstractViewController;->mCurrentFrameLayout:Landroid/widget/FrameLayout;

    goto :goto_0

    :cond_6
    iget-object v1, p0, Lcom/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v1}, Lcom/ime/framework/inputmode/InputModeManager;->getInputRange()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_7

    iget-object v1, p0, Lcom/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/ime/framework/view/AbstractKeyboardView;

    if-eqz v1, :cond_15

    if-nez p1, :cond_15

    iget-object v1, p0, Lcom/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/ime/framework/view/AbstractKeyboardView;

    goto :goto_0

    :cond_7
    iget-object v1, p0, Lcom/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v1}, Lcom/ime/framework/inputmode/InputModeManager;->isHanwriteBoxMode()Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/ime/framework/view/AbstractViewController;->mBoxHWLayout:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_15

    if-nez p1, :cond_15

    const-string v1, "SamsungIME"

    const-string v2, "------return-----mBoxHWLayout---"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/ime/framework/view/AbstractViewController;->mBoxHWLayout:Landroid/widget/FrameLayout;

    goto/16 :goto_0

    :cond_8
    iget-object v1, p0, Lcom/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v1}, Lcom/ime/framework/inputmode/InputModeManager;->isHandwriteFSMode()Z

    move-result v1

    if-eqz v1, :cond_15

    iget-object v1, p0, Lcom/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/ime/framework/view/AbstractKeyboardView;

    if-eqz v1, :cond_15

    if-nez p1, :cond_15

    const-string v1, "SamsungIME"

    const-string v2, "---return mCurrentView---"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/ime/framework/view/AbstractKeyboardView;

    goto/16 :goto_0

    :cond_9
    iget-object v1, p0, Lcom/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v1}, Lcom/ime/framework/inputmode/InputModeManager;->isVOHWRmodeEnable()Z

    move-result v1

    if-eqz v1, :cond_d

    if-ne v0, v2, :cond_b

    iget-object v1, p0, Lcom/ime/framework/view/AbstractViewController;->mPopupKeyboardView:Lcom/ime/framework/view/PopupKeyboardView;

    if-eqz v1, :cond_15

    if-nez p1, :cond_15

    if-ne v0, v2, :cond_a

    iget-object v1, p0, Lcom/ime/framework/view/AbstractViewController;->mPopupKeyboardView:Lcom/ime/framework/view/PopupKeyboardView;

    invoke-virtual {v1}, Lcom/ime/framework/view/PopupKeyboardView;->getFloatingView()Landroid/view/View;

    move-result-object v1

    goto/16 :goto_0

    :cond_a
    iget-object v1, p0, Lcom/ime/framework/view/AbstractViewController;->mPopupKeyboardView:Lcom/ime/framework/view/PopupKeyboardView;

    goto/16 :goto_0

    :cond_b
    iget-object v1, p0, Lcom/ime/framework/view/AbstractViewController;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->isEmoticonMode()Z

    move-result v1

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/ime/framework/view/AbstractViewController;->mCurrentLayout:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_15

    if-nez p1, :cond_15

    iget-object v1, p0, Lcom/ime/framework/view/AbstractViewController;->mCurrentLayout:Landroid/widget/LinearLayout;

    goto/16 :goto_0

    :cond_c
    iget-object v1, p0, Lcom/ime/framework/view/AbstractViewController;->mVOHWRKeypadView:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_15

    if-nez p1, :cond_15

    iget-object v1, p0, Lcom/ime/framework/view/AbstractViewController;->mVOHWRKeypadView:Landroid/widget/FrameLayout;

    goto/16 :goto_0

    :cond_d
    iget-object v1, p0, Lcom/ime/framework/view/AbstractViewController;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->isEmoticonMode()Z

    move-result v1

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/ime/framework/view/AbstractViewController;->mCurrentLayout:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_15

    if-nez p1, :cond_15

    iget-object v1, p0, Lcom/ime/framework/view/AbstractViewController;->mCurrentLayout:Landroid/widget/LinearLayout;

    goto/16 :goto_0

    :cond_e
    if-eq v0, v3, :cond_f

    if-ne v0, v2, :cond_12

    :cond_f
    iget-object v1, p0, Lcom/ime/framework/view/AbstractViewController;->mPopupKeyboardView:Lcom/ime/framework/view/PopupKeyboardView;

    if-eqz v1, :cond_11

    if-nez p1, :cond_11

    if-ne v0, v2, :cond_10

    iget-object v1, p0, Lcom/ime/framework/view/AbstractViewController;->mPopupKeyboardView:Lcom/ime/framework/view/PopupKeyboardView;

    invoke-virtual {v1}, Lcom/ime/framework/view/PopupKeyboardView;->getFloatingView()Landroid/view/View;

    move-result-object v1

    goto/16 :goto_0

    :cond_10
    iget-object v1, p0, Lcom/ime/framework/view/AbstractViewController;->mPopupKeyboardView:Lcom/ime/framework/view/PopupKeyboardView;

    goto/16 :goto_0

    :cond_11
    invoke-direct {p0}, Lcom/ime/framework/view/AbstractViewController;->makeNewView()Landroid/view/View;

    move-result-object v1

    goto/16 :goto_0

    :cond_12
    const/4 v1, 0x4

    if-ne v0, v1, :cond_13

    iget-object v1, p0, Lcom/ime/framework/view/AbstractViewController;->mFullScreenHwrKeyboardView:Lcom/ime/framework/view/FullScreenHwrKeyboardView;

    if-eqz v1, :cond_13

    if-nez p1, :cond_13

    iget-object v1, p0, Lcom/ime/framework/view/AbstractViewController;->mFullScreenHwrKeyboardView:Lcom/ime/framework/view/FullScreenHwrKeyboardView;

    goto/16 :goto_0

    :cond_13
    iget-object v1, p0, Lcom/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/ime/framework/view/AbstractKeyboardView;

    if-eqz v1, :cond_14

    if-nez p1, :cond_14

    iget-object v1, p0, Lcom/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/ime/framework/view/AbstractKeyboardView;

    goto/16 :goto_0

    :cond_14
    iget-object v1, p0, Lcom/ime/framework/view/AbstractViewController;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->isDragonVoiceMode()Z

    move-result v1

    if-eqz v1, :cond_15

    iget-object v1, p0, Lcom/ime/framework/view/AbstractViewController;->mCurrentFrameLayout:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_15

    if-nez p1, :cond_15

    iget-object v1, p0, Lcom/ime/framework/view/AbstractViewController;->mCurrentFrameLayout:Landroid/widget/FrameLayout;

    goto/16 :goto_0

    :cond_15
    invoke-direct {p0}, Lcom/ime/framework/view/AbstractViewController;->makeNewView()Landroid/view/View;

    move-result-object v1

    goto/16 :goto_0
.end method

.method public getIsOneHandClicked()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ime/framework/view/AbstractViewController;->mOneHandViewClicked:Z

    return v0
.end method

.method public getKeybaordKeyList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/ime/framework/view/Keyboard$Key;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v0}, Lcom/ime/framework/view/AbstractKeyboardView;->getKeyboard()Lcom/ime/framework/view/Keyboard;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ime/framework/view/Keyboard;->getKeys()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected abstract getKeyboardOneHandDimView(Landroid/widget/FrameLayout;)Landroid/widget/ImageView;
.end method

.method protected abstract getKeyboardOneHandLayout(Landroid/widget/FrameLayout;)Landroid/widget/LinearLayout;
.end method

.method protected abstract getKeyboardOneHandLayoutView(Landroid/widget/LinearLayout;Z)Landroid/widget/LinearLayout;
.end method

.method protected abstract getKeyboardOneHandTalkBackDimView(Landroid/widget/LinearLayout;)Landroid/widget/ImageView;
.end method

.method protected abstract getKeyboardOneHandView(Landroid/widget/LinearLayout;Z)Landroid/widget/ImageButton;
.end method

.method protected abstract getKeyboardRscId()I
.end method

.method protected abstract getKeyboardView(Landroid/widget/LinearLayout;)Landroid/view/View;
.end method

.method protected abstract getKeyboardViewRscId(I)I
.end method

.method public getLabelFromCurrentView(I)Ljava/lang/CharSequence;
    .locals 6

    const/4 v4, 0x0

    const/4 v3, 0x0

    :try_start_0
    iget-object v5, p0, Lcom/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v5}, Lcom/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :goto_0
    return-object v4

    :sswitch_0
    iget-object v5, p0, Lcom/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v5}, Lcom/ime/framework/view/AbstractKeyboardView;->getKeyboard()Lcom/ime/framework/view/Keyboard;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ime/framework/view/Keyboard;->getKeys()Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/ime/framework/view/AbstractViewController;->getLabelFromKeyCode(ILjava/util/List;)Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    :cond_0
    :goto_1
    if-nez v3, :cond_1

    int-to-char v4, p1

    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :sswitch_1
    :try_start_1
    iget-object v5, p0, Lcom/ime/framework/view/AbstractViewController;->mCurrentViewFloating:Lcom/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v5}, Lcom/ime/framework/view/AbstractKeyboardView;->getKeyboard()Lcom/ime/framework/view/Keyboard;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ime/framework/view/Keyboard;->getKeys()Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/ime/framework/view/AbstractViewController;->getLabelFromKeyCode(ILjava/util/List;)Ljava/lang/CharSequence;

    move-result-object v3

    goto :goto_1

    :sswitch_2
    iget-object v5, p0, Lcom/ime/framework/view/AbstractViewController;->mCurrentViewLeft:Lcom/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v5}, Lcom/ime/framework/view/AbstractKeyboardView;->getKeyboard()Lcom/ime/framework/view/Keyboard;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ime/framework/view/Keyboard;->getKeys()Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/ime/framework/view/AbstractViewController;->getLabelFromKeyCode(ILjava/util/List;)Ljava/lang/CharSequence;

    move-result-object v3

    if-nez v3, :cond_0

    iget-object v5, p0, Lcom/ime/framework/view/AbstractViewController;->mCurrentViewRight:Lcom/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v5}, Lcom/ime/framework/view/AbstractKeyboardView;->getKeyboard()Lcom/ime/framework/view/Keyboard;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ime/framework/view/Keyboard;->getKeys()Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/ime/framework/view/AbstractViewController;->getLabelFromKeyCode(ILjava/util/List;)Ljava/lang/CharSequence;
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_1
    move-object v4, v3

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x7 -> :sswitch_2
        0x8 -> :sswitch_1
    .end sparse-switch
.end method

.method public getLengthOfSpellText()I
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/view/AbstractViewController;->mSpellView:Lcom/ime/framework/view/chinesespell/AbstractSpellLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/view/AbstractViewController;->mSpellView:Lcom/ime/framework/view/chinesespell/AbstractSpellLayout;

    invoke-virtual {v0}, Lcom/ime/framework/view/chinesespell/AbstractSpellLayout;->getLengthOfSpellText()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMicEffectView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/view/AbstractViewController;->mMicEffectView:Lcom/dragon/android/voiceime/ui/MicEffectView;

    return-object v0
.end method

.method protected abstract getMicEffectViewRscId()I
.end method

.method public getMobileKeyboardCandiateView(I)Landroid/view/View;
    .locals 3

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    const-string v0, "SamsungIME"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Wrong MobileKeyboard candidate Mode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object v0, p0, Lcom/ime/framework/view/AbstractViewController;->mCandidateView:Lcom/ime/framework/view/candidate/AbstractCandidateView;

    return-object v0

    :pswitch_0
    iget-object v0, p0, Lcom/ime/framework/view/AbstractViewController;->mInputManager:Lcom/ime/framework/common/InputManager;

    const v1, 0x7f030010

    invoke-interface {v0, v1, v2}, Lcom/ime/framework/common/InputManager;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ime/framework/view/candidate/AbstractCandidateView;

    iput-object v0, p0, Lcom/ime/framework/view/AbstractViewController;->mCandidateView:Lcom/ime/framework/view/candidate/AbstractCandidateView;

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/ime/framework/view/AbstractViewController;->mInputManager:Lcom/ime/framework/common/InputManager;

    const v1, 0x7f030013

    invoke-interface {v0, v1, v2}, Lcom/ime/framework/common/InputManager;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ime/framework/view/candidate/AbstractCandidateView;

    iput-object v0, p0, Lcom/ime/framework/view/AbstractViewController;->mCandidateView:Lcom/ime/framework/view/candidate/AbstractCandidateView;

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/ime/framework/view/AbstractViewController;->mInputManager:Lcom/ime/framework/common/InputManager;

    const v1, 0x7f030015

    invoke-interface {v0, v1, v2}, Lcom/ime/framework/common/InputManager;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ime/framework/view/candidate/AbstractCandidateView;

    iput-object v0, p0, Lcom/ime/framework/view/AbstractViewController;->mCandidateView:Lcom/ime/framework/view/candidate/AbstractCandidateView;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected abstract getOeHandCNPhonepadViewRscId()I
.end method

.method protected abstract getOneHandCNKeyboardViewRscId()I
.end method

.method protected abstract getOneHandKeyboardViewRscId(I)I
.end method

.method protected abstract getPhoneticSpellScrollLayoutRscId()I
.end method

.method public getPhoneticSpellScrollView(Z)Landroid/view/View;
    .locals 4

    const/16 v3, 0x8

    iget-object v1, p0, Lcom/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v1}, Lcom/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v0

    if-ne v0, v3, :cond_3

    iget-object v1, p0, Lcom/ime/framework/view/AbstractViewController;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->isMultiwindowPhone()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/ime/framework/view/AbstractViewController;->mFloatingPhonepadView:Landroid/widget/FrameLayout;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/ime/framework/view/AbstractViewController;->getCurrentPhoneticSpellScroll()Landroid/widget/FrameLayout;

    move-result-object v1

    iput-object v1, p0, Lcom/ime/framework/view/AbstractViewController;->mFloatingPhonepadView:Landroid/widget/FrameLayout;

    :cond_0
    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/ime/framework/view/AbstractViewController;->mPhoneticSpellScrollLayout:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/ime/framework/view/AbstractViewController;->mPhoneticSpellScrollLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    :cond_1
    iget-object v1, p0, Lcom/ime/framework/view/AbstractViewController;->mFloatingPhonepadView:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/ime/framework/view/AbstractViewController;->getPhoneticSpellScrollLayoutRscId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/ime/framework/view/AbstractViewController;->mPhoneticSpellScrollLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/ime/framework/view/AbstractViewController;->mFloatingPhonepadView:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/ime/framework/view/AbstractViewController;->getPhoneticSpellScrollViewRscId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;

    iput-object v1, p0, Lcom/ime/framework/view/AbstractViewController;->mPhoneticSpellScrollView:Lcom/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;

    iget-object v1, p0, Lcom/ime/framework/view/AbstractViewController;->mPhoneticSpellScrollView:Lcom/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;

    invoke-virtual {v1, v3}, Lcom/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/ime/framework/view/AbstractViewController;->mPhoneticSpellScrollView:Lcom/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;

    iget-object v2, p0, Lcom/ime/framework/view/AbstractViewController;->mPhoneticSpellScrollLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Lcom/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->initView(Landroid/widget/LinearLayout;)V

    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/ime/framework/view/AbstractViewController;->mPhoneticSpellScrollView:Lcom/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;

    return-object v1

    :cond_3
    iget-object v1, p0, Lcom/ime/framework/view/AbstractViewController;->mPhonepadView:Landroid/widget/FrameLayout;

    if-nez v1, :cond_4

    invoke-virtual {p0}, Lcom/ime/framework/view/AbstractViewController;->getCurrentPhoneticSpellScroll()Landroid/widget/FrameLayout;

    move-result-object v1

    iput-object v1, p0, Lcom/ime/framework/view/AbstractViewController;->mPhonepadView:Landroid/widget/FrameLayout;

    :cond_4
    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/ime/framework/view/AbstractViewController;->mPhoneticSpellScrollLayout:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/ime/framework/view/AbstractViewController;->mPhoneticSpellScrollLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    :cond_5
    iget-object v1, p0, Lcom/ime/framework/view/AbstractViewController;->mPhonepadView:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/ime/framework/view/AbstractViewController;->getPhoneticSpellScrollLayoutRscId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/ime/framework/view/AbstractViewController;->mPhoneticSpellScrollLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/ime/framework/view/AbstractViewController;->mPhonepadView:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/ime/framework/view/AbstractViewController;->getPhoneticSpellScrollViewRscId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;

    iput-object v1, p0, Lcom/ime/framework/view/AbstractViewController;->mPhoneticSpellScrollView:Lcom/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;

    iget-object v1, p0, Lcom/ime/framework/view/AbstractViewController;->mPhoneticSpellScrollView:Lcom/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;

    invoke-virtual {v1, v3}, Lcom/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/ime/framework/view/AbstractViewController;->mPhoneticSpellScrollView:Lcom/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;

    iget-object v2, p0, Lcom/ime/framework/view/AbstractViewController;->mPhoneticSpellScrollLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Lcom/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->initView(Landroid/widget/LinearLayout;)V

    goto :goto_0
.end method

.method protected abstract getPhoneticSpellScrollViewRscId()I
.end method

.method public getPopupCandidateView()Lcom/ime/framework/view/PopupCandidateView;
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/view/AbstractViewController;->mPopupCandidateView:Lcom/ime/framework/view/PopupCandidateView;

    return-object v0
.end method

.method public getPopupKeyboardView()Lcom/ime/framework/view/PopupKeyboardView;
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/view/AbstractViewController;->mPopupKeyboardView:Lcom/ime/framework/view/PopupKeyboardView;

    return-object v0
.end method

.method public getSpellView(Z)Landroid/view/View;
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/ime/framework/view/AbstractViewController;->getCurrentSpellView()Lcom/ime/framework/view/chinesespell/AbstractSpellLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/ime/framework/view/AbstractViewController;->mSpellView:Lcom/ime/framework/view/chinesespell/AbstractSpellLayout;

    :cond_0
    iget-object v0, p0, Lcom/ime/framework/view/AbstractViewController;->mSpellView:Lcom/ime/framework/view/chinesespell/AbstractSpellLayout;

    return-object v0
.end method

.method protected abstract getSplitKeyboardViewRscId(Z)I
.end method

.method public getSuggestions()Ljava/util/ArrayList;
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

    iget-object v0, p0, Lcom/ime/framework/view/AbstractViewController;->mCandidateView:Lcom/ime/framework/view/candidate/AbstractCandidateView;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ime/framework/view/AbstractViewController;->mCandidateView:Lcom/ime/framework/view/candidate/AbstractCandidateView;

    invoke-virtual {v0}, Lcom/ime/framework/view/candidate/AbstractCandidateView;->getCandidates()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0
.end method

.method protected abstract getThaiTextKeyboard(I)Lcom/ime/framework/view/DefaultKeyboard;
.end method

.method public getToolbarPopupWindow()Landroid/widget/PopupWindow;
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/view/AbstractViewController;->mPopupWindow:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method protected abstract getVOHWRKeyboardViewRscId(I)I
.end method

.method protected abstract getVoicePanelLayout(I)I
.end method

.method public hideFullscreenHwrPanel()V
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/view/AbstractViewController;->mFullScreenHwrKeyboardView:Lcom/ime/framework/view/FullScreenHwrKeyboardView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/view/AbstractViewController;->mFullScreenHwrKeyboardView:Lcom/ime/framework/view/FullScreenHwrKeyboardView;

    invoke-virtual {v0}, Lcom/ime/framework/view/FullScreenHwrKeyboardView;->hideFullscreenHwrPanel()V

    :cond_0
    return-void
.end method

.method public initHWR()V
    .locals 3

    iget-object v0, p0, Lcom/ime/framework/view/AbstractViewController;->mVOHWRKeypadView:Landroid/widget/FrameLayout;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/ime/framework/view/AbstractViewController;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1, v0}, Lcom/ime/framework/common/InputManager;->initHwrPanel(Landroid/widget/FrameLayout;)V

    iget-object v1, p0, Lcom/ime/framework/view/AbstractViewController;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->isSmartPrediction()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/ime/framework/view/AbstractViewController;->mCandidateView:Lcom/ime/framework/view/candidate/AbstractCandidateView;

    invoke-virtual {p0}, Lcom/ime/framework/view/AbstractViewController;->getSuggestions()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ime/framework/view/candidate/AbstractCandidateView;->setCandidates(Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method public initialize()V
    .locals 1

    invoke-static {}, Lcom/ime/framework/common/InputManagerImpl;->getInstance()Lcom/ime/framework/common/InputManager;

    move-result-object v0

    iput-object v0, p0, Lcom/ime/framework/view/AbstractViewController;->mInputManager:Lcom/ime/framework/common/InputManager;

    iget-object v0, p0, Lcom/ime/framework/view/AbstractViewController;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/ime/framework/view/AbstractViewController;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/ime/framework/common/PrivateImeOptionsControllerImpl;->getInstance()Lcom/ime/framework/common/PrivateImeOptionsController;

    move-result-object v0

    iput-object v0, p0, Lcom/ime/framework/view/AbstractViewController;->mPrivateImeOptionsController:Lcom/ime/framework/common/PrivateImeOptionsController;

    invoke-static {}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->getInstance()Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    move-result-object v0

    iput-object v0, p0, Lcom/ime/framework/view/AbstractViewController;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    iget-object v0, p0, Lcom/ime/framework/view/AbstractViewController;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->getRepository()Lcom/ime/framework/repository/Repository;

    move-result-object v0

    iput-object v0, p0, Lcom/ime/framework/view/AbstractViewController;->mRepository:Lcom/ime/framework/repository/Repository;

    iget-object v0, p0, Lcom/ime/framework/view/AbstractViewController;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->isKorMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/ime/framework/view/AbstractViewController;->mIsKorMode:Z

    iget-object v0, p0, Lcom/ime/framework/view/AbstractViewController;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->isChnMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/ime/framework/view/AbstractViewController;->mIsChnMode:Z

    iget-object v0, p0, Lcom/ime/framework/view/AbstractViewController;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->isTabletMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/ime/framework/view/AbstractViewController;->mIsTabletMode:Z

    invoke-static {}, Lcom/ime/framework/common/FontManagerImpl;->getInstance()Lcom/ime/framework/common/FontManager;

    move-result-object v0

    iput-object v0, p0, Lcom/ime/framework/view/AbstractViewController;->mFontManager:Lcom/ime/framework/common/FontManager;

    iget-object v0, p0, Lcom/ime/framework/view/AbstractViewController;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->getInputModeManager()Lcom/ime/framework/inputmode/InputModeManager;

    move-result-object v0

    iput-object v0, p0, Lcom/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    new-instance v0, Lcom/ime/framework/view/TipsDialog;

    invoke-direct {v0}, Lcom/ime/framework/view/TipsDialog;-><init>()V

    iput-object v0, p0, Lcom/ime/framework/view/AbstractViewController;->mTipsDialog:Lcom/ime/framework/view/TipsDialog;

    invoke-virtual {p0}, Lcom/ime/framework/view/AbstractViewController;->onInitializeFonts()V

    invoke-virtual {p0}, Lcom/ime/framework/view/AbstractViewController;->onInitializeCustomResources()V

    return-void
.end method

.method public invalidateKey(I)V
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/ime/framework/view/AbstractKeyboardView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v0, p1}, Lcom/ime/framework/view/AbstractKeyboardView;->invalidateKeyWithKeyCode(I)V

    :cond_0
    iget-object v0, p0, Lcom/ime/framework/view/AbstractViewController;->mCurrentViewLeft:Lcom/ime/framework/view/AbstractKeyboardView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ime/framework/view/AbstractViewController;->mCurrentViewLeft:Lcom/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v0, p1}, Lcom/ime/framework/view/AbstractKeyboardView;->invalidateKeyWithKeyCode(I)V

    :cond_1
    iget-object v0, p0, Lcom/ime/framework/view/AbstractViewController;->mCurrentViewRight:Lcom/ime/framework/view/AbstractKeyboardView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ime/framework/view/AbstractViewController;->mCurrentViewRight:Lcom/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v0, p1}, Lcom/ime/framework/view/AbstractKeyboardView;->invalidateKeyWithKeyCode(I)V

    :cond_2
    iget-object v0, p0, Lcom/ime/framework/view/AbstractViewController;->mCurrentViewFloating:Lcom/ime/framework/view/AbstractKeyboardView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/ime/framework/view/AbstractViewController;->mCurrentViewFloating:Lcom/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v0, p1}, Lcom/ime/framework/view/AbstractKeyboardView;->invalidateKeyWithKeyCode(I)V

    :cond_3
    return-void
.end method

.method public isAccessibilityEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/ime/framework/view/AbstractKeyboardView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v0}, Lcom/ime/framework/view/AbstractKeyboardView;->isAccessibilityEnabled()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDiscoverabilityShown()Z
    .locals 1

    invoke-static {}, Lcom/ime/framework/view/TipsDialog;->getInstance()Lcom/ime/framework/view/TipsDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/ime/framework/view/AbstractViewController;->mTipsDialog:Lcom/ime/framework/view/TipsDialog;

    iget-object v0, p0, Lcom/ime/framework/view/AbstractViewController;->mTipsDialog:Lcom/ime/framework/view/TipsDialog;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/ime/framework/view/AbstractViewController;->mTipsDialog:Lcom/ime/framework/view/TipsDialog;

    invoke-virtual {v0}, Lcom/ime/framework/view/TipsDialog;->isDiscoverabilityShown()Z

    move-result v0

    goto :goto_0
.end method

.method public isEnableOneHandKeypad()Z
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/ime/framework/view/AbstractViewController;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/ime/framework/common/InputManager;->isOrientationLandscape()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    iget-object v3, p0, Lcom/ime/framework/view/AbstractViewController;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/ime/framework/common/InputManager;->isMobileKeyboard()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v3}, Lcom/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v0

    if-eq v0, v1, :cond_2

    if-nez v0, :cond_0

    :cond_2
    iget-boolean v3, p0, Lcom/ime/framework/view/AbstractViewController;->mEnableOneHandKeypad:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/ime/framework/view/AbstractViewController;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/ime/framework/common/InputManager;->getAnyScreenRunning()Z

    move-result v3

    if-nez v3, :cond_3

    :goto_1
    move v2, v1

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_1
.end method

.method public isInRepeatKey()Z
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/ime/framework/view/AbstractKeyboardView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v0}, Lcom/ime/framework/view/AbstractKeyboardView;->isInRepeatKey()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMiniKeyboardOnScreen()Z
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/ime/framework/view/AbstractKeyboardView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v0}, Lcom/ime/framework/view/AbstractKeyboardView;->isMiniKeyboardOnScreen()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMiniKeyboardView()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    iget-object v0, p0, Lcom/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/ime/framework/view/AbstractKeyboardView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v0}, Lcom/ime/framework/view/AbstractKeyboardView;->isMiniKeyboardView()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOneHandKeypadRightSet()Z
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/ime/framework/view/AbstractViewController;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "onehand_direction"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPopupWindowShown()Z
    .locals 3

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v2}, Lcom/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v0

    const/16 v2, 0x8

    if-ne v0, v2, :cond_2

    iget-object v2, p0, Lcom/ime/framework/view/AbstractViewController;->mCurrentViewFloating:Lcom/ime/framework/view/AbstractKeyboardView;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v1, p0, Lcom/ime/framework/view/AbstractViewController;->mCurrentViewFloating:Lcom/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v1}, Lcom/ime/framework/view/AbstractKeyboardView;->isPopupWindowShown()Z

    move-result v1

    goto :goto_0

    :cond_2
    const/4 v2, 0x7

    if-ne v0, v2, :cond_5

    iget-object v2, p0, Lcom/ime/framework/view/AbstractViewController;->mCurrentViewLeft:Lcom/ime/framework/view/AbstractKeyboardView;

    if-nez v2, :cond_4

    :goto_1
    iget-object v2, p0, Lcom/ime/framework/view/AbstractViewController;->mCurrentViewRight:Lcom/ime/framework/view/AbstractKeyboardView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/ime/framework/view/AbstractViewController;->mCurrentViewRight:Lcom/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v2}, Lcom/ime/framework/view/AbstractKeyboardView;->isPopupWindowShown()Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_3
    const/4 v1, 0x1

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/ime/framework/view/AbstractViewController;->mCurrentViewLeft:Lcom/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v2}, Lcom/ime/framework/view/AbstractKeyboardView;->isPopupWindowShown()Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_1

    :cond_5
    iget-object v2, p0, Lcom/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/ime/framework/view/AbstractKeyboardView;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v1}, Lcom/ime/framework/view/AbstractKeyboardView;->isPopupWindowShown()Z

    move-result v1

    goto :goto_0
.end method

.method public isSpellViewShown()Z
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/view/AbstractViewController;->mSpellView:Lcom/ime/framework/view/chinesespell/AbstractSpellLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/view/AbstractViewController;->mSpellView:Lcom/ime/framework/view/chinesespell/AbstractSpellLayout;

    invoke-virtual {v0}, Lcom/ime/framework/view/chinesespell/AbstractSpellLayout;->isSpellViewShowing()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSymbolPopupKeyboardOnScreen()Z
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/ime/framework/view/AbstractKeyboardView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v0}, Lcom/ime/framework/view/AbstractKeyboardView;->isSymbolPopupKeyboardOnScreen()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTalkbackEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/ime/framework/view/AbstractKeyboardView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v0}, Lcom/ime/framework/view/AbstractKeyboardView;->isTalkbackEnabled()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isToobarPopupWindowShowing()Z
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/view/AbstractViewController;->mPopupWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/view/AbstractViewController;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isToolbarVisible()Z
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/view/AbstractViewController;->mCandidateView:Lcom/ime/framework/view/candidate/AbstractCandidateView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/view/AbstractViewController;->mCandidateView:Lcom/ime/framework/view/candidate/AbstractCandidateView;

    invoke-virtual {v0}, Lcom/ime/framework/view/candidate/AbstractCandidateView;->isToolBarVisible()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTouchExplorationEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/ime/framework/view/AbstractKeyboardView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v0}, Lcom/ime/framework/view/AbstractKeyboardView;->isTouchExplorationEnabled()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public nextSymbolsPage()V
    .locals 4

    iget-object v1, p0, Lcom/ime/framework/view/AbstractViewController;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v2, "SYMBOLS_PAGE"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ime/framework/view/AbstractViewController;->setSymbolPage(I)V

    return-void
.end method

.method public onChangeInputLanuage(Lcom/ime/framework/common/Language;)V
    .locals 0

    return-void
.end method

.method protected abstract onInitializeCustomResources()V
.end method

.method protected onInitializeFonts()V
    .locals 0

    return-void
.end method

.method public onMagnifyStateChanged(Z)V
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/ime/framework/view/AbstractKeyboardView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v0, p1}, Lcom/ime/framework/view/AbstractKeyboardView;->changeInvisiblePopupLayoutType(Z)V

    iget-object v0, p0, Lcom/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v0, p1}, Lcom/ime/framework/view/AbstractKeyboardView;->changePopupMiniKeyboardWindowLayoutType(Z)V

    :cond_0
    if-eqz p1, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ime/framework/view/AbstractViewController;->changeInputMode(I)V

    :cond_1
    return-void
.end method

.method public prevSymbolsPage()V
    .locals 4

    iget-object v1, p0, Lcom/ime/framework/view/AbstractViewController;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v2, "SYMBOLS_PAGE"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/ime/framework/view/AbstractViewController;->setSymbolPage(I)V

    return-void
.end method

.method public release()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/ime/framework/view/AbstractKeyboardView;

    iput-object v1, p0, Lcom/ime/framework/view/AbstractViewController;->mInputManager:Lcom/ime/framework/common/InputManager;

    iput-object v1, p0, Lcom/ime/framework/view/AbstractViewController;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    iget-object v0, p0, Lcom/ime/framework/view/AbstractViewController;->mSpellView:Lcom/ime/framework/view/chinesespell/AbstractSpellLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/view/AbstractViewController;->mSpellView:Lcom/ime/framework/view/chinesespell/AbstractSpellLayout;

    invoke-virtual {v0, v2}, Lcom/ime/framework/view/chinesespell/AbstractSpellLayout;->setSpellViewShown(Z)V

    iput-object v1, p0, Lcom/ime/framework/view/AbstractViewController;->mSpellView:Lcom/ime/framework/view/chinesespell/AbstractSpellLayout;

    :cond_0
    iget-object v0, p0, Lcom/ime/framework/view/AbstractViewController;->mPhoneticSpellScrollView:Lcom/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ime/framework/view/AbstractViewController;->mPhoneticSpellScrollView:Lcom/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;

    invoke-virtual {v0, v2}, Lcom/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->setPhoneticSpellScrollViewShown(Z)V

    iput-object v1, p0, Lcom/ime/framework/view/AbstractViewController;->mPhoneticSpellScrollView:Lcom/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;

    :cond_1
    return-void
.end method

.method public releaseAllKeyPressed()V
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/ime/framework/view/AbstractKeyboardView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v0}, Lcom/ime/framework/view/AbstractKeyboardView;->releaseAllKeyPressed()V

    :cond_0
    return-void
.end method

.method public releaseCandidateView()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ime/framework/view/AbstractViewController;->mCandidateView:Lcom/ime/framework/view/candidate/AbstractCandidateView;

    iput-object v0, p0, Lcom/ime/framework/view/AbstractViewController;->mPopupCandidateView:Lcom/ime/framework/view/PopupCandidateView;

    return-void
.end method

.method public resetMultitap()V
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/ime/framework/view/AbstractKeyboardView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v0}, Lcom/ime/framework/view/AbstractKeyboardView;->resetMultiTap()V

    :cond_0
    iget-object v0, p0, Lcom/ime/framework/view/AbstractViewController;->mCurrentViewFloating:Lcom/ime/framework/view/AbstractKeyboardView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ime/framework/view/AbstractViewController;->mCurrentViewFloating:Lcom/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v0}, Lcom/ime/framework/view/AbstractKeyboardView;->resetMultiTap()V

    :cond_1
    iget-object v0, p0, Lcom/ime/framework/view/AbstractViewController;->mCurrentViewLeft:Lcom/ime/framework/view/AbstractKeyboardView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ime/framework/view/AbstractViewController;->mCurrentViewLeft:Lcom/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v0}, Lcom/ime/framework/view/AbstractKeyboardView;->resetMultiTap()V

    :cond_2
    iget-object v0, p0, Lcom/ime/framework/view/AbstractViewController;->mCurrentViewRight:Lcom/ime/framework/view/AbstractKeyboardView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/ime/framework/view/AbstractViewController;->mCurrentViewRight:Lcom/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v0}, Lcom/ime/framework/view/AbstractKeyboardView;->resetMultiTap()V

    :cond_3
    return-void
.end method

.method public resetSymbolsPage()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ime/framework/view/AbstractViewController;->setSymbolPage(I)V

    return-void
.end method

.method public sendTalkbackDescription(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/ime/framework/view/AbstractKeyboardView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v0, p1}, Lcom/ime/framework/view/AbstractKeyboardView;->sendTalkbackDescription(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public sendTouchEvent(Landroid/view/MotionEvent;Z)V
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/ime/framework/view/AbstractViewController;->getInputView(Z)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_0
    return-void
.end method

.method public setCurrentThaiVowelPageNum(I)V
    .locals 0

    iput p1, p0, Lcom/ime/framework/view/AbstractViewController;->mCurrentThaiVowelPageNum:I

    return-void
.end method

.method public setEmoticonCategory(Ljava/util/ArrayList;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;I)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/ime/framework/view/AbstractViewController;->mEmoticonScrollLayout:Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/view/AbstractViewController;->mEmoticonScrollLayout:Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;

    invoke-virtual {v0, p1, p2}, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;->setEmoticonCategory(Ljava/util/ArrayList;I)V

    :cond_0
    return-void
.end method

.method public setInputView(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p0}, Lcom/ime/framework/view/AbstractViewController;->isEnableOneHandKeypad()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/view/AbstractViewController;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->isEmoticonMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/view/AbstractViewController;->mCurrentLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/view/AbstractViewController;->mCurrentLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public setOneHandBgDim(Z)V
    .locals 2

    iget-object v0, p0, Lcom/ime/framework/view/AbstractViewController;->mOneHandDimView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/ime/framework/view/AbstractViewController;->mOneHandDimView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/ime/framework/view/AbstractViewController;->mOneHandDimView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setOneHandLayoutShown()V
    .locals 5

    const/4 v4, 0x1

    iget-object v2, p0, Lcom/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/ime/framework/view/AbstractKeyboardView;

    if-eqz v2, :cond_1

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/ime/framework/view/AbstractViewController;->isEnableOneHandKeypad()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/ime/framework/view/AbstractViewController;->isOneHandKeypadRightSet()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x2

    :goto_0
    iget-boolean v2, p0, Lcom/ime/framework/view/AbstractViewController;->mOneHandViewClicked:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/ime/framework/view/AbstractViewController;->mInputManager:Lcom/ime/framework/common/InputManager;

    iget-object v3, p0, Lcom/ime/framework/view/AbstractViewController;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v3, v4}, Lcom/ime/framework/common/InputManager;->getInputView(Z)Landroid/view/View;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/ime/framework/common/InputManager;->setInputView(Landroid/view/View;)V

    iget-object v2, p0, Lcom/ime/framework/view/AbstractViewController;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/ime/framework/common/InputManager;->isEmoticonMode()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/ime/framework/view/AbstractViewController;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v3, "EMOTICON_CURRENT_CATEGORY"

    invoke-interface {v2, v3, v4}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v0

    iget-object v2, p0, Lcom/ime/framework/view/AbstractViewController;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2, v0}, Lcom/ime/framework/common/InputManager;->setEmoticonCategory(I)V

    :cond_0
    invoke-virtual {p0, v1}, Lcom/ime/framework/view/AbstractViewController;->setOneHandLayoutShownWithOption(I)V

    :cond_1
    return-void

    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setOneHandLayoutShownWithOption(I)V
    .locals 7

    const/4 v6, 0x1

    const/16 v4, 0x8

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/ime/framework/view/AbstractViewController;->mOneHandLeftViewLayout:Landroid/widget/LinearLayout;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/ime/framework/view/AbstractViewController;->mOneHandRightViewLayout:Landroid/widget/LinearLayout;

    if-eqz v3, :cond_6

    packed-switch p1, :pswitch_data_0

    iget-object v3, p0, Lcom/ime/framework/view/AbstractViewController;->mOneHandLeftViewLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v3, p0, Lcom/ime/framework/view/AbstractViewController;->mOneHandRightViewLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_0
    invoke-virtual {p0}, Lcom/ime/framework/view/AbstractViewController;->dismissPopupKeyboard()V

    iget-object v3, p0, Lcom/ime/framework/view/AbstractViewController;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/ime/framework/common/InputManager;->getPopupKeyboardView()Lcom/ime/framework/view/PopupKeyboardView;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/ime/framework/view/AbstractViewController;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/ime/framework/common/InputManager;->getPopupKeyboardView()Lcom/ime/framework/view/PopupKeyboardView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ime/framework/view/PopupKeyboardView;->hideKeyboard()V

    :cond_0
    invoke-virtual {p0}, Lcom/ime/framework/view/AbstractViewController;->dismissPopupCandidate()V

    const/4 v1, 0x0

    invoke-virtual {p0, v5}, Lcom/ime/framework/view/AbstractViewController;->getCandiateView(Z)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/view/View;->isShown()Z

    move-result v1

    :cond_1
    iget-object v3, p0, Lcom/ime/framework/view/AbstractViewController;->mCandidateView:Lcom/ime/framework/view/candidate/AbstractCandidateView;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/ime/framework/view/AbstractViewController;->mCandidateView:Lcom/ime/framework/view/candidate/AbstractCandidateView;

    invoke-virtual {v3, v6}, Lcom/ime/framework/view/candidate/AbstractCandidateView;->needToUpdateCandidateLayout(Z)V

    :cond_2
    iget-object v3, p0, Lcom/ime/framework/view/AbstractViewController;->mInputManager:Lcom/ime/framework/common/InputManager;

    iget-object v4, p0, Lcom/ime/framework/view/AbstractViewController;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v4, v5}, Lcom/ime/framework/common/InputManager;->getCandidateView(Z)Landroid/view/View;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/ime/framework/common/InputManager;->setCandidateView(Landroid/view/View;)V

    iget-object v3, p0, Lcom/ime/framework/view/AbstractViewController;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-virtual {p0}, Lcom/ime/framework/view/AbstractViewController;->getSuggestions()Ljava/util/ArrayList;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/ime/framework/common/InputManager;->setCandidates(Ljava/util/ArrayList;)V

    iget-object v3, p0, Lcom/ime/framework/view/AbstractViewController;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/ime/framework/common/InputManager;->isChnMode()Z

    move-result v3

    if-eqz v3, :cond_7

    if-eq p1, v6, :cond_3

    const/4 v3, 0x2

    if-ne p1, v3, :cond_7

    :cond_3
    iget-object v3, p0, Lcom/ime/framework/view/AbstractViewController;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v3, v6}, Lcom/ime/framework/common/InputManager;->setToolbarVisibility(Z)V

    iget-object v3, p0, Lcom/ime/framework/view/AbstractViewController;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/ime/framework/common/InputManager;->getIsNumInputmodeBy123Key()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-static {}, Lcom/ime/framework/repository/InputModeStatus;->getIsNumInputMode()Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_4
    sget-object v0, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mNumCandidate:Ljava/lang/StringBuilder;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    :cond_5
    invoke-static {v5}, Lcom/ime/framework/repository/InputModeStatus;->setIsNumInputMode(Z)V

    iget-object v3, p0, Lcom/ime/framework/view/AbstractViewController;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v3, v5}, Lcom/ime/framework/common/InputManager;->setIsNumInputmodeBy123Key(Z)V

    :cond_6
    :goto_1
    return-void

    :pswitch_0
    iget-object v3, p0, Lcom/ime/framework/view/AbstractViewController;->mOneHandLeftViewLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v3, p0, Lcom/ime/framework/view/AbstractViewController;->mOneHandRightViewLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    :pswitch_1
    iget-object v3, p0, Lcom/ime/framework/view/AbstractViewController;->mOneHandLeftViewLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v3, p0, Lcom/ime/framework/view/AbstractViewController;->mOneHandRightViewLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    :cond_7
    iget-object v3, p0, Lcom/ime/framework/view/AbstractViewController;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v3, v1}, Lcom/ime/framework/common/InputManager;->setCandidatesViewShown(Z)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setPhoneticSpellLayout(Ljava/util/ArrayList;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;Z)V"
        }
    .end annotation

    const/16 v3, 0x8

    iget-object v1, p0, Lcom/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v1}, Lcom/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v0

    if-ne v0, v3, :cond_5

    iget-object v1, p0, Lcom/ime/framework/view/AbstractViewController;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->isMultiwindowPhone()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/ime/framework/view/AbstractViewController;->mFloatingPhonepadView:Landroid/widget/FrameLayout;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/ime/framework/view/AbstractViewController;->getCurrentPhoneticSpellScroll()Landroid/widget/FrameLayout;

    move-result-object v1

    iput-object v1, p0, Lcom/ime/framework/view/AbstractViewController;->mFloatingPhonepadView:Landroid/widget/FrameLayout;

    :cond_0
    iget-object v1, p0, Lcom/ime/framework/view/AbstractViewController;->mPhoneticSpellScrollLayout:Landroid/widget/LinearLayout;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/ime/framework/view/AbstractViewController;->mFloatingPhonepadView:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/ime/framework/view/AbstractViewController;->getPhoneticSpellScrollLayoutRscId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/ime/framework/view/AbstractViewController;->mPhoneticSpellScrollLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/ime/framework/view/AbstractViewController;->mFloatingPhonepadView:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/ime/framework/view/AbstractViewController;->getPhoneticSpellScrollViewRscId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;

    iput-object v1, p0, Lcom/ime/framework/view/AbstractViewController;->mPhoneticSpellScrollView:Lcom/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;

    iget-object v1, p0, Lcom/ime/framework/view/AbstractViewController;->mPhoneticSpellScrollView:Lcom/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/ime/framework/view/AbstractViewController;->mPhoneticSpellScrollView:Lcom/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;

    invoke-virtual {v1, v3}, Lcom/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/ime/framework/view/AbstractViewController;->mPhoneticSpellScrollView:Lcom/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;

    iget-object v2, p0, Lcom/ime/framework/view/AbstractViewController;->mPhoneticSpellScrollLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Lcom/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->initView(Landroid/widget/LinearLayout;)V

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/ime/framework/view/AbstractViewController;->mPhoneticSpellScrollView:Lcom/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/ime/framework/view/AbstractViewController;->mPhoneticSpellScrollView:Lcom/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;

    invoke-virtual {v1, p2}, Lcom/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->setPhoneticSpellScrollViewShown(Z)V

    iget-object v1, p0, Lcom/ime/framework/view/AbstractViewController;->mPhoneticSpellScrollView:Lcom/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;

    invoke-virtual {v1, p1}, Lcom/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->setPhoeticSpellScrollViewList(Ljava/util/ArrayList;)V

    if-eqz p2, :cond_2

    iget-object v1, p0, Lcom/ime/framework/view/AbstractViewController;->mPhoneticSpellScrollView:Lcom/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->setSpellToSpellLayout(Z)V

    :cond_2
    iget-object v1, p0, Lcom/ime/framework/view/AbstractViewController;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->isSwiftKeyMode()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/ime/framework/view/AbstractViewController;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->isChnMode()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v1}, Lcom/ime/framework/inputmode/InputModeManager;->getCurrentPreferenceInputMethod()I

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    iget-object v1, p0, Lcom/ime/framework/view/AbstractViewController;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->isChineseSpellText()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p0}, Lcom/ime/framework/view/AbstractViewController;->updateKeyboard()V

    :cond_4
    return-void

    :cond_5
    iget-object v1, p0, Lcom/ime/framework/view/AbstractViewController;->mPhonepadView:Landroid/widget/FrameLayout;

    if-nez v1, :cond_6

    invoke-virtual {p0}, Lcom/ime/framework/view/AbstractViewController;->getCurrentPhoneticSpellScroll()Landroid/widget/FrameLayout;

    move-result-object v1

    iput-object v1, p0, Lcom/ime/framework/view/AbstractViewController;->mPhonepadView:Landroid/widget/FrameLayout;

    :cond_6
    iget-object v1, p0, Lcom/ime/framework/view/AbstractViewController;->mPhoneticSpellScrollLayout:Landroid/widget/LinearLayout;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/ime/framework/view/AbstractViewController;->mPhonepadView:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/ime/framework/view/AbstractViewController;->getPhoneticSpellScrollLayoutRscId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/ime/framework/view/AbstractViewController;->mPhoneticSpellScrollLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/ime/framework/view/AbstractViewController;->mPhonepadView:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/ime/framework/view/AbstractViewController;->getPhoneticSpellScrollViewRscId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;

    iput-object v1, p0, Lcom/ime/framework/view/AbstractViewController;->mPhoneticSpellScrollView:Lcom/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;

    iget-object v1, p0, Lcom/ime/framework/view/AbstractViewController;->mPhoneticSpellScrollView:Lcom/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;

    invoke-virtual {v1, v3}, Lcom/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/ime/framework/view/AbstractViewController;->mPhoneticSpellScrollView:Lcom/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;

    iget-object v2, p0, Lcom/ime/framework/view/AbstractViewController;->mPhoneticSpellScrollLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Lcom/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->initView(Landroid/widget/LinearLayout;)V

    goto :goto_0
.end method

.method public setSecondarySymbolStatus(I)V
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v0, p1}, Lcom/ime/framework/inputmode/InputModeManager;->setSecondarySymbolStatus(I)V

    return-void
.end method

.method public setSuggestions(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    const/4 v3, 0x1

    iget-object v1, p0, Lcom/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v1}, Lcom/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode()Z

    move-result v0

    iget-object v1, p0, Lcom/ime/framework/view/AbstractViewController;->mCandidateView:Lcom/ime/framework/view/candidate/AbstractCandidateView;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/ime/framework/view/AbstractViewController;->getCurrentCandidateView()Lcom/ime/framework/view/candidate/AbstractCandidateView;

    move-result-object v1

    iput-object v1, p0, Lcom/ime/framework/view/AbstractViewController;->mCandidateView:Lcom/ime/framework/view/candidate/AbstractCandidateView;

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_1
    iget-object v1, p0, Lcom/ime/framework/view/AbstractViewController;->mCandidateView:Lcom/ime/framework/view/candidate/AbstractCandidateView;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/ime/framework/view/AbstractViewController;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->isMobileKeyboard()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/ime/framework/view/AbstractViewController;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->isChnMode()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/ime/framework/view/AbstractViewController;->mInputManager:Lcom/ime/framework/common/InputManager;

    iget-object v2, p0, Lcom/ime/framework/view/AbstractViewController;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2, v3}, Lcom/ime/framework/common/InputManager;->getCandidateView(Z)Landroid/view/View;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/ime/framework/common/InputManager;->setCandidateView(Landroid/view/View;)V

    :cond_2
    iget-object v1, p0, Lcom/ime/framework/view/AbstractViewController;->mCandidateView:Lcom/ime/framework/view/candidate/AbstractCandidateView;

    invoke-virtual {v1, v3}, Lcom/ime/framework/view/candidate/AbstractCandidateView;->updateExpandCandViews(Z)V

    iget-object v1, p0, Lcom/ime/framework/view/AbstractViewController;->mCandidateView:Lcom/ime/framework/view/candidate/AbstractCandidateView;

    invoke-virtual {v1, p1}, Lcom/ime/framework/view/candidate/AbstractCandidateView;->setCandidates(Ljava/util/ArrayList;)V

    :cond_3
    invoke-virtual {p0}, Lcom/ime/framework/view/AbstractViewController;->updateSpace()V

    return-void
.end method

.method protected abstract setSymbolPage(I)V
.end method

.method public setToolbarVisiblility(Z)V
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/view/AbstractViewController;->mCandidateView:Lcom/ime/framework/view/candidate/AbstractCandidateView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/view/AbstractViewController;->mCandidateView:Lcom/ime/framework/view/candidate/AbstractCandidateView;

    invoke-virtual {v0, p1}, Lcom/ime/framework/view/candidate/AbstractCandidateView;->setToolBarVisibility(Z)V

    :cond_0
    return-void
.end method

.method public showAllowAppPermissionGuideDialog()V
    .locals 2

    iget-object v0, p0, Lcom/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/ime/framework/view/AbstractKeyboardView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/view/AbstractViewController;->mTipsDialog:Lcom/ime/framework/view/TipsDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/view/AbstractViewController;->mTipsDialog:Lcom/ime/framework/view/TipsDialog;

    iget-object v1, p0, Lcom/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v0, v1}, Lcom/ime/framework/view/TipsDialog;->showAllowAppPermissionDialog(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public showDiscoverability(ILandroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/ime/framework/view/AbstractKeyboardView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/view/AbstractViewController;->mTipsDialog:Lcom/ime/framework/view/TipsDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/view/AbstractViewController;->mTipsDialog:Lcom/ime/framework/view/TipsDialog;

    iget-object v1, p0, Lcom/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v0, p1, p2, v1}, Lcom/ime/framework/view/TipsDialog;->showDiscoverability(ILandroid/view/View;Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public showEmptyShortcutsGuideDialog()V
    .locals 2

    iget-object v0, p0, Lcom/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/ime/framework/view/AbstractKeyboardView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/view/AbstractViewController;->mTipsDialog:Lcom/ime/framework/view/TipsDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/view/AbstractViewController;->mTipsDialog:Lcom/ime/framework/view/TipsDialog;

    iget-object v1, p0, Lcom/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v0, v1}, Lcom/ime/framework/view/TipsDialog;->showEmptyShortcutsGuideDialog(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public showFullscreenHwrPanel()V
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/view/AbstractViewController;->mFullScreenHwrKeyboardView:Lcom/ime/framework/view/FullScreenHwrKeyboardView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/view/AbstractViewController;->mFullScreenHwrKeyboardView:Lcom/ime/framework/view/FullScreenHwrKeyboardView;

    invoke-virtual {v0}, Lcom/ime/framework/view/FullScreenHwrKeyboardView;->showFullscreenHwrPanel()V

    :cond_0
    return-void
.end method

.method public showHalfFullWidthSwitchDialog()V
    .locals 2

    iget-object v0, p0, Lcom/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/ime/framework/view/AbstractKeyboardView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/view/AbstractViewController;->mTipsDialog:Lcom/ime/framework/view/TipsDialog;

    iget-object v1, p0, Lcom/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v0, v1}, Lcom/ime/framework/view/TipsDialog;->showHalfFullWidthSwitchDialog(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public showLanguageSelectDialog()V
    .locals 6

    const v5, 0x656e4742

    iget-object v2, p0, Lcom/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/ime/framework/view/AbstractKeyboardView;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/ime/framework/view/AbstractKeyboardView;

    iget-object v3, p0, Lcom/ime/framework/view/AbstractViewController;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v4, "INPUT_LANGUAGE"

    invoke-interface {v3, v4, v5}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/ime/framework/view/AbstractKeyboardView;->setInputLanguage(I)V

    iget-object v2, p0, Lcom/ime/framework/view/AbstractViewController;->mTipsDialog:Lcom/ime/framework/view/TipsDialog;

    iget-object v3, p0, Lcom/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v2, v3}, Lcom/ime/framework/view/TipsDialog;->showLanguageSelectDialog(Landroid/view/View;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v2}, Lcom/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v0

    iget-object v2, p0, Lcom/ime/framework/view/AbstractViewController;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/ime/framework/common/InputManager;->isUsePopupKeyboard()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/ime/framework/view/AbstractViewController;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/ime/framework/common/InputManager;->isMultiwindowPhone()Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_2
    const/4 v1, 0x1

    :goto_1
    const/16 v2, 0x8

    if-eq v0, v2, :cond_3

    const/4 v2, 0x7

    if-ne v0, v2, :cond_0

    :cond_3
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/ime/framework/view/AbstractViewController;->mCurrentViewFloating:Lcom/ime/framework/view/AbstractKeyboardView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/ime/framework/view/AbstractViewController;->mCurrentViewFloating:Lcom/ime/framework/view/AbstractKeyboardView;

    iget-object v3, p0, Lcom/ime/framework/view/AbstractViewController;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v4, "INPUT_LANGUAGE"

    invoke-interface {v3, v4, v5}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/ime/framework/view/AbstractKeyboardView;->setInputLanguage(I)V

    iget-object v2, p0, Lcom/ime/framework/view/AbstractViewController;->mTipsDialog:Lcom/ime/framework/view/TipsDialog;

    iget-object v3, p0, Lcom/ime/framework/view/AbstractViewController;->mCurrentViewFloating:Lcom/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v2, v3}, Lcom/ime/framework/view/TipsDialog;->showLanguageSelectDialog(Landroid/view/View;)V

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public showModeChangePopupKeyboard()V
    .locals 2

    iget-object v1, p0, Lcom/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v1}, Lcom/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    iget-object v1, p0, Lcom/ime/framework/view/AbstractViewController;->mCurrentViewLeft:Lcom/ime/framework/view/AbstractKeyboardView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/ime/framework/view/AbstractViewController;->mCurrentViewRight:Lcom/ime/framework/view/AbstractKeyboardView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/ime/framework/view/AbstractViewController;->mCurrentViewLeft:Lcom/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v1}, Lcom/ime/framework/view/AbstractKeyboardView;->showModeChangePopupKeyboard()Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v1, 0x8

    if-ne v0, v1, :cond_2

    iget-object v1, p0, Lcom/ime/framework/view/AbstractViewController;->mCurrentViewFloating:Lcom/ime/framework/view/AbstractKeyboardView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/ime/framework/view/AbstractViewController;->mCurrentViewFloating:Lcom/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v1}, Lcom/ime/framework/view/AbstractKeyboardView;->showModeChangePopupKeyboard()Z

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/ime/framework/view/AbstractKeyboardView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v1}, Lcom/ime/framework/view/AbstractKeyboardView;->showModeChangePopupKeyboard()Z

    goto :goto_0
.end method

.method public showOneHandedGuideDialog()V
    .locals 2

    iget-object v0, p0, Lcom/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/ime/framework/view/AbstractKeyboardView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/view/AbstractViewController;->mTipsDialog:Lcom/ime/framework/view/TipsDialog;

    iget-object v1, p0, Lcom/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v0, v1}, Lcom/ime/framework/view/TipsDialog;->showOneHandedGuideDialog(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public showOrDismissPoup(Landroid/view/View;Lcom/ime/framework/view/toolbar/ToolBarView$ContentViewType;)V
    .locals 22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mPopupWindow:Landroid/widget/PopupWindow;

    move-object/from16 v17, v0

    if-eqz v17, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mPopupWindow:Landroid/widget/PopupWindow;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v17

    if-eqz v17, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mPopupWindow:Landroid/widget/PopupWindow;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/PopupWindow;->dismiss()V

    :goto_0
    return-void

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mPopupWindow:Landroid/widget/PopupWindow;

    move-object/from16 v17, v0

    if-eqz v17, :cond_1

    if-nez p1, :cond_2

    :cond_1
    new-instance v17, Landroid/widget/PopupWindow;

    invoke-direct/range {v17 .. v17}, Landroid/widget/PopupWindow;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ime/framework/view/AbstractViewController;->mPopupWindow:Landroid/widget/PopupWindow;

    :cond_2
    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v7

    const/4 v11, 0x0

    invoke-static {}, Lcom/ime/framework/repository/InputModeStatus;->getInputRange()I

    move-result v12

    sget-object v17, Lcom/ime/framework/view/AbstractViewController$7;->$SwitchMap$com$ime$framework$view$toolbar$ToolBarView$ContentViewType:[I

    invoke-virtual/range {p2 .. p2}, Lcom/ime/framework/view/toolbar/ToolBarView$ContentViewType;->ordinal()I

    move-result v18

    aget v17, v17, v18

    packed-switch v17, :pswitch_data_0

    :goto_1
    if-nez v11, :cond_6

    const-string v17, "SamsungIME_UnifiedIME"

    const-string v18, "showOrDismissPoup popupView is null"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_0
    const/16 v17, 0x8

    move/from16 v0, v17

    if-ne v7, v0, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v17, v0

    const v18, 0x7f03009e

    const/16 v19, 0x0

    invoke-interface/range {v17 .. v19}, Lcom/ime/framework/common/InputManager;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/ime/framework/view/toolbar/AbstractToolbarPopupView;

    goto :goto_1

    :cond_3
    const/16 v17, 0x4

    move/from16 v0, v17

    if-ne v7, v0, :cond_4

    if-nez v12, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v17, v0

    const v18, 0x7f03009f

    const/16 v19, 0x0

    invoke-interface/range {v17 .. v19}, Lcom/ime/framework/common/InputManager;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/ime/framework/view/toolbar/AbstractToolbarPopupView;

    goto :goto_1

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v17

    move-object/from16 v0, v17

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    move/from16 v17, v0

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v17, v0

    const v18, 0x7f0300a0

    const/16 v19, 0x0

    invoke-interface/range {v17 .. v19}, Lcom/ime/framework/common/InputManager;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/ime/framework/view/toolbar/AbstractToolbarPopupView;

    goto :goto_1

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v17, v0

    const v18, 0x7f0300a1

    const/16 v19, 0x0

    invoke-interface/range {v17 .. v19}, Lcom/ime/framework/common/InputManager;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/ime/framework/view/toolbar/AbstractToolbarPopupView;

    goto :goto_1

    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v17, v0

    const v18, 0x7f03009b

    const/16 v19, 0x0

    invoke-interface/range {v17 .. v19}, Lcom/ime/framework/common/InputManager;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/ime/framework/view/toolbar/AbstractToolbarPopupView;

    goto/16 :goto_1

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mPopupWindow:Landroid/widget/PopupWindow;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v11, v0, v1}, Lcom/ime/framework/view/toolbar/AbstractToolbarPopupView;->build(Landroid/widget/PopupWindow;Lcom/ime/framework/view/toolbar/ToolBarView$ContentViewType;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mPopupWindow:Landroid/widget/PopupWindow;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mPopupWindow:Landroid/widget/PopupWindow;

    move-object/from16 v17, v0

    new-instance v18, Landroid/graphics/drawable/ColorDrawable;

    const/16 v19, 0x0

    invoke-direct/range {v18 .. v19}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual/range {v17 .. v18}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mPopupWindow:Landroid/widget/PopupWindow;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mPopupWindow:Landroid/widget/PopupWindow;

    move-object/from16 v17, v0

    const/16 v18, 0x2

    invoke-virtual/range {v17 .. v18}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mPopupWindow:Landroid/widget/PopupWindow;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mPopupWindow:Landroid/widget/PopupWindow;

    move-object/from16 v17, v0

    const v18, 0x7f0e01f9

    invoke-virtual/range {v17 .. v18}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mPopupWindow:Landroid/widget/PopupWindow;

    move-object/from16 v17, v0

    new-instance v18, Lcom/ime/framework/view/AbstractViewController$4;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/ime/framework/view/AbstractViewController$4;-><init>(Lcom/ime/framework/view/AbstractViewController;Lcom/ime/framework/view/toolbar/ToolBarView$ContentViewType;)V

    invoke-virtual/range {v17 .. v18}, Landroid/widget/PopupWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v14, v0, [I

    const/4 v5, 0x0

    const/4 v4, 0x0

    if-eqz p1, :cond_7

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/View;->getLocationInWindow([I)V

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v5

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v4

    :cond_7
    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/ime/framework/common/InputManager;->isEmoticonMode()Z

    move-result v17

    if-eqz v17, :cond_b

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/view/AbstractViewController;->isEnableOneHandKeypad()Z

    move-result v17

    if-eqz v17, :cond_a

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/view/AbstractViewController;->getEmoticonViewHeight()I

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/ime/framework/common/InputManager;->getKeyboardViewHeight()I

    move-result v18

    add-int v8, v17, v18

    :goto_2
    const/4 v9, 0x0

    const/16 v17, 0x8

    move/from16 v0, v17

    if-ne v7, v0, :cond_c

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/view/AbstractViewController;->getPopupKeyboardView()Lcom/ime/framework/view/PopupKeyboardView;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/ime/framework/view/PopupKeyboardView;->getFloatingKeyboardWidth()I

    move-result v9

    :goto_3
    const/16 v17, 0x7

    move/from16 v0, v17

    if-ne v7, v0, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f09079f

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    :cond_8
    array-length v0, v14

    move/from16 v17, v0

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_9

    const/16 v17, 0x0

    aget v17, v14, v17

    div-int/lit8 v18, v5, 0x2

    add-int v17, v17, v18

    add-int v17, v17, v6

    move/from16 v0, v17

    invoke-virtual {v11, v0, v9}, Lcom/ime/framework/view/toolbar/AbstractToolbarPopupView;->adjustPointers(II)V

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/ime/framework/inputmode/InputModeManager;->isHandwriteFSMode()Z

    move-result v17

    if-eqz v17, :cond_d

    if-nez v12, :cond_d

    sget-object v17, Lcom/ime/framework/view/toolbar/ToolBarView$ContentViewType;->TOOLBAR_SELECTION_CONTROL:Lcom/ime/framework/view/toolbar/ToolBarView$ContentViewType;

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    if-eq v0, v1, :cond_d

    const/4 v10, 0x1

    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f090791

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v17

    sub-int v13, v4, v17

    if-eqz v10, :cond_e

    invoke-virtual {v11}, Lcom/ime/framework/view/toolbar/AbstractToolbarPopupView;->getPaddingLeft()I

    move-result v17

    const/16 v18, 0x0

    invoke-virtual {v11}, Lcom/ime/framework/view/toolbar/AbstractToolbarPopupView;->getPaddingRight()I

    move-result v19

    add-int v20, v8, v13

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v11, v0, v1, v2, v3}, Lcom/ime/framework/view/toolbar/AbstractToolbarPopupView;->setPadding(IIII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mPopupWindow:Landroid/widget/PopupWindow;

    move-object/from16 v17, v0

    const/16 v18, -0x1

    const/16 v19, -0x2

    invoke-virtual/range {v17 .. v19}, Landroid/widget/PopupWindow;->setWindowLayoutMode(II)V

    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mPopupWindow:Landroid/widget/PopupWindow;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/PopupWindow;->setAttachedInDecor(Z)V

    const/16 v17, 0x8

    move/from16 v0, v17

    if-ne v7, v0, :cond_10

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/view/AbstractViewController;->getPopupKeyboardView()Lcom/ime/framework/view/PopupKeyboardView;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/ime/framework/view/PopupKeyboardView;->getCurrentLocationX()I

    move-result v17

    add-int v15, v15, v17

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/view/AbstractViewController;->getPopupKeyboardView()Lcom/ime/framework/view/PopupKeyboardView;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/ime/framework/view/PopupKeyboardView;->getKeyboardCurrentLocationY()I

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/ime/framework/common/InputManager;->getCandidateViewHeight()I

    move-result v18

    sub-int v16, v17, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mPopupWindow:Landroid/widget/PopupWindow;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/ime/framework/common/InputManager;->getPopupCandidateView()Lcom/ime/framework/view/PopupCandidateView;

    move-result-object v18

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v16

    invoke-virtual {v0, v1, v2, v15, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto/16 :goto_0

    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/view/AbstractViewController;->getEmoticonViewHeight()I

    move-result v8

    goto/16 :goto_2

    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/ime/framework/common/InputManager;->getKeyboardViewHeight()I

    move-result v8

    goto/16 :goto_2

    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/ime/framework/common/InputManager;->getKeyboardViewWidth()I

    move-result v9

    goto/16 :goto_3

    :cond_d
    const/4 v10, 0x0

    goto/16 :goto_4

    :cond_e
    invoke-virtual {v11}, Lcom/ime/framework/view/toolbar/AbstractToolbarPopupView;->getPaddingLeft()I

    move-result v17

    invoke-virtual {v11}, Lcom/ime/framework/view/toolbar/AbstractToolbarPopupView;->getPaddingRight()I

    move-result v18

    invoke-virtual {v11}, Lcom/ime/framework/view/toolbar/AbstractToolbarPopupView;->getPaddingBottom()I

    move-result v19

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v11, v0, v13, v1, v2}, Lcom/ime/framework/view/toolbar/AbstractToolbarPopupView;->setPadding(IIII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mPopupWindow:Landroid/widget/PopupWindow;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Landroid/widget/PopupWindow;->setWindowLayoutMode(II)V

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/view/AbstractViewController;->isEnableOneHandKeypad()Z

    move-result v17

    if-eqz v17, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mPopupWindow:Landroid/widget/PopupWindow;

    move-object/from16 v17, v0

    const/16 v18, -0x1

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Landroid/widget/PopupWindow;->setWindowLayoutMode(II)V

    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mPopupWindow:Landroid/widget/PopupWindow;

    move-object/from16 v17, v0

    add-int v18, v8, v4

    invoke-virtual/range {v17 .. v18}, Landroid/widget/PopupWindow;->setHeight(I)V

    goto/16 :goto_5

    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mPopupWindow:Landroid/widget/PopupWindow;

    move-object/from16 v17, v0

    add-int v18, v9, v6

    invoke-virtual/range {v17 .. v18}, Landroid/widget/PopupWindow;->setWidth(I)V

    goto :goto_6

    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mPopupWindow:Landroid/widget/PopupWindow;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/AbstractViewController;->mCandidateView:Lcom/ime/framework/view/candidate/AbstractCandidateView;

    move-object/from16 v18, v0

    const/16 v19, 0x53

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-virtual/range {v17 .. v21}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public showPenDetectionGuideDialog()V
    .locals 2

    iget-object v0, p0, Lcom/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/ime/framework/view/AbstractKeyboardView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/view/AbstractViewController;->mTipsDialog:Lcom/ime/framework/view/TipsDialog;

    iget-object v1, p0, Lcom/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v0, v1}, Lcom/ime/framework/view/TipsDialog;->showPenDetectionGuideDialog(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public showPinchZoomGuideDialog()V
    .locals 2

    iget-object v0, p0, Lcom/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/ime/framework/view/AbstractKeyboardView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/view/AbstractViewController;->mTipsDialog:Lcom/ime/framework/view/TipsDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/view/AbstractViewController;->mTipsDialog:Lcom/ime/framework/view/TipsDialog;

    iget-object v1, p0, Lcom/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v0, v1}, Lcom/ime/framework/view/TipsDialog;->showPinchZoomGuideDialog(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public showSwiftkeyGuideDialog()V
    .locals 2

    iget-object v0, p0, Lcom/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/ime/framework/view/AbstractKeyboardView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/view/AbstractViewController;->mTipsDialog:Lcom/ime/framework/view/TipsDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/view/AbstractViewController;->mTipsDialog:Lcom/ime/framework/view/TipsDialog;

    iget-object v1, p0, Lcom/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v0, v1}, Lcom/ime/framework/view/TipsDialog;->showSwiftkeyGuideDialog(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public showSwiftkeyRemoveTermDialog(Ljava/lang/String;I)V
    .locals 3

    iget-object v1, p0, Lcom/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v1}, Lcom/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v0

    iget-object v1, p0, Lcom/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/ime/framework/view/AbstractKeyboardView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/ime/framework/view/AbstractViewController;->mTipsDialog:Lcom/ime/framework/view/TipsDialog;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/ime/framework/view/AbstractViewController;->mTipsDialog:Lcom/ime/framework/view/TipsDialog;

    iget-object v2, p0, Lcom/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v1, p1, p2, v2}, Lcom/ime/framework/view/TipsDialog;->showSwiftkeyRemoveTermDialog(Ljava/lang/String;ILandroid/view/View;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/ime/framework/view/AbstractViewController;->mCurrentViewRight:Lcom/ime/framework/view/AbstractKeyboardView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ime/framework/view/AbstractViewController;->mTipsDialog:Lcom/ime/framework/view/TipsDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ime/framework/view/AbstractViewController;->mTipsDialog:Lcom/ime/framework/view/TipsDialog;

    iget-object v2, p0, Lcom/ime/framework/view/AbstractViewController;->mCurrentViewRight:Lcom/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v1, p1, p2, v2}, Lcom/ime/framework/view/TipsDialog;->showSwiftkeyRemoveTermDialog(Ljava/lang/String;ILandroid/view/View;)V

    goto :goto_0
.end method

.method public showSwiftkeyRemoveTermDialogForcely(Ljava/lang/String;I)V
    .locals 3

    iget-object v1, p0, Lcom/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v1}, Lcom/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v0

    iget-object v1, p0, Lcom/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/ime/framework/view/AbstractKeyboardView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/ime/framework/view/AbstractViewController;->mTipsDialog:Lcom/ime/framework/view/TipsDialog;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/ime/framework/view/AbstractViewController;->mTipsDialog:Lcom/ime/framework/view/TipsDialog;

    iget-object v2, p0, Lcom/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v1, p1, p2, v2}, Lcom/ime/framework/view/TipsDialog;->showSwiftkeyRemoveTermDialogForcely(Ljava/lang/String;ILandroid/view/View;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/ime/framework/view/AbstractViewController;->mCurrentViewRight:Lcom/ime/framework/view/AbstractKeyboardView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ime/framework/view/AbstractViewController;->mTipsDialog:Lcom/ime/framework/view/TipsDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ime/framework/view/AbstractViewController;->mTipsDialog:Lcom/ime/framework/view/TipsDialog;

    iget-object v2, p0, Lcom/ime/framework/view/AbstractViewController;->mCurrentViewRight:Lcom/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v1, p1, p2, v2}, Lcom/ime/framework/view/TipsDialog;->showSwiftkeyRemoveTermDialogForcely(Ljava/lang/String;ILandroid/view/View;)V

    goto :goto_0
.end method

.method public showSymbolPopupKeyboard()V
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v0}, Lcom/ime/framework/inputmode/InputModeManager;->isFloatingHWRKeyboard()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ime/framework/view/AbstractViewController;->mCurrentViewFloating:Lcom/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v0}, Lcom/ime/framework/view/AbstractKeyboardView;->showSymbolPopupKeyboard()Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/ime/framework/view/AbstractKeyboardView;

    instance-of v0, v0, Lcom/ime/framework/view/AbstractHwrKeyboardView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v0}, Lcom/ime/framework/view/AbstractKeyboardView;->showSymbolPopupKeyboard()Z

    goto :goto_0
.end method

.method public showTipsDialogByIndex(I)V
    .locals 2

    iget-object v0, p0, Lcom/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/ime/framework/view/AbstractKeyboardView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/view/AbstractViewController;->mTipsDialog:Lcom/ime/framework/view/TipsDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/view/AbstractViewController;->mTipsDialog:Lcom/ime/framework/view/TipsDialog;

    iget-object v1, p0, Lcom/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v0, p1, v1}, Lcom/ime/framework/view/TipsDialog;->showTipsDialogByIndex(ILandroid/view/View;)V

    :cond_0
    return-void
.end method

.method public showTipsHwrInstallGuideDialog()V
    .locals 2

    iget-object v0, p0, Lcom/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/ime/framework/view/AbstractKeyboardView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/view/AbstractViewController;->mTipsDialog:Lcom/ime/framework/view/TipsDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/view/AbstractViewController;->mTipsDialog:Lcom/ime/framework/view/TipsDialog;

    iget-object v1, p0, Lcom/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v0, v1}, Lcom/ime/framework/view/TipsDialog;->showTipsHwrInstallGuideDialog(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public showTipsOneHandedGuideDialog()V
    .locals 2

    iget-object v0, p0, Lcom/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/ime/framework/view/AbstractKeyboardView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/view/AbstractViewController;->mTipsDialog:Lcom/ime/framework/view/TipsDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/view/AbstractViewController;->mTipsDialog:Lcom/ime/framework/view/TipsDialog;

    iget-object v1, p0, Lcom/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v0, v1}, Lcom/ime/framework/view/TipsDialog;->showTipsOneHandedGuideDialog(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public showTipsSwiftkeyGuideDialog()V
    .locals 2

    iget-object v0, p0, Lcom/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/ime/framework/view/AbstractKeyboardView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/view/AbstractViewController;->mTipsDialog:Lcom/ime/framework/view/TipsDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/view/AbstractViewController;->mTipsDialog:Lcom/ime/framework/view/TipsDialog;

    iget-object v1, p0, Lcom/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v0, v1}, Lcom/ime/framework/view/TipsDialog;->showTipsSwiftkeyGuideDialog(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public showTraceGuideDialog()V
    .locals 6

    iget-object v3, p0, Lcom/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/ime/framework/view/AbstractKeyboardView;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/ime/framework/view/AbstractViewController;->mTipsDialog:Lcom/ime/framework/view/TipsDialog;

    if-eqz v3, :cond_1

    :try_start_0
    iget-object v3, p0, Lcom/ime/framework/view/AbstractViewController;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "com.samsung.helphub"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_Sip_TutorialPopupType"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget v3, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    rem-int/lit8 v3, v3, 0xa

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    const-string v3, "ONE"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    iget-object v3, p0, Lcom/ime/framework/view/AbstractViewController;->mTipsDialog:Lcom/ime/framework/view/TipsDialog;

    iget-object v4, p0, Lcom/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v3, v4}, Lcom/ime/framework/view/TipsDialog;->showTraceGuideDialog(Landroid/view/View;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public showXt9PersonalizerAttentionDialog()V
    .locals 2

    iget-object v0, p0, Lcom/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/ime/framework/view/AbstractKeyboardView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/view/AbstractViewController;->mTipsDialog:Lcom/ime/framework/view/TipsDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/view/AbstractViewController;->mTipsDialog:Lcom/ime/framework/view/TipsDialog;

    iget-object v1, p0, Lcom/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v0, v1}, Lcom/ime/framework/view/TipsDialog;->showXt9PersonalizerAttentionDialog(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public showXt9_9RemoveTermDialog(Ljava/lang/String;I)V
    .locals 8

    const/16 v7, 0x8

    const/4 v1, 0x1

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/ime/framework/view/AbstractKeyboardView;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/ime/framework/view/AbstractViewController;->mTipsDialog:Lcom/ime/framework/view/TipsDialog;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/ime/framework/view/AbstractViewController;->mTipsDialog:Lcom/ime/framework/view/TipsDialog;

    iget-object v6, p0, Lcom/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v5, p1, p2, v6}, Lcom/ime/framework/view/TipsDialog;->showXt9_9RemoveTermDialog(Ljava/lang/String;ILandroid/view/View;)V

    :cond_0
    iget-object v5, p0, Lcom/ime/framework/view/AbstractViewController;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/ime/framework/common/InputManager;->isMultiwindowPhone()Z

    move-result v2

    iget-object v5, p0, Lcom/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v5}, Lcom/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v0

    if-eq v0, v7, :cond_1

    const/4 v5, 0x7

    if-ne v0, v5, :cond_3

    :cond_1
    move v3, v1

    :goto_0
    if-ne v0, v7, :cond_4

    if-eqz v2, :cond_4

    :goto_1
    if-eqz v3, :cond_2

    if-eqz v1, :cond_2

    iget-object v4, p0, Lcom/ime/framework/view/AbstractViewController;->mCurrentViewFloating:Lcom/ime/framework/view/AbstractKeyboardView;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/ime/framework/view/AbstractViewController;->mTipsDialog:Lcom/ime/framework/view/TipsDialog;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/ime/framework/view/AbstractViewController;->mTipsDialog:Lcom/ime/framework/view/TipsDialog;

    iget-object v5, p0, Lcom/ime/framework/view/AbstractViewController;->mCurrentViewFloating:Lcom/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v4, p1, p2, v5}, Lcom/ime/framework/view/TipsDialog;->showXt9_9RemoveTermDialog(Ljava/lang/String;ILandroid/view/View;)V

    :cond_2
    return-void

    :cond_3
    move v3, v4

    goto :goto_0

    :cond_4
    move v1, v4

    goto :goto_1
.end method

.method public update()V
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/ime/framework/view/AbstractKeyboardView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v0}, Lcom/ime/framework/view/AbstractKeyboardView;->invalidateAll()V

    :cond_0
    iget-object v0, p0, Lcom/ime/framework/view/AbstractViewController;->mCurrentViewLeft:Lcom/ime/framework/view/AbstractKeyboardView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ime/framework/view/AbstractViewController;->mCurrentViewLeft:Lcom/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v0}, Lcom/ime/framework/view/AbstractKeyboardView;->invalidateAll()V

    :cond_1
    iget-object v0, p0, Lcom/ime/framework/view/AbstractViewController;->mCurrentViewRight:Lcom/ime/framework/view/AbstractKeyboardView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ime/framework/view/AbstractViewController;->mCurrentViewRight:Lcom/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v0}, Lcom/ime/framework/view/AbstractKeyboardView;->invalidateAll()V

    :cond_2
    iget-object v0, p0, Lcom/ime/framework/view/AbstractViewController;->mCurrentViewFloating:Lcom/ime/framework/view/AbstractKeyboardView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/ime/framework/view/AbstractViewController;->mCurrentViewFloating:Lcom/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v0}, Lcom/ime/framework/view/AbstractKeyboardView;->invalidateAll()V

    :cond_3
    return-void
.end method

.method public updateIndianLang()V
    .locals 10

    const/4 v9, 0x5

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    iget-object v3, p0, Lcom/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v3}, Lcom/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v0

    const/4 v3, 0x7

    if-ne v0, v3, :cond_1

    iget-object v3, p0, Lcom/ime/framework/view/AbstractViewController;->mCurrentViewLeft:Lcom/ime/framework/view/AbstractKeyboardView;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/ime/framework/view/AbstractViewController;->mCurrentViewLeft:Lcom/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v3, v5}, Lcom/ime/framework/view/AbstractKeyboardView;->invalidateKey(I)V

    iget-object v3, p0, Lcom/ime/framework/view/AbstractViewController;->mCurrentViewLeft:Lcom/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v3, v6}, Lcom/ime/framework/view/AbstractKeyboardView;->invalidateKey(I)V

    iget-object v3, p0, Lcom/ime/framework/view/AbstractViewController;->mCurrentViewLeft:Lcom/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v3, v7}, Lcom/ime/framework/view/AbstractKeyboardView;->invalidateKey(I)V

    iget-object v3, p0, Lcom/ime/framework/view/AbstractViewController;->mCurrentViewLeft:Lcom/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v3, v8}, Lcom/ime/framework/view/AbstractKeyboardView;->invalidateKey(I)V

    iget-object v3, p0, Lcom/ime/framework/view/AbstractViewController;->mCurrentViewLeft:Lcom/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v3, v9}, Lcom/ime/framework/view/AbstractKeyboardView;->invalidateKey(I)V

    iget-object v3, p0, Lcom/ime/framework/view/AbstractViewController;->mCurrentViewLeft:Lcom/ime/framework/view/AbstractKeyboardView;

    const/4 v4, 0x6

    invoke-virtual {v3, v4}, Lcom/ime/framework/view/AbstractKeyboardView;->invalidateKey(I)V

    iget-object v3, p0, Lcom/ime/framework/view/AbstractViewController;->mCurrentViewLeft:Lcom/ime/framework/view/AbstractKeyboardView;

    const/4 v4, 0x7

    invoke-virtual {v3, v4}, Lcom/ime/framework/view/AbstractKeyboardView;->invalidateKey(I)V

    iget-object v3, p0, Lcom/ime/framework/view/AbstractViewController;->mCurrentViewLeft:Lcom/ime/framework/view/AbstractKeyboardView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/ime/framework/view/AbstractKeyboardView;->invalidateKey(I)V

    iget-object v3, p0, Lcom/ime/framework/view/AbstractViewController;->mCurrentViewLeft:Lcom/ime/framework/view/AbstractKeyboardView;

    const/16 v4, 0x9

    invoke-virtual {v3, v4}, Lcom/ime/framework/view/AbstractKeyboardView;->invalidateKey(I)V

    iget-object v3, p0, Lcom/ime/framework/view/AbstractViewController;->mCurrentViewLeft:Lcom/ime/framework/view/AbstractKeyboardView;

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Lcom/ime/framework/view/AbstractKeyboardView;->invalidateKey(I)V

    iget-object v3, p0, Lcom/ime/framework/view/AbstractViewController;->mCurrentViewLeft:Lcom/ime/framework/view/AbstractKeyboardView;

    const/16 v4, 0xb

    invoke-virtual {v3, v4}, Lcom/ime/framework/view/AbstractKeyboardView;->invalidateKey(I)V

    iget-object v3, p0, Lcom/ime/framework/view/AbstractViewController;->mCurrentViewLeft:Lcom/ime/framework/view/AbstractKeyboardView;

    const/16 v4, 0xc

    invoke-virtual {v3, v4}, Lcom/ime/framework/view/AbstractKeyboardView;->invalidateKey(I)V

    iget-object v3, p0, Lcom/ime/framework/view/AbstractViewController;->mCurrentViewLeft:Lcom/ime/framework/view/AbstractKeyboardView;

    const/16 v4, 0xd

    invoke-virtual {v3, v4}, Lcom/ime/framework/view/AbstractKeyboardView;->invalidateKey(I)V

    iget-object v3, p0, Lcom/ime/framework/view/AbstractViewController;->mCurrentViewLeft:Lcom/ime/framework/view/AbstractKeyboardView;

    const/16 v4, 0xe

    invoke-virtual {v3, v4}, Lcom/ime/framework/view/AbstractKeyboardView;->invalidateKey(I)V

    iget-object v3, p0, Lcom/ime/framework/view/AbstractViewController;->mCurrentViewLeft:Lcom/ime/framework/view/AbstractKeyboardView;

    const/16 v4, 0x10

    invoke-virtual {v3, v4}, Lcom/ime/framework/view/AbstractKeyboardView;->invalidateKey(I)V

    iget-object v3, p0, Lcom/ime/framework/view/AbstractViewController;->mCurrentViewLeft:Lcom/ime/framework/view/AbstractKeyboardView;

    const/16 v4, 0xf

    invoke-virtual {v3, v4}, Lcom/ime/framework/view/AbstractKeyboardView;->invalidateKey(I)V

    iget-object v3, p0, Lcom/ime/framework/view/AbstractViewController;->mCurrentViewLeft:Lcom/ime/framework/view/AbstractKeyboardView;

    const/16 v4, 0x11

    invoke-virtual {v3, v4}, Lcom/ime/framework/view/AbstractKeyboardView;->invalidateKey(I)V

    iget-object v3, p0, Lcom/ime/framework/view/AbstractViewController;->mCurrentViewLeft:Lcom/ime/framework/view/AbstractKeyboardView;

    const/16 v4, 0x12

    invoke-virtual {v3, v4}, Lcom/ime/framework/view/AbstractKeyboardView;->invalidateKey(I)V

    iget-object v3, p0, Lcom/ime/framework/view/AbstractViewController;->mCurrentViewLeft:Lcom/ime/framework/view/AbstractKeyboardView;

    const/16 v4, 0x13

    invoke-virtual {v3, v4}, Lcom/ime/framework/view/AbstractKeyboardView;->invalidateKey(I)V

    iget-object v3, p0, Lcom/ime/framework/view/AbstractViewController;->mCurrentViewLeft:Lcom/ime/framework/view/AbstractKeyboardView;

    const/16 v4, 0x14

    invoke-virtual {v3, v4}, Lcom/ime/framework/view/AbstractKeyboardView;->invalidateKey(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/ime/framework/view/AbstractKeyboardView;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/ime/framework/view/AbstractViewController;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/ime/framework/common/InputManager;->getRepository()Lcom/ime/framework/repository/Repository;

    move-result-object v2

    const-string v3, "INPUT_LANGUAGE"

    const v4, 0x656e5553

    invoke-interface {v2, v3, v4}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v1

    iget-object v3, p0, Lcom/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v3, v5}, Lcom/ime/framework/view/AbstractKeyboardView;->invalidateKey(I)V

    iget-object v3, p0, Lcom/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v3, v6}, Lcom/ime/framework/view/AbstractKeyboardView;->invalidateKey(I)V

    iget-object v3, p0, Lcom/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v3, v7}, Lcom/ime/framework/view/AbstractKeyboardView;->invalidateKey(I)V

    iget-object v3, p0, Lcom/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v3, v8}, Lcom/ime/framework/view/AbstractKeyboardView;->invalidateKey(I)V

    iget-object v3, p0, Lcom/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v3, v9}, Lcom/ime/framework/view/AbstractKeyboardView;->invalidateKey(I)V

    iget-object v3, p0, Lcom/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/ime/framework/view/AbstractKeyboardView;

    const/4 v4, 0x6

    invoke-virtual {v3, v4}, Lcom/ime/framework/view/AbstractKeyboardView;->invalidateKey(I)V

    const/high16 v3, 0x74610000

    if-ne v1, v3, :cond_2

    iget-object v3, p0, Lcom/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/ime/framework/view/AbstractKeyboardView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/ime/framework/view/AbstractKeyboardView;->invalidateKey(I)V

    :cond_2
    iget-object v3, p0, Lcom/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/ime/framework/view/AbstractKeyboardView;

    const/16 v4, 0x9

    invoke-virtual {v3, v4}, Lcom/ime/framework/view/AbstractKeyboardView;->invalidateKey(I)V

    iget-object v3, p0, Lcom/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/ime/framework/view/AbstractKeyboardView;

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Lcom/ime/framework/view/AbstractKeyboardView;->invalidateKey(I)V

    iget-object v3, p0, Lcom/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/ime/framework/view/AbstractKeyboardView;

    const/16 v4, 0xb

    invoke-virtual {v3, v4}, Lcom/ime/framework/view/AbstractKeyboardView;->invalidateKey(I)V

    iget-object v3, p0, Lcom/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/ime/framework/view/AbstractKeyboardView;

    const/16 v4, 0xc

    invoke-virtual {v3, v4}, Lcom/ime/framework/view/AbstractKeyboardView;->invalidateKey(I)V

    iget-object v3, p0, Lcom/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/ime/framework/view/AbstractKeyboardView;

    const/16 v4, 0xd

    invoke-virtual {v3, v4}, Lcom/ime/framework/view/AbstractKeyboardView;->invalidateKey(I)V

    iget-object v3, p0, Lcom/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/ime/framework/view/AbstractKeyboardView;

    const/16 v4, 0xe

    invoke-virtual {v3, v4}, Lcom/ime/framework/view/AbstractKeyboardView;->invalidateKey(I)V

    iget-object v3, p0, Lcom/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/ime/framework/view/AbstractKeyboardView;

    const/16 v4, 0xf

    invoke-virtual {v3, v4}, Lcom/ime/framework/view/AbstractKeyboardView;->invalidateKey(I)V

    iget-object v3, p0, Lcom/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/ime/framework/view/AbstractKeyboardView;

    const/16 v4, 0x10

    invoke-virtual {v3, v4}, Lcom/ime/framework/view/AbstractKeyboardView;->invalidateKey(I)V

    iget-object v3, p0, Lcom/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/ime/framework/view/AbstractKeyboardView;

    const/16 v4, 0x11

    invoke-virtual {v3, v4}, Lcom/ime/framework/view/AbstractKeyboardView;->invalidateKey(I)V

    iget-object v3, p0, Lcom/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/ime/framework/view/AbstractKeyboardView;

    const/16 v4, 0x12

    invoke-virtual {v3, v4}, Lcom/ime/framework/view/AbstractKeyboardView;->invalidateKey(I)V

    iget-object v3, p0, Lcom/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/ime/framework/view/AbstractKeyboardView;

    const/16 v4, 0x13

    invoke-virtual {v3, v4}, Lcom/ime/framework/view/AbstractKeyboardView;->invalidateKey(I)V

    iget-object v3, p0, Lcom/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/ime/framework/view/AbstractKeyboardView;

    const/16 v4, 0x14

    invoke-virtual {v3, v4}, Lcom/ime/framework/view/AbstractKeyboardView;->invalidateKey(I)V

    iget-object v3, p0, Lcom/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/ime/framework/view/AbstractKeyboardView;

    const/16 v4, 0x15

    invoke-virtual {v3, v4}, Lcom/ime/framework/view/AbstractKeyboardView;->invalidateKey(I)V

    iget-object v3, p0, Lcom/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/ime/framework/view/AbstractKeyboardView;

    const/16 v4, 0x16

    invoke-virtual {v3, v4}, Lcom/ime/framework/view/AbstractKeyboardView;->invalidateKey(I)V

    iget-object v3, p0, Lcom/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/ime/framework/view/AbstractKeyboardView;

    const/16 v4, 0x17

    invoke-virtual {v3, v4}, Lcom/ime/framework/view/AbstractKeyboardView;->invalidateKey(I)V

    iget-object v3, p0, Lcom/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/ime/framework/view/AbstractKeyboardView;

    const/16 v4, 0x18

    invoke-virtual {v3, v4}, Lcom/ime/framework/view/AbstractKeyboardView;->invalidateKey(I)V

    iget-object v3, p0, Lcom/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/ime/framework/view/AbstractKeyboardView;

    const/16 v4, 0x19

    invoke-virtual {v3, v4}, Lcom/ime/framework/view/AbstractKeyboardView;->invalidateKey(I)V

    iget-object v3, p0, Lcom/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/ime/framework/view/AbstractKeyboardView;

    const/16 v4, 0x1a

    invoke-virtual {v3, v4}, Lcom/ime/framework/view/AbstractKeyboardView;->invalidateKey(I)V

    iget-object v3, p0, Lcom/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/ime/framework/view/AbstractKeyboardView;

    const/16 v4, 0x1b

    invoke-virtual {v3, v4}, Lcom/ime/framework/view/AbstractKeyboardView;->invalidateKey(I)V

    iget-object v3, p0, Lcom/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/ime/framework/view/AbstractKeyboardView;

    const/16 v4, 0x1c

    invoke-virtual {v3, v4}, Lcom/ime/framework/view/AbstractKeyboardView;->invalidateKey(I)V

    iget-object v3, p0, Lcom/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/ime/framework/view/AbstractKeyboardView;

    const/16 v4, 0x1d

    invoke-virtual {v3, v4}, Lcom/ime/framework/view/AbstractKeyboardView;->invalidateKey(I)V

    iget-object v3, p0, Lcom/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/ime/framework/view/AbstractKeyboardView;

    const/16 v4, 0x1e

    invoke-virtual {v3, v4}, Lcom/ime/framework/view/AbstractKeyboardView;->invalidateKey(I)V

    iget-object v3, p0, Lcom/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/ime/framework/view/AbstractKeyboardView;

    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Lcom/ime/framework/view/AbstractKeyboardView;->invalidateKey(I)V

    goto/16 :goto_0
.end method

.method public updateIndianVowelRow()V
    .locals 0

    return-void
.end method

.method public updateKeyboard()V
    .locals 15

    iget-object v10, p0, Lcom/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v10}, Lcom/ime/framework/inputmode/InputModeManager;->updateValidInputMethod()V

    iget-object v10, p0, Lcom/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v10}, Lcom/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v2

    iget-object v10, p0, Lcom/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v10}, Lcom/ime/framework/inputmode/InputModeManager;->getInputRange()I

    move-result v3

    invoke-static {}, Lcom/ime/framework/repository/InputModeStatus;->getInputMethodStatus()I

    move-result v8

    invoke-static {}, Lcom/ime/framework/repository/InputModeStatus;->isHwrMode()Z

    move-result v4

    iget-object v10, p0, Lcom/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v10, v2}, Lcom/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode(I)Z

    move-result v10

    if-nez v10, :cond_5

    if-eqz v4, :cond_5

    const/4 v5, 0x1

    :goto_0
    if-ne v8, v2, :cond_2

    const/16 v10, 0x8

    if-ne v2, v10, :cond_0

    if-nez v5, :cond_2

    :cond_0
    invoke-static {}, Lcom/ime/framework/repository/InputModeStatus;->getPrevInputRange()I

    move-result v10

    const/4 v11, 0x3

    if-ne v10, v11, :cond_1

    invoke-static {}, Lcom/ime/framework/repository/InputModeStatus;->getInputRange()I

    move-result v10

    if-eqz v10, :cond_2

    :cond_1
    invoke-static {}, Lcom/ime/framework/repository/InputModeStatus;->getPrevInputRange()I

    move-result v10

    const/4 v11, 0x4

    if-ne v10, v11, :cond_3

    invoke-static {}, Lcom/ime/framework/repository/InputModeStatus;->getInputRange()I

    move-result v10

    if-nez v10, :cond_3

    :cond_2
    invoke-static {v3}, Lcom/ime/framework/repository/InputModeStatus;->setPrevInputRange(I)V

    iget-object v10, p0, Lcom/ime/framework/view/AbstractViewController;->mInputManager:Lcom/ime/framework/common/InputManager;

    iget-object v11, p0, Lcom/ime/framework/view/AbstractViewController;->mInputManager:Lcom/ime/framework/common/InputManager;

    const/4 v12, 0x1

    invoke-interface {v11, v12}, Lcom/ime/framework/common/InputManager;->getInputView(Z)Landroid/view/View;

    move-result-object v11

    invoke-interface {v10, v11}, Lcom/ime/framework/common/InputManager;->setInputView(Landroid/view/View;)V

    if-nez v5, :cond_3

    invoke-static {v2}, Lcom/ime/framework/repository/InputModeStatus;->setInputMethodStatus(I)V

    :cond_3
    iget-object v10, p0, Lcom/ime/framework/view/AbstractViewController;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v10}, Lcom/ime/framework/common/InputManager;->isMobileKeyboard()Z

    move-result v10

    if-eqz v10, :cond_7

    iget-object v10, p0, Lcom/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/ime/framework/view/AbstractKeyboardView;

    if-nez v10, :cond_6

    :cond_4
    :goto_1
    return-void

    :cond_5
    const/4 v5, 0x0

    goto :goto_0

    :cond_6
    invoke-virtual {p0}, Lcom/ime/framework/view/AbstractViewController;->getCurrentKeyboard()Lcom/ime/framework/view/DefaultKeyboard;

    move-result-object v0

    iget-object v10, p0, Lcom/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v10, v0}, Lcom/ime/framework/view/AbstractKeyboardView;->setKeyboard(Lcom/ime/framework/view/DefaultKeyboard;)V

    iget-object v10, p0, Lcom/ime/framework/view/AbstractViewController;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v10, v0}, Lcom/ime/framework/common/InputManager;->setKeyboard(Lcom/ime/framework/view/Keyboard;)V

    iget-object v10, p0, Lcom/ime/framework/view/AbstractViewController;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-virtual {v0}, Lcom/ime/framework/view/DefaultKeyboard;->getMinWidth()I

    move-result v11

    invoke-virtual {v0}, Lcom/ime/framework/view/DefaultKeyboard;->getHeight()I

    move-result v12

    invoke-interface {v10, v11, v12}, Lcom/ime/framework/common/InputManager;->setKeyboardSize(II)V

    goto :goto_1

    :cond_7
    const/4 v10, 0x7

    if-ne v2, v10, :cond_a

    iget-object v10, p0, Lcom/ime/framework/view/AbstractViewController;->mCurrentViewLeft:Lcom/ime/framework/view/AbstractKeyboardView;

    if-eqz v10, :cond_4

    iget-object v10, p0, Lcom/ime/framework/view/AbstractViewController;->mCurrentViewRight:Lcom/ime/framework/view/AbstractKeyboardView;

    if-eqz v10, :cond_4

    iget-object v10, p0, Lcom/ime/framework/view/AbstractViewController;->mCurrentViewLeft:Lcom/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v10}, Lcom/ime/framework/view/AbstractKeyboardView;->getSplitLeftKeyboardWidth()I

    move-result v7

    iget-object v10, p0, Lcom/ime/framework/view/AbstractViewController;->mCurrentViewRight:Lcom/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v10}, Lcom/ime/framework/view/AbstractKeyboardView;->getSplitRightKeyboardWidth()I

    move-result v9

    iget-object v10, p0, Lcom/ime/framework/view/AbstractViewController;->mCurrentViewLeft:Lcom/ime/framework/view/AbstractKeyboardView;

    const/4 v11, 0x1

    invoke-virtual {p0, v11}, Lcom/ime/framework/view/AbstractViewController;->getCurrentPopupKeyboard(Z)Lcom/ime/framework/view/DefaultKeyboard;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/ime/framework/view/AbstractKeyboardView;->setKeyboard(Lcom/ime/framework/view/DefaultKeyboard;)V

    iget-object v10, p0, Lcom/ime/framework/view/AbstractViewController;->mCurrentViewLeft:Lcom/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v10, v7}, Lcom/ime/framework/view/AbstractKeyboardView;->setKeyboardWidth(I)V

    iget-object v10, p0, Lcom/ime/framework/view/AbstractViewController;->mInputManager:Lcom/ime/framework/common/InputManager;

    iget-object v11, p0, Lcom/ime/framework/view/AbstractViewController;->mCurrentViewLeft:Lcom/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v11}, Lcom/ime/framework/view/AbstractKeyboardView;->getSplitKeyboardHeight()I

    move-result v11

    invoke-interface {v10, v7, v11}, Lcom/ime/framework/common/InputManager;->setKeyboardSize(II)V

    iget-object v10, p0, Lcom/ime/framework/view/AbstractViewController;->mCurrentViewRight:Lcom/ime/framework/view/AbstractKeyboardView;

    const/4 v11, 0x0

    invoke-virtual {p0, v11}, Lcom/ime/framework/view/AbstractViewController;->getCurrentPopupKeyboard(Z)Lcom/ime/framework/view/DefaultKeyboard;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/ime/framework/view/AbstractKeyboardView;->setKeyboard(Lcom/ime/framework/view/DefaultKeyboard;)V

    iget-object v10, p0, Lcom/ime/framework/view/AbstractViewController;->mCurrentViewRight:Lcom/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v10, v9}, Lcom/ime/framework/view/AbstractKeyboardView;->setKeyboardWidth(I)V

    iget-object v10, p0, Lcom/ime/framework/view/AbstractViewController;->mInputManager:Lcom/ime/framework/common/InputManager;

    iget-object v11, p0, Lcom/ime/framework/view/AbstractViewController;->mCurrentViewRight:Lcom/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v11}, Lcom/ime/framework/view/AbstractKeyboardView;->getSplitKeyboardHeight()I

    move-result v11

    invoke-interface {v10, v9, v11}, Lcom/ime/framework/common/InputManager;->setKeyboardSize(II)V

    iget-object v10, p0, Lcom/ime/framework/view/AbstractViewController;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-virtual {p0}, Lcom/ime/framework/view/AbstractViewController;->getCurrentKeyboard()Lcom/ime/framework/view/DefaultKeyboard;

    move-result-object v11

    invoke-interface {v10, v11}, Lcom/ime/framework/common/InputManager;->setKeyboard(Lcom/ime/framework/view/Keyboard;)V

    iget-object v10, p0, Lcom/ime/framework/view/AbstractViewController;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v10}, Lcom/ime/framework/common/InputManager;->getPopupKeyboardView()Lcom/ime/framework/view/PopupKeyboardView;

    move-result-object v6

    if-eqz v6, :cond_8

    invoke-virtual {v6, v7}, Lcom/ime/framework/view/PopupKeyboardView;->updateSplitLeftWidth(I)V

    invoke-virtual {v6, v9}, Lcom/ime/framework/view/PopupKeyboardView;->updateSplitRightWidth(I)V

    invoke-virtual {v6}, Lcom/ime/framework/view/PopupKeyboardView;->updateKeyboard()V

    :cond_8
    :goto_2
    iget-object v10, p0, Lcom/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v10}, Lcom/ime/framework/inputmode/InputModeManager;->isVOHWRmodeEnable()Z

    move-result v10

    if-eqz v10, :cond_4

    const/4 v10, 0x2

    if-eq v3, v10, :cond_4

    iget-object v10, p0, Lcom/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/ime/framework/view/AbstractKeyboardView;

    if-eqz v10, :cond_9

    iget-object v10, p0, Lcom/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/ime/framework/view/AbstractKeyboardView;

    iget v10, v10, Lcom/ime/framework/view/AbstractKeyboardView;->mWindowHeight:I

    const/16 v11, 0x780

    if-ne v10, v11, :cond_9

    iget-object v10, p0, Lcom/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/ime/framework/view/AbstractKeyboardView;

    iget v10, v10, Lcom/ime/framework/view/AbstractKeyboardView;->mWindowWidth:I

    const/16 v11, 0x438

    if-ne v10, v11, :cond_9

    iget-object v10, p0, Lcom/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/ime/framework/view/AbstractKeyboardView;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v10, v11, v12, v13, v14}, Lcom/ime/framework/view/AbstractKeyboardView;->setPadding(IIII)V

    :cond_9
    invoke-virtual {p0}, Lcom/ime/framework/view/AbstractViewController;->initHWR()V

    goto/16 :goto_1

    :cond_a
    const/16 v10, 0x8

    if-ne v2, v10, :cond_e

    iget-object v10, p0, Lcom/ime/framework/view/AbstractViewController;->mCurrentViewFloating:Lcom/ime/framework/view/AbstractKeyboardView;

    if-eqz v10, :cond_4

    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Lcom/ime/framework/view/AbstractViewController;->getCurrentPopupKeyboard(Z)Lcom/ime/framework/view/DefaultKeyboard;

    move-result-object v1

    iget-object v10, p0, Lcom/ime/framework/view/AbstractViewController;->mCurrentViewFloating:Lcom/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v10, v1}, Lcom/ime/framework/view/AbstractKeyboardView;->setKeyboard(Lcom/ime/framework/view/DefaultKeyboard;)V

    iget-object v10, p0, Lcom/ime/framework/view/AbstractViewController;->mCurrentViewFloating:Lcom/ime/framework/view/AbstractKeyboardView;

    iget-object v11, p0, Lcom/ime/framework/view/AbstractViewController;->mCurrentViewFloating:Lcom/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v11}, Lcom/ime/framework/view/AbstractKeyboardView;->getFloatingKeyboardWidth()I

    move-result v11

    invoke-virtual {v10, v11}, Lcom/ime/framework/view/AbstractKeyboardView;->setKeyboardWidth(I)V

    iget-object v10, p0, Lcom/ime/framework/view/AbstractViewController;->mCurrentViewFloating:Lcom/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v10}, Lcom/ime/framework/view/AbstractKeyboardView;->getFloatingKeyboardWidth()I

    move-result v10

    invoke-virtual {v1, v10}, Lcom/ime/framework/view/DefaultKeyboard;->setWidth(I)V

    iget-object v10, p0, Lcom/ime/framework/view/AbstractViewController;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v10, v1}, Lcom/ime/framework/common/InputManager;->setKeyboard(Lcom/ime/framework/view/Keyboard;)V

    iget-object v10, p0, Lcom/ime/framework/view/AbstractViewController;->mInputManager:Lcom/ime/framework/common/InputManager;

    iget-object v11, p0, Lcom/ime/framework/view/AbstractViewController;->mCurrentViewFloating:Lcom/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v11}, Lcom/ime/framework/view/AbstractKeyboardView;->getFloatingKeyboardWidth()I

    move-result v11

    iget-object v12, p0, Lcom/ime/framework/view/AbstractViewController;->mCurrentViewFloating:Lcom/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v12}, Lcom/ime/framework/view/AbstractKeyboardView;->getFloatingKeyboardHeight()I

    move-result v12

    invoke-interface {v10, v11, v12}, Lcom/ime/framework/common/InputManager;->setKeyboardSize(II)V

    iget-object v10, p0, Lcom/ime/framework/view/AbstractViewController;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v10}, Lcom/ime/framework/common/InputManager;->getInputModeManager()Lcom/ime/framework/inputmode/InputModeManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/ime/framework/inputmode/InputModeManager;->isBstHWRmodeEnable()Z

    move-result v10

    if-eqz v10, :cond_c

    invoke-static {}, Lcom/ime/framework/repository/InputModeStatus;->isHwrMode()Z

    move-result v10

    if-eqz v10, :cond_c

    iget-object v10, p0, Lcom/ime/framework/view/AbstractViewController;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v10}, Lcom/ime/framework/common/InputManager;->getHWManager()Lcom/ime/framework/engine/bsthwr/HWManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/ime/framework/engine/bsthwr/HWManager;->getBoxHWView()Lcom/ime/framework/engine/bsthwr/BoxHWView;

    move-result-object v10

    if-nez v10, :cond_d

    invoke-static {}, Lcom/ime/framework/repository/InputModeStatus;->getInputRange()I

    move-result v10

    if-nez v10, :cond_b

    iget-object v10, p0, Lcom/ime/framework/view/AbstractViewController;->mInputManager:Lcom/ime/framework/common/InputManager;

    iget-object v11, p0, Lcom/ime/framework/view/AbstractViewController;->mInputManager:Lcom/ime/framework/common/InputManager;

    const/4 v12, 0x1

    invoke-interface {v11, v12}, Lcom/ime/framework/common/InputManager;->getInputView(Z)Landroid/view/View;

    move-result-object v11

    invoke-interface {v10, v11}, Lcom/ime/framework/common/InputManager;->setInputView(Landroid/view/View;)V

    :cond_b
    iget-object v10, p0, Lcom/ime/framework/view/AbstractViewController;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v10}, Lcom/ime/framework/common/InputManager;->getHWManager()Lcom/ime/framework/engine/bsthwr/HWManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/ime/framework/engine/bsthwr/HWManager;->onInputModeChange()V

    :cond_c
    :goto_3
    iget-object v10, p0, Lcom/ime/framework/view/AbstractViewController;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v10}, Lcom/ime/framework/common/InputManager;->getPopupKeyboardView()Lcom/ime/framework/view/PopupKeyboardView;

    move-result-object v6

    if-eqz v6, :cond_8

    invoke-virtual {v6}, Lcom/ime/framework/view/PopupKeyboardView;->updateKeyboard()V

    goto/16 :goto_2

    :cond_d
    iget-object v10, p0, Lcom/ime/framework/view/AbstractViewController;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v10}, Lcom/ime/framework/common/InputManager;->getHWManager()Lcom/ime/framework/engine/bsthwr/HWManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/ime/framework/engine/bsthwr/HWManager;->onInputModeChange()V

    goto :goto_3

    :cond_e
    iget-object v10, p0, Lcom/ime/framework/view/AbstractViewController;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v10}, Lcom/ime/framework/common/InputManager;->getInputModeManager()Lcom/ime/framework/inputmode/InputModeManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/ime/framework/inputmode/InputModeManager;->isBstHWRmodeEnable()Z

    move-result v10

    if-nez v10, :cond_f

    const/4 v10, 0x4

    if-ne v2, v10, :cond_f

    iget-object v10, p0, Lcom/ime/framework/view/AbstractViewController;->mFullScreenHwrKeyboardView:Lcom/ime/framework/view/FullScreenHwrKeyboardView;

    if-eqz v10, :cond_4

    invoke-virtual {p0}, Lcom/ime/framework/view/AbstractViewController;->getCurrentKeyboard()Lcom/ime/framework/view/DefaultKeyboard;

    move-result-object v0

    iget-object v10, p0, Lcom/ime/framework/view/AbstractViewController;->mFullScreenHwrKeyboardView:Lcom/ime/framework/view/FullScreenHwrKeyboardView;

    invoke-virtual {v10, v0}, Lcom/ime/framework/view/FullScreenHwrKeyboardView;->setKeyboard(Lcom/ime/framework/view/DefaultKeyboard;)V

    iget-object v10, p0, Lcom/ime/framework/view/AbstractViewController;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v10, v0}, Lcom/ime/framework/common/InputManager;->setKeyboard(Lcom/ime/framework/view/Keyboard;)V

    iget-object v10, p0, Lcom/ime/framework/view/AbstractViewController;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-virtual {v0}, Lcom/ime/framework/view/DefaultKeyboard;->getMinWidth()I

    move-result v11

    invoke-virtual {v0}, Lcom/ime/framework/view/DefaultKeyboard;->getHeight()I

    move-result v12

    invoke-interface {v10, v11, v12}, Lcom/ime/framework/common/InputManager;->setKeyboardSize(II)V

    goto/16 :goto_2

    :cond_f
    iget-object v10, p0, Lcom/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/ime/framework/view/AbstractKeyboardView;

    if-eqz v10, :cond_4

    iget-object v10, p0, Lcom/ime/framework/view/AbstractViewController;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v10}, Lcom/ime/framework/common/InputManager;->getNeedChangeKeyboardHeight()Z

    move-result v10

    if-eqz v10, :cond_10

    const/4 v10, 0x1

    if-ne v2, v10, :cond_10

    iget-object v10, p0, Lcom/ime/framework/view/AbstractViewController;->mPhoneticSpellScrollView:Lcom/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;

    if-eqz v10, :cond_10

    iget-object v10, p0, Lcom/ime/framework/view/AbstractViewController;->mPhoneticSpellScrollView:Lcom/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;

    invoke-virtual {v10}, Lcom/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->isShown()Z

    move-result v10

    if-eqz v10, :cond_10

    iget-object v10, p0, Lcom/ime/framework/view/AbstractViewController;->mPhoneticSpellScrollView:Lcom/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;

    iget-object v11, p0, Lcom/ime/framework/view/AbstractViewController;->mPhoneticSpellScrollLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v10, v11}, Lcom/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->initView(Landroid/widget/LinearLayout;)V

    iget-object v10, p0, Lcom/ime/framework/view/AbstractViewController;->mPhoneticSpellScrollView:Lcom/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;

    invoke-virtual {v10}, Lcom/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->getPhoeticSpellScrollViewList()Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/ime/framework/view/AbstractViewController;->updatePhoneticSpell(Ljava/util/ArrayList;)V

    :cond_10
    invoke-virtual {p0}, Lcom/ime/framework/view/AbstractViewController;->getCurrentKeyboard()Lcom/ime/framework/view/DefaultKeyboard;

    move-result-object v0

    iget-object v10, p0, Lcom/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v10, v0}, Lcom/ime/framework/view/AbstractKeyboardView;->setKeyboard(Lcom/ime/framework/view/DefaultKeyboard;)V

    iget-object v10, p0, Lcom/ime/framework/view/AbstractViewController;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v10, v0}, Lcom/ime/framework/common/InputManager;->setKeyboard(Lcom/ime/framework/view/Keyboard;)V

    iget-object v10, p0, Lcom/ime/framework/view/AbstractViewController;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-virtual {v0}, Lcom/ime/framework/view/DefaultKeyboard;->getMinWidth()I

    move-result v11

    invoke-virtual {v0}, Lcom/ime/framework/view/DefaultKeyboard;->getHeight()I

    move-result v12

    invoke-interface {v10, v11, v12}, Lcom/ime/framework/common/InputManager;->setKeyboardSize(II)V

    iget-object v10, p0, Lcom/ime/framework/view/AbstractViewController;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v10}, Lcom/ime/framework/common/InputManager;->getInputModeManager()Lcom/ime/framework/inputmode/InputModeManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/ime/framework/inputmode/InputModeManager;->isBstHWRmodeEnable()Z

    move-result v10

    if-eqz v10, :cond_8

    const/4 v10, 0x2

    if-eq v2, v10, :cond_11

    const/4 v10, 0x4

    if-ne v2, v10, :cond_8

    :cond_11
    iget-object v10, p0, Lcom/ime/framework/view/AbstractViewController;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v10}, Lcom/ime/framework/common/InputManager;->getHWManager()Lcom/ime/framework/engine/bsthwr/HWManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/ime/framework/engine/bsthwr/HWManager;->getBoxHWView()Lcom/ime/framework/engine/bsthwr/BoxHWView;

    move-result-object v10

    if-nez v10, :cond_13

    invoke-static {}, Lcom/ime/framework/repository/InputModeStatus;->getInputRange()I

    move-result v10

    if-nez v10, :cond_12

    iget-object v10, p0, Lcom/ime/framework/view/AbstractViewController;->mInputManager:Lcom/ime/framework/common/InputManager;

    iget-object v11, p0, Lcom/ime/framework/view/AbstractViewController;->mInputManager:Lcom/ime/framework/common/InputManager;

    const/4 v12, 0x1

    invoke-interface {v11, v12}, Lcom/ime/framework/common/InputManager;->getInputView(Z)Landroid/view/View;

    move-result-object v11

    invoke-interface {v10, v11}, Lcom/ime/framework/common/InputManager;->setInputView(Landroid/view/View;)V

    :cond_12
    iget-object v10, p0, Lcom/ime/framework/view/AbstractViewController;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v10}, Lcom/ime/framework/common/InputManager;->getHWManager()Lcom/ime/framework/engine/bsthwr/HWManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/ime/framework/engine/bsthwr/HWManager;->onInputModeChange()V

    goto/16 :goto_2

    :cond_13
    iget-object v10, p0, Lcom/ime/framework/view/AbstractViewController;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v10}, Lcom/ime/framework/common/InputManager;->getHWManager()Lcom/ime/framework/engine/bsthwr/HWManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/ime/framework/engine/bsthwr/HWManager;->onInputModeChange()V

    goto/16 :goto_2
.end method

.method public updatePhoneticSpell(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/ime/framework/view/AbstractViewController;->mPhoneticSpellScrollView:Lcom/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->setPhoneticSpellScrollViewShown(Z)V

    iget-object v0, p0, Lcom/ime/framework/view/AbstractViewController;->mPhoneticSpellScrollView:Lcom/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;

    invoke-virtual {v0, p1}, Lcom/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->setPhoeticSpellScrollViewList(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/ime/framework/view/AbstractViewController;->mPhoneticSpellScrollView:Lcom/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->setSpellToSpellLayout(Z)V

    return-void
.end method

.method public updatePopupKeyboard()V
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/view/AbstractViewController;->mPopupKeyboardView:Lcom/ime/framework/view/PopupKeyboardView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/view/AbstractViewController;->mPopupKeyboardView:Lcom/ime/framework/view/PopupKeyboardView;

    invoke-virtual {v0}, Lcom/ime/framework/view/PopupKeyboardView;->updatePopupKeyboardView()V

    :cond_0
    return-void
.end method

.method public updateSettingValues()V
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/ime/framework/view/AbstractKeyboardView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v0}, Lcom/ime/framework/view/AbstractKeyboardView;->updateSettingValues()V

    :cond_0
    iget-object v0, p0, Lcom/ime/framework/view/AbstractViewController;->mCurrentViewLeft:Lcom/ime/framework/view/AbstractKeyboardView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ime/framework/view/AbstractViewController;->mCurrentViewLeft:Lcom/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v0}, Lcom/ime/framework/view/AbstractKeyboardView;->updateSettingValues()V

    :cond_1
    iget-object v0, p0, Lcom/ime/framework/view/AbstractViewController;->mCurrentViewRight:Lcom/ime/framework/view/AbstractKeyboardView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ime/framework/view/AbstractViewController;->mCurrentViewRight:Lcom/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v0}, Lcom/ime/framework/view/AbstractKeyboardView;->updateSettingValues()V

    :cond_2
    iget-object v0, p0, Lcom/ime/framework/view/AbstractViewController;->mCurrentViewFloating:Lcom/ime/framework/view/AbstractKeyboardView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/ime/framework/view/AbstractViewController;->mCurrentViewFloating:Lcom/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v0}, Lcom/ime/framework/view/AbstractKeyboardView;->updateSettingValues()V

    :cond_3
    return-void
.end method

.method public updateShiftState()V
    .locals 3

    const/16 v2, 0x8

    iget-object v1, p0, Lcom/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v1}, Lcom/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v0

    iget-object v1, p0, Lcom/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/ime/framework/view/AbstractKeyboardView;

    if-eqz v1, :cond_0

    if-eq v0, v2, :cond_0

    iget-object v1, p0, Lcom/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v1}, Lcom/ime/framework/view/AbstractKeyboardView;->updateShiftState()V

    :cond_0
    iget-object v1, p0, Lcom/ime/framework/view/AbstractViewController;->mCurrentViewLeft:Lcom/ime/framework/view/AbstractKeyboardView;

    if-eqz v1, :cond_1

    if-eq v0, v2, :cond_1

    iget-object v1, p0, Lcom/ime/framework/view/AbstractViewController;->mCurrentViewLeft:Lcom/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v1}, Lcom/ime/framework/view/AbstractKeyboardView;->updateShiftState()V

    :cond_1
    iget-object v1, p0, Lcom/ime/framework/view/AbstractViewController;->mCurrentViewRight:Lcom/ime/framework/view/AbstractKeyboardView;

    if-eqz v1, :cond_2

    if-eq v0, v2, :cond_2

    iget-object v1, p0, Lcom/ime/framework/view/AbstractViewController;->mCurrentViewRight:Lcom/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v1}, Lcom/ime/framework/view/AbstractKeyboardView;->updateShiftState()V

    :cond_2
    iget-object v1, p0, Lcom/ime/framework/view/AbstractViewController;->mCurrentViewFloating:Lcom/ime/framework/view/AbstractKeyboardView;

    if-eqz v1, :cond_3

    const/4 v1, 0x7

    if-eq v0, v1, :cond_3

    iget-object v1, p0, Lcom/ime/framework/view/AbstractViewController;->mCurrentViewFloating:Lcom/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v1}, Lcom/ime/framework/view/AbstractKeyboardView;->updateShiftState()V

    :cond_3
    return-void
.end method

.method public updateSpace()V
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v0}, Lcom/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/ime/framework/view/AbstractViewController;->isNeedSpaceUpdate()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lcom/ime/framework/view/AbstractViewController;->invalidateKey(I)V

    :cond_0
    return-void
.end method

.method public updateSpellView(Ljava/lang/CharSequence;Z)V
    .locals 2

    iget-object v0, p0, Lcom/ime/framework/view/AbstractViewController;->mSpellView:Lcom/ime/framework/view/chinesespell/AbstractSpellLayout;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/ime/framework/view/AbstractViewController;->getCurrentSpellView()Lcom/ime/framework/view/chinesespell/AbstractSpellLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/ime/framework/view/AbstractViewController;->mSpellView:Lcom/ime/framework/view/chinesespell/AbstractSpellLayout;

    :cond_0
    iget-object v0, p0, Lcom/ime/framework/view/AbstractViewController;->mSpellView:Lcom/ime/framework/view/chinesespell/AbstractSpellLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ime/framework/view/AbstractViewController;->mSpellView:Lcom/ime/framework/view/chinesespell/AbstractSpellLayout;

    invoke-virtual {v0, p1}, Lcom/ime/framework/view/chinesespell/AbstractSpellLayout;->setSpellView(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ime/framework/view/AbstractViewController;->mSpellView:Lcom/ime/framework/view/chinesespell/AbstractSpellLayout;

    invoke-virtual {v0, p2}, Lcom/ime/framework/view/chinesespell/AbstractSpellLayout;->setSpellViewShown(Z)V

    :cond_1
    iget-object v0, p0, Lcom/ime/framework/view/AbstractViewController;->mInputManager:Lcom/ime/framework/common/InputManager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ime/framework/view/AbstractViewController;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->isChnMode()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ime/framework/view/AbstractViewController;->mCandidateView:Lcom/ime/framework/view/candidate/AbstractCandidateView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ime/framework/view/AbstractViewController;->mCandidateView:Lcom/ime/framework/view/candidate/AbstractCandidateView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ime/framework/view/candidate/AbstractCandidateView;->updateExpandCandViews(Z)V

    :cond_2
    return-void
.end method

.method public updateSpellViewCloudIcon(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/ime/framework/view/AbstractViewController;->isSpellViewShown()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/ime/framework/view/AbstractViewController;->mSpellView:Lcom/ime/framework/view/chinesespell/AbstractSpellLayout;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/ime/framework/view/AbstractViewController;->getCurrentSpellView()Lcom/ime/framework/view/chinesespell/AbstractSpellLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/ime/framework/view/AbstractViewController;->mSpellView:Lcom/ime/framework/view/chinesespell/AbstractSpellLayout;

    :cond_2
    iget-object v0, p0, Lcom/ime/framework/view/AbstractViewController;->mSpellView:Lcom/ime/framework/view/chinesespell/AbstractSpellLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/view/AbstractViewController;->mSpellView:Lcom/ime/framework/view/chinesespell/AbstractSpellLayout;

    invoke-virtual {v0, p1}, Lcom/ime/framework/view/chinesespell/AbstractSpellLayout;->setComposingImageShown(Z)V

    goto :goto_0
.end method

.method public updateThaiKeyboard(I)V
    .locals 5

    iget-object v2, p0, Lcom/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v2}, Lcom/ime/framework/inputmode/InputModeManager;->isFloatingPhonepadKeyboardForMultiWindow()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/ime/framework/view/AbstractViewController;->mCurrentViewFloating:Lcom/ime/framework/view/AbstractKeyboardView;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, p1}, Lcom/ime/framework/view/AbstractViewController;->getThaiTextKeyboard(I)Lcom/ime/framework/view/DefaultKeyboard;

    move-result-object v1

    iget-object v2, p0, Lcom/ime/framework/view/AbstractViewController;->mCurrentViewFloating:Lcom/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v2, v1}, Lcom/ime/framework/view/AbstractKeyboardView;->setKeyboard(Lcom/ime/framework/view/DefaultKeyboard;)V

    iget-object v2, p0, Lcom/ime/framework/view/AbstractViewController;->mCurrentViewFloating:Lcom/ime/framework/view/AbstractKeyboardView;

    iget-object v3, p0, Lcom/ime/framework/view/AbstractViewController;->mCurrentViewFloating:Lcom/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v3}, Lcom/ime/framework/view/AbstractKeyboardView;->getFloatingKeyboardWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/ime/framework/view/AbstractKeyboardView;->setKeyboardWidth(I)V

    iget-object v2, p0, Lcom/ime/framework/view/AbstractViewController;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2, v1}, Lcom/ime/framework/common/InputManager;->setKeyboard(Lcom/ime/framework/view/Keyboard;)V

    iget-object v2, p0, Lcom/ime/framework/view/AbstractViewController;->mInputManager:Lcom/ime/framework/common/InputManager;

    iget-object v3, p0, Lcom/ime/framework/view/AbstractViewController;->mCurrentViewFloating:Lcom/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v3}, Lcom/ime/framework/view/AbstractKeyboardView;->getFloatingKeyboardWidth()I

    move-result v3

    iget-object v4, p0, Lcom/ime/framework/view/AbstractViewController;->mCurrentViewFloating:Lcom/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v4}, Lcom/ime/framework/view/AbstractKeyboardView;->getFloatingKeyboardHeight()I

    move-result v4

    invoke-interface {v2, v3, v4}, Lcom/ime/framework/common/InputManager;->setKeyboardSize(II)V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/ime/framework/view/AbstractKeyboardView;

    if-eqz v2, :cond_0

    invoke-virtual {p0, p1}, Lcom/ime/framework/view/AbstractViewController;->getThaiTextKeyboard(I)Lcom/ime/framework/view/DefaultKeyboard;

    move-result-object v0

    iget-object v2, p0, Lcom/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v2, v0}, Lcom/ime/framework/view/AbstractKeyboardView;->setKeyboard(Lcom/ime/framework/view/DefaultKeyboard;)V

    iget-object v2, p0, Lcom/ime/framework/view/AbstractViewController;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2, v0}, Lcom/ime/framework/common/InputManager;->setKeyboard(Lcom/ime/framework/view/Keyboard;)V

    iget-object v2, p0, Lcom/ime/framework/view/AbstractViewController;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-virtual {v0}, Lcom/ime/framework/view/DefaultKeyboard;->getMinWidth()I

    move-result v3

    invoke-virtual {v0}, Lcom/ime/framework/view/DefaultKeyboard;->getHeight()I

    move-result v4

    invoke-interface {v2, v3, v4}, Lcom/ime/framework/common/InputManager;->setKeyboardSize(II)V

    goto :goto_0
.end method

.method public useAnimationOfExpandCandidate()Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/ime/framework/view/AbstractViewController;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ime/framework/view/AbstractViewController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0002

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    :cond_0
    return v0

    :catchall_0
    move-exception v1

    throw v1
.end method

.method public useAnimationOfMiniKeyboard()Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/ime/framework/view/AbstractViewController;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ime/framework/view/AbstractViewController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0003

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    :cond_0
    return v0

    :catchall_0
    move-exception v1

    throw v1
.end method
