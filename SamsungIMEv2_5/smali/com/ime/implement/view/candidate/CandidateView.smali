.class public Lcom/ime/implement/view/candidate/CandidateView;
.super Lcom/ime/framework/view/candidate/AbstractCandidateView;
.source "CandidateView.java"


# instance fields
.field private mCandidateButtonBgClose:Landroid/graphics/drawable/Drawable;

.field private mCandidateButtonBgExpand:Landroid/graphics/drawable/Drawable;

.field private mCandidateMobileKeyboardBtnClose:Landroid/graphics/drawable/Drawable;

.field private mCandidateMobileKeyboardBtnExpand:Landroid/graphics/drawable/Drawable;

.field private mClipboardButton:Landroid/view/View;

.field private mDownPoint:Landroid/graphics/Point;

.field private mEmoticonButton:Landroid/view/View;

.field private mExpandButton:Landroid/view/View;

.field private mExpandButtonClickListener:Landroid/view/View$OnClickListener;

.field private mExpandButtonHoverListener:Landroid/view/View$OnHoverListener;

.field private mExpandButtonTouchListener:Landroid/view/View$OnTouchListener;

.field private mExpandButtonWidth:I

.field private mFirstButtonInCandidate:Landroid/widget/Button;

.field private mLanguageButton:Landroid/view/View;

.field private mLeftArrowKnobButton:Landroid/view/View;

.field private mMobilKeyboardToolBarClickListener:Landroid/view/View$OnClickListener;

.field private mMobileKeyboardToolBarLongClickListener:Landroid/view/View$OnLongClickListener;

.field private mRightArrowKnobButton:Landroid/view/View;

.field private mSettingsButton:Landroid/view/View;

.field private mVoiceButton:Landroid/view/View;

.field private mVoiceButtonTouchListener:Landroid/view/View$OnTouchListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/ime/framework/view/candidate/AbstractCandidateView;-><init>(Landroid/content/Context;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/ime/implement/view/candidate/CandidateView;->mExpandButtonWidth:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/ime/framework/view/candidate/AbstractCandidateView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/ime/implement/view/candidate/CandidateView;->mExpandButtonWidth:I

    return-void
.end method

.method static synthetic access$000(Lcom/ime/implement/view/candidate/CandidateView;)Lcom/ime/framework/common/InputManager;
    .locals 1

    iget-object v0, p0, Lcom/ime/implement/view/candidate/CandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/ime/implement/view/candidate/CandidateView;)Lcom/ime/framework/common/InputManager;
    .locals 1

    iget-object v0, p0, Lcom/ime/implement/view/candidate/CandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/ime/implement/view/candidate/CandidateView;)Lcom/ime/framework/common/InputManager;
    .locals 1

    iget-object v0, p0, Lcom/ime/implement/view/candidate/CandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/ime/implement/view/candidate/CandidateView;)Lcom/ime/framework/common/InputManager;
    .locals 1

    iget-object v0, p0, Lcom/ime/implement/view/candidate/CandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/ime/implement/view/candidate/CandidateView;)Lcom/ime/framework/common/InputManager;
    .locals 1

    iget-object v0, p0, Lcom/ime/implement/view/candidate/CandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/ime/implement/view/candidate/CandidateView;)Lcom/ime/framework/common/InputManager;
    .locals 1

    iget-object v0, p0, Lcom/ime/implement/view/candidate/CandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/ime/implement/view/candidate/CandidateView;)Lcom/ime/framework/common/InputManager;
    .locals 1

    iget-object v0, p0, Lcom/ime/implement/view/candidate/CandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/ime/implement/view/candidate/CandidateView;)Lcom/ime/framework/inputmode/InputModeManager;
    .locals 1

    iget-object v0, p0, Lcom/ime/implement/view/candidate/CandidateView;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/ime/implement/view/candidate/CandidateView;)Lcom/ime/framework/common/InputManager;
    .locals 1

    iget-object v0, p0, Lcom/ime/implement/view/candidate/CandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/ime/implement/view/candidate/CandidateView;)Lcom/ime/framework/common/InputManager;
    .locals 1

    iget-object v0, p0, Lcom/ime/implement/view/candidate/CandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/ime/implement/view/candidate/CandidateView;)Lcom/ime/framework/common/InputManager;
    .locals 1

    iget-object v0, p0, Lcom/ime/implement/view/candidate/CandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/ime/implement/view/candidate/CandidateView;)Lcom/ime/framework/common/InputManager;
    .locals 1

    iget-object v0, p0, Lcom/ime/implement/view/candidate/CandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/ime/implement/view/candidate/CandidateView;)Lcom/ime/framework/common/InputManager;
    .locals 1

    iget-object v0, p0, Lcom/ime/implement/view/candidate/CandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/ime/implement/view/candidate/CandidateView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/ime/implement/view/candidate/CandidateView;->mIsAlreadyDismissExpandPopup:Z

    return v0
.end method

