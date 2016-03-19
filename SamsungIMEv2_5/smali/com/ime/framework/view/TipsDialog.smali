.class public Lcom/ime/framework/view/TipsDialog;
.super Ljava/lang/Object;
.source "TipsDialog.java"


# static fields
.field public static final LANGUAGE_GUIDE_POPUP:I = 0x64

.field private static mDiscoverability:Landroid/widget/PopupWindow;

.field private static sInstance:Lcom/ime/framework/view/TipsDialog;


# instance fields
.field context:Landroid/content/Context;

.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mAnimationRunnable:Ljava/lang/Runnable;

.field private mAttentionDialog:Landroid/app/AlertDialog;

.field protected mCurrentInputMethod:I

.field private mFontManager:Lcom/ime/framework/common/FontManager;

.field protected mInputManager:Lcom/ime/framework/common/InputManager;

.field protected mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

.field private mIsCheckDontShowEmptyShortcutsGuide:Z

.field private mIsCheckDontShowOneHandedGuide:Z

.field private mIsCheckDontShowPenDetectionGuide:Z

.field private mIsCheckDontShowPinchZoomGuide:Z

.field private mIsCheckDontShowTraceGuide:Z

.field private mIsCheckboxStandardData:Z

.field private mIsTipCheckDontShowAllGuide:Z

.field private mIsUSAString:Z

.field private mMotionTutorialAnimationDrawble:Landroid/graphics/drawable/AnimationDrawable;

.field private mMovingTutorialAnimationDrawble:Landroid/graphics/drawable/AnimationDrawable;

.field private mOnDialogDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field private mOnLanguageDialogDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field private mOneHandedAnimationRunnable:Ljava/lang/Runnable;

.field private mOneHandedTutorialAnimationDrawble:Landroid/graphics/drawable/AnimationDrawable;

.field protected mRepository:Lcom/ime/framework/repository/Repository;

.field mkeyboardView:Lcom/ime/framework/view/AbstractKeyboardView;


# direct methods
.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput v1, p0, Lcom/ime/framework/view/TipsDialog;->mCurrentInputMethod:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/ime/framework/view/TipsDialog;->mIsCheckboxStandardData:Z

    new-instance v1, Lcom/ime/framework/view/TipsDialog$1;

    invoke-direct {v1, p0}, Lcom/ime/framework/view/TipsDialog$1;-><init>(Lcom/ime/framework/view/TipsDialog;)V

    iput-object v1, p0, Lcom/ime/framework/view/TipsDialog;->mOneHandedAnimationRunnable:Ljava/lang/Runnable;

    new-instance v1, Lcom/ime/framework/view/TipsDialog$4;

    invoke-direct {v1, p0}, Lcom/ime/framework/view/TipsDialog$4;-><init>(Lcom/ime/framework/view/TipsDialog;)V

    iput-object v1, p0, Lcom/ime/framework/view/TipsDialog;->mAnimationRunnable:Ljava/lang/Runnable;

    invoke-static {}, Lcom/ime/framework/common/InputManagerImpl;->getInstance()Lcom/ime/framework/common/InputManager;

    move-result-object v1

    iput-object v1, p0, Lcom/ime/framework/view/TipsDialog;->mInputManager:Lcom/ime/framework/common/InputManager;

    iget-object v1, p0, Lcom/ime/framework/view/TipsDialog;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->getRepository()Lcom/ime/framework/repository/Repository;

    move-result-object v1

    iput-object v1, p0, Lcom/ime/framework/view/TipsDialog;->mRepository:Lcom/ime/framework/repository/Repository;

    iget-object v1, p0, Lcom/ime/framework/view/TipsDialog;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/ime/framework/view/TipsDialog;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/ime/framework/view/TipsDialog;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->getInputModeManager()Lcom/ime/framework/inputmode/InputModeManager;

    move-result-object v1

    iput-object v1, p0, Lcom/ime/framework/view/TipsDialog;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    iget-object v1, p0, Lcom/ime/framework/view/TipsDialog;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v1}, Lcom/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v1

    iput v1, p0, Lcom/ime/framework/view/TipsDialog;->mCurrentInputMethod:I

    new-instance v0, Lcom/sec/android/inputmethod/ConfigFeature;

    invoke-direct {v0}, Lcom/sec/android/inputmethod/ConfigFeature;-><init>()V

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/ConfigFeature;->isUSAString()Z

    move-result v1

    iput-boolean v1, p0, Lcom/ime/framework/view/TipsDialog;->mIsUSAString:Z

    invoke-static {}, Lcom/ime/framework/common/FontManagerImpl;->getInstance()Lcom/ime/framework/common/FontManager;

    move-result-object v1

    iput-object v1, p0, Lcom/ime/framework/view/TipsDialog;->mFontManager:Lcom/ime/framework/common/FontManager;

    return-void
.end method

.method static synthetic access$000(Lcom/ime/framework/view/TipsDialog;)Landroid/graphics/drawable/AnimationDrawable;
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/view/TipsDialog;->mOneHandedTutorialAnimationDrawble:Landroid/graphics/drawable/AnimationDrawable;

    return-object v0
.end method

.method static synthetic access$002(Lcom/ime/framework/view/TipsDialog;Landroid/graphics/drawable/AnimationDrawable;)Landroid/graphics/drawable/AnimationDrawable;
    .locals 0

    iput-object p1, p0, Lcom/ime/framework/view/TipsDialog;->mOneHandedTutorialAnimationDrawble:Landroid/graphics/drawable/AnimationDrawable;

    return-object p1
.end method

