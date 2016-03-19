.class public Lcom/ime/implement/inputmode/InputModeManagerImpl;
.super Lcom/ime/framework/inputmode/InputModeManager;
.source "InputModeManagerImpl.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/ime/framework/inputmode/InputModeManager;-><init>()V

    return-void
.end method

.method private getPhonePadFromHandwritingMethod()I
    .locals 3

    invoke-virtual {p0}, Lcom/ime/implement/inputmode/InputModeManagerImpl;->getCurrentKeypadType()I

    move-result v0

    const/4 v2, 0x7

    if-eq v0, v2, :cond_0

    const/16 v2, 0x8

    if-ne v0, v2, :cond_1

    :cond_0
    move v1, v0

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected computeValidInputMethod()I
    .locals 23

    invoke-static {}, Lcom/ime/framework/repository/InputModeStatus;->getInputMethodStatus()I

    move-result v5

    invoke-static {}, Lcom/ime/framework/repository/InputModeStatus;->isHwrMode()Z

    move-result v3

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/inputmode/InputModeManagerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/ime/framework/common/InputManager;->isOrientationLandscape()Z

    move-result v11

    invoke-virtual/range {p0 .. p0}, Lcom/ime/implement/inputmode/InputModeManagerImpl;->isKorSeperatlyInputMethod()Z

    move-result v10

    invoke-static {}, Lcom/ime/framework/repository/EditorStatus;->isPasswordInputType()Z

    move-result v12

    invoke-static {}, Lcom/ime/framework/repository/PropertyItems;->isSupportFullHandwriting()Z

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/inputmode/InputModeManagerImpl;->mRepository:Lcom/ime/framework/repository/Repository;

    move-object/from16 v20, v0

    const-string v21, "SETTINGS_DEFAULT_USE_FULL_HANDWRITING"

    const/16 v22, 0x0

    invoke-interface/range {v20 .. v22}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/inputmode/InputModeManagerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/ime/framework/common/InputManager;->isJapaneseLanguageMode()Z

    move-result v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/inputmode/InputModeManagerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/ime/framework/common/InputManager;->isChnMode()Z

    move-result v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/inputmode/InputModeManagerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/ime/framework/common/InputManager;->isChineseLanguageMode()Z

    move-result v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/inputmode/InputModeManagerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/ime/framework/common/InputManager;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/inputmode/InputModeManagerImpl;->mPrivateImeOptionsController:Lcom/ime/framework/common/PrivateImeOptionsController;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/ime/framework/common/PrivateImeOptionsController;->getInputType()I

    move-result v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/inputmode/InputModeManagerImpl;->mPrivateImeOptionsController:Lcom/ime/framework/common/PrivateImeOptionsController;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/ime/framework/common/PrivateImeOptionsController;->isDisableHWRInput()Z

    move-result v8

    const/4 v2, 0x0

    if-eqz v4, :cond_0

    iget v0, v4, Landroid/view/inputmethod/EditorInfo;->inputType:I

    move/from16 v20, v0

    and-int/lit8 v2, v20, 0xf

    :cond_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/ime/implement/inputmode/InputModeManagerImpl;->mIsTabletMode:Z

    move/from16 v20, v0

    if-eqz v20, :cond_14

    const/16 v20, 0x3

    move/from16 v0, v20

    if-eq v2, v0, :cond_1

    const/16 v20, 0x2

    move/from16 v0, v20

    if-eq v2, v0, :cond_1

    const/16 v20, 0xa

    move/from16 v0, v20

    if-eq v14, v0, :cond_1

    const/16 v20, 0x1

    move/from16 v0, v20

    if-eq v14, v0, :cond_1

    invoke-static {}, Lcom/ime/framework/repository/EditorStatus;->isDigitEditor()Z

    move-result v20

    if-eqz v20, :cond_7

    :cond_1
    const/16 v20, 0x0

    invoke-static/range {v20 .. v20}, Lcom/ime/framework/repository/InputModeStatus;->setFlagIsHwrMode(Z)V

    packed-switch v5, :pswitch_data_0

    :pswitch_0
    const/16 v16, 0x1

    :cond_2
    :goto_0
    const/16 v20, 0x1

    move/from16 v0, v20

    if-ne v3, v0, :cond_3

    invoke-static {}, Lcom/ime/framework/repository/InputModeStatus;->isHwrMode()Z

    move-result v20

    move/from16 v0, v20

    if-eq v3, v0, :cond_3

    const/16 v20, 0x1

    invoke-static/range {v20 .. v20}, Lcom/ime/framework/repository/InputModeStatus;->setForceSetHWRMode(Z)V

    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/ime/implement/inputmode/InputModeManagerImpl;->setNeedUpdateKeyboardView(Z)V

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/inputmode/InputModeManagerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/ime/framework/common/InputManager;->isMobileKeyboard()Z

    move-result v20

    if-eqz v20, :cond_4

    const/16 v16, 0x0

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/inputmode/InputModeManagerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/ime/framework/common/InputManager;->isChnMode()Z

    move-result v20

    if-eqz v20, :cond_6

    const/16 v20, 0xd

    move/from16 v0, v20

    if-ne v14, v0, :cond_5

    const/16 v16, 0x0

    :cond_5
    invoke-static {}, Lcom/ime/framework/sidesync/SideSyncManager;->getInstance()Lcom/ime/framework/sidesync/SideSyncManager;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/ime/framework/sidesync/SideSyncManager;->isSideSyncWorkingOnSource()Z

    move-result v20

    if-eqz v20, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/inputmode/InputModeManagerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/ime/framework/common/InputManager;->isKoreaLanguage()Z

    move-result v20

    if-eqz v20, :cond_6

    const/16 v16, 0x0

    :cond_6
    return v16

    :pswitch_1
    const/16 v16, 0x1

    goto :goto_0

    :pswitch_2
    move/from16 v16, v5

    goto :goto_0

    :pswitch_3
    invoke-direct/range {p0 .. p0}, Lcom/ime/implement/inputmode/InputModeManagerImpl;->getPhonePadFromHandwritingMethod()I

    move-result v16

    goto :goto_0

    :cond_7
    const/16 v20, 0x9

    move/from16 v0, v20

    if-eq v14, v0, :cond_8

    const/16 v20, 0xe

    move/from16 v0, v20

    if-ne v14, v0, :cond_a

    :cond_8
    const/16 v20, 0x0

    invoke-static/range {v20 .. v20}, Lcom/ime/framework/repository/InputModeStatus;->setFlagIsHwrMode(Z)V

    packed-switch v5, :pswitch_data_1

    :pswitch_4
    const/16 v16, 0x1

    goto :goto_0

    :pswitch_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/ime/implement/inputmode/InputModeManagerImpl;->mIsKorMode:Z

    move/from16 v20, v0

    if-eqz v20, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/ime/implement/inputmode/InputModeManagerImpl;->getCurrentPreferenceInputMethod()I

    move-result v16

    goto/16 :goto_0

    :cond_9
    const/16 v16, 0x1

    goto/16 :goto_0

    :pswitch_6
    move/from16 v16, v5

    goto/16 :goto_0

    :pswitch_7
    invoke-direct/range {p0 .. p0}, Lcom/ime/implement/inputmode/InputModeManagerImpl;->getPhonePadFromHandwritingMethod()I

    move-result v16

    goto/16 :goto_0

    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/inputmode/InputModeManagerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/ime/framework/common/InputManager;->isHWKeyboardConnected()Z

    move-result v20

    if-eqz v20, :cond_b

    :cond_b
    if-eqz v10, :cond_10

    const/16 v20, 0x1

    move/from16 v0, v20

    if-ne v14, v0, :cond_c

    const/16 v20, 0x1

    move/from16 v0, v20

    if-ne v5, v0, :cond_c

    invoke-virtual/range {p0 .. p0}, Lcom/ime/implement/inputmode/InputModeManagerImpl;->isKorTabletCji()Z

    move-result v20

    if-nez v20, :cond_c

    const/16 v16, 0x0

    goto/16 :goto_0

    :cond_c
    if-eqz v5, :cond_d

    const/16 v20, 0x1

    move/from16 v0, v20

    if-ne v5, v0, :cond_e

    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/ime/implement/inputmode/InputModeManagerImpl;->getInputMethodOnKor()I

    move-result v13

    if-nez v13, :cond_f

    const/4 v5, 0x0

    :cond_e
    :goto_1
    move/from16 v16, v5

    goto/16 :goto_0

    :cond_f
    const/4 v5, 0x1

    goto :goto_1

    :cond_10
    if-eqz v12, :cond_11

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/ime/implement/inputmode/InputModeManagerImpl;->isHandwritingInputMode(I)Z

    move-result v20

    if-eqz v20, :cond_11

    const/16 v20, 0x0

    invoke-static/range {v20 .. v20}, Lcom/ime/framework/repository/InputModeStatus;->setFlagIsHwrMode(Z)V

    invoke-static {}, Lcom/ime/framework/repository/InputModeStatus;->getHwrPreviousInputMethod()I

    move-result v16

    goto/16 :goto_0

    :cond_11
    const/16 v20, 0x1

    move/from16 v0, v20

    if-ne v5, v0, :cond_12

    if-nez v10, :cond_12

    const/16 v16, 0x0

    goto/16 :goto_0

    :cond_12
    if-eqz v8, :cond_13

    const/16 v16, 0x0

    goto/16 :goto_0

    :cond_13
    move/from16 v16, v5

    goto/16 :goto_0

    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/inputmode/InputModeManagerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/ime/framework/common/InputManager;->isShownSoftFuncKbd()Z

    move-result v20

    if-eqz v20, :cond_15

    const/16 v16, 0x1

    goto/16 :goto_0

    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/inputmode/InputModeManagerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/ime/framework/common/InputManager;->isHWKeyboardConnected()Z

    move-result v20

    if-eqz v20, :cond_16

    :cond_16
    const/16 v20, 0xa

    move/from16 v0, v20

    if-eq v14, v0, :cond_17

    const/16 v20, 0x9

    move/from16 v0, v20

    if-eq v14, v0, :cond_17

    const/16 v20, 0xe

    move/from16 v0, v20

    if-ne v14, v0, :cond_1a

    :cond_17
    const/16 v20, 0x0

    invoke-static/range {v20 .. v20}, Lcom/ime/framework/repository/InputModeStatus;->setFlagIsHwrMode(Z)V

    const/16 v20, 0x7

    move/from16 v0, v20

    if-ne v5, v0, :cond_18

    const/16 v16, 0x7

    goto/16 :goto_0

    :cond_18
    const/16 v20, 0x8

    move/from16 v0, v20

    if-ne v5, v0, :cond_19

    const/16 v16, 0x8

    goto/16 :goto_0

    :cond_19
    const/16 v16, 0x1

    goto/16 :goto_0

    :cond_1a
    const/16 v20, 0x4

    move/from16 v0, v20

    if-eq v2, v0, :cond_1b

    const/16 v20, 0x2

    move/from16 v0, v20

    if-eq v2, v0, :cond_1b

    const/16 v20, 0x1

    move/from16 v0, v20

    if-ne v14, v0, :cond_1e

    :cond_1b
    const/16 v20, 0x0

    invoke-static/range {v20 .. v20}, Lcom/ime/framework/repository/InputModeStatus;->setFlagIsHwrMode(Z)V

    if-eqz v8, :cond_1d

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/ime/implement/inputmode/InputModeManagerImpl;->isHandwritingInputMode(I)Z

    move-result v20

    if-eqz v20, :cond_1d

    invoke-virtual/range {p0 .. p0}, Lcom/ime/implement/inputmode/InputModeManagerImpl;->getCurrentPreferenceInputMethod()I

    move-result v16

    if-eqz v11, :cond_2

    if-nez v9, :cond_2

    if-eqz v7, :cond_1c

    if-nez v6, :cond_2

    :cond_1c
    const/16 v20, 0x1

    move/from16 v0, v16

    move/from16 v1, v20

    if-ne v0, v1, :cond_2

    const/16 v16, 0x0

    goto/16 :goto_0

    :cond_1d
    packed-switch v5, :pswitch_data_2

    const/16 v16, 0x1

    goto/16 :goto_0

    :pswitch_8
    move/from16 v16, v5

    goto/16 :goto_0

    :cond_1e
    const/16 v20, 0x3

    move/from16 v0, v20

    if-ne v2, v0, :cond_1f

    const/16 v20, 0x0

    invoke-static/range {v20 .. v20}, Lcom/ime/framework/repository/InputModeStatus;->setFlagIsHwrMode(Z)V

    packed-switch v5, :pswitch_data_3

    const/16 v16, 0x1

    goto/16 :goto_0

    :pswitch_9
    move/from16 v16, v5

    goto/16 :goto_0

    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/inputmode/InputModeManagerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/ime/framework/common/InputManager;->getUniversalSwitchMode()Z

    move-result v20

    if-eqz v20, :cond_20

    const/16 v16, 0x0

    goto/16 :goto_0

    :cond_20
    if-eqz v12, :cond_22

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/ime/implement/inputmode/InputModeManagerImpl;->isHandwritingInputMode(I)Z

    move-result v20

    if-eqz v20, :cond_22

    const/16 v20, 0x0

    invoke-static/range {v20 .. v20}, Lcom/ime/framework/repository/InputModeStatus;->setFlagIsHwrMode(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/ime/implement/inputmode/InputModeManagerImpl;->getCurrentPreferenceInputMethod()I

    move-result v16

    if-eqz v11, :cond_2

    if-nez v9, :cond_2

    if-eqz v7, :cond_21

    if-nez v6, :cond_2

    :cond_21
    const/16 v20, 0x1

    move/from16 v0, v16

    move/from16 v1, v20

    if-ne v0, v1, :cond_2

    const/16 v16, 0x0

    goto/16 :goto_0

    :cond_22
    if-eqz v11, :cond_2c

    if-nez v9, :cond_23

    if-eqz v7, :cond_28

    :cond_23
    const/16 v20, 0x1

    move/from16 v0, v20

    if-eq v5, v0, :cond_24

    if-nez v5, :cond_28

    :cond_24
    invoke-virtual/range {p0 .. p0}, Lcom/ime/implement/inputmode/InputModeManagerImpl;->getInputRange()I

    move-result v15

    const/16 v20, 0x1

    move/from16 v0, v20

    if-eq v15, v0, :cond_25

    const/16 v20, 0x2

    move/from16 v0, v20

    if-ne v15, v0, :cond_26

    :cond_25
    const/16 v16, 0x0

    goto/16 :goto_0

    :cond_26
    if-nez v15, :cond_27

    invoke-virtual/range {p0 .. p0}, Lcom/ime/implement/inputmode/InputModeManagerImpl;->getCurrentPreferenceInputMethod()I

    move-result v16

    goto/16 :goto_0

    :cond_27
    move/from16 v16, v5

    goto/16 :goto_0

    :cond_28
    const/16 v20, 0x1

    move/from16 v0, v20

    if-ne v5, v0, :cond_29

    const/16 v16, 0x0

    goto/16 :goto_0

    :cond_29
    if-eqz v8, :cond_2a

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/ime/implement/inputmode/InputModeManagerImpl;->isHandwritingInputMode(I)Z

    move-result v20

    if-eqz v20, :cond_2a

    const/16 v20, 0x0

    invoke-static/range {v20 .. v20}, Lcom/ime/framework/repository/InputModeStatus;->setFlagIsHwrMode(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/ime/implement/inputmode/InputModeManagerImpl;->getCurrentPreferenceInputMethod()I

    move-result v16

    const/16 v20, 0x1

    move/from16 v0, v16

    move/from16 v1, v20

    if-ne v0, v1, :cond_2

    const/16 v16, 0x0

    goto/16 :goto_0

    :cond_2a
    if-eqz v17, :cond_2b

    if-eqz v19, :cond_2b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/inputmode/InputModeManagerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/ime/framework/common/InputManager;->isFullScreesnHwrPackage()Z

    move-result v20

    if-eqz v20, :cond_2b

    const/16 v20, 0x2

    move/from16 v0, v20

    if-ne v5, v0, :cond_2b

    const/16 v16, 0x4

    goto/16 :goto_0

    :cond_2b
    move/from16 v16, v5

    goto/16 :goto_0

    :cond_2c
    if-eqz v8, :cond_2d

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/ime/implement/inputmode/InputModeManagerImpl;->isHandwritingInputMode(I)Z

    move-result v20

    if-eqz v20, :cond_2d

    const/16 v20, 0x0

    invoke-static/range {v20 .. v20}, Lcom/ime/framework/repository/InputModeStatus;->setFlagIsHwrMode(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/ime/implement/inputmode/InputModeManagerImpl;->getCurrentPreferenceInputMethod()I

    move-result v16

    goto/16 :goto_0

    :cond_2d
    if-eqz v17, :cond_2e

    if-eqz v19, :cond_2e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/inputmode/InputModeManagerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/ime/framework/common/InputManager;->isFullScreesnHwrPackage()Z

    move-result v20

    if-eqz v20, :cond_2e

    const/16 v20, 0x2

    move/from16 v0, v20

    if-ne v5, v0, :cond_2e

    const/16 v16, 0x4

    goto/16 :goto_0

    :cond_2e
    invoke-static {}, Lcom/ime/framework/repository/PropertyItems;->isUsingNumberAndSymbolsKeypadType()Z

    move-result v20

    if-nez v20, :cond_2f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/inputmode/InputModeManagerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/ime/framework/common/InputManager;->isUsingOnlyQwertyNumberAndSymbolKeyboard()Z

    move-result v20

    if-eqz v20, :cond_38

    :cond_2f
    invoke-virtual/range {p0 .. p0}, Lcom/ime/implement/inputmode/InputModeManagerImpl;->getInputRange()I

    move-result v15

    if-eqz v5, :cond_30

    const/16 v20, 0x1

    move/from16 v0, v20

    if-ne v5, v0, :cond_34

    :cond_30
    const/16 v20, 0x1

    move/from16 v0, v20

    if-eq v15, v0, :cond_31

    const/16 v20, 0x2

    move/from16 v0, v20

    if-ne v15, v0, :cond_34

    :cond_31
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/inputmode/InputModeManagerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/ime/framework/common/InputManager;->isChnMode()Z

    move-result v20

    if-nez v20, :cond_34

    invoke-static {}, Lcom/ime/framework/repository/InputModeStatus;->getNumberAndSymbolsKeypadType()I

    move-result v18

    const/16 v20, 0x2

    move/from16 v0, v18

    move/from16 v1, v20

    if-ne v0, v1, :cond_32

    const/16 v16, 0x1

    goto/16 :goto_0

    :cond_32
    const/16 v20, 0x1

    move/from16 v0, v18

    move/from16 v1, v20

    if-ne v0, v1, :cond_33

    const/16 v16, 0x0

    goto/16 :goto_0

    :cond_33
    move/from16 v16, v5

    goto/16 :goto_0

    :cond_34
    if-eqz v5, :cond_35

    const/16 v20, 0x1

    move/from16 v0, v20

    if-ne v5, v0, :cond_36

    :cond_35
    if-nez v15, :cond_36

    invoke-virtual/range {p0 .. p0}, Lcom/ime/implement/inputmode/InputModeManagerImpl;->getCurrentPreferenceInputMethod()I

    move-result v16

    goto/16 :goto_0

    :cond_36
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/ime/implement/inputmode/InputModeManagerImpl;->mIsKorMode:Z

    move/from16 v20, v0

    if-eqz v20, :cond_37

    const/16 v20, 0x8

    move/from16 v0, v20

    if-eq v5, v0, :cond_37

    const/16 v20, 0x7

    move/from16 v0, v20

    if-eq v5, v0, :cond_37

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/ime/implement/inputmode/InputModeManagerImpl;->isHandwritingInputMode(I)Z

    move-result v20

    if-nez v20, :cond_37

    invoke-virtual/range {p0 .. p0}, Lcom/ime/implement/inputmode/InputModeManagerImpl;->getCurrentPreferenceInputMethod()I

    move-result v16

    goto/16 :goto_0

    :cond_37
    move/from16 v16, v5

    goto/16 :goto_0

    :cond_38
    move/from16 v16, v5

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_7
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_6
        :pswitch_6
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x7
        :pswitch_8
        :pswitch_8
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x7
        :pswitch_9
        :pswitch_9
    .end packed-switch
.end method

.method public setIsVoiceInstalled(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/ime/implement/inputmode/InputModeManagerImpl;->mPrivateImeOptionsController:Lcom/ime/framework/common/PrivateImeOptionsController;

    invoke-interface {v0}, Lcom/ime/framework/common/PrivateImeOptionsController;->isDisableVoice()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/ime/implement/inputmode/InputModeManagerImpl;->mIsVoiceInstalled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