.method static synthetic access$2102(Lcom/ime/implement/view/candidate/CandidateView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/ime/implement/view/candidate/CandidateView;->mIsAlreadyDismissExpandPopup:Z

    return p1
.end method

.method static synthetic access$2200(Lcom/ime/implement/view/candidate/CandidateView;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/ime/implement/view/candidate/CandidateView;->mExpandButton:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/ime/implement/view/candidate/CandidateView;)Lcom/ime/framework/common/InputManager;
    .locals 1

    iget-object v0, p0, Lcom/ime/implement/view/candidate/CandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/ime/implement/view/candidate/CandidateView;)Lcom/ime/framework/common/InputManager;
    .locals 1

    iget-object v0, p0, Lcom/ime/implement/view/candidate/CandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/ime/implement/view/candidate/CandidateView;)Lcom/ime/framework/common/InputManager;
    .locals 1

    iget-object v0, p0, Lcom/ime/implement/view/candidate/CandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/ime/implement/view/candidate/CandidateView;)Lcom/ime/framework/common/InputManager;
    .locals 1

    iget-object v0, p0, Lcom/ime/implement/view/candidate/CandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/ime/implement/view/candidate/CandidateView;)Lcom/ime/framework/common/InputManager;
    .locals 1

    iget-object v0, p0, Lcom/ime/implement/view/candidate/CandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/ime/implement/view/candidate/CandidateView;)Lcom/ime/framework/common/InputManager;
    .locals 1

    iget-object v0, p0, Lcom/ime/implement/view/candidate/CandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/ime/implement/view/candidate/CandidateView;)Lcom/ime/framework/common/InputManager;
    .locals 1

    iget-object v0, p0, Lcom/ime/implement/view/candidate/CandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/ime/implement/view/candidate/CandidateView;)Lcom/ime/framework/common/InputManager;
    .locals 1

    iget-object v0, p0, Lcom/ime/implement/view/candidate/CandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/ime/implement/view/candidate/CandidateView;)Lcom/ime/framework/common/InputManager;
    .locals 1

    iget-object v0, p0, Lcom/ime/implement/view/candidate/CandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/ime/implement/view/candidate/CandidateView;)Lcom/ime/framework/common/InputManager;
    .locals 1

    iget-object v0, p0, Lcom/ime/implement/view/candidate/CandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/ime/implement/view/candidate/CandidateView;)Lcom/ime/framework/common/InputManager;
    .locals 1

    iget-object v0, p0, Lcom/ime/implement/view/candidate/CandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/ime/implement/view/candidate/CandidateView;)Lcom/ime/framework/common/InputManager;
    .locals 1

    iget-object v0, p0, Lcom/ime/implement/view/candidate/CandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/ime/implement/view/candidate/CandidateView;)Lcom/ime/framework/common/InputManager;
    .locals 1

    iget-object v0, p0, Lcom/ime/implement/view/candidate/CandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/ime/implement/view/candidate/CandidateView;)Lcom/ime/framework/common/InputManager;
    .locals 1

    iget-object v0, p0, Lcom/ime/implement/view/candidate/CandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/ime/implement/view/candidate/CandidateView;)Lcom/ime/framework/common/InputManager;
    .locals 1

    iget-object v0, p0, Lcom/ime/implement/view/candidate/CandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/ime/implement/view/candidate/CandidateView;)Lcom/ime/framework/common/InputManager;
    .locals 1

    iget-object v0, p0, Lcom/ime/implement/view/candidate/CandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/ime/implement/view/candidate/CandidateView;)Lcom/ime/framework/common/InputManager;
    .locals 1

    iget-object v0, p0, Lcom/ime/implement/view/candidate/CandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/ime/implement/view/candidate/CandidateView;)Lcom/ime/framework/common/InputManager;
    .locals 1

    iget-object v0, p0, Lcom/ime/implement/view/candidate/CandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/ime/implement/view/candidate/CandidateView;)Lcom/ime/framework/common/InputManager;
    .locals 1

    iget-object v0, p0, Lcom/ime/implement/view/candidate/CandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/ime/implement/view/candidate/CandidateView;)Lcom/ime/framework/common/InputManager;
    .locals 1

    iget-object v0, p0, Lcom/ime/implement/view/candidate/CandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    return-object v0
.end method

.method static synthetic access$4100(Lcom/ime/implement/view/candidate/CandidateView;)Lcom/ime/framework/common/InputManager;
    .locals 1

    iget-object v0, p0, Lcom/ime/implement/view/candidate/CandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/ime/implement/view/candidate/CandidateView;)Lcom/ime/framework/common/InputManager;
    .locals 1

    iget-object v0, p0, Lcom/ime/implement/view/candidate/CandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    return-object v0
.end method

.method static synthetic access$600(Lcom/ime/implement/view/candidate/CandidateView;)Lcom/ime/framework/common/InputManager;
    .locals 1

    iget-object v0, p0, Lcom/ime/implement/view/candidate/CandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    return-object v0
.end method

.method static synthetic access$700(Lcom/ime/implement/view/candidate/CandidateView;)Lcom/ime/framework/common/InputManager;
    .locals 1

    iget-object v0, p0, Lcom/ime/implement/view/candidate/CandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    return-object v0
.end method

.method static synthetic access$800(Lcom/ime/implement/view/candidate/CandidateView;)Lcom/ime/framework/common/InputManager;
    .locals 1

    iget-object v0, p0, Lcom/ime/implement/view/candidate/CandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    return-object v0
.end method

.method static synthetic access$900(Lcom/ime/implement/view/candidate/CandidateView;)Lcom/ime/framework/common/InputManager;
    .locals 1

    iget-object v0, p0, Lcom/ime/implement/view/candidate/CandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    return-object v0
.end method

.method private addDivider()Landroid/widget/ImageView;
    .locals 7

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/ime/implement/view/candidate/CandidateView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f09072c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v1, v4

    iget-object v4, p0, Lcom/ime/implement/view/candidate/CandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/ime/framework/common/InputManager;->isMobileKeyboard()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/ime/implement/view/candidate/CandidateView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f09072b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v3, v4

    :goto_0
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v6, v1, v6, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    const/16 v4, 0x11

    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/ime/implement/view/candidate/CandidateView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v4, 0x7f0205b7

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/ime/implement/view/candidate/CandidateView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090104

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v3, v4

    goto :goto_0
.end method