.method static synthetic access$100(Lcom/ime/framework/view/TipsDialog;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/ime/framework/view/TipsDialog;->mIsCheckDontShowPinchZoomGuide:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/ime/framework/view/TipsDialog;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/ime/framework/view/TipsDialog;->mIsCheckDontShowEmptyShortcutsGuide:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/ime/framework/view/TipsDialog;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/ime/framework/view/TipsDialog;->mIsCheckDontShowEmptyShortcutsGuide:Z

    return p1
.end method

.method static synthetic access$102(Lcom/ime/framework/view/TipsDialog;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/ime/framework/view/TipsDialog;->mIsCheckDontShowPinchZoomGuide:Z

    return p1
.end method

.method static synthetic access$200(Lcom/ime/framework/view/TipsDialog;)Landroid/graphics/drawable/AnimationDrawable;
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/view/TipsDialog;->mMotionTutorialAnimationDrawble:Landroid/graphics/drawable/AnimationDrawable;

    return-object v0
.end method

.method static synthetic access$300(Lcom/ime/framework/view/TipsDialog;)Landroid/graphics/drawable/AnimationDrawable;
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/view/TipsDialog;->mMovingTutorialAnimationDrawble:Landroid/graphics/drawable/AnimationDrawable;

    return-object v0
.end method

.method static synthetic access$400(Lcom/ime/framework/view/TipsDialog;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/ime/framework/view/TipsDialog;->mIsCheckDontShowTraceGuide:Z

    return v0
.end method

.method static synthetic access$402(Lcom/ime/framework/view/TipsDialog;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/ime/framework/view/TipsDialog;->mIsCheckDontShowTraceGuide:Z

    return p1
.end method

.method static synthetic access$500(Lcom/ime/framework/view/TipsDialog;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/ime/framework/view/TipsDialog;->mIsCheckboxStandardData:Z

    return v0
.end method

.method static synthetic access$600(Lcom/ime/framework/view/TipsDialog;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/ime/framework/view/TipsDialog;->mIsCheckDontShowOneHandedGuide:Z

    return v0
.end method

.method static synthetic access$602(Lcom/ime/framework/view/TipsDialog;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/ime/framework/view/TipsDialog;->mIsCheckDontShowOneHandedGuide:Z

    return p1
.end method

.method static synthetic access$700(Lcom/ime/framework/view/TipsDialog;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/ime/framework/view/TipsDialog;->mIsCheckDontShowPenDetectionGuide:Z

    return v0
.end method

.method static synthetic access$702(Lcom/ime/framework/view/TipsDialog;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/ime/framework/view/TipsDialog;->mIsCheckDontShowPenDetectionGuide:Z

    return p1
.end method

.method static synthetic access$800(Lcom/ime/framework/view/TipsDialog;)Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$900(Lcom/ime/framework/view/TipsDialog;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/ime/framework/view/TipsDialog;->mIsTipCheckDontShowAllGuide:Z

    return v0
.end method

.method static synthetic access$902(Lcom/ime/framework/view/TipsDialog;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/ime/framework/view/TipsDialog;->mIsTipCheckDontShowAllGuide:Z

    return p1
.end method

.method private getGuideMessageForMMKey()Ljava/lang/CharSequence;
    .locals 3

    const/4 v0, 0x0

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Sip_AddCommaKeyAsDefault"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "ATT"

    const-string v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/ime/framework/view/TipsDialog;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d02ab

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/ime/framework/view/TipsDialog;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d02aa

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getInstance()Lcom/ime/framework/view/TipsDialog;
    .locals 1

    sget-object v0, Lcom/ime/framework/view/TipsDialog;->sInstance:Lcom/ime/framework/view/TipsDialog;

    if-nez v0, :cond_0

    new-instance v0, Lcom/ime/framework/view/TipsDialog;

    invoke-direct {v0}, Lcom/ime/framework/view/TipsDialog;-><init>()V

    sput-object v0, Lcom/ime/framework/view/TipsDialog;->sInstance:Lcom/ime/framework/view/TipsDialog;

    :cond_0
    sget-object v0, Lcom/ime/framework/view/TipsDialog;->sInstance:Lcom/ime/framework/view/TipsDialog;

    return-object v0
.end method

.method public static getInstancePopup()Landroid/widget/PopupWindow;
    .locals 1

    sget-object v0, Lcom/ime/framework/view/TipsDialog;->mDiscoverability:Landroid/widget/PopupWindow;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/PopupWindow;

    invoke-direct {v0}, Landroid/widget/PopupWindow;-><init>()V

    sput-object v0, Lcom/ime/framework/view/TipsDialog;->mDiscoverability:Landroid/widget/PopupWindow;

    :cond_0
    sget-object v0, Lcom/ime/framework/view/TipsDialog;->mDiscoverability:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method private isAvailableShowXt9_9RemoveDialog(Ljava/lang/String;)Z
    .locals 17

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ime/framework/view/TipsDialog;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v15}, Lcom/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v4, 0x0

    const-string v13, ""

    const-string v12, ""

    const/4 v14, 0x0

    const/4 v11, 0x0

    const/4 v10, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x0

    if-eqz v2, :cond_3

    const/16 v15, 0x40

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-interface {v2, v15, v0}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const/16 v15, 0x40

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-interface {v2, v15, v0}, Landroid/view/inputmethod/InputConnection;->getTextAfterCursor(II)Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    :goto_0
    if-eqz v5, :cond_0

    const/16 v15, 0x20

    invoke-virtual {v5, v15}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v11

    const/16 v15, 0xa

    invoke-virtual {v5, v15}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v10

    invoke-static {v11, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    const/4 v15, -0x1

    if-ne v11, v15, :cond_4

    const/4 v15, -0x1

    if-ne v10, v15, :cond_4

    move-object v13, v5

    :goto_1
    if-eqz v13, :cond_0

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v15

    if-lez v15, :cond_0

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v15

    add-int/lit8 v1, v15, -0x1

    :goto_2
    if-ltz v1, :cond_0

    invoke-virtual {v13, v1}, Ljava/lang/String;->charAt(I)C

    move-result v15

    invoke-static {v15}, Ljava/lang/Character;->isLetter(C)Z

    move-result v15

    if-nez v15, :cond_5

    invoke-virtual {v13, v1}, Ljava/lang/String;->charAt(I)C

    move-result v15

    const/16 v16, 0x27

    move/from16 v0, v16

    if-eq v15, v0, :cond_5

    add-int/lit8 v15, v1, 0x1

    invoke-virtual {v13, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    :cond_0
    if-eqz v4, :cond_1

    const/16 v15, 0x20

    invoke-virtual {v4, v15}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    const/16 v15, 0xa

    invoke-virtual {v4, v15}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    invoke-static {v8, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    const/4 v15, -0x1

    if-ne v8, v15, :cond_6

    const/4 v15, -0x1

    if-ne v7, v15, :cond_6

    move-object v12, v4

    :goto_3
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v12, :cond_1

    if-lez v3, :cond_1

    const/4 v1, 0x0

    :goto_4
    if-ge v1, v3, :cond_1

    invoke-virtual {v12, v1}, Ljava/lang/String;->charAt(I)C

    move-result v15

    invoke-static {v15}, Ljava/lang/Character;->isLetter(C)Z

    move-result v15

    if-nez v15, :cond_7

    invoke-virtual {v12, v1}, Ljava/lang/String;->charAt(I)C

    move-result v15

    const/16 v16, 0x27

    move/from16 v0, v16

    if-eq v15, v0, :cond_7

    const/4 v15, 0x0

    invoke-virtual {v12, v15, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    :cond_1
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_2

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v15

    const/16 v16, 0x40

    move/from16 v0, v16

    if-le v15, v0, :cond_2

    const/16 v15, 0x40

    invoke-virtual {v14, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    :cond_2
    if-eqz v2, :cond_8

    if-eqz v14, :cond_8

    const-string v15, ""

    invoke-virtual {v14, v15}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v15

    if-nez v15, :cond_8

    const/4 v15, 0x0

    invoke-interface {v2, v15}, Landroid/view/inputmethod/InputConnection;->getSelectedText(I)Ljava/lang/CharSequence;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    if-eqz v14, :cond_8

    const-string v15, ""

    invoke-virtual {v14, v15}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v15

    if-nez v15, :cond_8

    const/4 v15, 0x0

    :goto_5
    return v15

    :cond_3
    const-string v5, ""

    const-string v4, ""

    goto/16 :goto_0

    :cond_4
    add-int/lit8 v15, v9, 0x1

    invoke-virtual {v5, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_1

    :cond_5
    add-int/lit8 v1, v1, -0x1

    goto/16 :goto_2

    :cond_6
    const/4 v15, 0x0

    invoke-virtual {v4, v15, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    goto :goto_3

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_8
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_9

    const/4 v15, 0x0

    goto :goto_5

    :cond_9
    const/4 v15, 0x1

    goto :goto_5
.end method

.method private showDiscoverabilityForAutoCorrect(Landroid/view/View;)Landroid/view/View;
    .locals 22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/TipsDialog;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/TipsDialog;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v19, v0

    const v20, 0x7f030022

    const/16 v21, 0x0

    invoke-interface/range {v19 .. v21}, Lcom/ime/framework/common/InputManager;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v17

    invoke-static {}, Lcom/ime/framework/common/PrivateImeOptionsControllerImpl;->getInstance()Lcom/ime/framework/common/PrivateImeOptionsController;

    move-result-object v9

    if-nez p1, :cond_0

    :goto_0
    return-object v17

    :cond_0
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/res/Resources;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v19

    move-object/from16 v0, v19

    iget v3, v0, Landroid/content/res/CompatibilityInfo;->applicationScale:F
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v11, v0, [I

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/View;->getLocationOnScreen([I)V

    const v19, 0x7f100041

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v18

    const/16 v19, 0x0

    aget v19, v11, v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    mul-float v19, v19, v3

    const/high16 v20, 0x3f000000    # 0.5f

    add-float v19, v19, v20

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    sub-int v20, v18, v7

    div-int/lit8 v20, v20, 0x2

    add-int v8, v19, v20

    const/4 v14, 0x0

    const v19, 0x7f090011

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v19

    move/from16 v0, v19

    float-to-int v15, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/TipsDialog;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/ime/framework/common/InputManager;->isOrientationLandscape()Z

    move-result v19

    if-nez v19, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/TipsDialog;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/ime/framework/common/InputManager;->getKeyboardHeightDelta()I

    move-result v19

    sub-int v15, v15, v19

    :cond_1
    invoke-static {}, Lcom/ime/framework/repository/PropertyItems;->isUsingCandidateButtonPrevNext()Z

    move-result v19

    if-eqz v19, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/TipsDialog;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/ime/framework/common/InputManager;->isPopupInputMethod()Z

    move-result v19

    if-nez v19, :cond_3

    invoke-interface {v9}, Lcom/ime/framework/common/PrivateImeOptionsController;->getPrevNextTypeOfPrivateImeOptions()I

    move-result v19

    if-eqz v19, :cond_3

    const/16 v16, 0x1

    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/TipsDialog;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/ime/framework/common/InputManager;->isEnableOneHandKeypad()Z

    move-result v19

    if-eqz v19, :cond_4

    const v19, 0x7f090014

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v19

    add-int v8, v8, v19

    if-eqz v16, :cond_2

    const v19, 0x7f090013

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v19

    add-int v8, v8, v19

    :cond_2
    :goto_3
    invoke-virtual {v4}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v10, v0, v15, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginsRelative(IIII)V

    const/16 v19, 0x0

    const/16 v20, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v4, v8, v14, v0, v1}, Landroid/widget/ImageView;->setPadding(IIII)V

    invoke-virtual {v4, v10}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v19, 0x7f100042

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    const v19, 0x7f090010

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v19

    add-int v13, v8, v19

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v12, v13, v0, v1, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    goto/16 :goto_0

    :catch_0
    move-exception v6

    const/high16 v3, 0x3f800000    # 1.0f

    const-string v19, "SamsungIME"

    const-string v20, "DiscoverabilityForAutoCorrection - appScale set 1.0 because of NullPointerException"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_3
    const/16 v16, 0x0

    goto :goto_2

    :cond_4
    const v19, 0x7f090012

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v19

    add-int v8, v8, v19

    goto :goto_3
.end method

.method private showDiscoverabilityForMMKey()Landroid/view/View;
    .locals 20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/TipsDialog;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-direct/range {p0 .. p0}, Lcom/ime/framework/view/TipsDialog;->getGuideMessageForMMKey()Ljava/lang/CharSequence;

    move-result-object v11

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/TipsDialog;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/ime/framework/inputmode/InputModeManager;->getInputMethodOnKor()I

    move-result v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/TipsDialog;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode()Z

    move-result v17

    if-eqz v17, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/TipsDialog;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/ime/framework/common/InputManager;->isTabletMode()Z

    move-result v17

    if-nez v17, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/TipsDialog;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v17, v0

    const v18, 0x7f030023

    const/16 v19, 0x0

    invoke-interface/range {v17 .. v19}, Lcom/ime/framework/common/InputManager;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v16

    :goto_0
    const v17, 0x7f100042

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    if-eqz v11, :cond_0

    invoke-virtual {v13, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    const v17, 0x7f100044

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout$LayoutParams;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/TipsDialog;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/ime/framework/common/InputManager;->isKorMode()Z

    move-result v17

    if-eqz v17, :cond_5

    const v17, 0x7f09001e

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v17

    move/from16 v0, v17

    iput v0, v5, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    :goto_1
    const v17, 0x7f090026

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v17

    move/from16 v0, v17

    iput v0, v5, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    :cond_1
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/TipsDialog;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/ime/framework/common/InputManager;->isTabletMode()Z

    move-result v17

    if-eqz v17, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/TipsDialog;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/ime/framework/common/InputManager;->getKeyboardHeightLevel()I

    move-result v17

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_2

    const v17, 0x7f100044

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/TipsDialog;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/ime/framework/common/InputManager;->getKeyboardHeightDelta()I

    move-result v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/TipsDialog;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/ime/framework/common/InputManager;->getKeyboardViewHeight()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    div-float v6, v17, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ime/framework/view/TipsDialog;->mCurrentInputMethod:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_39

    iget v0, v5, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    iget v0, v5, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    mul-float v18, v18, v6

    add-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v5, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    iget v0, v5, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    iget v0, v5, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    const/high16 v19, 0x40000000    # 2.0f

    div-float v19, v6, v19

    mul-float v18, v18, v19

    add-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v5, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    :cond_2
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/TipsDialog;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/ime/framework/common/InputManager;->isTabletMode()Z

    move-result v17

    if-nez v17, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/TipsDialog;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/ime/framework/common/InputManager;->isOrientationLandscape()Z

    move-result v17

    if-nez v17, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/TipsDialog;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/ime/framework/common/InputManager;->getKeyboardHeightLevel()I

    move-result v17

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_3

    const v17, 0x7f100044

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout$LayoutParams;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/TipsDialog;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/ime/framework/common/InputManager;->getKeyboardHeightDelta()I

    move-result v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/TipsDialog;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/ime/framework/common/InputManager;->getDefaultKeyboardHeight()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    div-float v6, v17, v18

    iget v0, v5, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    const v18, 0x7f090d5d

    move/from16 v0, v18

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v18

    mul-float v18, v18, v6

    add-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v5, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    :cond_3
    return-object v16

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/TipsDialog;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v17, v0

    const v18, 0x7f030024

    const/16 v19, 0x0

    invoke-interface/range {v17 .. v19}, Lcom/ime/framework/common/InputManager;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v16

    goto/16 :goto_0

    :cond_5
    const v17, 0x7f090025

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v17

    move/from16 v0, v17

    iput v0, v5, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    goto/16 :goto_1

    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/ime/framework/view/TipsDialog;->mCurrentInputMethod:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/TipsDialog;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/ime/framework/common/InputManager;->isTabletMode()Z

    move-result v17

    if-nez v17, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/TipsDialog;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v17, v0

    const v18, 0x7f030025

    const/16 v19, 0x0

    invoke-interface/range {v17 .. v19}, Lcom/ime/framework/common/InputManager;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v16

    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/TipsDialog;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/ime/framework/common/InputManager;->isNumberSymbolOnlyEditor()Z

    move-result v17

    if-nez v17, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/TipsDialog;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/ime/framework/common/InputManager;->isNumberOnlyEditor()Z

    move-result v17

    if-eqz v17, :cond_c

    :cond_7
    const/4 v8, 0x1

    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/TipsDialog;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/ime/framework/common/InputManager;->isEnableOneHandKeypad()Z

    move-result v17

    if-eqz v17, :cond_e

    const v17, 0x7f100042

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    if-eqz v11, :cond_8

    invoke-virtual {v13, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_8
    const v17, 0x7f100044

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout$LayoutParams;

    const v17, 0x7f09004a

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v17

    move/from16 v0, v17

    iput v0, v5, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/TipsDialog;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/ime/framework/common/InputManager;->isOneHandKeypadRightSet()Z

    move-result v17

    if-eqz v17, :cond_9

    const v17, 0x7f090049

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    iget v0, v5, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    move/from16 v17, v0

    sub-int v17, v17, v12

    move/from16 v0, v17

    iput v0, v5, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    :cond_9
    if-nez v8, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/TipsDialog;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/ime/framework/common/InputManager;->isJapaneseLanguageMode()Z

    move-result v17

    if-nez v17, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/TipsDialog;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/ime/framework/common/InputManager;->isChineseLanguageMode()Z

    move-result v17

    if-eqz v17, :cond_d

    :cond_a
    const v17, 0x7f09004c

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v17

    move/from16 v0, v17

    iput v0, v5, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    :goto_6
    const v17, 0x7f09003e

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v17

    move/from16 v0, v17

    iput v0, v5, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    goto/16 :goto_2

    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/TipsDialog;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v17, v0

    const v18, 0x7f030026

    const/16 v19, 0x0

    invoke-interface/range {v17 .. v19}, Lcom/ime/framework/common/InputManager;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v16

    goto/16 :goto_4

    :cond_c
    const/4 v8, 0x0

    goto/16 :goto_5

    :cond_d
    const v17, 0x7f09004b

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v17

    move/from16 v0, v17

    iput v0, v5, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    goto :goto_6

    :cond_e
    const v17, 0x7f100042

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    const v17, 0x7f100044

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    if-eqz v11, :cond_f

    invoke-virtual {v13, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/TipsDialog;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/ime/framework/common/InputManager;->isTabletMode()Z

    move-result v17

    if-eqz v17, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/TipsDialog;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/ime/framework/inputmode/InputModeManager;->isKorTabletCji()Z

    move-result v17

    if-eqz v17, :cond_10

    invoke-virtual {v4}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout$LayoutParams;

    const v17, 0x7f090878

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v17

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v5, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/TipsDialog;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/ime/framework/common/InputManager;->isOrientationLandscape()Z

    move-result v17

    if-nez v17, :cond_10

    const v17, 0x7f10000e

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    const v17, 0x7f090879

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v17

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v3, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/TipsDialog;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/ime/framework/common/InputManager;->isOrientationLandscape()Z

    move-result v17

    if-eqz v17, :cond_12

    if-nez v8, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/TipsDialog;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/ime/framework/common/InputManager;->isJapaneseLanguageMode()Z

    move-result v17

    if-eqz v17, :cond_11

    invoke-virtual {v4}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout$LayoutParams;

    const v17, 0x7f09003a

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v17

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v5, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    const v17, 0x7f09003b

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v17

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v5, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/TipsDialog;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/ime/framework/common/InputManager;->isTabletMode()Z

    move-result v17

    if-eqz v17, :cond_1

    invoke-static {}, Lcom/ime/framework/repository/EditorStatus;->isPhoneNumberInputClass()Z

    move-result v17

    if-nez v17, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/TipsDialog;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/ime/framework/inputmode/InputModeManager;->isKorTabletCji()Z

    move-result v17

    if-nez v17, :cond_1

    invoke-virtual {v4}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout$LayoutParams;

    const v17, 0x7f090034

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v17

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v5, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    goto/16 :goto_2

    :cond_12
    if-nez v8, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/TipsDialog;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/ime/framework/common/InputManager;->isChineseLanguageMode()Z

    move-result v17

    if-eqz v17, :cond_13

    invoke-virtual {v4}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout$LayoutParams;

    const v17, 0x7f090039

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v17

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v5, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    goto/16 :goto_2

    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/TipsDialog;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/ime/framework/common/InputManager;->isJapaneseLanguageMode()Z

    move-result v17

    if-eqz v17, :cond_14

    invoke-virtual {v4}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout$LayoutParams;

    const v17, 0x7f09003b

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v17

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v5, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    goto/16 :goto_2

    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/TipsDialog;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/ime/framework/common/InputManager;->isKorMode()Z

    move-result v17

    if-eqz v17, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/TipsDialog;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/ime/framework/inputmode/InputModeManager;->getInputRange()I

    move-result v17

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_15

    invoke-virtual {v4}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout$LayoutParams;

    const v17, 0x7f090038

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v17

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v5, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    goto/16 :goto_2

    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/TipsDialog;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/ime/framework/common/InputManager;->isKorMode()Z

    move-result v17

    if-eqz v17, :cond_1

    const/16 v17, 0x4

    move/from16 v0, v17

    if-eq v10, v0, :cond_16

    const/16 v17, 0x3

    move/from16 v0, v17

    if-ne v10, v0, :cond_1

    :cond_16
    invoke-virtual {v4}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout$LayoutParams;

    const v17, 0x7f090037

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v17

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v5, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    const v17, 0x7f090035

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v17

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v5, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    const v17, 0x7f090031

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v17

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v5, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    goto/16 :goto_2

    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/TipsDialog;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/ime/framework/common/InputManager;->isTalkbackEnabled()Z

    move-result v17

    if-eqz v17, :cond_1c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/TipsDialog;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/ime/framework/common/InputManager;->getSelectedLanguageList()[Lcom/ime/framework/common/Language;

    move-result-object v17

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_1c

    const/4 v9, 0x1

    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/TipsDialog;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/ime/framework/common/InputManager;->isTabletMode()Z

    move-result v17

    if-nez v17, :cond_1d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/TipsDialog;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v17, v0

    const v18, 0x7f030023

    const/16 v19, 0x0

    invoke-interface/range {v17 .. v19}, Lcom/ime/framework/common/InputManager;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v16

    :goto_8
    const v17, 0x7f100042

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    if-eqz v11, :cond_18

    invoke-virtual {v13, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_18
    invoke-static {}, Lcom/ime/framework/repository/EditorStatus;->isUrlInputType()Z

    move-result v17

    if-nez v17, :cond_19

    invoke-static {}, Lcom/ime/framework/repository/EditorStatus;->isEmailInputType()Z

    move-result v17

    if-eqz v17, :cond_1e

    :cond_19
    const/4 v15, 0x1

    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/TipsDialog;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/ime/framework/common/InputManager;->isKorMode()Z

    move-result v17

    if-eqz v17, :cond_28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/TipsDialog;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/ime/framework/common/InputManager;->isEnableOneHandKeypad()Z

    move-result v17

    if-eqz v17, :cond_22

    const/4 v12, 0x0

    const v17, 0x7f100044

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout$LayoutParams;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/TipsDialog;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/ime/framework/common/InputManager;->isOneHandKeypadRightSet()Z

    move-result v17

    if-eqz v17, :cond_1a

    const v17, 0x7f09003f

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    :cond_1a
    if-eqz v9, :cond_20

    if-eqz v15, :cond_1f

    const v17, 0x7f090042

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v17

    add-int v17, v17, v12

    move/from16 v0, v17

    iput v0, v5, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    :goto_a
    const v17, 0x7f09003e

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v17

    move/from16 v0, v17

    iput v0, v5, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    :cond_1b
    :goto_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/TipsDialog;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/ime/framework/common/InputManager;->getInputLanguage()I

    move-result v17

    invoke-static/range {v17 .. v17}, Lcom/ime/framework/util/Utils;->isIndianLanguage(I)Z

    move-result v17

    if-eqz v17, :cond_1

    const v17, 0x7f100044

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout$LayoutParams;

    const v17, 0x7f09001b

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v17

    move/from16 v0, v17

    iput v0, v5, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/TipsDialog;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/ime/framework/common/InputManager;->isTabletMode()Z

    move-result v17

    if-eqz v17, :cond_1

    const v17, 0x7f09001b

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v17

    move/from16 v0, v17

    iput v0, v5, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    goto/16 :goto_2

    :cond_1c
    const/4 v9, 0x0

    goto/16 :goto_7

    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/TipsDialog;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v17, v0

    const v18, 0x7f030024

    const/16 v19, 0x0

    invoke-interface/range {v17 .. v19}, Lcom/ime/framework/common/InputManager;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v16

    goto/16 :goto_8

    :cond_1e
    const/4 v15, 0x0

    goto/16 :goto_9

    :cond_1f
    const v17, 0x7f090041

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v17

    add-int v17, v17, v12

    move/from16 v0, v17

    iput v0, v5, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    goto :goto_a

    :cond_20
    if-eqz v15, :cond_21

    const v17, 0x7f090044

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v17

    add-int v17, v17, v12

    move/from16 v0, v17

    iput v0, v5, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    goto/16 :goto_a

    :cond_21
    const v17, 0x7f090045

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v17

    add-int v17, v17, v12

    move/from16 v0, v17

    iput v0, v5, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    goto/16 :goto_a

    :cond_22
    if-eqz v9, :cond_24

    const v17, 0x7f100044

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v15, :cond_23

    const v17, 0x7f090022

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v17

    move/from16 v0, v17

    iput v0, v5, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    :goto_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/TipsDialog;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/ime/framework/common/InputManager;->isOrientationLandscape()Z

    move-result v17

    if-eqz v17, :cond_1b

    invoke-virtual {v13}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroid/widget/RelativeLayout$LayoutParams;

    const v17, 0x7f09001f

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v17

    move/from16 v0, v17

    iput v0, v14, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_b

    :cond_23
    const v17, 0x7f090021

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v17

    move/from16 v0, v17

    iput v0, v5, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    goto :goto_c

    :cond_24
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/TipsDialog;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/ime/framework/common/InputManager;->getSelectedLanguageList()[Lcom/ime/framework/common/Language;

    move-result-object v17

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_26

    const v17, 0x7f100044

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v15, :cond_25

    const v17, 0x7f090023

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v17

    move/from16 v0, v17

    iput v0, v5, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    goto/16 :goto_b

    :cond_25
    const v17, 0x7f09001d

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v17

    move/from16 v0, v17

    iput v0, v5, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    goto/16 :goto_b

    :cond_26
    const v17, 0x7f100044

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v15, :cond_27

    const v17, 0x7f090024

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v17

    move/from16 v0, v17

    iput v0, v5, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    goto/16 :goto_b

    :cond_27
    const v17, 0x7f09001e

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v17

    move/from16 v0, v17

    iput v0, v5, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    goto/16 :goto_b

    :cond_28
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/TipsDialog;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/ime/framework/common/InputManager;->isEnableOneHandKeypad()Z

    move-result v17

    if-eqz v17, :cond_31

    const/4 v12, 0x0

    const v17, 0x7f100044

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout$LayoutParams;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/TipsDialog;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/ime/framework/common/InputManager;->isOneHandKeypadRightSet()Z

    move-result v17

    if-eqz v17, :cond_29

    const v17, 0x7f09003f

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    :cond_29
    if-eqz v9, :cond_2d

    if-eqz v15, :cond_2b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/TipsDialog;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/ime/framework/common/InputManager;->isJapaneseLanguageMode()Z

    move-result v17

    if-eqz v17, :cond_2a

    const v17, 0x7f090048

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v17

    add-int v17, v17, v12

    move/from16 v0, v17

    iput v0, v5, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    :goto_d
    const v17, 0x7f09003e

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v17

    move/from16 v0, v17

    iput v0, v5, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    goto/16 :goto_b

    :cond_2a
    const v17, 0x7f090042

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v17

    add-int v17, v17, v12

    move/from16 v0, v17

    iput v0, v5, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    goto :goto_d

    :cond_2b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/TipsDialog;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/ime/framework/common/InputManager;->isJapaneseLanguageMode()Z

    move-result v17

    if-eqz v17, :cond_2c

    const v17, 0x7f090047

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v17

    add-int v17, v17, v12

    move/from16 v0, v17

    iput v0, v5, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    goto :goto_d

    :cond_2c
    const v17, 0x7f090041

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v17

    add-int v17, v17, v12

    move/from16 v0, v17

    iput v0, v5, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    goto :goto_d

    :cond_2d
    if-eqz v15, :cond_2f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/TipsDialog;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/ime/framework/common/InputManager;->isJapaneseLanguageMode()Z

    move-result v17

    if-eqz v17, :cond_2e

    const v17, 0x7f090851

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v17

    add-int v17, v17, v12

    move/from16 v0, v17

    iput v0, v5, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    goto :goto_d

    :cond_2e
    const v17, 0x7f090043

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v17

    add-int v17, v17, v12

    move/from16 v0, v17

    iput v0, v5, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    goto :goto_d

    :cond_2f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/TipsDialog;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/ime/framework/common/InputManager;->isJapaneseLanguageMode()Z

    move-result v17

    if-eqz v17, :cond_30

    const v17, 0x7f090046

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v17

    add-int v17, v17, v12

    move/from16 v0, v17

    iput v0, v5, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    goto/16 :goto_d

    :cond_30
    const v17, 0x7f090040

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v17

    add-int v17, v17, v12

    move/from16 v0, v17

    iput v0, v5, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    goto/16 :goto_d

    :cond_31
    if-eqz v9, :cond_35

    const v17, 0x7f100044

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v15, :cond_33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/TipsDialog;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/ime/framework/common/InputManager;->isJapaneseLanguageMode()Z

    move-result v17

    if-eqz v17, :cond_32

    const v17, 0x7f09002b

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v17

    move/from16 v0, v17

    iput v0, v5, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    :goto_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/TipsDialog;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/ime/framework/common/InputManager;->isOrientationLandscape()Z

    move-result v17

    if-eqz v17, :cond_1b

    invoke-virtual {v13}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroid/widget/RelativeLayout$LayoutParams;

    const v17, 0x7f09001f

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v17

    move/from16 v0, v17

    iput v0, v14, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_b

    :cond_32
    const v17, 0x7f090022

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v17

    move/from16 v0, v17

    iput v0, v5, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    goto :goto_e

    :cond_33
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/TipsDialog;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/ime/framework/common/InputManager;->isJapaneseLanguageMode()Z

    move-result v17

    if-eqz v17, :cond_34

    const v17, 0x7f09002a

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v17

    move/from16 v0, v17

    iput v0, v5, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    goto :goto_e

    :cond_34
    const v17, 0x7f090021

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v17

    move/from16 v0, v17

    iput v0, v5, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    goto :goto_e

    :cond_35
    if-eqz v15, :cond_37

    const v17, 0x7f100044

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout$LayoutParams;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/TipsDialog;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/ime/framework/common/InputManager;->isJapaneseLanguageMode()Z

    move-result v17

    if-eqz v17, :cond_36

    const v17, 0x7f090029

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v17

    move/from16 v0, v17

    iput v0, v5, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    goto/16 :goto_b

    :cond_36
    const v17, 0x7f090023

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v17

    move/from16 v0, v17

    iput v0, v5, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    goto/16 :goto_b

    :cond_37
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/TipsDialog;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/ime/framework/common/InputManager;->isJapaneseLanguageMode()Z

    move-result v17

    if-eqz v17, :cond_1b

    const v17, 0x7f100044

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v17

    const-string v18, "CscFeature_Sip_AddCommaKeyAsDefault"

    invoke-virtual/range {v17 .. v18}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_38

    const v17, 0x7f090028

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v17

    move/from16 v0, v17

    iput v0, v5, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    goto/16 :goto_b

    :cond_38
    const v17, 0x7f090027

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v17

    move/from16 v0, v17

    iput v0, v5, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    goto/16 :goto_b

    :cond_39
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/TipsDialog;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/ime/framework/common/InputManager;->getKeyboardHeightLevel()I

    move-result v17

    const/16 v18, 0x4

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_3a

    iget v0, v5, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    move/from16 v17, v0

    const v18, 0x7f09002c

    move/from16 v0, v18

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v18

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    add-int v17, v17, v18

    move/from16 v0, v17

    iput v0, v5, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    goto/16 :goto_3

    :cond_3a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/TipsDialog;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/ime/framework/common/InputManager;->getKeyboardHeightLevel()I

    move-result v17

    const/16 v18, 0x3

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_3b

    iget v0, v5, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    move/from16 v17, v0

    const v18, 0x7f09002d

    move/from16 v0, v18

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v18

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    add-int v17, v17, v18

    move/from16 v0, v17

    iput v0, v5, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    goto/16 :goto_3

    :cond_3b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/TipsDialog;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/ime/framework/common/InputManager;->getKeyboardHeightLevel()I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_3c

    iget v0, v5, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    iget v0, v5, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    const/high16 v19, 0x40000000    # 2.0f

    div-float v19, v6, v19

    mul-float v18, v18, v19

    add-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v5, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iget v0, v5, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    move/from16 v17, v0

    const v18, 0x7f09002e

    move/from16 v0, v18

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v18

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    add-int v17, v17, v18

    move/from16 v0, v17

    iput v0, v5, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    goto/16 :goto_3

    :cond_3c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/TipsDialog;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/ime/framework/common/InputManager;->getKeyboardHeightLevel()I

    move-result v17

    if-nez v17, :cond_2

    iget v0, v5, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    iget v0, v5, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    const/high16 v19, 0x40000000    # 2.0f

    div-float v19, v6, v19

    mul-float v18, v18, v19

    add-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v5, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iget v0, v5, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    move/from16 v17, v0

    const v18, 0x7f09002f

    move/from16 v0, v18

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v18

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    add-int v17, v17, v18

    move/from16 v0, v17

    iput v0, v5, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    goto/16 :goto_3
.end method


# virtual methods
.method public closeDiscoverability()V
    .locals 1

    sget-object v0, Lcom/ime/framework/view/TipsDialog;->mDiscoverability:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/ime/framework/view/TipsDialog;->mDiscoverability:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/ime/framework/view/TipsDialog;->mDiscoverability:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_0
    return-void
.end method

.method public dismissAllDialog()V
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    iget-object v0, p0, Lcom/ime/framework/view/TipsDialog;->mAttentionDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ime/framework/view/TipsDialog;->mAttentionDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_1
    sget-object v0, Lcom/ime/framework/view/TipsDialog;->mDiscoverability:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/ime/framework/view/TipsDialog;->closeDiscoverability()V

    :cond_2
    return-void
.end method

.method protected getOnDismissListener(Z)Landroid/content/DialogInterface$OnDismissListener;
    .locals 1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/ime/framework/view/TipsDialog;->mOnLanguageDialogDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    if-nez v0, :cond_0

    new-instance v0, Lcom/ime/framework/view/TipsDialog$74;

    invoke-direct {v0, p0}, Lcom/ime/framework/view/TipsDialog$74;-><init>(Lcom/ime/framework/view/TipsDialog;)V

    iput-object v0, p0, Lcom/ime/framework/view/TipsDialog;->mOnLanguageDialogDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    :cond_0
    iget-object v0, p0, Lcom/ime/framework/view/TipsDialog;->mOnLanguageDialogDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/ime/framework/view/TipsDialog;->mOnDialogDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    if-nez v0, :cond_2

    new-instance v0, Lcom/ime/framework/view/TipsDialog$75;

    invoke-direct {v0, p0}, Lcom/ime/framework/view/TipsDialog$75;-><init>(Lcom/ime/framework/view/TipsDialog;)V

    iput-object v0, p0, Lcom/ime/framework/view/TipsDialog;->mOnDialogDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    :cond_2
    iget-object v0, p0, Lcom/ime/framework/view/TipsDialog;->mOnDialogDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    goto :goto_0
.end method

.method protected getSelectedLanguageNames()[Ljava/lang/String;
    .locals 5

    iget-object v3, p0, Lcom/ime/framework/view/TipsDialog;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/ime/framework/common/InputManager;->getSelectedLanguageList()[Lcom/ime/framework/common/Language;

    move-result-object v2

    if-eqz v2, :cond_0

    array-length v3, v2

    if-lez v3, :cond_0

    array-length v3, v2

    new-array v1, v3, [Ljava/lang/String;

    const/4 v0, 0x0

    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_1

    aget-object v3, v2, v0

    invoke-virtual {v3}, Lcom/ime/framework/common/Language;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x1

    new-array v1, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "English"

    aput-object v4, v1, v3

    :cond_1
    return-object v1
.end method

.method public getSystemStatusBarHeight()I
    .locals 6

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/ime/framework/view/TipsDialog;->mInputManager:Lcom/ime/framework/common/InputManager;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/ime/framework/view/TipsDialog;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/ime/framework/common/InputManager;->getIWindowManager()Landroid/view/IWindowManager;

    move-result-object v2

    :try_start_0
    invoke-static {v2}, Lcom/ime/framework/util/Utils;->isStatusBarShowing(Landroid/view/IWindowManager;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/ime/framework/view/TipsDialog;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/ime/framework/util/Utils;->getSystemStatusBarHeight(Landroid/content/Context;)I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    :cond_0
    :goto_0
    return v3

    :catch_0
    move-exception v1

    const-string v4, "SamsungIME"

    const-string v5, "getSystemStatusBarHeight - NotFoundException"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v4, "SamsungIME"

    const-string v5, "getSystemStatusBarHeight - RemoteException"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public isAttentionPopupShowing()Z
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/view/TipsDialog;->mAttentionDialog:Landroid/app/AlertDialog;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/ime/framework/view/TipsDialog;->mAttentionDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    goto :goto_0
.end method

.method public isDiscoverabilityShown()Z
    .locals 1

    sget-object v0, Lcom/ime/framework/view/TipsDialog;->mDiscoverability:Landroid/widget/PopupWindow;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/ime/framework/view/TipsDialog;->mDiscoverability:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    goto :goto_0
.end method

.method public showAllowAppPermissionDialog(Landroid/view/View;)V
    .locals 25

    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/ime/framework/view/AbstractKeyboardView;

    move/from16 v21, v0

    if-eqz v21, :cond_1

    check-cast p1, Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/ime/framework/view/AbstractKeyboardView;->getAllowAppPermissionGuideLayoutRscId()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/ime/framework/view/AbstractKeyboardView;->getAllowAppPermissionGuideDialogTitle()Ljava/lang/String;

    move-result-object v4

    if-eqz v5, :cond_0

    if-nez v4, :cond_2

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v21, "SamsungIME"

    const-string v22, "[showSwiftkeyGuideDialog] Bad object casting. the mCurrentView is not a instanceof AbstractKeyboardView "

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    new-instance v3, Landroid/app/AlertDialog$Builder;

    new-instance v21, Landroid/view/ContextThemeWrapper;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/TipsDialog;->context:Landroid/content/Context;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/ime/framework/view/AbstractKeyboardView;->getDialogTheme()I

    move-result v23

    invoke-direct/range {v21 .. v23}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    move-object/from16 v0, v21

    invoke-direct {v3, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/16 v21, 0x1

    move/from16 v0, v21

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/ime/framework/view/AbstractKeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f0d0169

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v21

    const-string v22, "%s"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/ime/framework/view/AbstractKeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f0d0008

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v21 .. v23}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/ime/framework/view/AbstractKeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f0d016b

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/ime/framework/view/AbstractKeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f0d016c

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/ime/framework/view/AbstractKeyboardView;->getContext()Landroid/content/Context;

    move-result-object v21

    const-string v22, "layout_inflater"

    invoke-virtual/range {v21 .. v22}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/view/LayoutInflater;

    const/16 v21, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v15, v5, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v14

    const v21, 0x7f10000c

    move/from16 v0, v21

    invoke-virtual {v14, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/TipsDialog;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Lcom/ime/framework/common/InputManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v13

    const v21, 0x7f10000d

    move/from16 v0, v21

    invoke-virtual {v14, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/CheckBox;

    const-string v21, "allow_app_permission_checkbox"

    const/16 v22, 0x1

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    invoke-virtual {v8, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "\n\n - "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "\n - "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v3, v14}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const/16 v21, 0x1

    move/from16 v0, v21

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    const v21, 0x104000a

    new-instance v22, Lcom/ime/framework/view/TipsDialog$8;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v13, v8}, Lcom/ime/framework/view/TipsDialog$8;-><init>(Lcom/ime/framework/view/TipsDialog;Landroid/content/SharedPreferences$Editor;Landroid/widget/CheckBox;)V

    move/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v3, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/high16 v21, 0x1040000

    new-instance v22, Lcom/ime/framework/view/TipsDialog$9;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v13, v8}, Lcom/ime/framework/view/TipsDialog$9;-><init>(Lcom/ime/framework/view/TipsDialog;Landroid/content/SharedPreferences$Editor;Landroid/widget/CheckBox;)V

    move/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v3, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v21, Lcom/ime/framework/view/TipsDialog$10;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/ime/framework/view/TipsDialog$10;-><init>(Lcom/ime/framework/view/TipsDialog;)V

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ime/framework/view/TipsDialog;->mAttentionDialog:Landroid/app/AlertDialog;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/TipsDialog;->mAttentionDialog:Landroid/app/AlertDialog;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/ime/framework/view/TipsDialog;->getOnDismissListener(Z)Landroid/content/DialogInterface$OnDismissListener;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/TipsDialog;->mAttentionDialog:Landroid/app/AlertDialog;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/TipsDialog;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ime/framework/view/TipsDialog;->mCurrentInputMethod:I

    const/16 v21, 0x2

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    const/high16 v21, 0x3f000000    # 0.5f

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/Window;->setDimAmount(F)V

    invoke-virtual/range {v19 .. v19}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ime/framework/view/TipsDialog;->mCurrentInputMethod:I

    move/from16 v21, v0

    const/16 v22, 0x7

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ime/framework/view/TipsDialog;->mCurrentInputMethod:I

    move/from16 v21, v0

    const/16 v22, 0x8

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_6

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/TipsDialog;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Lcom/ime/framework/common/InputManager;->getPopupKeyboardView()Lcom/ime/framework/view/PopupKeyboardView;

    move-result-object v17

    if-eqz v17, :cond_4

    invoke-virtual/range {v17 .. v17}, Lcom/ime/framework/view/PopupKeyboardView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v6

    if-eqz v6, :cond_0

    move-object/from16 v0, v20

    iput-object v6, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    :cond_4
    :goto_1
    const/16 v21, 0x3eb

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v21, -0x2

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/TipsDialog;->mAttentionDialog:Landroid/app/AlertDialog;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/app/AlertDialog;->show()V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/TipsDialog;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/TipsDialog;->mAttentionDialog:Landroid/app/AlertDialog;

    move-object/from16 v22, v0

    invoke-interface/range {v21 .. v22}, Lcom/ime/framework/common/InputManager;->setPopupDialog(Landroid/app/Dialog;)V

    goto/16 :goto_0

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/ime/framework/view/AbstractKeyboardView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v6

    if-eqz v6, :cond_0

    move-object/from16 v0, v20

    iput-object v6, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    goto :goto_1

    :catch_0
    move-exception v12

    sget-boolean v21, Lcom/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v21, :cond_5

    invoke-virtual {v12}, Landroid/view/WindowManager$BadTokenException;->printStackTrace()V

    goto :goto_2
.end method

.method public showDiscoverability(ILandroid/view/View;Landroid/view/View;)V
    .locals 10

    const/4 v7, -0x1

    const/4 v9, 0x1

    const/4 v8, 0x0

    iget-object v5, p0, Lcom/ime/framework/view/TipsDialog;->mFontManager:Lcom/ime/framework/common/FontManager;

    if-nez v5, :cond_0

    invoke-static {}, Lcom/ime/framework/common/FontManagerImpl;->getInstance()Lcom/ime/framework/common/FontManager;

    move-result-object v5

    iput-object v5, p0, Lcom/ime/framework/view/TipsDialog;->mFontManager:Lcom/ime/framework/common/FontManager;

    :cond_0
    iget-object v5, p0, Lcom/ime/framework/view/TipsDialog;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v5}, Lcom/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v5

    iput v5, p0, Lcom/ime/framework/view/TipsDialog;->mCurrentInputMethod:I

    instance-of v5, p3, Lcom/ime/framework/view/AbstractKeyboardView;

    if-eqz v5, :cond_2

    move-object v5, p3

    check-cast v5, Lcom/ime/framework/view/AbstractKeyboardView;

    iput-object v5, p0, Lcom/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/ime/framework/view/AbstractKeyboardView;

    iget-object v5, p0, Lcom/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v5}, Lcom/ime/framework/view/AbstractKeyboardView;->releaseAllKeyPressed()V

    :goto_0
    iget-object v5, p0, Lcom/ime/framework/view/TipsDialog;->context:Landroid/content/Context;

    if-nez v5, :cond_4

    :cond_1
    :goto_1
    return-void

    :cond_2
    if-nez p3, :cond_3

    const-string v5, "SamsungIME"

    const-string v6, "[showDiscoverability] this is auto replacement discoverity popup"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    const-string v5, "SamsungIME"

    const-string v6, "[showDiscoverability] Bad object casting. the mCurrentView is not a instanceof AbstractKeyboardView "

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    invoke-static {}, Lcom/ime/framework/view/TipsDialog;->getInstancePopup()Landroid/widget/PopupWindow;

    move-result-object v5

    sput-object v5, Lcom/ime/framework/view/TipsDialog;->mDiscoverability:Landroid/widget/PopupWindow;

    sget-object v5, Lcom/ime/framework/view/TipsDialog;->mDiscoverability:Landroid/widget/PopupWindow;

    invoke-virtual {v5, v9}, Landroid/widget/PopupWindow;->setLayoutInScreenEnabled(Z)V

    iget-object v5, p0, Lcom/ime/framework/view/TipsDialog;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/ime/framework/common/InputManager;->isPopupInputMethod()Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/ime/framework/view/TipsDialog;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/ime/framework/common/InputManager;->isEnabledMagnification()Z

    move-result v5

    if-nez v5, :cond_1

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/ime/framework/view/TipsDialog;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/ime/framework/common/InputManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const/16 v5, 0x20

    if-ne p1, v5, :cond_5

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v5

    if-nez v5, :cond_6

    :cond_5
    if-nez p1, :cond_b

    if-eqz p2, :cond_b

    :cond_6
    const-string v5, "first_auto_replacement_tap_execution"

    invoke-interface {v2, v5, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_b

    if-nez p2, :cond_a

    invoke-direct {p0, p3}, Lcom/ime/framework/view/TipsDialog;->showDiscoverabilityForAutoCorrect(Landroid/view/View;)Landroid/view/View;

    move-result-object v4

    :goto_2
    const-string v5, "first_auto_replacement_tap_execution"

    invoke-interface {v0, v5, v8}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :goto_3
    if-eqz v4, :cond_8

    sget-object v5, Lcom/ime/framework/view/TipsDialog;->mDiscoverability:Landroid/widget/PopupWindow;

    invoke-virtual {v5, v4}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    sget-object v5, Lcom/ime/framework/view/TipsDialog;->mDiscoverability:Landroid/widget/PopupWindow;

    const/16 v6, 0x7d8

    invoke-virtual {v5, v6}, Landroid/widget/PopupWindow;->setWindowLayoutType(I)V

    sget-object v5, Lcom/ime/framework/view/TipsDialog;->mDiscoverability:Landroid/widget/PopupWindow;

    invoke-virtual {v5, v7}, Landroid/widget/PopupWindow;->setHeight(I)V

    sget-object v5, Lcom/ime/framework/view/TipsDialog;->mDiscoverability:Landroid/widget/PopupWindow;

    invoke-virtual {v5, v7}, Landroid/widget/PopupWindow;->setWidth(I)V

    const v5, 0x7f100042

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    if-eqz v3, :cond_7

    iget-object v5, p0, Lcom/ime/framework/view/TipsDialog;->mFontManager:Lcom/ime/framework/common/FontManager;

    const-string v6, "SEC_ROBOTO_LIGHT_REGULAR"

    sget-object v7, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-interface {v5, v6, v7}, Lcom/ime/framework/common/FontManager;->getFont(Ljava/lang/String;Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_7
    const v5, 0x7f10000e

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iget-object v5, p0, Lcom/ime/framework/view/TipsDialog;->mFontManager:Lcom/ime/framework/common/FontManager;

    const-string v6, "ROBOTO_REGULAR"

    sget-object v7, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-interface {v5, v6, v7}, Lcom/ime/framework/common/FontManager;->getFont(Ljava/lang/String;Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    new-instance v5, Lcom/ime/framework/view/TipsDialog$72;

    invoke-direct {v5, p0, p1}, Lcom/ime/framework/view/TipsDialog$72;-><init>(Lcom/ime/framework/view/TipsDialog;I)V

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_8
    iget-object v5, p0, Lcom/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/ime/framework/view/AbstractKeyboardView;

    if-eqz v5, :cond_9

    iget-object v5, p0, Lcom/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v5}, Lcom/ime/framework/view/AbstractKeyboardView;->dismissPopupKeyboard()V

    :cond_9
    sget-object v5, Lcom/ime/framework/view/TipsDialog;->mDiscoverability:Landroid/widget/PopupWindow;

    new-instance v6, Lcom/ime/framework/view/TipsDialog$73;

    invoke-direct {v6, p0}, Lcom/ime/framework/view/TipsDialog$73;-><init>(Lcom/ime/framework/view/TipsDialog;)V

    invoke-virtual {v5, v6}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    iget-object v5, p0, Lcom/ime/framework/view/TipsDialog;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v6, "IS_POPUP_SHOW"

    invoke-interface {v5, v6, v9}, Lcom/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    sget-object v5, Lcom/ime/framework/view/TipsDialog;->mDiscoverability:Landroid/widget/PopupWindow;

    iget-object v6, p0, Lcom/ime/framework/view/TipsDialog;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v6, v8}, Lcom/ime/framework/common/InputManager;->getInputView(Z)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v5, v6, v8, v8, v8}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto/16 :goto_1

    :cond_a
    invoke-direct {p0, p2}, Lcom/ime/framework/view/TipsDialog;->showDiscoverabilityForAutoCorrect(Landroid/view/View;)Landroid/view/View;

    move-result-object v4

    goto/16 :goto_2

    :cond_b
    const/16 v5, -0x75

    if-ne p1, v5, :cond_1

    invoke-direct {p0}, Lcom/ime/framework/view/TipsDialog;->showDiscoverabilityForMMKey()Landroid/view/View;

    move-result-object v4

    const-string v5, "first_mmkey_popup_help_execution"

    invoke-interface {v0, v5, v8}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_3
.end method

.method public showEmptyShortcutsGuideDialog(Landroid/view/View;)V
    .locals 19

    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/ime/framework/view/AbstractKeyboardView;

    move/from16 v16, v0

    if-eqz v16, :cond_1

    check-cast p1, Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/TipsDialog;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v16

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ime/framework/view/TipsDialog;->mCurrentInputMethod:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/TipsDialog;->context:Landroid/content/Context;

    move-object/from16 v16, v0

    if-nez v16, :cond_2

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v16, "SamsungIME"

    const-string v17, "[showEmptyShortcutsGuideDialog] Bad object casting. the mCurrentView is not a instanceof AbstractKeyboardView "

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    move-object/from16 v16, v0

    if-eqz v16, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    move-object/from16 v16, v0

    if-eqz v16, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v16

    if-nez v16, :cond_0

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/ime/framework/view/AbstractKeyboardView;->getEmptyShortcutsGuideLayoutRscId()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/ime/framework/view/AbstractKeyboardView;->getEmptyShortcutsGuideCheckBoxRscId()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/ime/framework/view/AbstractKeyboardView;->getEmptyShortcutsGuideDialogTitle()Ljava/lang/String;

    move-result-object v4

    if-eqz v5, :cond_0

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/TipsDialog;->mRepository:Lcom/ime/framework/repository/Repository;

    move-object/from16 v16, v0

    const-string v17, "IS_POPUP_SHOW"

    const/16 v18, 0x1

    invoke-interface/range {v16 .. v18}, Lcom/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/TipsDialog;->mRepository:Lcom/ime/framework/repository/Repository;

    move-object/from16 v16, v0

    const-string v17, "IS_SHORTCUT_GUIDE_POPUP_SHOW"

    const/16 v18, 0x1

    invoke-interface/range {v16 .. v18}, Lcom/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/TipsDialog;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Lcom/ime/framework/common/InputManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v13

    const-string v16, "first_empty_shortcuts_guide_execution"

    const/16 v17, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-interface {v13, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v16

    if-nez v16, :cond_6

    const/16 v16, 0x1

    :goto_1
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/ime/framework/view/TipsDialog;->mIsCheckDontShowEmptyShortcutsGuide:Z

    new-instance v2, Landroid/app/AlertDialog$Builder;

    new-instance v16, Landroid/view/ContextThemeWrapper;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/TipsDialog;->context:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/ime/framework/view/AbstractKeyboardView;->getDialogTheme()I

    move-result v18

    invoke-direct/range {v16 .. v18}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    move-object/from16 v0, v16

    invoke-direct {v2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/ime/framework/view/AbstractKeyboardView;->getContext()Landroid/content/Context;

    move-result-object v16

    const-string v17, "layout_inflater"

    invoke-virtual/range {v16 .. v17}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/LayoutInflater;

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v12, v5, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/ime/framework/view/AbstractKeyboardView;->getEmptyShortcutsGuideDialogContent()Ljava/lang/String;

    move-result-object v11

    const v16, 0x7f100077

    move/from16 v0, v16

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v10}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v16, 0x104000a

    new-instance v17, Lcom/ime/framework/view/TipsDialog$66;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/ime/framework/view/TipsDialog$66;-><init>(Lcom/ime/framework/view/TipsDialog;)V

    move/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v2, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v10, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/CheckBox;

    if-eqz v7, :cond_4

    new-instance v16, Lcom/ime/framework/view/TipsDialog$67;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v7}, Lcom/ime/framework/view/TipsDialog$67;-><init>(Lcom/ime/framework/view/TipsDialog;Landroid/widget/CheckBox;)V

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    new-instance v16, Lcom/ime/framework/view/TipsDialog$68;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/ime/framework/view/TipsDialog$68;-><init>(Lcom/ime/framework/view/TipsDialog;)V

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    move-object/from16 v16, v0

    new-instance v17, Lcom/ime/framework/view/TipsDialog$69;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/ime/framework/view/TipsDialog$69;-><init>(Lcom/ime/framework/view/TipsDialog;)V

    invoke-virtual/range {v16 .. v17}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v14

    const/16 v16, 0x2

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/view/Window;->addFlags(I)V

    const/high16 v16, 0x3f000000    # 0.5f

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/view/Window;->setDimAmount(F)V

    invoke-virtual {v14}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ime/framework/view/TipsDialog;->mCurrentInputMethod:I

    move/from16 v16, v0

    const/16 v17, 0x7

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ime/framework/view/TipsDialog;->mCurrentInputMethod:I

    move/from16 v16, v0

    const/16 v17, 0x8

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_7

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/TipsDialog;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Lcom/ime/framework/common/InputManager;->getPopupKeyboardView()Lcom/ime/framework/view/PopupKeyboardView;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/ime/framework/view/PopupKeyboardView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v6

    if-eqz v6, :cond_0

    iput-object v6, v15, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    :goto_2
    const/16 v16, 0x3eb

    move/from16 v0, v16

    iput v0, v15, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v16, -0x2

    move/from16 v0, v16

    iput v0, v15, Landroid/view/WindowManager$LayoutParams;->width:I

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/app/AlertDialog;->show()V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v9

    sget-boolean v16, Lcom/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v16, :cond_0

    invoke-virtual {v9}, Landroid/view/WindowManager$BadTokenException;->printStackTrace()V

    goto/16 :goto_0

    :cond_6
    const/16 v16, 0x0

    goto/16 :goto_1

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/ime/framework/view/AbstractKeyboardView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v6

    if-eqz v6, :cond_0

    iput-object v6, v15, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    goto :goto_2
.end method

.method public showHalfFullWidthSwitchDialog(Landroid/view/View;)V
    .locals 13

    iget-object v10, p0, Lcom/ime/framework/view/TipsDialog;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v10}, Lcom/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v2

    instance-of v10, p1, Lcom/ime/framework/view/AbstractKeyboardView;

    if-eqz v10, :cond_1

    check-cast p1, Lcom/ime/framework/view/AbstractKeyboardView;

    iput-object p1, p0, Lcom/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/ime/framework/view/AbstractKeyboardView;

    if-nez v2, :cond_2

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v10, "SamsungIME"

    const-string v11, "[showHalfFullWidthSwitchDialog] Bad object casting. the mCurrentView is not a instanceof AbstractKeyboardView "

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-object v10, p0, Lcom/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v10}, Lcom/ime/framework/view/AbstractKeyboardView;->removeAllMsg()V

    iget-object v10, p0, Lcom/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v10}, Lcom/ime/framework/view/AbstractKeyboardView;->dismissPopupKeyboard()V

    iget-object v10, p0, Lcom/ime/framework/view/TipsDialog;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v11, "IS_POPUP_SHOW"

    const/4 v12, 0x1

    invoke-interface {v10, v11, v12}, Lcom/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    iget-object v10, p0, Lcom/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v10}, Lcom/ime/framework/view/AbstractKeyboardView;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    iget-object v10, p0, Lcom/ime/framework/view/TipsDialog;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v10}, Lcom/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v10

    iput v10, p0, Lcom/ime/framework/view/TipsDialog;->mCurrentInputMethod:I

    new-instance v0, Landroid/app/AlertDialog$Builder;

    new-instance v10, Landroid/view/ContextThemeWrapper;

    iget-object v11, p0, Lcom/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v11}, Lcom/ime/framework/view/AbstractKeyboardView;->getDialogTheme()I

    move-result v11

    invoke-direct {v10, v2, v11}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v10}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v10, 0x1

    invoke-virtual {v0, v10}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    const v10, 0x7f0d0154

    const/4 v11, 0x0

    invoke-virtual {v0, v10, v11}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v10, p0, Lcom/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v10}, Lcom/ime/framework/view/AbstractKeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0d0292

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v10, p0, Lcom/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v10}, Lcom/ime/framework/view/AbstractKeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0d0293

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v10, 0x2

    new-array v6, v10, [Ljava/lang/CharSequence;

    const/4 v10, 0x0

    aput-object v5, v6, v10

    const/4 v10, 0x1

    aput-object v4, v6, v10

    iget-object v10, p0, Lcom/ime/framework/view/TipsDialog;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v10}, Lcom/ime/framework/common/InputManager;->isFullWidthMode()Z

    move-result v10

    if-nez v10, :cond_5

    const/4 v10, 0x0

    :goto_1
    new-instance v11, Lcom/ime/framework/view/TipsDialog$71;

    invoke-direct {v11, p0}, Lcom/ime/framework/view/TipsDialog$71;-><init>(Lcom/ime/framework/view/TipsDialog;)V

    invoke-virtual {v0, v6, v10, v11}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v10, p0, Lcom/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v10}, Lcom/ime/framework/view/AbstractKeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0d0291

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Lcom/ime/framework/view/TipsDialog;->getOnDismissListener(Z)Landroid/content/DialogInterface$OnDismissListener;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v7}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v9

    iget v10, p0, Lcom/ime/framework/view/TipsDialog;->mCurrentInputMethod:I

    const/4 v11, 0x7

    if-eq v10, v11, :cond_3

    iget v10, p0, Lcom/ime/framework/view/TipsDialog;->mCurrentInputMethod:I

    const/16 v11, 0x8

    if-ne v10, v11, :cond_6

    :cond_3
    iget-object v10, p0, Lcom/ime/framework/view/TipsDialog;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v10}, Lcom/ime/framework/common/InputManager;->getPopupKeyboardView()Lcom/ime/framework/view/PopupKeyboardView;

    move-result-object v10

    invoke-virtual {v10}, Lcom/ime/framework/view/PopupKeyboardView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_0

    iput-object v1, v9, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    :goto_2
    const/16 v10, 0x3eb

    iput v10, v9, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v10, -0x2

    iput v10, v9, Landroid/view/WindowManager$LayoutParams;->width:I

    const/high16 v10, 0x3f000000    # 0.5f

    iput v10, v9, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    invoke-virtual {v8, v9}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    const/4 v10, 0x2

    invoke-virtual {v8, v10}, Landroid/view/Window;->addFlags(I)V

    :try_start_0
    invoke-virtual {v7}, Landroid/app/AlertDialog;->show()V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    :goto_3
    iget-object v10, p0, Lcom/ime/framework/view/TipsDialog;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v10, v7}, Lcom/ime/framework/common/InputManager;->setPopupDialog(Landroid/app/Dialog;)V

    goto/16 :goto_0

    :cond_5
    const/4 v10, 0x1

    goto :goto_1

    :cond_6
    iget-object v10, p0, Lcom/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v10}, Lcom/ime/framework/view/AbstractKeyboardView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_0

    iput-object v1, v9, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    goto :goto_2

    :catch_0
    move-exception v3

    sget-boolean v10, Lcom/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v10, :cond_4

    invoke-virtual {v3}, Landroid/view/WindowManager$BadTokenException;->printStackTrace()V

    goto :goto_3
.end method

.method public showLanguageSelectDialog(Landroid/view/View;)V
    .locals 10

    const/4 v9, 0x1

    iget-object v6, p0, Lcom/ime/framework/view/TipsDialog;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v6}, Lcom/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v6

    iput v6, p0, Lcom/ime/framework/view/TipsDialog;->mCurrentInputMethod:I

    instance-of v6, p1, Lcom/ime/framework/view/AbstractKeyboardView;

    if-eqz v6, :cond_2

    check-cast p1, Lcom/ime/framework/view/AbstractKeyboardView;

    iput-object p1, p0, Lcom/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/ime/framework/view/AbstractKeyboardView;

    iget-object v6, p0, Lcom/ime/framework/view/TipsDialog;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v7, "IS_POPUP_SHOW"

    invoke-interface {v6, v7, v9}, Lcom/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    new-instance v0, Landroid/app/AlertDialog$Builder;

    new-instance v6, Landroid/view/ContextThemeWrapper;

    iget-object v7, p0, Lcom/ime/framework/view/TipsDialog;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v7

    iget-object v8, p0, Lcom/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v8}, Lcom/ime/framework/view/AbstractKeyboardView;->getDialogTheme()I

    move-result v8

    invoke-direct {v6, v7, v8}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v9}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    const/high16 v6, 0x1040000

    new-instance v7, Lcom/ime/framework/view/TipsDialog$70;

    invoke-direct {v7, p0}, Lcom/ime/framework/view/TipsDialog$70;-><init>(Lcom/ime/framework/view/TipsDialog;)V

    invoke-virtual {v0, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/4 v3, 0x0

    iget-object v6, p0, Lcom/ime/framework/view/TipsDialog;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/ime/framework/common/InputManager;->isDragonVoiceMode()Z

    move-result v6

    if-eqz v6, :cond_3

    new-instance v3, Lcom/ime/framework/view/TipsDialog$1DragonVoiceLanguageClickListener;

    invoke-direct {v3, p0}, Lcom/ime/framework/view/TipsDialog$1DragonVoiceLanguageClickListener;-><init>(Lcom/ime/framework/view/TipsDialog;)V

    :goto_0
    invoke-virtual {p0}, Lcom/ime/framework/view/TipsDialog;->getSelectedLanguageNames()[Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v7}, Lcom/ime/framework/view/AbstractKeyboardView;->getLanguageIndexOfSupportedThings()I

    move-result v7

    invoke-virtual {v0, v6, v7, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v6}, Lcom/ime/framework/view/AbstractKeyboardView;->getLanguageSelectDialogTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    iput-object v6, p0, Lcom/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    iget-object v6, p0, Lcom/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0, v9}, Lcom/ime/framework/view/TipsDialog;->getOnDismissListener(Z)Landroid/content/DialogInterface$OnDismissListener;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v6, p0, Lcom/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/4 v2, 0x2

    invoke-virtual {v4, v2}, Landroid/view/Window;->addFlags(I)V

    const/high16 v6, 0x3f000000    # 0.5f

    invoke-virtual {v4, v6}, Landroid/view/Window;->setDimAmount(F)V

    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    iget v6, p0, Lcom/ime/framework/view/TipsDialog;->mCurrentInputMethod:I

    const/4 v7, 0x7

    if-eq v6, v7, :cond_0

    iget v6, p0, Lcom/ime/framework/view/TipsDialog;->mCurrentInputMethod:I

    const/16 v7, 0x8

    if-ne v6, v7, :cond_4

    :cond_0
    iget-object v6, p0, Lcom/ime/framework/view/TipsDialog;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/ime/framework/common/InputManager;->getPopupKeyboardView()Lcom/ime/framework/view/PopupKeyboardView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/ime/framework/view/PopupKeyboardView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v6

    iput-object v6, v5, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    :goto_1
    const/16 v6, 0x3eb

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->type:I

    :try_start_0
    iget-object v6, p0, Lcom/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->show()V

    iget-object v6, p0, Lcom/ime/framework/view/TipsDialog;->mInputManager:Lcom/ime/framework/common/InputManager;

    const/4 v7, 0x1

    invoke-interface {v6, v7}, Lcom/ime/framework/common/InputManager;->setLangPopupShown(Z)V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_2
    return-void

    :cond_2
    const-string v6, "SamsungIME"

    const-string v7, "[showLanguageSelectDialog] Bad object casting. the mCurrentView is not a instanceof AbstractKeyboardView "

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_3
    new-instance v3, Lcom/ime/framework/view/TipsDialog$1KeyboardLanguageClickListener;

    invoke-direct {v3, p0}, Lcom/ime/framework/view/TipsDialog$1KeyboardLanguageClickListener;-><init>(Lcom/ime/framework/view/TipsDialog;)V

    goto :goto_0

    :cond_4
    iget-object v6, p0, Lcom/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v6}, Lcom/ime/framework/view/AbstractKeyboardView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v6

    iput-object v6, v5, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    goto :goto_1

    :catch_0
    move-exception v1

    sget-boolean v6, Lcom/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v6, :cond_1

    invoke-virtual {v1}, Landroid/view/WindowManager$BadTokenException;->printStackTrace()V

    goto :goto_2
.end method

.method public showOneHandedGuideDialog(Landroid/view/View;)V
    .locals 20

    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/ime/framework/view/AbstractKeyboardView;

    move/from16 v16, v0

    if-eqz v16, :cond_1

    check-cast p1, Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/TipsDialog;->context:Landroid/content/Context;

    move-object/from16 v16, v0

    if-nez v16, :cond_2

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v16, "SamsungIME"

    const-string v17, "[showOneHandedGuideDialog] Bad object casting. the mCurrentView is not a instanceof AbstractKeyboardView "

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/TipsDialog;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Lcom/ime/framework/common/InputManager;->isTipsPopup()Z

    move-result v16

    if-nez v16, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    move-object/from16 v16, v0

    if-eqz v16, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    move-object/from16 v16, v0

    if-eqz v16, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v16

    if-nez v16, :cond_0

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/ime/framework/view/AbstractKeyboardView;->getOneHandedGuideLayoutRscId()I

    move-result v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/ime/framework/view/AbstractKeyboardView;->getOneHandedGuideCheckBoxRscId()I

    move-result v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/ime/framework/view/AbstractKeyboardView;->getOneHandGuideAnimationDrawbleRscId()I

    move-result v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/ime/framework/view/AbstractKeyboardView;->getOneHandedGuideDialogTitle()Ljava/lang/String;

    move-result-object v10

    if-eqz v9, :cond_0

    if-eqz v10, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/TipsDialog;->mRepository:Lcom/ime/framework/repository/Repository;

    move-object/from16 v16, v0

    const-string v17, "IS_POPUP_SHOW"

    const/16 v18, 0x1

    invoke-interface/range {v16 .. v18}, Lcom/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/TipsDialog;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Lcom/ime/framework/common/InputManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v13

    const-string v16, "first_one_handed_execution"

    const/16 v17, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-interface {v13, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v16

    if-nez v16, :cond_7

    const/16 v16, 0x1

    :goto_1
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/ime/framework/view/TipsDialog;->mIsCheckDontShowOneHandedGuide:Z

    new-instance v2, Landroid/app/AlertDialog$Builder;

    new-instance v16, Landroid/view/ContextThemeWrapper;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/TipsDialog;->context:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/ime/framework/view/AbstractKeyboardView;->getDialogTheme()I

    move-result v18

    invoke-direct/range {v16 .. v18}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    move-object/from16 v0, v16

    invoke-direct {v2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/ime/framework/view/AbstractKeyboardView;->getContext()Landroid/content/Context;

    move-result-object v16

    const-string v17, "layout_inflater"

    invoke-virtual/range {v16 .. v17}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/LayoutInflater;

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v8, v12, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v6, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v16

    check-cast v16, Landroid/graphics/drawable/AnimationDrawable;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ime/framework/view/TipsDialog;->mOneHandedTutorialAnimationDrawble:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v2, v10}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v16, 0x104000a

    new-instance v17, Lcom/ime/framework/view/TipsDialog$13;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/ime/framework/view/TipsDialog$13;-><init>(Lcom/ime/framework/view/TipsDialog;)V

    move/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v2, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v6, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    if-eqz v4, :cond_4

    new-instance v16, Lcom/ime/framework/view/TipsDialog$14;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v4}, Lcom/ime/framework/view/TipsDialog$14;-><init>(Lcom/ime/framework/view/TipsDialog;Landroid/widget/CheckBox;)V

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    new-instance v16, Lcom/ime/framework/view/TipsDialog$15;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/ime/framework/view/TipsDialog$15;-><init>(Lcom/ime/framework/view/TipsDialog;)V

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/ime/framework/view/TipsDialog;->getOnDismissListener(Z)Landroid/content/DialogInterface$OnDismissListener;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v14

    invoke-virtual {v14}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v15

    const/16 v16, 0x2

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/view/Window;->addFlags(I)V

    const/high16 v16, 0x3f000000    # 0.5f

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/view/Window;->setDimAmount(F)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ime/framework/view/TipsDialog;->mCurrentInputMethod:I

    move/from16 v16, v0

    const/16 v17, 0x7

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ime/framework/view/TipsDialog;->mCurrentInputMethod:I

    move/from16 v16, v0

    const/16 v17, 0x8

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_8

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/TipsDialog;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Lcom/ime/framework/common/InputManager;->getPopupKeyboardView()Lcom/ime/framework/view/PopupKeyboardView;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/ime/framework/view/PopupKeyboardView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    if-eqz v3, :cond_0

    iput-object v3, v15, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    :goto_2
    const/16 v16, 0x3eb

    move/from16 v0, v16

    iput v0, v15, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v16, -0x2

    move/from16 v0, v16

    iput v0, v15, Landroid/view/WindowManager$LayoutParams;->width:I

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/app/AlertDialog;->show()V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_6
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/TipsDialog;->mOneHandedAnimationRunnable:Ljava/lang/Runnable;

    move-object/from16 v17, v0

    const-wide/16 v18, 0x1f4

    invoke-virtual/range {v16 .. v19}, Lcom/ime/framework/view/AbstractKeyboardView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    :cond_7
    const/16 v16, 0x0

    goto/16 :goto_1

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/ime/framework/view/AbstractKeyboardView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    if-eqz v3, :cond_0

    iput-object v3, v15, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    goto :goto_2

    :catch_0
    move-exception v5

    sget-boolean v16, Lcom/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v16, :cond_6

    invoke-virtual {v5}, Landroid/view/WindowManager$BadTokenException;->printStackTrace()V

    goto :goto_3
.end method

.method public showPenDetectionGuideDialog(Landroid/view/View;)V
    .locals 17

    move-object/from16 v0, p1

    instance-of v14, v0, Lcom/ime/framework/view/AbstractKeyboardView;

    if-eqz v14, :cond_1

    check-cast p1, Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ime/framework/view/TipsDialog;->context:Landroid/content/Context;

    if-nez v14, :cond_2

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v14, "SamsungIME"

    const-string v15, "[showPenDetectionGuideDialog] Bad object casting. the mCurrentView is not a instanceof AbstractKeyboardView "

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v14, :cond_3

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v14, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v14}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v14

    if-nez v14, :cond_0

    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v14}, Lcom/ime/framework/view/AbstractKeyboardView;->getPenDetectionGuideLayoutRscId()I

    move-result v10

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v14}, Lcom/ime/framework/view/AbstractKeyboardView;->getPenDetectionGuideCheckBoxRscId()I

    move-result v8

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v14}, Lcom/ime/framework/view/AbstractKeyboardView;->getPenDetectionGuideDialogTitle()Ljava/lang/String;

    move-result-object v9

    if-eqz v10, :cond_0

    if-eqz v9, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ime/framework/view/TipsDialog;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v15, "IS_POPUP_SHOW"

    const/16 v16, 0x1

    invoke-interface/range {v14 .. v16}, Lcom/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    new-instance v2, Landroid/app/AlertDialog$Builder;

    new-instance v14, Landroid/view/ContextThemeWrapper;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ime/framework/view/TipsDialog;->context:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/ime/framework/view/AbstractKeyboardView;->getDialogTheme()I

    move-result v16

    invoke-direct/range {v14 .. v16}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v2, v14}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v14, 0x1

    invoke-virtual {v2, v14}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v14}, Lcom/ime/framework/view/AbstractKeyboardView;->getContext()Landroid/content/Context;

    move-result-object v14

    const-string v15, "layout_inflater"

    invoke-virtual {v14, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/LayoutInflater;

    const/4 v14, 0x0

    invoke-virtual {v7, v10, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2, v9}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/ime/framework/view/TipsDialog;->mIsUSAString:Z

    if-eqz v14, :cond_4

    const v14, 0x7f100099

    invoke-virtual {v6, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    const v14, 0x7f0d007d

    invoke-virtual {v11, v14}, Landroid/widget/TextView;->setText(I)V

    :cond_4
    const v14, 0x104000a

    new-instance v15, Lcom/ime/framework/view/TipsDialog$16;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/ime/framework/view/TipsDialog$16;-><init>(Lcom/ime/framework/view/TipsDialog;)V

    invoke-virtual {v2, v14, v15}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v14, 0x7f0d00b6

    new-instance v15, Lcom/ime/framework/view/TipsDialog$17;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/ime/framework/view/TipsDialog$17;-><init>(Lcom/ime/framework/view/TipsDialog;)V

    invoke-virtual {v2, v14, v15}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    if-eqz v4, :cond_7

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/ime/framework/view/TipsDialog;->mIsCheckDontShowPenDetectionGuide:Z

    if-nez v14, :cond_5

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ime/framework/view/TipsDialog;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v15, "IS_PENDETECTIONGUIDE_CHECKBOX_CHECKED"

    const/16 v16, 0x0

    invoke-interface/range {v14 .. v16}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v14

    if-eqz v14, :cond_6

    :cond_5
    const/4 v14, 0x1

    invoke-virtual {v4, v14}, Landroid/widget/CheckBox;->setChecked(Z)V

    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/ime/framework/view/TipsDialog;->mIsCheckDontShowPenDetectionGuide:Z

    :cond_6
    new-instance v14, Lcom/ime/framework/view/TipsDialog$18;

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v4}, Lcom/ime/framework/view/TipsDialog$18;-><init>(Lcom/ime/framework/view/TipsDialog;Landroid/widget/CheckBox;)V

    invoke-virtual {v4, v14}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_7
    new-instance v14, Lcom/ime/framework/view/TipsDialog$19;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/ime/framework/view/TipsDialog$19;-><init>(Lcom/ime/framework/view/TipsDialog;)V

    invoke-virtual {v2, v14}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/ime/framework/view/TipsDialog;->getOnDismissListener(Z)Landroid/content/DialogInterface$OnDismissListener;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v14}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/ime/framework/view/TipsDialog;->mCurrentInputMethod:I

    const/4 v15, 0x7

    if-eq v14, v15, :cond_8

    move-object/from16 v0, p0

    iget v14, v0, Lcom/ime/framework/view/TipsDialog;->mCurrentInputMethod:I

    const/16 v15, 0x8

    if-ne v14, v15, :cond_9

    :cond_8
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ime/framework/view/TipsDialog;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v14}, Lcom/ime/framework/common/InputManager;->getPopupKeyboardView()Lcom/ime/framework/view/PopupKeyboardView;

    move-result-object v14

    invoke-virtual {v14}, Lcom/ime/framework/view/PopupKeyboardView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    if-eqz v3, :cond_0

    iput-object v3, v13, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    :goto_1
    const/16 v14, 0x3eb

    iput v14, v13, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v14, -0x2

    iput v14, v13, Landroid/view/WindowManager$LayoutParams;->width:I

    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v14}, Landroid/app/AlertDialog;->show()V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v5

    sget-boolean v14, Lcom/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v14, :cond_0

    invoke-virtual {v5}, Landroid/view/WindowManager$BadTokenException;->printStackTrace()V

    goto/16 :goto_0

    :cond_9
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v14}, Lcom/ime/framework/view/AbstractKeyboardView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    if-eqz v3, :cond_0

    iput-object v3, v13, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    goto :goto_1
