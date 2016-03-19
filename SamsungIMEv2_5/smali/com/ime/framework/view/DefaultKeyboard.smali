.class public Lcom/ime/framework/view/DefaultKeyboard;
.super Lcom/ime/framework/view/Keyboard;
.source "DefaultKeyboard.java"


# instance fields
.field private LAST_PHRASE_INDEX:I

.field private mDefaultFloatingWidth:I

.field private mDefaultKeyIndex:I

.field private mDefaultWidth:I

.field protected mInputManager:Lcom/ime/framework/common/InputManager;

.field private mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

.field private mIsLandscape:Z

.field private mIsMinikeyboard:Z

.field private mIsNormalEditorType:Z

.field private mIsQwerty:Z

.field private mIsTabletModel:Z

.field private mIsUseCustomArea:Z

.field private mPopupMiniKeyboardType:I

.field private mShiftStateController:Lcom/ime/framework/common/ShiftStateController;

.field private mUseCustomArea:[Z


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/ime/framework/view/Keyboard;-><init>(Landroid/content/Context;I)V

    const/4 v0, 0x5

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/ime/framework/view/DefaultKeyboard;->mUseCustomArea:[Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/ime/framework/view/DefaultKeyboard;->mDefaultKeyIndex:I

    const/16 v0, 0x8

    iput v0, p0, Lcom/ime/framework/view/DefaultKeyboard;->LAST_PHRASE_INDEX:I

    const/16 v0, 0x9

    iput v0, p0, Lcom/ime/framework/view/DefaultKeyboard;->mDefaultWidth:I

    const/4 v0, 0x6

    iput v0, p0, Lcom/ime/framework/view/DefaultKeyboard;->mDefaultFloatingWidth:I

    invoke-static {}, Lcom/ime/framework/common/InputManagerImpl;->getInstance()Lcom/ime/framework/common/InputManager;

    move-result-object v0

    iput-object v0, p0, Lcom/ime/framework/view/DefaultKeyboard;->mInputManager:Lcom/ime/framework/common/InputManager;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/ime/framework/view/Keyboard;-><init>(Landroid/content/Context;II)V

    const/4 v0, 0x5

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/ime/framework/view/DefaultKeyboard;->mUseCustomArea:[Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/ime/framework/view/DefaultKeyboard;->mDefaultKeyIndex:I

    const/16 v0, 0x8

    iput v0, p0, Lcom/ime/framework/view/DefaultKeyboard;->LAST_PHRASE_INDEX:I

    const/16 v0, 0x9

    iput v0, p0, Lcom/ime/framework/view/DefaultKeyboard;->mDefaultWidth:I

    const/4 v0, 0x6

    iput v0, p0, Lcom/ime/framework/view/DefaultKeyboard;->mDefaultFloatingWidth:I

    invoke-static {}, Lcom/ime/framework/common/InputManagerImpl;->getInstance()Lcom/ime/framework/common/InputManager;

    move-result-object v0

    iput-object v0, p0, Lcom/ime/framework/view/DefaultKeyboard;->mInputManager:Lcom/ime/framework/common/InputManager;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/CharSequence;II)V
    .locals 8

    const v7, 0x7f080058

    const v6, 0x7f0200f3

    const/4 v5, 0x0

    const/16 v3, -0x459

    const/4 v4, 0x1

    invoke-direct/range {p0 .. p5}, Lcom/ime/framework/view/Keyboard;-><init>(Landroid/content/Context;ILjava/lang/CharSequence;II)V

    const/4 v2, 0x5

    new-array v2, v2, [Z

    iput-object v2, p0, Lcom/ime/framework/view/DefaultKeyboard;->mUseCustomArea:[Z

    const/4 v2, -0x1

    iput v2, p0, Lcom/ime/framework/view/DefaultKeyboard;->mDefaultKeyIndex:I

    const/16 v2, 0x8

    iput v2, p0, Lcom/ime/framework/view/DefaultKeyboard;->LAST_PHRASE_INDEX:I

    const/16 v2, 0x9

    iput v2, p0, Lcom/ime/framework/view/DefaultKeyboard;->mDefaultWidth:I

    const/4 v2, 0x6

    iput v2, p0, Lcom/ime/framework/view/DefaultKeyboard;->mDefaultFloatingWidth:I

    invoke-static {}, Lcom/ime/framework/common/InputManagerImpl;->getInstance()Lcom/ime/framework/common/InputManager;

    move-result-object v2

    iput-object v2, p0, Lcom/ime/framework/view/DefaultKeyboard;->mInputManager:Lcom/ime/framework/common/InputManager;

    iget-object v2, p0, Lcom/ime/framework/view/DefaultKeyboard;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/ime/framework/common/InputManager;->getUniversalSwitchMode()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/ime/framework/view/DefaultKeyboard;->getKeys()Ljava/util/List;

    move-result-object v1

    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ime/framework/view/Keyboard$Key;

    new-array v2, v4, [I

    aput v3, v2, v5

    iput-object v2, v0, Lcom/ime/framework/view/Keyboard$Key;->codes:[I

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/ime/framework/view/Keyboard$Key;->label:Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/ime/framework/view/DefaultKeyboard;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, v0, Lcom/ime/framework/view/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    :cond_0
    iget-object v2, p0, Lcom/ime/framework/view/DefaultKeyboard;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/ime/framework/common/InputManager;->isCurrentCarModeKnobSIP()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/ime/framework/view/DefaultKeyboard;->getKeys()Ljava/util/List;

    move-result-object v1

    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ime/framework/view/Keyboard$Key;

    new-array v2, v4, [I

    aput v3, v2, v5

    iput-object v2, v0, Lcom/ime/framework/view/Keyboard$Key;->codes:[I

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/ime/framework/view/Keyboard$Key;->label:Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/ime/framework/view/DefaultKeyboard;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, v0, Lcom/ime/framework/view/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    iget v2, v0, Lcom/ime/framework/view/Keyboard$Key;->width:I

    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    mul-int/2addr v2, v3

    iget-object v3, p0, Lcom/ime/framework/view/DefaultKeyboard;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v3, v7}, Lcom/ime/framework/common/InputManager;->getFractionOrientedWidth(I)I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p0, v2}, Lcom/ime/framework/view/DefaultKeyboard;->setTotalWidth(I)V

    iget-object v2, p0, Lcom/ime/framework/view/DefaultKeyboard;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2, v7}, Lcom/ime/framework/common/InputManager;->getFractionOrientedWidth(I)I

    move-result v2

    iput v2, v0, Lcom/ime/framework/view/Keyboard$Key;->width:I

    iput-boolean v4, p0, Lcom/ime/framework/view/DefaultKeyboard;->mIsMinikeyboard:Z

    :cond_1
    invoke-virtual {p0}, Lcom/ime/framework/view/DefaultKeyboard;->getKeys()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1, p4}, Lcom/ime/framework/view/DefaultKeyboard;->setKeyEdgeFlags(Ljava/util/List;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/CharSequence;IIZZ)V
    .locals 30

    invoke-direct/range {p0 .. p5}, Lcom/ime/framework/view/Keyboard;-><init>(Landroid/content/Context;ILjava/lang/CharSequence;II)V

    const/16 v25, 0x5

    move/from16 v0, v25

    new-array v0, v0, [Z

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ime/framework/view/DefaultKeyboard;->mUseCustomArea:[Z

    const/16 v25, -0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ime/framework/view/DefaultKeyboard;->mDefaultKeyIndex:I

    const/16 v25, 0x8

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ime/framework/view/DefaultKeyboard;->LAST_PHRASE_INDEX:I

    const/16 v25, 0x9

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ime/framework/view/DefaultKeyboard;->mDefaultWidth:I

    const/16 v25, 0x6

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ime/framework/view/DefaultKeyboard;->mDefaultFloatingWidth:I

    invoke-static {}, Lcom/ime/framework/common/InputManagerImpl;->getInstance()Lcom/ime/framework/common/InputManager;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ime/framework/view/DefaultKeyboard;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/view/DefaultKeyboard;->getKeys()Ljava/util/List;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/DefaultKeyboard;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Lcom/ime/framework/common/InputManager;->getInputModeManager()Lcom/ime/framework/inputmode/InputModeManager;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ime/framework/view/DefaultKeyboard;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    if-eqz v8, :cond_b

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v25

    if-lez v25, :cond_b

    const/4 v4, 0x0

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v14

    :goto_0
    if-ge v4, v14, :cond_a

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/ime/framework/view/Keyboard$Key;

    iget-object v0, v7, Lcom/ime/framework/view/Keyboard$Key;->label:Ljava/lang/CharSequence;

    move-object/from16 v25, v0

    const-string v26, "\n"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_0

    iget-object v0, v7, Lcom/ime/framework/view/Keyboard$Key;->codes:[I

    move-object/from16 v25, v0

    const/16 v26, 0x0

    const/16 v27, -0x101

    aput v27, v25, v26

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/DefaultKeyboard;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Lcom/ime/framework/common/InputManager;->isShortCutMode()Z

    move-result v25

    if-eqz v25, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/DefaultKeyboard;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode()Z

    move-result v25

    if-nez v25, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/DefaultKeyboard;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v25

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/DefaultKeyboard;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/ime/framework/inputmode/InputModeManager;->isFloatingPhonepadKeyboardForMultiWindow()Z

    move-result v25

    if-nez v25, :cond_3

    :cond_1
    iget-object v0, v7, Lcom/ime/framework/view/Keyboard$Key;->codes:[I

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aget v25, v25, v26

    invoke-static/range {v25 .. v25}, Lcom/ime/framework/input/shortcutphrase/ShortcutPhraseController;->isSingleDigitNumber(I)Z

    move-result v25

    if-eqz v25, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/DefaultKeyboard;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Lcom/ime/framework/common/InputManager;->isChnMode()Z

    move-result v25

    if-eqz v25, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/DefaultKeyboard;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Lcom/ime/framework/common/InputManager;->getInputLanguage()I

    move-result v25

    const v26, 0x7a685457

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_3

    :cond_2
    invoke-static {}, Lcom/ime/framework/common/ShiftStateControllerImpl;->getInstance()Lcom/ime/framework/common/ShiftStateController;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ime/framework/view/DefaultKeyboard;->mShiftStateController:Lcom/ime/framework/common/ShiftStateController;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/DefaultKeyboard;->mShiftStateController:Lcom/ime/framework/common/ShiftStateController;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-interface/range {v25 .. v26}, Lcom/ime/framework/common/ShiftStateController;->setCapsLockState(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/DefaultKeyboard;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Lcom/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    sget v25, Lcom/ime/framework/view/AbstractKeyboardView;->parent_Key_INDEX:I

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/ime/framework/view/DefaultKeyboard;->getShortCutPhrasePrefKey(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    iput-object v0, v7, Lcom/ime/framework/view/Keyboard$Key;->label:Ljava/lang/CharSequence;

    new-instance v17, Landroid/graphics/Paint;

    invoke-direct/range {v17 .. v17}, Landroid/graphics/Paint;-><init>()V

    const v25, 0x7f0900eb

    move-object/from16 v0, v19

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v25

    move/from16 v0, v25

    float-to-int v12, v0

    const v25, 0x7f0900ec

    move-object/from16 v0, v19

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v25

    move/from16 v0, v25

    float-to-int v10, v0

    iget-object v0, v7, Lcom/ime/framework/view/Keyboard$Key;->label:Ljava/lang/CharSequence;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v25

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v22, v0

    const/16 v13, 0x8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/DefaultKeyboard;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Lcom/ime/framework/common/InputManager;->getInputModeManager()Lcom/ime/framework/inputmode/InputModeManager;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v6

    move/from16 v0, v22

    if-ge v0, v12, :cond_4

    iput v10, v7, Lcom/ime/framework/view/Keyboard$Key;->width:I

    :goto_1
    iget v0, v7, Lcom/ime/framework/view/Keyboard$Key;->width:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/ime/framework/view/DefaultKeyboard;->setDisplayWidth(I)V

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_4
    const/4 v9, 0x0

    const v25, 0x7f0902d0

    :try_start_0
    move-object/from16 v0, v19

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v25

    move/from16 v0, v25

    float-to-int v9, v0

    :goto_2
    int-to-float v0, v9

    move/from16 v25, v0

    move-object/from16 v0, v17

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-static {}, Lcom/ime/framework/common/FontManagerImpl;->getInstance()Lcom/ime/framework/common/FontManager;

    move-result-object v25

    const-string v26, "ROBOTO_REGULAR"

    sget-object v27, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-interface/range {v25 .. v27}, Lcom/ime/framework/common/FontManager;->getFont(Ljava/lang/String;Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    move-result-object v25

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v0, v7, Lcom/ime/framework/view/Keyboard$Key;->label:Ljava/lang/CharSequence;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v25

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v22, v0

    const v25, 0x7f0900e9

    move-object/from16 v0, v19

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v25

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/DefaultKeyboard;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Lcom/ime/framework/common/InputManager;->isOrientationLandscape()Z

    move-result v25

    if-eqz v25, :cond_7

    invoke-static {}, Lcom/ime/framework/repository/PropertyItems;->getWindowHeight()I

    move-result v20

    :goto_3
    const/16 v25, 0x8

    move/from16 v0, v25

    if-ne v6, v0, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/DefaultKeyboard;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Lcom/ime/framework/common/InputManager;->getFloatingKeyboardWidth()I

    move-result v20

    :cond_5
    const v25, 0x7f0900ea

    move-object/from16 v0, v19

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v25

    move/from16 v0, v25

    float-to-int v11, v0

    sub-int v25, v20, v11

    sub-int v23, v25, v16

    move/from16 v24, v22

    move/from16 v0, v24

    move/from16 v1, v23

    if-le v0, v1, :cond_9

    const-string v25, "..."

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v25

    move/from16 v0, v25

    float-to-int v2, v0

    sub-int v23, v23, v2

    iget-object v0, v7, Lcom/ime/framework/view/Keyboard$Key;->label:Ljava/lang/CharSequence;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v21

    const/16 v18, 0x0

    :goto_4
    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v25

    move/from16 v0, v18

    move/from16 v1, v25

    if-eq v0, v1, :cond_8

    move/from16 v0, v24

    move/from16 v1, v23

    if-le v0, v1, :cond_8

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v18

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v25

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v26, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v27, v0

    div-float v26, v26, v27

    mul-float v25, v25, v26

    move/from16 v0, v25

    float-to-double v0, v0

    move-wide/from16 v26, v0

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->floor(D)D

    move-result-wide v26

    move-wide/from16 v0, v26

    double-to-int v15, v0

    const/16 v25, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v25

    invoke-virtual {v0, v1, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v25

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v24, v0

    goto :goto_4

    :catch_0
    move-exception v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/DefaultKeyboard;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/ime/framework/inputmode/InputModeManager;->enableSecondarySymbol()Z

    move-result v25

    if-eqz v25, :cond_6

    const v25, 0x7f09024c

    move-object/from16 v0, v19

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v25

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-double v0, v0

    move-wide/from16 v26, v0

    const-wide v28, 0x3fe999999999999aL    # 0.8

    mul-double v26, v26, v28

    move-wide/from16 v0, v26

    double-to-int v9, v0

    goto/16 :goto_2

    :cond_6
    const v25, 0x7f09024b

    move-object/from16 v0, v19

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v25

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-double v0, v0

    move-wide/from16 v26, v0

    const-wide v28, 0x3fe999999999999aL    # 0.8

    mul-double v26, v26, v28

    move-wide/from16 v0, v26

    double-to-int v9, v0

    goto/16 :goto_2

    :cond_7
    invoke-static {}, Lcom/ime/framework/repository/PropertyItems;->getWindowWidth()I

    move-result v20

    goto/16 :goto_3

    :cond_8
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "..."

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    iput-object v0, v7, Lcom/ime/framework/view/Keyboard$Key;->label:Ljava/lang/CharSequence;

    sub-int v25, v20, v11

    move/from16 v0, v25

    iput v0, v7, Lcom/ime/framework/view/Keyboard$Key;->width:I

    goto/16 :goto_1

    :cond_9
    const v25, 0x7f0900e9

    move-object/from16 v0, v19

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v25

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v25, v0

    add-int v25, v25, v22

    move/from16 v0, v25

    iput v0, v7, Lcom/ime/framework/view/Keyboard$Key;->width:I

    goto/16 :goto_1

    :cond_a
    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-direct {v0, v8, v1}, Lcom/ime/framework/view/DefaultKeyboard;->setKeyEdgeFlags(Ljava/util/List;I)V

    if-eqz p7, :cond_b

    const/4 v5, 0x0

    if-eqz p6, :cond_d

    const/16 v25, -0x1

    move/from16 v0, p4

    move/from16 v1, v25

    if-ne v0, v1, :cond_c

    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/ime/framework/view/Keyboard$Key;

    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput-boolean v0, v1, Lcom/ime/framework/view/Keyboard$Key;->pressed:Z

    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ime/framework/view/DefaultKeyboard;->mDefaultKeyIndex:I

    :cond_b
    :goto_5
    return-void

    :cond_c
    invoke-interface/range {p3 .. p3}, Ljava/lang/CharSequence;->length()I

    move-result v25

    div-int/lit8 v5, v25, 0x2

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/ime/framework/view/Keyboard$Key;

    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput-boolean v0, v1, Lcom/ime/framework/view/Keyboard$Key;->pressed:Z

    move-object/from16 v0, p0

    iput v5, v0, Lcom/ime/framework/view/DefaultKeyboard;->mDefaultKeyIndex:I

    goto :goto_5

    :cond_d
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v25

    add-int/lit8 v5, v25, -0x1

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/ime/framework/view/Keyboard$Key;

    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput-boolean v0, v1, Lcom/ime/framework/view/Keyboard$Key;->pressed:Z

    move-object/from16 v0, p0

    iput v5, v0, Lcom/ime/framework/view/DefaultKeyboard;->mDefaultKeyIndex:I

    goto :goto_5
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/CharSequence;[Landroid/graphics/drawable/Drawable;[IIIZZ)V
    .locals 11

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move/from16 v5, p6

    move/from16 v6, p7

    invoke-direct/range {v1 .. v6}, Lcom/ime/framework/view/Keyboard;-><init>(Landroid/content/Context;ILjava/lang/CharSequence;II)V

    const/4 v1, 0x5

    new-array v1, v1, [Z

    iput-object v1, p0, Lcom/ime/framework/view/DefaultKeyboard;->mUseCustomArea:[Z

    const/4 v1, -0x1

    iput v1, p0, Lcom/ime/framework/view/DefaultKeyboard;->mDefaultKeyIndex:I

    const/16 v1, 0x8

    iput v1, p0, Lcom/ime/framework/view/DefaultKeyboard;->LAST_PHRASE_INDEX:I

    const/16 v1, 0x9

    iput v1, p0, Lcom/ime/framework/view/DefaultKeyboard;->mDefaultWidth:I

    const/4 v1, 0x6

    iput v1, p0, Lcom/ime/framework/view/DefaultKeyboard;->mDefaultFloatingWidth:I

    invoke-static {}, Lcom/ime/framework/common/InputManagerImpl;->getInstance()Lcom/ime/framework/common/InputManager;

    move-result-object v1

    iput-object v1, p0, Lcom/ime/framework/view/DefaultKeyboard;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-virtual {p0}, Lcom/ime/framework/view/DefaultKeyboard;->getKeys()Ljava/util/List;

    move-result-object v9

    if-eqz v9, :cond_3

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    const/4 v7, 0x0

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    :goto_0
    if-ge v7, v10, :cond_2

    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/ime/framework/view/Keyboard$Key;

    iget-object v1, p0, Lcom/ime/framework/view/DefaultKeyboard;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->getUniversalSwitchMode()Z

    move-result v1

    if-eqz v1, :cond_1

    move-object/from16 v0, p5

    array-length v1, v0

    if-ne v7, v1, :cond_1

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const/16 v3, -0x459

    aput v3, v1, v2

    iput-object v1, v8, Lcom/ime/framework/view/Keyboard$Key;->codes:[I

    const/4 v1, 0x0

    iput-object v1, v8, Lcom/ime/framework/view/Keyboard$Key;->label:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/ime/framework/view/DefaultKeyboard;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200f3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v8, Lcom/ime/framework/view/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    :cond_0
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aget v3, p5, v7

    aput v3, v1, v2

    iput-object v1, v8, Lcom/ime/framework/view/Keyboard$Key;->codes:[I

    const/4 v1, 0x0

    iput-object v1, v8, Lcom/ime/framework/view/Keyboard$Key;->label:Ljava/lang/CharSequence;

    const/4 v1, 0x0

    iput-object v1, v8, Lcom/ime/framework/view/Keyboard$Key;->text:Ljava/lang/CharSequence;

    aget-object v1, p4, v7

    iput-object v1, v8, Lcom/ime/framework/view/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    iget-object v1, v8, Lcom/ime/framework/view/Keyboard$Key;->codes:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    const/16 v2, -0x89

    if-ne v1, v2, :cond_0

    const v1, 0x7f0d00cc

    invoke-virtual {p1, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v8, Lcom/ime/framework/view/Keyboard$Key;->label:Ljava/lang/CharSequence;

    goto :goto_1

    :cond_2
    move/from16 v0, p6

    invoke-direct {p0, v9, v0}, Lcom/ime/framework/view/DefaultKeyboard;->setKeyEdgeFlags(Ljava/util/List;I)V

    if-eqz p8, :cond_3

    if-eqz p9, :cond_4

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ime/framework/view/Keyboard$Key;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/ime/framework/view/Keyboard$Key;->pressed:Z

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/ime/framework/view/DefaultKeyboard;->mDefaultKeyIndex:I

    :cond_3
    :goto_2
    return-void

    :cond_4
    const/4 v1, 0x0

    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ime/framework/view/Keyboard$Key;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/ime/framework/view/Keyboard$Key;->pressed:Z

    const/4 v1, 0x0

    iput v1, p0, Lcom/ime/framework/view/DefaultKeyboard;->mDefaultKeyIndex:I

    goto :goto_2
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/CharSequence;[Ljava/lang/String;IIZZ)V
    .locals 10

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p5

    move/from16 v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/ime/framework/view/Keyboard;-><init>(Landroid/content/Context;ILjava/lang/CharSequence;II)V

    const/4 v0, 0x5

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/ime/framework/view/DefaultKeyboard;->mUseCustomArea:[Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/ime/framework/view/DefaultKeyboard;->mDefaultKeyIndex:I

    const/16 v0, 0x8

    iput v0, p0, Lcom/ime/framework/view/DefaultKeyboard;->LAST_PHRASE_INDEX:I

    const/16 v0, 0x9

    iput v0, p0, Lcom/ime/framework/view/DefaultKeyboard;->mDefaultWidth:I

    const/4 v0, 0x6

    iput v0, p0, Lcom/ime/framework/view/DefaultKeyboard;->mDefaultFloatingWidth:I

    invoke-static {}, Lcom/ime/framework/common/InputManagerImpl;->getInstance()Lcom/ime/framework/common/InputManager;

    move-result-object v0

    iput-object v0, p0, Lcom/ime/framework/view/DefaultKeyboard;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-virtual {p0}, Lcom/ime/framework/view/DefaultKeyboard;->getKeys()Ljava/util/List;

    move-result-object v8

    if-eqz v8, :cond_2

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    const/4 v6, 0x0

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    :goto_0
    if-ge v6, v9, :cond_1

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/ime/framework/view/Keyboard$Key;

    aget-object v0, p4, v6

    iput-object v0, v7, Lcom/ime/framework/view/Keyboard$Key;->text:Ljava/lang/CharSequence;

    aget-object v0, p4, v6

    iput-object v0, v7, Lcom/ime/framework/view/Keyboard$Key;->label:Ljava/lang/CharSequence;

    iget-object v0, v7, Lcom/ime/framework/view/Keyboard$Key;->text:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    iget-object v0, v7, Lcom/ime/framework/view/Keyboard$Key;->codes:[I

    const/4 v1, 0x0

    const/16 v2, -0xff

    aput v2, v0, v1

    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, v7, Lcom/ime/framework/view/Keyboard$Key;->codes:[I

    const/4 v1, 0x0

    const/16 v2, -0x72

    aput v2, v0, v1

    goto :goto_1

    :cond_1
    invoke-direct {p0, v8, p5}, Lcom/ime/framework/view/DefaultKeyboard;->setKeyEdgeFlags(Ljava/util/List;I)V

    if-eqz p8, :cond_3

    if-eqz p7, :cond_2

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, p5

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ime/framework/view/Keyboard$Key;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/ime/framework/view/Keyboard$Key;->pressed:Z

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, p5

    iput v0, p0, Lcom/ime/framework/view/DefaultKeyboard;->mDefaultKeyIndex:I

    :cond_2
    :goto_2
    return-void

    :cond_3
    if-eqz p7, :cond_2

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ime/framework/view/Keyboard$Key;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/ime/framework/view/Keyboard$Key;->pressed:Z

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/ime/framework/view/DefaultKeyboard;->mDefaultKeyIndex:I

    goto :goto_2
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/CharSequence;[Ljava/lang/String;[Landroid/graphics/drawable/Drawable;[IIIZZ)V
    .locals 11

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move/from16 v5, p7

    move/from16 v6, p8

    invoke-direct/range {v1 .. v6}, Lcom/ime/framework/view/Keyboard;-><init>(Landroid/content/Context;ILjava/lang/CharSequence;II)V

    const/4 v1, 0x5

    new-array v1, v1, [Z

    iput-object v1, p0, Lcom/ime/framework/view/DefaultKeyboard;->mUseCustomArea:[Z

    const/4 v1, -0x1

    iput v1, p0, Lcom/ime/framework/view/DefaultKeyboard;->mDefaultKeyIndex:I

    const/16 v1, 0x8

    iput v1, p0, Lcom/ime/framework/view/DefaultKeyboard;->LAST_PHRASE_INDEX:I

    const/16 v1, 0x9

    iput v1, p0, Lcom/ime/framework/view/DefaultKeyboard;->mDefaultWidth:I

    const/4 v1, 0x6

    iput v1, p0, Lcom/ime/framework/view/DefaultKeyboard;->mDefaultFloatingWidth:I

    invoke-static {}, Lcom/ime/framework/common/InputManagerImpl;->getInstance()Lcom/ime/framework/common/InputManager;

    move-result-object v1

    iput-object v1, p0, Lcom/ime/framework/view/DefaultKeyboard;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-virtual {p0}, Lcom/ime/framework/view/DefaultKeyboard;->getKeys()Ljava/util/List;

    move-result-object v9

    if-eqz v9, :cond_6

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_6

    const/4 v7, 0x0

    move/from16 v10, p7

    :goto_0
    if-ge v7, v10, :cond_2

    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/ime/framework/view/Keyboard$Key;

    add-int/lit8 v1, p7, -0x1

    if-ne v7, v1, :cond_0

    iget-object v1, p0, Lcom/ime/framework/view/DefaultKeyboard;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->getUniversalSwitchMode()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const/16 v3, -0x459

    aput v3, v1, v2

    iput-object v1, v8, Lcom/ime/framework/view/Keyboard$Key;->codes:[I

    const/4 v1, 0x0

    iput-object v1, v8, Lcom/ime/framework/view/Keyboard$Key;->label:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/ime/framework/view/DefaultKeyboard;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200f3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v8, Lcom/ime/framework/view/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_0
    array-length v1, p4

    if-ge v7, v1, :cond_1

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const/16 v3, -0x82

    aput v3, v1, v2

    iput-object v1, v8, Lcom/ime/framework/view/Keyboard$Key;->codes:[I

    aget-object v1, p4, v7

    iput-object v1, v8, Lcom/ime/framework/view/Keyboard$Key;->label:Ljava/lang/CharSequence;

    aget-object v1, p4, v7

    iput-object v1, v8, Lcom/ime/framework/view/Keyboard$Key;->text:Ljava/lang/CharSequence;

    goto :goto_1

    :cond_1
    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const/16 v3, -0xff

    aput v3, v1, v2

    iput-object v1, v8, Lcom/ime/framework/view/Keyboard$Key;->codes:[I

    const/4 v1, 0x0

    iput-object v1, v8, Lcom/ime/framework/view/Keyboard$Key;->label:Ljava/lang/CharSequence;

    const/4 v1, 0x0

    iput-object v1, v8, Lcom/ime/framework/view/Keyboard$Key;->text:Ljava/lang/CharSequence;

    goto :goto_1

    :cond_2
    move/from16 v7, p7

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    :goto_2
    if-ge v7, v10, :cond_5

    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/ime/framework/view/Keyboard$Key;

    move-object/from16 v0, p6

    array-length v1, v0

    add-int v1, v1, p7

    if-ge v7, v1, :cond_4

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    sub-int v3, v7, p7

    aget v3, p6, v3

    aput v3, v1, v2

    iput-object v1, v8, Lcom/ime/framework/view/Keyboard$Key;->codes:[I

    const/4 v1, 0x0

    iput-object v1, v8, Lcom/ime/framework/view/Keyboard$Key;->label:Ljava/lang/CharSequence;

    const/4 v1, 0x0

    iput-object v1, v8, Lcom/ime/framework/view/Keyboard$Key;->text:Ljava/lang/CharSequence;

    sub-int v1, v7, p7

    aget-object v1, p5, v1

    iput-object v1, v8, Lcom/ime/framework/view/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    :goto_3
    iget-object v1, v8, Lcom/ime/framework/view/Keyboard$Key;->codes:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    const/16 v2, -0x89

    if-ne v1, v2, :cond_3

    const v1, 0x7f0d00cc

    invoke-virtual {p1, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v8, Lcom/ime/framework/view/Keyboard$Key;->label:Ljava/lang/CharSequence;

    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_4
    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const/16 v3, -0xff

    aput v3, v1, v2

    iput-object v1, v8, Lcom/ime/framework/view/Keyboard$Key;->codes:[I

    const/4 v1, 0x0

    iput-object v1, v8, Lcom/ime/framework/view/Keyboard$Key;->label:Ljava/lang/CharSequence;

    const/4 v1, 0x0

    iput-object v1, v8, Lcom/ime/framework/view/Keyboard$Key;->text:Ljava/lang/CharSequence;

    goto :goto_3

    :cond_5
    move/from16 v0, p7

    invoke-direct {p0, v9, v0}, Lcom/ime/framework/view/DefaultKeyboard;->setKeyEdgeFlags(Ljava/util/List;I)V

    if-eqz p9, :cond_6

    if-eqz p10, :cond_7

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ime/framework/view/Keyboard$Key;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/ime/framework/view/Keyboard$Key;->pressed:Z

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/ime/framework/view/DefaultKeyboard;->mDefaultKeyIndex:I

    :cond_6
    :goto_4
    return-void

    :cond_7
    move/from16 v0, p7

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ime/framework/view/Keyboard$Key;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/ime/framework/view/Keyboard$Key;->pressed:Z

    move/from16 v0, p7

    iput v0, p0, Lcom/ime/framework/view/DefaultKeyboard;->mDefaultKeyIndex:I

    goto :goto_4
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/String;IIZZ)V
    .locals 12

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move/from16 v5, p6

    move/from16 v6, p7

    invoke-direct/range {v1 .. v6}, Lcom/ime/framework/view/Keyboard;-><init>(Landroid/content/Context;ILjava/lang/CharSequence;II)V

    const/4 v1, 0x5

    new-array v1, v1, [Z

    iput-object v1, p0, Lcom/ime/framework/view/DefaultKeyboard;->mUseCustomArea:[Z

    const/4 v1, -0x1

    iput v1, p0, Lcom/ime/framework/view/DefaultKeyboard;->mDefaultKeyIndex:I

    const/16 v1, 0x8

    iput v1, p0, Lcom/ime/framework/view/DefaultKeyboard;->LAST_PHRASE_INDEX:I

    const/16 v1, 0x9

    iput v1, p0, Lcom/ime/framework/view/DefaultKeyboard;->mDefaultWidth:I

    const/4 v1, 0x6

    iput v1, p0, Lcom/ime/framework/view/DefaultKeyboard;->mDefaultFloatingWidth:I

    invoke-static {}, Lcom/ime/framework/common/InputManagerImpl;->getInstance()Lcom/ime/framework/common/InputManager;

    move-result-object v1

    iput-object v1, p0, Lcom/ime/framework/view/DefaultKeyboard;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-virtual {p0}, Lcom/ime/framework/view/DefaultKeyboard;->getKeys()Ljava/util/List;

    move-result-object v9

    const/4 v11, 0x0

    if-eqz p8, :cond_0

    const/4 v11, 0x1

    :cond_0
    const/4 v7, 0x0

    move-object/from16 v0, p5

    array-length v10, v0

    :goto_0
    if-ge v7, v10, :cond_1

    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/ime/framework/view/Keyboard$Key;

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const/16 v3, -0x7e

    aput v3, v1, v2

    iput-object v1, v8, Lcom/ime/framework/view/Keyboard$Key;->codes:[I

    aget-object v1, p5, v7

    iput-object v1, v8, Lcom/ime/framework/view/Keyboard$Key;->label:Ljava/lang/CharSequence;

    aget-object v1, p5, v7

    iput-object v1, v8, Lcom/ime/framework/view/Keyboard$Key;->text:Ljava/lang/CharSequence;

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_1
    if-eqz p8, :cond_2

    move-object/from16 v0, p5

    array-length v1, v0

    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/ime/framework/view/Keyboard$Key;

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const/16 v3, -0x7f

    aput v3, v1, v2

    iput-object v1, v8, Lcom/ime/framework/view/Keyboard$Key;->codes:[I

    const-string v1, "sym"

    iput-object v1, v8, Lcom/ime/framework/view/Keyboard$Key;->label:Ljava/lang/CharSequence;

    :cond_2
    iget-object v1, p0, Lcom/ime/framework/view/DefaultKeyboard;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->getUniversalSwitchMode()Z

    move-result v1

    if-eqz v1, :cond_3

    move-object/from16 v0, p5

    array-length v1, v0

    add-int/lit8 v1, v1, 0x1

    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/ime/framework/view/Keyboard$Key;

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const/16 v3, -0x459

    aput v3, v1, v2

    iput-object v1, v8, Lcom/ime/framework/view/Keyboard$Key;->codes:[I

    const/4 v1, 0x0

    iput-object v1, v8, Lcom/ime/framework/view/Keyboard$Key;->label:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/ime/framework/view/DefaultKeyboard;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200f3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v8, Lcom/ime/framework/view/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    add-int/lit8 v11, v11, 0x1

    :cond_3
    move-object/from16 v0, p5

    array-length v1, v0

    add-int v7, v1, v11

    move-object/from16 v0, p4

    array-length v1, v0

    move-object/from16 v0, p5

    array-length v2, v0

    add-int/2addr v1, v2

    add-int v10, v1, v11

    :goto_1
    if-ge v7, v10, :cond_4

    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/ime/framework/view/Keyboard$Key;

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const/16 v3, -0x7e

    aput v3, v1, v2

    iput-object v1, v8, Lcom/ime/framework/view/Keyboard$Key;->codes:[I

    move-object/from16 v0, p5

    array-length v1, v0

    sub-int v1, v7, v1

    sub-int/2addr v1, v11

    aget-object v1, p4, v1

    iput-object v1, v8, Lcom/ime/framework/view/Keyboard$Key;->label:Ljava/lang/CharSequence;

    move-object/from16 v0, p5

    array-length v1, v0

    sub-int v1, v7, v1

    sub-int/2addr v1, v11

    aget-object v1, p4, v1

    iput-object v1, v8, Lcom/ime/framework/view/Keyboard$Key;->text:Ljava/lang/CharSequence;

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/ime/framework/view/DefaultKeyboard;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->getUniversalSwitchMode()Z

    move-result v1

    if-eqz v1, :cond_5

    move-object/from16 v0, p4

    array-length v1, v0

    move-object/from16 v0, p5

    array-length v2, v0

    add-int/2addr v1, v2

    add-int/2addr v1, v11

    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ime/framework/view/Keyboard$Key;

    iget-object v1, v1, Lcom/ime/framework/view/Keyboard$Key;->codes:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    const/16 v2, 0x20

    if-ne v1, v2, :cond_5

    move-object/from16 v0, p4

    array-length v1, v0

    move-object/from16 v0, p5

    array-length v2, v0

    add-int/2addr v1, v2

    add-int/2addr v1, v11

    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/ime/framework/view/Keyboard$Key;

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const/16 v3, -0xff

    aput v3, v1, v2

    iput-object v1, v8, Lcom/ime/framework/view/Keyboard$Key;->codes:[I

    const/4 v1, 0x0

    iput-object v1, v8, Lcom/ime/framework/view/Keyboard$Key;->label:Ljava/lang/CharSequence;

    const/4 v1, 0x0

    iput-object v1, v8, Lcom/ime/framework/view/Keyboard$Key;->text:Ljava/lang/CharSequence;

    :cond_5
    move/from16 v0, p6

    invoke-direct {p0, v9, v0}, Lcom/ime/framework/view/DefaultKeyboard;->setKeyEdgeFlags(Ljava/util/List;I)V

    if-eqz p9, :cond_6

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ime/framework/view/Keyboard$Key;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/ime/framework/view/Keyboard$Key;->pressed:Z

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/ime/framework/view/DefaultKeyboard;->mDefaultKeyIndex:I

    :cond_6
    return-void
.end method

.method private setKeyEdgeFlags(Ljava/util/List;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/ime/framework/view/Keyboard$Key;",
            ">;I)V"
        }
    .end annotation

    const/4 v4, 0x1

    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    :goto_0
    if-ge v0, v2, :cond_a

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ime/framework/view/Keyboard$Key;

    if-ne v2, v4, :cond_1

    const/16 v3, 0xf

    iput v3, v1, Lcom/ime/framework/view/Keyboard$Key;->edgeFlags:I

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, -0x1

    if-eq p2, v3, :cond_2

    if-ne p2, v2, :cond_4

    :cond_2
    if-nez v0, :cond_3

    iput v4, v1, Lcom/ime/framework/view/Keyboard$Key;->edgeFlags:I

    goto :goto_1

    :cond_3
    add-int/lit8 v3, v2, -0x1

    if-ne v0, v3, :cond_0

    const/4 v3, 0x2

    iput v3, v1, Lcom/ime/framework/view/Keyboard$Key;->edgeFlags:I

    goto :goto_1

    :cond_4
    if-ne p2, v4, :cond_6

    if-nez v0, :cond_5

    const/4 v3, 0x4

    iput v3, v1, Lcom/ime/framework/view/Keyboard$Key;->edgeFlags:I

    goto :goto_1

    :cond_5
    add-int/lit8 v3, v2, -0x1

    if-ne v0, v3, :cond_0

    const/16 v3, 0x8

    iput v3, v1, Lcom/ime/framework/view/Keyboard$Key;->edgeFlags:I

    goto :goto_1

    :cond_6
    if-nez v0, :cond_7

    const/4 v3, 0x5

    iput v3, v1, Lcom/ime/framework/view/Keyboard$Key;->edgeFlags:I

    goto :goto_1

    :cond_7
    add-int/lit8 v3, p2, -0x1

    if-ne v0, v3, :cond_8

    const/4 v3, 0x6

    iput v3, v1, Lcom/ime/framework/view/Keyboard$Key;->edgeFlags:I

    goto :goto_1

    :cond_8
    sub-int v3, v2, p2

    if-ne v0, v3, :cond_9

    const/16 v3, 0x9

    iput v3, v1, Lcom/ime/framework/view/Keyboard$Key;->edgeFlags:I

    goto :goto_1

    :cond_9
    add-int/lit8 v3, v2, -0x1

    if-ne v0, v3, :cond_0

    const/16 v3, 0xa

    iput v3, v1, Lcom/ime/framework/view/Keyboard$Key;->edgeFlags:I

    goto :goto_1

    :cond_a
    return-void
.end method


# virtual methods
.method public IsMinikeyboardinstance()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ime/framework/view/DefaultKeyboard;->mIsMinikeyboard:Z

    return v0
.end method

.method public getDefaultKeyIndex()I
    .locals 1

    iget v0, p0, Lcom/ime/framework/view/DefaultKeyboard;->mDefaultKeyIndex:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    invoke-super {p0}, Lcom/ime/framework/view/Keyboard;->getHeight()I

    move-result v0

    return v0
.end method

.method public getHorizontalGap()I
    .locals 1

    invoke-super {p0}, Lcom/ime/framework/view/Keyboard;->getHorizontalGap()I

    move-result v0

    return v0
.end method

.method public getKey(I)Lcom/ime/framework/view/Keyboard$Key;
    .locals 6

    invoke-virtual {p0}, Lcom/ime/framework/view/DefaultKeyboard;->getKeys()Ljava/util/List;

    move-result-object v2

    const/4 v1, 0x0

    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_1

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ime/framework/view/Keyboard$Key;

    iget-object v4, v1, Lcom/ime/framework/view/Keyboard$Key;->codes:[I

    if-eqz v4, :cond_0

    iget-object v4, v1, Lcom/ime/framework/view/Keyboard$Key;->codes:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    if-ne v4, p1, :cond_0

    move-object v4, v1

    :goto_1
    return-object v4

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public getMinWidth()I
    .locals 1

    invoke-super {p0}, Lcom/ime/framework/view/Keyboard;->getMinWidth()I

    move-result v0

    return v0
.end method

.method public getPopupMiniKeyboardType()I
    .locals 1

    iget v0, p0, Lcom/ime/framework/view/DefaultKeyboard;->mPopupMiniKeyboardType:I

    return v0
.end method

.method public getShortCutPhrasePrefKey(I)Ljava/lang/String;
    .locals 8

    const/4 v2, 0x0

    add-int/lit8 p1, p1, 0x1

    iget-object v6, p0, Lcom/ime/framework/view/DefaultKeyboard;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "phrase"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v6, "UTF-16"

    invoke-static {v6}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    const-string v6, ""

    invoke-interface {v5, v3, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/nio/charset/Charset;->encode(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v1

    new-instance v4, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    invoke-direct {v4, v6, v0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v4
.end method

.method public getUsableCustomArea()[Z
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/view/DefaultKeyboard;->mUseCustomArea:[Z

    return-object v0
.end method

.method public getVerticalGap()I
    .locals 1

    invoke-super {p0}, Lcom/ime/framework/view/Keyboard;->getVerticalGap()I

    move-result v0

    return v0
.end method

.method public isLandscape()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ime/framework/view/DefaultKeyboard;->mIsLandscape:Z

    return v0
.end method

.method public isNormalEditorType()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ime/framework/view/DefaultKeyboard;->mIsNormalEditorType:Z

    return v0
.end method

.method public isPaddingRegion(II)Z
    .locals 9

    const/4 v5, 0x0

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/ime/framework/view/DefaultKeyboard;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/ime/framework/common/InputManager;->getInputModeManager()Lcom/ime/framework/inputmode/InputModeManager;

    move-result-object v7

    iput-object v7, p0, Lcom/ime/framework/view/DefaultKeyboard;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {p0}, Lcom/ime/framework/view/DefaultKeyboard;->getRows()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ime/framework/view/Keyboard$Row;

    iget-object v7, v4, Lcom/ime/framework/view/Keyboard$Row;->mKeys:Ljava/util/ArrayList;

    if-eqz v7, :cond_0

    iget-object v7, v4, Lcom/ime/framework/view/Keyboard$Row;->mKeys:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_0

    iget-object v7, v4, Lcom/ime/framework/view/Keyboard$Row;->mKeys:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ime/framework/view/Keyboard$Key;

    iget-object v7, v4, Lcom/ime/framework/view/Keyboard$Row;->mKeys:Ljava/util/ArrayList;

    iget-object v8, v4, Lcom/ime/framework/view/Keyboard$Row;->mKeys:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ime/framework/view/Keyboard$Key;

    iget v2, v0, Lcom/ime/framework/view/Keyboard$Key;->y:I

    iget-object v7, p0, Lcom/ime/framework/view/DefaultKeyboard;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v7}, Lcom/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v7

    if-ne v7, v6, :cond_6

    iget v7, v0, Lcom/ime/framework/view/Keyboard$Key;->y:I

    iget v8, v4, Lcom/ime/framework/view/Keyboard$Row;->defaultHeight:I

    add-int/2addr v7, v8

    iget v8, v4, Lcom/ime/framework/view/Keyboard$Row;->verticalGap:I

    add-int v2, v7, v8

    :cond_1
    :goto_0
    iget v7, v0, Lcom/ime/framework/view/Keyboard$Key;->y:I

    if-lt p2, v7, :cond_2

    if-le p2, v2, :cond_3

    :cond_2
    iget v7, p0, Lcom/ime/framework/view/DefaultKeyboard;->mTopPadding:I

    if-gt p2, v7, :cond_0

    :cond_3
    iget v7, v0, Lcom/ime/framework/view/Keyboard$Key;->x:I

    iget v8, v4, Lcom/ime/framework/view/Keyboard$Row;->defaultHorizontalGap:I

    sub-int/2addr v7, v8

    if-lt p1, v7, :cond_4

    iget v7, v3, Lcom/ime/framework/view/Keyboard$Key;->x:I

    iget v8, v3, Lcom/ime/framework/view/Keyboard$Key;->width:I

    add-int/2addr v7, v8

    if-le p1, v7, :cond_5

    :cond_4
    move v5, v6

    :cond_5
    :goto_1
    return v5

    :cond_6
    iget-object v7, p0, Lcom/ime/framework/view/DefaultKeyboard;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v7}, Lcom/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v7

    if-nez v7, :cond_1

    iget v7, v0, Lcom/ime/framework/view/Keyboard$Key;->y:I

    iget v8, v4, Lcom/ime/framework/view/Keyboard$Row;->defaultHeight:I

    add-int v2, v7, v8

    goto :goto_0

    :cond_7
    move v5, v6

    goto :goto_1
.end method

.method public isQwerty()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ime/framework/view/DefaultKeyboard;->mIsQwerty:Z

    return v0
.end method

.method public isTabletModel()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ime/framework/view/DefaultKeyboard;->mIsTabletModel:Z

    return v0
.end method

.method public isUseCustomArea()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ime/framework/view/DefaultKeyboard;->mIsUseCustomArea:Z

    return v0
.end method

.method public setLandscape(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ime/framework/view/DefaultKeyboard;->mIsLandscape:Z

    return-void
.end method

.method public setPopupMiniKeyboardType(I)V
    .locals 0

    iput p1, p0, Lcom/ime/framework/view/DefaultKeyboard;->mPopupMiniKeyboardType:I

    return-void
.end method

.method public setUseCustomArea(ZZZZ)V
    .locals 0

    iput-boolean p1, p0, Lcom/ime/framework/view/DefaultKeyboard;->mIsTabletModel:Z

    iput-boolean p3, p0, Lcom/ime/framework/view/DefaultKeyboard;->mIsNormalEditorType:Z

    iput-boolean p2, p0, Lcom/ime/framework/view/DefaultKeyboard;->mIsQwerty:Z

    iput-boolean p4, p0, Lcom/ime/framework/view/DefaultKeyboard;->mIsUseCustomArea:Z

    return-void
.end method

.method public setUseCustomArea([Z)V
    .locals 0

    iput-object p1, p0, Lcom/ime/framework/view/DefaultKeyboard;->mUseCustomArea:[Z

    return-void
.end method

.method public setWidth(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/ime/framework/view/Keyboard;->setTotalWidth(I)V

    return-void
.end method