.method private getMobileExpandButton()Landroid/widget/Button;
    .locals 5

    const v4, 0x7f09072d

    iget-object v3, p0, Lcom/ime/implement/view/candidate/CandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v2, v3

    iget-object v3, p0, Lcom/ime/implement/view/candidate/CandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v0, v3

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v2, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0x11

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    invoke-virtual {p0}, Lcom/ime/implement/view/candidate/CandidateView;->getExpandButton()Landroid/widget/Button;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/ime/implement/view/candidate/CandidateView;->udpateContentDescription()V

    invoke-virtual {p0}, Lcom/ime/implement/view/candidate/CandidateView;->getExpandButton()Landroid/widget/Button;

    move-result-object v3

    return-object v3
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10

    const/4 v9, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v9, :cond_1

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const/4 v4, 0x3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    invoke-super {p0, v8}, Lcom/ime/framework/view/candidate/AbstractCandidateView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_1
    move v0, v9

    :goto_0
    return v0

    :cond_2
    invoke-super {p0, p1}, Lcom/ime/framework/view/candidate/AbstractCandidateView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected getCandidateCustomButtonLayout()Landroid/widget/LinearLayout;
    .locals 13

    const/4 v12, 0x1

    const/16 v11, 0x8

    const/4 v10, 0x0

    invoke-static {}, Lcom/ime/framework/repository/PropertyItems;->isUsingCandidateButtonPrevNext()Z

    move-result v7

    invoke-static {}, Lcom/ime/framework/repository/PropertyItems;->isUsingCandidateButtonOnEmailUrlMode()Z

    move-result v6

    invoke-static {}, Lcom/ime/framework/repository/EditorStatus;->isEmailInputType()Z

    move-result v1

    invoke-static {}, Lcom/ime/framework/repository/EditorStatus;->isUrlInputType()Z

    move-result v5

    invoke-static {}, Lcom/ime/framework/repository/InputModeStatus;->getInputMethodStatus()I

    move-result v2

    const/4 v3, 0x0

    const/4 v0, 0x0

    iget-object v8, p0, Lcom/ime/implement/view/candidate/CandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/ime/framework/common/InputManager;->isMobileKeyboard()Z

    move-result v8

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/ime/implement/view/candidate/CandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/ime/framework/common/InputManager;->isShowCMToolbar()Z

    move-result v8

    if-eqz v8, :cond_4

    :cond_0
    :goto_0
    if-eqz v0, :cond_2

    iget-object v8, p0, Lcom/ime/implement/view/candidate/CandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/ime/framework/common/InputManager;->isMobileKeyboard()Z

    move-result v8

    if-eqz v8, :cond_5

    iget-object v8, p0, Lcom/ime/implement/view/candidate/CandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/ime/framework/common/InputManager;->isMobileKeyboardSYMCandidate()Z

    move-result v8

    if-eqz v8, :cond_5

    iget-object v8, p0, Lcom/ime/implement/view/candidate/CandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    const v9, 0x7f030012

    invoke-interface {v8, v9, v10}, Lcom/ime/framework/common/InputManager;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;

    invoke-virtual {v3, v12}, Lcom/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;->setButtonEnableOnMobileKeyboardSymMode(Z)V

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_1
    :goto_1
    if-eqz v7, :cond_2

    iget-object v8, p0, Lcom/ime/implement/view/candidate/CandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/ime/framework/common/InputManager;->isMobileKeyboardUmlautCandidate()Z

    move-result v8

    if-nez v8, :cond_2

    iget-object v8, p0, Lcom/ime/implement/view/candidate/CandidateView;->mPrivateImeOptionsController:Lcom/ime/framework/common/PrivateImeOptionsController;

    invoke-interface {v8}, Lcom/ime/framework/common/PrivateImeOptionsController;->getPrevNextTypeOfPrivateImeOptions()I

    move-result v8

    if-eqz v8, :cond_2

    if-ne v2, v11, :cond_b

    iget-object v8, p0, Lcom/ime/implement/view/candidate/CandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    const v9, 0x7f030016

    invoke-interface {v8, v9, v10}, Lcom/ime/framework/common/InputManager;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;

    :goto_2
    iget-object v8, p0, Lcom/ime/implement/view/candidate/CandidateView;->mPrivateImeOptionsController:Lcom/ime/framework/common/PrivateImeOptionsController;

    invoke-interface {v8}, Lcom/ime/framework/common/PrivateImeOptionsController;->getPrevNextTypeOfPrivateImeOptions()I

    move-result v8

    invoke-virtual {v3, v8}, Lcom/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;->setPrevNextButtonEnable(I)V

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/ime/implement/view/candidate/CandidateView;->addDivider()Landroid/widget/ImageView;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_2
    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v8

    if-lez v8, :cond_c

    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_3
    :goto_3
    return-object v0

    :cond_4
    iget-object v8, p0, Lcom/ime/implement/view/candidate/CandidateView;->mCandidateLayout:Lcom/ime/framework/view/candidate/AbstractCandidateLayout;

    if-eqz v8, :cond_0

    const v8, 0x7f100020

    invoke-virtual {p0, v8}, Lcom/ime/implement/view/candidate/CandidateView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViewsInLayout()V

    const/16 v8, 0x11

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setVerticalGravity(I)V

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, -0x1

    iput v8, v4, Landroid/widget/LinearLayout$LayoutParams;->height:I

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    :cond_5
    iget-object v8, p0, Lcom/ime/implement/view/candidate/CandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/ime/framework/common/InputManager;->isMobileKeyboard()Z

    move-result v8

    if-eqz v8, :cond_6

    iget-object v8, p0, Lcom/ime/implement/view/candidate/CandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/ime/framework/common/InputManager;->isMobileKeyboardUmlautCandidate()Z

    move-result v8

    if-eqz v8, :cond_6

    iget-object v8, p0, Lcom/ime/implement/view/candidate/CandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    const v9, 0x7f030014

    invoke-interface {v8, v9, v10}, Lcom/ime/framework/common/InputManager;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;

    invoke-virtual {v3, v12}, Lcom/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;->setButtonEnableOnMobileKeyboardUmlautCandidateMode(Z)V

    goto :goto_1

    :cond_6
    if-eqz v6, :cond_1

    if-nez v5, :cond_7

    if-eqz v1, :cond_1

    :cond_7
    iget-object v8, p0, Lcom/ime/implement/view/candidate/CandidateView;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v8}, Lcom/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode()Z

    move-result v8

    if-eqz v8, :cond_1

    if-eqz v5, :cond_9

    if-ne v2, v11, :cond_8

    iget-object v8, p0, Lcom/ime/implement/view/candidate/CandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    const v9, 0x7f030018

    invoke-interface {v8, v9, v10}, Lcom/ime/framework/common/InputManager;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;

    :goto_4
    invoke-virtual {v3, v12}, Lcom/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;->setButtonEnableOnEmailUrlMode(Z)V

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/ime/implement/view/candidate/CandidateView;->addDivider()Landroid/widget/ImageView;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_1

    :cond_8
    iget-object v8, p0, Lcom/ime/implement/view/candidate/CandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    const v9, 0x7f030019

    invoke-interface {v8, v9, v10}, Lcom/ime/framework/common/InputManager;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;

    goto :goto_4

    :cond_9
    if-ne v2, v11, :cond_a

    iget-object v8, p0, Lcom/ime/implement/view/candidate/CandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    const v9, 0x7f03000b

    invoke-interface {v8, v9, v10}, Lcom/ime/framework/common/InputManager;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;

    goto :goto_4

    :cond_a
    iget-object v8, p0, Lcom/ime/implement/view/candidate/CandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    const v9, 0x7f03000c

    invoke-interface {v8, v9, v10}, Lcom/ime/framework/common/InputManager;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;

    goto :goto_4

    :cond_b
    iget-object v8, p0, Lcom/ime/implement/view/candidate/CandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    const v9, 0x7f030017

    invoke-interface {v8, v9, v10}, Lcom/ime/framework/common/InputManager;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;

    goto/16 :goto_2

    :cond_c
    if-eqz v0, :cond_3

    invoke-virtual {v0, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_3
.end method

.method protected getCandidateExpandLayout()Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;
    .locals 3

    iget-object v0, p0, Lcom/ime/implement/view/candidate/CandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    const v1, 0x7f03000d

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/ime/framework/common/InputManager;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;

    return-object v0
.end method

.method protected getCandidateExpandSpellScrollView()Lcom/ime/framework/view/candidate/CandidateExpandSpellScrollView;
    .locals 3

    iget-object v0, p0, Lcom/ime/implement/view/candidate/CandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    const v1, 0x7f030030

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/ime/framework/common/InputManager;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ime/framework/view/candidate/CandidateExpandSpellScrollView;

    return-object v0
.end method

.method public getCandidateLayout()Lcom/ime/framework/view/candidate/AbstractCandidateLayout;
    .locals 8

    const/4 v7, 0x1

    const v5, 0x7f100021

    invoke-virtual {p0, v5}, Lcom/ime/implement/view/candidate/CandidateView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;

    invoke-virtual {v0}, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget-object v5, p0, Lcom/ime/implement/view/candidate/CandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/ime/framework/common/InputManager;->isCurrentCarModeKnobSIP()Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/ime/implement/view/candidate/CandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    const v6, 0x7f080045

    invoke-interface {v5, v6}, Lcom/ime/framework/common/InputManager;->getFractionOrientedheight(I)I

    move-result v5

    iput v5, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    :goto_0
    iget-object v5, p0, Lcom/ime/implement/view/candidate/CandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/ime/framework/common/InputManager;->isMobileKeyboard()Z

    move-result v5

    if-nez v5, :cond_0

    const/4 v5, 0x0

    iput v5, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    :cond_0
    iget-object v5, p0, Lcom/ime/implement/view/candidate/CandidateView;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v5}, Lcom/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v2

    instance-of v5, v1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v5, :cond_2

    move-object v4, v1

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v3, 0x0

    if-ne v2, v7, :cond_6

    iget-object v5, p0, Lcom/ime/implement/view/candidate/CandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0903e2

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    :goto_1
    iget-object v5, p0, Lcom/ime/implement/view/candidate/CandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/ime/framework/common/InputManager;->isEnableOneHandKeypad()Z

    move-result v5

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/ime/implement/view/candidate/CandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/ime/framework/common/InputManager;->isOneHandKeypadRightSet()Z

    move-result v5

    if-eqz v5, :cond_7

    if-eqz v2, :cond_1

    if-ne v2, v7, :cond_7

    :cond_1
    iget v5, v4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    if-ge v5, v3, :cond_2

    iget v5, v4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v5, v3

    iput v5, v4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    :cond_2
    :goto_2
    invoke-virtual {v0, v1}, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0

    :cond_3
    iget-object v5, p0, Lcom/ime/implement/view/candidate/CandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/ime/framework/common/InputManager;->isMobileKeyboard()Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/ime/implement/view/candidate/CandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090728

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0

    :cond_4
    iget-boolean v5, p0, Lcom/ime/implement/view/candidate/CandidateView;->mIsPopupCandidateView:Z

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/ime/implement/view/candidate/CandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f09050d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0

    :cond_5
    iget-object v5, p0, Lcom/ime/implement/view/candidate/CandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0900fe

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto/16 :goto_0

    :cond_6
    iget-object v5, p0, Lcom/ime/implement/view/candidate/CandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0903e1

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    goto :goto_1

    :cond_7
    iget v5, v4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    if-lt v5, v3, :cond_2

    iget v5, v4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int/2addr v5, v3

    iput v5, v4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_2