.end method

.method public showPinchZoomGuideDialog(Landroid/view/View;)V
    .locals 24

    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/ime/framework/view/AbstractKeyboardView;

    move/from16 v19, v0

    if-eqz v19, :cond_1

    check-cast p1, Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/TipsDialog;->context:Landroid/content/Context;

    move-object/from16 v19, v0

    if-nez v19, :cond_2

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v19, "SamsungIME"

    const-string v20, "[showPinchZoomGuideDialog] Bad object casting. the mCurrentView is not a instanceof AbstractKeyboardView "

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    move-object/from16 v19, v0

    if-eqz v19, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    move-object/from16 v19, v0

    if-eqz v19, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v19

    if-nez v19, :cond_0

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/ime/framework/view/AbstractKeyboardView;->getPinchZoomGuideLayoutRscId()I

    move-result v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/ime/framework/view/AbstractKeyboardView;->getPinchZoomGuideDialogTitle()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/ime/framework/view/AbstractKeyboardView;->getPinchZoomGuideAnimationDrawbleRscId()I

    move-result v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/ime/framework/view/AbstractKeyboardView;->getMovingGuideAnimationDrawbleRscId()I

    move-result v12

    if-eqz v14, :cond_0

    if-eqz v7, :cond_0

    if-eqz v13, :cond_0

    if-eqz v12, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/TipsDialog;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ime/framework/view/TipsDialog;->mCurrentInputMethod:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/TipsDialog;->mRepository:Lcom/ime/framework/repository/Repository;

    move-object/from16 v19, v0

    const-string v20, "IS_POPUP_SHOW"

    const/16 v21, 0x1

    invoke-interface/range {v19 .. v21}, Lcom/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/TipsDialog;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/ime/framework/common/InputManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v15

    const-string v19, "first_pinch_zoom_execution"

    const/16 v20, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-interface {v15, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v19

    if-nez v19, :cond_7

    const/16 v19, 0x1

    :goto_1
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/ime/framework/view/TipsDialog;->mIsCheckDontShowPinchZoomGuide:Z

    new-instance v4, Landroid/app/AlertDialog$Builder;

    new-instance v19, Landroid/view/ContextThemeWrapper;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/TipsDialog;->context:Landroid/content/Context;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/ime/framework/view/AbstractKeyboardView;->getDialogTheme()I

    move-result v21

    invoke-direct/range {v19 .. v21}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    move-object/from16 v0, v19

    invoke-direct {v4, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/ime/framework/view/AbstractKeyboardView;->getContext()Landroid/content/Context;

    move-result-object v19

    const-string v20, "layout_inflater"

    invoke-virtual/range {v19 .. v20}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/LayoutInflater;

    const/16 v19, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v11, v14, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const v19, 0x1020016

    move/from16 v0, v19

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    if-nez v16, :cond_4

    invoke-virtual {v4, v7}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    :cond_4
    invoke-virtual {v8, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    invoke-virtual {v10}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v19

    check-cast v19, Landroid/graphics/drawable/AnimationDrawable;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ime/framework/view/TipsDialog;->mMotionTutorialAnimationDrawble:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v8, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    invoke-virtual {v9}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v19

    check-cast v19, Landroid/graphics/drawable/AnimationDrawable;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ime/framework/view/TipsDialog;->mMovingTutorialAnimationDrawble:Landroid/graphics/drawable/AnimationDrawable;

    const v19, 0x104000a

    new-instance v20, Lcom/ime/framework/view/TipsDialog$2;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/ime/framework/view/TipsDialog$2;-><init>(Lcom/ime/framework/view/TipsDialog;)V

    move/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v4, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v19, Lcom/ime/framework/view/TipsDialog$3;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/ime/framework/view/TipsDialog$3;-><init>(Lcom/ime/framework/view/TipsDialog;)V

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/ime/framework/view/TipsDialog;->getOnDismissListener(Z)Landroid/content/DialogInterface$OnDismissListener;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ime/framework/view/TipsDialog;->mCurrentInputMethod:I

    move/from16 v19, v0

    const/16 v20, 0x7

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ime/framework/view/TipsDialog;->mCurrentInputMethod:I

    move/from16 v19, v0

    const/16 v20, 0x8

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_8

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/TipsDialog;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/ime/framework/common/InputManager;->getPopupKeyboardView()Lcom/ime/framework/view/PopupKeyboardView;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/ime/framework/view/PopupKeyboardView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v5

    if-eqz v5, :cond_0

    move-object/from16 v0, v18

    iput-object v5, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    :goto_2
    const/16 v19, 0x3eb

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v19, -0x2

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/app/AlertDialog;->show()V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_6
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/TipsDialog;->mAnimationRunnable:Ljava/lang/Runnable;

    move-object/from16 v20, v0

    const-wide/16 v22, 0x1f4

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-wide/from16 v2, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/ime/framework/view/AbstractKeyboardView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    :cond_7
    const/16 v19, 0x0

    goto/16 :goto_1

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/ime/framework/view/AbstractKeyboardView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v5

    if-eqz v5, :cond_0

    move-object/from16 v0, v18

    iput-object v5, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    goto :goto_2

    :catch_0
    move-exception v6

    sget-boolean v19, Lcom/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v19, :cond_6

    invoke-virtual {v6}, Landroid/view/WindowManager$BadTokenException;->printStackTrace()V

    goto :goto_3
.end method

.method public showSwiftkeyGuideDialog(Landroid/view/View;)V
    .locals 13

    const/4 v12, 0x1

    instance-of v10, p1, Lcom/ime/framework/view/AbstractKeyboardView;

    if-eqz v10, :cond_1

    check-cast p1, Lcom/ime/framework/view/AbstractKeyboardView;

    iput-object p1, p0, Lcom/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/ime/framework/view/AbstractKeyboardView;

    iget-object v10, p0, Lcom/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v10}, Lcom/ime/framework/view/AbstractKeyboardView;->releaseAllKeyPressed()V

    iget-object v10, p0, Lcom/ime/framework/view/TipsDialog;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v10}, Lcom/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v10

    iput v10, p0, Lcom/ime/framework/view/TipsDialog;->mCurrentInputMethod:I

    iget-object v10, p0, Lcom/ime/framework/view/TipsDialog;->mAttentionDialog:Landroid/app/AlertDialog;

    if-eqz v10, :cond_2

    iget-object v10, p0, Lcom/ime/framework/view/TipsDialog;->mAttentionDialog:Landroid/app/AlertDialog;

    invoke-virtual {v10}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v10

    if-eqz v10, :cond_2

    iget-object v10, p0, Lcom/ime/framework/view/TipsDialog;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v11, "IS_POPUP_SHOW"

    invoke-interface {v10, v11, v12}, Lcom/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v10, "SamsungIME"

    const-string v11, "[showSwiftkeyGuideDialog] Bad object casting. the mCurrentView is not a instanceof AbstractKeyboardView "

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-object v10, p0, Lcom/ime/framework/view/TipsDialog;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v10}, Lcom/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v10, p0, Lcom/ime/framework/view/TipsDialog;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v10}, Lcom/ime/framework/common/InputManager;->isTipsPopup()Z

    move-result v10

    if-nez v10, :cond_0

    iget-object v10, p0, Lcom/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v10}, Lcom/ime/framework/view/AbstractKeyboardView;->getSwiftkeyGuideLayoutRscId()I

    move-result v7

    iget-object v10, p0, Lcom/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v10}, Lcom/ime/framework/view/AbstractKeyboardView;->getSwiftkeyGuideDialogTitle()Ljava/lang/String;

    move-result-object v6

    if-eqz v7, :cond_0

    if-eqz v6, :cond_0

    iget-object v10, p0, Lcom/ime/framework/view/TipsDialog;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v11, "IS_POPUP_SHOW"

    invoke-interface {v10, v11, v12}, Lcom/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    new-instance v0, Landroid/app/AlertDialog$Builder;

    new-instance v10, Landroid/view/ContextThemeWrapper;

    iget-object v11, p0, Lcom/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v11}, Lcom/ime/framework/view/AbstractKeyboardView;->getDialogTheme()I

    move-result v11

    invoke-direct {v10, v2, v11}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v10}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v12}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    iget-object v10, p0, Lcom/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v10}, Lcom/ime/framework/view/AbstractKeyboardView;->getContext()Landroid/content/Context;

    move-result-object v10

    const-string v11, "layout_inflater"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/LayoutInflater;

    const/4 v10, 0x0

    invoke-virtual {v5, v7, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v12}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    const v10, 0x104000a

    new-instance v11, Lcom/ime/framework/view/TipsDialog$11;

    invoke-direct {v11, p0}, Lcom/ime/framework/view/TipsDialog$11;-><init>(Lcom/ime/framework/view/TipsDialog;)V

    invoke-virtual {v0, v10, v11}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v10, Lcom/ime/framework/view/TipsDialog$12;

    invoke-direct {v10, p0}, Lcom/ime/framework/view/TipsDialog$12;-><init>(Lcom/ime/framework/view/TipsDialog;)V

    invoke-virtual {v0, v10}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v10

    iput-object v10, p0, Lcom/ime/framework/view/TipsDialog;->mAttentionDialog:Landroid/app/AlertDialog;

    iget-object v10, p0, Lcom/ime/framework/view/TipsDialog;->mAttentionDialog:Landroid/app/AlertDialog;

    const/4 v11, 0x0

    invoke-virtual {p0, v11}, Lcom/ime/framework/view/TipsDialog;->getOnDismissListener(Z)Landroid/content/DialogInterface$OnDismissListener;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v10, p0, Lcom/ime/framework/view/TipsDialog;->mAttentionDialog:Landroid/app/AlertDialog;

    invoke-virtual {v10}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v8

    const/4 v10, 0x2

    invoke-virtual {v8, v10}, Landroid/view/Window;->addFlags(I)V

    const/high16 v10, 0x3f000000    # 0.5f

    invoke-virtual {v8, v10}, Landroid/view/Window;->setDimAmount(F)V

    invoke-virtual {v8}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v9

    iget v10, p0, Lcom/ime/framework/view/TipsDialog;->mCurrentInputMethod:I

    const/4 v11, 0x7

    if-eq v10, v11, :cond_3

    iget v10, p0, Lcom/ime/framework/view/TipsDialog;->mCurrentInputMethod:I

    const/16 v11, 0x8

    if-ne v10, v11, :cond_5

    :cond_3
    iget-object v10, p0, Lcom/ime/framework/view/TipsDialog;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v10}, Lcom/ime/framework/common/InputManager;->getPopupKeyboardView()Lcom/ime/framework/view/PopupKeyboardView;

    move-result-object v10

    invoke-virtual {v10}, Lcom/ime/framework/view/PopupKeyboardView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_0

    iput-object v1, v9, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    :goto_1
    const/16 v10, 0x3eb

    iput v10, v9, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v10, -0x2

    iput v10, v9, Landroid/view/WindowManager$LayoutParams;->width:I

    :try_start_0
    iget-object v10, p0, Lcom/ime/framework/view/TipsDialog;->mAttentionDialog:Landroid/app/AlertDialog;

    invoke-virtual {v10}, Landroid/app/AlertDialog;->show()V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    :goto_2
    iget-object v10, p0, Lcom/ime/framework/view/TipsDialog;->mInputManager:Lcom/ime/framework/common/InputManager;

    iget-object v11, p0, Lcom/ime/framework/view/TipsDialog;->mAttentionDialog:Landroid/app/AlertDialog;

    invoke-interface {v10, v11}, Lcom/ime/framework/common/InputManager;->setPopupDialog(Landroid/app/Dialog;)V

    goto/16 :goto_0

    :cond_5
    iget-object v10, p0, Lcom/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v10}, Lcom/ime/framework/view/AbstractKeyboardView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_0

    iput-object v1, v9, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    goto :goto_1

    :catch_0
    move-exception v3

    sget-boolean v10, Lcom/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v10, :cond_4

    invoke-virtual {v3}, Landroid/view/WindowManager$BadTokenException;->printStackTrace()V

    goto :goto_2