.end method

.method public getCandidateViewHeight()I
    .locals 1

    invoke-virtual {p0}, Lcom/ime/implement/view/candidate/CandidateView;->getHeight()I

    move-result v0

    return v0
.end method

.method protected getClipboardButton()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/ime/implement/view/candidate/CandidateView;->mClipboardButton:Landroid/view/View;

    if-nez v0, :cond_0

    const v0, 0x7f10002d

    invoke-virtual {p0, v0}, Lcom/ime/implement/view/candidate/CandidateView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ime/implement/view/candidate/CandidateView;->mClipboardButton:Landroid/view/View;

    :cond_0
    iget-object v0, p0, Lcom/ime/implement/view/candidate/CandidateView;->mClipboardButton:Landroid/view/View;

    check-cast v0, Landroid/widget/Button;

    return-object v0
.end method

.method protected getEmoticonButton()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/ime/implement/view/candidate/CandidateView;->mEmoticonButton:Landroid/view/View;

    if-nez v0, :cond_0

    const v0, 0x7f10002e

    invoke-virtual {p0, v0}, Lcom/ime/implement/view/candidate/CandidateView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ime/implement/view/candidate/CandidateView;->mEmoticonButton:Landroid/view/View;

    :cond_0
    iget-object v0, p0, Lcom/ime/implement/view/candidate/CandidateView;->mEmoticonButton:Landroid/view/View;

    check-cast v0, Landroid/widget/Button;

    return-object v0
.end method

.method protected bridge synthetic getExpandButton()Landroid/view/View;
    .locals 1

    invoke-virtual {p0}, Lcom/ime/implement/view/candidate/CandidateView;->getExpandButton()Landroid/widget/Button;

    move-result-object v0

    return-object v0
.end method

.method protected getExpandButton()Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/ime/implement/view/candidate/CandidateView;->mExpandButton:Landroid/view/View;

    if-nez v0, :cond_0

    const v0, 0x7f100023

    invoke-virtual {p0, v0}, Lcom/ime/implement/view/candidate/CandidateView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ime/implement/view/candidate/CandidateView;->mExpandButton:Landroid/view/View;

    :cond_0
    iget-object v0, p0, Lcom/ime/implement/view/candidate/CandidateView;->mExpandButton:Landroid/view/View;

    check-cast v0, Landroid/widget/Button;

    return-object v0
.end method

.method protected getExpandButtonClickListener()Landroid/view/View$OnClickListener;
    .locals 1

    iget-object v0, p0, Lcom/ime/implement/view/candidate/CandidateView;->mExpandButtonClickListener:Landroid/view/View$OnClickListener;

    if-nez v0, :cond_0

    new-instance v0, Lcom/ime/implement/view/candidate/CandidateView$6;

    invoke-direct {v0, p0}, Lcom/ime/implement/view/candidate/CandidateView$6;-><init>(Lcom/ime/implement/view/candidate/CandidateView;)V

    iput-object v0, p0, Lcom/ime/implement/view/candidate/CandidateView;->mExpandButtonClickListener:Landroid/view/View$OnClickListener;

    :cond_0
    iget-object v0, p0, Lcom/ime/implement/view/candidate/CandidateView;->mExpandButtonClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method protected getExpandButtonHoverListener()Landroid/view/View$OnHoverListener;
    .locals 1

    iget-object v0, p0, Lcom/ime/implement/view/candidate/CandidateView;->mExpandButtonHoverListener:Landroid/view/View$OnHoverListener;

    if-nez v0, :cond_0

    new-instance v0, Lcom/ime/implement/view/candidate/CandidateView$4;

    invoke-direct {v0, p0}, Lcom/ime/implement/view/candidate/CandidateView$4;-><init>(Lcom/ime/implement/view/candidate/CandidateView;)V

    iput-object v0, p0, Lcom/ime/implement/view/candidate/CandidateView;->mExpandButtonHoverListener:Landroid/view/View$OnHoverListener;

    :cond_0
    iget-object v0, p0, Lcom/ime/implement/view/candidate/CandidateView;->mExpandButtonHoverListener:Landroid/view/View$OnHoverListener;

    return-object v0
.end method

.method protected getExpandButtonLayout()Landroid/widget/LinearLayout;
    .locals 9

    const v5, 0x7f100022

    invoke-virtual {p0, v5}, Lcom/ime/implement/view/candidate/CandidateView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const/4 v4, 0x0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget-object v5, p0, Lcom/ime/implement/view/candidate/CandidateView;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v5}, Lcom/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v2

    iget-object v5, p0, Lcom/ime/implement/view/candidate/CandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/ime/framework/common/InputManager;->isMobileKeyboard()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    invoke-direct {p0}, Lcom/ime/implement/view/candidate/CandidateView;->addDivider()Landroid/widget/ImageView;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/ime/implement/view/candidate/CandidateView;->getMobileExpandButton()Landroid/widget/Button;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/ime/implement/view/candidate/CandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/ime/framework/common/InputManager;->isChnMode()Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/ime/implement/view/candidate/CandidateView;->mExpandButton:Landroid/view/View;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/ime/implement/view/candidate/CandidateView;->mPrivateImeOptionsController:Lcom/ime/framework/common/PrivateImeOptionsController;

    invoke-interface {v5}, Lcom/ime/framework/common/PrivateImeOptionsController;->isKeyboardHeight()Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/ime/implement/view/candidate/CandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/ime/framework/common/InputManager;->isHWKeyboardConnected()Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/ime/implement/view/candidate/CandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/ime/framework/common/InputManager;->isInputViewShown()Z

    move-result v5

    if-nez v5, :cond_3

    :cond_1
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    :goto_1
    iget-object v5, p0, Lcom/ime/implement/view/candidate/CandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/ime/framework/common/InputManager;->isMobileKeyboardSYMCandidate()Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/ime/implement/view/candidate/CandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/ime/framework/common/InputManager;->isMobileKeyboard()Z

    move-result v5

    if-eqz v5, :cond_4

    :goto_2
    return-object v0

    :cond_2
    iget-object v5, p0, Lcom/ime/implement/view/candidate/CandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/ime/framework/common/InputManager;->isMobileKeyboardNeedFresh()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    invoke-virtual {p0}, Lcom/ime/implement/view/candidate/CandidateView;->getExpandButton()Landroid/widget/Button;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    invoke-virtual {p0}, Lcom/ime/implement/view/candidate/CandidateView;->getExpandButton()Landroid/widget/Button;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_1

    :cond_4
    iget-object v5, p0, Lcom/ime/implement/view/candidate/CandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/ime/framework/common/InputManager;->isMobileKeyboardUmlautCandidate()Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/ime/implement/view/candidate/CandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/ime/framework/common/InputManager;->isMobileKeyboard()Z

    move-result v5

    if-eqz v5, :cond_6

    :goto_3
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v5, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v6, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-direct {v3, v5, v6}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    iget-object v5, p0, Lcom/ime/implement/view/candidate/CandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/ime/framework/common/InputManager;->isEnableOneHandKeypad()Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/ime/implement/view/candidate/CandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/ime/framework/common/InputManager;->isOneHandKeypadRightSet()Z

    move-result v5

    if-nez v5, :cond_5

    const/4 v5, 0x1

    if-ne v2, v5, :cond_b

    iget-object v5, p0, Lcom/ime/implement/view/candidate/CandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0903e2

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    :cond_5
    :goto_4
    iget-boolean v5, p0, Lcom/ime/implement/view/candidate/CandidateView;->mIsPopupCandidateView:Z

    if-eqz v5, :cond_c

    iget-object v5, p0, Lcom/ime/implement/view/candidate/CandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090515

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    iput v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget-object v5, p0, Lcom/ime/implement/view/candidate/CandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090512

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    iput v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget-object v5, p0, Lcom/ime/implement/view/candidate/CandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090514

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    add-int/2addr v5, v4

    iput v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget-object v5, p0, Lcom/ime/implement/view/candidate/CandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090513

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    iput v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    :goto_5
    iget v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v6, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v7, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget v8, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {v3, v5, v6, v7, v8}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_2

    :cond_6
    iget-object v5, p0, Lcom/ime/implement/view/candidate/CandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/ime/framework/common/InputManager;->isMobileKeyboard()Z

    move-result v5

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/ime/implement/view/candidate/CandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090124

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    iput v5, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto/16 :goto_3

    :cond_7
    iget-boolean v5, p0, Lcom/ime/implement/view/candidate/CandidateView;->mIsPopupCandidateView:Z

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/ime/implement/view/candidate/CandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090516

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    iput v5, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto/16 :goto_3

    :cond_8
    iget-object v5, p0, Lcom/ime/implement/view/candidate/CandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/ime/framework/common/InputManager;->isChnMode()Z

    move-result v5

    if-eqz v5, :cond_a

    iget-object v5, p0, Lcom/ime/implement/view/candidate/CandidateView;->mExpandButton:Landroid/view/View;

    if-eqz v5, :cond_a

    iget-object v5, p0, Lcom/ime/implement/view/candidate/CandidateView;->mPrivateImeOptionsController:Lcom/ime/framework/common/PrivateImeOptionsController;

    invoke-interface {v5}, Lcom/ime/framework/common/PrivateImeOptionsController;->isKeyboardHeight()Z

    move-result v5

    if-nez v5, :cond_9

    iget-object v5, p0, Lcom/ime/implement/view/candidate/CandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/ime/framework/common/InputManager;->isHWKeyboardConnected()Z

    move-result v5

    if-eqz v5, :cond_a

    iget-object v5, p0, Lcom/ime/implement/view/candidate/CandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/ime/framework/common/InputManager;->isInputViewShown()Z

    move-result v5

    if-nez v5, :cond_a

    :cond_9
    const/4 v5, 0x0

    iput v5, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto/16 :goto_3

    :cond_a
    iget-object v5, p0, Lcom/ime/implement/view/candidate/CandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f09011e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    iput v5, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto/16 :goto_3

    :cond_b
    iget-object v5, p0, Lcom/ime/implement/view/candidate/CandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0903e1

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    goto/16 :goto_4

    :cond_c
    iget-object v5, p0, Lcom/ime/implement/view/candidate/CandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/ime/framework/common/InputManager;->isMobileKeyboard()Z

    move-result v5

    if-eqz v5, :cond_d

    iget-object v5, p0, Lcom/ime/implement/view/candidate/CandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090122

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    iput v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    :goto_6
    iget-object v5, p0, Lcom/ime/implement/view/candidate/CandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/ime/framework/common/InputManager;->isMobileKeyboard()Z

    move-result v5

    if-eqz v5, :cond_f

    iget-object v5, p0, Lcom/ime/implement/view/candidate/CandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090123

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    add-int/2addr v5, v4

    iput v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    :goto_7
    iget-object v5, p0, Lcom/ime/implement/view/candidate/CandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090109

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    iput v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget-object v5, p0, Lcom/ime/implement/view/candidate/CandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f09010a

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    iput v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto/16 :goto_5

    :cond_d
    iget-object v5, p0, Lcom/ime/implement/view/candidate/CandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/ime/framework/common/InputManager;->isEnableOneHandKeypad()Z

    move-result v5

    if-eqz v5, :cond_e

    iget-object v5, p0, Lcom/ime/implement/view/candidate/CandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090120

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    iput v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_6

    :cond_e
    iget-object v5, p0, Lcom/ime/implement/view/candidate/CandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090121

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    iput v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_6

    :cond_f
    iget-object v5, p0, Lcom/ime/implement/view/candidate/CandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f09011f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    add-int/2addr v5, v4

    iput v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_7