.end method

.method public showSwiftkeyRemoveTermDialog(Ljava/lang/String;ILandroid/view/View;)V
    .locals 12

    const/4 v11, 0x1

    const/4 v10, 0x0

    iget-object v8, p0, Lcom/ime/framework/view/TipsDialog;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v2

    instance-of v8, p3, Lcom/ime/framework/view/AbstractKeyboardView;

    if-eqz v8, :cond_1

    check-cast p3, Lcom/ime/framework/view/AbstractKeyboardView;

    iput-object p3, p0, Lcom/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/ime/framework/view/AbstractKeyboardView;

    if-nez v2, :cond_2

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v8, "SamsungIME"

    const-string v9, "[showSwiftkeyRemoveTermDialog] Bad object casting. the mCurrentView is not a instanceof AbstractKeyboardView "

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-object v8, p0, Lcom/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v8}, Lcom/ime/framework/view/AbstractKeyboardView;->removeAllMsg()V

    iget-object v8, p0, Lcom/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v8}, Lcom/ime/framework/view/AbstractKeyboardView;->dismissPopupKeyboard()V

    iget-object v8, p0, Lcom/ime/framework/view/TipsDialog;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v8}, Lcom/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v8

    iput v8, p0, Lcom/ime/framework/view/TipsDialog;->mCurrentInputMethod:I

    iget-object v8, p0, Lcom/ime/framework/view/TipsDialog;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/ime/framework/common/InputManager;->getCtrlPressedState()Z

    move-result v8

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/ime/framework/view/TipsDialog;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v8, v10}, Lcom/ime/framework/common/InputManager;->setCtrlPressedState(Z)V

    iget-object v8, p0, Lcom/ime/framework/view/TipsDialog;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/ime/framework/common/InputManager;->releaseAllKeyPressed()V

    iget-object v8, p0, Lcom/ime/framework/view/TipsDialog;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/ime/framework/common/InputManager;->invalidateKeyboardView()V

    :cond_3
    iget-object v8, p0, Lcom/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v8}, Lcom/ime/framework/view/AbstractKeyboardView;->getSwiftkeyRemoveTermDialogTitle()Ljava/lang/String;

    move-result-object v5

    iget-object v8, p0, Lcom/ime/framework/view/TipsDialog;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v9, "IS_POPUP_SHOW"

    invoke-interface {v8, v9, v11}, Lcom/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    new-instance v0, Landroid/app/AlertDialog$Builder;

    new-instance v8, Landroid/view/ContextThemeWrapper;

    iget-object v9, p0, Lcom/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v9}, Lcom/ime/framework/view/AbstractKeyboardView;->getDialogTheme()I

    move-result v9

    invoke-direct {v8, v2, v9}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v8}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v11}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    iget-object v8, p0, Lcom/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v8, p1}, Lcom/ime/framework/view/AbstractKeyboardView;->getSwiftkeyRemoveTermDialogMsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v8, 0x104000a

    new-instance v9, Lcom/ime/framework/view/TipsDialog$60;

    invoke-direct {v9, p0, p2}, Lcom/ime/framework/view/TipsDialog$60;-><init>(Lcom/ime/framework/view/TipsDialog;I)V

    invoke-virtual {v0, v8, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/high16 v8, 0x1040000

    new-instance v9, Lcom/ime/framework/view/TipsDialog$61;

    invoke-direct {v9, p0}, Lcom/ime/framework/view/TipsDialog$61;-><init>(Lcom/ime/framework/view/TipsDialog;)V

    invoke-virtual {v0, v8, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    invoke-virtual {p0, v10}, Lcom/ime/framework/view/TipsDialog;->getOnDismissListener(Z)Landroid/content/DialogInterface$OnDismissListener;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v4}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v7

    iget v8, p0, Lcom/ime/framework/view/TipsDialog;->mCurrentInputMethod:I

    const/4 v9, 0x7

    if-eq v8, v9, :cond_4

    iget v8, p0, Lcom/ime/framework/view/TipsDialog;->mCurrentInputMethod:I

    const/16 v9, 0x8

    if-ne v8, v9, :cond_6

    :cond_4
    iget-object v8, p0, Lcom/ime/framework/view/TipsDialog;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/ime/framework/common/InputManager;->getPopupKeyboardView()Lcom/ime/framework/view/PopupKeyboardView;

    move-result-object v8

    invoke-virtual {v8}, Lcom/ime/framework/view/PopupKeyboardView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_0

    iput-object v1, v7, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    :goto_1
    const/16 v8, 0x3eb

    iput v8, v7, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v8, -0x2

    iput v8, v7, Landroid/view/WindowManager$LayoutParams;->width:I

    const/high16 v8, 0x3f000000    # 0.5f

    iput v8, v7, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    invoke-virtual {v6, v7}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    const/4 v8, 0x2

    invoke-virtual {v6, v8}, Landroid/view/Window;->addFlags(I)V

    :try_start_0
    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    :goto_2
    iget-object v8, p0, Lcom/ime/framework/view/TipsDialog;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v8, v4}, Lcom/ime/framework/common/InputManager;->setPopupDialog(Landroid/app/Dialog;)V

    goto/16 :goto_0

    :cond_6
    iget-object v8, p0, Lcom/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v8}, Lcom/ime/framework/view/AbstractKeyboardView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_0

    iput-object v1, v7, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    goto :goto_1

    :catch_0
    move-exception v3

    sget-boolean v8, Lcom/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v8, :cond_5

    invoke-virtual {v3}, Landroid/view/WindowManager$BadTokenException;->printStackTrace()V

    goto :goto_2
.end method

.method public showSwiftkeyRemoveTermDialogForcely(Ljava/lang/String;ILandroid/view/View;)V
    .locals 12

    const/4 v11, 0x1

    const/4 v10, 0x0

    iget-object v8, p0, Lcom/ime/framework/view/TipsDialog;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v2

    instance-of v8, p3, Lcom/ime/framework/view/AbstractKeyboardView;

    if-eqz v8, :cond_1

    check-cast p3, Lcom/ime/framework/view/AbstractKeyboardView;

    iput-object p3, p0, Lcom/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/ime/framework/view/AbstractKeyboardView;

    if-nez v2, :cond_2

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v8, "SamsungIME"

    const-string v9, "[showSwiftkeyRemoveTermDialog] Bad object casting. the mCurrentView is not a instanceof AbstractKeyboardView "

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-object v8, p0, Lcom/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v8}, Lcom/ime/framework/view/AbstractKeyboardView;->removeAllMsg()V

    iget-object v8, p0, Lcom/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v8}, Lcom/ime/framework/view/AbstractKeyboardView;->dismissPopupKeyboard()V

    iget-object v8, p0, Lcom/ime/framework/view/TipsDialog;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v8}, Lcom/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v8

    iput v8, p0, Lcom/ime/framework/view/TipsDialog;->mCurrentInputMethod:I

    iget-object v8, p0, Lcom/ime/framework/view/TipsDialog;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/ime/framework/common/InputManager;->getCtrlPressedState()Z

    move-result v8

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/ime/framework/view/TipsDialog;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v8, v10}, Lcom/ime/framework/common/InputManager;->setCtrlPressedState(Z)V

    iget-object v8, p0, Lcom/ime/framework/view/TipsDialog;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/ime/framework/common/InputManager;->releaseAllKeyPressed()V

    iget-object v8, p0, Lcom/ime/framework/view/TipsDialog;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/ime/framework/common/InputManager;->invalidateKeyboardView()V

    :cond_3
    iget-object v8, p0, Lcom/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v8}, Lcom/ime/framework/view/AbstractKeyboardView;->getSwiftkeyRemoveTermDialogTitle()Ljava/lang/String;

    move-result-object v5

    iget-object v8, p0, Lcom/ime/framework/view/TipsDialog;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v9, "IS_POPUP_SHOW"

    invoke-interface {v8, v9, v11}, Lcom/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    new-instance v0, Landroid/app/AlertDialog$Builder;

    new-instance v8, Landroid/view/ContextThemeWrapper;

    iget-object v9, p0, Lcom/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v9}, Lcom/ime/framework/view/AbstractKeyboardView;->getDialogTheme()I

    move-result v9

    invoke-direct {v8, v2, v9}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v8}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v11}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    iget-object v8, p0, Lcom/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v8, p1}, Lcom/ime/framework/view/AbstractKeyboardView;->getSwiftkeyRemoveTermDialogMsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v8, 0x104000a

    new-instance v9, Lcom/ime/framework/view/TipsDialog$62;

    invoke-direct {v9, p0, p1}, Lcom/ime/framework/view/TipsDialog$62;-><init>(Lcom/ime/framework/view/TipsDialog;Ljava/lang/String;)V

    invoke-virtual {v0, v8, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/high16 v8, 0x1040000

    new-instance v9, Lcom/ime/framework/view/TipsDialog$63;

    invoke-direct {v9, p0}, Lcom/ime/framework/view/TipsDialog$63;-><init>(Lcom/ime/framework/view/TipsDialog;)V

    invoke-virtual {v0, v8, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    invoke-virtual {p0, v10}, Lcom/ime/framework/view/TipsDialog;->getOnDismissListener(Z)Landroid/content/DialogInterface$OnDismissListener;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v4}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v7

    iget v8, p0, Lcom/ime/framework/view/TipsDialog;->mCurrentInputMethod:I

    const/4 v9, 0x7

    if-eq v8, v9, :cond_4

    iget v8, p0, Lcom/ime/framework/view/TipsDialog;->mCurrentInputMethod:I

    const/16 v9, 0x8

    if-ne v8, v9, :cond_6

    :cond_4
    iget-object v8, p0, Lcom/ime/framework/view/TipsDialog;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/ime/framework/common/InputManager;->getPopupKeyboardView()Lcom/ime/framework/view/PopupKeyboardView;

    move-result-object v8

    invoke-virtual {v8}, Lcom/ime/framework/view/PopupKeyboardView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_0

    iput-object v1, v7, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    :goto_1
    const/16 v8, 0x3eb

    iput v8, v7, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v8, -0x2

    iput v8, v7, Landroid/view/WindowManager$LayoutParams;->width:I

    const/high16 v8, 0x3f000000    # 0.5f

    iput v8, v7, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    invoke-virtual {v6, v7}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    const/4 v8, 0x2

    invoke-virtual {v6, v8}, Landroid/view/Window;->addFlags(I)V

    :try_start_0
    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    :goto_2
    iget-object v8, p0, Lcom/ime/framework/view/TipsDialog;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v8, v4}, Lcom/ime/framework/common/InputManager;->setPopupDialog(Landroid/app/Dialog;)V

    goto/16 :goto_0

    :cond_6
    iget-object v8, p0, Lcom/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v8}, Lcom/ime/framework/view/AbstractKeyboardView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_0

    iput-object v1, v7, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    goto :goto_1

    :catch_0
    move-exception v3

    sget-boolean v8, Lcom/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v8, :cond_5

    invoke-virtual {v3}, Landroid/view/WindowManager$BadTokenException;->printStackTrace()V

    goto :goto_2