.end method

.method public getExpandButtonLayoutForUniversalSwitch()Landroid/widget/LinearLayout;
    .locals 1

    invoke-virtual {p0}, Lcom/ime/implement/view/candidate/CandidateView;->getExpandButtonLayout()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method protected getExpandButtonTouchListener()Landroid/view/View$OnTouchListener;
    .locals 1

    iget-object v0, p0, Lcom/ime/implement/view/candidate/CandidateView;->mExpandButtonTouchListener:Landroid/view/View$OnTouchListener;

    if-nez v0, :cond_0

    new-instance v0, Lcom/ime/implement/view/candidate/CandidateView$5;

    invoke-direct {v0, p0}, Lcom/ime/implement/view/candidate/CandidateView$5;-><init>(Lcom/ime/implement/view/candidate/CandidateView;)V

    iput-object v0, p0, Lcom/ime/implement/view/candidate/CandidateView;->mExpandButtonTouchListener:Landroid/view/View$OnTouchListener;

    :cond_0
    iget-object v0, p0, Lcom/ime/implement/view/candidate/CandidateView;->mExpandButtonTouchListener:Landroid/view/View$OnTouchListener;

    return-object v0
.end method

.method public getExpandButtonWidth()I
    .locals 4

    const v3, 0x7f09011f

    const v2, 0x7f09011e

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/ime/implement/view/candidate/CandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->isCurrentCarModeKnobSIP()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    iget-boolean v1, p0, Lcom/ime/implement/view/candidate/CandidateView;->mIsPopupCandidateView:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/ime/implement/view/candidate/CandidateView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090516

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v0, v1

    invoke-virtual {p0}, Lcom/ime/implement/view/candidate/CandidateView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090514

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/ime/implement/view/candidate/CandidateView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090515

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v0, v1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/ime/implement/view/candidate/CandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->isEnableOneHandKeypad()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/ime/implement/view/candidate/CandidateView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v0, v1

    invoke-virtual {p0}, Lcom/ime/implement/view/candidate/CandidateView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/ime/implement/view/candidate/CandidateView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090120

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v0, v1

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/ime/implement/view/candidate/CandidateView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v0, v1

    invoke-virtual {p0}, Lcom/ime/implement/view/candidate/CandidateView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/ime/implement/view/candidate/CandidateView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090121

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v0, v1

    goto :goto_1
.end method

.method protected getExpandPopupBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected getExpandPopupHeight(I)I
    .locals 5

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/ime/implement/view/candidate/CandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/ime/framework/common/InputManager;->isMobileKeyboard()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/ime/implement/view/candidate/CandidateView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090728

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v1, v3

    :goto_0
    invoke-virtual {p0}, Lcom/ime/implement/view/candidate/CandidateView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0900ff

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v0, v3

    invoke-virtual {p0}, Lcom/ime/implement/view/candidate/CandidateView;->getExpandPouupMaxLine()I

    move-result v2

    if-le p1, v2, :cond_2

    add-int v3, v1, v0

    mul-int/2addr v3, v2

    add-int/2addr v3, v0

    :goto_1
    return v3

    :cond_0
    iget-boolean v3, p0, Lcom/ime/implement/view/candidate/CandidateView;->mIsPopupCandidateView:Z

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/ime/implement/view/candidate/CandidateView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f09050d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v1, v3

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/ime/implement/view/candidate/CandidateView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0900fe

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v1, v3

    goto :goto_0

    :cond_2
    add-int v3, v1, v0

    mul-int/2addr v3, p1

    add-int/2addr v3, v0

    goto :goto_1
.end method

.method protected getExpandPopupWidth()I
    .locals 8

    const v7, 0x7f090101

    iget-object v5, p0, Lcom/ime/implement/view/candidate/CandidateView;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v5}, Lcom/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v1

    const/4 v5, 0x7

    if-ne v1, v5, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/ime/implement/view/candidate/CandidateView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f091027

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    :goto_0
    return v5

    :catch_0
    move-exception v0

    iget-object v5, p0, Lcom/ime/implement/view/candidate/CandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    goto :goto_0

    :cond_0
    const/16 v5, 0x8

    if-ne v1, v5, :cond_1

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/ime/implement/view/candidate/CandidateView;->getFloatingKeyboardLeftEdge()I

    move-result v2

    invoke-virtual {p0}, Lcom/ime/implement/view/candidate/CandidateView;->getFloatingKeyboardRightEdge()I

    move-result v3

    :try_start_1
    invoke-virtual {p0}, Lcom/ime/implement/view/candidate/CandidateView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090a52

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v4

    :goto_1
    sub-int v5, v4, v2

    sub-int/2addr v5, v3

    goto :goto_0

    :catch_1
    move-exception v0

    iget-object v5, p0, Lcom/ime/implement/view/candidate/CandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v4, v5

    goto :goto_1

    :cond_1
    iget-object v5, p0, Lcom/ime/implement/view/candidate/CandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    iput v5, p0, Lcom/ime/implement/view/candidate/CandidateView;->mExpandButtonWidth:I

    iget v5, p0, Lcom/ime/implement/view/candidate/CandidateView;->mExpandButtonWidth:I

    goto :goto_0
.end method

.method protected getExpandPouupMaxLine()I
    .locals 2

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/ime/implement/view/candidate/CandidateView;->mIsTabletMode:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/ime/implement/view/candidate/CandidateView;->mIsPopupCandidateView:Z

    if-nez v1, :cond_0

    const/4 v0, 0x5

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/ime/implement/view/candidate/CandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->getHanjaStatus()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x4

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    goto :goto_0
.end method

.method protected getFirstButtonInCandidate()Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/ime/implement/view/candidate/CandidateView;->mFirstButtonInCandidate:Landroid/widget/Button;

    if-nez v0, :cond_0

    const v0, 0x7f100030

    invoke-virtual {p0, v0}, Lcom/ime/implement/view/candidate/CandidateView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/ime/implement/view/candidate/CandidateView;->mFirstButtonInCandidate:Landroid/widget/Button;

    :cond_0
    iget-object v0, p0, Lcom/ime/implement/view/candidate/CandidateView;->mFirstButtonInCandidate:Landroid/widget/Button;

    return-object v0
.end method

.method public getFloatingKeyboardLeftEdge()I
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lcom/ime/implement/view/candidate/CandidateView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090a53

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getFloatingKeyboardRightEdge()I
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lcom/ime/implement/view/candidate/CandidateView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090a54

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected getLanguageButton()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/ime/implement/view/candidate/CandidateView;->mLanguageButton:Landroid/view/View;

    if-nez v0, :cond_0

    const v0, 0x7f10002b

    invoke-virtual {p0, v0}, Lcom/ime/implement/view/candidate/CandidateView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ime/implement/view/candidate/CandidateView;->mLanguageButton:Landroid/view/View;

    :cond_0
    iget-object v0, p0, Lcom/ime/implement/view/candidate/CandidateView;->mLanguageButton:Landroid/view/View;

    check-cast v0, Landroid/widget/Button;

    return-object v0