.end method

.method public showTipsCMkeyGuideDialog(Landroid/view/View;)V
    .locals 17

    move-object/from16 v0, p1

    instance-of v14, v0, Lcom/ime/framework/view/AbstractKeyboardView;

    if-eqz v14, :cond_1

    check-cast p1, Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ime/framework/view/TipsDialog;->context:Landroid/content/Context;

    if-nez v14, :cond_2

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v14, "SamsungIME"

    const-string v15, "[showTipsCMkeyGuideDialog] Bad object casting. the mCurrentView is not a instanceof AbstractKeyboardView "

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v14, :cond_3

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v14, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v14}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v14

    if-nez v14, :cond_0

    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v14}, Lcom/ime/framework/view/AbstractKeyboardView;->getTipsCMkeyGuideLayoutRscId()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v14}, Lcom/ime/framework/view/AbstractKeyboardView;->getTipsCMkeyGuideCheckBoxRscId()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v14}, Lcom/ime/framework/view/AbstractKeyboardView;->getTipsCMkeyGuideDialogTitle()Ljava/lang/String;

    move-result-object v3

    if-eqz v4, :cond_0

    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ime/framework/view/TipsDialog;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v15, "IS_POPUP_SHOW"

    const/16 v16, 0x1

    invoke-interface/range {v14 .. v16}, Lcom/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ime/framework/view/TipsDialog;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v14}, Lcom/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/ime/framework/view/TipsDialog;->mCurrentInputMethod:I

    new-instance v5, Landroid/app/AlertDialog$Builder;

    new-instance v14, Landroid/view/ContextThemeWrapper;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ime/framework/view/TipsDialog;->context:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/ime/framework/view/AbstractKeyboardView;->getDialogTheme()I

    move-result v16

    invoke-direct/range {v14 .. v16}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v5, v14}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v14, 0x1

    invoke-virtual {v5, v14}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v14}, Lcom/ime/framework/view/AbstractKeyboardView;->getContext()Landroid/content/Context;

    move-result-object v14

    const-string v15, "layout_inflater"

    invoke-virtual {v14, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/LayoutInflater;

    const/4 v14, 0x0

    invoke-virtual {v10, v4, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v5, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v14, 0x7f1000ea

    invoke-virtual {v9, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "2. "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v11}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v14, 0x7f0d00f0

    new-instance v15, Lcom/ime/framework/view/TipsDialog$39;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/ime/framework/view/TipsDialog$39;-><init>(Lcom/ime/framework/view/TipsDialog;)V

    invoke-virtual {v5, v14, v15}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v14, 0x7f0d01cd

    new-instance v15, Lcom/ime/framework/view/TipsDialog$40;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/ime/framework/view/TipsDialog$40;-><init>(Lcom/ime/framework/view/TipsDialog;)V

    invoke-virtual {v5, v14, v15}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v14, 0x7f0d00ef

    new-instance v15, Lcom/ime/framework/view/TipsDialog$41;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/ime/framework/view/TipsDialog$41;-><init>(Lcom/ime/framework/view/TipsDialog;)V

    invoke-virtual {v5, v14, v15}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v9, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/CheckBox;

    if-eqz v7, :cond_5

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/ime/framework/view/TipsDialog;->mIsTipCheckDontShowAllGuide:Z

    if-eqz v14, :cond_4

    const/4 v14, 0x1

    invoke-virtual {v7, v14}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_4
    new-instance v14, Lcom/ime/framework/view/TipsDialog$42;

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v7}, Lcom/ime/framework/view/TipsDialog$42;-><init>(Lcom/ime/framework/view/TipsDialog;Landroid/widget/CheckBox;)V

    invoke-virtual {v7, v14}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_5
    new-instance v14, Lcom/ime/framework/view/TipsDialog$43;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/ime/framework/view/TipsDialog$43;-><init>(Lcom/ime/framework/view/TipsDialog;)V

    invoke-virtual {v5, v14}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    new-instance v15, Lcom/ime/framework/view/TipsDialog$44;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/ime/framework/view/TipsDialog$44;-><init>(Lcom/ime/framework/view/TipsDialog;)V

    invoke-virtual {v14, v15}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    new-instance v15, Lcom/ime/framework/view/TipsDialog$45;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/ime/framework/view/TipsDialog$45;-><init>(Lcom/ime/framework/view/TipsDialog;)V

    invoke-virtual {v14, v15}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v14}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/ime/framework/view/TipsDialog;->mCurrentInputMethod:I

    const/4 v15, 0x7

    if-eq v14, v15, :cond_6

    move-object/from16 v0, p0

    iget v14, v0, Lcom/ime/framework/view/TipsDialog;->mCurrentInputMethod:I

    const/16 v15, 0x8

    if-ne v14, v15, :cond_8

    :cond_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ime/framework/view/TipsDialog;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v14}, Lcom/ime/framework/common/InputManager;->getPopupKeyboardView()Lcom/ime/framework/view/PopupKeyboardView;

    move-result-object v14

    invoke-virtual {v14}, Lcom/ime/framework/view/PopupKeyboardView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v6

    if-nez v6, :cond_7

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ime/framework/view/TipsDialog;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v15, "IS_POPUP_SHOW"

    const/16 v16, 0x0

    invoke-interface/range {v14 .. v16}, Lcom/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_7
    iput-object v6, v13, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    :goto_1
    const/16 v14, 0x3eb

    iput v14, v13, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v14, -0x2

    iput v14, v13, Landroid/view/WindowManager$LayoutParams;->width:I

    const/high16 v14, 0x3f000000    # 0.5f

    iput v14, v13, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    invoke-virtual {v12, v13}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    const/4 v14, 0x2

    invoke-virtual {v12, v14}, Landroid/view/Window;->addFlags(I)V

    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v14}, Landroid/app/AlertDialog;->show()V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v8

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ime/framework/view/TipsDialog;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v15, "IS_POPUP_SHOW"

    const/16 v16, 0x0

    invoke-interface/range {v14 .. v16}, Lcom/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    sget-boolean v14, Lcom/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v14, :cond_0

    invoke-virtual {v8}, Landroid/view/WindowManager$BadTokenException;->printStackTrace()V

    goto/16 :goto_0

    :cond_8
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v14}, Lcom/ime/framework/view/AbstractKeyboardView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v6

    if-nez v6, :cond_9

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ime/framework/view/TipsDialog;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v15, "IS_POPUP_SHOW"

    const/16 v16, 0x0

    invoke-interface/range {v14 .. v16}, Lcom/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_9
    iput-object v6, v13, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    goto :goto_1
.end method

.method public showTipsDialogByIndex(ILandroid/view/View;)V
    .locals 1

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/ime/framework/view/TipsDialog;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->isPridictionOn()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p2}, Lcom/ime/framework/view/TipsDialog;->showTipsTraceGuideDialog(Landroid/view/View;)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0, p2}, Lcom/ime/framework/view/TipsDialog;->showTipsCMkeyGuideDialog(Landroid/view/View;)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0, p2}, Lcom/ime/framework/view/TipsDialog;->showTipsSwiftKeyLearnsGuideDialog(Landroid/view/View;)V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0, p2}, Lcom/ime/framework/view/TipsDialog;->showTipsRemoveWordsGuideDialog(Landroid/view/View;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public showTipsHwrInstallGuideDialog(Landroid/view/View;)V
    .locals 14

    instance-of v11, p1, Lcom/ime/framework/view/AbstractKeyboardView;

    if-eqz v11, :cond_1

    check-cast p1, Lcom/ime/framework/view/AbstractKeyboardView;

    iput-object p1, p0, Lcom/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/ime/framework/view/AbstractKeyboardView;

    iget-object v11, p0, Lcom/ime/framework/view/TipsDialog;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v11}, Lcom/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v11

    iput v11, p0, Lcom/ime/framework/view/TipsDialog;->mCurrentInputMethod:I

    iget-object v11, p0, Lcom/ime/framework/view/TipsDialog;->mAttentionDialog:Landroid/app/AlertDialog;

    if-eqz v11, :cond_2

    iget-object v11, p0, Lcom/ime/framework/view/TipsDialog;->mAttentionDialog:Landroid/app/AlertDialog;

    invoke-virtual {v11}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v11

    if-eqz v11, :cond_2

    iget-object v11, p0, Lcom/ime/framework/view/TipsDialog;->mAttentionDialog:Landroid/app/AlertDialog;

    const/4 v12, -0x2

    invoke-virtual {v11, v12}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v8

    if-eqz v8, :cond_2

    const-string v11, ""

    invoke-virtual {v8}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v11, "SamsungIME"

    const-string v12, "[showTipsHwrInstallGuideDialog] Bad object casting. the mCurrentView is not a instanceof AbstractKeyboardView "

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-object v11, p0, Lcom/ime/framework/view/TipsDialog;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v11}, Lcom/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v11, p0, Lcom/ime/framework/view/TipsDialog;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v11}, Lcom/ime/framework/common/InputManager;->isTipsPopup()Z

    move-result v11

    if-nez v11, :cond_0

    const v6, 0x7f03004e

    iget-object v11, p0, Lcom/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v11}, Lcom/ime/framework/view/AbstractKeyboardView;->getSwiftkeyGuideDialogTitle()Ljava/lang/String;

    move-result-object v5

    if-eqz v6, :cond_0

    if-eqz v5, :cond_0

    iget-object v11, p0, Lcom/ime/framework/view/TipsDialog;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v12, "IS_POPUP_SHOW"

    const/4 v13, 0x1

    invoke-interface {v11, v12, v13}, Lcom/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    new-instance v0, Landroid/app/AlertDialog$Builder;

    new-instance v11, Landroid/view/ContextThemeWrapper;

    iget-object v12, p0, Lcom/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v12}, Lcom/ime/framework/view/AbstractKeyboardView;->getDialogTheme()I

    move-result v12

    invoke-direct {v11, v2, v12}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v11}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v11, 0x1

    invoke-virtual {v0, v11}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    iget-object v11, p0, Lcom/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v11}, Lcom/ime/framework/view/AbstractKeyboardView;->getContext()Landroid/content/Context;

    move-result-object v11

    const-string v12, "layout_inflater"

    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/LayoutInflater;

    const/4 v11, 0x0

    invoke-virtual {v7, v6, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v11, 0x7f0d0154

    const/4 v12, 0x0

    invoke-virtual {v0, v11, v12}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v11, 0x104000a

    new-instance v12, Lcom/ime/framework/view/TipsDialog$26;

    invoke-direct {v12, p0}, Lcom/ime/framework/view/TipsDialog$26;-><init>(Lcom/ime/framework/view/TipsDialog;)V

    invoke-virtual {v0, v11, v12}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v11, Lcom/ime/framework/view/TipsDialog$27;

    invoke-direct {v11, p0}, Lcom/ime/framework/view/TipsDialog$27;-><init>(Lcom/ime/framework/view/TipsDialog;)V

    invoke-virtual {v0, v11}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v11

    iput-object v11, p0, Lcom/ime/framework/view/TipsDialog;->mAttentionDialog:Landroid/app/AlertDialog;

    iget-object v11, p0, Lcom/ime/framework/view/TipsDialog;->mAttentionDialog:Landroid/app/AlertDialog;

    const/4 v12, 0x0

    invoke-virtual {p0, v12}, Lcom/ime/framework/view/TipsDialog;->getOnDismissListener(Z)Landroid/content/DialogInterface$OnDismissListener;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v11, p0, Lcom/ime/framework/view/TipsDialog;->mAttentionDialog:Landroid/app/AlertDialog;

    invoke-virtual {v11}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v9

    const/4 v11, 0x2

    invoke-virtual {v9, v11}, Landroid/view/Window;->addFlags(I)V

    const/high16 v11, 0x3f000000    # 0.5f

    invoke-virtual {v9, v11}, Landroid/view/Window;->setDimAmount(F)V

    invoke-virtual {v9}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v10

    iget v11, p0, Lcom/ime/framework/view/TipsDialog;->mCurrentInputMethod:I

    const/4 v12, 0x7

    if-eq v11, v12, :cond_3

    iget v11, p0, Lcom/ime/framework/view/TipsDialog;->mCurrentInputMethod:I

    const/16 v12, 0x8

    if-ne v11, v12, :cond_5

    :cond_3
    iget-object v11, p0, Lcom/ime/framework/view/TipsDialog;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v11}, Lcom/ime/framework/common/InputManager;->getPopupKeyboardView()Lcom/ime/framework/view/PopupKeyboardView;

    move-result-object v11

    invoke-virtual {v11}, Lcom/ime/framework/view/PopupKeyboardView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_0

    iput-object v1, v10, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    :goto_1
    const/16 v11, 0x3eb

    iput v11, v10, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v11, -0x2

    iput v11, v10, Landroid/view/WindowManager$LayoutParams;->width:I

    :try_start_0
    iget-object v11, p0, Lcom/ime/framework/view/TipsDialog;->mAttentionDialog:Landroid/app/AlertDialog;

    invoke-virtual {v11}, Landroid/app/AlertDialog;->show()V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    :goto_2
    iget-object v11, p0, Lcom/ime/framework/view/TipsDialog;->mInputManager:Lcom/ime/framework/common/InputManager;

    iget-object v12, p0, Lcom/ime/framework/view/TipsDialog;->mAttentionDialog:Landroid/app/AlertDialog;

    invoke-interface {v11, v12}, Lcom/ime/framework/common/InputManager;->setPopupDialog(Landroid/app/Dialog;)V

    iget-object v11, p0, Lcom/ime/framework/view/TipsDialog;->mInputManager:Lcom/ime/framework/common/InputManager;

    const/4 v12, 0x1

    invoke-interface {v11, v12}, Lcom/ime/framework/common/InputManager;->setDontShowSwiftkeyGuideConsecutively(Z)V

    goto/16 :goto_0

    :cond_5
    iget-object v11, p0, Lcom/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v11}, Lcom/ime/framework/view/AbstractKeyboardView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_0

    iput-object v1, v10, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    goto :goto_1

    :catch_0
    move-exception v3

    sget-boolean v11, Lcom/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v11, :cond_4

    invoke-virtual {v3}, Landroid/view/WindowManager$BadTokenException;->printStackTrace()V

    goto :goto_2
.end method

.method public showTipsOneHandedGuideDialog(Landroid/view/View;)V
    .locals 24

    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/ime/framework/view/AbstractKeyboardView;

    move/from16 v19, v0

    if-eqz v19, :cond_1

    check-cast p1, Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/TipsDialog;->context:Landroid/content/Context;

    move-object/from16 v19, v0

    if-nez v19, :cond_2

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v19, "SamsungIME"

    const-string v20, "[showTipsOneHandedGuideDialog] Bad object casting. the mCurrentView is not a instanceof AbstractKeyboardView "

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    move-object/from16 v19, v0

    if-eqz v19, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    move-object/from16 v19, v0

    if-eqz v19, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v19

    if-nez v19, :cond_0

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/ime/framework/view/AbstractKeyboardView;->getOneHandedGuideLayoutRscId()I

    move-result v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/ime/framework/view/AbstractKeyboardView;->getOneHandedGuideCheckBoxRscId()I

    move-result v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/ime/framework/view/AbstractKeyboardView;->getOneHandGuideAnimationDrawbleRscId()I

    move-result v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/ime/framework/view/AbstractKeyboardView;->getOneHandedGuideDialogTitle()Ljava/lang/String;

    move-result-object v12

    if-eqz v11, :cond_0

    if-eqz v12, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/TipsDialog;->mRepository:Lcom/ime/framework/repository/Repository;

    move-object/from16 v19, v0

    const-string v20, "IS_POPUP_SHOW"

    const/16 v21, 0x1

    invoke-interface/range {v19 .. v21}, Lcom/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/TipsDialog;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/ime/framework/common/InputManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v16

    const-string v19, "first_one_handed_execution"

    const/16 v20, 0x1

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v19

    if-nez v19, :cond_8

    const/16 v19, 0x1

    :goto_1
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/ime/framework/view/TipsDialog;->mIsCheckDontShowOneHandedGuide:Z

    new-instance v4, Landroid/app/AlertDialog$Builder;

    new-instance v19, Landroid/view/ContextThemeWrapper;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/TipsDialog;->context:Landroid/content/Context;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/ime/framework/view/AbstractKeyboardView;->getDialogTheme()I

    move-result v21

    invoke-direct/range {v19 .. v21}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    move-object/from16 v0, v19

    invoke-direct {v4, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/ime/framework/view/AbstractKeyboardView;->getContext()Landroid/content/Context;

    move-result-object v19

    const-string v20, "layout_inflater"

    invoke-virtual/range {v19 .. v20}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/LayoutInflater;

    const/16 v19, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v10, v14, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v8, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    invoke-virtual {v9}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v19

    check-cast v19, Landroid/graphics/drawable/AnimationDrawable;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ime/framework/view/TipsDialog;->mOneHandedTutorialAnimationDrawble:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v4, v12}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v19, 0x104000a

    new-instance v20, Lcom/ime/framework/view/TipsDialog$28;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/ime/framework/view/TipsDialog$28;-><init>(Lcom/ime/framework/view/TipsDialog;)V

    move/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v4, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v8, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/CheckBox;

    if-eqz v6, :cond_4

    new-instance v19, Lcom/ime/framework/view/TipsDialog$29;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v6}, Lcom/ime/framework/view/TipsDialog$29;-><init>(Lcom/ime/framework/view/TipsDialog;Landroid/widget/CheckBox;)V

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    new-instance v19, Lcom/ime/framework/view/TipsDialog$30;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/ime/framework/view/TipsDialog$30;-><init>(Lcom/ime/framework/view/TipsDialog;)V

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    move-object/from16 v19, v0

    new-instance v20, Lcom/ime/framework/view/TipsDialog$31;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/ime/framework/view/TipsDialog$31;-><init>(Lcom/ime/framework/view/TipsDialog;)V

    invoke-virtual/range {v19 .. v20}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v18

    const/16 v19, 0x2

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    const/high16 v19, 0x3f000000    # 0.5f

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/Window;->setDimAmount(F)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ime/framework/view/TipsDialog;->mCurrentInputMethod:I

    move/from16 v19, v0

    const/16 v20, 0x7

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ime/framework/view/TipsDialog;->mCurrentInputMethod:I

    move/from16 v19, v0

    const/16 v20, 0x8

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_9

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/TipsDialog;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/ime/framework/common/InputManager;->getPopupKeyboardView()Lcom/ime/framework/view/PopupKeyboardView;

    move-result-object v15

    if-eqz v15, :cond_6

    invoke-virtual {v15}, Lcom/ime/framework/view/PopupKeyboardView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v5

    if-eqz v5, :cond_0

    move-object/from16 v0, v18

    iput-object v5, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    :cond_6
    :goto_2
    const/16 v19, 0x3eb

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v19, -0x2

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/app/AlertDialog;->show()V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_7
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/TipsDialog;->mOneHandedAnimationRunnable:Ljava/lang/Runnable;

    move-object/from16 v20, v0

    const-wide/16 v22, 0x1f4

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-wide/from16 v2, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/ime/framework/view/AbstractKeyboardView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    :cond_8
    const/16 v19, 0x0

    goto/16 :goto_1

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/ime/framework/view/AbstractKeyboardView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v5

    if-eqz v5, :cond_0

    move-object/from16 v0, v18

    iput-object v5, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    goto :goto_2

    :catch_0
    move-exception v7

    sget-boolean v19, Lcom/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v19, :cond_7

    invoke-virtual {v7}, Landroid/view/WindowManager$BadTokenException;->printStackTrace()V

    goto :goto_3
.end method

.method public showTipsRemoveWordsGuideDialog(Landroid/view/View;)V
    .locals 17

    move-object/from16 v0, p1

    instance-of v14, v0, Lcom/ime/framework/view/AbstractKeyboardView;

    if-eqz v14, :cond_1

    check-cast p1, Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ime/framework/view/TipsDialog;->context:Landroid/content/Context;

    if-nez v14, :cond_2

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v14, "SamsungIME"

    const-string v15, "[showTipsRemoveWordsGuideDialog] Bad object casting. the mCurrentView is not a instanceof AbstractKeyboardView "

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v14, :cond_3

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v14, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v14}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v14

    if-nez v14, :cond_0

    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v14}, Lcom/ime/framework/view/AbstractKeyboardView;->getTipsRemoveWordsGuideLayoutRscId()I

    move-result v10

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v14}, Lcom/ime/framework/view/AbstractKeyboardView;->getTipsRemoveWordsGuideCheckBoxRscId()I

    move-result v8

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v14}, Lcom/ime/framework/view/AbstractKeyboardView;->getTipsRemoveWordsGuideDialogTitle()Ljava/lang/String;

    move-result-object v9

    if-eqz v10, :cond_0

    if-eqz v8, :cond_0

    if-eqz v9, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ime/framework/view/TipsDialog;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v15, "IS_POPUP_SHOW"

    const/16 v16, 0x1

    invoke-interface/range {v14 .. v16}, Lcom/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ime/framework/view/TipsDialog;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v14}, Lcom/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/ime/framework/view/TipsDialog;->mCurrentInputMethod:I

    new-instance v2, Landroid/app/AlertDialog$Builder;

    new-instance v14, Landroid/view/ContextThemeWrapper;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ime/framework/view/TipsDialog;->context:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/ime/framework/view/AbstractKeyboardView;->getDialogTheme()I

    move-result v16

    invoke-direct/range {v14 .. v16}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v2, v14}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v14, 0x1

    invoke-virtual {v2, v14}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v14}, Lcom/ime/framework/view/AbstractKeyboardView;->getContext()Landroid/content/Context;

    move-result-object v14

    const-string v15, "layout_inflater"

    invoke-virtual {v14, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/LayoutInflater;

    const/4 v14, 0x0

    invoke-virtual {v7, v10, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2, v9}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v14, 0x7f1000ec

    invoke-virtual {v6, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "4. "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v11}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v14, 0x7f0d00f0

    new-instance v15, Lcom/ime/framework/view/TipsDialog$53;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/ime/framework/view/TipsDialog$53;-><init>(Lcom/ime/framework/view/TipsDialog;)V

    invoke-virtual {v2, v14, v15}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v14, 0x7f0d01cd

    new-instance v15, Lcom/ime/framework/view/TipsDialog$54;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/ime/framework/view/TipsDialog$54;-><init>(Lcom/ime/framework/view/TipsDialog;)V

    invoke-virtual {v2, v14, v15}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v14, 0x7f0d00ef

    new-instance v15, Lcom/ime/framework/view/TipsDialog$55;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/ime/framework/view/TipsDialog$55;-><init>(Lcom/ime/framework/view/TipsDialog;)V

    invoke-virtual {v2, v14, v15}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    if-eqz v4, :cond_5

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/ime/framework/view/TipsDialog;->mIsTipCheckDontShowAllGuide:Z

    if-eqz v14, :cond_4

    const/4 v14, 0x1

    invoke-virtual {v4, v14}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_4
    new-instance v14, Lcom/ime/framework/view/TipsDialog$56;

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v4}, Lcom/ime/framework/view/TipsDialog$56;-><init>(Lcom/ime/framework/view/TipsDialog;Landroid/widget/CheckBox;)V

    invoke-virtual {v4, v14}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_5
    new-instance v14, Lcom/ime/framework/view/TipsDialog$57;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/ime/framework/view/TipsDialog$57;-><init>(Lcom/ime/framework/view/TipsDialog;)V

    invoke-virtual {v2, v14}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    new-instance v15, Lcom/ime/framework/view/TipsDialog$58;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/ime/framework/view/TipsDialog$58;-><init>(Lcom/ime/framework/view/TipsDialog;)V

    invoke-virtual {v14, v15}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    new-instance v15, Lcom/ime/framework/view/TipsDialog$59;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/ime/framework/view/TipsDialog$59;-><init>(Lcom/ime/framework/view/TipsDialog;)V

    invoke-virtual {v14, v15}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v14}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v13

    const/4 v14, 0x2

    invoke-virtual {v12, v14}, Landroid/view/Window;->addFlags(I)V

    const/high16 v14, 0x3f000000    # 0.5f

    invoke-virtual {v12, v14}, Landroid/view/Window;->setDimAmount(F)V

    move-object/from16 v0, p0

    iget v14, v0, Lcom/ime/framework/view/TipsDialog;->mCurrentInputMethod:I

    const/4 v15, 0x7

    if-eq v14, v15, :cond_6

    move-object/from16 v0, p0

    iget v14, v0, Lcom/ime/framework/view/TipsDialog;->mCurrentInputMethod:I

    const/16 v15, 0x8

    if-ne v14, v15, :cond_8

    :cond_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ime/framework/view/TipsDialog;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v14}, Lcom/ime/framework/common/InputManager;->getPopupKeyboardView()Lcom/ime/framework/view/PopupKeyboardView;

    move-result-object v14

    invoke-virtual {v14}, Lcom/ime/framework/view/PopupKeyboardView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    if-nez v3, :cond_7

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ime/framework/view/TipsDialog;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v15, "IS_POPUP_SHOW"

    const/16 v16, 0x0

    invoke-interface/range {v14 .. v16}, Lcom/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_7
    iput-object v3, v13, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    :goto_1
    const/16 v14, 0x3eb

    iput v14, v13, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v14, -0x2

    iput v14, v13, Landroid/view/WindowManager$LayoutParams;->width:I

    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v14}, Landroid/app/AlertDialog;->show()V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v5

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ime/framework/view/TipsDialog;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v15, "IS_POPUP_SHOW"

    const/16 v16, 0x0

    invoke-interface/range {v14 .. v16}, Lcom/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    sget-boolean v14, Lcom/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v14, :cond_0

    invoke-virtual {v5}, Landroid/view/WindowManager$BadTokenException;->printStackTrace()V

    goto/16 :goto_0

    :cond_8
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v14}, Lcom/ime/framework/view/AbstractKeyboardView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    if-nez v3, :cond_9

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ime/framework/view/TipsDialog;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v15, "IS_POPUP_SHOW"

    const/16 v16, 0x0

    invoke-interface/range {v14 .. v16}, Lcom/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_9
    iput-object v3, v13, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    goto :goto_1
.end method

.method public showTipsSwiftKeyLearnsGuideDialog(Landroid/view/View;)V
    .locals 17

    move-object/from16 v0, p1

    instance-of v14, v0, Lcom/ime/framework/view/AbstractKeyboardView;

    if-eqz v14, :cond_1

    check-cast p1, Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ime/framework/view/TipsDialog;->context:Landroid/content/Context;

    if-nez v14, :cond_2

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v14, "SamsungIME"

    const-string v15, "[showTipsSwiftKeyLearnsGuideDialog] Bad object casting. the mCurrentView is not a instanceof AbstractKeyboardView "

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v14, :cond_3

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v14, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v14}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v14

    if-nez v14, :cond_0

    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v14}, Lcom/ime/framework/view/AbstractKeyboardView;->getTipsSwiftKeyLearnsGuideLayoutRscId()I

    move-result v10

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v14}, Lcom/ime/framework/view/AbstractKeyboardView;->getTipsSwiftKeyLearnsGuideCheckBoxRscId()I

    move-result v8

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v14}, Lcom/ime/framework/view/AbstractKeyboardView;->getTipsSwiftKeyLearnsGuideDialogTitle()Ljava/lang/String;

    move-result-object v9

    if-eqz v10, :cond_0

    if-eqz v8, :cond_0

    if-eqz v9, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ime/framework/view/TipsDialog;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v15, "IS_POPUP_SHOW"

    const/16 v16, 0x1

    invoke-interface/range {v14 .. v16}, Lcom/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ime/framework/view/TipsDialog;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v14}, Lcom/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/ime/framework/view/TipsDialog;->mCurrentInputMethod:I

    new-instance v2, Landroid/app/AlertDialog$Builder;

    new-instance v14, Landroid/view/ContextThemeWrapper;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ime/framework/view/TipsDialog;->context:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/ime/framework/view/AbstractKeyboardView;->getDialogTheme()I

    move-result v16

    invoke-direct/range {v14 .. v16}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v2, v14}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v14, 0x1

    invoke-virtual {v2, v14}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v14}, Lcom/ime/framework/view/AbstractKeyboardView;->getContext()Landroid/content/Context;

    move-result-object v14

    const-string v15, "layout_inflater"

    invoke-virtual {v14, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/LayoutInflater;

    const/4 v14, 0x0

    invoke-virtual {v7, v10, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2, v9}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v14, 0x7f1000ee

    invoke-virtual {v6, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "3. "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v11}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v14, 0x7f0d00f0

    new-instance v15, Lcom/ime/framework/view/TipsDialog$46;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/ime/framework/view/TipsDialog$46;-><init>(Lcom/ime/framework/view/TipsDialog;)V

    invoke-virtual {v2, v14, v15}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v14, 0x7f0d01cd

    new-instance v15, Lcom/ime/framework/view/TipsDialog$47;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/ime/framework/view/TipsDialog$47;-><init>(Lcom/ime/framework/view/TipsDialog;)V

    invoke-virtual {v2, v14, v15}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v14, 0x7f0d00ef

    new-instance v15, Lcom/ime/framework/view/TipsDialog$48;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/ime/framework/view/TipsDialog$48;-><init>(Lcom/ime/framework/view/TipsDialog;)V

    invoke-virtual {v2, v14, v15}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    if-eqz v4, :cond_5

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/ime/framework/view/TipsDialog;->mIsTipCheckDontShowAllGuide:Z

    if-eqz v14, :cond_4

    const/4 v14, 0x1

    invoke-virtual {v4, v14}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_4
    new-instance v14, Lcom/ime/framework/view/TipsDialog$49;

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v4}, Lcom/ime/framework/view/TipsDialog$49;-><init>(Lcom/ime/framework/view/TipsDialog;Landroid/widget/CheckBox;)V

    invoke-virtual {v4, v14}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_5
    new-instance v14, Lcom/ime/framework/view/TipsDialog$50;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/ime/framework/view/TipsDialog$50;-><init>(Lcom/ime/framework/view/TipsDialog;)V

    invoke-virtual {v2, v14}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    new-instance v15, Lcom/ime/framework/view/TipsDialog$51;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/ime/framework/view/TipsDialog$51;-><init>(Lcom/ime/framework/view/TipsDialog;)V

    invoke-virtual {v14, v15}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    new-instance v15, Lcom/ime/framework/view/TipsDialog$52;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/ime/framework/view/TipsDialog$52;-><init>(Lcom/ime/framework/view/TipsDialog;)V

    invoke-virtual {v14, v15}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v14}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v13

    const/4 v14, 0x2

    invoke-virtual {v12, v14}, Landroid/view/Window;->addFlags(I)V

    const/high16 v14, 0x3f000000    # 0.5f

    invoke-virtual {v12, v14}, Landroid/view/Window;->setDimAmount(F)V

    move-object/from16 v0, p0

    iget v14, v0, Lcom/ime/framework/view/TipsDialog;->mCurrentInputMethod:I

    const/4 v15, 0x7

    if-eq v14, v15, :cond_6

    move-object/from16 v0, p0

    iget v14, v0, Lcom/ime/framework/view/TipsDialog;->mCurrentInputMethod:I

    const/16 v15, 0x8

    if-ne v14, v15, :cond_8

    :cond_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ime/framework/view/TipsDialog;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v14}, Lcom/ime/framework/common/InputManager;->getPopupKeyboardView()Lcom/ime/framework/view/PopupKeyboardView;

    move-result-object v14

    invoke-virtual {v14}, Lcom/ime/framework/view/PopupKeyboardView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    if-nez v3, :cond_7

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ime/framework/view/TipsDialog;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v15, "IS_POPUP_SHOW"

    const/16 v16, 0x0

    invoke-interface/range {v14 .. v16}, Lcom/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_7
    iput-object v3, v13, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    :goto_1
    const/16 v14, 0x3eb

    iput v14, v13, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v14, -0x2

    iput v14, v13, Landroid/view/WindowManager$LayoutParams;->width:I

    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v14}, Landroid/app/AlertDialog;->show()V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v5

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ime/framework/view/TipsDialog;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v15, "IS_POPUP_SHOW"

    const/16 v16, 0x0

    invoke-interface/range {v14 .. v16}, Lcom/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    sget-boolean v14, Lcom/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v14, :cond_0

    invoke-virtual {v5}, Landroid/view/WindowManager$BadTokenException;->printStackTrace()V

    goto/16 :goto_0

    :cond_8
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v14}, Lcom/ime/framework/view/AbstractKeyboardView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    if-nez v3, :cond_9

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ime/framework/view/TipsDialog;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v15, "IS_POPUP_SHOW"

    const/16 v16, 0x0

    invoke-interface/range {v14 .. v16}, Lcom/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_9
    iput-object v3, v13, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    goto :goto_1
.end method

.method public showTipsSwiftkeyGuideDialog(Landroid/view/View;)V
    .locals 13

    instance-of v10, p1, Lcom/ime/framework/view/AbstractKeyboardView;

    if-eqz v10, :cond_1

    check-cast p1, Lcom/ime/framework/view/AbstractKeyboardView;

    iput-object p1, p0, Lcom/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/ime/framework/view/AbstractKeyboardView;

    iget-object v10, p0, Lcom/ime/framework/view/TipsDialog;->context:Landroid/content/Context;

    if-nez v10, :cond_2

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v10, "SamsungIME"

    const-string v11, "[showTipsSwiftkeyGuideDialog] Bad object casting. the mCurrentView is not a instanceof AbstractKeyboardView "

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-object v10, p0, Lcom/ime/framework/view/TipsDialog;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v10}, Lcom/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v10

    iput v10, p0, Lcom/ime/framework/view/TipsDialog;->mCurrentInputMethod:I

    iget-object v10, p0, Lcom/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v10, :cond_3

    iget-object v10, p0, Lcom/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v10}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v10

    if-nez v10, :cond_0

    :cond_3
    iget-object v10, p0, Lcom/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v10}, Lcom/ime/framework/view/AbstractKeyboardView;->getSwiftkeyGuideLayoutRscId()I

    move-result v7

    iget-object v10, p0, Lcom/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v10}, Lcom/ime/framework/view/AbstractKeyboardView;->getSwiftkeyGuideDialogTitle()Ljava/lang/String;

    move-result-object v6

    if-eqz v7, :cond_0

    if-eqz v6, :cond_0

    iget-object v10, p0, Lcom/ime/framework/view/TipsDialog;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v11, "IS_POPUP_SHOW"

    const/4 v12, 0x1

    invoke-interface {v10, v11, v12}, Lcom/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    new-instance v0, Landroid/app/AlertDialog$Builder;

    new-instance v10, Landroid/view/ContextThemeWrapper;

    iget-object v11, p0, Lcom/ime/framework/view/TipsDialog;->context:Landroid/content/Context;

    iget-object v12, p0, Lcom/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v12}, Lcom/ime/framework/view/AbstractKeyboardView;->getDialogTheme()I

    move-result v12

    invoke-direct {v10, v11, v12}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v10}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v10, 0x1

    invoke-virtual {v0, v10}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    iget-object v10, p0, Lcom/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v10}, Lcom/ime/framework/view/AbstractKeyboardView;->getContext()Landroid/content/Context;

    move-result-object v10

    const-string v11, "layout_inflater"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    const/4 v10, 0x0

    invoke-virtual {v4, v7, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v10, 0x104000a

    new-instance v11, Lcom/ime/framework/view/TipsDialog$23;

    invoke-direct {v11, p0}, Lcom/ime/framework/view/TipsDialog$23;-><init>(Lcom/ime/framework/view/TipsDialog;)V

    invoke-virtual {v0, v10, v11}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v10, Lcom/ime/framework/view/TipsDialog$24;

    invoke-direct {v10, p0}, Lcom/ime/framework/view/TipsDialog$24;-><init>(Lcom/ime/framework/view/TipsDialog;)V

    invoke-virtual {v0, v10}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v10

    iput-object v10, p0, Lcom/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    iget-object v10, p0, Lcom/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    new-instance v11, Lcom/ime/framework/view/TipsDialog$25;

    invoke-direct {v11, p0}, Lcom/ime/framework/view/TipsDialog$25;-><init>(Lcom/ime/framework/view/TipsDialog;)V

    invoke-virtual {v10, v11}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v10, p0, Lcom/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v10}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v9

    const/4 v10, 0x2

    invoke-virtual {v8, v10}, Landroid/view/Window;->addFlags(I)V

    const/high16 v10, 0x3f000000    # 0.5f

    invoke-virtual {v8, v10}, Landroid/view/Window;->setDimAmount(F)V

    iget v10, p0, Lcom/ime/framework/view/TipsDialog;->mCurrentInputMethod:I

    const/4 v11, 0x7

    if-eq v10, v11, :cond_4

    iget v10, p0, Lcom/ime/framework/view/TipsDialog;->mCurrentInputMethod:I

    const/16 v11, 0x8

    if-ne v10, v11, :cond_7

    :cond_4
    iget-object v10, p0, Lcom/ime/framework/view/TipsDialog;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v10}, Lcom/ime/framework/common/InputManager;->getPopupKeyboardView()Lcom/ime/framework/view/PopupKeyboardView;

    move-result-object v5

    if-eqz v5, :cond_6

    invoke-virtual {v5}, Lcom/ime/framework/view/PopupKeyboardView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_5

    iget-object v10, p0, Lcom/ime/framework/view/TipsDialog;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v11, "IS_POPUP_SHOW"

    const/4 v12, 0x0

    invoke-interface {v10, v11, v12}, Lcom/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_5
    iput-object v1, v9, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    :cond_6
    :goto_1
    const/16 v10, 0x3eb

    iput v10, v9, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v10, -0x2

    iput v10, v9, Landroid/view/WindowManager$LayoutParams;->width:I

    :try_start_0
    iget-object v10, p0, Lcom/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v10}, Landroid/app/AlertDialog;->show()V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v2

    iget-object v10, p0, Lcom/ime/framework/view/TipsDialog;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v11, "IS_POPUP_SHOW"

    const/4 v12, 0x0

    invoke-interface {v10, v11, v12}, Lcom/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    sget-boolean v10, Lcom/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v10, :cond_0

    invoke-virtual {v2}, Landroid/view/WindowManager$BadTokenException;->printStackTrace()V

    goto/16 :goto_0

    :cond_7
    iget-object v10, p0, Lcom/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v10}, Lcom/ime/framework/view/AbstractKeyboardView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_8

    iget-object v10, p0, Lcom/ime/framework/view/TipsDialog;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v11, "IS_POPUP_SHOW"

    const/4 v12, 0x0

    invoke-interface {v10, v11, v12}, Lcom/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_8
    iput-object v1, v9, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    goto :goto_1
.end method