.end method

.method protected bridge synthetic getLeftArrowKnobButton()Landroid/view/View;
    .locals 1

    invoke-virtual {p0}, Lcom/ime/implement/view/candidate/CandidateView;->getLeftArrowKnobButton()Landroid/widget/Button;

    move-result-object v0

    return-object v0
.end method

.method protected getLeftArrowKnobButton()Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/ime/implement/view/candidate/CandidateView;->mLeftArrowKnobButton:Landroid/view/View;

    if-nez v0, :cond_0

    const v0, 0x7f100027

    invoke-virtual {p0, v0}, Lcom/ime/implement/view/candidate/CandidateView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ime/implement/view/candidate/CandidateView;->mLeftArrowKnobButton:Landroid/view/View;

    :cond_0
    iget-object v0, p0, Lcom/ime/implement/view/candidate/CandidateView;->mLeftArrowKnobButton:Landroid/view/View;

    check-cast v0, Landroid/widget/Button;

    return-object v0
.end method

.method protected getMobileKeyboardToolBarClickListener()Landroid/view/View$OnClickListener;
    .locals 1

    iget-object v0, p0, Lcom/ime/implement/view/candidate/CandidateView;->mMobilKeyboardToolBarClickListener:Landroid/view/View$OnClickListener;

    if-nez v0, :cond_0

    new-instance v0, Lcom/ime/implement/view/candidate/CandidateView$2;

    invoke-direct {v0, p0}, Lcom/ime/implement/view/candidate/CandidateView$2;-><init>(Lcom/ime/implement/view/candidate/CandidateView;)V

    iput-object v0, p0, Lcom/ime/implement/view/candidate/CandidateView;->mMobilKeyboardToolBarClickListener:Landroid/view/View$OnClickListener;

    :cond_0
    iget-object v0, p0, Lcom/ime/implement/view/candidate/CandidateView;->mMobilKeyboardToolBarClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method protected getMobileKeyboardToolBarLongClickListener()Landroid/view/View$OnLongClickListener;
    .locals 1

    iget-object v0, p0, Lcom/ime/implement/view/candidate/CandidateView;->mMobileKeyboardToolBarLongClickListener:Landroid/view/View$OnLongClickListener;

    if-nez v0, :cond_0

    new-instance v0, Lcom/ime/implement/view/candidate/CandidateView$3;

    invoke-direct {v0, p0}, Lcom/ime/implement/view/candidate/CandidateView$3;-><init>(Lcom/ime/implement/view/candidate/CandidateView;)V

    iput-object v0, p0, Lcom/ime/implement/view/candidate/CandidateView;->mMobileKeyboardToolBarLongClickListener:Landroid/view/View$OnLongClickListener;

    :cond_0
    iget-object v0, p0, Lcom/ime/implement/view/candidate/CandidateView;->mMobileKeyboardToolBarLongClickListener:Landroid/view/View$OnLongClickListener;

    return-object v0
.end method

.method protected bridge synthetic getRightArrowKnobButton()Landroid/view/View;
    .locals 1

    invoke-virtual {p0}, Lcom/ime/implement/view/candidate/CandidateView;->getRightArrowKnobButton()Landroid/widget/Button;

    move-result-object v0

    return-object v0
.end method

.method protected getRightArrowKnobButton()Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/ime/implement/view/candidate/CandidateView;->mRightArrowKnobButton:Landroid/view/View;

    if-nez v0, :cond_0

    const v0, 0x7f100029

    invoke-virtual {p0, v0}, Lcom/ime/implement/view/candidate/CandidateView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ime/implement/view/candidate/CandidateView;->mRightArrowKnobButton:Landroid/view/View;

    :cond_0
    iget-object v0, p0, Lcom/ime/implement/view/candidate/CandidateView;->mRightArrowKnobButton:Landroid/view/View;

    check-cast v0, Landroid/widget/Button;

    return-object v0
.end method

.method protected getSettingsButton()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/ime/implement/view/candidate/CandidateView;->mSettingsButton:Landroid/view/View;

    if-nez v0, :cond_0

    const v0, 0x7f10002f

    invoke-virtual {p0, v0}, Lcom/ime/implement/view/candidate/CandidateView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ime/implement/view/candidate/CandidateView;->mSettingsButton:Landroid/view/View;

    :cond_0
    iget-object v0, p0, Lcom/ime/implement/view/candidate/CandidateView;->mSettingsButton:Landroid/view/View;

    check-cast v0, Landroid/widget/Button;

    return-object v0
.end method

.method protected getVoiceButton()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/ime/implement/view/candidate/CandidateView;->mVoiceButton:Landroid/view/View;

    if-nez v0, :cond_0

    const v0, 0x7f10002c

    invoke-virtual {p0, v0}, Lcom/ime/implement/view/candidate/CandidateView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ime/implement/view/candidate/CandidateView;->mVoiceButton:Landroid/view/View;

    :cond_0
    iget-object v0, p0, Lcom/ime/implement/view/candidate/CandidateView;->mVoiceButton:Landroid/view/View;

    check-cast v0, Landroid/widget/Button;

    return-object v0
.end method