.method public showTipsTraceGuideDialog(Landroid/view/View;)V
    .locals 18

    move-object/from16 v0, p1

    instance-of v15, v0, Lcom/ime/framework/view/AbstractKeyboardView;

    if-eqz v15, :cond_1

    check-cast p1, Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ime/framework/view/TipsDialog;->context:Landroid/content/Context;

    if-nez v15, :cond_2

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v15, "SamsungIME"

    const-string v16, "[showTipsTraceGuideDialog] Bad object casting. the mCurrentView is not a instanceof AbstractKeyboardView "

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v15, :cond_3

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v15, :cond_0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v15}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v15

    if-nez v15, :cond_0

    :cond_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v15}, Lcom/ime/framework/view/AbstractKeyboardView;->getTipsTraceGuideLayoutRscId()I

    move-result v12

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v15}, Lcom/ime/framework/view/AbstractKeyboardView;->getTipsTraceGuideCheckBoxRscId()I

    move-result v10

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v15}, Lcom/ime/framework/view/AbstractKeyboardView;->getTipsTraceGuideDialogTitle()Ljava/lang/String;

    move-result-object v11

    if-eqz v12, :cond_0

    if-eqz v10, :cond_0

    if-eqz v11, :cond_0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ime/framework/view/TipsDialog;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v16, "IS_POPUP_SHOW"

    const/16 v17, 0x1

    invoke-interface/range {v15 .. v17}, Lcom/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ime/framework/view/TipsDialog;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v15}, Lcom/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Lcom/ime/framework/view/TipsDialog;->mCurrentInputMethod:I

    new-instance v2, Landroid/app/AlertDialog$Builder;

    new-instance v15, Landroid/view/ContextThemeWrapper;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/TipsDialog;->context:Landroid/content/Context;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/ime/framework/view/AbstractKeyboardView;->getDialogTheme()I

    move-result v17

    invoke-direct/range {v15 .. v17}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v2, v15}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v15, 0x1

    invoke-virtual {v2, v15}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v15}, Lcom/ime/framework/view/AbstractKeyboardView;->getContext()Landroid/content/Context;

    move-result-object v15

    const-string v16, "layout_inflater"

    invoke-virtual/range {v15 .. v16}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/LayoutInflater;

    const/4 v15, 0x0

    invoke-virtual {v8, v12, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2, v11}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v15, 0x7f1000f0

    invoke-virtual {v7, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/ime/framework/view/TipsDialog;->mIsUSAString:Z

    if-eqz v15, :cond_4

    const v15, 0x7f0d006c

    invoke-virtual {v9, v15}, Landroid/widget/TextView;->setText(I)V

    :cond_4
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "1. "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v9}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v9, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v15, 0x7f0d00f0

    new-instance v16, Lcom/ime/framework/view/TipsDialog$32;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/ime/framework/view/TipsDialog$32;-><init>(Lcom/ime/framework/view/TipsDialog;)V

    move-object/from16 v0, v16

    invoke-virtual {v2, v15, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v15, 0x7f0d01cd

    new-instance v16, Lcom/ime/framework/view/TipsDialog$33;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/ime/framework/view/TipsDialog$33;-><init>(Lcom/ime/framework/view/TipsDialog;)V

    move-object/from16 v0, v16

    invoke-virtual {v2, v15, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v15, 0x7f0d00ef

    new-instance v16, Lcom/ime/framework/view/TipsDialog$34;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/ime/framework/view/TipsDialog$34;-><init>(Lcom/ime/framework/view/TipsDialog;)V

    move-object/from16 v0, v16

    invoke-virtual {v2, v15, v0}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v7, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    if-eqz v5, :cond_7

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v15

    const-string v16, "CscFeature_Sip_CheckTutorialGuideDialogAsDefault"

    invoke-virtual/range {v15 .. v16}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v15, "true"

    invoke-virtual {v15, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_5

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/ime/framework/view/TipsDialog;->mIsTipCheckDontShowAllGuide:Z

    if-eqz v15, :cond_6

    :cond_5
    const/4 v15, 0x1

    invoke-virtual {v5, v15}, Landroid/widget/CheckBox;->setChecked(Z)V

    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/ime/framework/view/TipsDialog;->mIsTipCheckDontShowAllGuide:Z

    :cond_6
    new-instance v15, Lcom/ime/framework/view/TipsDialog$35;

    move-object/from16 v0, p0

    invoke-direct {v15, v0, v5}, Lcom/ime/framework/view/TipsDialog$35;-><init>(Lcom/ime/framework/view/TipsDialog;Landroid/widget/CheckBox;)V

    invoke-virtual {v5, v15}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_7
    new-instance v15, Lcom/ime/framework/view/TipsDialog$36;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/ime/framework/view/TipsDialog$36;-><init>(Lcom/ime/framework/view/TipsDialog;)V

    invoke-virtual {v2, v15}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    new-instance v16, Lcom/ime/framework/view/TipsDialog$37;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/ime/framework/view/TipsDialog$37;-><init>(Lcom/ime/framework/view/TipsDialog;)V

    invoke-virtual/range {v15 .. v16}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    new-instance v16, Lcom/ime/framework/view/TipsDialog$38;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/ime/framework/view/TipsDialog$38;-><init>(Lcom/ime/framework/view/TipsDialog;)V

    invoke-virtual/range {v15 .. v16}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v15}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/ime/framework/view/TipsDialog;->mCurrentInputMethod:I

    const/16 v16, 0x7

    move/from16 v0, v16

    if-eq v15, v0, :cond_8

    move-object/from16 v0, p0

    iget v15, v0, Lcom/ime/framework/view/TipsDialog;->mCurrentInputMethod:I

    const/16 v16, 0x8

    move/from16 v0, v16

    if-ne v15, v0, :cond_a

    :cond_8
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ime/framework/view/TipsDialog;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v15}, Lcom/ime/framework/common/InputManager;->getPopupKeyboardView()Lcom/ime/framework/view/PopupKeyboardView;

    move-result-object v15

    invoke-virtual {v15}, Lcom/ime/framework/view/PopupKeyboardView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    if-nez v3, :cond_9

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ime/framework/view/TipsDialog;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v16, "IS_POPUP_SHOW"

    const/16 v17, 0x0

    invoke-interface/range {v15 .. v17}, Lcom/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_9
    iput-object v3, v14, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    :goto_1
    const/16 v15, 0x3eb

    iput v15, v14, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v15, -0x2

    iput v15, v14, Landroid/view/WindowManager$LayoutParams;->width:I

    const/high16 v15, 0x3f000000    # 0.5f

    iput v15, v14, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    invoke-virtual {v13, v14}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    const/4 v15, 0x2

    invoke-virtual {v13, v15}, Landroid/view/Window;->addFlags(I)V

    :try_start_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v15}, Landroid/app/AlertDialog;->show()V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v6

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ime/framework/view/TipsDialog;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v16, "IS_POPUP_SHOW"

    const/16 v17, 0x0

    invoke-interface/range {v15 .. v17}, Lcom/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    sget-boolean v15, Lcom/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v15, :cond_0

    invoke-virtual {v6}, Landroid/view/WindowManager$BadTokenException;->printStackTrace()V

    goto/16 :goto_0

    :cond_a
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v15}, Lcom/ime/framework/view/AbstractKeyboardView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    if-nez v3, :cond_b

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ime/framework/view/TipsDialog;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v16, "IS_POPUP_SHOW"

    const/16 v17, 0x0

    invoke-interface/range {v15 .. v17}, Lcom/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_b
    iput-object v3, v14, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    goto :goto_1
.end method

.method public showTraceGuideDialog(Landroid/view/View;)V
    .locals 20

    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/ime/framework/view/AbstractKeyboardView;

    move/from16 v17, v0

    if-eqz v17, :cond_1

    check-cast p1, Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/TipsDialog;->context:Landroid/content/Context;

    move-object/from16 v17, v0

    if-nez v17, :cond_2

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v17, "SamsungIME"

    const-string v18, "[showTraceGuideDialog] Bad object casting. the mCurrentView is not a instanceof AbstractKeyboardView "

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/TipsDialog;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/ime/framework/common/InputManager;->isTipsPopup()Z

    move-result v17

    if-nez v17, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    move-object/from16 v17, v0

    if-eqz v17, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    move-object/from16 v17, v0

    if-eqz v17, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v17

    if-nez v17, :cond_0

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/ime/framework/view/AbstractKeyboardView;->getTraceGuideLayoutRscId()I

    move-result v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/ime/framework/view/AbstractKeyboardView;->getTraceGuideCheckBoxRscId()I

    move-result v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/ime/framework/view/AbstractKeyboardView;->getTraceGuideDialogTitle()Ljava/lang/String;

    move-result-object v13

    if-eqz v14, :cond_0

    if-eqz v12, :cond_0

    if-eqz v13, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/TipsDialog;->mRepository:Lcom/ime/framework/repository/Repository;

    move-object/from16 v17, v0

    const-string v18, "IS_POPUP_SHOW"

    const/16 v19, 0x1

    invoke-interface/range {v17 .. v19}, Lcom/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/TipsDialog;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/ime/framework/common/InputManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v10

    const-string v17, "first_trace_execution"

    const/16 v18, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-interface {v10, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v17

    if-nez v17, :cond_a

    const/16 v17, 0x1

    :goto_1
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/ime/framework/view/TipsDialog;->mIsCheckDontShowTraceGuide:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/TipsDialog;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ime/framework/view/TipsDialog;->mCurrentInputMethod:I

    new-instance v2, Landroid/app/AlertDialog$Builder;

    new-instance v17, Landroid/view/ContextThemeWrapper;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/TipsDialog;->context:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/ime/framework/view/AbstractKeyboardView;->getDialogTheme()I

    move-result v19

    invoke-direct/range {v17 .. v19}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    move-object/from16 v0, v17

    invoke-direct {v2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/ime/framework/view/AbstractKeyboardView;->getContext()Landroid/content/Context;

    move-result-object v17

    const-string v18, "layout_inflater"

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/LayoutInflater;

    const/16 v17, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v8, v14, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2, v13}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/ime/framework/view/TipsDialog;->mIsUSAString:Z

    move/from16 v17, v0

    if-eqz v17, :cond_4

    const v17, 0x7f10009e

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    const v17, 0x7f0d006c

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setText(I)V

    :cond_4
    const v17, 0x104000a

    new-instance v18, Lcom/ime/framework/view/TipsDialog$5;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/ime/framework/view/TipsDialog$5;-><init>(Lcom/ime/framework/view/TipsDialog;)V

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v2, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v7, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    if-eqz v5, :cond_7

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v17

    const-string v18, "CscFeature_Sip_CheckTutorialGuideDialogAsDefault"

    invoke-virtual/range {v17 .. v18}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v17, "true"

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/TipsDialog;->mRepository:Lcom/ime/framework/repository/Repository;

    move-object/from16 v17, v0

    const-string v18, "IS_INTERMEDIATE_TRACEGUIDE_CHECKBOX_TICKED"

    const/16 v19, 0x0

    invoke-interface/range {v17 .. v19}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_6

    :cond_5
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/ime/framework/view/TipsDialog;->mIsCheckDontShowTraceGuide:Z

    :cond_6
    new-instance v17, Lcom/ime/framework/view/TipsDialog$6;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v5}, Lcom/ime/framework/view/TipsDialog$6;-><init>(Lcom/ime/framework/view/TipsDialog;Landroid/widget/CheckBox;)V

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_7
    new-instance v17, Lcom/ime/framework/view/TipsDialog$7;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/ime/framework/view/TipsDialog$7;-><init>(Lcom/ime/framework/view/TipsDialog;)V

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/ime/framework/view/TipsDialog;->getOnDismissListener(Z)Landroid/content/DialogInterface$OnDismissListener;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v15

    invoke-virtual {v15}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v16

    const/16 v17, 0x2

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/view/Window;->addFlags(I)V

    const/high16 v17, 0x3f000000    # 0.5f

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/view/Window;->setDimAmount(F)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ime/framework/view/TipsDialog;->mCurrentInputMethod:I

    move/from16 v17, v0

    const/16 v18, 0x7

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ime/framework/view/TipsDialog;->mCurrentInputMethod:I

    move/from16 v17, v0

    const/16 v18, 0x8

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_b

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/TipsDialog;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/ime/framework/common/InputManager;->getPopupKeyboardView()Lcom/ime/framework/view/PopupKeyboardView;

    move-result-object v9

    if-eqz v9, :cond_9

    invoke-virtual {v9}, Lcom/ime/framework/view/PopupKeyboardView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    if-eqz v3, :cond_0

    move-object/from16 v0, v16

    iput-object v3, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    :cond_9
    :goto_2
    const/16 v17, 0x3eb

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v17, -0x2

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/app/AlertDialog;->show()V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v6

    sget-boolean v17, Lcom/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v17, :cond_0

    invoke-virtual {v6}, Landroid/view/WindowManager$BadTokenException;->printStackTrace()V

    goto/16 :goto_0

    :cond_a
    const/16 v17, 0x0

    goto/16 :goto_1

    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/ime/framework/view/AbstractKeyboardView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    if-eqz v3, :cond_0

    move-object/from16 v0, v16

    iput-object v3, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    goto :goto_2
.end method

.method public showXt9PersonalizerAttentionDialog(Landroid/view/View;)V
    .locals 17

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ime/framework/view/TipsDialog;->mAttentionDialog:Landroid/app/AlertDialog;

    if-eqz v14, :cond_1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ime/framework/view/TipsDialog;->mAttentionDialog:Landroid/app/AlertDialog;

    invoke-virtual {v14}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v14

    if-eqz v14, :cond_1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ime/framework/view/TipsDialog;->mAttentionDialog:Landroid/app/AlertDialog;

    const/4 v15, -0x2

    invoke-virtual {v14, v15}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v9

    if-eqz v9, :cond_1

    const-string v14, ""

    invoke-virtual {v9}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p1

    instance-of v14, v0, Lcom/ime/framework/view/AbstractKeyboardView;

    if-eqz v14, :cond_6

    check-cast p1, Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ime/framework/view/TipsDialog;->context:Landroid/content/Context;

    if-eqz v14, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ime/framework/view/TipsDialog;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v14}, Lcom/ime/framework/common/InputManager;->isTipsPopup()Z

    move-result v14

    if-nez v14, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v14}, Lcom/ime/framework/view/AbstractKeyboardView;->getXt9PersonalizerAttentionGuideLayoutRscId()I

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v14}, Lcom/ime/framework/view/AbstractKeyboardView;->getSwiftkeyGuideDialogTitle()Ljava/lang/String;

    move-result-object v10

    if-eqz v13, :cond_0

    if-eqz v10, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ime/framework/view/TipsDialog;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v15, "IS_POPUP_SHOW"

    const/16 v16, 0x1

    invoke-interface/range {v14 .. v16}, Lcom/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    new-instance v2, Landroid/app/AlertDialog$Builder;

    new-instance v14, Landroid/view/ContextThemeWrapper;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ime/framework/view/TipsDialog;->context:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/ime/framework/view/AbstractKeyboardView;->getDialogTheme()I

    move-result v16

    invoke-direct/range {v14 .. v16}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v2, v14}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v14, 0x1

    invoke-virtual {v2, v14}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v14}, Lcom/ime/framework/view/AbstractKeyboardView;->getContext()Landroid/content/Context;

    move-result-object v14

    const-string v15, "layout_inflater"

    invoke-virtual {v14, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/LayoutInflater;

    const/4 v14, 0x0

    invoke-virtual {v6, v13, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2, v10}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v14, 0x104000a

    new-instance v15, Lcom/ime/framework/view/TipsDialog$20;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/ime/framework/view/TipsDialog$20;-><init>(Lcom/ime/framework/view/TipsDialog;)V

    invoke-virtual {v2, v14, v15}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ime/framework/view/TipsDialog;->context:Landroid/content/Context;

    const-string v15, "keyguard"

    invoke-virtual {v14, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/KeyguardManager;

    invoke-virtual {v7}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v14

    if-nez v14, :cond_2

    const v14, 0x7f0d00b6

    new-instance v15, Lcom/ime/framework/view/TipsDialog$21;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/ime/framework/view/TipsDialog$21;-><init>(Lcom/ime/framework/view/TipsDialog;)V

    invoke-virtual {v2, v14, v15}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :cond_2
    new-instance v14, Lcom/ime/framework/view/TipsDialog$22;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/ime/framework/view/TipsDialog$22;-><init>(Lcom/ime/framework/view/TipsDialog;)V

    invoke-virtual {v2, v14}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/ime/framework/view/TipsDialog;->mAttentionDialog:Landroid/app/AlertDialog;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ime/framework/view/TipsDialog;->mAttentionDialog:Landroid/app/AlertDialog;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/ime/framework/view/TipsDialog;->getOnDismissListener(Z)Landroid/content/DialogInterface$OnDismissListener;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ime/framework/view/TipsDialog;->mAttentionDialog:Landroid/app/AlertDialog;

    invoke-virtual {v14}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v11

    const/4 v14, 0x2

    invoke-virtual {v11, v14}, Landroid/view/Window;->addFlags(I)V

    const/high16 v14, 0x3f000000    # 0.5f

    invoke-virtual {v11, v14}, Landroid/view/Window;->setDimAmount(F)V

    invoke-virtual {v11}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v12

    move-object/from16 v0, p0

    iget v14, v0, Lcom/ime/framework/view/TipsDialog;->mCurrentInputMethod:I

    const/4 v15, 0x7

    if-eq v14, v15, :cond_3

    move-object/from16 v0, p0

    iget v14, v0, Lcom/ime/framework/view/TipsDialog;->mCurrentInputMethod:I

    const/16 v15, 0x8

    if-ne v14, v15, :cond_7

    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ime/framework/view/TipsDialog;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v14}, Lcom/ime/framework/common/InputManager;->getPopupKeyboardView()Lcom/ime/framework/view/PopupKeyboardView;

    move-result-object v8

    if-eqz v8, :cond_4

    invoke-virtual {v8}, Lcom/ime/framework/view/PopupKeyboardView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    if-eqz v3, :cond_0

    iput-object v3, v12, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    :cond_4
    :goto_1
    const/16 v14, 0x3eb

    iput v14, v12, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v14, -0x2

    iput v14, v12, Landroid/view/WindowManager$LayoutParams;->width:I

    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ime/framework/view/TipsDialog;->mAttentionDialog:Landroid/app/AlertDialog;

    invoke-virtual {v14}, Landroid/app/AlertDialog;->show()V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    :goto_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ime/framework/view/TipsDialog;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ime/framework/view/TipsDialog;->mAttentionDialog:Landroid/app/AlertDialog;

    invoke-interface {v14, v15}, Lcom/ime/framework/common/InputManager;->setPopupDialog(Landroid/app/Dialog;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ime/framework/view/TipsDialog;->mInputManager:Lcom/ime/framework/common/InputManager;

    const/4 v15, 0x1

    invoke-interface {v14, v15}, Lcom/ime/framework/common/InputManager;->setDontShowXt9PersonalizerAttentionConsecutively(Z)V

    goto/16 :goto_0

    :cond_6
    const-string v14, "SamsungIME"

    const-string v15, "[showXt9PersonalizerAttentionDialog] Bad object casting. the mCurrentView is not a instanceof AbstractKeyboardView "

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_7
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v14}, Lcom/ime/framework/view/AbstractKeyboardView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    if-eqz v3, :cond_0

    iput-object v3, v12, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    goto :goto_1

    :catch_0
    move-exception v4

    sget-boolean v14, Lcom/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v14, :cond_5

    invoke-virtual {v4}, Landroid/view/WindowManager$BadTokenException;->printStackTrace()V

    goto :goto_2
.end method

.method public showXt9_9RemoveTermDialog(Ljava/lang/String;ILandroid/view/View;)V
    .locals 11

    const/4 v10, 0x1

    iget-object v8, p0, Lcom/ime/framework/view/TipsDialog;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v2

    instance-of v8, p3, Lcom/ime/framework/view/AbstractKeyboardView;

    if-eqz v8, :cond_1

    check-cast p3, Lcom/ime/framework/view/AbstractKeyboardView;

    iput-object p3, p0, Lcom/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/ime/framework/view/AbstractKeyboardView;

    if-nez v2, :cond_2

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v8, "SamsungIME"

    const-string v9, "[showXt9_9RemoveTermDialog] Bad object casting. the mCurrentView is not a instanceof AbstractKeyboardView "

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1}, Lcom/ime/framework/view/TipsDialog;->isAvailableShowXt9_9RemoveDialog(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v8}, Lcom/ime/framework/view/AbstractKeyboardView;->removeAllMsg()V

    iget-object v8, p0, Lcom/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v8}, Lcom/ime/framework/view/AbstractKeyboardView;->dismissPopupKeyboard()V

    iget-object v8, p0, Lcom/ime/framework/view/TipsDialog;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v8}, Lcom/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v8

    iput v8, p0, Lcom/ime/framework/view/TipsDialog;->mCurrentInputMethod:I

    iget-object v8, p0, Lcom/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v8}, Lcom/ime/framework/view/AbstractKeyboardView;->getXt9_9RemoveTermDialogTitle()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/ime/framework/view/TipsDialog;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v9, "IS_POPUP_SHOW"

    invoke-interface {v8, v9, v10}, Lcom/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    new-instance v0, Landroid/app/AlertDialog$Builder;

    new-instance v8, Landroid/view/ContextThemeWrapper;

    iget-object v9, p0, Lcom/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v9}, Lcom/ime/framework/view/AbstractKeyboardView;->getDialogTheme()I

    move-result v9

    invoke-direct {v8, v2, v9}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v8}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v10}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    iget-object v8, p0, Lcom/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v8, p1}, Lcom/ime/framework/view/AbstractKeyboardView;->getXt9_9RemoveTermDialogMsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v8, 0x104000a

    new-instance v9, Lcom/ime/framework/view/TipsDialog$64;

    invoke-direct {v9, p0, p1}, Lcom/ime/framework/view/TipsDialog$64;-><init>(Lcom/ime/framework/view/TipsDialog;Ljava/lang/String;)V

    invoke-virtual {v0, v8, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/high16 v8, 0x1040000

    new-instance v9, Lcom/ime/framework/view/TipsDialog$65;

    invoke-direct {v9, p0}, Lcom/ime/framework/view/TipsDialog$65;-><init>(Lcom/ime/framework/view/TipsDialog;)V

    invoke-virtual {v0, v8, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Lcom/ime/framework/view/TipsDialog;->getOnDismissListener(Z)Landroid/content/DialogInterface$OnDismissListener;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v4}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    iget v8, p0, Lcom/ime/framework/view/TipsDialog;->mCurrentInputMethod:I

    const/4 v9, 0x7

    if-eq v8, v9, :cond_3

    iget v8, p0, Lcom/ime/framework/view/TipsDialog;->mCurrentInputMethod:I

    const/16 v9, 0x8

    if-ne v8, v9, :cond_5

    :cond_3
    iget-object v8, p0, Lcom/ime/framework/view/TipsDialog;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/ime/framework/common/InputManager;->getPopupKeyboardView()Lcom/ime/framework/view/PopupKeyboardView;

    move-result-object v8

    invoke-virtual {v8}, Lcom/ime/framework/view/PopupKeyboardView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_0

    iput-object v1, v6, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    :goto_1
    const/16 v8, 0x3eb

    iput v8, v6, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v8, -0x2

    iput v8, v6, Landroid/view/WindowManager$LayoutParams;->width:I

    const/high16 v8, 0x3f000000    # 0.5f

    iput v8, v6, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    invoke-virtual {v5, v6}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    const/4 v8, 0x2

    invoke-virtual {v5, v8}, Landroid/view/Window;->addFlags(I)V

    :try_start_0
    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    :goto_2
    iget-object v8, p0, Lcom/ime/framework/view/TipsDialog;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v8, v4}, Lcom/ime/framework/common/InputManager;->setPopupDialog(Landroid/app/Dialog;)V

    goto/16 :goto_0

    :cond_5
    iget-object v8, p0, Lcom/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v8}, Lcom/ime/framework/view/AbstractKeyboardView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_0

    iput-object v1, v6, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    goto :goto_1

    :catch_0
    move-exception v3

    sget-boolean v8, Lcom/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v8, :cond_4

    invoke-virtual {v3}, Landroid/view/WindowManager$BadTokenException;->printStackTrace()V

    goto :goto_2
.end method