.method protected getVoiceButtonTouchListener()Landroid/view/View$OnTouchListener;
    .locals 2

    iget-object v0, p0, Lcom/ime/implement/view/candidate/CandidateView;->mVoiceButtonTouchListener:Landroid/view/View$OnTouchListener;

    if-nez v0, :cond_0

    const-string v0, "Jinseok"

    const-string v1, "CandidateView - OntouchListener - null new on touch "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/ime/implement/view/candidate/CandidateView$1;

    invoke-direct {v0, p0}, Lcom/ime/implement/view/candidate/CandidateView$1;-><init>(Lcom/ime/implement/view/candidate/CandidateView;)V

    iput-object v0, p0, Lcom/ime/implement/view/candidate/CandidateView;->mVoiceButtonTouchListener:Landroid/view/View$OnTouchListener;

    :cond_0
    iget-object v0, p0, Lcom/ime/implement/view/candidate/CandidateView;->mVoiceButtonTouchListener:Landroid/view/View$OnTouchListener;

    return-object v0
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 10

    const/4 v3, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x2

    iget-object v4, p0, Lcom/ime/implement/view/candidate/CandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/ime/framework/common/InputManager;->isPopupWindowShown()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {p0}, Lcom/ime/implement/view/candidate/CandidateView;->getCandidateCustomButtonLayout()Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v4

    if-nez v4, :cond_1

    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLeft()I

    move-result v4

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getTop()I

    move-result v5

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getRight()I

    move-result v6

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getBottom()I

    move-result v7

    invoke-direct {v1, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v1, v4, v5}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    cmpl-float v4, v4, v9

    if-lez v4, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {p0}, Lcom/ime/implement/view/candidate/CandidateView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    cmpg-float v4, v4, v5

    if-gez v4, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    cmpl-float v4, v4, v9

    if-lez v4, :cond_0

    const/4 v2, 0x0

    int-to-float v4, v2

    invoke-virtual {p0}, Lcom/ime/implement/view/candidate/CandidateView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    sub-float/2addr v5, v6

    sub-float/2addr v4, v5

    float-to-int v2, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    int-to-float v5, v2

    invoke-virtual {p1, v4, v5}, Landroid/view/MotionEvent;->setLocation(FF)V

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    :goto_0
    :pswitch_0
    iget-object v4, p0, Lcom/ime/implement/view/candidate/CandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v4, v3}, Lcom/ime/framework/common/InputManager;->getInputView(Z)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_1
    :goto_1
    return v3

    :pswitch_1
    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->setAction(I)V

    iget-object v4, p0, Lcom/ime/implement/view/candidate/CandidateView;->mDownPoint:Landroid/graphics/Point;

    if-nez v4, :cond_2

    new-instance v4, Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v6, v6

    invoke-direct {v4, v5, v6}, Landroid/graphics/Point;-><init>(II)V

    iput-object v4, p0, Lcom/ime/implement/view/candidate/CandidateView;->mDownPoint:Landroid/graphics/Point;

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/ime/implement/view/candidate/CandidateView;->mDownPoint:Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Point;->set(II)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    :pswitch_3
    iget-object v4, p0, Lcom/ime/implement/view/candidate/CandidateView;->mDownPoint:Landroid/graphics/Point;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/ime/implement/view/candidate/CandidateView;->mDownPoint:Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Point;->equals(II)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    :cond_3
    const/4 v4, 0x1

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    :cond_4
    invoke-super {p0, p1}, Lcom/ime/framework/view/candidate/AbstractCandidateView;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/ime/implement/view/candidate/CandidateView;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v0}, Lcom/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/implement/view/candidate/CandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->isMiniKeyboardOnScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/implement/view/candidate/CandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->dismissPopupKeyboard()V

    :cond_0
    invoke-super {p0, p1}, Lcom/ime/framework/view/candidate/AbstractCandidateView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected setExpandButtonImage(Z)V
    .locals 6

    const v5, 0x7f0205b5

    const v4, 0x7f0205ae

    iget-object v2, p0, Lcom/ime/implement/view/candidate/CandidateView;->mExpandButton:Landroid/view/View;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/ime/implement/view/candidate/CandidateView;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/ime/implement/view/candidate/CandidateView;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v2}, Lcom/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_2

    if-eqz p1, :cond_1

    :try_start_0
    iget-object v2, p0, Lcom/ime/implement/view/candidate/CandidateView;->mExpandButton:Landroid/view/View;

    const-string v3, "textinput_floating_candidate_btn_left_xml"

    invoke-static {v3}, Lcom/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v2, p0, Lcom/ime/implement/view/candidate/CandidateView;->mExpandButton:Landroid/view/View;

    iget-object v3, p0, Lcom/ime/implement/view/candidate/CandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/ime/implement/view/candidate/CandidateView;->mExpandButton:Landroid/view/View;

    const-string v3, "textinput_floating_candidate_btn_right_xml"

    invoke-static {v3}, Lcom/ime/implement/resource/CustomResource;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    iget-object v2, p0, Lcom/ime/implement/view/candidate/CandidateView;->mExpandButton:Landroid/view/View;

    iget-object v3, p0, Lcom/ime/implement/view/candidate/CandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_7

    iget-object v2, p0, Lcom/ime/implement/view/candidate/CandidateView;->mCandidateButtonBgClose:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/ime/implement/view/candidate/CandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/ime/implement/view/candidate/CandidateView;->mCandidateButtonBgClose:Landroid/graphics/drawable/Drawable;

    :cond_3
    iget-object v2, p0, Lcom/ime/implement/view/candidate/CandidateView;->mCandidateMobileKeyboardBtnClose:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/ime/implement/view/candidate/CandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/ime/framework/common/InputManager;->isMobileKeyboard()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/ime/implement/view/candidate/CandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0204d7

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/ime/implement/view/candidate/CandidateView;->mCandidateMobileKeyboardBtnClose:Landroid/graphics/drawable/Drawable;

    :cond_4
    :goto_1
    iget-object v2, p0, Lcom/ime/implement/view/candidate/CandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/ime/framework/common/InputManager;->isMobileKeyboard()Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/ime/implement/view/candidate/CandidateView;->mExpandButton:Landroid/view/View;

    iget-object v3, p0, Lcom/ime/implement/view/candidate/CandidateView;->mCandidateButtonBgClose:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/ime/implement/view/candidate/CandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0204d8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/ime/implement/view/candidate/CandidateView;->mCandidateMobileKeyboardBtnClose:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    :cond_6
    iget-object v2, p0, Lcom/ime/implement/view/candidate/CandidateView;->mExpandButton:Landroid/view/View;

    iget-object v3, p0, Lcom/ime/implement/view/candidate/CandidateView;->mCandidateMobileKeyboardBtnClose:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    :cond_7
    iget-object v2, p0, Lcom/ime/implement/view/candidate/CandidateView;->mCandidateButtonBgExpand:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_8

    iget-object v2, p0, Lcom/ime/implement/view/candidate/CandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/ime/implement/view/candidate/CandidateView;->mCandidateButtonBgExpand:Landroid/graphics/drawable/Drawable;

    :cond_8
    iget-object v2, p0, Lcom/ime/implement/view/candidate/CandidateView;->mCandidateMobileKeyboardBtnExpand:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_9

    iget-object v2, p0, Lcom/ime/implement/view/candidate/CandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/ime/framework/common/InputManager;->isMobileKeyboard()Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/ime/implement/view/candidate/CandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0204da

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/ime/implement/view/candidate/CandidateView;->mCandidateMobileKeyboardBtnExpand:Landroid/graphics/drawable/Drawable;

    :cond_9
    :goto_2
    iget-object v2, p0, Lcom/ime/implement/view/candidate/CandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/ime/framework/common/InputManager;->isMobileKeyboard()Z

    move-result v2

    if-nez v2, :cond_b

    iget-object v2, p0, Lcom/ime/implement/view/candidate/CandidateView;->mExpandButton:Landroid/view/View;

    iget-object v3, p0, Lcom/ime/implement/view/candidate/CandidateView;->mCandidateButtonBgExpand:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    :cond_a
    iget-object v2, p0, Lcom/ime/implement/view/candidate/CandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0204d5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/ime/implement/view/candidate/CandidateView;->mCandidateMobileKeyboardBtnExpand:Landroid/graphics/drawable/Drawable;

    goto :goto_2

    :cond_b
    iget-object v2, p0, Lcom/ime/implement/view/candidate/CandidateView;->mExpandButton:Landroid/view/View;

    iget-object v3, p0, Lcom/ime/implement/view/candidate/CandidateView;->mCandidateMobileKeyboardBtnExpand:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0
.end method
