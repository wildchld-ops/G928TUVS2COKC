.class public Lcom/ime/implement/view/ViewControllerImpl;
.super Lcom/ime/framework/view/AbstractViewController;
.source "ViewControllerImpl.java"


# instance fields
.field private ADD_SMILEY_SYMBOL:Z

.field private USE_GLOBAL_KEY:Z

.field private USE_SYMBOL_LAYOUT_BY_ATT:Z

.field private USE_SYMBOL_LAYOUT_BY_ATT_WITH_NUMBER_KEY_FIRST_LINE:Z

.field private mCurrentKeyboard:Lcom/ime/framework/view/DefaultKeyboard;

.field private mInputMethodId:I

.field private mIsAddNumberKeyFirstLine:Z

.field private mIsCommaKeyAsDefault:Z

.field mIsLandscape:Z

.field private mIsUSASymbolLayout:Z

.field private mLanguageID:I

.field private mModeID:I

.field private mPrevKeyboard:Lcom/ime/framework/view/DefaultKeyboard;

.field public mShiftStateController:Lcom/ime/framework/common/ShiftStateController;

.field private mToast:Landroid/widget/Toast;

.field private mXmlID:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/ime/framework/view/AbstractViewController;-><init>()V

    return-void
.end method

.method private getBoxTextKeyboardModeId(Landroid/view/inputmethod/EditorInfo;)I
    .locals 5

    const v1, 0x7f100122

    const v2, 0x7f100121

    const/4 v4, 0x1

    if-eqz p1, :cond_0

    iget-object v3, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    if-nez v3, :cond_2

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1

    :cond_2
    iget v3, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/lit16 v0, v3, 0xff0

    sparse-switch v0, :sswitch_data_0

    iget-object v1, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->getSelectedLanguageList()[Lcom/ime/framework/common/Language;

    move-result-object v1

    array-length v1, v1

    if-le v1, v4, :cond_6

    const v1, 0x7f10011f

    goto :goto_0

    :sswitch_0
    iget-object v2, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/ime/framework/common/InputManager;->getSelectedLanguageList()[Lcom/ime/framework/common/Language;

    move-result-object v2

    array-length v2, v2

    if-le v2, v4, :cond_1

    invoke-virtual {p0}, Lcom/ime/implement/view/ViewControllerImpl;->isUseGlobalKey()Z

    move-result v2

    if-nez v2, :cond_3

    iget-boolean v2, p0, Lcom/ime/implement/view/ViewControllerImpl;->mIsTabletMode:Z

    if-eqz v2, :cond_1

    :cond_3
    const v1, 0x7f100124

    goto :goto_0

    :sswitch_1
    iget-object v1, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->getSelectedLanguageList()[Lcom/ime/framework/common/Language;

    move-result-object v1

    array-length v1, v1

    if-le v1, v4, :cond_5

    invoke-virtual {p0}, Lcom/ime/implement/view/ViewControllerImpl;->isUseGlobalKey()Z

    move-result v1

    if-nez v1, :cond_4

    iget-boolean v1, p0, Lcom/ime/implement/view/ViewControllerImpl;->mIsTabletMode:Z

    if-nez v1, :cond_4

    move v1, v2

    goto :goto_0

    :cond_4
    const v1, 0x7f100123

    goto :goto_0

    :cond_5
    move v1, v2

    goto :goto_0

    :cond_6
    const v1, 0x7f100120

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_1
        0x20 -> :sswitch_0
        0xd0 -> :sswitch_0
    .end sparse-switch
.end method

.method private getCurrentSymbolPageModeId(I)I
    .locals 14

    iget-object v12, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/ime/framework/common/InputManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v10

    const-string v12, "da_mode"

    const/4 v13, 0x0

    invoke-interface {v10, v12, v13}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    new-instance v0, Lcom/sec/android/inputmethod/ConfigFeature;

    invoke-direct {v0}, Lcom/sec/android/inputmethod/ConfigFeature;-><init>()V

    const/4 v8, 0x0

    iget-object v12, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/ime/framework/common/InputManager;->isCurrentCarModeTouchSIP()Z

    move-result v12

    if-eqz v12, :cond_0

    packed-switch p1, :pswitch_data_0

    :goto_0
    move v9, v8

    :goto_1
    return v9

    :pswitch_0
    :try_start_0
    const-string v12, "symbol_page_1_mirrorlink"

    invoke-static {v12}, Lcom/ime/implement/resource/CustomResource;->getID(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    goto :goto_0

    :catch_0
    move-exception v1

    const v8, 0x7f100126

    goto :goto_0

    :pswitch_1
    :try_start_1
    const-string v12, "symbol_page_2_mirrorlink"

    invoke-static {v12}, Lcom/ime/implement/resource/CustomResource;->getID(Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v8

    goto :goto_0

    :catch_1
    move-exception v1

    const v8, 0x7f100128

    goto :goto_0

    :pswitch_2
    :try_start_2
    const-string v12, "symbol_page_3_mirrorlink"

    invoke-static {v12}, Lcom/ime/implement/resource/CustomResource;->getID(Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v8

    goto :goto_0

    :catch_2
    move-exception v1

    const v8, 0x7f10012a

    goto :goto_0

    :cond_0
    iget-object v12, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/ime/framework/common/InputManager;->isMobileKeyboard()Z

    move-result v12

    if-eqz v12, :cond_1

    packed-switch p1, :pswitch_data_1

    :goto_2
    move v9, v8

    goto :goto_1

    :pswitch_3
    const v8, 0x7f100126

    goto :goto_2

    :pswitch_4
    const v8, 0x7f100128

    goto :goto_2

    :pswitch_5
    const v8, 0x7f10012a

    goto :goto_2

    :cond_1
    iget-object v12, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v12}, Lcom/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v7

    invoke-static {}, Lcom/ime/framework/repository/InputModeStatus;->getInputRange()I

    move-result v11

    iget-object v12, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v12}, Lcom/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v2

    const/16 v12, 0x8

    if-ne v2, v12, :cond_3

    iget-object v12, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v12}, Lcom/ime/framework/inputmode/InputModeManager;->isFloatingPhonepadKeyboardForMultiWindow()Z

    move-result v12

    if-nez v12, :cond_3

    const/4 v5, 0x1

    :goto_3
    iget-boolean v12, p0, Lcom/ime/implement/view/ViewControllerImpl;->mIsTabletMode:Z

    if-nez v12, :cond_2

    iget-object v12, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v12}, Lcom/ime/framework/inputmode/InputModeManager;->isFloatingPhonepadKeyboardForMultiWindow()Z

    move-result v12

    if-eqz v12, :cond_2

    const/4 v7, 0x1

    :cond_2
    packed-switch v7, :pswitch_data_2

    :goto_4
    :pswitch_6
    move v9, v8

    goto :goto_1

    :cond_3
    const/4 v5, 0x0

    goto :goto_3

    :pswitch_7
    iget-object v12, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v12}, Lcom/ime/framework/inputmode/InputModeManager;->getCurrentPreferenceInputMethod()I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_4

    invoke-direct {p0, p1}, Lcom/ime/implement/view/ViewControllerImpl;->getValidSymbolsPage(I)I

    move-result p1

    iget-object v12, p0, Lcom/ime/implement/view/ViewControllerImpl;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v13, "SYMBOLS_PAGE"

    invoke-interface {v12, v13, p1}, Lcom/ime/framework/repository/Repository;->setData(Ljava/lang/String;I)V

    :cond_4
    iget-object v12, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v12}, Lcom/ime/framework/inputmode/InputModeManager;->isKorTabletCji()Z

    move-result v12

    if-nez v12, :cond_5

    iget-object v12, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v12}, Lcom/ime/framework/inputmode/InputModeManager;->isKorTabletPhoneFlotingCJ()Z

    move-result v12

    if-eqz v12, :cond_c

    :cond_5
    const/4 v12, 0x7

    if-ne v7, v12, :cond_6

    const/4 v12, 0x1

    if-eq v11, v12, :cond_c

    :cond_6
    iget-object v12, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v12}, Lcom/ime/framework/inputmode/InputModeManager;->isFloatingHWRKeyboard()Z

    move-result v12

    if-nez v12, :cond_c

    invoke-static {}, Lcom/ime/framework/repository/EditorStatus;->isEmailInputType()Z

    move-result v4

    invoke-static {}, Lcom/ime/framework/repository/EditorStatus;->isUrlInputType()Z

    move-result v6

    iget-object v12, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/ime/framework/common/InputManager;->getSelectedLanguageList()[Lcom/ime/framework/common/Language;

    move-result-object v12

    array-length v12, v12

    const/4 v13, 0x1

    if-le v12, v13, :cond_9

    if-eqz v4, :cond_7

    const v8, 0x7f100124

    goto :goto_4

    :cond_7
    if-eqz v6, :cond_8

    const v8, 0x7f100123

    goto :goto_4

    :cond_8
    const v8, 0x7f10011f

    goto :goto_4

    :cond_9
    if-eqz v4, :cond_a

    const v8, 0x7f100122

    goto :goto_4

    :cond_a
    if-eqz v6, :cond_b

    const v8, 0x7f100121

    goto :goto_4

    :cond_b
    const v8, 0x7f100120

    goto :goto_4

    :cond_c
    invoke-virtual {p0}, Lcom/ime/implement/view/ViewControllerImpl;->isUseGlobalKey()Z

    move-result v12

    if-nez v12, :cond_e

    iget-boolean v12, p0, Lcom/ime/implement/view/ViewControllerImpl;->mIsCommaKeyAsDefault:Z

    if-eqz v12, :cond_e

    if-eqz v2, :cond_d

    if-eqz v5, :cond_e

    iget-object v12, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v12}, Lcom/ime/framework/inputmode/InputModeManager;->isFloatingHWRKeyboard()Z

    move-result v12

    if-nez v12, :cond_e

    :cond_d
    packed-switch p1, :pswitch_data_3

    const v8, 0x7f10012c

    goto/16 :goto_4

    :pswitch_8
    const v8, 0x7f10012c

    goto/16 :goto_4

    :pswitch_9
    const v8, 0x7f10012d

    goto/16 :goto_4

    :pswitch_a
    const v8, 0x7f10012e

    goto/16 :goto_4

    :cond_e
    iget-object v12, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/ime/framework/common/InputManager;->getSelectedLanguageList()[Lcom/ime/framework/common/Language;

    move-result-object v12

    array-length v12, v12

    const/4 v13, 0x1

    if-le v12, v13, :cond_11

    invoke-virtual {p0}, Lcom/ime/implement/view/ViewControllerImpl;->isUseGlobalKey()Z

    move-result v12

    if-nez v12, :cond_f

    iget-boolean v12, p0, Lcom/ime/implement/view/ViewControllerImpl;->mIsTabletMode:Z

    if-eqz v12, :cond_10

    :cond_f
    packed-switch p1, :pswitch_data_4

    const v8, 0x7f100126

    goto/16 :goto_4

    :pswitch_b
    const v8, 0x7f100126

    goto/16 :goto_4

    :pswitch_c
    const v8, 0x7f100128

    goto/16 :goto_4

    :pswitch_d
    const v8, 0x7f10012a

    goto/16 :goto_4

    :cond_10
    packed-switch p1, :pswitch_data_5

    const v8, 0x7f100127

    goto/16 :goto_4

    :pswitch_e
    const v8, 0x7f100127

    goto/16 :goto_4

    :pswitch_f
    const v8, 0x7f100129

    goto/16 :goto_4

    :pswitch_10
    const v8, 0x7f10012b

    goto/16 :goto_4

    :cond_11
    packed-switch p1, :pswitch_data_6

    const v8, 0x7f100127

    goto/16 :goto_4

    :pswitch_11
    const v8, 0x7f100127

    goto/16 :goto_4

    :pswitch_12
    const v8, 0x7f100129

    goto/16 :goto_4

    :pswitch_13
    const v8, 0x7f10012b

    goto/16 :goto_4

    :pswitch_14
    iget-boolean v12, p0, Lcom/ime/implement/view/ViewControllerImpl;->mIsTabletMode:Z

    if-nez v12, :cond_12

    invoke-direct {p0, p1}, Lcom/ime/implement/view/ViewControllerImpl;->getPhonePadCurrentSymbolPageModeId(I)I

    move-result v8

    goto/16 :goto_4

    :cond_12
    iget-object v12, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v12}, Lcom/ime/framework/inputmode/InputModeManager;->isKorTabletCji()Z

    move-result v12

    if-eqz v12, :cond_18

    invoke-static {}, Lcom/ime/framework/repository/EditorStatus;->isEmailInputType()Z

    move-result v4

    invoke-static {}, Lcom/ime/framework/repository/EditorStatus;->isUrlInputType()Z

    move-result v6

    iget-object v12, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/ime/framework/common/InputManager;->getSelectedLanguageList()[Lcom/ime/framework/common/Language;

    move-result-object v12

    array-length v12, v12

    const/4 v13, 0x1

    if-le v12, v13, :cond_15

    if-eqz v4, :cond_13

    const v8, 0x7f100124

    goto/16 :goto_4

    :cond_13
    if-eqz v6, :cond_14

    const v8, 0x7f100123

    goto/16 :goto_4

    :cond_14
    const v8, 0x7f10011f

    goto/16 :goto_4

    :cond_15
    if-eqz v4, :cond_16

    const v8, 0x7f100122

    goto/16 :goto_4

    :cond_16
    if-eqz v6, :cond_17

    const v8, 0x7f100121

    goto/16 :goto_4

    :cond_17
    const v8, 0x7f100120

    goto/16 :goto_4

    :cond_18
    iget-object v12, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/ime/framework/common/InputManager;->getSelectedLanguageList()[Lcom/ime/framework/common/Language;

    move-result-object v12

    array-length v12, v12

    const/4 v13, 0x1

    if-le v12, v13, :cond_19

    if-nez v3, :cond_19

    packed-switch p1, :pswitch_data_7

    const v8, 0x7f100126

    goto/16 :goto_4

    :pswitch_15
    const v8, 0x7f100126

    goto/16 :goto_4

    :pswitch_16
    const v8, 0x7f100128

    goto/16 :goto_4

    :pswitch_17
    const v8, 0x7f10012a

    goto/16 :goto_4

    :pswitch_18
    const v8, 0x7f10013d

    goto/16 :goto_4

    :cond_19
    packed-switch p1, :pswitch_data_8

    const v8, 0x7f100127

    goto/16 :goto_4

    :pswitch_19
    const v8, 0x7f100127

    goto/16 :goto_4

    :pswitch_1a
    const v8, 0x7f100129

    goto/16 :goto_4

    :pswitch_1b
    const v8, 0x7f10012b

    goto/16 :goto_4

    :pswitch_1c
    const v8, 0x7f100140

    goto/16 :goto_4

    :pswitch_1d
    iget-object v12, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/ime/framework/common/InputManager;->getSelectedLanguageList()[Lcom/ime/framework/common/Language;

    move-result-object v12

    array-length v12, v12

    const/4 v13, 0x1

    if-le v12, v13, :cond_1b

    if-nez v3, :cond_1b

    invoke-virtual {p0}, Lcom/ime/implement/view/ViewControllerImpl;->isUseGlobalKey()Z

    move-result v12

    if-nez v12, :cond_1a

    iget-boolean v12, p0, Lcom/ime/implement/view/ViewControllerImpl;->mIsTabletMode:Z

    if-eqz v12, :cond_1b

    :cond_1a
    packed-switch p1, :pswitch_data_9

    const v8, 0x7f100126

    goto/16 :goto_4

    :pswitch_1e
    const v8, 0x7f100126

    goto/16 :goto_4

    :pswitch_1f
    const v8, 0x7f100128

    goto/16 :goto_4

    :pswitch_20
    const v8, 0x7f10012a

    goto/16 :goto_4

    :cond_1b
    const-string v12, "USA"

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/ConfigFeature;->getRegion()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1c

    invoke-virtual {p0}, Lcom/ime/implement/view/ViewControllerImpl;->isUseGlobalKey()Z

    move-result v12

    if-nez v12, :cond_1c

    iget-boolean v12, p0, Lcom/ime/implement/view/ViewControllerImpl;->mIsCommaKeyAsDefault:Z

    if-eqz v12, :cond_1c

    packed-switch p1, :pswitch_data_a

    const v8, 0x7f10012c

    goto/16 :goto_4

    :pswitch_21
    const v8, 0x7f10012c

    goto/16 :goto_4

    :pswitch_22
    const v8, 0x7f10012d

    goto/16 :goto_4

    :pswitch_23
    const v8, 0x7f10012e

    goto/16 :goto_4

    :cond_1c
    packed-switch p1, :pswitch_data_b

    const v8, 0x7f100127

    goto/16 :goto_4

    :pswitch_24
    const v8, 0x7f100127

    goto/16 :goto_4

    :pswitch_25
    const v8, 0x7f100129

    goto/16 :goto_4

    :pswitch_26
    const v8, 0x7f10012b

    goto/16 :goto_4

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_7
        :pswitch_14
        :pswitch_1d
        :pswitch_6
        :pswitch_1d
        :pswitch_6
        :pswitch_6
        :pswitch_7
        :pswitch_7
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x0
        :pswitch_e
        :pswitch_f
        :pswitch_10
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x0
        :pswitch_11
        :pswitch_12
        :pswitch_13
    .end packed-switch

    :pswitch_data_7
    .packed-switch 0x0
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
    .end packed-switch

    :pswitch_data_8
    .packed-switch 0x0
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
    .end packed-switch

    :pswitch_data_9
    .packed-switch 0x0
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
    .end packed-switch

    :pswitch_data_a
    .packed-switch 0x0
        :pswitch_21
        :pswitch_22
        :pswitch_23
    .end packed-switch

    :pswitch_data_b
    .packed-switch 0x0
        :pswitch_24
        :pswitch_25
        :pswitch_26
    .end packed-switch
.end method

.method private getDragonVoiceKeyboard()Lcom/ime/framework/view/DefaultKeyboard;
    .locals 7

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/ime/framework/view/DefaultKeyboard;

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v0}, Lcom/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v5

    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v1, "INPUT_LANGUAGE"

    const v6, 0x656e4742

    invoke-interface {v0, v1, v6}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v4

    const/4 v3, 0x0

    const/16 v0, 0x8

    if-ne v5, v0, :cond_2

    const v2, 0x7f050071

    :goto_0
    const v0, 0x7a68434e

    if-eq v4, v0, :cond_0

    const v0, 0x7a68484b

    if-eq v4, v0, :cond_0

    const v0, 0x7a685457

    if-ne v4, v0, :cond_3

    :cond_0
    const v3, 0x7f100143

    :goto_1
    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mPrevKeyboard:Lcom/ime/framework/view/DefaultKeyboard;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputMethodId:I

    if-ne v5, v0, :cond_1

    iget v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mXmlID:I

    if-ne v0, v2, :cond_1

    iget v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mModeID:I

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mIsLandscape:Z

    iget-object v1, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->isOrientationLandscape()Z

    move-result v1

    if-eq v0, v1, :cond_4

    :cond_1
    new-instance v0, Lcom/ime/framework/view/DefaultKeyboard;

    iget-object v1, p0, Lcom/ime/implement/view/ViewControllerImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2, v3}, Lcom/ime/framework/view/DefaultKeyboard;-><init>(Landroid/content/Context;II)V

    iput-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/ime/framework/view/DefaultKeyboard;

    iget-object v1, p0, Lcom/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/ime/framework/view/DefaultKeyboard;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/ime/implement/view/ViewControllerImpl;->setCurrentKeyboardInfo(Lcom/ime/framework/view/DefaultKeyboard;IIII)V

    :goto_2
    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/ime/framework/view/DefaultKeyboard;

    return-object v0

    :cond_2
    const v2, 0x7f05026a

    goto :goto_0

    :cond_3
    const v3, 0x7f10011f

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mPrevKeyboard:Lcom/ime/framework/view/DefaultKeyboard;

    iput-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/ime/framework/view/DefaultKeyboard;

    goto :goto_2
.end method

.method private getDualFullQwertyKeyboardXmlId(I)I
    .locals 14

    iget-object v10, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v10}, Lcom/ime/framework/common/InputManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v6

    const-string v10, "da_mode"

    const/4 v11, 0x0

    invoke-interface {v6, v10, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    const-string v10, "da_language"

    const/4 v11, -0x1

    invoke-interface {v6, v10, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-eqz v4, :cond_0

    move p1, v1

    :cond_0
    const/high16 v10, -0x10000

    and-int v5, p1, v10

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v7

    iget-object v10, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v10}, Lcom/ime/framework/common/InputManager;->isSwiftKeyMode()Z

    move-result v10

    if-eqz v10, :cond_2

    iget-object v10, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v10}, Lcom/ime/framework/common/InputManager;->getCurrentInputCountryCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_2

    const-string v10, "CH"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    const v10, 0x66724652

    if-eq p1, v10, :cond_2

    :cond_1
    move-object v7, v3

    :cond_2
    const v9, 0x7f050141

    iget-object v10, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    const/4 v11, 0x0

    invoke-virtual {v10, p1, v11}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(II)V

    iget-object v10, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    const/high16 v11, 0x656e0000

    invoke-virtual {v10, v11}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setDefaultLanguage(I)V

    sparse-switch v5, :sswitch_data_0

    iget-object v10, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    const/4 v11, 0x0

    invoke-virtual {v10, p1, v11}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(II)V

    const v9, 0x7f050141

    :goto_0
    return v9

    :sswitch_0
    iget-object v10, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    const/high16 v11, 0x68690000

    invoke-virtual {v10, v11}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setDefaultLanguage(I)V

    const v9, 0x7f05015b

    goto :goto_0

    :sswitch_1
    iget-object v10, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    const/high16 v11, 0x626e0000

    invoke-virtual {v10, v11}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setDefaultLanguage(I)V

    const v9, 0x7f05015b

    goto :goto_0

    :sswitch_2
    iget-object v10, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    const/high16 v11, 0x68690000

    invoke-virtual {v10, v11}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setDefaultLanguage(I)V

    const v9, 0x7f05015c

    goto :goto_0

    :sswitch_3
    iget-object v10, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    const/high16 v11, 0x68690000

    invoke-virtual {v10, v11}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setDefaultLanguage(I)V

    const v9, 0x7f05015d

    goto :goto_0

    :sswitch_4
    iget-object v10, p0, Lcom/ime/implement/view/ViewControllerImpl;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v11, "SETTINGS_TURKISH_KEYBOARD_TYPE"

    const/4 v12, 0x0

    invoke-interface {v10, v11, v12}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v8

    packed-switch v8, :pswitch_data_0

    iget-object v10, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    const/high16 v11, 0x656e0000

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(II)V

    const v9, 0x7f050141

    goto :goto_0

    :pswitch_0
    const v9, 0x7f050154

    goto :goto_0

    :pswitch_1
    const v9, 0x7f050157

    goto :goto_0

    :sswitch_5
    const v9, 0x7f050141

    goto :goto_0

    :sswitch_6
    const v9, 0x7f050143

    goto :goto_0

    :sswitch_7
    iget-object v10, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    const/high16 v11, 0x64650000

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(II)V

    const v9, 0x7f050141

    goto :goto_0

    :sswitch_8
    const-string v10, "BE"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    iget-object v10, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    const v11, 0x66724652

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(II)V

    const v9, 0x7f050139

    goto :goto_0

    :cond_3
    iget-object v10, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    const/high16 v11, 0x656e0000

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(II)V

    const v9, 0x7f050141

    goto/16 :goto_0

    :sswitch_9
    iget-object v10, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    const/high16 v11, 0x65730000

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(II)V

    const v9, 0x7f050139

    goto/16 :goto_0

    :sswitch_a
    const v9, 0x7f050139

    goto/16 :goto_0

    :sswitch_b
    const-string v10, "CH"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    iget-object v10, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    const/high16 v11, 0x64650000

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(II)V

    const v9, 0x7f050141

    goto/16 :goto_0

    :cond_4
    const v9, 0x7f050141

    goto/16 :goto_0

    :sswitch_c
    iget-object v10, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v10}, Lcom/ime/framework/common/InputManager;->isUpdateKeyboardCodeValues()Z

    move-result v10

    if-eqz v10, :cond_5

    iget-object v10, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    const/high16 v11, 0x6b6f0000

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v10, v11, v12, v13}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->resetLanguageCodes(III)V

    :cond_5
    iget-object v10, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    const/high16 v11, 0x6b6f0000

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(II)V

    const v9, 0x7f050141

    goto/16 :goto_0

    :sswitch_d
    iget-object v10, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v10}, Lcom/ime/framework/common/InputManager;->getXt9Version()I

    move-result v10

    const/4 v11, 0x2

    if-lt v10, v11, :cond_8

    const v10, 0x66724341

    if-eq p1, v10, :cond_6

    const/high16 v10, 0x66720000

    if-ne p1, v10, :cond_7

    const-string v10, "CA"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    :cond_6
    iget-object v10, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    const/high16 v11, 0x656e0000

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(II)V

    const v9, 0x7f050141

    goto/16 :goto_0

    :cond_7
    iget-object v10, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    const v11, 0x66724652

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(II)V

    const v9, 0x7f05013a

    goto/16 :goto_0

    :cond_8
    const-string v10, "CA"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    iget-object v10, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    const/high16 v11, 0x656e0000

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(II)V

    const v9, 0x7f050141

    goto/16 :goto_0

    :cond_9
    const-string v10, "CH"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    iget-object v10, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    const/high16 v11, 0x64650000

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(II)V

    const v9, 0x7f050141

    goto/16 :goto_0

    :cond_a
    iget-object v10, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    const v11, 0x66724652

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(II)V

    const v9, 0x7f05013a

    goto/16 :goto_0

    :sswitch_e
    iget-object v10, p0, Lcom/ime/implement/view/ViewControllerImpl;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v11, "SETTINGS_GERMAN_KEYBOARD_TYPE"

    const/4 v12, 0x1

    invoke-interface {v10, v11, v12}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v2

    packed-switch v2, :pswitch_data_1

    const v9, 0x7f050141

    goto/16 :goto_0

    :pswitch_2
    iget-object v10, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    const v11, 0x64654445

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(II)V

    const v9, 0x7f05014c

    goto/16 :goto_0

    :sswitch_f
    const v9, 0x7f05013d

    goto/16 :goto_0

    :sswitch_10
    const v9, 0x7f05014f

    goto/16 :goto_0

    :sswitch_11
    const v9, 0x7f05014c

    goto/16 :goto_0

    :sswitch_12
    iget-object v10, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    const/high16 v11, 0x66690000

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(II)V

    const v9, 0x7f05014c

    goto/16 :goto_0

    :sswitch_13
    const v9, 0x7f050154

    goto/16 :goto_0

    :sswitch_14
    iget-object v10, p0, Lcom/ime/implement/view/ViewControllerImpl;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v11, "SETTINGS_BULGARIAN_KEYBOARD_TYPE"

    const/4 v12, 0x0

    invoke-interface {v10, v11, v12}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v0

    packed-switch v0, :pswitch_data_2

    iget-boolean v10, p0, Lcom/ime/implement/view/ViewControllerImpl;->mIsTabletMode:Z

    if-eqz v10, :cond_b

    const v9, 0x7f050135

    goto/16 :goto_0

    :pswitch_3
    const v9, 0x7f050136

    goto/16 :goto_0

    :cond_b
    const v9, 0x7f05014e

    goto/16 :goto_0

    :sswitch_15
    const v9, 0x7f050159

    goto/16 :goto_0

    :sswitch_16
    const v9, 0x7f05013b

    goto/16 :goto_0

    :sswitch_17
    const v9, 0x7f050149

    goto/16 :goto_0

    :sswitch_18
    const v10, 0x7a68484b

    if-ne p1, v10, :cond_c

    iget-object v10, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    const v11, 0x7a68484b

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(II)V

    const v9, 0x7f050144

    goto/16 :goto_0

    :cond_c
    const v10, 0x7a685457

    if-ne p1, v10, :cond_d

    const v9, 0x7f050146

    goto/16 :goto_0

    :cond_d
    iget-object v10, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    const/high16 v11, 0x7a680000

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(II)V

    const v9, 0x7f050141

    goto/16 :goto_0

    :sswitch_19
    const v9, 0x7f050150

    goto/16 :goto_0

    :sswitch_1a
    const v9, 0x7f050156

    goto/16 :goto_0

    :sswitch_1b
    invoke-static {}, Lcom/ime/framework/input/Telex/Telex;->getVietnameseInputMode()I

    move-result v10

    const/4 v11, 0x2

    if-ne v10, v11, :cond_e

    iget-boolean v10, p0, Lcom/ime/implement/view/ViewControllerImpl;->mIsAddNumberKeyFirstLine:Z

    if-nez v10, :cond_e

    const v9, 0x7f050137

    goto/16 :goto_0

    :cond_e
    invoke-static {}, Lcom/ime/framework/input/Telex/Telex;->isVietnameseEaseMode()Z

    move-result v10

    if-eqz v10, :cond_f

    const v9, 0x7f050147

    goto/16 :goto_0

    :cond_f
    const v9, 0x7f05013e

    goto/16 :goto_0

    :sswitch_1c
    const v9, 0x7f05014a

    goto/16 :goto_0

    :sswitch_1d
    const v9, 0x7f050158

    goto/16 :goto_0

    :sswitch_1e
    const v9, 0x7f050141

    goto/16 :goto_0

    :sswitch_1f
    const v9, 0x7f05014b

    goto/16 :goto_0

    :sswitch_20
    const v9, 0x7f050154

    goto/16 :goto_0

    :sswitch_21
    const v9, 0x7f05015a

    goto/16 :goto_0

    :sswitch_22
    const v9, 0x7f050153

    goto/16 :goto_0

    :sswitch_23
    const v9, 0x7f050152

    goto/16 :goto_0

    :sswitch_24
    const v9, 0x7f050148

    goto/16 :goto_0

    :sswitch_25
    const v9, 0x7f050138

    goto/16 :goto_0

    :sswitch_26
    const v9, 0x7f050142

    goto/16 :goto_0

    :sswitch_27
    const v9, 0x7f050151

    goto/16 :goto_0

    :sswitch_28
    iget-object v10, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    const/high16 v11, 0x757a0000

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(II)V

    const v9, 0x7f050141

    goto/16 :goto_0

    :sswitch_29
    const v9, 0x7f050155

    goto/16 :goto_0

    :sswitch_2a
    const v9, 0x7f050151

    goto/16 :goto_0

    :sswitch_2b
    const v9, 0x7f050145

    goto/16 :goto_0

    :sswitch_2c
    const v9, 0x7f05014d

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x61720000 -> :sswitch_1c
        0x61730000 -> :sswitch_1
        0x617a0000 -> :sswitch_20
        0x62650000 -> :sswitch_20
        0x62670000 -> :sswitch_14
        0x626e0000 -> :sswitch_0
        0x63610000 -> :sswitch_5
        0x63730000 -> :sswitch_7
        0x64610000 -> :sswitch_11
        0x64650000 -> :sswitch_e
        0x656c0000 -> :sswitch_15
        0x656e0000 -> :sswitch_5
        0x65730000 -> :sswitch_9
        0x65734553 -> :sswitch_9
        0x65735553 -> :sswitch_9
        0x65740000 -> :sswitch_23
        0x65750000 -> :sswitch_5
        0x66610000 -> :sswitch_a
        0x66690000 -> :sswitch_11
        0x66720000 -> :sswitch_d
        0x66724341 -> :sswitch_d
        0x66724652 -> :sswitch_d
        0x676c0000 -> :sswitch_5
        0x67750000 -> :sswitch_0
        0x68690000 -> :sswitch_0
        0x68720000 -> :sswitch_7
        0x68750000 -> :sswitch_7
        0x68790000 -> :sswitch_1f
        0x69640000 -> :sswitch_5
        0x69730000 -> :sswitch_17
        0x69740000 -> :sswitch_b
        0x69770000 -> :sswitch_1d
        0x6a610000 -> :sswitch_26
        0x6b610000 -> :sswitch_1e
        0x6b6b0000 -> :sswitch_f
        0x6b6d0000 -> :sswitch_25
        0x6b6e0000 -> :sswitch_0
        0x6b6f0000 -> :sswitch_c
        0x6b790000 -> :sswitch_29
        0x6c6f0000 -> :sswitch_1a
        0x6c740000 -> :sswitch_21
        0x6c760000 -> :sswitch_16
        0x6d6b0000 -> :sswitch_22
        0x6d6c0000 -> :sswitch_0
        0x6d6e0000 -> :sswitch_27
        0x6d720000 -> :sswitch_0
        0x6d730000 -> :sswitch_5
        0x6d790000 -> :sswitch_2c
        0x6e620000 -> :sswitch_11
        0x6e650000 -> :sswitch_0
        0x6e6c0000 -> :sswitch_8
        0x6f720000 -> :sswitch_0
        0x70610000 -> :sswitch_2
        0x706c0000 -> :sswitch_5
        0x70740000 -> :sswitch_5
        0x726f0000 -> :sswitch_5
        0x72750000 -> :sswitch_10
        0x73690000 -> :sswitch_0
        0x736b0000 -> :sswitch_5
        0x736c0000 -> :sswitch_6
        0x73710000 -> :sswitch_24
        0x73720000 -> :sswitch_7
        0x73760000 -> :sswitch_12
        0x737a0000 -> :sswitch_5
        0x74610000 -> :sswitch_3
        0x74650000 -> :sswitch_0
        0x74670000 -> :sswitch_2a
        0x74680000 -> :sswitch_19
        0x746b0000 -> :sswitch_2b
        0x74720000 -> :sswitch_4
        0x756b0000 -> :sswitch_13
        0x75720000 -> :sswitch_a
        0x757a0000 -> :sswitch_28
        0x76690000 -> :sswitch_1b
        0x7a310000 -> :sswitch_2c
        0x7a680000 -> :sswitch_18
        0x7a68434e -> :sswitch_18
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_3
    .end packed-switch
.end method

.method private getDualQwertyKeyboardXmlId(I)I
    .locals 14

    iget-object v10, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v10}, Lcom/ime/framework/common/InputManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v6

    const-string v10, "da_mode"

    const/4 v11, 0x0

    invoke-interface {v6, v10, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    const-string v10, "da_language"

    const/4 v11, -0x1

    invoke-interface {v6, v10, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-eqz v4, :cond_0

    move p1, v1

    :cond_0
    const/high16 v10, -0x10000

    and-int v5, p1, v10

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v7

    iget-object v10, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v10}, Lcom/ime/framework/common/InputManager;->isSwiftKeyMode()Z

    move-result v10

    if-eqz v10, :cond_2

    iget-object v10, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v10}, Lcom/ime/framework/common/InputManager;->getCurrentInputCountryCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_2

    const-string v10, "CH"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    const v10, 0x66724652

    if-eq p1, v10, :cond_2

    :cond_1
    move-object v7, v3

    :cond_2
    const v9, 0x7f050140

    iget-object v10, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    const/4 v11, 0x0

    invoke-virtual {v10, p1, v11}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(II)V

    iget-object v10, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    const/high16 v11, 0x656e0000

    invoke-virtual {v10, v11}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setDefaultLanguage(I)V

    sparse-switch v5, :sswitch_data_0

    iget-object v10, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    const/4 v11, 0x0

    invoke-virtual {v10, p1, v11}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(II)V

    const v9, 0x7f050140

    :goto_0
    return v9

    :sswitch_0
    iget-object v10, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    const/high16 v11, 0x68690000

    invoke-virtual {v10, v11}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setDefaultLanguage(I)V

    const v9, 0x7f05015b

    goto :goto_0

    :sswitch_1
    iget-object v10, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    const/high16 v11, 0x626e0000

    invoke-virtual {v10, v11}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setDefaultLanguage(I)V

    const v9, 0x7f05015b

    goto :goto_0

    :sswitch_2
    iget-object v10, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    const/high16 v11, 0x68690000

    invoke-virtual {v10, v11}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setDefaultLanguage(I)V

    const v9, 0x7f05015c

    goto :goto_0

    :sswitch_3
    iget-object v10, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    const/high16 v11, 0x68690000

    invoke-virtual {v10, v11}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setDefaultLanguage(I)V

    const v9, 0x7f05015d

    goto :goto_0

    :sswitch_4
    iget-object v10, p0, Lcom/ime/implement/view/ViewControllerImpl;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v11, "SETTINGS_TURKISH_KEYBOARD_TYPE"

    const/4 v12, 0x0

    invoke-interface {v10, v11, v12}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v8

    packed-switch v8, :pswitch_data_0

    iget-object v10, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    const/high16 v11, 0x656e0000

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(II)V

    const v9, 0x7f050140

    goto :goto_0

    :pswitch_0
    const v9, 0x7f050154

    goto :goto_0

    :pswitch_1
    const v9, 0x7f050157

    goto :goto_0

    :sswitch_5
    const v9, 0x7f050140

    goto :goto_0

    :sswitch_6
    const v9, 0x7f050143

    goto :goto_0

    :sswitch_7
    iget-object v10, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    const/high16 v11, 0x64650000

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(II)V

    const v9, 0x7f050140

    goto :goto_0

    :sswitch_8
    const-string v10, "BE"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    iget-object v10, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    const v11, 0x66724652

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(II)V

    const v9, 0x7f050139

    goto :goto_0

    :cond_3
    iget-object v10, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    const/high16 v11, 0x656e0000

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(II)V

    const v9, 0x7f050140

    goto/16 :goto_0

    :sswitch_9
    iget-object v10, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    const/high16 v11, 0x65730000

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(II)V

    const v9, 0x7f050139

    goto/16 :goto_0

    :sswitch_a
    const v9, 0x7f050139

    goto/16 :goto_0

    :sswitch_b
    const-string v10, "CH"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    iget-object v10, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    const/high16 v11, 0x64650000

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(II)V

    const v9, 0x7f050140

    goto/16 :goto_0

    :cond_4
    const v9, 0x7f050140

    goto/16 :goto_0

    :sswitch_c
    iget-object v10, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v10}, Lcom/ime/framework/common/InputManager;->isUpdateKeyboardCodeValues()Z

    move-result v10

    if-eqz v10, :cond_5

    iget-object v10, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    const/high16 v11, 0x6b6f0000

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v10, v11, v12, v13}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->resetLanguageCodes(III)V

    :cond_5
    iget-object v10, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    const/high16 v11, 0x6b6f0000

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(II)V

    const v9, 0x7f050140

    goto/16 :goto_0

    :sswitch_d
    iget-object v10, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v10}, Lcom/ime/framework/common/InputManager;->getXt9Version()I

    move-result v10

    const/4 v11, 0x2

    if-lt v10, v11, :cond_8

    const v10, 0x66724341

    if-eq p1, v10, :cond_6

    const/high16 v10, 0x66720000

    if-ne p1, v10, :cond_7

    const-string v10, "CA"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    :cond_6
    iget-object v10, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    const/high16 v11, 0x656e0000

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(II)V

    const v9, 0x7f050140

    goto/16 :goto_0

    :cond_7
    iget-object v10, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    const v11, 0x66724652

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(II)V

    const v9, 0x7f05013a

    goto/16 :goto_0

    :cond_8
    const-string v10, "CA"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    iget-object v10, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    const/high16 v11, 0x656e0000

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(II)V

    const v9, 0x7f050140

    goto/16 :goto_0

    :cond_9
    const-string v10, "CH"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    iget-object v10, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    const/high16 v11, 0x64650000

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(II)V

    const v9, 0x7f050140

    goto/16 :goto_0

    :cond_a
    iget-object v10, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    const v11, 0x66724652

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(II)V

    const v9, 0x7f05013a

    goto/16 :goto_0

    :sswitch_e
    iget-object v10, p0, Lcom/ime/implement/view/ViewControllerImpl;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v11, "SETTINGS_GERMAN_KEYBOARD_TYPE"

    const/4 v12, 0x1

    invoke-interface {v10, v11, v12}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v2

    packed-switch v2, :pswitch_data_1

    const v9, 0x7f050140

    goto/16 :goto_0

    :pswitch_2
    iget-object v10, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    const v11, 0x64654445

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(II)V

    const v9, 0x7f05014c

    goto/16 :goto_0

    :sswitch_f
    const v9, 0x7f05013d

    goto/16 :goto_0

    :sswitch_10
    const v9, 0x7f05014f

    goto/16 :goto_0

    :sswitch_11
    const v9, 0x7f05014c

    goto/16 :goto_0

    :sswitch_12
    iget-object v10, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    const/high16 v11, 0x66690000

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(II)V

    const v9, 0x7f05014c

    goto/16 :goto_0

    :sswitch_13
    const v9, 0x7f050154

    goto/16 :goto_0

    :sswitch_14
    iget-object v10, p0, Lcom/ime/implement/view/ViewControllerImpl;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v11, "SETTINGS_BULGARIAN_KEYBOARD_TYPE"

    const/4 v12, 0x0

    invoke-interface {v10, v11, v12}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v0

    packed-switch v0, :pswitch_data_2

    iget-boolean v10, p0, Lcom/ime/implement/view/ViewControllerImpl;->mIsTabletMode:Z

    if-eqz v10, :cond_b

    const v9, 0x7f050135

    goto/16 :goto_0

    :pswitch_3
    const v9, 0x7f050136

    goto/16 :goto_0

    :cond_b
    const v9, 0x7f05014e

    goto/16 :goto_0

    :sswitch_15
    const v9, 0x7f050159

    goto/16 :goto_0

    :sswitch_16
    const v9, 0x7f05013b

    goto/16 :goto_0

    :sswitch_17
    const v9, 0x7f050149

    goto/16 :goto_0

    :sswitch_18
    const v10, 0x7a68484b

    if-ne p1, v10, :cond_c

    iget-object v10, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    const v11, 0x7a68484b

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(II)V

    const v9, 0x7f050144

    goto/16 :goto_0

    :cond_c
    const v10, 0x7a685457

    if-ne p1, v10, :cond_d

    const v9, 0x7f050146

    goto/16 :goto_0

    :cond_d
    iget-object v10, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    const/high16 v11, 0x7a680000

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(II)V

    const v9, 0x7f05013f

    goto/16 :goto_0

    :sswitch_19
    const v9, 0x7f050150

    goto/16 :goto_0

    :sswitch_1a
    const v9, 0x7f050156

    goto/16 :goto_0

    :sswitch_1b
    invoke-static {}, Lcom/ime/framework/input/Telex/Telex;->getVietnameseInputMode()I

    move-result v10

    const/4 v11, 0x2

    if-ne v10, v11, :cond_e

    iget-boolean v10, p0, Lcom/ime/implement/view/ViewControllerImpl;->mIsAddNumberKeyFirstLine:Z

    if-nez v10, :cond_e

    const v9, 0x7f050137

    goto/16 :goto_0

    :cond_e
    invoke-static {}, Lcom/ime/framework/input/Telex/Telex;->isVietnameseEaseMode()Z

    move-result v10

    if-eqz v10, :cond_f

    const v9, 0x7f050147

    goto/16 :goto_0

    :cond_f
    const v9, 0x7f05013e

    goto/16 :goto_0

    :sswitch_1c
    const v9, 0x7f05014a

    goto/16 :goto_0

    :sswitch_1d
    const v9, 0x7f050158

    goto/16 :goto_0

    :sswitch_1e
    const v9, 0x7f050140

    goto/16 :goto_0

    :sswitch_1f
    const v9, 0x7f05014b

    goto/16 :goto_0

    :sswitch_20
    const v9, 0x7f050154

    goto/16 :goto_0

    :sswitch_21
    const v9, 0x7f05015a

    goto/16 :goto_0

    :sswitch_22
    const v9, 0x7f050153

    goto/16 :goto_0

    :sswitch_23
    const v9, 0x7f050152

    goto/16 :goto_0

    :sswitch_24
    const v9, 0x7f050148

    goto/16 :goto_0

    :sswitch_25
    const v9, 0x7f050138

    goto/16 :goto_0

    :sswitch_26
    const v9, 0x7f050142

    goto/16 :goto_0

    :sswitch_27
    const v9, 0x7f050151

    goto/16 :goto_0

    :sswitch_28
    iget-object v10, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    const/high16 v11, 0x757a0000

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(II)V

    const v9, 0x7f050140

    goto/16 :goto_0

    :sswitch_29
    const v9, 0x7f050155

    goto/16 :goto_0

    :sswitch_2a
    const v9, 0x7f050151

    goto/16 :goto_0

    :sswitch_2b
    const v9, 0x7f050145

    goto/16 :goto_0

    :sswitch_2c
    const v9, 0x7f05014d

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x61720000 -> :sswitch_1c
        0x61730000 -> :sswitch_1
        0x617a0000 -> :sswitch_20
        0x62650000 -> :sswitch_20
        0x62670000 -> :sswitch_14
        0x626e0000 -> :sswitch_0
        0x63610000 -> :sswitch_5
        0x63730000 -> :sswitch_7
        0x64610000 -> :sswitch_11
        0x64650000 -> :sswitch_e
        0x656c0000 -> :sswitch_15
        0x656e0000 -> :sswitch_5
        0x65730000 -> :sswitch_9
        0x65734553 -> :sswitch_9
        0x65735553 -> :sswitch_9
        0x65740000 -> :sswitch_23
        0x65750000 -> :sswitch_5
        0x66610000 -> :sswitch_a
        0x66690000 -> :sswitch_11
        0x66720000 -> :sswitch_d
        0x66724341 -> :sswitch_d
        0x66724652 -> :sswitch_d
        0x676c0000 -> :sswitch_5
        0x67750000 -> :sswitch_0
        0x68690000 -> :sswitch_0
        0x68720000 -> :sswitch_7
        0x68750000 -> :sswitch_7
        0x68790000 -> :sswitch_1f
        0x69640000 -> :sswitch_5
        0x69730000 -> :sswitch_17
        0x69740000 -> :sswitch_b
        0x69770000 -> :sswitch_1d
        0x6a610000 -> :sswitch_26
        0x6b610000 -> :sswitch_1e
        0x6b6b0000 -> :sswitch_f
        0x6b6d0000 -> :sswitch_25
        0x6b6e0000 -> :sswitch_0
        0x6b6f0000 -> :sswitch_c
        0x6b790000 -> :sswitch_29
        0x6c6f0000 -> :sswitch_1a
        0x6c740000 -> :sswitch_21
        0x6c760000 -> :sswitch_16
        0x6d6b0000 -> :sswitch_22
        0x6d6c0000 -> :sswitch_0
        0x6d6e0000 -> :sswitch_27
        0x6d720000 -> :sswitch_0
        0x6d730000 -> :sswitch_5
        0x6d790000 -> :sswitch_2c
        0x6e620000 -> :sswitch_11
        0x6e650000 -> :sswitch_0
        0x6e6c0000 -> :sswitch_8
        0x6f720000 -> :sswitch_0
        0x70610000 -> :sswitch_2
        0x706c0000 -> :sswitch_5
        0x70740000 -> :sswitch_5
        0x726f0000 -> :sswitch_5
        0x72750000 -> :sswitch_10
        0x73690000 -> :sswitch_0
        0x736b0000 -> :sswitch_5
        0x736c0000 -> :sswitch_6
        0x73710000 -> :sswitch_24
        0x73720000 -> :sswitch_7
        0x73760000 -> :sswitch_12
        0x737a0000 -> :sswitch_5
        0x74610000 -> :sswitch_3
        0x74650000 -> :sswitch_0
        0x74670000 -> :sswitch_2a
        0x74680000 -> :sswitch_19
        0x746b0000 -> :sswitch_2b
        0x74720000 -> :sswitch_4
        0x756b0000 -> :sswitch_13
        0x75720000 -> :sswitch_a
        0x757a0000 -> :sswitch_28
        0x76690000 -> :sswitch_1b
        0x7a310000 -> :sswitch_2c
        0x7a680000 -> :sswitch_18
        0x7a68434e -> :sswitch_18
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_3
    .end packed-switch
.end method

.method private getEmoticonKeyboard()Lcom/ime/framework/view/DefaultKeyboard;
    .locals 6

    const-string v0, "SamsungIME"

    const-string v1, "getEmoticonKeyboard"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/ime/framework/view/DefaultKeyboard;

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v0}, Lcom/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v5

    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v1, "INPUT_LANGUAGE"

    const v3, 0x656e4742

    invoke-interface {v0, v1, v3}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v4

    const/4 v0, 0x2

    if-eq v5, v0, :cond_0

    const/4 v0, 0x4

    if-ne v5, v0, :cond_2

    :cond_0
    const v2, 0x7f050075

    :goto_0
    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mPrevKeyboard:Lcom/ime/framework/view/DefaultKeyboard;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputMethodId:I

    if-ne v5, v0, :cond_1

    iget v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mXmlID:I

    if-ne v0, v2, :cond_1

    iget v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mModeID:I

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mIsLandscape:Z

    iget-object v1, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->isOrientationLandscape()Z

    move-result v1

    if-eq v0, v1, :cond_4

    :cond_1
    new-instance v0, Lcom/ime/framework/view/DefaultKeyboard;

    iget-object v1, p0, Lcom/ime/implement/view/ViewControllerImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/ime/framework/view/DefaultKeyboard;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/ime/framework/view/DefaultKeyboard;

    iget-object v1, p0, Lcom/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/ime/framework/view/DefaultKeyboard;

    const/4 v3, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/ime/implement/view/ViewControllerImpl;->setCurrentKeyboardInfo(Lcom/ime/framework/view/DefaultKeyboard;IIII)V

    :goto_1
    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/ime/framework/view/DefaultKeyboard;

    return-object v0

    :cond_2
    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->isEnableOneHandKeypad()Z

    move-result v0

    if-eqz v0, :cond_3

    const v2, 0x7f050080

    goto :goto_0

    :cond_3
    const v2, 0x7f050165

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mPrevKeyboard:Lcom/ime/framework/view/DefaultKeyboard;

    iput-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/ime/framework/view/DefaultKeyboard;

    goto :goto_1
.end method

.method private getEmoticonMobileKeyboard()Lcom/ime/framework/view/DefaultKeyboard;
    .locals 8

    const/4 v3, 0x0

    const-string v0, "SamsungIME"

    const-string v1, "getEmoticonMobileKeyboard"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/ime/framework/view/DefaultKeyboard;

    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v0}, Lcom/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v5

    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v1, "INPUT_LANGUAGE"

    const v7, 0x656e4742

    invoke-interface {v0, v1, v7}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v4

    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v6

    const-string v0, "mobilekeyboard_need_empty_keyboard"

    invoke-interface {v6, v0, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    const v2, 0x7f05007c

    :goto_0
    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mPrevKeyboard:Lcom/ime/framework/view/DefaultKeyboard;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputMethodId:I

    if-ne v5, v0, :cond_0

    iget v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mXmlID:I

    if-ne v0, v2, :cond_0

    iget v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mModeID:I

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mIsLandscape:Z

    iget-object v1, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->isOrientationLandscape()Z

    move-result v1

    if-eq v0, v1, :cond_3

    :cond_0
    new-instance v0, Lcom/ime/framework/view/DefaultKeyboard;

    iget-object v1, p0, Lcom/ime/implement/view/ViewControllerImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/ime/framework/view/DefaultKeyboard;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/ime/framework/view/DefaultKeyboard;

    iget-object v1, p0, Lcom/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/ime/framework/view/DefaultKeyboard;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/ime/implement/view/ViewControllerImpl;->setCurrentKeyboardInfo(Lcom/ime/framework/view/DefaultKeyboard;IIII)V

    :goto_1
    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/ime/framework/view/DefaultKeyboard;

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/cocktailbar/CocktailBarFeatures;->isSupportCocktailPanel(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    const v2, 0x7f05007a

    goto :goto_0

    :cond_2
    const v2, 0x7f05007b

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mPrevKeyboard:Lcom/ime/framework/view/DefaultKeyboard;

    iput-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/ime/framework/view/DefaultKeyboard;

    goto :goto_1
.end method

.method private getEmoticonPopupKeyboard()Lcom/ime/framework/view/DefaultKeyboard;
    .locals 6

    const-string v0, "SamsungIME"

    const-string v1, "getEmoticonPopupKeyboard"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/ime/framework/view/DefaultKeyboard;

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v0}, Lcom/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v5

    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v1, "INPUT_LANGUAGE"

    const v3, 0x656e4742

    invoke-interface {v0, v1, v3}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v4

    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v0}, Lcom/ime/framework/inputmode/InputModeManager;->isFloatingHWRKeyboard()Z

    move-result v0

    if-eqz v0, :cond_1

    const v2, 0x7f05000b

    :goto_0
    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mPrevKeyboard:Lcom/ime/framework/view/DefaultKeyboard;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputMethodId:I

    if-ne v5, v0, :cond_0

    iget v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mXmlID:I

    if-ne v0, v2, :cond_0

    iget v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mModeID:I

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mIsLandscape:Z

    iget-object v1, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->isOrientationLandscape()Z

    move-result v1

    if-eq v0, v1, :cond_2

    :cond_0
    new-instance v0, Lcom/ime/framework/view/DefaultKeyboard;

    iget-object v1, p0, Lcom/ime/implement/view/ViewControllerImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/ime/framework/view/DefaultKeyboard;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/ime/framework/view/DefaultKeyboard;

    iget-object v1, p0, Lcom/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/ime/framework/view/DefaultKeyboard;

    const/4 v3, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/ime/implement/view/ViewControllerImpl;->setCurrentKeyboardInfo(Lcom/ime/framework/view/DefaultKeyboard;IIII)V

    :goto_1
    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/ime/framework/view/DefaultKeyboard;

    return-object v0

    :cond_1
    const v2, 0x7f05000a

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mPrevKeyboard:Lcom/ime/framework/view/DefaultKeyboard;

    iput-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/ime/framework/view/DefaultKeyboard;

    goto :goto_1
.end method

.method private getFloatingHWRKeyboardXmlId()I
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v1}, Lcom/ime/framework/inputmode/InputModeManager;->isVOHWRmodeEnable()Z

    move-result v1

    if-eqz v1, :cond_0

    const v0, 0x7f050269

    :goto_0
    return v0

    :cond_0
    const v0, 0x7f050002

    goto :goto_0
.end method

.method private getFloatingKeyboardXmlId(I)I
    .locals 14

    const/high16 v10, -0x10000

    and-int v5, p1, v10

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v7

    iget-object v10, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v10}, Lcom/ime/framework/common/InputManager;->isSwiftKeyMode()Z

    move-result v10

    if-eqz v10, :cond_1

    iget-object v10, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v10}, Lcom/ime/framework/common/InputManager;->getCurrentInputCountryCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_1

    const-string v10, "CH"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    const v10, 0x66724652

    if-eq p1, v10, :cond_1

    :cond_0
    move-object v7, v3

    :cond_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v6

    const/4 v9, 0x0

    const v9, 0x7f05004d

    iget-object v10, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    const/16 v11, 0x8

    invoke-virtual {v10, p1, v11}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(II)V

    iget-object v10, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    const/high16 v11, 0x656e0000

    invoke-virtual {v10, v11}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setDefaultLanguage(I)V

    sparse-switch v5, :sswitch_data_0

    iget-object v10, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    const/high16 v11, 0x656e0000

    const/16 v12, 0x8

    invoke-virtual {v10, v11, v12}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(II)V

    const v9, 0x7f05004d

    :cond_2
    :goto_0
    return v9

    :sswitch_0
    iget-object v10, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    const/high16 v11, 0x68690000

    invoke-virtual {v10, v11}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setDefaultLanguage(I)V

    const v9, 0x7f050066

    goto :goto_0

    :sswitch_1
    iget-object v10, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    const/high16 v11, 0x626e0000

    invoke-virtual {v10, v11}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setDefaultLanguage(I)V

    const v9, 0x7f050066

    goto :goto_0

    :sswitch_2
    iget-object v10, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    const/high16 v11, 0x68690000

    invoke-virtual {v10, v11}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setDefaultLanguage(I)V

    const v9, 0x7f05006a

    goto :goto_0

    :sswitch_3
    iget-object v10, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    const/high16 v11, 0x68690000

    invoke-virtual {v10, v11}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setDefaultLanguage(I)V

    const v9, 0x7f05006d

    goto :goto_0

    :sswitch_4
    :try_start_0
    iget-object v10, p0, Lcom/ime/implement/view/ViewControllerImpl;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v11, "SETTINGS_TURKISH_KEYBOARD_TYPE"

    const/4 v12, 0x0

    invoke-interface {v10, v11, v12}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v8

    packed-switch v8, :pswitch_data_0

    iget-object v10, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    const/high16 v11, 0x656e0000

    const/16 v12, 0x8

    invoke-virtual {v10, v11, v12}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(II)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const v9, 0x7f05004d

    goto :goto_0

    :pswitch_0
    const v9, 0x7f050060

    goto :goto_0

    :pswitch_1
    const v9, 0x7f05006e

    goto :goto_0

    :catch_0
    move-exception v1

    const v9, 0x7f05013e

    goto :goto_0

    :sswitch_5
    const v9, 0x7f05004d

    goto :goto_0

    :sswitch_6
    const v9, 0x7f050050

    goto :goto_0

    :sswitch_7
    iget-object v10, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    const/high16 v11, 0x64650000

    const/16 v12, 0x8

    invoke-virtual {v10, v11, v12}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(II)V

    const v9, 0x7f05004d

    goto :goto_0

    :sswitch_8
    const-string v10, "BE"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    iget-object v10, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    const v11, 0x66724652

    const/16 v12, 0x8

    invoke-virtual {v10, v11, v12}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(II)V

    const v9, 0x7f050048

    goto :goto_0

    :cond_3
    iget-object v10, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    const/high16 v11, 0x656e0000

    const/16 v12, 0x8

    invoke-virtual {v10, v11, v12}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(II)V

    const v9, 0x7f05004d

    goto/16 :goto_0

    :sswitch_9
    iget-object v10, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    const/high16 v11, 0x65730000

    const/16 v12, 0x8

    invoke-virtual {v10, v11, v12}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(II)V

    const v9, 0x7f050048

    goto/16 :goto_0

    :sswitch_a
    const v9, 0x7f050048

    goto/16 :goto_0

    :sswitch_b
    const-string v10, "CH"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    iget-object v10, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    const/high16 v11, 0x64650000

    const/16 v12, 0x8

    invoke-virtual {v10, v11, v12}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(II)V

    const v9, 0x7f05004d

    goto/16 :goto_0

    :cond_4
    const v9, 0x7f05004d

    goto/16 :goto_0

    :sswitch_c
    iget-boolean v10, p0, Lcom/ime/implement/view/ViewControllerImpl;->mIsKorMode:Z

    if-eqz v10, :cond_a

    iget-object v10, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v10}, Lcom/ime/framework/inputmode/InputModeManager;->getInputMethodOnKor()I

    move-result v4

    const/4 v10, 0x1

    if-ne v4, v10, :cond_5

    const-string v10, "floating_kr_cji"

    invoke-static {v10}, Lcom/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v9

    goto/16 :goto_0

    :cond_5
    const/4 v10, 0x2

    if-ne v4, v10, :cond_6

    const-string v10, "floating_kr_cji_turbo"

    invoke-static {v10}, Lcom/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v9

    goto/16 :goto_0

    :cond_6
    const/4 v10, 0x3

    if-ne v4, v10, :cond_7

    const-string v10, "floating_kr_sky"

    invoke-static {v10}, Lcom/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v9

    goto/16 :goto_0

    :cond_7
    const/4 v10, 0x4

    if-ne v4, v10, :cond_8

    const-string v10, "floating_kr_nara"

    invoke-static {v10}, Lcom/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v9

    goto/16 :goto_0

    :cond_8
    if-nez v4, :cond_2

    iget-object v10, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v10}, Lcom/ime/framework/common/InputManager;->isUpdateKeyboardCodeValues()Z

    move-result v10

    if-eqz v10, :cond_9

    iget-object v10, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    const/high16 v11, 0x6b6f0000

    const/16 v12, 0x8

    const/4 v13, 0x0

    invoke-virtual {v10, v11, v12, v13}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->resetLanguageCodes(III)V

    :cond_9
    iget-object v10, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    const/high16 v11, 0x6b6f0000

    const/16 v12, 0x8

    invoke-virtual {v10, v11, v12}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(II)V

    const v9, 0x7f05004d

    goto/16 :goto_0

    :cond_a
    iget-object v10, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    const/high16 v11, 0x6b6f0000

    const/16 v12, 0x8

    invoke-virtual {v10, v11, v12}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(II)V

    const v9, 0x7f05004d

    goto/16 :goto_0

    :sswitch_d
    iget-object v10, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v10}, Lcom/ime/framework/common/InputManager;->getXt9Version()I

    move-result v10

    const/4 v11, 0x2

    if-lt v10, v11, :cond_c

    const v10, 0x66724341

    if-ne p1, v10, :cond_b

    iget-object v10, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    const/high16 v11, 0x656e0000

    const/16 v12, 0x8

    invoke-virtual {v10, v11, v12}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(II)V

    const v9, 0x7f05004d

    goto/16 :goto_0

    :cond_b
    iget-object v10, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    const v11, 0x66724652

    const/16 v12, 0x8

    invoke-virtual {v10, v11, v12}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(II)V

    const v9, 0x7f050049

    goto/16 :goto_0

    :cond_c
    const-string v10, "CA"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_d

    iget-object v10, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    const/high16 v11, 0x656e0000

    const/16 v12, 0x8

    invoke-virtual {v10, v11, v12}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(II)V

    const v9, 0x7f05004d

    goto/16 :goto_0

    :cond_d
    const-string v10, "CH"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_e

    iget-object v10, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    const/high16 v11, 0x64650000

    const/16 v12, 0x8

    invoke-virtual {v10, v11, v12}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(II)V

    const v9, 0x7f05004d

    goto/16 :goto_0

    :cond_e
    iget-object v10, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    const v11, 0x66724652

    const/16 v12, 0x8

    invoke-virtual {v10, v11, v12}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(II)V

    const v9, 0x7f050049

    goto/16 :goto_0

    :sswitch_e
    iget-object v10, p0, Lcom/ime/implement/view/ViewControllerImpl;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v11, "SETTINGS_GERMAN_KEYBOARD_TYPE"

    const/4 v12, 0x1

    invoke-interface {v10, v11, v12}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v2

    packed-switch v2, :pswitch_data_1

    const v9, 0x7f05004d

    goto/16 :goto_0

    :pswitch_2
    iget-object v10, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    const v11, 0x64654445

    const/16 v12, 0x8

    invoke-virtual {v10, v11, v12}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(II)V

    const v9, 0x7f050058

    goto/16 :goto_0

    :sswitch_f
    const v9, 0x7f05004c

    goto/16 :goto_0

    :sswitch_10
    const v9, 0x7f05005b

    goto/16 :goto_0

    :sswitch_11
    const v9, 0x7f050058

    goto/16 :goto_0

    :sswitch_12
    iget-object v10, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    const/high16 v11, 0x66690000

    const/16 v12, 0x8

    invoke-virtual {v10, v11, v12}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(II)V

    const v9, 0x7f050058

    goto/16 :goto_0

    :sswitch_13
    const v9, 0x7f050060

    goto/16 :goto_0

    :sswitch_14
    iget-object v10, p0, Lcom/ime/implement/view/ViewControllerImpl;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v11, "SETTINGS_BULGARIAN_KEYBOARD_TYPE"

    const/4 v12, 0x0

    invoke-interface {v10, v11, v12}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v0

    packed-switch v0, :pswitch_data_2

    iget-boolean v10, p0, Lcom/ime/implement/view/ViewControllerImpl;->mIsTabletMode:Z

    if-eqz v10, :cond_f

    const v9, 0x7f050008

    goto/16 :goto_0

    :pswitch_3
    :try_start_1
    const-string v10, "floating_qwerty_bg_phonetic"

    invoke-static {v10}, Lcom/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v9

    goto/16 :goto_0

    :catch_1
    move-exception v1

    const v9, 0x7f05005a

    goto/16 :goto_0

    :cond_f
    const v9, 0x7f05005a

    goto/16 :goto_0

    :sswitch_15
    const v9, 0x7f050064

    goto/16 :goto_0

    :sswitch_16
    const v9, 0x7f05004a

    goto/16 :goto_0

    :sswitch_17
    const v9, 0x7f050056

    goto/16 :goto_0

    :sswitch_18
    const v9, 0x7f050063

    goto/16 :goto_0

    :sswitch_19
    const v9, 0x7f05005c

    goto/16 :goto_0

    :sswitch_1a
    invoke-static {}, Lcom/ime/framework/input/Telex/Telex;->getVietnameseInputMode()I

    move-result v10

    const/4 v11, 0x2

    if-ne v10, v11, :cond_10

    iget-boolean v10, p0, Lcom/ime/implement/view/ViewControllerImpl;->mIsAddNumberKeyFirstLine:Z

    if-nez v10, :cond_10

    const v9, 0x7f050045

    goto/16 :goto_0

    :cond_10
    invoke-static {}, Lcom/ime/framework/input/Telex/Telex;->isVietnameseEaseMode()Z

    move-result v10

    if-eqz v10, :cond_11

    const v9, 0x7f050053

    goto/16 :goto_0

    :cond_11
    const v9, 0x7f05004d

    goto/16 :goto_0

    :sswitch_1b
    const v9, 0x7f050060

    goto/16 :goto_0

    :sswitch_1c
    const v9, 0x7f050057

    goto/16 :goto_0

    :sswitch_1d
    const v9, 0x7f05004d

    goto/16 :goto_0

    :sswitch_1e
    const v10, 0x7a68484b

    if-ne p1, v10, :cond_12

    iget-object v10, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    const v11, 0x7a68484b

    const/16 v12, 0x8

    invoke-virtual {v10, v11, v12}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(II)V

    const v9, 0x7f050051

    goto/16 :goto_0

    :cond_12
    const v10, 0x7a685457

    if-ne p1, v10, :cond_13

    const v9, 0x7f05006f

    goto/16 :goto_0

    :cond_13
    iget-object v10, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    const/high16 v11, 0x7a680000

    const/16 v12, 0x8

    invoke-virtual {v10, v11, v12}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(II)V

    const v9, 0x7f05004e

    goto/16 :goto_0

    :sswitch_1f
    const v9, 0x7f050065

    goto/16 :goto_0

    :sswitch_20
    const v9, 0x7f050055

    goto/16 :goto_0

    :sswitch_21
    const v9, 0x7f05005f

    goto/16 :goto_0

    :sswitch_22
    const v9, 0x7f05005e

    goto/16 :goto_0

    :sswitch_23
    const v9, 0x7f050054

    goto/16 :goto_0

    :sswitch_24
    const v9, 0x7f050046

    goto/16 :goto_0

    :sswitch_25
    const v9, 0x7f050062

    goto/16 :goto_0

    :sswitch_26
    const v9, 0x7f050059

    goto/16 :goto_0

    :sswitch_27
    const v9, 0x7f05004f

    goto/16 :goto_0

    :sswitch_28
    const v9, 0x7f05005d

    goto/16 :goto_0

    :sswitch_29
    iget-object v10, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    const/high16 v11, 0x757a0000

    const/16 v12, 0x8

    invoke-virtual {v10, v11, v12}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(II)V

    const v9, 0x7f05004d

    goto/16 :goto_0

    :sswitch_2a
    const v9, 0x7f050061

    goto/16 :goto_0

    :sswitch_2b
    const v9, 0x7f05005d

    goto/16 :goto_0

    :sswitch_2c
    const v9, 0x7f050052

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x61720000 -> :sswitch_17
        0x61730000 -> :sswitch_1
        0x617a0000 -> :sswitch_1b
        0x62650000 -> :sswitch_1b
        0x62670000 -> :sswitch_14
        0x626e0000 -> :sswitch_0
        0x63610000 -> :sswitch_5
        0x63730000 -> :sswitch_7
        0x64610000 -> :sswitch_11
        0x64650000 -> :sswitch_e
        0x656c0000 -> :sswitch_15
        0x656e0000 -> :sswitch_5
        0x65730000 -> :sswitch_9
        0x65734553 -> :sswitch_9
        0x65735553 -> :sswitch_9
        0x65740000 -> :sswitch_22
        0x65750000 -> :sswitch_5
        0x66610000 -> :sswitch_a
        0x66690000 -> :sswitch_11
        0x66720000 -> :sswitch_d
        0x66724341 -> :sswitch_d
        0x66724652 -> :sswitch_d
        0x676c0000 -> :sswitch_5
        0x67750000 -> :sswitch_0
        0x68690000 -> :sswitch_0
        0x68720000 -> :sswitch_7
        0x68750000 -> :sswitch_7
        0x68790000 -> :sswitch_1c
        0x69640000 -> :sswitch_5
        0x69730000 -> :sswitch_20
        0x69740000 -> :sswitch_b
        0x69770000 -> :sswitch_18
        0x6a610000 -> :sswitch_27
        0x6b610000 -> :sswitch_1d
        0x6b6b0000 -> :sswitch_f
        0x6b6d0000 -> :sswitch_24
        0x6b6e0000 -> :sswitch_0
        0x6b6f0000 -> :sswitch_c
        0x6b790000 -> :sswitch_2a
        0x6c6f0000 -> :sswitch_25
        0x6c740000 -> :sswitch_1f
        0x6c760000 -> :sswitch_16
        0x6d6b0000 -> :sswitch_21
        0x6d6c0000 -> :sswitch_0
        0x6d6e0000 -> :sswitch_28
        0x6d720000 -> :sswitch_0
        0x6d730000 -> :sswitch_5
        0x6d790000 -> :sswitch_26
        0x6e620000 -> :sswitch_11
        0x6e650000 -> :sswitch_0
        0x6e6c0000 -> :sswitch_8
        0x6f720000 -> :sswitch_0
        0x70610000 -> :sswitch_2
        0x706c0000 -> :sswitch_5
        0x70740000 -> :sswitch_5
        0x726f0000 -> :sswitch_5
        0x72750000 -> :sswitch_10
        0x73690000 -> :sswitch_0
        0x736b0000 -> :sswitch_5
        0x736c0000 -> :sswitch_6
        0x73710000 -> :sswitch_23
        0x73720000 -> :sswitch_7
        0x73760000 -> :sswitch_12
        0x737a0000 -> :sswitch_5
        0x74610000 -> :sswitch_3
        0x74650000 -> :sswitch_0
        0x74670000 -> :sswitch_2b
        0x74680000 -> :sswitch_19
        0x746b0000 -> :sswitch_2c
        0x74720000 -> :sswitch_4
        0x756b0000 -> :sswitch_13
        0x75720000 -> :sswitch_a
        0x757a0000 -> :sswitch_29
        0x76690000 -> :sswitch_1a
        0x7a310000 -> :sswitch_26
        0x7a680000 -> :sswitch_1e
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_3
    .end packed-switch
.end method

.method private getFloatingPhonePadKeyboardXmlId(I)I
    .locals 20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/view/ViewControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/ime/framework/common/InputManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v13

    const-string v17, "da_mode"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-interface {v13, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    const-string v17, "da_language"

    const/16 v18, -0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-interface {v13, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-eqz v5, :cond_0

    move/from16 p1, v3

    :cond_0
    const/high16 v17, -0x10000

    and-int v12, p1, v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/view/ViewControllerImpl;->mRepository:Lcom/ime/framework/repository/Repository;

    move-object/from16 v17, v0

    const-string v18, "CHINESE_PHONETIC_SPELL_LAYOUT_SHOWN"

    const/16 v19, 0x0

    invoke-interface/range {v17 .. v19}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/view/ViewControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/ime/framework/inputmode/InputModeManager;->isChineseStrokeModeOn()Z

    move-result v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    move-object/from16 v0, v17

    move/from16 v1, p1

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(II)V

    const v16, 0x7f05001e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    move-object/from16 v17, v0

    const/high16 v18, 0x656e0000

    invoke-virtual/range {v17 .. v18}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setDefaultLanguage(I)V

    sparse-switch v12, :sswitch_data_0

    const v16, 0x7f05001e

    :goto_0
    return v16

    :sswitch_0
    const v16, 0x7f05001f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    move-object/from16 v17, v0

    const/high16 v18, 0x75720000

    const/16 v19, 0x1

    invoke-virtual/range {v17 .. v19}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(II)V

    goto :goto_0

    :sswitch_1
    const v16, 0x7f05001f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    move-object/from16 v17, v0

    const/high16 v18, 0x6b610000

    const/16 v19, 0x1

    invoke-virtual/range {v17 .. v19}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(II)V

    goto :goto_0

    :sswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    move-object/from16 v17, v0

    const/high16 v18, 0x6b6b0000

    const/16 v19, 0x1

    invoke-virtual/range {v17 .. v19}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(II)V

    goto :goto_0

    :sswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    move-object/from16 v17, v0

    const/high16 v18, 0x62670000

    const/16 v19, 0x1

    invoke-virtual/range {v17 .. v19}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(II)V

    goto :goto_0

    :sswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    move-object/from16 v17, v0

    const/high16 v18, 0x6d6e0000

    const/16 v19, 0x1

    invoke-virtual/range {v17 .. v19}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(II)V

    goto :goto_0

    :sswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    move-object/from16 v17, v0

    const/high16 v18, 0x66720000

    const/16 v19, 0x1

    invoke-virtual/range {v17 .. v19}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(II)V

    goto :goto_0

    :sswitch_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    move-object/from16 v17, v0

    const/high16 v18, 0x65730000

    const/16 v19, 0x1

    invoke-virtual/range {v17 .. v19}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(II)V

    goto :goto_0

    :sswitch_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    move-object/from16 v17, v0

    const/high16 v18, 0x70740000

    const/16 v19, 0x1

    invoke-virtual/range {v17 .. v19}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(II)V

    goto :goto_0

    :sswitch_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    move-object/from16 v17, v0

    const/high16 v18, 0x68720000

    const/16 v19, 0x1

    invoke-virtual/range {v17 .. v19}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(II)V

    goto/16 :goto_0

    :sswitch_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    move-object/from16 v17, v0

    const/high16 v18, 0x73760000

    const/16 v19, 0x1

    invoke-virtual/range {v17 .. v19}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(II)V

    goto/16 :goto_0

    :sswitch_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    move-object/from16 v17, v0

    const/high16 v18, 0x757a0000

    const/16 v19, 0x1

    invoke-virtual/range {v17 .. v19}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(II)V

    goto/16 :goto_0

    :sswitch_b
    const v16, 0x7f05001f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    move-object/from16 v17, v0

    const/high16 v18, 0x61720000

    const/16 v19, 0x1

    invoke-virtual/range {v17 .. v19}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(II)V

    goto/16 :goto_0

    :sswitch_c
    const v16, 0x7f05001f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    move-object/from16 v17, v0

    const/high16 v18, 0x61720000

    invoke-virtual/range {v17 .. v18}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setDefaultLanguage(I)V

    goto/16 :goto_0

    :sswitch_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/view/ViewControllerImpl;->mRepository:Lcom/ime/framework/repository/Repository;

    move-object/from16 v17, v0

    const-string v18, "KOR_MODE"

    const/16 v19, 0x0

    invoke-interface/range {v17 .. v19}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/view/ViewControllerImpl;->mRepository:Lcom/ime/framework/repository/Repository;

    move-object/from16 v17, v0

    const-string v18, "SETTINGS_DEFAULT_USE_INPUT_METHOD_TYPE_ON_KOR"

    const/16 v19, 0x0

    invoke-interface/range {v17 .. v19}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v6, :cond_4

    if-eqz v7, :cond_4

    invoke-static {}, Lcom/ime/framework/repository/InputModeStatus;->getPreferenceInputMethodOnKor()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/view/ViewControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/ime/framework/inputmode/InputModeManager;->isKorTabletCji()Z

    move-result v17

    if-eqz v17, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/view/ViewControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/ime/framework/inputmode/InputModeManager;->getInputMethodOnKor()I

    move-result v10

    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v10, v0, :cond_1

    const v16, 0x7f050026

    goto/16 :goto_0

    :cond_1
    const/16 v17, 0x2

    move/from16 v0, v17

    if-ne v10, v0, :cond_2

    const v16, 0x7f050027

    goto/16 :goto_0

    :cond_2
    packed-switch v4, :pswitch_data_0

    const v16, 0x7f050026

    goto/16 :goto_0

    :pswitch_0
    const v16, 0x7f050026

    goto/16 :goto_0

    :pswitch_1
    const v16, 0x7f050027

    goto/16 :goto_0

    :cond_3
    packed-switch v4, :pswitch_data_1

    const v16, 0x7f050026

    goto/16 :goto_0

    :pswitch_2
    const v16, 0x7f050026

    goto/16 :goto_0

    :pswitch_3
    const v16, 0x7f050027

    goto/16 :goto_0

    :pswitch_4
    const v16, 0x7f050028

    goto/16 :goto_0

    :pswitch_5
    const v16, 0x7f050029

    goto/16 :goto_0

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/view/ViewControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move/from16 v1, p1

    invoke-interface {v0, v1}, Lcom/ime/framework/common/InputManager;->makeSelectLanguagePrefKey(I)Ljava/lang/String;

    move-result-object v9

    const/16 v17, 0x1

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v13, v9, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    packed-switch v11, :pswitch_data_2

    const v16, 0x7f050026

    goto/16 :goto_0

    :pswitch_6
    const v16, 0x7f050027

    goto/16 :goto_0

    :sswitch_e
    const v17, 0x7a68484b

    move/from16 v0, p1

    move/from16 v1, v17

    if-ne v0, v1, :cond_5

    const v16, 0x7f05003c

    goto/16 :goto_0

    :cond_5
    const v17, 0x7a685457

    move/from16 v0, p1

    move/from16 v1, v17

    if-ne v0, v1, :cond_8

    if-eqz v14, :cond_6

    const v16, 0x7f05003d

    goto/16 :goto_0

    :cond_6
    if-eqz v8, :cond_7

    const v16, 0x7f05003f

    goto/16 :goto_0

    :cond_7
    const v16, 0x7f05003e

    goto/16 :goto_0

    :cond_8
    if-eqz v14, :cond_9

    const v16, 0x7f05001b

    goto/16 :goto_0

    :cond_9
    if-eqz v8, :cond_a

    const v16, 0x7f05001a

    goto/16 :goto_0

    :cond_a
    const v16, 0x7f050019

    goto/16 :goto_0

    :sswitch_f
    invoke-virtual/range {p0 .. p0}, Lcom/ime/implement/view/ViewControllerImpl;->getCurrentThaiVowelPageNum()I

    move-result v15

    const/16 v17, 0x3

    move/from16 v0, v17

    if-ne v15, v0, :cond_b

    const v16, 0x7f050037

    goto/16 :goto_0

    :cond_b
    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v15, v0, :cond_c

    const v16, 0x7f050038

    goto/16 :goto_0

    :cond_c
    const/16 v17, 0x2

    move/from16 v0, v17

    if-ne v15, v0, :cond_d

    const v16, 0x7f050039

    goto/16 :goto_0

    :cond_d
    const v16, 0x7f050036

    goto/16 :goto_0

    :sswitch_10
    const v16, 0x7f050025

    goto/16 :goto_0

    :sswitch_11
    const v16, 0x7f05002a

    goto/16 :goto_0

    :sswitch_12
    const v16, 0x7f050020

    goto/16 :goto_0

    :sswitch_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/view/ViewControllerImpl;->mRepository:Lcom/ime/framework/repository/Repository;

    move-object/from16 v17, v0

    const-string v18, "SETTINGS_DEFAULT_KEYPAD_FLICK"

    const/16 v19, 0x0

    invoke-interface/range {v17 .. v19}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v17

    if-eqz v17, :cond_e

    const v16, 0x7f050024

    goto/16 :goto_0

    :cond_e
    const v16, 0x7f050023

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x61720000 -> :sswitch_b
        0x62670000 -> :sswitch_3
        0x65730000 -> :sswitch_6
        0x65734553 -> :sswitch_6
        0x65735553 -> :sswitch_6
        0x66610000 -> :sswitch_c
        0x66720000 -> :sswitch_5
        0x66724341 -> :sswitch_5
        0x66724652 -> :sswitch_5
        0x6a610000 -> :sswitch_13
        0x6b610000 -> :sswitch_1
        0x6b6b0000 -> :sswitch_2
        0x6b6d0000 -> :sswitch_10
        0x6b6f0000 -> :sswitch_d
        0x6b790000 -> :sswitch_4
        0x6c6f0000 -> :sswitch_11
        0x6d6e0000 -> :sswitch_4
        0x70740000 -> :sswitch_7
        0x70744252 -> :sswitch_7
        0x70745054 -> :sswitch_7
        0x73720000 -> :sswitch_8
        0x73760000 -> :sswitch_9
        0x74670000 -> :sswitch_4
        0x74680000 -> :sswitch_f
        0x75720000 -> :sswitch_0
        0x757a0000 -> :sswitch_a
        0x76690000 -> :sswitch_12
        0x7a680000 -> :sswitch_e
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x2
        :pswitch_6
    .end packed-switch
.end method

.method private getFloatingPhonePadNumberKeyboardXmlId()I
    .locals 6

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/ime/implement/view/ViewControllerImpl;->mPrivateImeOptionsController:Lcom/ime/framework/common/PrivateImeOptionsController;

    invoke-interface {v3}, Lcom/ime/framework/common/PrivateImeOptionsController;->getInputType()I

    move-result v1

    const/16 v3, 0xa

    if-ne v1, v3, :cond_1

    :try_start_0
    const-string v3, "floating_phonepad_month"

    invoke-static {v3}, Lcom/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :cond_0
    :goto_0
    return v2

    :catch_0
    move-exception v0

    const v2, 0x7f050106

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v3}, Lcom/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {}, Lcom/ime/framework/repository/EditorStatus;->isPhoneNumberInputClass()Z

    move-result v3

    if-eqz v3, :cond_2

    const v2, 0x7f05002b

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v3}, Lcom/ime/framework/inputmode/InputModeManager;->isFloatingPhonepadKeyboardForMultiWindow()Z

    move-result v3

    if-eqz v3, :cond_7

    :try_start_1
    iget-object v3, p0, Lcom/ime/implement/view/ViewControllerImpl;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v4, "INPUT_LANGUAGE"

    const v5, 0x656e4742

    invoke-interface {v3, v4, v5}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v3

    const/high16 v4, 0x6b6d0000

    if-ne v3, v4, :cond_3

    const-string v3, "floating_phonepad_number_km"

    invoke-static {v3}, Lcom/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v2

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/ime/implement/view/ViewControllerImpl;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v4, "INPUT_LANGUAGE"

    const v5, 0x656e4742

    invoke-interface {v3, v4, v5}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v3

    const/high16 v4, 0x6c6f0000

    if-ne v3, v4, :cond_4

    const-string v3, "floating_phonepad_number_lo"

    invoke-static {v3}, Lcom/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v2

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/ime/implement/view/ViewControllerImpl;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v4, "INPUT_LANGUAGE"

    const v5, 0x656e4742

    invoke-interface {v3, v4, v5}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v3

    const/high16 v4, 0x61720000

    if-ne v3, v4, :cond_5

    const-string v3, "floating_phonepad_number_arabic"

    invoke-static {v3}, Lcom/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v2

    goto :goto_0

    :cond_5
    iget-object v3, p0, Lcom/ime/implement/view/ViewControllerImpl;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v4, "INPUT_LANGUAGE"

    const v5, 0x656e4742

    invoke-interface {v3, v4, v5}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v3

    const/high16 v4, 0x66610000

    if-ne v3, v4, :cond_6

    const-string v3, "floating_phonepad_number_farsi"

    invoke-static {v3}, Lcom/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    goto :goto_0

    :cond_6
    const v2, 0x7f05002b

    goto :goto_0

    :catch_1
    move-exception v0

    const v2, 0x7f050108

    goto :goto_0

    :cond_7
    const/16 v3, 0x9

    if-eq v1, v3, :cond_8

    const/16 v3, 0xe

    if-ne v1, v3, :cond_9

    :cond_8
    const v2, 0x7f05003b

    goto/16 :goto_0

    :cond_9
    iget-boolean v3, p0, Lcom/ime/implement/view/ViewControllerImpl;->mIsTabletMode:Z

    if-nez v3, :cond_0

    const/4 v3, 0x1

    if-eq v1, v3, :cond_a

    invoke-static {}, Lcom/ime/framework/repository/EditorStatus;->isDecimalNumberInputType()Z

    move-result v3

    if-eqz v3, :cond_b

    :cond_a
    const v2, 0x7f05002d

    goto/16 :goto_0

    :cond_b
    invoke-static {}, Lcom/ime/framework/repository/EditorStatus;->isSignedNumberInputType()Z

    move-result v3

    if-eqz v3, :cond_c

    const v2, 0x7f050030

    goto/16 :goto_0

    :cond_c
    invoke-static {}, Lcom/ime/framework/repository/EditorStatus;->isSignedDecimalNumberInputType()Z

    move-result v3

    if-nez v3, :cond_d

    invoke-static {}, Lcom/ime/framework/repository/EditorStatus;->isNumberOnlyInputType()Z

    move-result v3

    if-eqz v3, :cond_e

    :cond_d
    const v2, 0x7f050031

    goto/16 :goto_0

    :cond_e
    invoke-static {}, Lcom/ime/framework/repository/EditorStatus;->isTimeInputType()Z

    move-result v3

    if-eqz v3, :cond_f

    const v2, 0x7f05003a

    goto/16 :goto_0

    :cond_f
    invoke-static {}, Lcom/ime/framework/repository/EditorStatus;->isDateInputType()Z

    move-result v3

    if-eqz v3, :cond_10

    const v2, 0x7f05001c

    goto/16 :goto_0

    :cond_10
    invoke-static {}, Lcom/ime/framework/repository/EditorStatus;->isDateTimeInputType()Z

    move-result v3

    if-eqz v3, :cond_0

    const v2, 0x7f05001d

    goto/16 :goto_0
.end method

.method private getFloatingPhonepadNumberPopupKeyboard(Z)Lcom/ime/framework/view/DefaultKeyboard;
    .locals 9

    const v8, 0x656e4742

    const-string v0, "SamsungIME"

    const-string v1, "getFloatingPhonepadNumberPopupKeyboard"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/ime/framework/view/DefaultKeyboard;

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v0}, Lcom/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v5

    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mPrivateImeOptionsController:Lcom/ime/framework/common/PrivateImeOptionsController;

    invoke-interface {v0}, Lcom/ime/framework/common/PrivateImeOptionsController;->getInputType()I

    move-result v7

    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v1, "INPUT_LANGUAGE"

    invoke-interface {v0, v1, v8}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v4

    const/16 v0, 0xa

    if-ne v7, v0, :cond_1

    const v2, 0x7f05000f

    :goto_0
    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mPrevKeyboard:Lcom/ime/framework/view/DefaultKeyboard;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputMethodId:I

    if-ne v5, v0, :cond_0

    iget v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mXmlID:I

    if-ne v0, v2, :cond_0

    iget v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mModeID:I

    if-ne v0, v3, :cond_0

    iget-boolean v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mIsLandscape:Z

    iget-object v1, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->isOrientationLandscape()Z

    move-result v1

    if-eq v0, v1, :cond_13

    :cond_0
    if-eqz v3, :cond_12

    new-instance v0, Lcom/ime/framework/view/DefaultKeyboard;

    iget-object v1, p0, Lcom/ime/implement/view/ViewControllerImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2, v3}, Lcom/ime/framework/view/DefaultKeyboard;-><init>(Landroid/content/Context;II)V

    iput-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/ime/framework/view/DefaultKeyboard;

    :goto_1
    iget-object v1, p0, Lcom/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/ime/framework/view/DefaultKeyboard;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/ime/implement/view/ViewControllerImpl;->setCurrentKeyboardInfo(Lcom/ime/framework/view/DefaultKeyboard;IIII)V

    :goto_2
    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/ime/framework/view/DefaultKeyboard;

    return-object v0

    :cond_1
    const/16 v0, 0x9

    if-eq v7, v0, :cond_2

    const/16 v0, 0xe

    if-ne v7, v0, :cond_3

    :cond_2
    const v2, 0x7f050072

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/ime/framework/repository/EditorStatus;->isPhoneNumberInputClass()Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x2

    if-eq v5, v0, :cond_5

    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->isChnMode()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->isHKTWBinaryByCSC()Z

    move-result v0

    if-eqz v0, :cond_4

    const v2, 0x7f050018

    goto :goto_0

    :cond_4
    const v2, 0x7f050017

    goto :goto_0

    :cond_5
    const/4 v0, 0x1

    if-eq v7, v0, :cond_6

    :try_start_0
    invoke-static {}, Lcom/ime/framework/repository/EditorStatus;->isDecimalNumberInputType()Z
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_7

    :cond_6
    const v2, 0x7f05002d

    :goto_3
    invoke-direct {p0}, Lcom/ime/implement/view/ViewControllerImpl;->getNumberKeyboardModeId()I

    move-result v3

    goto :goto_0

    :cond_7
    :try_start_1
    invoke-static {}, Lcom/ime/framework/repository/EditorStatus;->isSignedNumberInputType()Z

    move-result v0

    if-eqz v0, :cond_8

    const v2, 0x7f050030

    goto :goto_3

    :cond_8
    invoke-static {}, Lcom/ime/framework/repository/EditorStatus;->isSignedDecimalNumberInputType()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-static {}, Lcom/ime/framework/repository/EditorStatus;->isNumberOnlyInputType()Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_9
    const v2, 0x7f050031

    goto :goto_3

    :cond_a
    invoke-static {}, Lcom/ime/framework/repository/EditorStatus;->isTimeInputType()Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "floating_phonepad_time"

    invoke-static {v0}, Lcom/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v2

    goto :goto_3

    :cond_b
    invoke-static {}, Lcom/ime/framework/repository/EditorStatus;->isDateInputType()Z

    move-result v0

    if-eqz v0, :cond_c

    const v2, 0x7f05001c

    goto :goto_3

    :cond_c
    invoke-static {}, Lcom/ime/framework/repository/EditorStatus;->isDateTimeInputType()Z

    move-result v0

    if-eqz v0, :cond_d

    const v2, 0x7f05001d

    goto :goto_3

    :cond_d
    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v1, "INPUT_LANGUAGE"

    const v8, 0x656e4742

    invoke-interface {v0, v1, v8}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v0

    const/high16 v1, 0x6b6d0000

    if-ne v0, v1, :cond_e

    const-string v0, "floating_phonepad_number_km"

    invoke-static {v0}, Lcom/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v2

    goto :goto_3

    :cond_e
    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v1, "INPUT_LANGUAGE"

    const v8, 0x656e4742

    invoke-interface {v0, v1, v8}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v0

    const/high16 v1, 0x6c6f0000

    if-ne v0, v1, :cond_f

    const-string v0, "floating_phonepad_number_lo"

    invoke-static {v0}, Lcom/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v2

    goto :goto_3

    :cond_f
    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v1, "INPUT_LANGUAGE"

    const v8, 0x656e4742

    invoke-interface {v0, v1, v8}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v0

    const/high16 v1, 0x61720000

    if-ne v0, v1, :cond_10

    const-string v0, "floating_phonepad_number_arabic"

    invoke-static {v0}, Lcom/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v2

    goto/16 :goto_3

    :cond_10
    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v1, "INPUT_LANGUAGE"

    const v8, 0x656e4742

    invoke-interface {v0, v1, v8}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v0

    const/high16 v1, 0x66610000

    if-ne v0, v1, :cond_11

    const-string v0, "floating_phonepad_number_farsi"

    invoke-static {v0}, Lcom/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v2

    goto/16 :goto_3

    :cond_11
    const v2, 0x7f05002b

    goto/16 :goto_3

    :catch_0
    move-exception v6

    const v2, 0x7f050108

    goto/16 :goto_3

    :cond_12
    new-instance v0, Lcom/ime/framework/view/DefaultKeyboard;

    iget-object v1, p0, Lcom/ime/implement/view/ViewControllerImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/ime/framework/view/DefaultKeyboard;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/ime/framework/view/DefaultKeyboard;

    goto/16 :goto_1

    :cond_13
    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mPrevKeyboard:Lcom/ime/framework/view/DefaultKeyboard;

    iput-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/ime/framework/view/DefaultKeyboard;

    goto/16 :goto_2
.end method

.method private getFloatingPhonepadSymbolPopupKeyboard(Z)Lcom/ime/framework/view/DefaultKeyboard;
    .locals 10

    const v9, 0x656e4742

    const-string v0, "SamsungIME"

    const-string v1, "getFloatingPhonepadSymbolPopupKeyboard"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/ime/framework/view/DefaultKeyboard;

    const/4 v2, 0x0

    invoke-static {}, Lcom/ime/framework/repository/EditorStatus;->isPhoneNumberInputClass()Z

    move-result v7

    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v1, "INPUT_LANGUAGE"

    invoke-interface {v0, v1, v9}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v4

    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v0}, Lcom/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v5

    const/4 v3, 0x0

    if-eqz v7, :cond_1

    :try_start_0
    const-string v0, "floating_phone_symbol"

    invoke-static {v0}, Lcom/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_0
    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mPrevKeyboard:Lcom/ime/framework/view/DefaultKeyboard;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputMethodId:I

    if-ne v5, v0, :cond_0

    iget v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mXmlID:I

    if-ne v0, v2, :cond_0

    iget v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mModeID:I

    if-ne v0, v3, :cond_0

    iget-boolean v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mIsLandscape:Z

    iget-object v1, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->isOrientationLandscape()Z

    move-result v1

    if-eq v0, v1, :cond_e

    :cond_0
    if-eqz v3, :cond_d

    new-instance v0, Lcom/ime/framework/view/DefaultKeyboard;

    iget-object v1, p0, Lcom/ime/implement/view/ViewControllerImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2, v3}, Lcom/ime/framework/view/DefaultKeyboard;-><init>(Landroid/content/Context;II)V

    iput-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/ime/framework/view/DefaultKeyboard;

    :goto_1
    iget-object v1, p0, Lcom/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/ime/framework/view/DefaultKeyboard;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/ime/implement/view/ViewControllerImpl;->setCurrentKeyboardInfo(Lcom/ime/framework/view/DefaultKeyboard;IIII)V

    :goto_2
    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/ime/framework/view/DefaultKeyboard;

    return-object v0

    :catch_0
    move-exception v6

    const v2, 0x7f050115

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v0}, Lcom/ime/framework/inputmode/InputModeManager;->isKorTabletCji()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v0}, Lcom/ime/framework/inputmode/InputModeManager;->getInputMethodOnKor()I

    move-result v8

    const/4 v0, 0x1

    if-eq v8, v0, :cond_2

    const/4 v0, 0x2

    if-ne v8, v0, :cond_3

    :cond_2
    :try_start_1
    const-string v0, "floating_kr_cji_symbol"

    invoke-static {v0}, Lcom/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    :goto_3
    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v1, "SYMBOLS_PAGE"

    const/4 v9, 0x0

    invoke-interface {v0, v1, v9}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/ime/implement/view/ViewControllerImpl;->getCurrentSymbolPageModeId(I)I

    move-result v3

    goto :goto_0

    :cond_3
    :try_start_2
    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->isKorMode()Z

    move-result v0

    if-eqz v0, :cond_4

    const v2, 0x7f050035

    goto :goto_3

    :cond_4
    const-string v0, "floating_phonepad_symbol"

    invoke-static {v0}, Lcom/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v2

    goto :goto_3

    :catch_1
    move-exception v6

    const v2, 0x7f050115

    goto :goto_3

    :cond_5
    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->isKorMode()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mIsTabletMode:Z

    if-eqz v0, :cond_6

    const-string v0, "floating_kr_cji_symbol"

    invoke-static {v0}, Lcom/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v2

    goto :goto_3

    :cond_6
    :try_start_3
    const-string v0, "ISL"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v9, "CscFeature_Sip_ReplaceLocalCurrencyAs"

    invoke-virtual {v1, v9}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {v4}, Lcom/ime/framework/util/Utils;->isArabicLanguage(I)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "floating_phonepad_symbol_he_arabic"

    invoke-static {v0}, Lcom/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v2

    goto :goto_3

    :cond_7
    const-string v0, "floating_phonepad_symbol_he"

    invoke-static {v0}, Lcom/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v2

    goto :goto_3

    :cond_8
    invoke-static {v4}, Lcom/ime/framework/util/Utils;->isArabicLanguage(I)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "floating_phonepad_symbol_arabic"

    invoke-static {v0}, Lcom/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v2

    goto :goto_3

    :cond_9
    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v1, "INPUT_LANGUAGE"

    const v9, 0x656e4742

    invoke-interface {v0, v1, v9}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v0

    const/high16 v1, 0x6b6d0000

    if-ne v0, v1, :cond_a

    const-string v0, "floating_phonepad_symbol_km"

    invoke-static {v0}, Lcom/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v2

    goto/16 :goto_3

    :cond_a
    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v1, "INPUT_LANGUAGE"

    const v9, 0x656e4742

    invoke-interface {v0, v1, v9}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v0

    const/high16 v1, 0x6c6f0000

    if-ne v0, v1, :cond_b

    const-string v0, "floating_phonepad_symbol_lo"

    invoke-static {v0}, Lcom/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v2

    goto/16 :goto_3

    :cond_b
    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->isKorMode()Z

    move-result v0

    if-eqz v0, :cond_c

    const v2, 0x7f050035

    goto/16 :goto_3

    :cond_c
    const-string v0, "floating_phonepad_symbol"

    invoke-static {v0}, Lcom/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3 .. :try_end_3} :catch_2

    move-result v2

    goto/16 :goto_3

    :catch_2
    move-exception v6

    const v2, 0x7f050115

    goto/16 :goto_3

    :cond_d
    new-instance v0, Lcom/ime/framework/view/DefaultKeyboard;

    iget-object v1, p0, Lcom/ime/implement/view/ViewControllerImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/ime/framework/view/DefaultKeyboard;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/ime/framework/view/DefaultKeyboard;

    goto/16 :goto_1

    :cond_e
    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mPrevKeyboard:Lcom/ime/framework/view/DefaultKeyboard;

    iput-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/ime/framework/view/DefaultKeyboard;

    goto/16 :goto_2
.end method

.method private getFullScreenTextKeyboardModeId(Landroid/view/inputmethod/EditorInfo;)I
    .locals 5

    const v1, 0x7f100122

    const v2, 0x7f100121

    const/4 v4, 0x1

    if-eqz p1, :cond_0

    iget-object v3, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    if-nez v3, :cond_2

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1

    :cond_2
    iget v3, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/lit16 v0, v3, 0xff0

    sparse-switch v0, :sswitch_data_0

    iget-object v1, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->getSelectedLanguageList()[Lcom/ime/framework/common/Language;

    move-result-object v1

    array-length v1, v1

    if-le v1, v4, :cond_6

    const v1, 0x7f10011f

    goto :goto_0

    :sswitch_0
    iget-object v2, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/ime/framework/common/InputManager;->getSelectedLanguageList()[Lcom/ime/framework/common/Language;

    move-result-object v2

    array-length v2, v2

    if-le v2, v4, :cond_1

    invoke-virtual {p0}, Lcom/ime/implement/view/ViewControllerImpl;->isUseGlobalKey()Z

    move-result v2

    if-nez v2, :cond_3

    iget-boolean v2, p0, Lcom/ime/implement/view/ViewControllerImpl;->mIsTabletMode:Z

    if-eqz v2, :cond_1

    :cond_3
    const v1, 0x7f100124

    goto :goto_0

    :sswitch_1
    iget-object v1, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->getSelectedLanguageList()[Lcom/ime/framework/common/Language;

    move-result-object v1

    array-length v1, v1

    if-le v1, v4, :cond_5

    invoke-virtual {p0}, Lcom/ime/implement/view/ViewControllerImpl;->isUseGlobalKey()Z

    move-result v1

    if-nez v1, :cond_4

    iget-boolean v1, p0, Lcom/ime/implement/view/ViewControllerImpl;->mIsTabletMode:Z

    if-nez v1, :cond_4

    move v1, v2

    goto :goto_0

    :cond_4
    const v1, 0x7f100123

    goto :goto_0

    :cond_5
    move v1, v2

    goto :goto_0

    :cond_6
    const v1, 0x7f100120

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_1
        0x20 -> :sswitch_0
        0xd0 -> :sswitch_0
    .end sparse-switch
.end method

.method private getHWRKeyboardXmlId()I
    .locals 3

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v2}, Lcom/ime/framework/inputmode/InputModeManager;->isBstHWRmodeEnable()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v2}, Lcom/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v0

    const/16 v2, 0x8

    if-ne v0, v2, :cond_0

    const v1, 0x7f050005

    :goto_0
    return v1

    :cond_0
    const v1, 0x7f050004

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v2}, Lcom/ime/framework/inputmode/InputModeManager;->isVOHWRmodeEnable()Z

    move-result v2

    if-eqz v2, :cond_2

    const v1, 0x7f050268

    goto :goto_0

    :cond_2
    const v1, 0x7f050001

    goto :goto_0
.end method

.method private getHWRSymbolKeyboardXmlId(I)I
    .locals 9

    const/high16 v8, 0x65730000

    const/high16 v7, 0x61720000

    const/high16 v6, 0x61660000

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v0, 0x0

    const-string v1, "ISL"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Sip_ReplaceLocalCurrencyAs"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p1}, Lcom/ime/framework/util/Utils;->isArabicLanguage(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    const/high16 v2, -0x36290000    # -1761280.0f

    invoke-virtual {v1, v2, v4, v5}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(III)V

    :goto_0
    const v0, 0x7f0501a9

    :goto_1
    return v0

    :cond_0
    iget-object v1, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    const/high16 v2, 0x68650000

    invoke-virtual {v1, v2, v4, v5}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(III)V

    goto :goto_0

    :cond_1
    if-eq p1, v8, :cond_2

    const v1, 0x65734553

    if-eq p1, v1, :cond_2

    const v1, 0x65735553

    if-ne p1, v1, :cond_4

    :cond_2
    iget-object v1, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    invoke-virtual {v1, v8, v4, v5}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(III)V

    :cond_3
    :goto_2
    const v0, 0x7f0501a9

    goto :goto_1

    :cond_4
    if-eq p1, v6, :cond_5

    const/high16 v1, 0x7a750000

    if-eq p1, v1, :cond_5

    const/high16 v1, 0x78680000

    if-ne p1, v1, :cond_6

    :cond_5
    iget-object v1, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    invoke-virtual {v1, v6, v4, v5}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(III)V

    goto :goto_2

    :cond_6
    if-eq p1, v7, :cond_7

    const/high16 v1, 0x75720000

    if-eq p1, v1, :cond_7

    const/high16 v1, 0x66610000

    if-ne p1, v1, :cond_8

    :cond_7
    iget-object v1, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    invoke-virtual {v1, v7, v4, v5}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(III)V

    goto :goto_2

    :cond_8
    const/high16 v1, 0x74670000

    if-eq p1, v1, :cond_9

    const/high16 v1, 0x72750000

    if-eq p1, v1, :cond_9

    const/high16 v1, 0x656c0000

    if-eq p1, v1, :cond_9

    const/high16 v1, 0x68790000

    if-eq p1, v1, :cond_9

    const/high16 v1, 0x74680000

    if-eq p1, v1, :cond_9

    const/high16 v1, 0x6c6f0000

    if-eq p1, v1, :cond_9

    const/high16 v1, 0x6b6d0000

    if-eq p1, v1, :cond_9

    const/high16 v1, 0x6a610000

    if-ne p1, v1, :cond_a

    :cond_9
    iget-object v1, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    invoke-virtual {v1, p1, v4, v5}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(III)V

    goto :goto_2

    :cond_a
    invoke-static {p1}, Lcom/ime/framework/util/Utils;->isIndianLanguage(I)Z

    move-result v1

    if-eqz v1, :cond_d

    const/high16 v1, 0x73690000

    if-eq p1, v1, :cond_b

    const/high16 v1, 0x6e650000

    if-ne p1, v1, :cond_c

    :cond_b
    iget-object v1, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    const/high16 v2, 0x6e650000

    invoke-virtual {v1, v2, v4, v5}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(III)V

    goto :goto_2

    :cond_c
    const/high16 v1, 0x6d6e0000

    if-eq p1, v1, :cond_3

    iget-object v1, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    const/high16 v2, 0x68690000

    invoke-virtual {v1, v2, v4, v5}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(III)V

    goto :goto_2

    :cond_d
    iget-boolean v1, p0, Lcom/ime/implement/view/ViewControllerImpl;->USE_SYMBOL_LAYOUT_BY_ATT:Z

    if-nez v1, :cond_e

    iget-boolean v1, p0, Lcom/ime/implement/view/ViewControllerImpl;->USE_SYMBOL_LAYOUT_BY_ATT_WITH_NUMBER_KEY_FIRST_LINE:Z

    if-eqz v1, :cond_f

    :cond_e
    iget-object v1, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    const/high16 v2, -0x1a920000

    invoke-virtual {v1, v2, v4, v5}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(III)V

    goto :goto_2

    :cond_f
    iget-boolean v1, p0, Lcom/ime/implement/view/ViewControllerImpl;->mIsUSASymbolLayout:Z

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    const/high16 v2, -0x2a920000

    invoke-virtual {v1, v2, v4, v5}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(III)V

    const v0, 0x7f0501a9

    goto/16 :goto_2

    :cond_10
    iget-object v1, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    invoke-virtual {v1, p1, v4, v5}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(III)V

    goto/16 :goto_2
.end method

.method private getHwrKeyboardModeId()I
    .locals 14

    const v11, 0x7f100125

    const v9, 0x7f10011f

    const v10, 0x7f100120

    const/4 v7, 0x1

    const/4 v8, 0x0

    iget-object v12, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/ime/framework/common/InputManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v6

    const-string v12, "da_mode"

    invoke-interface {v6, v12, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iget-object v12, p0, Lcom/ime/implement/view/ViewControllerImpl;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v13, "SETTINGS_DEFAULT_VOICE_INPUT"

    invoke-interface {v12, v13, v8}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v12

    if-eqz v12, :cond_0

    iget-object v12, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v12}, Lcom/ime/framework/inputmode/InputModeManager;->isVoiceInputEnabled()Z

    move-result v12

    if-eqz v12, :cond_0

    move v5, v7

    :goto_0
    iget-object v12, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v12}, Lcom/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v0

    const/16 v12, 0x8

    if-ne v0, v12, :cond_1

    iget-object v12, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v12}, Lcom/ime/framework/inputmode/InputModeManager;->isFloatingPhonepadKeyboardForMultiWindow()Z

    move-result v12

    if-nez v12, :cond_1

    move v3, v7

    :goto_1
    invoke-static {}, Lcom/ime/framework/repository/EditorStatus;->isEmailInputType()Z

    move-result v2

    invoke-static {}, Lcom/ime/framework/repository/EditorStatus;->isUrlInputType()Z

    move-result v4

    iget-boolean v12, p0, Lcom/ime/implement/view/ViewControllerImpl;->mIsTabletMode:Z

    if-eqz v12, :cond_3

    iget-object v8, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/ime/framework/common/InputManager;->getSelectedLanguageList()[Lcom/ime/framework/common/Language;

    move-result-object v8

    array-length v8, v8

    if-le v8, v7, :cond_2

    if-nez v1, :cond_2

    move v7, v9

    :goto_2
    return v7

    :cond_0
    move v5, v8

    goto :goto_0

    :cond_1
    move v3, v8

    goto :goto_1

    :cond_2
    move v7, v10

    goto :goto_2

    :cond_3
    iget-object v12, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v12}, Lcom/ime/framework/inputmode/InputModeManager;->getInputRange()I

    move-result v12

    const/4 v13, 0x2

    if-ne v12, v13, :cond_4

    iget-object v7, p0, Lcom/ime/implement/view/ViewControllerImpl;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v9, "SYMBOLS_PAGE"

    invoke-interface {v7, v9, v8}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v7

    invoke-direct {p0, v7}, Lcom/ime/implement/view/ViewControllerImpl;->getCurrentSymbolPageModeId(I)I

    move-result v7

    goto :goto_2

    :cond_4
    iget-object v8, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/ime/framework/common/InputManager;->getSelectedLanguageList()[Lcom/ime/framework/common/Language;

    move-result-object v8

    array-length v8, v8

    if-le v8, v7, :cond_8

    if-nez v1, :cond_8

    invoke-virtual {p0}, Lcom/ime/implement/view/ViewControllerImpl;->isUseGlobalKey()Z

    move-result v7

    if-eqz v7, :cond_5

    move v7, v9

    goto :goto_2

    :cond_5
    iget-boolean v7, p0, Lcom/ime/implement/view/ViewControllerImpl;->mIsCommaKeyAsDefault:Z

    if-eqz v7, :cond_7

    if-eqz v0, :cond_6

    if-eqz v3, :cond_7

    iget-object v7, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v7}, Lcom/ime/framework/inputmode/InputModeManager;->isFloatingHWRKeyboard()Z

    move-result v7

    if-nez v7, :cond_7

    :cond_6
    move v7, v11

    goto :goto_2

    :cond_7
    move v7, v10

    goto :goto_2

    :cond_8
    iget-boolean v7, p0, Lcom/ime/implement/view/ViewControllerImpl;->mIsCommaKeyAsDefault:Z

    if-eqz v7, :cond_a

    if-eqz v0, :cond_9

    if-eqz v3, :cond_a

    iget-object v7, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v7}, Lcom/ime/framework/inputmode/InputModeManager;->isFloatingHWRKeyboard()Z

    move-result v7

    if-nez v7, :cond_a

    :cond_9
    move v7, v11

    goto :goto_2

    :cond_a
    move v7, v10

    goto :goto_2
.end method

.method private getKnobTextKeyboard()Lcom/ime/framework/view/DefaultKeyboard;
    .locals 6

    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v0}, Lcom/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v5

    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v1, "INPUT_LANGUAGE"

    const v3, 0x656e4742

    invoke-interface {v0, v1, v3}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v4

    invoke-direct {p0, v4}, Lcom/ime/implement/view/ViewControllerImpl;->getQwertyKnobKeyboardXmlId(I)I

    move-result v2

    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mPrevKeyboard:Lcom/ime/framework/view/DefaultKeyboard;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputMethodId:I

    if-ne v5, v0, :cond_0

    iget v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mXmlID:I

    if-ne v0, v2, :cond_0

    iget-boolean v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mIsLandscape:Z

    iget-object v1, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->isOrientationLandscape()Z

    move-result v1

    if-eq v0, v1, :cond_1

    :cond_0
    new-instance v0, Lcom/ime/framework/view/DefaultKeyboard;

    iget-object v1, p0, Lcom/ime/implement/view/ViewControllerImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/ime/framework/view/DefaultKeyboard;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/ime/framework/view/DefaultKeyboard;

    iget-object v1, p0, Lcom/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/ime/framework/view/DefaultKeyboard;

    const/4 v3, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/ime/implement/view/ViewControllerImpl;->setCurrentKeyboardInfo(Lcom/ime/framework/view/DefaultKeyboard;IIII)V

    :goto_0
    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/ime/framework/view/DefaultKeyboard;

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mPrevKeyboard:Lcom/ime/framework/view/DefaultKeyboard;

    iput-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/ime/framework/view/DefaultKeyboard;

    goto :goto_0
.end method

.method private getMobileKeyboard(I)Lcom/ime/framework/view/DefaultKeyboard;
    .locals 11

    const/4 v3, 0x0

    const/high16 v10, 0x656e0000

    const/high16 v9, 0x64650000

    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v1, "INPUT_LANGUAGE"

    const v5, 0x656e4742

    invoke-interface {v0, v1, v5}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v4

    invoke-direct {p0, v4}, Lcom/ime/implement/view/ViewControllerImpl;->getQwertyMobileKeyboardXmlId(I)I

    move-result v2

    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v0}, Lcom/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v7

    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    invoke-virtual {v0, v4, v7, p1}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(III)V

    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    invoke-virtual {v0, v10}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setDefaultLanguage(I)V

    const/high16 v0, -0x10000

    and-int v6, v4, v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v8

    sparse-switch v6, :sswitch_data_0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mPrevKeyboard:Lcom/ime/framework/view/DefaultKeyboard;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mXmlID:I

    if-eq v0, v2, :cond_3

    :cond_1
    new-instance v0, Lcom/ime/framework/view/DefaultKeyboard;

    iget-object v1, p0, Lcom/ime/implement/view/ViewControllerImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/ime/framework/view/DefaultKeyboard;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/ime/framework/view/DefaultKeyboard;

    iget-object v1, p0, Lcom/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/ime/framework/view/DefaultKeyboard;

    move-object v0, p0

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/ime/implement/view/ViewControllerImpl;->setCurrentKeyboardInfo(Lcom/ime/framework/view/DefaultKeyboard;IIII)V

    :goto_1
    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/ime/framework/view/DefaultKeyboard;

    return-object v0

    :sswitch_0
    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    const/high16 v1, 0x66690000

    invoke-virtual {v0, v1, v7, p1}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(III)V

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    invoke-virtual {v0, v10, v7, p1}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(III)V

    goto :goto_0

    :sswitch_2
    const-string v0, "BE"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    const v1, 0x66724652

    invoke-virtual {v0, v1, v7, p1}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(III)V

    goto :goto_0

    :sswitch_3
    const-string v0, "CH"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    invoke-virtual {v0, v9, v7, p1}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(III)V

    goto :goto_0

    :sswitch_4
    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    invoke-virtual {v0, v9, v7, p1}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(III)V

    goto :goto_0

    :sswitch_5
    const-string v0, "CA"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    invoke-virtual {v0, v10, v7, p1}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(III)V

    goto :goto_0

    :cond_2
    const-string v0, "CH"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    invoke-virtual {v0, v9, v7, p1}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(III)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mPrevKeyboard:Lcom/ime/framework/view/DefaultKeyboard;

    iput-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/ime/framework/view/DefaultKeyboard;

    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/ime/framework/view/DefaultKeyboard;

    invoke-virtual {v0}, Lcom/ime/framework/view/DefaultKeyboard;->updateKeys()V

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x63730000 -> :sswitch_4
        0x66720000 -> :sswitch_5
        0x66724341 -> :sswitch_5
        0x66724652 -> :sswitch_5
        0x68720000 -> :sswitch_4
        0x68750000 -> :sswitch_4
        0x69740000 -> :sswitch_3
        0x6e6c0000 -> :sswitch_2
        0x73720000 -> :sswitch_4
        0x73760000 -> :sswitch_0
        0x74720000 -> :sswitch_1
        0x757a0000 -> :sswitch_1
    .end sparse-switch
.end method

.method private getNumberKeyboard()Lcom/ime/framework/view/DefaultKeyboard;
    .locals 13

    const/high16 v12, 0x65730000

    const/high16 v11, 0x61660000

    const/high16 v10, 0x61720000

    const/4 v9, 0x0

    const/4 v8, 0x2

    const-string v0, "SamsungIME"

    const-string v1, "getNumberKeyboard"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/ime/framework/view/DefaultKeyboard;

    invoke-direct {p0}, Lcom/ime/implement/view/ViewControllerImpl;->getPhonePadNumberKeyboardXmlId()I

    move-result v2

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v0}, Lcom/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v5

    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v1, "INPUT_LANGUAGE"

    const v7, 0x656e4742

    invoke-interface {v0, v1, v7}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v4

    if-nez v2, :cond_1

    if-eqz v5, :cond_0

    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->isUseBstHWRPanel()Z

    move-result v0

    if-eqz v0, :cond_15

    if-eq v5, v8, :cond_0

    const/4 v0, 0x4

    if-ne v5, v0, :cond_15

    :cond_0
    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    invoke-virtual {v0, v4, v5, v8}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(III)V

    const-string v0, "ISL"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v7, "CscFeature_Sip_ReplaceLocalCurrencyAs"

    invoke-virtual {v1, v7}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {v4}, Lcom/ime/framework/util/Utils;->isArabicLanguage(I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    const/high16 v1, -0x36290000    # -1761280.0f

    invoke-virtual {v0, v1, v9, v8}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(III)V

    :goto_0
    const v2, 0x7f0501a9

    :goto_1
    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->isChnMode()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-direct {p0}, Lcom/ime/implement/view/ViewControllerImpl;->getNumberKeyboardModeId()I

    move-result v3

    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mPrevKeyboard:Lcom/ime/framework/view/DefaultKeyboard;

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputMethodId:I

    if-ne v5, v0, :cond_2

    iget v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mXmlID:I

    if-ne v0, v2, :cond_2

    iget v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mModeID:I

    if-ne v0, v3, :cond_2

    iget-boolean v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mIsLandscape:Z

    iget-object v1, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->isOrientationLandscape()Z

    move-result v1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->getNeedChangeKeyboardHeight()Z

    move-result v0

    if-eqz v0, :cond_2f

    :cond_2
    if-eqz v3, :cond_2e

    :try_start_0
    new-instance v0, Lcom/ime/framework/view/DefaultKeyboard;

    iget-object v1, p0, Lcom/ime/implement/view/ViewControllerImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2, v3}, Lcom/ime/framework/view/DefaultKeyboard;-><init>(Landroid/content/Context;II)V

    iput-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/ime/framework/view/DefaultKeyboard;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_3
    iget-object v1, p0, Lcom/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/ime/framework/view/DefaultKeyboard;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/ime/implement/view/ViewControllerImpl;->setCurrentKeyboardInfo(Lcom/ime/framework/view/DefaultKeyboard;IIII)V

    :goto_4
    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/ime/framework/view/DefaultKeyboard;

    return-object v0

    :cond_3
    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    const/high16 v1, 0x68650000

    invoke-virtual {v0, v1, v9, v8}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(III)V

    goto :goto_0

    :cond_4
    if-eq v4, v12, :cond_5

    const v0, 0x65734553

    if-eq v4, v0, :cond_5

    const v0, 0x65735553

    if-ne v4, v0, :cond_7

    :cond_5
    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    invoke-virtual {v0, v12, v9, v8}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(III)V

    :cond_6
    :goto_5
    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->isChnMode()Z

    move-result v0

    if-eqz v0, :cond_13

    const v2, 0x7f050109

    goto :goto_1

    :cond_7
    if-eq v4, v11, :cond_8

    const/high16 v0, 0x7a750000

    if-eq v4, v0, :cond_8

    const/high16 v0, 0x78680000

    if-ne v4, v0, :cond_9

    :cond_8
    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    invoke-virtual {v0, v11, v9, v8}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(III)V

    goto :goto_5

    :cond_9
    if-eq v4, v10, :cond_a

    const/high16 v0, 0x75720000

    if-eq v4, v0, :cond_a

    const/high16 v0, 0x66610000

    if-ne v4, v0, :cond_b

    :cond_a
    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    invoke-virtual {v0, v10, v9, v8}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(III)V

    goto :goto_5

    :cond_b
    const/high16 v0, 0x74670000

    if-eq v4, v0, :cond_c

    const/high16 v0, 0x72750000

    if-eq v4, v0, :cond_c

    const/high16 v0, 0x656c0000

    if-eq v4, v0, :cond_c

    const/high16 v0, 0x68790000

    if-eq v4, v0, :cond_c

    const/high16 v0, 0x74680000

    if-eq v4, v0, :cond_c

    const/high16 v0, 0x6c6f0000

    if-eq v4, v0, :cond_c

    const/high16 v0, 0x6b6d0000

    if-eq v4, v0, :cond_c

    const/high16 v0, 0x6a610000

    if-ne v4, v0, :cond_d

    :cond_c
    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    invoke-virtual {v0, v4, v5, v8}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(III)V

    goto :goto_5

    :cond_d
    invoke-static {v4}, Lcom/ime/framework/util/Utils;->isIndianLanguage(I)Z

    move-result v0

    if-eqz v0, :cond_10

    const/high16 v0, 0x73690000

    if-eq v4, v0, :cond_e

    const/high16 v0, 0x6e650000

    if-ne v4, v0, :cond_f

    :cond_e
    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    const/high16 v1, 0x6e650000

    invoke-virtual {v0, v1, v5, v8}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(III)V

    goto :goto_5

    :cond_f
    const/high16 v0, 0x6d6e0000

    if-eq v4, v0, :cond_6

    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    const/high16 v1, 0x68690000

    invoke-virtual {v0, v1, v5, v8}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(III)V

    goto :goto_5

    :cond_10
    iget-boolean v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->USE_SYMBOL_LAYOUT_BY_ATT:Z

    if-nez v0, :cond_11

    iget-boolean v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->USE_SYMBOL_LAYOUT_BY_ATT_WITH_NUMBER_KEY_FIRST_LINE:Z

    if-eqz v0, :cond_12

    :cond_11
    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    const/high16 v1, -0x1a920000

    invoke-virtual {v0, v1, v9, v8}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(III)V

    goto/16 :goto_5

    :cond_12
    iget-boolean v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mIsUSASymbolLayout:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    const/high16 v1, -0x2a920000

    invoke-virtual {v0, v1, v9, v8}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(III)V

    const v2, 0x7f0501a9

    goto/16 :goto_5

    :cond_13
    const v2, 0x7f0501a9

    goto/16 :goto_1

    :cond_14
    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v1, "SYMBOLS_PAGE"

    invoke-interface {v0, v1, v9}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/ime/implement/view/ViewControllerImpl;->getCurrentSymbolPageModeId(I)I

    move-result v3

    goto/16 :goto_2

    :cond_15
    const/4 v0, 0x1

    if-ne v5, v0, :cond_1b

    const/high16 v0, 0x6b6d0000

    if-ne v4, v0, :cond_16

    const v2, 0x7f05010b

    :goto_6
    invoke-direct {p0}, Lcom/ime/implement/view/ViewControllerImpl;->getNumberKeyboardModeId()I

    move-result v3

    goto/16 :goto_2

    :cond_16
    const/high16 v0, 0x6c6f0000

    if-ne v4, v0, :cond_17

    const v2, 0x7f05010c

    goto :goto_6

    :cond_17
    if-ne v4, v10, :cond_18

    :try_start_1
    const-string v0, "phonepad_number_arabic"

    invoke-static {v0}, Lcom/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v2

    goto :goto_6

    :cond_18
    const/high16 v0, 0x66610000

    if-ne v4, v0, :cond_19

    const-string v0, "phonepad_number_farsi"

    invoke-static {v0}, Lcom/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v2

    goto :goto_6

    :cond_19
    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->isChnMode()Z
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    if-eqz v0, :cond_1a

    const v2, 0x7f050109

    goto :goto_6

    :cond_1a
    const v2, 0x7f050108

    goto :goto_6

    :catch_0
    move-exception v6

    const v2, 0x7f050108

    goto :goto_6

    :cond_1b
    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->isUseBstHWRPanel()Z

    move-result v0

    if-nez v0, :cond_1c

    if-ne v5, v8, :cond_1c

    invoke-direct {p0}, Lcom/ime/implement/view/ViewControllerImpl;->getHWRKeyboardXmlId()I

    move-result v2

    invoke-direct {p0}, Lcom/ime/implement/view/ViewControllerImpl;->getHwrKeyboardModeId()I

    move-result v3

    goto/16 :goto_2

    :cond_1c
    const/4 v0, 0x4

    if-ne v5, v0, :cond_1d

    const v2, 0x7f050073

    invoke-direct {p0}, Lcom/ime/implement/view/ViewControllerImpl;->getHwrKeyboardModeId()I

    move-result v3

    goto/16 :goto_2

    :cond_1d
    const-string v0, "ISL"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v7, "CscFeature_Sip_ReplaceLocalCurrencyAs"

    invoke-virtual {v1, v7}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-static {v4}, Lcom/ime/framework/util/Utils;->isArabicLanguage(I)Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    const/high16 v1, -0x36290000    # -1761280.0f

    invoke-virtual {v0, v1, v9, v8}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(III)V

    :goto_7
    const v2, 0x7f0501a9

    :goto_8
    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v1, "SYMBOLS_PAGE"

    invoke-interface {v0, v1, v9}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/ime/implement/view/ViewControllerImpl;->getCurrentSymbolPageModeId(I)I

    move-result v3

    goto/16 :goto_2

    :cond_1e
    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    const/high16 v1, 0x68650000

    invoke-virtual {v0, v1, v9, v8}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(III)V

    goto :goto_7

    :cond_1f
    if-eq v4, v12, :cond_20

    const v0, 0x65734553

    if-eq v4, v0, :cond_20

    const v0, 0x65735553

    if-ne v4, v0, :cond_22

    :cond_20
    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    invoke-virtual {v0, v12, v9, v8}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(III)V

    :cond_21
    :goto_9
    const v2, 0x7f0501a9

    goto :goto_8

    :cond_22
    if-eq v4, v11, :cond_23

    const/high16 v0, 0x7a750000

    if-eq v4, v0, :cond_23

    const/high16 v0, 0x78680000

    if-ne v4, v0, :cond_24

    :cond_23
    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    invoke-virtual {v0, v11, v9, v8}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(III)V

    goto :goto_9

    :cond_24
    if-eq v4, v10, :cond_25

    const/high16 v0, 0x75720000

    if-eq v4, v0, :cond_25

    const/high16 v0, 0x66610000

    if-ne v4, v0, :cond_26

    :cond_25
    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    invoke-virtual {v0, v10, v9, v8}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(III)V

    goto :goto_9

    :cond_26
    const/high16 v0, 0x74670000

    if-eq v4, v0, :cond_27

    const/high16 v0, 0x72750000

    if-eq v4, v0, :cond_27

    const/high16 v0, 0x656c0000

    if-eq v4, v0, :cond_27

    const/high16 v0, 0x68790000

    if-eq v4, v0, :cond_27

    const/high16 v0, 0x74680000

    if-eq v4, v0, :cond_27

    const/high16 v0, 0x6c6f0000

    if-eq v4, v0, :cond_27

    const/high16 v0, 0x6b6d0000

    if-eq v4, v0, :cond_27

    const/high16 v0, 0x6a610000

    if-ne v4, v0, :cond_28

    :cond_27
    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    invoke-virtual {v0, v4, v5, v8}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(III)V

    goto :goto_9

    :cond_28
    invoke-static {v4}, Lcom/ime/framework/util/Utils;->isIndianLanguage(I)Z

    move-result v0

    if-eqz v0, :cond_2b

    const/high16 v0, 0x73690000

    if-eq v4, v0, :cond_29

    const/high16 v0, 0x6e650000

    if-ne v4, v0, :cond_2a

    :cond_29
    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    const/high16 v1, 0x6e650000

    invoke-virtual {v0, v1, v5, v8}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(III)V

    goto :goto_9

    :cond_2a
    const/high16 v0, 0x6d6e0000

    if-eq v4, v0, :cond_21

    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    const/high16 v1, 0x68690000

    invoke-virtual {v0, v1, v5, v8}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(III)V

    goto :goto_9

    :cond_2b
    iget-boolean v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->USE_SYMBOL_LAYOUT_BY_ATT:Z

    if-nez v0, :cond_2c

    iget-boolean v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->USE_SYMBOL_LAYOUT_BY_ATT_WITH_NUMBER_KEY_FIRST_LINE:Z

    if-eqz v0, :cond_2d

    :cond_2c
    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    const/high16 v1, -0x1a920000

    invoke-virtual {v0, v1, v9, v8}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(III)V

    goto :goto_9

    :cond_2d
    iget-boolean v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mIsUSASymbolLayout:Z

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    const/high16 v1, -0x2a920000

    invoke-virtual {v0, v1, v9, v8}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(III)V

    const v2, 0x7f0501a9

    goto/16 :goto_9

    :catch_1
    move-exception v6

    const-string v0, "SamsungIME"

    const-string v1, "OutOfMemoryError occurs in DefaultKeyboard"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_2e
    :try_start_2
    new-instance v0, Lcom/ime/framework/view/DefaultKeyboard;

    iget-object v1, p0, Lcom/ime/implement/view/ViewControllerImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/ime/framework/view/DefaultKeyboard;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/ime/framework/view/DefaultKeyboard;
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_3

    :catch_2
    move-exception v6

    const-string v0, "SamsungIME"

    const-string v1, "OutOfMemoryError occurs in DefaultKeyboard"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_2f
    iget v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mLanguageID:I

    if-eq v4, v0, :cond_30

    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mPrevKeyboard:Lcom/ime/framework/view/DefaultKeyboard;

    invoke-virtual {v0}, Lcom/ime/framework/view/DefaultKeyboard;->updateKeys()V

    iget-object v1, p0, Lcom/ime/implement/view/ViewControllerImpl;->mPrevKeyboard:Lcom/ime/framework/view/DefaultKeyboard;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/ime/implement/view/ViewControllerImpl;->setCurrentKeyboardInfo(Lcom/ime/framework/view/DefaultKeyboard;IIII)V

    :cond_30
    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mPrevKeyboard:Lcom/ime/framework/view/DefaultKeyboard;

    iput-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/ime/framework/view/DefaultKeyboard;

    goto/16 :goto_4
.end method

.method private getNumberKeyboardModeId()I
    .locals 12

    const v8, 0x7f100121

    const/4 v4, 0x0

    const v9, 0x7f100120

    const v10, 0x7f10011f

    const/4 v7, 0x1

    iget-object v11, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v11}, Lcom/ime/framework/common/InputManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v6

    const-string v11, "da_mode"

    invoke-interface {v6, v11, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {}, Lcom/ime/framework/repository/EditorStatus;->isEmailInputType()Z

    move-result v3

    invoke-static {}, Lcom/ime/framework/repository/EditorStatus;->isUrlInputType()Z

    move-result v5

    iget-object v11, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v11}, Lcom/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v1

    const/16 v11, 0x8

    if-ne v1, v11, :cond_0

    iget-object v11, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v11}, Lcom/ime/framework/inputmode/InputModeManager;->isFloatingPhonepadKeyboardForMultiWindow()Z

    move-result v11

    if-nez v11, :cond_0

    move v4, v7

    :cond_0
    iget-boolean v11, p0, Lcom/ime/implement/view/ViewControllerImpl;->mIsTabletMode:Z

    if-nez v11, :cond_d

    iget-object v11, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v11}, Lcom/ime/framework/common/InputManager;->getSelectedLanguageList()[Lcom/ime/framework/common/Language;

    move-result-object v11

    array-length v11, v11

    if-le v11, v7, :cond_8

    if-nez v2, :cond_8

    invoke-virtual {p0}, Lcom/ime/implement/view/ViewControllerImpl;->isUseGlobalKey()Z

    move-result v7

    if-nez v7, :cond_5

    iget-boolean v7, p0, Lcom/ime/implement/view/ViewControllerImpl;->mIsTabletMode:Z

    if-nez v7, :cond_5

    if-eqz v3, :cond_1

    const v7, 0x7f100122

    :goto_0
    return v7

    :cond_1
    if-eqz v5, :cond_2

    move v7, v8

    goto :goto_0

    :cond_2
    iget-boolean v7, p0, Lcom/ime/implement/view/ViewControllerImpl;->mIsCommaKeyAsDefault:Z

    if-eqz v7, :cond_4

    if-eqz v1, :cond_3

    if-eqz v4, :cond_4

    :cond_3
    const v7, 0x7f100125

    goto :goto_0

    :cond_4
    move v7, v9

    goto :goto_0

    :cond_5
    if-eqz v3, :cond_6

    const v7, 0x7f100124

    goto :goto_0

    :cond_6
    if-eqz v5, :cond_7

    const v7, 0x7f100123

    goto :goto_0

    :cond_7
    move v7, v10

    goto :goto_0

    :cond_8
    if-eqz v3, :cond_9

    const v7, 0x7f100122

    goto :goto_0

    :cond_9
    if-eqz v5, :cond_a

    move v7, v8

    goto :goto_0

    :cond_a
    iget-boolean v7, p0, Lcom/ime/implement/view/ViewControllerImpl;->mIsCommaKeyAsDefault:Z

    if-eqz v7, :cond_c

    if-eqz v1, :cond_b

    if-eqz v4, :cond_c

    :cond_b
    const v7, 0x7f100125

    goto :goto_0

    :cond_c
    move v7, v9

    goto :goto_0

    :cond_d
    iget-boolean v8, p0, Lcom/ime/implement/view/ViewControllerImpl;->mIsTabletMode:Z

    if-eqz v8, :cond_f

    iget-object v8, p0, Lcom/ime/implement/view/ViewControllerImpl;->mPrivateImeOptionsController:Lcom/ime/framework/common/PrivateImeOptionsController;

    invoke-interface {v8}, Lcom/ime/framework/common/PrivateImeOptionsController;->getInputType()I

    move-result v8

    if-ne v8, v7, :cond_e

    iget-boolean v7, p0, Lcom/ime/implement/view/ViewControllerImpl;->mIsKorMode:Z

    if-nez v7, :cond_e

    :try_start_0
    const-string v7, "mode_ip_address"

    invoke-static {v7}, Lcom/ime/implement/resource/CustomResource;->getID(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    goto :goto_0

    :catch_0
    move-exception v0

    move v7, v10

    goto :goto_0

    :cond_e
    move v7, v10

    goto :goto_0

    :cond_f
    iget-object v8, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/ime/framework/common/InputManager;->getSelectedLanguageList()[Lcom/ime/framework/common/Language;

    move-result-object v8

    array-length v8, v8

    if-le v8, v7, :cond_10

    if-nez v2, :cond_10

    move v7, v10

    goto :goto_0

    :cond_10
    move v7, v9

    goto :goto_0
.end method

.method private getNumberPopupKeyboard(Z)Lcom/ime/framework/view/DefaultKeyboard;
    .locals 10

    const-string v0, "SamsungIME"

    const-string v1, "getNumberPopupKeyboard"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/ime/framework/view/DefaultKeyboard;

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v0}, Lcom/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v5

    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mPrivateImeOptionsController:Lcom/ime/framework/common/PrivateImeOptionsController;

    invoke-interface {v0}, Lcom/ime/framework/common/PrivateImeOptionsController;->getInputType()I

    move-result v8

    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v1, "INPUT_LANGUAGE"

    const v9, 0x656e4742

    invoke-interface {v0, v1, v9}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v4

    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v7

    const/16 v0, 0xa

    if-ne v8, v0, :cond_4

    const/4 v0, 0x7

    if-ne v5, v0, :cond_3

    if-eqz p1, :cond_2

    const v2, 0x7f050215

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mPrevKeyboard:Lcom/ime/framework/view/DefaultKeyboard;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputMethodId:I

    if-ne v5, v0, :cond_1

    iget v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mXmlID:I

    if-ne v0, v2, :cond_1

    iget v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mModeID:I

    if-ne v0, v3, :cond_1

    iget-boolean v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mIsLandscape:Z

    iget-object v1, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->isOrientationLandscape()Z

    move-result v1

    if-eq v0, v1, :cond_56

    :cond_1
    if-eqz v3, :cond_55

    new-instance v0, Lcom/ime/framework/view/DefaultKeyboard;

    iget-object v1, p0, Lcom/ime/implement/view/ViewControllerImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2, v3}, Lcom/ime/framework/view/DefaultKeyboard;-><init>(Landroid/content/Context;II)V

    iput-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/ime/framework/view/DefaultKeyboard;

    :goto_1
    iget-object v1, p0, Lcom/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/ime/framework/view/DefaultKeyboard;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/ime/implement/view/ViewControllerImpl;->setCurrentKeyboardInfo(Lcom/ime/framework/view/DefaultKeyboard;IIII)V

    :goto_2
    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/ime/framework/view/DefaultKeyboard;

    :goto_3
    return-object v0

    :cond_2
    :try_start_0
    const-string v0, "split_month_right"

    invoke-static {v0}, Lcom/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    :catch_0
    move-exception v6

    const v2, 0x7f050106

    goto :goto_0

    :cond_3
    const/16 v0, 0x8

    if-ne v5, v0, :cond_0

    const v2, 0x7f05000f

    goto :goto_0

    :cond_4
    const/16 v0, 0x9

    if-eq v8, v0, :cond_5

    const/16 v0, 0xe

    if-ne v8, v0, :cond_8

    :cond_5
    const/4 v0, 0x7

    if-ne v5, v0, :cond_7

    if-eqz p1, :cond_6

    const v2, 0x7f050260

    goto :goto_0

    :cond_6
    const v2, 0x7f050261

    goto :goto_0

    :cond_7
    const/16 v0, 0x8

    if-ne v5, v0, :cond_0

    const v2, 0x7f050072

    goto :goto_0

    :cond_8
    invoke-static {}, Lcom/ime/framework/repository/EditorStatus;->isPhoneNumberInputClass()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x2

    if-eq v5, v0, :cond_c

    const/4 v0, 0x7

    if-ne v5, v0, :cond_a

    if-eqz p1, :cond_9

    const v2, 0x7f050252

    goto :goto_0

    :cond_9
    const v2, 0x7f050253

    goto :goto_0

    :cond_a
    const/16 v0, 0x8

    if-ne v5, v0, :cond_0

    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->isChnMode()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->isHKTWBinaryByCSC()Z

    move-result v0

    if-eqz v0, :cond_b

    const v2, 0x7f050018

    goto/16 :goto_0

    :cond_b
    const v2, 0x7f050017

    goto/16 :goto_0

    :cond_c
    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->isTabletPhonepadNumberInputMode()Z

    move-result v0

    if-eqz v0, :cond_25

    const/4 v0, 0x1

    if-ne v8, v0, :cond_d

    const/4 v0, 0x2

    if-ne v5, v0, :cond_e

    :cond_d
    invoke-static {}, Lcom/ime/framework/repository/EditorStatus;->isDecimalNumberInputType()Z

    move-result v0

    if-eqz v0, :cond_11

    const/4 v0, 0x2

    if-eq v5, v0, :cond_11

    :cond_e
    const/4 v0, 0x7

    if-ne v5, v0, :cond_10

    if-eqz p1, :cond_f

    const v2, 0x7f050218

    goto/16 :goto_0

    :cond_f
    const v2, 0x7f050219

    goto/16 :goto_0

    :cond_10
    const v2, 0x7f050010

    goto/16 :goto_0

    :cond_11
    invoke-static {}, Lcom/ime/framework/repository/EditorStatus;->isNumberOnlyInputType()Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x2

    if-eq v5, v0, :cond_16

    const/4 v0, 0x7

    if-ne v5, v0, :cond_13

    if-eqz p1, :cond_12

    const v2, 0x7f05021a

    goto/16 :goto_0

    :cond_12
    const v2, 0x7f05021b

    goto/16 :goto_0

    :cond_13
    invoke-static {}, Lcom/ime/framework/repository/EditorStatus;->isNumberPasswordInputType()Z

    move-result v0

    if-eqz v0, :cond_15

    const/16 v0, 0x8

    if-ne v5, v0, :cond_15

    iget-boolean v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mIsTabletMode:Z

    if-eqz v0, :cond_14

    const v2, 0x7f05002f

    goto/16 :goto_0

    :cond_14
    const v2, 0x7f05002e

    goto/16 :goto_0

    :cond_15
    const v2, 0x7f050011

    goto/16 :goto_0

    :cond_16
    invoke-static {}, Lcom/ime/framework/repository/EditorStatus;->isSignedNumberInputType()Z

    move-result v0

    if-eqz v0, :cond_19

    const/4 v0, 0x2

    if-eq v5, v0, :cond_19

    const/4 v0, 0x7

    if-ne v5, v0, :cond_18

    if-eqz p1, :cond_17

    const v2, 0x7f05021f

    goto/16 :goto_0

    :cond_17
    const v2, 0x7f050220

    goto/16 :goto_0

    :cond_18
    const v2, 0x7f050012

    goto/16 :goto_0

    :cond_19
    invoke-static {}, Lcom/ime/framework/repository/EditorStatus;->isSignedDecimalNumberInputType()Z

    move-result v0

    if-eqz v0, :cond_1c

    const/4 v0, 0x2

    if-eq v5, v0, :cond_1c

    const/4 v0, 0x7

    if-ne v5, v0, :cond_1b

    if-eqz p1, :cond_1a

    const v2, 0x7f05021d

    goto/16 :goto_0

    :cond_1a
    const v2, 0x7f05021e

    goto/16 :goto_0

    :cond_1b
    const v2, 0x7f050013

    goto/16 :goto_0

    :cond_1c
    invoke-static {}, Lcom/ime/framework/repository/EditorStatus;->isTimeInputType()Z

    move-result v0

    if-eqz v0, :cond_1f

    const/4 v0, 0x2

    if-eq v5, v0, :cond_1f

    const/4 v0, 0x7

    if-ne v5, v0, :cond_1e

    if-eqz p1, :cond_1d

    const v2, 0x7f05025c

    goto/16 :goto_0

    :cond_1d
    const v2, 0x7f05025d

    goto/16 :goto_0

    :cond_1e
    const v2, 0x7f050070

    goto/16 :goto_0

    :cond_1f
    invoke-static {}, Lcom/ime/framework/repository/EditorStatus;->isDateInputType()Z

    move-result v0

    if-eqz v0, :cond_22

    const/4 v0, 0x2

    if-eq v5, v0, :cond_22

    const/4 v0, 0x7

    if-ne v5, v0, :cond_21

    if-eqz p1, :cond_20

    const v2, 0x7f0501bb

    goto/16 :goto_0

    :cond_20
    const v2, 0x7f0501bc

    goto/16 :goto_0

    :cond_21
    const v2, 0x7f050009

    goto/16 :goto_0

    :cond_22
    invoke-static {}, Lcom/ime/framework/repository/EditorStatus;->isDateTimeInputType()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    if-eq v5, v0, :cond_0

    const/4 v0, 0x7

    if-ne v5, v0, :cond_24

    if-eqz p1, :cond_23

    const v2, 0x7f0501bd

    goto/16 :goto_0

    :cond_23
    const v2, 0x7f0501be

    goto/16 :goto_0

    :cond_24
    :try_start_1
    const-string v0, "floating_datetime"

    invoke-static {v0}, Lcom/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    goto/16 :goto_0

    :catch_1
    move-exception v6

    const v2, 0x7f0500e3

    goto/16 :goto_0

    :cond_25
    const/4 v0, 0x7

    if-ne v5, v0, :cond_44

    if-eqz p1, :cond_2d

    const/high16 v0, 0x61720000

    if-ne v4, v0, :cond_26

    const v2, 0x7f05022e

    :goto_4
    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v1, "SYMBOLS_PAGE"

    const/4 v9, 0x0

    invoke-interface {v0, v1, v9}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/ime/implement/view/ViewControllerImpl;->getCurrentSymbolPageModeId(I)I

    move-result v3

    goto/16 :goto_0

    :cond_26
    const/high16 v0, 0x66610000

    if-ne v4, v0, :cond_27

    const v2, 0x7f050231

    goto :goto_4

    :cond_27
    const/high16 v0, 0x75720000

    if-ne v4, v0, :cond_28

    const v2, 0x7f050235

    goto :goto_4

    :cond_28
    const/high16 v0, 0x6b6d0000

    if-ne v4, v0, :cond_29

    const v2, 0x7f050232

    goto :goto_4

    :cond_29
    invoke-static {v4}, Lcom/ime/framework/util/Utils;->isLaoLanguage(I)Z

    move-result v0

    if-eqz v0, :cond_2a

    const v2, 0x7f050234

    goto :goto_4

    :cond_2a
    const v0, 0x7a314d4d

    if-ne v4, v0, :cond_2b

    const v2, 0x7f050237

    goto :goto_4

    :cond_2b
    iget-boolean v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mIsKorMode:Z

    if-eqz v0, :cond_2c

    const v2, 0x7f050233

    goto :goto_4

    :cond_2c
    const v2, 0x7f05022d

    goto :goto_4

    :cond_2d
    const/high16 v0, 0x61720000

    if-ne v4, v0, :cond_2e

    const v2, 0x7f05022e

    goto :goto_4

    :cond_2e
    const/high16 v0, 0x66610000

    if-ne v4, v0, :cond_2f

    const v2, 0x7f050231

    goto :goto_4

    :cond_2f
    const/high16 v0, 0x75720000

    if-ne v4, v0, :cond_30

    const v2, 0x7f050235

    goto :goto_4

    :cond_30
    const/high16 v0, 0x6b6d0000

    if-ne v4, v0, :cond_31

    const v2, 0x7f050240

    goto :goto_4

    :cond_31
    invoke-static {v4}, Lcom/ime/framework/util/Utils;->isLaoLanguage(I)Z

    move-result v0

    if-eqz v0, :cond_32

    const v2, 0x7f050243

    goto :goto_4

    :cond_32
    const v0, 0x7a314d4d

    if-ne v4, v0, :cond_33

    const v2, 0x7f05024d

    goto :goto_4

    :cond_33
    const/high16 v0, 0x68690000

    if-ne v4, v0, :cond_34

    const v2, 0x7f05023f

    goto :goto_4

    :cond_34
    const/high16 v0, 0x626e0000

    if-ne v4, v0, :cond_35

    const v2, 0x7f05023b

    goto/16 :goto_4

    :cond_35
    const/high16 v0, 0x67750000

    if-ne v4, v0, :cond_36

    const v2, 0x7f05023e

    goto/16 :goto_4

    :cond_36
    const/high16 v0, 0x74610000

    if-ne v4, v0, :cond_37

    const v2, 0x7f05024a

    goto/16 :goto_4

    :cond_37
    const/high16 v0, 0x6b6e0000

    if-ne v4, v0, :cond_38

    const v2, 0x7f050241

    goto/16 :goto_4

    :cond_38
    const/high16 v0, 0x74650000

    if-ne v4, v0, :cond_39

    const v2, 0x7f05024b

    goto/16 :goto_4

    :cond_39
    const/high16 v0, 0x6d6c0000

    if-ne v4, v0, :cond_3a

    const v2, 0x7f050244

    goto/16 :goto_4

    :cond_3a
    const/high16 v0, 0x6d720000

    if-ne v4, v0, :cond_3b

    const v2, 0x7f050245

    goto/16 :goto_4

    :cond_3b
    const/high16 v0, 0x70610000

    if-ne v4, v0, :cond_3c

    const v2, 0x7f050248

    goto/16 :goto_4

    :cond_3c
    const/high16 v0, 0x73690000

    if-ne v4, v0, :cond_3d

    const v2, 0x7f050249

    goto/16 :goto_4

    :cond_3d
    const/high16 v0, 0x61730000

    if-ne v4, v0, :cond_3e

    const v2, 0x7f05023a

    goto/16 :goto_4

    :cond_3e
    const/high16 v0, 0x6e650000

    if-ne v4, v0, :cond_3f

    const v2, 0x7f050246

    goto/16 :goto_4

    :cond_3f
    const/high16 v0, 0x6f720000

    if-ne v4, v0, :cond_40

    const v2, 0x7f050247

    goto/16 :goto_4

    :cond_40
    const/high16 v0, 0x65730000

    if-eq v4, v0, :cond_41

    const v0, 0x65734553

    if-eq v4, v0, :cond_41

    const v0, 0x65735553

    if-ne v4, v0, :cond_42

    :cond_41
    const v2, 0x7f05023c

    goto/16 :goto_4

    :cond_42
    iget-boolean v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mIsKorMode:Z

    if-eqz v0, :cond_43

    const v2, 0x7f050242

    goto/16 :goto_4

    :cond_43
    const v2, 0x7f050238

    goto/16 :goto_4

    :cond_44
    const/16 v0, 0x8

    if-ne v5, v0, :cond_54

    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v0}, Lcom/ime/framework/inputmode/InputModeManager;->isFloatingHWRKeyboard()Z

    move-result v0

    if-eqz v0, :cond_46

    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v0}, Lcom/ime/framework/inputmode/InputModeManager;->isBstHWRmodeEnable()Z

    move-result v0

    if-eqz v0, :cond_45

    const v2, 0x7f05002c

    invoke-direct {p0}, Lcom/ime/implement/view/ViewControllerImpl;->getHwrKeyboardModeId()I

    move-result v3

    goto/16 :goto_0

    :cond_45
    invoke-direct {p0}, Lcom/ime/implement/view/ViewControllerImpl;->getFloatingHWRKeyboardXmlId()I

    move-result v2

    invoke-direct {p0}, Lcom/ime/implement/view/ViewControllerImpl;->getHwrKeyboardModeId()I

    move-result v3

    goto/16 :goto_0

    :cond_46
    const/4 v0, 0x1

    if-eq v8, v0, :cond_47

    :try_start_2
    invoke-static {}, Lcom/ime/framework/repository/EditorStatus;->isDecimalNumberInputType()Z
    :try_end_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v0

    if-eqz v0, :cond_48

    :cond_47
    const v2, 0x7f05002d

    :goto_5
    invoke-direct {p0}, Lcom/ime/implement/view/ViewControllerImpl;->getNumberKeyboardModeId()I

    move-result v3

    goto/16 :goto_0

    :cond_48
    :try_start_3
    invoke-static {}, Lcom/ime/framework/repository/EditorStatus;->isNumberPasswordInputType()Z

    move-result v0

    if-eqz v0, :cond_4a

    iget-boolean v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mIsTabletMode:Z

    if-eqz v0, :cond_49

    const v2, 0x7f05002f

    goto :goto_5

    :cond_49
    const v2, 0x7f05002e

    goto :goto_5

    :cond_4a
    invoke-static {}, Lcom/ime/framework/repository/EditorStatus;->isSignedNumberInputType()Z

    move-result v0

    if-eqz v0, :cond_4b

    const v2, 0x7f050030

    goto :goto_5

    :cond_4b
    invoke-static {}, Lcom/ime/framework/repository/EditorStatus;->isSignedDecimalNumberInputType()Z

    move-result v0

    if-nez v0, :cond_4c

    invoke-static {}, Lcom/ime/framework/repository/EditorStatus;->isNumberOnlyInputType()Z

    move-result v0

    if-eqz v0, :cond_4e

    :cond_4c
    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->isChnMode()Z

    move-result v0

    if-eqz v0, :cond_4d

    const v2, 0x7f05003b

    goto :goto_5

    :cond_4d
    const v2, 0x7f050031

    goto :goto_5

    :cond_4e
    invoke-static {}, Lcom/ime/framework/repository/EditorStatus;->isTimeInputType()Z

    move-result v0

    if-eqz v0, :cond_4f

    const v2, 0x7f05003a

    goto :goto_5

    :cond_4f
    invoke-static {}, Lcom/ime/framework/repository/EditorStatus;->isDateInputType()Z

    move-result v0

    if-eqz v0, :cond_50

    const v2, 0x7f05001c

    goto :goto_5

    :cond_50
    invoke-static {}, Lcom/ime/framework/repository/EditorStatus;->isDateTimeInputType()Z

    move-result v0

    if-eqz v0, :cond_51

    const v2, 0x7f05001d

    goto :goto_5

    :cond_51
    iget v0, v7, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/lit16 v0, v0, 0xff0

    const/16 v1, 0x70

    if-ne v0, v1, :cond_52

    invoke-direct {p0, p1}, Lcom/ime/implement/view/ViewControllerImpl;->getSymbolPopupKeyboard(Z)Lcom/ime/framework/view/DefaultKeyboard;

    move-result-object v0

    goto/16 :goto_3

    :cond_52
    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->isChnMode()Z
    :try_end_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3 .. :try_end_3} :catch_2

    move-result v0

    if-eqz v0, :cond_53

    const v2, 0x7f05002c

    goto :goto_5

    :cond_53
    const v2, 0x7f05002b

    goto :goto_5

    :catch_2
    move-exception v6

    const v2, 0x7f050108

    goto :goto_5

    :cond_54
    const v2, 0x7f0501a9

    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v1, "SYMBOLS_PAGE"

    const/4 v9, 0x0

    invoke-interface {v0, v1, v9}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/ime/implement/view/ViewControllerImpl;->getCurrentSymbolPageModeId(I)I

    move-result v3

    goto/16 :goto_0

    :cond_55
    new-instance v0, Lcom/ime/framework/view/DefaultKeyboard;

    iget-object v1, p0, Lcom/ime/implement/view/ViewControllerImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/ime/framework/view/DefaultKeyboard;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/ime/framework/view/DefaultKeyboard;

    goto/16 :goto_1

    :cond_56
    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mPrevKeyboard:Lcom/ime/framework/view/DefaultKeyboard;

    iput-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/ime/framework/view/DefaultKeyboard;

    goto/16 :goto_2
.end method

.method private getOneHandNumberKeyboard()Lcom/ime/framework/view/DefaultKeyboard;
    .locals 15

    const/high16 v14, 0x65730000

    const/high16 v13, 0x61660000

    const/high16 v12, 0x61720000

    const/4 v11, 0x0

    const/4 v10, 0x2

    const-string v0, "SamsungIME"

    const-string v1, "getOneHandNumberKeyboard"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/ime/framework/view/DefaultKeyboard;

    invoke-direct {p0}, Lcom/ime/implement/view/ViewControllerImpl;->getPhonePadNumberKeyboardXmlId()I

    move-result v2

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v0}, Lcom/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v5

    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v1, "INPUT_LANGUAGE"

    const v9, 0x656e4742

    invoke-interface {v0, v1, v9}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v4

    if-nez v2, :cond_0

    if-nez v5, :cond_14

    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    invoke-virtual {v0, v4, v5, v10}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(III)V

    const-string v0, "ISL"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v9, "CscFeature_Sip_ReplaceLocalCurrencyAs"

    invoke-virtual {v1, v9}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {v4}, Lcom/ime/framework/util/Utils;->isArabicLanguage(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    const/high16 v1, -0x36290000    # -1761280.0f

    invoke-virtual {v0, v1, v11, v10}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(III)V

    :goto_0
    const v2, 0x7f0500d7

    :goto_1
    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->isChnMode()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-direct {p0}, Lcom/ime/implement/view/ViewControllerImpl;->getNumberKeyboardModeId()I

    move-result v3

    :cond_0
    :goto_2
    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mPrevKeyboard:Lcom/ime/framework/view/DefaultKeyboard;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputMethodId:I

    if-ne v5, v0, :cond_1

    iget v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mXmlID:I

    if-ne v0, v2, :cond_1

    iget v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mModeID:I

    if-ne v0, v3, :cond_1

    iget-boolean v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mIsLandscape:Z

    iget-object v1, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->isOrientationLandscape()Z

    move-result v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->getNeedChangeKeyboardHeight()Z

    move-result v0

    if-eqz v0, :cond_2f

    :cond_1
    if-eqz v3, :cond_2e

    :try_start_0
    new-instance v0, Lcom/ime/framework/view/DefaultKeyboard;

    iget-object v1, p0, Lcom/ime/implement/view/ViewControllerImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2, v3}, Lcom/ime/framework/view/DefaultKeyboard;-><init>(Landroid/content/Context;II)V

    iput-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/ime/framework/view/DefaultKeyboard;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_3
    iget-object v1, p0, Lcom/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/ime/framework/view/DefaultKeyboard;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/ime/implement/view/ViewControllerImpl;->setCurrentKeyboardInfo(Lcom/ime/framework/view/DefaultKeyboard;IIII)V

    :goto_4
    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/ime/framework/view/DefaultKeyboard;

    return-object v0

    :cond_2
    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    const/high16 v1, 0x68650000

    invoke-virtual {v0, v1, v11, v10}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(III)V

    goto :goto_0

    :cond_3
    if-eq v4, v14, :cond_4

    const v0, 0x65734553

    if-eq v4, v0, :cond_4

    const v0, 0x65735553

    if-ne v4, v0, :cond_6

    :cond_4
    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    invoke-virtual {v0, v14, v11, v10}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(III)V

    :cond_5
    :goto_5
    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->isChnMode()Z

    move-result v0

    if-eqz v0, :cond_12

    const v2, 0x7f050096

    goto :goto_1

    :cond_6
    if-eq v4, v13, :cond_7

    const/high16 v0, 0x7a750000

    if-eq v4, v0, :cond_7

    const/high16 v0, 0x78680000

    if-ne v4, v0, :cond_8

    :cond_7
    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    invoke-virtual {v0, v13, v11, v10}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(III)V

    goto :goto_5

    :cond_8
    if-eq v4, v12, :cond_9

    const/high16 v0, 0x75720000

    if-eq v4, v0, :cond_9

    const/high16 v0, 0x66610000

    if-ne v4, v0, :cond_a

    :cond_9
    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    invoke-virtual {v0, v12, v11, v10}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(III)V

    goto :goto_5

    :cond_a
    const/high16 v0, 0x74670000

    if-eq v4, v0, :cond_b

    const/high16 v0, 0x72750000

    if-eq v4, v0, :cond_b

    const/high16 v0, 0x656c0000

    if-eq v4, v0, :cond_b

    const/high16 v0, 0x68790000

    if-eq v4, v0, :cond_b

    const/high16 v0, 0x74680000

    if-eq v4, v0, :cond_b

    const/high16 v0, 0x6c6f0000

    if-eq v4, v0, :cond_b

    const/high16 v0, 0x6b6d0000

    if-eq v4, v0, :cond_b

    const/high16 v0, 0x6a610000

    if-ne v4, v0, :cond_c

    :cond_b
    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    invoke-virtual {v0, v4, v5, v10}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(III)V

    goto :goto_5

    :cond_c
    invoke-static {v4}, Lcom/ime/framework/util/Utils;->isIndianLanguage(I)Z

    move-result v0

    if-eqz v0, :cond_f

    const/high16 v0, 0x73690000

    if-eq v4, v0, :cond_d

    const/high16 v0, 0x6e650000

    if-ne v4, v0, :cond_e

    :cond_d
    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    const/high16 v1, 0x6e650000

    invoke-virtual {v0, v1, v5, v10}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(III)V

    goto :goto_5

    :cond_e
    const/high16 v0, 0x6d6e0000

    if-eq v4, v0, :cond_5

    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    const/high16 v1, 0x68690000

    invoke-virtual {v0, v1, v5, v10}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(III)V

    goto :goto_5

    :cond_f
    iget-boolean v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->USE_SYMBOL_LAYOUT_BY_ATT:Z

    if-nez v0, :cond_10

    iget-boolean v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->USE_SYMBOL_LAYOUT_BY_ATT_WITH_NUMBER_KEY_FIRST_LINE:Z

    if-eqz v0, :cond_11

    :cond_10
    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    const/high16 v1, -0x1a920000

    invoke-virtual {v0, v1, v11, v10}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(III)V

    goto/16 :goto_5

    :cond_11
    iget-boolean v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mIsUSASymbolLayout:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    const/high16 v1, -0x2a920000

    invoke-virtual {v0, v1, v11, v10}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(III)V

    const v2, 0x7f0500d7

    goto/16 :goto_5

    :cond_12
    const v2, 0x7f0500d7

    goto/16 :goto_1

    :cond_13
    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v1, "SYMBOLS_PAGE"

    invoke-interface {v0, v1, v11}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/ime/implement/view/ViewControllerImpl;->getCurrentSymbolPageModeId(I)I

    move-result v3

    goto/16 :goto_2

    :cond_14
    const/4 v0, 0x1

    if-ne v5, v0, :cond_1d

    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v0}, Lcom/ime/framework/inputmode/InputModeManager;->isKorTabletCji()Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mPrivateImeOptionsController:Lcom/ime/framework/common/PrivateImeOptionsController;

    invoke-interface {v0}, Lcom/ime/framework/common/PrivateImeOptionsController;->getInputType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_17

    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v0}, Lcom/ime/framework/inputmode/InputModeManager;->getInputMethodOnKor()I

    move-result v8

    const/4 v0, 0x1

    if-ne v8, v0, :cond_15

    const v2, 0x7f05008f

    :goto_6
    invoke-direct {p0}, Lcom/ime/implement/view/ViewControllerImpl;->getNumberKeyboardModeId()I

    move-result v3

    goto/16 :goto_2

    :cond_15
    if-ne v8, v10, :cond_16

    const v2, 0x7f050090

    goto :goto_6

    :cond_16
    invoke-static {}, Lcom/ime/framework/repository/InputModeStatus;->getPreferenceInputMethodOnKor()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    const v2, 0x7f05008f

    goto :goto_6

    :pswitch_0
    const v2, 0x7f05008f

    goto :goto_6

    :pswitch_1
    const v2, 0x7f050090

    goto :goto_6

    :cond_17
    const/high16 v0, 0x6b6d0000

    if-ne v4, v0, :cond_18

    const v2, 0x7f050098

    goto :goto_6

    :cond_18
    const/high16 v0, 0x6c6f0000

    if-ne v4, v0, :cond_19

    const v2, 0x7f050099

    goto :goto_6

    :cond_19
    if-ne v4, v12, :cond_1a

    :try_start_1
    const-string v0, "onehand_phonepad_number_arabic"

    invoke-static {v0}, Lcom/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v2

    goto :goto_6

    :cond_1a
    const/high16 v0, 0x66610000

    if-ne v4, v0, :cond_1b

    const-string v0, "onehand_phonepad_number_farsi"

    invoke-static {v0}, Lcom/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v2

    goto :goto_6

    :cond_1b
    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->isChnMode()Z
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    if-eqz v0, :cond_1c

    const v2, 0x7f050096

    goto :goto_6

    :cond_1c
    const v2, 0x7f050095

    goto :goto_6

    :catch_0
    move-exception v6

    const v2, 0x7f050095

    goto :goto_6

    :cond_1d
    const-string v0, "ISL"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v9, "CscFeature_Sip_ReplaceLocalCurrencyAs"

    invoke-virtual {v1, v9}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-static {v4}, Lcom/ime/framework/util/Utils;->isArabicLanguage(I)Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    const/high16 v1, -0x36290000    # -1761280.0f

    invoke-virtual {v0, v1, v11, v10}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(III)V

    :goto_7
    const v2, 0x7f0500d7

    :goto_8
    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v1, "SYMBOLS_PAGE"

    invoke-interface {v0, v1, v11}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/ime/implement/view/ViewControllerImpl;->getCurrentSymbolPageModeId(I)I

    move-result v3

    goto/16 :goto_2

    :cond_1e
    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    const/high16 v1, 0x68650000

    invoke-virtual {v0, v1, v11, v10}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(III)V

    goto :goto_7

    :cond_1f
    if-eq v4, v14, :cond_20

    const v0, 0x65734553

    if-eq v4, v0, :cond_20

    const v0, 0x65735553

    if-ne v4, v0, :cond_22

    :cond_20
    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    invoke-virtual {v0, v14, v11, v10}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(III)V

    :cond_21
    :goto_9
    const v2, 0x7f0500d7

    goto :goto_8

    :cond_22
    if-eq v4, v13, :cond_23

    const/high16 v0, 0x7a750000

    if-eq v4, v0, :cond_23

    const/high16 v0, 0x78680000

    if-ne v4, v0, :cond_24

    :cond_23
    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    invoke-virtual {v0, v13, v11, v10}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(III)V

    goto :goto_9

    :cond_24
    if-eq v4, v12, :cond_25

    const/high16 v0, 0x75720000

    if-eq v4, v0, :cond_25

    const/high16 v0, 0x66610000

    if-ne v4, v0, :cond_26

    :cond_25
    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    invoke-virtual {v0, v12, v11, v10}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(III)V

    goto :goto_9

    :cond_26
    const/high16 v0, 0x74670000

    if-eq v4, v0, :cond_27

    const/high16 v0, 0x72750000

    if-eq v4, v0, :cond_27

    const/high16 v0, 0x656c0000

    if-eq v4, v0, :cond_27

    const/high16 v0, 0x68790000

    if-eq v4, v0, :cond_27

    const/high16 v0, 0x74680000

    if-eq v4, v0, :cond_27

    const/high16 v0, 0x6c6f0000

    if-eq v4, v0, :cond_27

    const/high16 v0, 0x6b6d0000

    if-eq v4, v0, :cond_27

    const/high16 v0, 0x6a610000

    if-ne v4, v0, :cond_28

    :cond_27
    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    invoke-virtual {v0, v4, v5, v10}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(III)V

    goto :goto_9

    :cond_28
    invoke-static {v4}, Lcom/ime/framework/util/Utils;->isIndianLanguage(I)Z

    move-result v0

    if-eqz v0, :cond_2b

    const/high16 v0, 0x73690000

    if-eq v4, v0, :cond_29

    const/high16 v0, 0x6e650000

    if-ne v4, v0, :cond_2a

    :cond_29
    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    const/high16 v1, 0x6e650000

    invoke-virtual {v0, v1, v5, v10}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(III)V

    goto :goto_9

    :cond_2a
    const/high16 v0, 0x6d6e0000

    if-eq v4, v0, :cond_21

    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    const/high16 v1, 0x68690000

    invoke-virtual {v0, v1, v5, v10}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(III)V

    goto :goto_9

    :cond_2b
    iget-boolean v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->USE_SYMBOL_LAYOUT_BY_ATT:Z

    if-nez v0, :cond_2c

    iget-boolean v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->USE_SYMBOL_LAYOUT_BY_ATT_WITH_NUMBER_KEY_FIRST_LINE:Z

    if-eqz v0, :cond_2d

    :cond_2c
    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    const/high16 v1, -0x1a920000

    invoke-virtual {v0, v1, v11, v10}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(III)V

    goto :goto_9

    :cond_2d
    iget-boolean v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mIsUSASymbolLayout:Z

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    const/high16 v1, -0x2a920000

    invoke-virtual {v0, v1, v11, v10}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(III)V

    const v2, 0x7f0500d7

    goto/16 :goto_9

    :catch_1
    move-exception v6

    const-string v0, "SamsungIME"

    const-string v1, "OutOfMemoryError occurs in DefaultKeyboard"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_2e
    :try_start_2
    new-instance v0, Lcom/ime/framework/view/DefaultKeyboard;

    iget-object v1, p0, Lcom/ime/implement/view/ViewControllerImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/ime/framework/view/DefaultKeyboard;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/ime/framework/view/DefaultKeyboard;
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_3

    :catch_2
    move-exception v6

    const-string v0, "SamsungIME"

    const-string v1, "OutOfMemoryError occurs in DefaultKeyboard"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_2f
    iget v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mLanguageID:I

    if-eq v4, v0, :cond_30

    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mPrevKeyboard:Lcom/ime/framework/view/DefaultKeyboard;

    invoke-virtual {v0}, Lcom/ime/framework/view/DefaultKeyboard;->updateKeys()V

    iget-object v1, p0, Lcom/ime/implement/view/ViewControllerImpl;->mPrevKeyboard:Lcom/ime/framework/view/DefaultKeyboard;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/ime/implement/view/ViewControllerImpl;->setCurrentKeyboardInfo(Lcom/ime/framework/view/DefaultKeyboard;IIII)V

    :cond_30
    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mPrevKeyboard:Lcom/ime/framework/view/DefaultKeyboard;

    iput-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/ime/framework/view/DefaultKeyboard;

    goto/16 :goto_4

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getOneHandPhonepadXmlId(I)I
    .locals 20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/view/ViewControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/ime/framework/common/InputManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v13

    const-string v17, "da_mode"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-interface {v13, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    const-string v17, "da_language"

    const/16 v18, -0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-interface {v13, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-eqz v5, :cond_0

    move/from16 p1, v3

    :cond_0
    const/high16 v17, -0x10000

    and-int v12, p1, v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/view/ViewControllerImpl;->mRepository:Lcom/ime/framework/repository/Repository;

    move-object/from16 v17, v0

    const-string v18, "CHINESE_PHONETIC_SPELL_LAYOUT_SHOWN"

    const/16 v19, 0x0

    invoke-interface/range {v17 .. v19}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/view/ViewControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/ime/framework/inputmode/InputModeManager;->isChineseStrokeModeOn()Z

    move-result v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    move-object/from16 v0, v17

    move/from16 v1, p1

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(II)V

    const v16, 0x7f050086

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    move-object/from16 v17, v0

    const/high16 v18, 0x656e0000

    invoke-virtual/range {v17 .. v18}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setDefaultLanguage(I)V

    sparse-switch v12, :sswitch_data_0

    const v16, 0x7f050086

    :goto_0
    return v16

    :sswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    move-object/from16 v17, v0

    const/high16 v18, 0x6b6b0000

    const/16 v19, 0x1

    invoke-virtual/range {v17 .. v19}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(II)V

    goto :goto_0

    :sswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    move-object/from16 v17, v0

    const/high16 v18, 0x62670000

    const/16 v19, 0x1

    invoke-virtual/range {v17 .. v19}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(II)V

    goto :goto_0

    :sswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    move-object/from16 v17, v0

    const/high16 v18, 0x6d6e0000

    const/16 v19, 0x1

    invoke-virtual/range {v17 .. v19}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(II)V

    goto :goto_0

    :sswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    move-object/from16 v17, v0

    const/high16 v18, 0x66720000

    const/16 v19, 0x1

    invoke-virtual/range {v17 .. v19}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(II)V

    goto :goto_0

    :sswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    move-object/from16 v17, v0

    const/high16 v18, 0x65730000

    const/16 v19, 0x1

    invoke-virtual/range {v17 .. v19}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(II)V

    goto :goto_0

    :sswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    move-object/from16 v17, v0

    const/high16 v18, 0x70740000

    const/16 v19, 0x1

    invoke-virtual/range {v17 .. v19}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(II)V

    goto :goto_0

    :sswitch_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    move-object/from16 v17, v0

    const/high16 v18, 0x68720000

    const/16 v19, 0x1

    invoke-virtual/range {v17 .. v19}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(II)V

    goto :goto_0

    :sswitch_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    move-object/from16 v17, v0

    const/high16 v18, 0x73760000

    const/16 v19, 0x1

    invoke-virtual/range {v17 .. v19}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(II)V

    goto :goto_0

    :sswitch_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    move-object/from16 v17, v0

    const/high16 v18, 0x757a0000

    const/16 v19, 0x1

    invoke-virtual/range {v17 .. v19}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(II)V

    goto :goto_0

    :sswitch_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    move-object/from16 v17, v0

    const/high16 v18, 0x61720000

    invoke-virtual/range {v17 .. v18}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setDefaultLanguage(I)V

    goto/16 :goto_0

    :sswitch_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/view/ViewControllerImpl;->mRepository:Lcom/ime/framework/repository/Repository;

    move-object/from16 v17, v0

    const-string v18, "KOR_MODE"

    const/16 v19, 0x0

    invoke-interface/range {v17 .. v19}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/view/ViewControllerImpl;->mRepository:Lcom/ime/framework/repository/Repository;

    move-object/from16 v17, v0

    const-string v18, "SETTINGS_DEFAULT_USE_INPUT_METHOD_TYPE_ON_KOR"

    const/16 v19, 0x0

    invoke-interface/range {v17 .. v19}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v6, :cond_4

    if-eqz v7, :cond_4

    invoke-static {}, Lcom/ime/framework/repository/InputModeStatus;->getPreferenceInputMethodOnKor()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/view/ViewControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/ime/framework/inputmode/InputModeManager;->isKorTabletCji()Z

    move-result v17

    if-eqz v17, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/view/ViewControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/ime/framework/inputmode/InputModeManager;->getInputMethodOnKor()I

    move-result v10

    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v10, v0, :cond_1

    const v16, 0x7f05008f

    goto/16 :goto_0

    :cond_1
    const/16 v17, 0x2

    move/from16 v0, v17

    if-ne v10, v0, :cond_2

    const v16, 0x7f050090

    goto/16 :goto_0

    :cond_2
    packed-switch v4, :pswitch_data_0

    const v16, 0x7f05008f

    goto/16 :goto_0

    :pswitch_0
    const v16, 0x7f05008f

    goto/16 :goto_0

    :pswitch_1
    const v16, 0x7f050090

    goto/16 :goto_0

    :cond_3
    packed-switch v4, :pswitch_data_1

    const v16, 0x7f05008f

    goto/16 :goto_0

    :pswitch_2
    const v16, 0x7f05008f

    goto/16 :goto_0

    :pswitch_3
    const v16, 0x7f050090

    goto/16 :goto_0

    :pswitch_4
    const v16, 0x7f050091

    goto/16 :goto_0

    :pswitch_5
    const v16, 0x7f050092

    goto/16 :goto_0

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/view/ViewControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move/from16 v1, p1

    invoke-interface {v0, v1}, Lcom/ime/framework/common/InputManager;->makeSelectLanguagePrefKey(I)Ljava/lang/String;

    move-result-object v9

    const/16 v17, 0x1

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v13, v9, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    packed-switch v11, :pswitch_data_2

    const v16, 0x7f05008f

    goto/16 :goto_0

    :pswitch_6
    const v16, 0x7f050090

    goto/16 :goto_0

    :sswitch_b
    const v17, 0x7a68484b

    move/from16 v0, p1

    move/from16 v1, v17

    if-ne v0, v1, :cond_5

    const v16, 0x7f0500a9

    goto/16 :goto_0

    :cond_5
    const v17, 0x7a685457

    move/from16 v0, p1

    move/from16 v1, v17

    if-ne v0, v1, :cond_8

    if-eqz v14, :cond_6

    const v16, 0x7f0500aa

    goto/16 :goto_0

    :cond_6
    if-eqz v8, :cond_7

    const v16, 0x7f0500ac

    goto/16 :goto_0

    :cond_7
    const v16, 0x7f0500ab

    goto/16 :goto_0

    :cond_8
    if-eqz v14, :cond_9

    const v16, 0x7f050083

    goto/16 :goto_0

    :cond_9
    if-eqz v8, :cond_a

    const v16, 0x7f050082

    goto/16 :goto_0

    :cond_a
    const v16, 0x7f050081

    goto/16 :goto_0

    :sswitch_c
    invoke-virtual/range {p0 .. p0}, Lcom/ime/implement/view/ViewControllerImpl;->getCurrentThaiVowelPageNum()I

    move-result v15

    const/16 v17, 0x3

    move/from16 v0, v17

    if-ne v15, v0, :cond_b

    const v16, 0x7f0500a4

    goto/16 :goto_0

    :cond_b
    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v15, v0, :cond_c

    const v16, 0x7f0500a5

    goto/16 :goto_0

    :cond_c
    const/16 v17, 0x2

    move/from16 v0, v17

    if-ne v15, v0, :cond_d

    const v16, 0x7f0500a6

    goto/16 :goto_0

    :cond_d
    const v16, 0x7f0500a3

    goto/16 :goto_0

    :sswitch_d
    const v16, 0x7f05008c

    goto/16 :goto_0

    :sswitch_e
    const v16, 0x7f050093

    goto/16 :goto_0

    :sswitch_f
    const v16, 0x7f050087

    goto/16 :goto_0

    :sswitch_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/view/ViewControllerImpl;->mRepository:Lcom/ime/framework/repository/Repository;

    move-object/from16 v17, v0

    const-string v18, "SETTINGS_DEFAULT_KEYPAD_FLICK"

    const/16 v19, 0x0

    invoke-interface/range {v17 .. v19}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v17

    if-eqz v17, :cond_e

    const v16, 0x7f05008b

    goto/16 :goto_0

    :cond_e
    const v16, 0x7f05008a

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x62670000 -> :sswitch_1
        0x65730000 -> :sswitch_4
        0x65734553 -> :sswitch_4
        0x65735553 -> :sswitch_4
        0x66610000 -> :sswitch_9
        0x66720000 -> :sswitch_3
        0x66724341 -> :sswitch_3
        0x66724652 -> :sswitch_3
        0x6a610000 -> :sswitch_10
        0x6b6b0000 -> :sswitch_0
        0x6b6d0000 -> :sswitch_d
        0x6b6f0000 -> :sswitch_a
        0x6b790000 -> :sswitch_2
        0x6c6f0000 -> :sswitch_e
        0x6d6e0000 -> :sswitch_2
        0x70740000 -> :sswitch_5
        0x70744252 -> :sswitch_5
        0x70745054 -> :sswitch_5
        0x73720000 -> :sswitch_6
        0x73760000 -> :sswitch_7
        0x74670000 -> :sswitch_2
        0x74680000 -> :sswitch_c
        0x757a0000 -> :sswitch_8
        0x76690000 -> :sswitch_f
        0x7a680000 -> :sswitch_b
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x2
        :pswitch_6
    .end packed-switch
.end method

.method private getOneHandQwertyKeyboardXmlId(I)I
    .locals 14

    const/high16 v10, -0x10000

    and-int v5, p1, v10

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v7

    iget-object v10, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v10}, Lcom/ime/framework/common/InputManager;->isSwiftKeyMode()Z

    move-result v10

    if-eqz v10, :cond_1

    iget-object v10, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v10}, Lcom/ime/framework/common/InputManager;->getCurrentInputCountryCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_1

    const-string v10, "CH"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    const v10, 0x66724652

    if-eq p1, v10, :cond_1

    :cond_0
    move-object v7, v3

    :cond_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v6

    const/4 v9, 0x0

    const v9, 0x7f0500b5

    iget-object v10, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    const/16 v11, 0x8

    invoke-virtual {v10, p1, v11}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(II)V

    iget-object v10, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    const/high16 v11, 0x656e0000

    invoke-virtual {v10, v11}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setDefaultLanguage(I)V

    sparse-switch v5, :sswitch_data_0

    iget-object v10, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    const/high16 v11, 0x656e0000

    const/16 v12, 0x8

    invoke-virtual {v10, v11, v12}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(II)V

    const v9, 0x7f0500b5

    :cond_2
    :goto_0
    return v9

    :sswitch_0
    iget-object v10, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    const/high16 v11, 0x68690000

    invoke-virtual {v10, v11}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setDefaultLanguage(I)V

    const v9, 0x7f0500cf

    goto :goto_0

    :sswitch_1
    iget-object v10, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    const/high16 v11, 0x626e0000

    invoke-virtual {v10, v11}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setDefaultLanguage(I)V

    const v9, 0x7f0500cf

    goto :goto_0

    :sswitch_2
    iget-object v10, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    const/high16 v11, 0x68690000

    invoke-virtual {v10, v11}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setDefaultLanguage(I)V

    const v9, 0x7f0500d0

    goto :goto_0

    :sswitch_3
    iget-object v10, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    const/high16 v11, 0x68690000

    invoke-virtual {v10, v11}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setDefaultLanguage(I)V

    const v9, 0x7f0500d1

    goto :goto_0

    :sswitch_4
    :try_start_0
    iget-object v10, p0, Lcom/ime/implement/view/ViewControllerImpl;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v11, "SETTINGS_TURKISH_KEYBOARD_TYPE"

    const/4 v12, 0x0

    invoke-interface {v10, v11, v12}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v8

    packed-switch v8, :pswitch_data_0

    iget-object v10, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    const/high16 v11, 0x656e0000

    const/16 v12, 0x8

    invoke-virtual {v10, v11, v12}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(II)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const v9, 0x7f0500b5

    goto :goto_0

    :pswitch_0
    const v9, 0x7f0500c8

    goto :goto_0

    :pswitch_1
    const v9, 0x7f0500cb

    goto :goto_0

    :catch_0
    move-exception v1

    const v9, 0x7f05013e

    goto :goto_0

    :sswitch_5
    const v9, 0x7f0500b5

    goto :goto_0

    :sswitch_6
    const v9, 0x7f0500b8

    goto :goto_0

    :sswitch_7
    iget-object v10, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    const/high16 v11, 0x64650000

    const/16 v12, 0x8

    invoke-virtual {v10, v11, v12}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(II)V

    const v9, 0x7f0500b5

    goto :goto_0

    :sswitch_8
    const-string v10, "BE"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    iget-object v10, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    const v11, 0x66724652

    const/16 v12, 0x8

    invoke-virtual {v10, v11, v12}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(II)V

    const v9, 0x7f0500b0

    goto :goto_0

    :cond_3
    iget-object v10, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    const/high16 v11, 0x656e0000

    const/16 v12, 0x8

    invoke-virtual {v10, v11, v12}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(II)V

    const v9, 0x7f0500b5

    goto/16 :goto_0

    :sswitch_9
    iget-object v10, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    const/high16 v11, 0x65730000

    const/16 v12, 0x8

    invoke-virtual {v10, v11, v12}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(II)V

    const v9, 0x7f0500b0

    goto/16 :goto_0

    :sswitch_a
    const v9, 0x7f0500b0

    goto/16 :goto_0

    :sswitch_b
    const-string v10, "CH"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    iget-object v10, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    const/high16 v11, 0x64650000

    const/16 v12, 0x8

    invoke-virtual {v10, v11, v12}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(II)V

    const v9, 0x7f0500b5

    goto/16 :goto_0

    :cond_4
    const v9, 0x7f0500b5

    goto/16 :goto_0

    :sswitch_c
    iget-boolean v10, p0, Lcom/ime/implement/view/ViewControllerImpl;->mIsKorMode:Z

    if-eqz v10, :cond_a

    iget-object v10, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v10}, Lcom/ime/framework/inputmode/InputModeManager;->getInputMethodOnKor()I

    move-result v4

    const/4 v10, 0x1

    if-ne v4, v10, :cond_5

    const v9, 0x7f05008f

    goto/16 :goto_0

    :cond_5
    const/4 v10, 0x2

    if-ne v4, v10, :cond_6

    const v9, 0x7f050090

    goto/16 :goto_0

    :cond_6
    const/4 v10, 0x3

    if-ne v4, v10, :cond_7

    const v9, 0x7f050092

    goto/16 :goto_0

    :cond_7
    const/4 v10, 0x4

    if-ne v4, v10, :cond_8

    const v9, 0x7f050091

    goto/16 :goto_0

    :cond_8
    if-nez v4, :cond_2

    iget-object v10, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v10}, Lcom/ime/framework/common/InputManager;->isUpdateKeyboardCodeValues()Z

    move-result v10

    if-eqz v10, :cond_9

    iget-object v10, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    const/high16 v11, 0x6b6f0000

    const/16 v12, 0x8

    const/4 v13, 0x0

    invoke-virtual {v10, v11, v12, v13}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->resetLanguageCodes(III)V

    :cond_9
    iget-object v10, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    const/high16 v11, 0x6b6f0000

    const/16 v12, 0x8

    invoke-virtual {v10, v11, v12}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(II)V

    const v9, 0x7f0500b5

    goto/16 :goto_0

    :cond_a
    iget-object v10, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    const/high16 v11, 0x6b6f0000

    const/16 v12, 0x8

    invoke-virtual {v10, v11, v12}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(II)V

    const v9, 0x7f0500b5

    goto/16 :goto_0

    :sswitch_d
    iget-object v10, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v10}, Lcom/ime/framework/common/InputManager;->getXt9Version()I

    move-result v10

    const/4 v11, 0x2

    if-lt v10, v11, :cond_c

    const v10, 0x66724341

    if-ne p1, v10, :cond_b

    iget-object v10, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    const/high16 v11, 0x656e0000

    const/16 v12, 0x8

    invoke-virtual {v10, v11, v12}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(II)V

    const v9, 0x7f0500b5

    goto/16 :goto_0

    :cond_b
    iget-object v10, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    const v11, 0x66724652

    const/16 v12, 0x8

    invoke-virtual {v10, v11, v12}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(II)V

    const v9, 0x7f0500b0

    goto/16 :goto_0

    :cond_c
    const-string v10, "CA"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_d

    iget-object v10, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    const/high16 v11, 0x656e0000

    const/16 v12, 0x8

    invoke-virtual {v10, v11, v12}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(II)V

    const v9, 0x7f0500b5

    goto/16 :goto_0

    :cond_d
    const-string v10, "CH"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_e

    iget-object v10, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    const/high16 v11, 0x64650000

    const/16 v12, 0x8

    invoke-virtual {v10, v11, v12}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(II)V

    const v9, 0x7f0500b5

    goto/16 :goto_0

    :cond_e
    iget-object v10, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    const v11, 0x66724652

    const/16 v12, 0x8

    invoke-virtual {v10, v11, v12}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(II)V

    const v9, 0x7f0500b1

    goto/16 :goto_0

    :sswitch_e
    iget-object v10, p0, Lcom/ime/implement/view/ViewControllerImpl;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v11, "SETTINGS_GERMAN_KEYBOARD_TYPE"

    const/4 v12, 0x1

    invoke-interface {v10, v11, v12}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v2

    packed-switch v2, :pswitch_data_1

    const v9, 0x7f0500b5

    goto/16 :goto_0

    :pswitch_2
    iget-object v10, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    const v11, 0x64654445

    const/16 v12, 0x8

    invoke-virtual {v10, v11, v12}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(II)V

    const v9, 0x7f0500c1

    goto/16 :goto_0

    :sswitch_f
    const v9, 0x7f0500b4

    goto/16 :goto_0

    :sswitch_10
    const v9, 0x7f0500c3

    goto/16 :goto_0

    :sswitch_11
    const v9, 0x7f0500c1

    goto/16 :goto_0

    :sswitch_12
    iget-object v10, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    const/high16 v11, 0x66690000

    const/16 v12, 0x8

    invoke-virtual {v10, v11, v12}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(II)V

    const v9, 0x7f0500c1

    goto/16 :goto_0

    :sswitch_13
    const v9, 0x7f0500c8

    goto/16 :goto_0

    :sswitch_14
    iget-object v10, p0, Lcom/ime/implement/view/ViewControllerImpl;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v11, "SETTINGS_BULGARIAN_KEYBOARD_TYPE"

    const/4 v12, 0x0

    invoke-interface {v10, v11, v12}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v0

    packed-switch v0, :pswitch_data_2

    const v9, 0x7f0500c3

    goto/16 :goto_0

    :pswitch_3
    :try_start_1
    const-string v10, "onehand_qwerty_bg_phonetic"

    invoke-static {v10}, Lcom/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v9

    goto/16 :goto_0

    :catch_1
    move-exception v1

    const v9, 0x7f0500c3

    goto/16 :goto_0

    :sswitch_15
    const v9, 0x7f0500cd

    goto/16 :goto_0

    :sswitch_16
    const v9, 0x7f0500b2

    goto/16 :goto_0

    :sswitch_17
    const v9, 0x7f0500bf

    goto/16 :goto_0

    :sswitch_18
    const v9, 0x7f0500cc

    goto/16 :goto_0

    :sswitch_19
    const v9, 0x7f0500c4

    goto/16 :goto_0

    :sswitch_1a
    invoke-static {}, Lcom/ime/framework/input/Telex/Telex;->getVietnameseInputMode()I

    move-result v10

    const/4 v11, 0x2

    if-ne v10, v11, :cond_f

    iget-boolean v10, p0, Lcom/ime/implement/view/ViewControllerImpl;->mIsAddNumberKeyFirstLine:Z

    if-nez v10, :cond_f

    const v9, 0x7f0500ae

    goto/16 :goto_0

    :cond_f
    invoke-static {}, Lcom/ime/framework/input/Telex/Telex;->isVietnameseEaseMode()Z

    move-result v10

    if-eqz v10, :cond_10

    const v9, 0x7f0500bc

    goto/16 :goto_0

    :cond_10
    const v9, 0x7f0500b5

    goto/16 :goto_0

    :sswitch_1b
    const v9, 0x7f0500c8

    goto/16 :goto_0

    :sswitch_1c
    const v9, 0x7f0500c0

    goto/16 :goto_0

    :sswitch_1d
    const v9, 0x7f0500b5

    goto/16 :goto_0

    :sswitch_1e
    const v10, 0x7a68484b

    if-ne p1, v10, :cond_11

    iget-object v10, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    const v11, 0x7a68484b

    const/16 v12, 0x8

    invoke-virtual {v10, v11, v12}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(II)V

    const v9, 0x7f0500b9

    goto/16 :goto_0

    :cond_11
    const v10, 0x7a685457

    if-ne p1, v10, :cond_12

    const v9, 0x7f0500bb

    goto/16 :goto_0

    :cond_12
    iget-object v10, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    const/high16 v11, 0x7a680000

    const/16 v12, 0x8

    invoke-virtual {v10, v11, v12}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(II)V

    const v9, 0x7f0500b6

    goto/16 :goto_0

    :sswitch_1f
    const v9, 0x7f0500ce

    goto/16 :goto_0

    :sswitch_20
    const v9, 0x7f0500be

    goto/16 :goto_0

    :sswitch_21
    const v9, 0x7f0500c7

    goto/16 :goto_0

    :sswitch_22
    const v9, 0x7f0500c6

    goto/16 :goto_0

    :sswitch_23
    const v9, 0x7f0500bd

    goto/16 :goto_0

    :sswitch_24
    const v9, 0x7f0500af

    goto/16 :goto_0

    :sswitch_25
    const v9, 0x7f0500ca

    goto/16 :goto_0

    :sswitch_26
    const v9, 0x7f0500c2

    goto/16 :goto_0

    :sswitch_27
    const v9, 0x7f0500b7

    goto/16 :goto_0

    :sswitch_28
    const v9, 0x7f0500c5

    goto/16 :goto_0

    :sswitch_29
    iget-object v10, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    const/high16 v11, 0x757a0000

    const/16 v12, 0x8

    invoke-virtual {v10, v11, v12}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(II)V

    const v9, 0x7f0500b5

    goto/16 :goto_0

    :sswitch_2a
    const v9, 0x7f0500c9

    goto/16 :goto_0

    :sswitch_2b
    const v9, 0x7f0500c5

    goto/16 :goto_0

    :sswitch_2c
    const v9, 0x7f0500ba

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x61720000 -> :sswitch_17
        0x61730000 -> :sswitch_1
        0x617a0000 -> :sswitch_1b
        0x62650000 -> :sswitch_1b
        0x62670000 -> :sswitch_14
        0x626e0000 -> :sswitch_0
        0x63610000 -> :sswitch_5
        0x63730000 -> :sswitch_7
        0x64610000 -> :sswitch_11
        0x64650000 -> :sswitch_e
        0x656c0000 -> :sswitch_15
        0x656e0000 -> :sswitch_5
        0x65730000 -> :sswitch_9
        0x65734553 -> :sswitch_9
        0x65735553 -> :sswitch_9
        0x65740000 -> :sswitch_22
        0x65750000 -> :sswitch_5
        0x66610000 -> :sswitch_a
        0x66690000 -> :sswitch_11
        0x66720000 -> :sswitch_d
        0x66724341 -> :sswitch_d
        0x66724652 -> :sswitch_d
        0x676c0000 -> :sswitch_5
        0x67750000 -> :sswitch_0
        0x68690000 -> :sswitch_0
        0x68720000 -> :sswitch_7
        0x68750000 -> :sswitch_7
        0x68790000 -> :sswitch_1c
        0x69640000 -> :sswitch_5
        0x69730000 -> :sswitch_20
        0x69740000 -> :sswitch_b
        0x69770000 -> :sswitch_18
        0x6a610000 -> :sswitch_27
        0x6b610000 -> :sswitch_1d
        0x6b6b0000 -> :sswitch_f
        0x6b6d0000 -> :sswitch_24
        0x6b6e0000 -> :sswitch_0
        0x6b6f0000 -> :sswitch_c
        0x6b790000 -> :sswitch_2a
        0x6c6f0000 -> :sswitch_25
        0x6c740000 -> :sswitch_1f
        0x6c760000 -> :sswitch_16
        0x6d6b0000 -> :sswitch_21
        0x6d6c0000 -> :sswitch_0
        0x6d6e0000 -> :sswitch_28
        0x6d720000 -> :sswitch_0
        0x6d730000 -> :sswitch_5
        0x6d790000 -> :sswitch_26
        0x6e620000 -> :sswitch_11
        0x6e650000 -> :sswitch_0
        0x6e6c0000 -> :sswitch_8
        0x6f720000 -> :sswitch_0
        0x70610000 -> :sswitch_2
        0x706c0000 -> :sswitch_5
        0x70740000 -> :sswitch_5
        0x726f0000 -> :sswitch_5
        0x72750000 -> :sswitch_10
        0x73690000 -> :sswitch_0
        0x736b0000 -> :sswitch_5
        0x736c0000 -> :sswitch_6
        0x73710000 -> :sswitch_23
        0x73720000 -> :sswitch_7
        0x73760000 -> :sswitch_12
        0x737a0000 -> :sswitch_5
        0x74610000 -> :sswitch_3
        0x74650000 -> :sswitch_0
        0x74670000 -> :sswitch_2b
        0x74680000 -> :sswitch_19
        0x746b0000 -> :sswitch_2c
        0x74720000 -> :sswitch_4
        0x756b0000 -> :sswitch_13
        0x75720000 -> :sswitch_a
        0x757a0000 -> :sswitch_29
        0x76690000 -> :sswitch_1a
        0x7a310000 -> :sswitch_26
        0x7a680000 -> :sswitch_1e
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_3
    .end packed-switch
.end method

.method private getOneHandSymbolKeyboard()Lcom/ime/framework/view/DefaultKeyboard;
    .locals 12

    const-string v0, "SamsungIME"

    const-string v1, "getSymbolKeyboard"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/ime/framework/view/DefaultKeyboard;

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v1, "INPUT_LANGUAGE"

    const v10, 0x656e4742

    invoke-interface {v0, v1, v10}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v4

    invoke-static {}, Lcom/ime/framework/repository/EditorStatus;->isPhoneNumberInputClass()Z

    move-result v7

    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v0}, Lcom/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v5

    const/4 v3, 0x0

    invoke-static {}, Lcom/ime/framework/repository/InputModeStatus;->getInputRange()I

    move-result v9

    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    const/4 v1, 0x2

    invoke-virtual {v0, v4, v5, v1}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(III)V

    if-nez v5, :cond_16

    if-eqz v7, :cond_3

    const v2, 0x7f05009f

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->isChnMode()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez v7, :cond_1

    const v2, 0x7f0500a2

    :cond_1
    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v0}, Lcom/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v5

    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mPrevKeyboard:Lcom/ime/framework/view/DefaultKeyboard;

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputMethodId:I

    if-ne v5, v0, :cond_2

    iget v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mXmlID:I

    if-ne v0, v2, :cond_2

    iget v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mModeID:I

    if-ne v0, v3, :cond_2

    iget-boolean v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mIsLandscape:Z

    iget-object v1, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->isOrientationLandscape()Z

    move-result v1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->getNeedChangeKeyboardHeight()Z

    move-result v0

    if-eqz v0, :cond_29

    :cond_2
    if-eqz v3, :cond_28

    new-instance v0, Lcom/ime/framework/view/DefaultKeyboard;

    iget-object v1, p0, Lcom/ime/implement/view/ViewControllerImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2, v3}, Lcom/ime/framework/view/DefaultKeyboard;-><init>(Landroid/content/Context;II)V

    iput-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/ime/framework/view/DefaultKeyboard;

    :goto_1
    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/ime/framework/common/InputManager;->setNeedChangeKeyboardHeight(Z)V

    iget-object v1, p0, Lcom/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/ime/framework/view/DefaultKeyboard;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/ime/implement/view/ViewControllerImpl;->setCurrentKeyboardInfo(Lcom/ime/framework/view/DefaultKeyboard;IIII)V

    :goto_2
    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/ime/framework/view/DefaultKeyboard;

    return-object v0

    :cond_3
    const-string v0, "ISL"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v10, "CscFeature_Sip_ReplaceLocalCurrencyAs"

    invoke-virtual {v1, v10}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {v4}, Lcom/ime/framework/util/Utils;->isArabicLanguage(I)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    const/high16 v1, -0x36290000    # -1761280.0f

    const/4 v10, 0x0

    const/4 v11, 0x2

    invoke-virtual {v0, v1, v10, v11}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(III)V

    :goto_3
    const v2, 0x7f0500d7

    :goto_4
    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v1, "SYMBOLS_PAGE"

    const/4 v10, 0x0

    invoke-interface {v0, v1, v10}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/ime/implement/view/ViewControllerImpl;->getCurrentSymbolPageModeId(I)I

    move-result v3

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    const/high16 v1, 0x68650000

    const/4 v10, 0x0

    const/4 v11, 0x2

    invoke-virtual {v0, v1, v10, v11}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(III)V

    goto :goto_3

    :cond_5
    const/high16 v0, 0x65730000

    if-eq v4, v0, :cond_6

    const v0, 0x65734553

    if-eq v4, v0, :cond_6

    const v0, 0x65735553

    if-ne v4, v0, :cond_8

    :cond_6
    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    const/high16 v1, 0x65730000

    const/4 v10, 0x0

    const/4 v11, 0x2

    invoke-virtual {v0, v1, v10, v11}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(III)V

    :cond_7
    :goto_5
    const v2, 0x7f0500d7

    goto :goto_4

    :cond_8
    const/high16 v0, 0x61660000

    if-eq v4, v0, :cond_9

    const/high16 v0, 0x7a750000

    if-eq v4, v0, :cond_9

    const/high16 v0, 0x78680000

    if-ne v4, v0, :cond_a

    :cond_9
    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    const/high16 v1, 0x61660000

    const/4 v10, 0x0

    const/4 v11, 0x2

    invoke-virtual {v0, v1, v10, v11}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(III)V

    goto :goto_5

    :cond_a
    const/high16 v0, 0x61720000

    if-eq v4, v0, :cond_b

    const/high16 v0, 0x75720000

    if-eq v4, v0, :cond_b

    const/high16 v0, 0x66610000

    if-ne v4, v0, :cond_c

    :cond_b
    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    const/high16 v1, 0x61720000

    const/4 v10, 0x0

    const/4 v11, 0x2

    invoke-virtual {v0, v1, v10, v11}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(III)V

    goto :goto_5

    :cond_c
    const/high16 v0, 0x7a680000

    if-eq v4, v0, :cond_d

    const v0, 0x7a68434e

    if-eq v4, v0, :cond_d

    const v0, 0x7a68484b

    if-eq v4, v0, :cond_d

    const v0, 0x7a685457

    if-ne v4, v0, :cond_e

    :cond_d
    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    const/high16 v1, 0x7a680000

    const/4 v10, 0x0

    const/4 v11, 0x2

    invoke-virtual {v0, v1, v10, v11}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(III)V

    goto :goto_5

    :cond_e
    const/high16 v0, 0x74670000

    if-eq v4, v0, :cond_f

    const/high16 v0, 0x72750000

    if-eq v4, v0, :cond_f

    const/high16 v0, 0x656c0000

    if-eq v4, v0, :cond_f

    const/high16 v0, 0x68790000

    if-eq v4, v0, :cond_f

    const/high16 v0, 0x74680000

    if-eq v4, v0, :cond_f

    const/high16 v0, 0x6c6f0000

    if-eq v4, v0, :cond_f

    const/high16 v0, 0x6b6d0000

    if-eq v4, v0, :cond_f

    const/high16 v0, 0x6a610000

    if-ne v4, v0, :cond_10

    :cond_f
    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    const/4 v1, 0x2

    invoke-virtual {v0, v4, v5, v1}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(III)V

    goto :goto_5

    :cond_10
    invoke-static {v4}, Lcom/ime/framework/util/Utils;->isIndianLanguage(I)Z

    move-result v0

    if-eqz v0, :cond_13

    const/high16 v0, 0x73690000

    if-eq v4, v0, :cond_11

    const/high16 v0, 0x6e650000

    if-ne v4, v0, :cond_12

    :cond_11
    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    const/high16 v1, 0x6e650000

    const/4 v10, 0x2

    invoke-virtual {v0, v1, v5, v10}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(III)V

    goto/16 :goto_5

    :cond_12
    const/high16 v0, 0x6d6e0000

    if-eq v4, v0, :cond_7

    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    const/high16 v1, 0x68690000

    const/4 v10, 0x2

    invoke-virtual {v0, v1, v5, v10}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(III)V

    goto/16 :goto_5

    :cond_13
    iget-boolean v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->USE_SYMBOL_LAYOUT_BY_ATT:Z

    if-nez v0, :cond_14

    iget-boolean v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->USE_SYMBOL_LAYOUT_BY_ATT_WITH_NUMBER_KEY_FIRST_LINE:Z

    if-eqz v0, :cond_15

    :cond_14
    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    const/high16 v1, -0x1a920000

    const/4 v10, 0x0

    const/4 v11, 0x2

    invoke-virtual {v0, v1, v10, v11}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(III)V

    goto/16 :goto_5

    :cond_15
    iget-boolean v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mIsUSASymbolLayout:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    const/high16 v1, -0x2a920000

    const/4 v10, 0x0

    const/4 v11, 0x2

    invoke-virtual {v0, v1, v10, v11}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(III)V

    const v2, 0x7f0500d7

    goto/16 :goto_5

    :cond_16
    const/4 v0, 0x1

    if-ne v5, v0, :cond_1e

    if-eqz v7, :cond_17

    const v2, 0x7f05009f

    goto/16 :goto_0

    :cond_17
    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v0}, Lcom/ime/framework/inputmode/InputModeManager;->isKorTabletCji()Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v0}, Lcom/ime/framework/inputmode/InputModeManager;->getInputMethodOnKor()I

    move-result v8

    const/4 v0, 0x1

    if-ne v8, v0, :cond_18

    :try_start_0
    const-string v0, "onehand_phonepad_kr_cji_symbol"

    invoke-static {v0}, Lcom/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_6
    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v1, "SYMBOLS_PAGE"

    const/4 v10, 0x0

    invoke-interface {v0, v1, v10}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/ime/implement/view/ViewControllerImpl;->getCurrentSymbolPageModeId(I)I

    move-result v3

    goto/16 :goto_0

    :cond_18
    const/4 v0, 0x2

    if-ne v8, v0, :cond_19

    :try_start_1
    const-string v0, "onehand_phonepad_kr_cji_turbo_symbol"

    invoke-static {v0}, Lcom/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v2

    goto :goto_6

    :cond_19
    const v2, 0x7f0500a0

    goto :goto_6

    :catch_0
    move-exception v6

    const v2, 0x7f0500a0

    goto :goto_6

    :cond_1a
    const-string v0, "ISL"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v10, "CscFeature_Sip_ReplaceLocalCurrencyAs"

    invoke-virtual {v1, v10}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-static {v4}, Lcom/ime/framework/util/Utils;->isArabicLanguage(I)Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    const/high16 v1, 0x68650000

    invoke-virtual {v0, v1}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setDefaultLanguage(I)V

    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    const/high16 v1, 0x66610000

    const/4 v10, 0x2

    invoke-virtual {v0, v1, v5, v10}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(III)V

    :cond_1b
    :goto_7
    const v2, 0x7f0500a0

    goto :goto_6

    :cond_1c
    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    const/high16 v1, 0x68650000

    const/4 v10, 0x2

    invoke-virtual {v0, v1, v5, v10}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(III)V

    goto :goto_7

    :cond_1d
    invoke-static {v4}, Lcom/ime/framework/util/Utils;->isArabicLanguage(I)Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    const/high16 v1, 0x61720000

    const/4 v10, 0x2

    invoke-virtual {v0, v1, v5, v10}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(III)V

    goto :goto_7

    :cond_1e
    const/4 v0, 0x2

    if-ne v5, v0, :cond_20

    invoke-direct {p0, v4}, Lcom/ime/implement/view/ViewControllerImpl;->getHWRSymbolKeyboardXmlId(I)I

    move-result v2

    if-eqz v2, :cond_1f

    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    invoke-virtual {v0, v4, v5, v9}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(III)V

    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v1, "SYMBOLS_PAGE"

    const/4 v10, 0x0

    invoke-interface {v0, v1, v10}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/ime/implement/view/ViewControllerImpl;->getCurrentSymbolPageModeId(I)I

    move-result v3

    :goto_8
    sget-boolean v0, Lcom/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "SamsungIME"

    const-string v1, "getSymbolKeyboard() - wrong keyboard mode in s3"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_1f
    invoke-direct {p0}, Lcom/ime/implement/view/ViewControllerImpl;->getHWRKeyboardXmlId()I

    move-result v2

    invoke-direct {p0}, Lcom/ime/implement/view/ViewControllerImpl;->getHwrKeyboardModeId()I

    move-result v3

    goto :goto_8

    :cond_20
    const/4 v0, 0x4

    if-ne v5, v0, :cond_21

    const v2, 0x7f050073

    invoke-direct {p0}, Lcom/ime/implement/view/ViewControllerImpl;->getHwrKeyboardModeId()I

    move-result v3

    sget-boolean v0, Lcom/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "SamsungIME"

    const-string v1, "getSymbolKeyboard() - wrong keyboard mode in s3"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_21
    const-string v0, "ISL"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v10, "CscFeature_Sip_ReplaceLocalCurrencyAs"

    invoke-virtual {v1, v10}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-static {v4}, Lcom/ime/framework/util/Utils;->isArabicLanguage(I)Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    const/high16 v1, -0x36290000    # -1761280.0f

    const/4 v10, 0x0

    const/4 v11, 0x2

    invoke-virtual {v0, v1, v10, v11}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(III)V

    :goto_9
    const v2, 0x7f0500d7

    :goto_a
    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v1, "SYMBOLS_PAGE"

    const/4 v10, 0x0

    invoke-interface {v0, v1, v10}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/ime/implement/view/ViewControllerImpl;->getCurrentSymbolPageModeId(I)I

    move-result v3

    goto/16 :goto_0

    :cond_22
    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    const/high16 v1, 0x68650000

    const/4 v10, 0x0

    const/4 v11, 0x2

    invoke-virtual {v0, v1, v10, v11}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(III)V

    goto :goto_9

    :cond_23
    const/high16 v0, 0x61720000

    if-eq v4, v0, :cond_27

    const/high16 v0, 0x66610000

    if-eq v4, v0, :cond_27

    const/high16 v0, 0x75720000

    if-eq v4, v0, :cond_27

    const/high16 v0, 0x68690000

    if-eq v4, v0, :cond_27

    const/high16 v0, 0x626e0000

    if-eq v4, v0, :cond_27

    const/high16 v0, 0x67750000

    if-eq v4, v0, :cond_27

    const/high16 v0, 0x6b6e0000

    if-eq v4, v0, :cond_27

    const/high16 v0, 0x6d6c0000

    if-eq v4, v0, :cond_27

    const/high16 v0, 0x6d720000

    if-eq v4, v0, :cond_27

    const/high16 v0, 0x70610000

    if-eq v4, v0, :cond_27

    const/high16 v0, 0x73690000

    if-eq v4, v0, :cond_27

    const/high16 v0, 0x74650000

    if-eq v4, v0, :cond_27

    const/high16 v0, 0x74610000

    if-eq v4, v0, :cond_27

    const/high16 v0, 0x61730000

    if-eq v4, v0, :cond_27

    const/high16 v0, 0x6e650000

    if-eq v4, v0, :cond_27

    const/high16 v0, 0x6f720000

    if-eq v4, v0, :cond_27

    iget-boolean v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->USE_SYMBOL_LAYOUT_BY_ATT:Z

    if-nez v0, :cond_24

    iget-boolean v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->USE_SYMBOL_LAYOUT_BY_ATT_WITH_NUMBER_KEY_FIRST_LINE:Z

    if-eqz v0, :cond_25

    :cond_24
    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    const/high16 v1, -0x1a920000

    const/4 v10, 0x0

    const/4 v11, 0x2

    invoke-virtual {v0, v1, v10, v11}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(III)V

    const v2, 0x7f0500d7

    goto :goto_a

    :cond_25
    iget-boolean v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mIsUSASymbolLayout:Z

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    const/high16 v1, -0x2a920000

    const/4 v10, 0x0

    const/4 v11, 0x2

    invoke-virtual {v0, v1, v10, v11}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(III)V

    const v2, 0x7f0500d7

    goto :goto_a

    :cond_26
    const v2, 0x7f0500d7

    goto/16 :goto_a

    :cond_27
    const v2, 0x7f0500d7

    goto/16 :goto_a

    :cond_28
    new-instance v0, Lcom/ime/framework/view/DefaultKeyboard;

    iget-object v1, p0, Lcom/ime/implement/view/ViewControllerImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/ime/framework/view/DefaultKeyboard;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/ime/framework/view/DefaultKeyboard;

    goto/16 :goto_1

    :cond_29
    iget v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mLanguageID:I

    if-eq v4, v0, :cond_2a

    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mPrevKeyboard:Lcom/ime/framework/view/DefaultKeyboard;

    invoke-virtual {v0}, Lcom/ime/framework/view/DefaultKeyboard;->updateKeys()V

    iget-object v1, p0, Lcom/ime/implement/view/ViewControllerImpl;->mPrevKeyboard:Lcom/ime/framework/view/DefaultKeyboard;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/ime/implement/view/ViewControllerImpl;->setCurrentKeyboardInfo(Lcom/ime/framework/view/DefaultKeyboard;IIII)V

    :cond_2a
    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mPrevKeyboard:Lcom/ime/framework/view/DefaultKeyboard;

    iput-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/ime/framework/view/DefaultKeyboard;

    goto/16 :goto_2
.end method

.method private getPhonePadCurrentSymbolPageModeId(I)I
    .locals 8

    iget-object v6, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/ime/framework/common/InputManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v5

    const-string v6, "da_mode"

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {}, Lcom/ime/framework/repository/EditorStatus;->isEmailInputType()Z

    move-result v2

    invoke-static {}, Lcom/ime/framework/repository/EditorStatus;->isUrlInputType()Z

    move-result v3

    const/4 v4, 0x0

    iget-object v6, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/ime/framework/common/InputManager;->getSelectedLanguageList()[Lcom/ime/framework/common/Language;

    move-result-object v6

    array-length v6, v6

    const/4 v7, 0x1

    if-le v6, v7, :cond_12

    if-nez v1, :cond_12

    invoke-virtual {p0}, Lcom/ime/implement/view/ViewControllerImpl;->isUseGlobalKey()Z

    move-result v6

    if-eqz v6, :cond_12

    packed-switch p1, :pswitch_data_0

    if-eqz v2, :cond_10

    :try_start_0
    const-string v6, "symbol_page_1_email"

    invoke-static {v6}, Lcom/ime/implement/resource/CustomResource;->getID(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_4

    move-result v4

    :goto_0
    return v4

    :pswitch_0
    if-eqz v2, :cond_0

    const v4, 0x7f100134

    goto :goto_0

    :cond_0
    if-eqz v3, :cond_1

    const v4, 0x7f100131

    goto :goto_0

    :cond_1
    const v4, 0x7f100126

    goto :goto_0

    :pswitch_1
    if-eqz v2, :cond_2

    const v4, 0x7f100135

    goto :goto_0

    :cond_2
    if-eqz v3, :cond_3

    const v4, 0x7f100132

    goto :goto_0

    :cond_3
    const v4, 0x7f100128

    goto :goto_0

    :pswitch_2
    if-eqz v2, :cond_4

    const v4, 0x7f100136

    goto :goto_0

    :cond_4
    if-eqz v3, :cond_5

    const v4, 0x7f100133

    goto :goto_0

    :cond_5
    const v4, 0x7f10012a

    goto :goto_0

    :pswitch_3
    if-eqz v2, :cond_6

    const v4, 0x7f10013f

    goto :goto_0

    :cond_6
    if-eqz v3, :cond_7

    const v4, 0x7f10013e

    goto :goto_0

    :cond_7
    const v4, 0x7f10013d

    goto :goto_0

    :pswitch_4
    if-eqz v2, :cond_8

    :try_start_1
    const-string v6, "symbol_page_5_email"

    invoke-static {v6}, Lcom/ime/implement/resource/CustomResource;->getID(Ljava/lang/String;)I

    move-result v4

    goto :goto_0

    :cond_8
    if-eqz v3, :cond_9

    const-string v6, "symbol_page_5_url"

    invoke-static {v6}, Lcom/ime/implement/resource/CustomResource;->getID(Ljava/lang/String;)I

    move-result v4

    goto :goto_0

    :cond_9
    const-string v6, "symbol_page_5_normal"

    invoke-static {v6}, Lcom/ime/implement/resource/CustomResource;->getID(Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v4

    goto :goto_0

    :catch_0
    move-exception v0

    const v4, 0x7f100126

    goto :goto_0

    :pswitch_5
    if-eqz v2, :cond_a

    :try_start_2
    const-string v6, "symbol_page_6_email"

    invoke-static {v6}, Lcom/ime/implement/resource/CustomResource;->getID(Ljava/lang/String;)I

    move-result v4

    goto :goto_0

    :cond_a
    if-eqz v3, :cond_b

    const-string v6, "symbol_page_6_url"

    invoke-static {v6}, Lcom/ime/implement/resource/CustomResource;->getID(Ljava/lang/String;)I

    move-result v4

    goto :goto_0

    :cond_b
    const-string v6, "symbol_page_6_normal"

    invoke-static {v6}, Lcom/ime/implement/resource/CustomResource;->getID(Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v4

    goto :goto_0

    :catch_1
    move-exception v0

    const v4, 0x7f10013d

    goto :goto_0

    :pswitch_6
    if-eqz v2, :cond_c

    :try_start_3
    const-string v6, "symbol_page_7_email"

    invoke-static {v6}, Lcom/ime/implement/resource/CustomResource;->getID(Ljava/lang/String;)I

    move-result v4

    goto/16 :goto_0

    :cond_c
    if-eqz v3, :cond_d

    const-string v6, "symbol_page_7_url"

    invoke-static {v6}, Lcom/ime/implement/resource/CustomResource;->getID(Ljava/lang/String;)I

    move-result v4

    goto/16 :goto_0

    :cond_d
    const-string v6, "symbol_page_7_normal"

    invoke-static {v6}, Lcom/ime/implement/resource/CustomResource;->getID(Ljava/lang/String;)I
    :try_end_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3 .. :try_end_3} :catch_2

    move-result v4

    goto/16 :goto_0

    :catch_2
    move-exception v0

    const v4, 0x7f10013d

    goto/16 :goto_0

    :pswitch_7
    if-eqz v2, :cond_e

    :try_start_4
    const-string v6, "symbol_page_8_email"

    invoke-static {v6}, Lcom/ime/implement/resource/CustomResource;->getID(Ljava/lang/String;)I

    move-result v4

    goto/16 :goto_0

    :cond_e
    if-eqz v3, :cond_f

    const-string v6, "symbol_page_8_url"

    invoke-static {v6}, Lcom/ime/implement/resource/CustomResource;->getID(Ljava/lang/String;)I

    move-result v4

    goto/16 :goto_0

    :cond_f
    const-string v6, "symbol_page_8_normal"

    invoke-static {v6}, Lcom/ime/implement/resource/CustomResource;->getID(Ljava/lang/String;)I
    :try_end_4
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_4 .. :try_end_4} :catch_3

    move-result v4

    goto/16 :goto_0

    :catch_3
    move-exception v0

    const v4, 0x7f10013d

    goto/16 :goto_0

    :cond_10
    if-eqz v3, :cond_11

    :try_start_5
    const-string v6, "symbol_page_1_url"

    invoke-static {v6}, Lcom/ime/implement/resource/CustomResource;->getID(Ljava/lang/String;)I
    :try_end_5
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_5 .. :try_end_5} :catch_4

    move-result v4

    goto/16 :goto_0

    :cond_11
    const v4, 0x7f100126

    goto/16 :goto_0

    :catch_4
    move-exception v0

    const v4, 0x7f100126

    goto/16 :goto_0

    :cond_12
    packed-switch p1, :pswitch_data_1

    if-eqz v2, :cond_23

    :try_start_6
    const-string v6, "symbol_page_1_email_single_language"

    invoke-static {v6}, Lcom/ime/implement/resource/CustomResource;->getID(Ljava/lang/String;)I
    :try_end_6
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_6 .. :try_end_6} :catch_c

    move-result v4

    goto/16 :goto_0

    :pswitch_8
    if-eqz v2, :cond_13

    :try_start_7
    const-string v6, "symbol_page_1_email_single_language"

    invoke-static {v6}, Lcom/ime/implement/resource/CustomResource;->getID(Ljava/lang/String;)I

    move-result v4

    goto/16 :goto_0

    :cond_13
    if-eqz v3, :cond_14

    const-string v6, "symbol_page_1_url_single_language"

    invoke-static {v6}, Lcom/ime/implement/resource/CustomResource;->getID(Ljava/lang/String;)I
    :try_end_7
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_7 .. :try_end_7} :catch_5

    move-result v4

    goto/16 :goto_0

    :cond_14
    const v4, 0x7f100127

    goto/16 :goto_0

    :catch_5
    move-exception v0

    const v4, 0x7f100127

    goto/16 :goto_0

    :pswitch_9
    if-eqz v2, :cond_15

    :try_start_8
    const-string v6, "symbol_page_2_email_single_language"

    invoke-static {v6}, Lcom/ime/implement/resource/CustomResource;->getID(Ljava/lang/String;)I

    move-result v4

    goto/16 :goto_0

    :cond_15
    if-eqz v3, :cond_16

    const-string v6, "symbol_page_2_url_single_language"

    invoke-static {v6}, Lcom/ime/implement/resource/CustomResource;->getID(Ljava/lang/String;)I
    :try_end_8
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_8 .. :try_end_8} :catch_6

    move-result v4

    goto/16 :goto_0

    :cond_16
    const v4, 0x7f100129

    goto/16 :goto_0

    :catch_6
    move-exception v0

    const v4, 0x7f100129

    goto/16 :goto_0

    :pswitch_a
    if-eqz v2, :cond_17

    const v4, 0x7f10013c

    goto/16 :goto_0

    :cond_17
    if-eqz v3, :cond_18

    const v4, 0x7f100139

    goto/16 :goto_0

    :cond_18
    const v4, 0x7f10012b

    goto/16 :goto_0

    :pswitch_b
    if-eqz v2, :cond_19

    :try_start_9
    const-string v6, "symbol_page_4_email_single_language"

    invoke-static {v6}, Lcom/ime/implement/resource/CustomResource;->getID(Ljava/lang/String;)I

    move-result v4

    goto/16 :goto_0

    :cond_19
    if-eqz v3, :cond_1a

    const-string v6, "symbol_page_4_url_single_language"

    invoke-static {v6}, Lcom/ime/implement/resource/CustomResource;->getID(Ljava/lang/String;)I
    :try_end_9
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_9 .. :try_end_9} :catch_7

    move-result v4

    goto/16 :goto_0

    :cond_1a
    const v4, 0x7f100140

    goto/16 :goto_0

    :catch_7
    move-exception v0

    const v4, 0x7f100140

    goto/16 :goto_0

    :pswitch_c
    if-eqz v2, :cond_1b

    :try_start_a
    const-string v6, "symbol_page_5_email_single_language"

    invoke-static {v6}, Lcom/ime/implement/resource/CustomResource;->getID(Ljava/lang/String;)I

    move-result v4

    goto/16 :goto_0

    :cond_1b
    if-eqz v3, :cond_1c

    const-string v6, "symbol_page_5_url_single_language"

    invoke-static {v6}, Lcom/ime/implement/resource/CustomResource;->getID(Ljava/lang/String;)I

    move-result v4

    goto/16 :goto_0

    :cond_1c
    const-string v6, "symbol_page_5_single_language"

    invoke-static {v6}, Lcom/ime/implement/resource/CustomResource;->getID(Ljava/lang/String;)I
    :try_end_a
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_a .. :try_end_a} :catch_8

    move-result v4

    goto/16 :goto_0

    :catch_8
    move-exception v0

    const v4, 0x7f100127

    goto/16 :goto_0

    :pswitch_d
    if-eqz v2, :cond_1d

    :try_start_b
    const-string v6, "symbol_page_6_email_single_language"

    invoke-static {v6}, Lcom/ime/implement/resource/CustomResource;->getID(Ljava/lang/String;)I

    move-result v4

    goto/16 :goto_0

    :cond_1d
    if-eqz v3, :cond_1e

    const-string v6, "symbol_page_6_url_single_language"

    invoke-static {v6}, Lcom/ime/implement/resource/CustomResource;->getID(Ljava/lang/String;)I

    move-result v4

    goto/16 :goto_0

    :cond_1e
    const-string v6, "symbol_page_6_single_language"

    invoke-static {v6}, Lcom/ime/implement/resource/CustomResource;->getID(Ljava/lang/String;)I
    :try_end_b
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_b .. :try_end_b} :catch_9

    move-result v4

    goto/16 :goto_0

    :catch_9
    move-exception v0

    const v4, 0x7f100127

    goto/16 :goto_0

    :pswitch_e
    if-eqz v2, :cond_1f

    :try_start_c
    const-string v6, "symbol_page_7_email_single_language"

    invoke-static {v6}, Lcom/ime/implement/resource/CustomResource;->getID(Ljava/lang/String;)I

    move-result v4

    goto/16 :goto_0

    :cond_1f
    if-eqz v3, :cond_20

    const-string v6, "symbol_page_7_url_single_language"

    invoke-static {v6}, Lcom/ime/implement/resource/CustomResource;->getID(Ljava/lang/String;)I

    move-result v4

    goto/16 :goto_0

    :cond_20
    const-string v6, "symbol_page_7_single_language"

    invoke-static {v6}, Lcom/ime/implement/resource/CustomResource;->getID(Ljava/lang/String;)I
    :try_end_c
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_c .. :try_end_c} :catch_a

    move-result v4

    goto/16 :goto_0

    :catch_a
    move-exception v0

    const v4, 0x7f100127

    goto/16 :goto_0

    :pswitch_f
    if-eqz v2, :cond_21

    :try_start_d
    const-string v6, "symbol_page_8_email_single_language"

    invoke-static {v6}, Lcom/ime/implement/resource/CustomResource;->getID(Ljava/lang/String;)I

    move-result v4

    goto/16 :goto_0

    :cond_21
    if-eqz v3, :cond_22

    const-string v6, "symbol_page_8_url_single_language"

    invoke-static {v6}, Lcom/ime/implement/resource/CustomResource;->getID(Ljava/lang/String;)I

    move-result v4

    goto/16 :goto_0

    :cond_22
    const-string v6, "symbol_page_8_single_language"

    invoke-static {v6}, Lcom/ime/implement/resource/CustomResource;->getID(Ljava/lang/String;)I
    :try_end_d
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_d .. :try_end_d} :catch_b

    move-result v4

    goto/16 :goto_0

    :catch_b
    move-exception v0

    const v4, 0x7f100127

    goto/16 :goto_0

    :cond_23
    if-eqz v3, :cond_24

    :try_start_e
    const-string v6, "symbol_page_1_url_single_language"

    invoke-static {v6}, Lcom/ime/implement/resource/CustomResource;->getID(Ljava/lang/String;)I
    :try_end_e
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_e .. :try_end_e} :catch_c

    move-result v4

    goto/16 :goto_0

    :cond_24
    const v4, 0x7f100127

    goto/16 :goto_0

    :catch_c
    move-exception v0

    const v4, 0x7f100127

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
    .end packed-switch
.end method

.method private getPhonePadNumberKeyboardXmlId()I
    .locals 6

    const/4 v5, 0x1

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/ime/framework/common/InputManager;->isEnableOneHandKeypad()Z

    move-result v1

    iget-object v4, p0, Lcom/ime/implement/view/ViewControllerImpl;->mPrivateImeOptionsController:Lcom/ime/framework/common/PrivateImeOptionsController;

    invoke-interface {v4}, Lcom/ime/framework/common/PrivateImeOptionsController;->getInputType()I

    move-result v2

    const/16 v4, 0xa

    if-ne v2, v4, :cond_3

    if-eqz v1, :cond_1

    :try_start_0
    const-string v4, "onehand_phonepad_month"

    invoke-static {v4}, Lcom/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    :cond_0
    :goto_0
    return v3

    :catch_0
    move-exception v0

    const v3, 0x7f050106

    goto :goto_0

    :cond_1
    iget-boolean v4, p0, Lcom/ime/implement/view/ViewControllerImpl;->mIsTabletMode:Z

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/ime/framework/common/InputManager;->isOrientationLandscape()Z

    move-result v4

    if-eqz v4, :cond_2

    const v3, 0x7f050107

    goto :goto_0

    :cond_2
    const v3, 0x7f050106

    goto :goto_0

    :cond_3
    iget-object v4, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v4}, Lcom/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {}, Lcom/ime/framework/repository/EditorStatus;->isPhoneNumberInputClass()Z

    move-result v4

    if-eqz v4, :cond_8

    iget-boolean v4, p0, Lcom/ime/implement/view/ViewControllerImpl;->mIsTabletMode:Z

    if-eqz v4, :cond_4

    iget-boolean v4, p0, Lcom/ime/implement/view/ViewControllerImpl;->mIsLandscape:Z

    if-eqz v4, :cond_4

    const v3, 0x7f0500f7

    goto :goto_0

    :cond_4
    iget-object v4, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/ime/framework/common/InputManager;->isChnMode()Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/ime/framework/common/InputManager;->isHKTWBinaryByCSC()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {p0}, Lcom/ime/implement/view/ViewControllerImpl;->isEnableOneHandKeypad()Z

    move-result v4

    if-eqz v4, :cond_5

    const v3, 0x7f05009e

    goto :goto_0

    :cond_5
    iget-object v4, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/ime/framework/common/InputManager;->isChnMode()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/ime/framework/common/InputManager;->isHKTWBinaryByCSC()Z

    move-result v4

    if-eqz v4, :cond_0

    const v3, 0x7f050112

    goto :goto_0

    :cond_6
    if-eqz v1, :cond_7

    const v3, 0x7f05009d

    goto :goto_0

    :cond_7
    const v3, 0x7f050111

    goto :goto_0

    :cond_8
    const/16 v4, 0x9

    if-eq v2, v4, :cond_9

    const/16 v4, 0xe

    if-ne v2, v4, :cond_c

    :cond_9
    if-eqz v1, :cond_a

    const v3, 0x7f0500a8

    goto :goto_0

    :cond_a
    iget-boolean v4, p0, Lcom/ime/implement/view/ViewControllerImpl;->mIsTabletMode:Z

    if-nez v4, :cond_b

    iget-object v4, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/ime/framework/common/InputManager;->isOrientationLandscape()Z

    move-result v4

    if-eqz v4, :cond_b

    const v3, 0x7f05011e

    goto/16 :goto_0

    :cond_b
    const v3, 0x7f05011d

    goto/16 :goto_0

    :cond_c
    if-eqz v1, :cond_15

    if-eq v2, v5, :cond_d

    invoke-static {}, Lcom/ime/framework/repository/EditorStatus;->isDecimalNumberInputType()Z

    move-result v4

    if-eqz v4, :cond_e

    :cond_d
    const v3, 0x7f050097

    goto/16 :goto_0

    :cond_e
    invoke-static {}, Lcom/ime/framework/repository/EditorStatus;->isNumberPasswordInputType()Z

    move-result v4

    if-eqz v4, :cond_f

    const v3, 0x7f05009a

    goto/16 :goto_0

    :cond_f
    invoke-static {}, Lcom/ime/framework/repository/EditorStatus;->isSignedNumberInputType()Z

    move-result v4

    if-eqz v4, :cond_10

    const v3, 0x7f05009b

    goto/16 :goto_0

    :cond_10
    invoke-static {}, Lcom/ime/framework/repository/EditorStatus;->isSignedDecimalNumberInputType()Z

    move-result v4

    if-nez v4, :cond_11

    invoke-static {}, Lcom/ime/framework/repository/EditorStatus;->isNumberOnlyInputType()Z

    move-result v4

    if-eqz v4, :cond_12

    :cond_11
    const v3, 0x7f05009c

    goto/16 :goto_0

    :cond_12
    invoke-static {}, Lcom/ime/framework/repository/EditorStatus;->isTimeInputType()Z

    move-result v4

    if-eqz v4, :cond_13

    const v3, 0x7f0500a7

    goto/16 :goto_0

    :cond_13
    invoke-static {}, Lcom/ime/framework/repository/EditorStatus;->isDateInputType()Z

    move-result v4

    if-eqz v4, :cond_14

    const v3, 0x7f050084

    goto/16 :goto_0

    :cond_14
    invoke-static {}, Lcom/ime/framework/repository/EditorStatus;->isDateTimeInputType()Z

    move-result v4

    if-eqz v4, :cond_0

    const v3, 0x7f050085

    goto/16 :goto_0

    :cond_15
    iget-boolean v4, p0, Lcom/ime/implement/view/ViewControllerImpl;->mIsTabletMode:Z

    if-eqz v4, :cond_16

    iget-boolean v4, p0, Lcom/ime/implement/view/ViewControllerImpl;->mIsTabletMode:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v4}, Lcom/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v4

    if-ne v4, v5, :cond_0

    :cond_16
    if-ne v2, v5, :cond_17

    const v3, 0x7f05010a

    goto/16 :goto_0

    :cond_17
    invoke-static {}, Lcom/ime/framework/repository/EditorStatus;->isDecimalNumberInputType()Z

    move-result v4

    if-eqz v4, :cond_18

    const v3, 0x7f05010a

    goto/16 :goto_0

    :cond_18
    invoke-static {}, Lcom/ime/framework/repository/EditorStatus;->isNumberPasswordInputType()Z

    move-result v4

    if-eqz v4, :cond_1a

    iget-boolean v4, p0, Lcom/ime/implement/view/ViewControllerImpl;->mIsTabletMode:Z

    if-nez v4, :cond_19

    iget-object v4, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/ime/framework/common/InputManager;->isOrientationLandscape()Z

    move-result v4

    if-eqz v4, :cond_19

    const v3, 0x7f05010e

    goto/16 :goto_0

    :cond_19
    const v3, 0x7f05010d

    goto/16 :goto_0

    :cond_1a
    invoke-static {}, Lcom/ime/framework/repository/EditorStatus;->isSignedNumberInputType()Z

    move-result v4

    if-eqz v4, :cond_1b

    const v3, 0x7f05010f

    goto/16 :goto_0

    :cond_1b
    invoke-static {}, Lcom/ime/framework/repository/EditorStatus;->isSignedDecimalNumberInputType()Z

    move-result v4

    if-nez v4, :cond_1c

    invoke-static {}, Lcom/ime/framework/repository/EditorStatus;->isNumberOnlyInputType()Z

    move-result v4

    if-eqz v4, :cond_20

    :cond_1c
    iget-boolean v4, p0, Lcom/ime/implement/view/ViewControllerImpl;->mIsTabletMode:Z

    if-eqz v4, :cond_1d

    invoke-static {}, Lcom/ime/framework/repository/EditorStatus;->isNumberOnlyInputType()Z

    move-result v4

    if-eqz v4, :cond_1d

    const v3, 0x7f05011d

    goto/16 :goto_0

    :cond_1d
    iget-object v4, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/ime/framework/common/InputManager;->isChnMode()Z

    move-result v4

    if-eqz v4, :cond_1f

    iget-boolean v4, p0, Lcom/ime/implement/view/ViewControllerImpl;->mIsTabletMode:Z

    if-nez v4, :cond_1e

    iget-object v4, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/ime/framework/common/InputManager;->isOrientationLandscape()Z

    move-result v4

    if-eqz v4, :cond_1e

    const v3, 0x7f05011e

    goto/16 :goto_0

    :cond_1e
    const v3, 0x7f05011d

    goto/16 :goto_0

    :cond_1f
    const v3, 0x7f050110

    goto/16 :goto_0

    :cond_20
    invoke-static {}, Lcom/ime/framework/repository/EditorStatus;->isTimeInputType()Z

    move-result v4

    if-eqz v4, :cond_21

    const v3, 0x7f05011c

    goto/16 :goto_0

    :cond_21
    invoke-static {}, Lcom/ime/framework/repository/EditorStatus;->isDateInputType()Z

    move-result v4

    if-eqz v4, :cond_22

    const v3, 0x7f0500e2

    goto/16 :goto_0

    :cond_22
    invoke-static {}, Lcom/ime/framework/repository/EditorStatus;->isDateTimeInputType()Z

    move-result v4

    if-eqz v4, :cond_0

    const v3, 0x7f0500e3

    goto/16 :goto_0
.end method

.method private getPhonepadXmlId(I)I
    .locals 20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/view/ViewControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/ime/framework/common/InputManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v13

    const-string v17, "da_mode"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-interface {v13, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    const-string v17, "da_language"

    const/16 v18, -0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-interface {v13, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-eqz v5, :cond_0

    move/from16 p1, v3

    :cond_0
    const/high16 v17, -0x10000

    and-int v12, p1, v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/view/ViewControllerImpl;->mRepository:Lcom/ime/framework/repository/Repository;

    move-object/from16 v17, v0

    const-string v18, "CHINESE_PHONETIC_SPELL_LAYOUT_SHOWN"

    const/16 v19, 0x0

    invoke-interface/range {v17 .. v19}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/view/ViewControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/ime/framework/inputmode/InputModeManager;->isChineseStrokeModeOn()Z

    move-result v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    move-object/from16 v0, v17

    move/from16 v1, p1

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(II)V

    const v16, 0x7f0500e4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    move-object/from16 v17, v0

    const/high16 v18, 0x656e0000

    invoke-virtual/range {v17 .. v18}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setDefaultLanguage(I)V

    sparse-switch v12, :sswitch_data_0

    const v16, 0x7f0500e4

    :goto_0
    return v16

    :sswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    move-object/from16 v17, v0

    const/high16 v18, 0x656e0000

    const/16 v19, 0x1

    invoke-virtual/range {v17 .. v19}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(II)V

    goto :goto_0

    :sswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    move-object/from16 v17, v0

    const/high16 v18, 0x64650000

    const/16 v19, 0x1

    invoke-virtual/range {v17 .. v19}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(II)V

    goto :goto_0

    :sswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    move-object/from16 v17, v0

    const/high16 v18, 0x69740000

    const/16 v19, 0x1

    invoke-virtual/range {v17 .. v19}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(II)V

    goto :goto_0

    :sswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    move-object/from16 v17, v0

    const/high16 v18, 0x63730000

    const/16 v19, 0x1

    invoke-virtual/range {v17 .. v19}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(II)V

    goto :goto_0

    :sswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    move-object/from16 v17, v0

    const/high16 v18, 0x64610000

    const/16 v19, 0x1

    invoke-virtual/range {v17 .. v19}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(II)V

    goto :goto_0

    :sswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    move-object/from16 v17, v0

    const/high16 v18, 0x65740000

    const/16 v19, 0x1

    invoke-virtual/range {v17 .. v19}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(II)V

    goto :goto_0

    :sswitch_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    move-object/from16 v17, v0

    const/high16 v18, 0x68720000

    const/16 v19, 0x1

    invoke-virtual/range {v17 .. v19}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(II)V

    goto :goto_0

    :sswitch_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    move-object/from16 v17, v0

    const/high16 v18, 0x6c760000

    const/16 v19, 0x1

    invoke-virtual/range {v17 .. v19}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(II)V

    goto :goto_0

    :sswitch_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    move-object/from16 v17, v0

    const/high16 v18, 0x6c740000    # 1.1799116E27f

    const/16 v19, 0x1

    invoke-virtual/range {v17 .. v19}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(II)V

    goto :goto_0

    :sswitch_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    move-object/from16 v17, v0

    const/high16 v18, 0x68750000

    const/16 v19, 0x1

    invoke-virtual/range {v17 .. v19}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(II)V

    goto/16 :goto_0

    :sswitch_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    move-object/from16 v17, v0

    const/high16 v18, 0x6e620000

    const/16 v19, 0x1

    invoke-virtual/range {v17 .. v19}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(II)V

    goto/16 :goto_0

    :sswitch_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    move-object/from16 v17, v0

    const/high16 v18, 0x6e6c0000

    const/16 v19, 0x1

    invoke-virtual/range {v17 .. v19}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(II)V

    goto/16 :goto_0

    :sswitch_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    move-object/from16 v17, v0

    const/high16 v18, 0x706c0000

    const/16 v19, 0x1

    invoke-virtual/range {v17 .. v19}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(II)V

    goto/16 :goto_0

    :sswitch_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    move-object/from16 v17, v0

    const/high16 v18, 0x726f0000

    const/16 v19, 0x1

    invoke-virtual/range {v17 .. v19}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(II)V

    goto/16 :goto_0

    :sswitch_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    move-object/from16 v17, v0

    const/high16 v18, 0x66690000

    const/16 v19, 0x1

    invoke-virtual/range {v17 .. v19}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(II)V

    goto/16 :goto_0

    :sswitch_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    move-object/from16 v17, v0

    const/high16 v18, 0x736b0000

    const/16 v19, 0x1

    invoke-virtual/range {v17 .. v19}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(II)V

    goto/16 :goto_0

    :sswitch_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    move-object/from16 v17, v0

    const/high16 v18, 0x736c0000

    const/16 v19, 0x1

    invoke-virtual/range {v17 .. v19}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(II)V

    goto/16 :goto_0

    :sswitch_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    move-object/from16 v17, v0

    const/high16 v18, 0x74720000

    const/16 v19, 0x1

    invoke-virtual/range {v17 .. v19}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(II)V

    goto/16 :goto_0

    :sswitch_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    move-object/from16 v17, v0

    const/high16 v18, 0x63610000

    const/16 v19, 0x1

    invoke-virtual/range {v17 .. v19}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(II)V

    goto/16 :goto_0

    :sswitch_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    move-object/from16 v17, v0

    const/high16 v18, 0x676c0000

    const/16 v19, 0x1

    invoke-virtual/range {v17 .. v19}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(II)V

    goto/16 :goto_0

    :sswitch_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    move-object/from16 v17, v0

    const/high16 v18, 0x65750000

    const/16 v19, 0x1

    invoke-virtual/range {v17 .. v19}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(II)V

    goto/16 :goto_0

    :sswitch_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    move-object/from16 v17, v0

    const/high16 v18, 0x69730000

    const/16 v19, 0x1

    invoke-virtual/range {v17 .. v19}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(II)V

    goto/16 :goto_0

    :sswitch_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    move-object/from16 v17, v0

    const/high16 v18, 0x73710000

    const/16 v19, 0x1

    invoke-virtual/range {v17 .. v19}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(II)V

    goto/16 :goto_0

    :sswitch_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    move-object/from16 v17, v0

    const/high16 v18, 0x617a0000

    const/16 v19, 0x1

    invoke-virtual/range {v17 .. v19}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(II)V

    goto/16 :goto_0

    :sswitch_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    move-object/from16 v17, v0

    const/high16 v18, 0x69640000

    const/16 v19, 0x1

    invoke-virtual/range {v17 .. v19}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(II)V

    goto/16 :goto_0

    :sswitch_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    move-object/from16 v17, v0

    const/high16 v18, 0x6d730000

    const/16 v19, 0x1

    invoke-virtual/range {v17 .. v19}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(II)V

    goto/16 :goto_0

    :sswitch_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    move-object/from16 v17, v0

    const/high16 v18, 0x72750000

    const/16 v19, 0x1

    invoke-virtual/range {v17 .. v19}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(II)V

    goto/16 :goto_0

    :sswitch_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    move-object/from16 v17, v0

    const/high16 v18, 0x756b0000

    const/16 v19, 0x1

    invoke-virtual/range {v17 .. v19}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(II)V

    goto/16 :goto_0

    :sswitch_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    move-object/from16 v17, v0

    const/high16 v18, 0x656c0000

    const/16 v19, 0x1

    invoke-virtual/range {v17 .. v19}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(II)V

    goto/16 :goto_0

    :sswitch_1d
    const v16, 0x7f0500e5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    move-object/from16 v17, v0

    const/high16 v18, 0x61720000

    const/16 v19, 0x1

    invoke-virtual/range {v17 .. v19}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(II)V

    goto/16 :goto_0

    :sswitch_1e
    const v16, 0x7f0500e5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    move-object/from16 v17, v0

    const/high16 v18, 0x75720000

    const/16 v19, 0x1

    invoke-virtual/range {v17 .. v19}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(II)V

    goto/16 :goto_0

    :sswitch_1f
    const v16, 0x7f0500e5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    move-object/from16 v17, v0

    const/high16 v18, 0x69770000

    const/16 v19, 0x1

    invoke-virtual/range {v17 .. v19}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(II)V

    goto/16 :goto_0

    :sswitch_20
    const v16, 0x7f0500e5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    move-object/from16 v17, v0

    const/high16 v18, 0x6b610000

    const/16 v19, 0x1

    invoke-virtual/range {v17 .. v19}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(II)V

    goto/16 :goto_0

    :sswitch_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    move-object/from16 v17, v0

    const/high16 v18, 0x68790000

    const/16 v19, 0x1

    invoke-virtual/range {v17 .. v19}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(II)V

    goto/16 :goto_0

    :sswitch_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    move-object/from16 v17, v0

    const/high16 v18, 0x6d6b0000

    const/16 v19, 0x1

    invoke-virtual/range {v17 .. v19}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(II)V

    goto/16 :goto_0

    :sswitch_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    move-object/from16 v17, v0

    const/high16 v18, 0x746b0000

    const/16 v19, 0x1

    invoke-virtual/range {v17 .. v19}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(II)V

    goto/16 :goto_0

    :sswitch_24
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    move-object/from16 v17, v0

    const/high16 v18, 0x61660000

    const/16 v19, 0x1

    invoke-virtual/range {v17 .. v19}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(II)V

    goto/16 :goto_0

    :sswitch_25
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    move-object/from16 v17, v0

    const/high16 v18, 0x67610000

    const/16 v19, 0x1

    invoke-virtual/range {v17 .. v19}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(II)V

    goto/16 :goto_0

    :sswitch_26
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    move-object/from16 v17, v0

    const/high16 v18, 0x737a0000

    const/16 v19, 0x1

    invoke-virtual/range {v17 .. v19}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(II)V

    goto/16 :goto_0

    :sswitch_27
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    move-object/from16 v17, v0

    const/high16 v18, 0x62650000

    const/16 v19, 0x1

    invoke-virtual/range {v17 .. v19}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(II)V

    goto/16 :goto_0

    :sswitch_28
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    move-object/from16 v17, v0

    const/high16 v18, 0x6b6b0000

    const/16 v19, 0x1

    invoke-virtual/range {v17 .. v19}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(II)V

    goto/16 :goto_0

    :sswitch_29
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    move-object/from16 v17, v0

    const/high16 v18, 0x62670000

    const/16 v19, 0x1

    invoke-virtual/range {v17 .. v19}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(II)V

    goto/16 :goto_0

    :sswitch_2a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    move-object/from16 v17, v0

    const/high16 v18, 0x6d6e0000

    const/16 v19, 0x1

    invoke-virtual/range {v17 .. v19}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(II)V

    goto/16 :goto_0

    :sswitch_2b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    move-object/from16 v17, v0

    const/high16 v18, 0x66720000

    const/16 v19, 0x1

    invoke-virtual/range {v17 .. v19}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(II)V

    goto/16 :goto_0

    :sswitch_2c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    move-object/from16 v17, v0

    const/high16 v18, 0x65730000

    const/16 v19, 0x1

    invoke-virtual/range {v17 .. v19}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(II)V

    goto/16 :goto_0

    :sswitch_2d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    move-object/from16 v17, v0

    const/high16 v18, 0x70740000

    const/16 v19, 0x1

    invoke-virtual/range {v17 .. v19}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(II)V

    goto/16 :goto_0

    :sswitch_2e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    move-object/from16 v17, v0

    const/high16 v18, 0x68720000

    const/16 v19, 0x1

    invoke-virtual/range {v17 .. v19}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(II)V

    goto/16 :goto_0

    :sswitch_2f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    move-object/from16 v17, v0

    const/high16 v18, 0x73760000

    const/16 v19, 0x1

    invoke-virtual/range {v17 .. v19}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(II)V

    goto/16 :goto_0

    :sswitch_30
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    move-object/from16 v17, v0

    const/high16 v18, 0x757a0000

    const/16 v19, 0x1

    invoke-virtual/range {v17 .. v19}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(II)V

    goto/16 :goto_0

    :sswitch_31
    const v16, 0x7f0500e5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    move-object/from16 v17, v0

    const/high16 v18, 0x61720000

    invoke-virtual/range {v17 .. v18}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setDefaultLanguage(I)V

    goto/16 :goto_0

    :sswitch_32
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/view/ViewControllerImpl;->mRepository:Lcom/ime/framework/repository/Repository;

    move-object/from16 v17, v0

    const-string v18, "KOR_MODE"

    const/16 v19, 0x0

    invoke-interface/range {v17 .. v19}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/view/ViewControllerImpl;->mRepository:Lcom/ime/framework/repository/Repository;

    move-object/from16 v17, v0

    const-string v18, "SETTINGS_DEFAULT_USE_INPUT_METHOD_TYPE_ON_KOR"

    const/16 v19, 0x0

    invoke-interface/range {v17 .. v19}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v6, :cond_4

    if-eqz v7, :cond_4

    invoke-static {}, Lcom/ime/framework/repository/InputModeStatus;->getPreferenceInputMethodOnKor()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/view/ViewControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/ime/framework/inputmode/InputModeManager;->isKorTabletCji()Z

    move-result v17

    if-eqz v17, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/view/ViewControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/ime/framework/inputmode/InputModeManager;->getInputMethodOnKor()I

    move-result v10

    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v10, v0, :cond_1

    const v16, 0x7f0500ff

    goto/16 :goto_0

    :cond_1
    const/16 v17, 0x2

    move/from16 v0, v17

    if-ne v10, v0, :cond_2

    const v16, 0x7f050102

    goto/16 :goto_0

    :cond_2
    packed-switch v4, :pswitch_data_0

    const v16, 0x7f0500ff

    goto/16 :goto_0

    :pswitch_0
    const v16, 0x7f0500ff

    goto/16 :goto_0

    :pswitch_1
    const v16, 0x7f050102

    goto/16 :goto_0

    :cond_3
    packed-switch v4, :pswitch_data_1

    const v16, 0x7f0500fd

    goto/16 :goto_0

    :pswitch_2
    const v16, 0x7f0500fd

    goto/16 :goto_0

    :pswitch_3
    const v16, 0x7f050100

    goto/16 :goto_0

    :pswitch_4
    const v16, 0x7f050103

    goto/16 :goto_0

    :pswitch_5
    const v16, 0x7f050104

    goto/16 :goto_0

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/view/ViewControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move/from16 v1, p1

    invoke-interface {v0, v1}, Lcom/ime/framework/common/InputManager;->makeSelectLanguagePrefKey(I)Ljava/lang/String;

    move-result-object v9

    const/16 v17, 0x1

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v13, v9, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    packed-switch v11, :pswitch_data_2

    const v16, 0x7f0500fd

    goto/16 :goto_0

    :pswitch_6
    const v16, 0x7f050100

    goto/16 :goto_0

    :sswitch_33
    const v17, 0x7a68484b

    move/from16 v0, p1

    move/from16 v1, v17

    if-ne v0, v1, :cond_5

    const v16, 0x7f05011f

    goto/16 :goto_0

    :cond_5
    const v17, 0x7a685457

    move/from16 v0, p1

    move/from16 v1, v17

    if-ne v0, v1, :cond_8

    if-eqz v14, :cond_6

    const v16, 0x7f050120

    goto/16 :goto_0

    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/ime/implement/view/ViewControllerImpl;->getLengthOfSpellText()I

    move-result v17

    if-lez v17, :cond_7

    const v16, 0x7f050122

    goto/16 :goto_0

    :cond_7
    const v16, 0x7f050121

    goto/16 :goto_0

    :cond_8
    if-eqz v14, :cond_9

    const v16, 0x7f0500e1

    goto/16 :goto_0

    :cond_9
    if-eqz v8, :cond_a

    const v16, 0x7f0500e0

    goto/16 :goto_0

    :cond_a
    const v16, 0x7f0500df

    goto/16 :goto_0

    :sswitch_34
    invoke-virtual/range {p0 .. p0}, Lcom/ime/implement/view/ViewControllerImpl;->getCurrentThaiVowelPageNum()I

    move-result v15

    const/16 v17, 0x3

    move/from16 v0, v17

    if-ne v15, v0, :cond_b

    const v16, 0x7f050119

    goto/16 :goto_0

    :cond_b
    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v15, v0, :cond_c

    const v16, 0x7f05011a

    goto/16 :goto_0

    :cond_c
    const/16 v17, 0x2

    move/from16 v0, v17

    if-ne v15, v0, :cond_d

    const v16, 0x7f05011b

    goto/16 :goto_0

    :cond_d
    const v16, 0x7f050118

    goto/16 :goto_0

    :sswitch_35
    const v16, 0x7f0500fa

    goto/16 :goto_0

    :sswitch_36
    const v16, 0x7f050105

    goto/16 :goto_0

    :sswitch_37
    const v16, 0x7f0500e6

    goto/16 :goto_0

    :sswitch_38
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/view/ViewControllerImpl;->mRepository:Lcom/ime/framework/repository/Repository;

    move-object/from16 v17, v0

    const-string v18, "SETTINGS_DEFAULT_KEYPAD_FLICK"

    const/16 v19, 0x0

    invoke-interface/range {v17 .. v19}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v17

    if-eqz v17, :cond_e

    const v16, 0x7f0500f9

    goto/16 :goto_0

    :cond_e
    const v16, 0x7f0500f8

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x61660000 -> :sswitch_24
        0x61720000 -> :sswitch_1d
        0x617a0000 -> :sswitch_17
        0x62650000 -> :sswitch_27
        0x62670000 -> :sswitch_29
        0x63610000 -> :sswitch_12
        0x63730000 -> :sswitch_3
        0x64610000 -> :sswitch_4
        0x64650000 -> :sswitch_1
        0x656c0000 -> :sswitch_1c
        0x656e0000 -> :sswitch_0
        0x65730000 -> :sswitch_2c
        0x65734553 -> :sswitch_2c
        0x65735553 -> :sswitch_2c
        0x65740000 -> :sswitch_5
        0x65750000 -> :sswitch_14
        0x66610000 -> :sswitch_31
        0x66690000 -> :sswitch_e
        0x66720000 -> :sswitch_2b
        0x66724341 -> :sswitch_2b
        0x66724652 -> :sswitch_2b
        0x67610000 -> :sswitch_25
        0x676c0000 -> :sswitch_13
        0x68720000 -> :sswitch_6
        0x68750000 -> :sswitch_9
        0x68790000 -> :sswitch_21
        0x69640000 -> :sswitch_18
        0x69730000 -> :sswitch_15
        0x69740000 -> :sswitch_2
        0x69770000 -> :sswitch_1f
        0x6a610000 -> :sswitch_38
        0x6b610000 -> :sswitch_20
        0x6b6b0000 -> :sswitch_28
        0x6b6d0000 -> :sswitch_35
        0x6b6f0000 -> :sswitch_32
        0x6b790000 -> :sswitch_2a
        0x6c6f0000 -> :sswitch_36
        0x6c740000 -> :sswitch_8
        0x6c760000 -> :sswitch_7
        0x6d6b0000 -> :sswitch_22
        0x6d6e0000 -> :sswitch_2a
        0x6d730000 -> :sswitch_19
        0x6e620000 -> :sswitch_a
        0x6e6c0000 -> :sswitch_b
        0x706c0000 -> :sswitch_c
        0x70740000 -> :sswitch_2d
        0x70744252 -> :sswitch_2d
        0x70745054 -> :sswitch_2d
        0x726f0000 -> :sswitch_d
        0x72750000 -> :sswitch_1a
        0x736b0000 -> :sswitch_f
        0x736c0000 -> :sswitch_10
        0x73710000 -> :sswitch_16
        0x73720000 -> :sswitch_2e
        0x73760000 -> :sswitch_2f
        0x737a0000 -> :sswitch_26
        0x74670000 -> :sswitch_2a
        0x74680000 -> :sswitch_34
        0x746b0000 -> :sswitch_23
        0x74720000 -> :sswitch_11
        0x756b0000 -> :sswitch_1b
        0x75720000 -> :sswitch_1e
        0x757a0000 -> :sswitch_30
        0x76690000 -> :sswitch_37
        0x7a680000 -> :sswitch_33
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x2
        :pswitch_6
    .end packed-switch
.end method

.method private getQwertyKeyboard()Lcom/ime/framework/view/DefaultKeyboard;
    .locals 8

    const-string v0, "SamsungIME"

    const-string v1, "getQwertyKeyboard"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v1, "INPUT_LANGUAGE"

    const v7, 0x656e4742

    invoke-interface {v0, v1, v7}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v4

    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v6

    invoke-direct {p0, v4}, Lcom/ime/implement/view/ViewControllerImpl;->getQwertyKeyboardXmlId(I)I

    move-result v2

    invoke-direct {p0, v6}, Lcom/ime/implement/view/ViewControllerImpl;->getTextKeyboardModeId(Landroid/view/inputmethod/EditorInfo;)I

    move-result v3

    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v0}, Lcom/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v5

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/ime/framework/view/DefaultKeyboard;

    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mPrevKeyboard:Lcom/ime/framework/view/DefaultKeyboard;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputMethodId:I

    if-ne v5, v0, :cond_0

    iget v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mXmlID:I

    if-ne v0, v2, :cond_0

    iget v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mModeID:I

    if-ne v0, v3, :cond_0

    iget-boolean v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mIsLandscape:Z

    iget-object v1, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->isOrientationLandscape()Z

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->getNeedChangeKeyboardHeight()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_0
    if-eqz v3, :cond_2

    new-instance v1, Lcom/ime/framework/view/DefaultKeyboard;

    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mContext:Landroid/content/Context;

    :goto_0
    invoke-direct {v1, v0, v2, v3}, Lcom/ime/framework/view/DefaultKeyboard;-><init>(Landroid/content/Context;II)V

    iput-object v1, p0, Lcom/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/ime/framework/view/DefaultKeyboard;

    :goto_1
    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/ime/framework/common/InputManager;->setNeedChangeKeyboardHeight(Z)V

    iget-object v1, p0, Lcom/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/ime/framework/view/DefaultKeyboard;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/ime/implement/view/ViewControllerImpl;->setCurrentKeyboardInfo(Lcom/ime/framework/view/DefaultKeyboard;IIII)V

    :goto_2
    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/ime/framework/view/DefaultKeyboard;

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0

    :cond_2
    new-instance v1, Lcom/ime/framework/view/DefaultKeyboard;

    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mContext:Landroid/content/Context;

    :goto_3
    invoke-direct {v1, v0, v2}, Lcom/ime/framework/view/DefaultKeyboard;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/ime/framework/view/DefaultKeyboard;

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_3

    :cond_4
    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mPrevKeyboard:Lcom/ime/framework/view/DefaultKeyboard;

    iput-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/ime/framework/view/DefaultKeyboard;

    goto :goto_2
.end method

.method private getQwertyKeyboardXmlId(I)I
    .locals 14

    iget-object v10, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v10}, Lcom/ime/framework/common/InputManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v6

    const-string v10, "da_mode"

    const/4 v11, 0x0

    invoke-interface {v6, v10, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    const-string v10, "da_language"

    const/4 v11, -0x1

    invoke-interface {v6, v10, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-eqz v4, :cond_0

    move p1, v1

    :cond_0
    const/high16 v10, -0x10000

    and-int v5, p1, v10

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v7

    iget-object v10, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v10}, Lcom/ime/framework/common/InputManager;->isSwiftKeyMode()Z

    move-result v10

    if-eqz v10, :cond_2

    iget-object v10, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v10}, Lcom/ime/framework/common/InputManager;->getCurrentInputCountryCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_2

    const-string v10, "CH"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    const v10, 0x66724652

    if-eq p1, v10, :cond_2

    :cond_1
    move-object v7, v3

    :cond_2
    const v9, 0x7f05013e

    iget-object v10, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    const/4 v11, 0x0

    invoke-virtual {v10, p1, v11}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(II)V

    iget-object v10, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    const/high16 v11, 0x656e0000

    invoke-virtual {v10, v11}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setDefaultLanguage(I)V

    sparse-switch v5, :sswitch_data_0

    iget-object v10, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    const/4 v11, 0x0

    invoke-virtual {v10, p1, v11}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(II)V

    const v9, 0x7f05013e

    :goto_0
    return v9

    :sswitch_0
    iget-object v10, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    const/high16 v11, 0x68690000

    invoke-virtual {v10, v11}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setDefaultLanguage(I)V

    const v9, 0x7f05015b

    goto :goto_0

    :sswitch_1
    iget-object v10, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    const/high16 v11, 0x626e0000

    invoke-virtual {v10, v11}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setDefaultLanguage(I)V

    const v9, 0x7f05015b

    goto :goto_0

    :sswitch_2
    iget-object v10, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    const/high16 v11, 0x68690000

    invoke-virtual {v10, v11}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setDefaultLanguage(I)V

    const v9, 0x7f05015c

    goto :goto_0

    :sswitch_3
    iget-object v10, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    const/high16 v11, 0x68690000

    invoke-virtual {v10, v11}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setDefaultLanguage(I)V

    const v9, 0x7f05015d

    goto :goto_0

    :sswitch_4
    iget-object v10, p0, Lcom/ime/implement/view/ViewControllerImpl;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v11, "SETTINGS_TURKISH_KEYBOARD_TYPE"

    const/4 v12, 0x0

    invoke-interface {v10, v11, v12}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v8

    packed-switch v8, :pswitch_data_0

    iget-object v10, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    const/high16 v11, 0x656e0000

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(II)V

    const v9, 0x7f05013e

    goto :goto_0

    :pswitch_0
    const v9, 0x7f050154

    goto :goto_0

    :pswitch_1
    const v9, 0x7f050157

    goto :goto_0

    :sswitch_5
    const v9, 0x7f05013e

    goto :goto_0

    :sswitch_6
    const v9, 0x7f050143

    goto :goto_0

    :sswitch_7
    iget-object v10, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    const/high16 v11, 0x64650000

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(II)V

    const v9, 0x7f05013e

    goto :goto_0

    :sswitch_8
    const-string v10, "BE"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    iget-object v10, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    const v11, 0x66724652

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(II)V

    const v9, 0x7f050139

    goto :goto_0

    :cond_3
    iget-object v10, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    const/high16 v11, 0x656e0000

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(II)V

    const v9, 0x7f05013e

    goto/16 :goto_0

    :sswitch_9
    iget-object v10, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    const/high16 v11, 0x65730000

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(II)V

    const v9, 0x7f050139

    goto/16 :goto_0

    :sswitch_a
    const v9, 0x7f050139

    goto/16 :goto_0

    :sswitch_b
    const-string v10, "CH"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    iget-object v10, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    const/high16 v11, 0x64650000

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(II)V

    const v9, 0x7f05013e

    goto/16 :goto_0

    :cond_4
    const v9, 0x7f05013e

    goto/16 :goto_0

    :sswitch_c
    iget-object v10, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v10}, Lcom/ime/framework/common/InputManager;->isUpdateKeyboardCodeValues()Z

    move-result v10

    if-eqz v10, :cond_5

    iget-object v10, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    const/high16 v11, 0x6b6f0000

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v10, v11, v12, v13}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->resetLanguageCodes(III)V

    :cond_5
    iget-object v10, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    const/high16 v11, 0x6b6f0000

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(II)V

    const v9, 0x7f05013e

    goto/16 :goto_0

    :sswitch_d
    iget-object v10, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v10}, Lcom/ime/framework/common/InputManager;->getXt9Version()I

    move-result v10

    const/4 v11, 0x2

    if-lt v10, v11, :cond_8

    const v10, 0x66724341

    if-eq p1, v10, :cond_6

    const/high16 v10, 0x66720000

    if-ne p1, v10, :cond_7

    const-string v10, "CA"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    :cond_6
    iget-object v10, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    const/high16 v11, 0x656e0000

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(II)V

    const v9, 0x7f05013e

    goto/16 :goto_0

    :cond_7
    iget-object v10, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    const v11, 0x66724652

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(II)V

    const v9, 0x7f05013a

    goto/16 :goto_0

    :cond_8
    const-string v10, "CA"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    iget-object v10, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    const/high16 v11, 0x656e0000

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(II)V

    const v9, 0x7f05013e

    goto/16 :goto_0

    :cond_9
    const-string v10, "CH"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    iget-object v10, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    const/high16 v11, 0x64650000

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(II)V

    const v9, 0x7f05013e

    goto/16 :goto_0

    :cond_a
    iget-object v10, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    const v11, 0x66724652

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(II)V

    const v9, 0x7f05013a

    goto/16 :goto_0

    :sswitch_e
    iget-object v10, p0, Lcom/ime/implement/view/ViewControllerImpl;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v11, "SETTINGS_GERMAN_KEYBOARD_TYPE"

    const/4 v12, 0x1

    invoke-interface {v10, v11, v12}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v2

    packed-switch v2, :pswitch_data_1

    const v9, 0x7f05013e

    goto/16 :goto_0

    :pswitch_2
    iget-object v10, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    const v11, 0x64654445

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(II)V

    const v9, 0x7f05014c

    goto/16 :goto_0

    :sswitch_f
    const v9, 0x7f05013d

    goto/16 :goto_0

    :sswitch_10
    const v9, 0x7f05014f

    goto/16 :goto_0

    :sswitch_11
    const v9, 0x7f05014c

    goto/16 :goto_0

    :sswitch_12
    iget-object v10, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    const/high16 v11, 0x66690000

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(II)V

    const v9, 0x7f05014c

    goto/16 :goto_0

    :sswitch_13
    const v9, 0x7f050154

    goto/16 :goto_0

    :sswitch_14
    iget-object v10, p0, Lcom/ime/implement/view/ViewControllerImpl;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v11, "SETTINGS_BULGARIAN_KEYBOARD_TYPE"

    const/4 v12, 0x0

    invoke-interface {v10, v11, v12}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v0

    packed-switch v0, :pswitch_data_2

    iget-boolean v10, p0, Lcom/ime/implement/view/ViewControllerImpl;->mIsTabletMode:Z

    if-eqz v10, :cond_b

    const v9, 0x7f050135

    goto/16 :goto_0

    :pswitch_3
    const v9, 0x7f050136

    goto/16 :goto_0

    :cond_b
    const v9, 0x7f05014e

    goto/16 :goto_0

    :sswitch_15
    const v9, 0x7f050159

    goto/16 :goto_0

    :sswitch_16
    const v9, 0x7f05013b

    goto/16 :goto_0

    :sswitch_17
    const v9, 0x7f050149

    goto/16 :goto_0

    :sswitch_18
    const v10, 0x7a68484b

    if-ne p1, v10, :cond_c

    iget-object v10, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    const v11, 0x7a68484b

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(II)V

    const v9, 0x7f050144

    goto/16 :goto_0

    :cond_c
    const v10, 0x7a685457

    if-ne p1, v10, :cond_d

    const v9, 0x7f050146

    goto/16 :goto_0

    :cond_d
    iget-object v10, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    const/high16 v11, 0x7a680000

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(II)V

    const v9, 0x7f05013f

    goto/16 :goto_0

    :sswitch_19
    const v9, 0x7f050150

    goto/16 :goto_0

    :sswitch_1a
    const v9, 0x7f050156

    goto/16 :goto_0

    :sswitch_1b
    invoke-static {}, Lcom/ime/framework/input/Telex/Telex;->getVietnameseInputMode()I

    move-result v10

    const/4 v11, 0x2

    if-ne v10, v11, :cond_e

    iget-boolean v10, p0, Lcom/ime/implement/view/ViewControllerImpl;->mIsAddNumberKeyFirstLine:Z

    if-nez v10, :cond_e

    const v9, 0x7f050137

    goto/16 :goto_0

    :cond_e
    invoke-static {}, Lcom/ime/framework/input/Telex/Telex;->isVietnameseEaseMode()Z

    move-result v10

    if-eqz v10, :cond_f

    const v9, 0x7f050147

    goto/16 :goto_0

    :cond_f
    const v9, 0x7f05013e

    goto/16 :goto_0

    :sswitch_1c
    const v9, 0x7f05014a

    goto/16 :goto_0

    :sswitch_1d
    const v9, 0x7f050158

    goto/16 :goto_0

    :sswitch_1e
    const v9, 0x7f05013e

    goto/16 :goto_0

    :sswitch_1f
    const v9, 0x7f05014b

    goto/16 :goto_0

    :sswitch_20
    const v9, 0x7f050154

    goto/16 :goto_0

    :sswitch_21
    const v9, 0x7f05015a

    goto/16 :goto_0

    :sswitch_22
    const v9, 0x7f050153

    goto/16 :goto_0

    :sswitch_23
    const v9, 0x7f050152

    goto/16 :goto_0

    :sswitch_24
    const v9, 0x7f050148

    goto/16 :goto_0

    :sswitch_25
    const v9, 0x7f050138

    goto/16 :goto_0

    :sswitch_26
    const v9, 0x7f050142

    goto/16 :goto_0

    :sswitch_27
    const v9, 0x7f050151

    goto/16 :goto_0

    :sswitch_28
    iget-object v10, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    const/high16 v11, 0x757a0000

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(II)V

    const v9, 0x7f05013e

    goto/16 :goto_0

    :sswitch_29
    const v9, 0x7f050155

    goto/16 :goto_0

    :sswitch_2a
    const v9, 0x7f050151

    goto/16 :goto_0

    :sswitch_2b
    const v9, 0x7f050145

    goto/16 :goto_0

    :sswitch_2c
    const v9, 0x7f05014d

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x61720000 -> :sswitch_1c
        0x61730000 -> :sswitch_1
        0x617a0000 -> :sswitch_20
        0x62650000 -> :sswitch_20
        0x62670000 -> :sswitch_14
        0x626e0000 -> :sswitch_0
        0x63610000 -> :sswitch_5
        0x63730000 -> :sswitch_7
        0x64610000 -> :sswitch_11
        0x64650000 -> :sswitch_e
        0x656c0000 -> :sswitch_15
        0x656e0000 -> :sswitch_5
        0x65730000 -> :sswitch_9
        0x65734553 -> :sswitch_9
        0x65735553 -> :sswitch_9
        0x65740000 -> :sswitch_23
        0x65750000 -> :sswitch_5
        0x66610000 -> :sswitch_a
        0x66690000 -> :sswitch_11
        0x66720000 -> :sswitch_d
        0x66724341 -> :sswitch_d
        0x66724652 -> :sswitch_d
        0x676c0000 -> :sswitch_5
        0x67750000 -> :sswitch_0
        0x68690000 -> :sswitch_0
        0x68720000 -> :sswitch_7
        0x68750000 -> :sswitch_7
        0x68790000 -> :sswitch_1f
        0x69640000 -> :sswitch_5
        0x69730000 -> :sswitch_17
        0x69740000 -> :sswitch_b
        0x69770000 -> :sswitch_1d
        0x6a610000 -> :sswitch_26
        0x6b610000 -> :sswitch_1e
        0x6b6b0000 -> :sswitch_f
        0x6b6d0000 -> :sswitch_25
        0x6b6e0000 -> :sswitch_0
        0x6b6f0000 -> :sswitch_c
        0x6b790000 -> :sswitch_29
        0x6c6f0000 -> :sswitch_1a
        0x6c740000 -> :sswitch_21
        0x6c760000 -> :sswitch_16
        0x6d6b0000 -> :sswitch_22
        0x6d6c0000 -> :sswitch_0
        0x6d6e0000 -> :sswitch_27
        0x6d720000 -> :sswitch_0
        0x6d730000 -> :sswitch_5
        0x6d790000 -> :sswitch_2c
        0x6e620000 -> :sswitch_11
        0x6e650000 -> :sswitch_0
        0x6e6c0000 -> :sswitch_8
        0x6f720000 -> :sswitch_0
        0x70610000 -> :sswitch_2
        0x706c0000 -> :sswitch_5
        0x70740000 -> :sswitch_5
        0x726f0000 -> :sswitch_5
        0x72750000 -> :sswitch_10
        0x73690000 -> :sswitch_0
        0x736b0000 -> :sswitch_5
        0x736c0000 -> :sswitch_6
        0x73710000 -> :sswitch_24
        0x73720000 -> :sswitch_7
        0x73760000 -> :sswitch_12
        0x737a0000 -> :sswitch_5
        0x74610000 -> :sswitch_3
        0x74650000 -> :sswitch_0
        0x74670000 -> :sswitch_2a
        0x74680000 -> :sswitch_19
        0x746b0000 -> :sswitch_2b
        0x74720000 -> :sswitch_4
        0x756b0000 -> :sswitch_13
        0x75720000 -> :sswitch_a
        0x757a0000 -> :sswitch_28
        0x76690000 -> :sswitch_1b
        0x7a310000 -> :sswitch_2c
        0x7a680000 -> :sswitch_18
        0x7a68434e -> :sswitch_18
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_3
    .end packed-switch
.end method

.method private getQwertyKnobKeyboardXmlId(I)I
    .locals 10

    iget-object v8, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/ime/framework/common/InputManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v5

    const-string v8, "da_mode"

    const/4 v9, 0x0

    invoke-interface {v5, v8, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    const-string v8, "da_language"

    const/4 v9, -0x1

    invoke-interface {v5, v8, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eqz v2, :cond_0

    move p1, v0

    :cond_0
    const/high16 v8, -0x10000

    and-int v3, p1, v8

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v6

    iget-object v8, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/ime/framework/common/InputManager;->isSwiftKeyMode()Z

    move-result v8

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/ime/framework/common/InputManager;->getCurrentInputCountryCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_2

    const-string v8, "CH"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    const v8, 0x66724652

    if-eq p1, v8, :cond_2

    :cond_1
    move-object v6, v1

    :cond_2
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    const v7, 0x7f050175

    sparse-switch v3, :sswitch_data_0

    const v7, 0x7f050175

    :goto_0
    return v7

    :sswitch_0
    const v7, 0x7f05017a

    goto :goto_0

    :sswitch_1
    const v7, 0x7f050172

    goto :goto_0

    :sswitch_2
    const v7, 0x7f050179

    goto :goto_0

    :sswitch_3
    const v7, 0x7f050182

    goto :goto_0

    :sswitch_4
    const v7, 0x7f050189

    goto :goto_0

    :sswitch_5
    const v7, 0x7f05018d

    goto :goto_0

    :sswitch_6
    const v7, 0x7f05018f

    goto :goto_0

    :sswitch_7
    const v7, 0x7f050194

    goto :goto_0

    :sswitch_8
    const v7, 0x7f050193

    goto :goto_0

    :sswitch_9
    const v7, 0x7f05016f

    goto :goto_0

    :sswitch_a
    const v7, 0x7f05018c

    goto :goto_0

    :sswitch_b
    const v7, 0x7f050175

    goto :goto_0

    :sswitch_c
    const v7, 0x7f050175

    goto :goto_0

    :sswitch_d
    const v7, 0x7f050190

    goto :goto_0

    :sswitch_e
    const v7, 0x7f050175

    goto :goto_0

    :sswitch_f
    const v7, 0x7f050175

    goto :goto_0

    :sswitch_10
    const v7, 0x7f050176

    goto :goto_0

    :sswitch_11
    const v7, 0x7f050175

    goto :goto_0

    :sswitch_12
    const v7, 0x7f050183

    goto :goto_0

    :sswitch_13
    const v7, 0x7f05019b

    goto :goto_0

    :sswitch_14
    const v7, 0x7f050173

    goto :goto_0

    :sswitch_15
    const v7, 0x7f050180

    goto :goto_0

    :sswitch_16
    const v7, 0x7f05018e

    goto :goto_0

    :sswitch_17
    const v7, 0x7f05018b

    goto :goto_0

    :sswitch_18
    const v7, 0x7f050192

    goto :goto_0

    :sswitch_19
    const v7, 0x7f050198

    goto :goto_0

    :sswitch_1a
    const v7, 0x7f050171

    goto :goto_0

    :sswitch_1b
    const v7, 0x7f050174

    goto :goto_0

    :sswitch_1c
    const v7, 0x7f050187

    goto :goto_0

    :sswitch_1d
    const v7, 0x7f05017c

    goto :goto_0

    :sswitch_1e
    const v8, 0x7a68484b

    if-ne p1, v8, :cond_3

    const v7, 0x7f05019d

    goto/16 :goto_0

    :cond_3
    const v8, 0x7a685457

    if-ne p1, v8, :cond_4

    const v7, 0x7f05019e

    goto/16 :goto_0

    :cond_4
    const v7, 0x7f05019c

    goto/16 :goto_0

    :sswitch_1f
    const v7, 0x7f050196

    goto/16 :goto_0

    :sswitch_20
    const v7, 0x7f05019b

    goto/16 :goto_0

    :sswitch_21
    const v7, 0x7f05016e

    goto/16 :goto_0

    :sswitch_22
    const v7, 0x7f050178

    goto/16 :goto_0

    :sswitch_23
    const v7, 0x7f050199

    goto/16 :goto_0

    :sswitch_24
    const v7, 0x7f05017d

    goto/16 :goto_0

    :sswitch_25
    const v7, 0x7f05017f

    goto/16 :goto_0

    :sswitch_26
    const v7, 0x7f05017b

    goto/16 :goto_0

    :sswitch_27
    const v7, 0x7f050170

    goto/16 :goto_0

    :sswitch_28
    const v7, 0x7f050186

    goto/16 :goto_0

    :sswitch_29
    const v7, 0x7f050188

    goto/16 :goto_0

    :sswitch_2a
    const v7, 0x7f050177

    goto/16 :goto_0

    :sswitch_2b
    const v7, 0x7f050191

    goto/16 :goto_0

    :sswitch_2c
    const v7, 0x7f050181

    goto/16 :goto_0

    :sswitch_2d
    const v7, 0x7f050185

    goto/16 :goto_0

    :sswitch_2e
    const v7, 0x7f050175

    goto/16 :goto_0

    :sswitch_2f
    const v7, 0x7f05017e

    goto/16 :goto_0

    :sswitch_30
    const v7, 0x7f05018a

    goto/16 :goto_0

    :sswitch_31
    const v7, 0x7f05019a

    goto/16 :goto_0

    :sswitch_32
    const v7, 0x7f050184

    goto/16 :goto_0

    :sswitch_33
    const v7, 0x7f050195

    goto/16 :goto_0

    :sswitch_34
    const v7, 0x7f050197

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x61720000 -> :sswitch_21
        0x61730000 -> :sswitch_9
        0x617a0000 -> :sswitch_27
        0x62670000 -> :sswitch_1a
        0x626e0000 -> :sswitch_1
        0x63610000 -> :sswitch_c
        0x63730000 -> :sswitch_e
        0x64610000 -> :sswitch_17
        0x64650000 -> :sswitch_14
        0x656c0000 -> :sswitch_1b
        0x656e0000 -> :sswitch_c
        0x65730000 -> :sswitch_10
        0x65734553 -> :sswitch_10
        0x65735553 -> :sswitch_10
        0x65740000 -> :sswitch_2a
        0x65750000 -> :sswitch_c
        0x66610000 -> :sswitch_22
        0x66690000 -> :sswitch_18
        0x66720000 -> :sswitch_13
        0x66724341 -> :sswitch_13
        0x66724652 -> :sswitch_13
        0x676c0000 -> :sswitch_c
        0x67750000 -> :sswitch_2
        0x68690000 -> :sswitch_0
        0x68720000 -> :sswitch_e
        0x68750000 -> :sswitch_e
        0x68790000 -> :sswitch_26
        0x69640000 -> :sswitch_c
        0x69730000 -> :sswitch_1d
        0x69740000 -> :sswitch_11
        0x69770000 -> :sswitch_24
        0x6a610000 -> :sswitch_2f
        0x6b610000 -> :sswitch_25
        0x6b6b0000 -> :sswitch_15
        0x6b6d0000 -> :sswitch_2c
        0x6b6e0000 -> :sswitch_3
        0x6b6f0000 -> :sswitch_12
        0x6b790000 -> :sswitch_32
        0x6c6f0000 -> :sswitch_2d
        0x6c740000 -> :sswitch_28
        0x6c760000 -> :sswitch_1c
        0x6d6b0000 -> :sswitch_29
        0x6d6c0000 -> :sswitch_4
        0x6d6e0000 -> :sswitch_30
        0x6d720000 -> :sswitch_0
        0x6d730000 -> :sswitch_c
        0x6d790000 -> :sswitch_2e
        0x6e620000 -> :sswitch_17
        0x6e650000 -> :sswitch_0
        0x6e6c0000 -> :sswitch_f
        0x6f720000 -> :sswitch_a
        0x70610000 -> :sswitch_5
        0x706c0000 -> :sswitch_c
        0x70740000 -> :sswitch_c
        0x726f0000 -> :sswitch_c
        0x72750000 -> :sswitch_16
        0x73690000 -> :sswitch_6
        0x736b0000 -> :sswitch_c
        0x736c0000 -> :sswitch_d
        0x73710000 -> :sswitch_2b
        0x73720000 -> :sswitch_e
        0x73760000 -> :sswitch_18
        0x737a0000 -> :sswitch_c
        0x74610000 -> :sswitch_8
        0x74650000 -> :sswitch_7
        0x74670000 -> :sswitch_33
        0x74680000 -> :sswitch_1f
        0x746b0000 -> :sswitch_34
        0x74720000 -> :sswitch_b
        0x756b0000 -> :sswitch_19
        0x75720000 -> :sswitch_23
        0x757a0000 -> :sswitch_31
        0x76690000 -> :sswitch_20
        0x7a310000 -> :sswitch_2e
        0x7a680000 -> :sswitch_1e
        0x7a68434e -> :sswitch_1e
    .end sparse-switch
.end method

.method private getQwertyMobileKeyboardXmlId(I)I
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/ime/implement/view/ViewControllerImpl;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/cocktailbar/CocktailBarFeatures;->isSupportCocktailPanel(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const v0, 0x7f05007a

    :goto_0
    return v0

    :cond_0
    const v0, 0x7f05007b

    goto :goto_0
.end method

.method private getSoftFuncKbd()Lcom/ime/framework/view/DefaultKeyboard;
    .locals 8

    const-string v0, "SamsungIME"

    const-string v1, "getSoftFuncKbd"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/ime/framework/view/DefaultKeyboard;

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v1, "INPUT_LANGUAGE"

    const v7, 0x656e4742

    invoke-interface {v0, v1, v7}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v4

    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v0}, Lcom/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v5

    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->isShownSoftFuncKbd()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/ime/implement/view/ViewControllerImpl;->getSoftFuncKbdXmlId()I

    move-result v2

    invoke-direct {p0}, Lcom/ime/implement/view/ViewControllerImpl;->getSoftFuncKbdModeId()I

    move-result v3

    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mPrevKeyboard:Lcom/ime/framework/view/DefaultKeyboard;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputMethodId:I

    if-ne v5, v0, :cond_0

    iget v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mXmlID:I

    if-ne v0, v2, :cond_0

    iget v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mModeID:I

    if-ne v0, v3, :cond_0

    iget-boolean v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mIsLandscape:Z

    iget-object v1, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->isOrientationLandscape()Z

    move-result v1

    if-eq v0, v1, :cond_3

    :cond_0
    if-eqz v3, :cond_2

    :try_start_0
    new-instance v0, Lcom/ime/framework/view/DefaultKeyboard;

    iget-object v1, p0, Lcom/ime/implement/view/ViewControllerImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2, v3}, Lcom/ime/framework/view/DefaultKeyboard;-><init>(Landroid/content/Context;II)V

    iput-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/ime/framework/view/DefaultKeyboard;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v1, p0, Lcom/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/ime/framework/view/DefaultKeyboard;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/ime/implement/view/ViewControllerImpl;->setCurrentKeyboardInfo(Lcom/ime/framework/view/DefaultKeyboard;IIII)V

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/ime/framework/view/DefaultKeyboard;

    return-object v0

    :catch_0
    move-exception v6

    const-string v0, "SamsungIME"

    const-string v1, "OutOfMemoryError occurs in DefaultKeyboard"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    :try_start_1
    new-instance v0, Lcom/ime/framework/view/DefaultKeyboard;

    iget-object v1, p0, Lcom/ime/implement/view/ViewControllerImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/ime/framework/view/DefaultKeyboard;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/ime/framework/view/DefaultKeyboard;
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v6

    const-string v0, "SamsungIME"

    const-string v1, "OutOfMemoryError occurs in DefaultKeyboard"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mLanguageID:I

    if-eq v4, v0, :cond_4

    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mPrevKeyboard:Lcom/ime/framework/view/DefaultKeyboard;

    invoke-virtual {v0}, Lcom/ime/framework/view/DefaultKeyboard;->updateKeys()V

    iget-object v1, p0, Lcom/ime/implement/view/ViewControllerImpl;->mPrevKeyboard:Lcom/ime/framework/view/DefaultKeyboard;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/ime/implement/view/ViewControllerImpl;->setCurrentKeyboardInfo(Lcom/ime/framework/view/DefaultKeyboard;IIII)V

    :cond_4
    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mPrevKeyboard:Lcom/ime/framework/view/DefaultKeyboard;

    iput-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/ime/framework/view/DefaultKeyboard;

    goto :goto_1
.end method

.method private getSoftFuncKbdModeId()I
    .locals 2

    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->isShownSoftFuncKbd()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v0}, Lcom/ime/framework/inputmode/InputModeManager;->getCurrentSoftFuncKeyCode()I

    move-result v0

    const/16 v1, -0xa2

    if-ne v0, v1, :cond_0

    const v0, 0x7f100145

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getSoftFuncKbdXmlId()I
    .locals 4

    const/4 v3, 0x1

    const/4 v1, 0x0

    invoke-static {}, Lcom/ime/framework/repository/EditorStatus;->isPhoneNumberInputClass()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/ime/framework/common/InputManager;->getSelectedLanguageList()[Lcom/ime/framework/common/Language;

    move-result-object v2

    array-length v2, v2

    if-le v2, v3, :cond_0

    const v1, 0x7f0500dd

    :goto_0
    return v1

    :cond_0
    const v1, 0x7f0500de

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/ime/framework/common/InputManager;->getSelectedLanguageList()[Lcom/ime/framework/common/Language;

    move-result-object v2

    array-length v2, v2

    if-le v2, v3, :cond_2

    const v1, 0x7f0501b4

    goto :goto_0

    :cond_2
    const v1, 0x7f0501b5

    goto :goto_0
.end method

.method private getSplitLeftKeyboardXmlId(I)I
    .locals 12

    const/high16 v9, -0x10000

    and-int v4, p1, v9

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v6

    iget-object v9, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v9}, Lcom/ime/framework/common/InputManager;->isSwiftKeyMode()Z

    move-result v9

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v9}, Lcom/ime/framework/common/InputManager;->getCurrentInputCountryCode()Ljava/lang/String;

    move-result-object v2

    const-string v9, ""

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    const-string v9, "CH"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const v9, 0x66724652

    if-eq p1, v9, :cond_1

    :cond_0
    move-object v6, v2

    :cond_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x0

    const v8, 0x7f0501cf

    iget-object v9, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    const/4 v10, 0x7

    invoke-virtual {v9, p1, v10}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(II)V

    iget-object v9, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    const/high16 v10, 0x656e0000

    invoke-virtual {v9, v10}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setDefaultLanguage(I)V

    sparse-switch v4, :sswitch_data_0

    const v8, 0x7f0501cf

    :cond_2
    :goto_0
    return v8

    :sswitch_0
    const v8, 0x7f0501cf

    goto :goto_0

    :sswitch_1
    const v8, 0x7f050258

    goto :goto_0

    :sswitch_2
    iget-object v9, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    const/high16 v10, 0x64650000

    const/4 v11, 0x7

    invoke-virtual {v9, v10, v11}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(II)V

    const v8, 0x7f0501cf

    goto :goto_0

    :sswitch_3
    iget-object v9, p0, Lcom/ime/implement/view/ViewControllerImpl;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v10, "SETTINGS_TURKISH_KEYBOARD_TYPE"

    const/4 v11, 0x0

    invoke-interface {v9, v10, v11}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v7

    packed-switch v7, :pswitch_data_0

    const v8, 0x7f0501cf

    goto :goto_0

    :pswitch_0
    const v8, 0x7f0501ef

    goto :goto_0

    :pswitch_1
    const v8, 0x7f05025e

    goto :goto_0

    :sswitch_4
    const-string v9, "BE"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    iget-object v9, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    const v10, 0x66724652

    const/4 v11, 0x7

    invoke-virtual {v9, v10, v11}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(II)V

    const v8, 0x7f0501c3

    goto :goto_0

    :cond_3
    const v8, 0x7f0501cf

    goto :goto_0

    :sswitch_5
    iget-object v9, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    const/high16 v10, 0x65730000

    const/4 v11, 0x7

    invoke-virtual {v9, v10, v11}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(II)V

    const v8, 0x7f0501c3

    goto :goto_0

    :sswitch_6
    const-string v9, "CH"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    iget-object v9, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    const/high16 v10, 0x64650000

    const/4 v11, 0x7

    invoke-virtual {v9, v10, v11}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(II)V

    const v8, 0x7f0501cf

    goto :goto_0

    :cond_4
    const v8, 0x7f0501cf

    goto :goto_0

    :sswitch_7
    iget-boolean v9, p0, Lcom/ime/implement/view/ViewControllerImpl;->mIsKorMode:Z

    if-eqz v9, :cond_8

    iget-object v9, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v9}, Lcom/ime/framework/inputmode/InputModeManager;->getInputMethodOnKor()I

    move-result v3

    const/4 v9, 0x1

    if-eq v3, v9, :cond_5

    const/4 v9, 0x2

    if-ne v3, v9, :cond_6

    :cond_5
    const v8, 0x7f05020b

    goto :goto_0

    :cond_6
    if-nez v3, :cond_2

    invoke-static {}, Lcom/ime/framework/repository/EditorStatus;->isPasswordInputType()Z

    move-result v9

    if-eqz v9, :cond_7

    const v8, 0x7f050212

    goto/16 :goto_0

    :cond_7
    iget-object v9, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    const/high16 v10, 0x6b6f0000

    const/4 v11, 0x7

    invoke-virtual {v9, v10, v11}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(II)V

    const v8, 0x7f0501cf

    goto/16 :goto_0

    :cond_8
    iget-object v9, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    const/high16 v10, 0x6b6f0000

    const/4 v11, 0x7

    invoke-virtual {v9, v10, v11}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(II)V

    const v8, 0x7f0501cf

    goto/16 :goto_0

    :sswitch_8
    iget-object v9, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v9}, Lcom/ime/framework/common/InputManager;->getXt9Version()I

    move-result v9

    const/4 v10, 0x2

    if-lt v9, v10, :cond_b

    const v9, 0x66724341

    if-eq p1, v9, :cond_9

    const/high16 v9, 0x66720000

    if-ne p1, v9, :cond_a

    const-string v9, "CA"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    :cond_9
    iget-object v9, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    const/high16 v10, 0x656e0000

    const/4 v11, 0x7

    invoke-virtual {v9, v10, v11}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(II)V

    const v8, 0x7f0501cf

    goto/16 :goto_0

    :cond_a
    iget-object v9, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    const v10, 0x66724652

    const/4 v11, 0x7

    invoke-virtual {v9, v10, v11}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(II)V

    const v8, 0x7f0501c1

    goto/16 :goto_0

    :cond_b
    const-string v9, "CA"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_c

    iget-object v9, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    const/high16 v10, 0x656e0000

    const/4 v11, 0x7

    invoke-virtual {v9, v10, v11}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(II)V

    const v8, 0x7f0501cf

    goto/16 :goto_0

    :cond_c
    const-string v9, "CH"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_d

    iget-object v9, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    const/high16 v10, 0x64650000

    const/4 v11, 0x7

    invoke-virtual {v9, v10, v11}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(II)V

    const v8, 0x7f0501cf

    goto/16 :goto_0

    :cond_d
    iget-object v9, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    const v10, 0x66724652

    const/4 v11, 0x7

    invoke-virtual {v9, v10, v11}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(II)V

    const v8, 0x7f0501c1

    goto/16 :goto_0

    :sswitch_9
    iget-object v9, p0, Lcom/ime/implement/view/ViewControllerImpl;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v10, "SETTINGS_GERMAN_KEYBOARD_TYPE"

    const/4 v11, 0x1

    invoke-interface {v9, v10, v11}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v1

    packed-switch v1, :pswitch_data_1

    const v8, 0x7f0501cf

    goto/16 :goto_0

    :pswitch_2
    iget-object v9, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    const v10, 0x64654445

    const/4 v11, 0x7

    invoke-virtual {v9, v10, v11}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(II)V

    const v8, 0x7f0501df

    goto/16 :goto_0

    :sswitch_a
    const v8, 0x7f0501c9

    goto/16 :goto_0

    :sswitch_b
    const v8, 0x7f0501e5

    goto/16 :goto_0

    :sswitch_c
    const v8, 0x7f0501e9

    goto/16 :goto_0

    :sswitch_d
    const v8, 0x7f0501f1

    goto/16 :goto_0

    :sswitch_e
    const v8, 0x7f0501e9

    goto/16 :goto_0

    :sswitch_f
    const v8, 0x7f0501d3

    goto/16 :goto_0

    :sswitch_10
    const v8, 0x7f0501df

    goto/16 :goto_0

    :sswitch_11
    const v8, 0x7f0501df

    goto/16 :goto_0

    :sswitch_12
    const v8, 0x7f0501df

    goto/16 :goto_0

    :sswitch_13
    iget-object v9, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    const/high16 v10, 0x66690000

    const/4 v11, 0x7

    invoke-virtual {v9, v10, v11}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(II)V

    const v8, 0x7f0501df

    goto/16 :goto_0

    :sswitch_14
    const v8, 0x7f0501ef

    goto/16 :goto_0

    :sswitch_15
    iget-object v9, p0, Lcom/ime/implement/view/ViewControllerImpl;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v10, "SETTINGS_BULGARIAN_KEYBOARD_TYPE"

    const/4 v11, 0x0

    invoke-interface {v9, v10, v11}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v0

    packed-switch v0, :pswitch_data_2

    iget-boolean v9, p0, Lcom/ime/implement/view/ViewControllerImpl;->mIsTabletMode:Z

    if-eqz v9, :cond_e

    const v8, 0x7f0501b7

    goto/16 :goto_0

    :pswitch_3
    const v8, 0x7f0501b8

    goto/16 :goto_0

    :cond_e
    const v8, 0x7f0501e3

    goto/16 :goto_0

    :sswitch_16
    const v8, 0x7f0501f7

    goto/16 :goto_0

    :sswitch_17
    const v8, 0x7f0501c4

    goto/16 :goto_0

    :sswitch_18
    const v8, 0x7f0501db

    goto/16 :goto_0

    :sswitch_19
    const v8, 0x7f0501c3

    goto/16 :goto_0

    :sswitch_1a
    const v8, 0x7f0501f5

    goto/16 :goto_0

    :sswitch_1b
    const v8, 0x7f0501e7

    goto/16 :goto_0

    :sswitch_1c
    invoke-static {}, Lcom/ime/framework/input/Telex/Telex;->isVietnameseEaseMode()Z

    move-result v9

    if-eqz v9, :cond_f

    const v8, 0x7f0501d5

    goto/16 :goto_0

    :cond_f
    const v8, 0x7f0501c7

    goto/16 :goto_0

    :sswitch_1d
    iget-object v9, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    const/high16 v10, 0x757a0000

    const/4 v11, 0x7

    invoke-virtual {v9, v10, v11}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(II)V

    const v8, 0x7f0501cf

    goto/16 :goto_0

    :sswitch_1e
    const v8, 0x7f0501ef

    goto/16 :goto_0

    :sswitch_1f
    const v8, 0x7f0501dd

    goto/16 :goto_0

    :sswitch_20
    const v8, 0x7f0501cf

    goto/16 :goto_0

    :sswitch_21
    const v8, 0x7f0501d9

    goto/16 :goto_0

    :sswitch_22
    const v9, 0x7a68484b

    if-ne p1, v9, :cond_10

    iget-object v9, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    const v10, 0x7a68484b

    const/4 v11, 0x7

    invoke-virtual {v9, v10, v11}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(II)V

    const v8, 0x7f0501d1

    goto/16 :goto_0

    :cond_10
    const v9, 0x7a685457

    if-ne p1, v9, :cond_11

    const v8, 0x7f050262

    goto/16 :goto_0

    :cond_11
    iget-object v9, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    const/high16 v10, 0x7a680000

    const/4 v11, 0x7

    invoke-virtual {v9, v10, v11}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(II)V

    const v8, 0x7f0501cb

    goto/16 :goto_0

    :sswitch_23
    iget-object v9, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    const v10, 0x7a68484b

    const/4 v11, 0x7

    invoke-virtual {v9, v10, v11}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(II)V

    const v8, 0x7f0501d1

    goto/16 :goto_0

    :sswitch_24
    const v8, 0x7f050262

    goto/16 :goto_0

    :sswitch_25
    const v8, 0x7f0501f9

    goto/16 :goto_0

    :sswitch_26
    const v8, 0x7f0501ed

    goto/16 :goto_0

    :sswitch_27
    const v8, 0x7f0501eb

    goto/16 :goto_0

    :sswitch_28
    const v8, 0x7f0501d7

    goto/16 :goto_0

    :sswitch_29
    const v8, 0x7f0501bf

    goto/16 :goto_0

    :sswitch_2a
    const v8, 0x7f0501f3

    goto/16 :goto_0

    :sswitch_2b
    const v8, 0x7f0501e1

    goto/16 :goto_0

    :sswitch_2c
    const v8, 0x7f0501cd

    goto/16 :goto_0

    :sswitch_2d
    iget-object v9, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    const/high16 v10, 0x68690000

    invoke-virtual {v9, v10}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setDefaultLanguage(I)V

    const v8, 0x7f0501fb

    goto/16 :goto_0

    :sswitch_2e
    iget-object v9, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    const/high16 v10, 0x626e0000

    invoke-virtual {v9, v10}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setDefaultLanguage(I)V

    const v8, 0x7f0501fb

    goto/16 :goto_0

    :sswitch_2f
    const v8, 0x7f050250

    goto/16 :goto_0

    :sswitch_30
    const v8, 0x7f05025a

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x61720000 -> :sswitch_18
        0x61730000 -> :sswitch_2e
        0x617a0000 -> :sswitch_1e
        0x62650000 -> :sswitch_1e
        0x62670000 -> :sswitch_15
        0x626e0000 -> :sswitch_2d
        0x63610000 -> :sswitch_0
        0x63730000 -> :sswitch_2
        0x64610000 -> :sswitch_10
        0x64650000 -> :sswitch_9
        0x656c0000 -> :sswitch_16
        0x656e0000 -> :sswitch_0
        0x65730000 -> :sswitch_5
        0x65734553 -> :sswitch_5
        0x65735553 -> :sswitch_5
        0x65740000 -> :sswitch_27
        0x65750000 -> :sswitch_0
        0x66690000 -> :sswitch_12
        0x66720000 -> :sswitch_8
        0x66724341 -> :sswitch_8
        0x66724652 -> :sswitch_8
        0x676c0000 -> :sswitch_0
        0x67750000 -> :sswitch_2d
        0x68690000 -> :sswitch_2d
        0x68720000 -> :sswitch_2
        0x68750000 -> :sswitch_2
        0x68790000 -> :sswitch_1f
        0x69640000 -> :sswitch_0
        0x69730000 -> :sswitch_21
        0x69740000 -> :sswitch_6
        0x69770000 -> :sswitch_1a
        0x6a610000 -> :sswitch_2c
        0x6b610000 -> :sswitch_20
        0x6b6b0000 -> :sswitch_a
        0x6b6d0000 -> :sswitch_29
        0x6b6e0000 -> :sswitch_2d
        0x6b6f0000 -> :sswitch_7
        0x6b790000 -> :sswitch_d
        0x6c6f0000 -> :sswitch_2a
        0x6c740000 -> :sswitch_25
        0x6c760000 -> :sswitch_17
        0x6d6b0000 -> :sswitch_26
        0x6d6c0000 -> :sswitch_2d
        0x6d6e0000 -> :sswitch_c
        0x6d720000 -> :sswitch_2d
        0x6d730000 -> :sswitch_0
        0x6d790000 -> :sswitch_2b
        0x6e620000 -> :sswitch_11
        0x6e650000 -> :sswitch_2d
        0x6e6c0000 -> :sswitch_4
        0x6f720000 -> :sswitch_2d
        0x70610000 -> :sswitch_2f
        0x706c0000 -> :sswitch_0
        0x70740000 -> :sswitch_0
        0x726f0000 -> :sswitch_0
        0x72750000 -> :sswitch_b
        0x73690000 -> :sswitch_2d
        0x736b0000 -> :sswitch_0
        0x736c0000 -> :sswitch_1
        0x73710000 -> :sswitch_28
        0x73720000 -> :sswitch_2
        0x73760000 -> :sswitch_13
        0x737a0000 -> :sswitch_0
        0x74610000 -> :sswitch_30
        0x74650000 -> :sswitch_2d
        0x74670000 -> :sswitch_e
        0x74680000 -> :sswitch_1b
        0x746b0000 -> :sswitch_f
        0x74720000 -> :sswitch_3
        0x756b0000 -> :sswitch_14
        0x75720000 -> :sswitch_19
        0x757a0000 -> :sswitch_1d
        0x76690000 -> :sswitch_1c
        0x7a310000 -> :sswitch_2b
        0x7a680000 -> :sswitch_22
        0x7a68434e -> :sswitch_22
        0x7a68484b -> :sswitch_23
        0x7a685457 -> :sswitch_24
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_3
    .end packed-switch
.end method

.method private getSplitNumberPopupKeyboard(Z)Lcom/ime/framework/view/DefaultKeyboard;
    .locals 10

    const-string v0, "SamsungIME"

    const-string v1, "getSplitNumberPopupKeyboard"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/ime/framework/view/DefaultKeyboard;

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v0}, Lcom/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v5

    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mPrivateImeOptionsController:Lcom/ime/framework/common/PrivateImeOptionsController;

    invoke-interface {v0}, Lcom/ime/framework/common/PrivateImeOptionsController;->getInputType()I

    move-result v8

    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v1, "INPUT_LANGUAGE"

    const v9, 0x656e4742

    invoke-interface {v0, v1, v9}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v4

    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->isSplitOneHandKeypadRightSet()Z

    move-result v7

    if-eqz v7, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    if-nez v7, :cond_5

    if-eqz p1, :cond_5

    :cond_1
    const/4 v6, 0x1

    :goto_0
    if-nez v6, :cond_2

    const v2, 0x7f050217

    :cond_2
    const/16 v0, 0xa

    if-ne v8, v0, :cond_6

    if-eqz v6, :cond_3

    const v2, 0x7f050215

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mPrevKeyboard:Lcom/ime/framework/view/DefaultKeyboard;

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputMethodId:I

    if-ne v5, v0, :cond_4

    iget v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mXmlID:I

    if-ne v0, v2, :cond_4

    iget v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mModeID:I

    if-ne v0, v3, :cond_4

    iget-boolean v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mIsLandscape:Z

    iget-object v1, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->isOrientationLandscape()Z

    move-result v1

    if-eq v0, v1, :cond_1e

    :cond_4
    if-eqz v3, :cond_1d

    new-instance v0, Lcom/ime/framework/view/DefaultKeyboard;

    iget-object v1, p0, Lcom/ime/implement/view/ViewControllerImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2, v3}, Lcom/ime/framework/view/DefaultKeyboard;-><init>(Landroid/content/Context;II)V

    iput-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/ime/framework/view/DefaultKeyboard;

    :goto_2
    iget-object v1, p0, Lcom/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/ime/framework/view/DefaultKeyboard;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/ime/implement/view/ViewControllerImpl;->setCurrentKeyboardInfo(Lcom/ime/framework/view/DefaultKeyboard;IIII)V

    :goto_3
    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/ime/framework/view/DefaultKeyboard;

    return-object v0

    :cond_5
    const/4 v6, 0x0

    goto :goto_0

    :cond_6
    const/16 v0, 0x9

    if-eq v8, v0, :cond_7

    const/16 v0, 0xe

    if-ne v8, v0, :cond_8

    :cond_7
    if-eqz v6, :cond_3

    const v2, 0x7f050260

    goto :goto_1

    :cond_8
    invoke-static {}, Lcom/ime/framework/repository/EditorStatus;->isPhoneNumberInputClass()Z

    move-result v0

    if-eqz v0, :cond_9

    if-eqz v6, :cond_3

    const v2, 0x7f050252

    goto :goto_1

    :cond_9
    const/4 v0, 0x1

    if-eq v8, v0, :cond_a

    invoke-static {}, Lcom/ime/framework/repository/EditorStatus;->isDecimalNumberInputType()Z

    move-result v0

    if-eqz v0, :cond_b

    :cond_a
    if-eqz v6, :cond_3

    const v2, 0x7f050218

    goto :goto_1

    :cond_b
    invoke-static {}, Lcom/ime/framework/repository/EditorStatus;->isSignedNumberInputType()Z

    move-result v0

    if-eqz v0, :cond_c

    if-eqz v6, :cond_3

    const v2, 0x7f05021f

    goto :goto_1

    :cond_c
    invoke-static {}, Lcom/ime/framework/repository/EditorStatus;->isSignedDecimalNumberInputType()Z

    move-result v0

    if-nez v0, :cond_d

    invoke-static {}, Lcom/ime/framework/repository/EditorStatus;->isNumberOnlyInputType()Z

    move-result v0

    if-eqz v0, :cond_10

    :cond_d
    invoke-static {}, Lcom/ime/framework/repository/EditorStatus;->isNumberPasswordInputType()Z

    move-result v0

    if-eqz v0, :cond_e

    if-eqz v6, :cond_3

    const v2, 0x7f05021c

    goto :goto_1

    :cond_e
    invoke-static {}, Lcom/ime/framework/repository/EditorStatus;->isNumberOnlyInputType()Z

    move-result v0

    if-eqz v0, :cond_f

    if-eqz v6, :cond_3

    const v2, 0x7f05021a

    goto/16 :goto_1

    :cond_f
    if-eqz v6, :cond_3

    const v2, 0x7f05021d

    goto/16 :goto_1

    :cond_10
    invoke-static {}, Lcom/ime/framework/repository/EditorStatus;->isTimeInputType()Z

    move-result v0

    if-eqz v0, :cond_11

    if-eqz v6, :cond_3

    const v2, 0x7f05025c

    goto/16 :goto_1

    :cond_11
    invoke-static {}, Lcom/ime/framework/repository/EditorStatus;->isDateInputType()Z

    move-result v0

    if-eqz v0, :cond_12

    if-eqz v6, :cond_3

    const v2, 0x7f0501bb

    goto/16 :goto_1

    :cond_12
    invoke-static {}, Lcom/ime/framework/repository/EditorStatus;->isDateTimeInputType()Z

    move-result v0

    if-eqz v0, :cond_13

    if-eqz v6, :cond_3

    const v2, 0x7f0501bd

    goto/16 :goto_1

    :cond_13
    if-eqz p1, :cond_18

    const/high16 v0, 0x61720000

    if-ne v4, v0, :cond_14

    const v2, 0x7f05022e

    :goto_4
    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v1, "SYMBOLS_PAGE"

    const/4 v9, 0x0

    invoke-interface {v0, v1, v9}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/ime/implement/view/ViewControllerImpl;->getCurrentSymbolPageModeId(I)I

    move-result v3

    goto/16 :goto_1

    :cond_14
    const/high16 v0, 0x66610000

    if-ne v4, v0, :cond_15

    const v2, 0x7f050231

    goto :goto_4

    :cond_15
    const/high16 v0, 0x75720000

    if-ne v4, v0, :cond_16

    const v2, 0x7f050235

    goto :goto_4

    :cond_16
    iget-boolean v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mIsKorMode:Z

    if-eqz v0, :cond_17

    const v2, 0x7f050233

    goto :goto_4

    :cond_17
    const v2, 0x7f05022d

    goto :goto_4

    :cond_18
    const/high16 v0, 0x61720000

    if-ne v4, v0, :cond_19

    const v2, 0x7f050239

    goto :goto_4

    :cond_19
    const/high16 v0, 0x66610000

    if-ne v4, v0, :cond_1a

    const v2, 0x7f05023d

    goto :goto_4

    :cond_1a
    const/high16 v0, 0x75720000

    if-ne v4, v0, :cond_1b

    const v2, 0x7f05024c

    goto :goto_4

    :cond_1b
    iget-boolean v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mIsKorMode:Z

    if-eqz v0, :cond_1c

    const v2, 0x7f050242

    goto :goto_4

    :cond_1c
    const v2, 0x7f050238

    goto :goto_4

    :cond_1d
    new-instance v0, Lcom/ime/framework/view/DefaultKeyboard;

    iget-object v1, p0, Lcom/ime/implement/view/ViewControllerImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/ime/framework/view/DefaultKeyboard;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/ime/framework/view/DefaultKeyboard;

    goto/16 :goto_2

    :cond_1e
    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mPrevKeyboard:Lcom/ime/framework/view/DefaultKeyboard;

    iput-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/ime/framework/view/DefaultKeyboard;

    goto/16 :goto_3
.end method

.method private getSplitRightKeyboardXmlId(I)I
    .locals 12

    const/high16 v9, -0x10000

    and-int v4, p1, v9

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v6

    iget-object v9, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v9}, Lcom/ime/framework/common/InputManager;->isSwiftKeyMode()Z

    move-result v9

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v9}, Lcom/ime/framework/common/InputManager;->getCurrentInputCountryCode()Ljava/lang/String;

    move-result-object v2

    const-string v9, ""

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    const-string v9, "CH"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const v9, 0x66724652

    if-eq p1, v9, :cond_1

    :cond_0
    move-object v6, v2

    :cond_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x0

    const v8, 0x7f0501d0

    iget-object v9, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    const/4 v10, 0x7

    invoke-virtual {v9, p1, v10}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(II)V

    iget-object v9, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    const/high16 v10, 0x656e0000

    invoke-virtual {v9, v10}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setDefaultLanguage(I)V

    sparse-switch v4, :sswitch_data_0

    const v8, 0x7f0501d0

    :cond_2
    :goto_0
    return v8

    :sswitch_0
    const v8, 0x7f0501d0

    goto :goto_0

    :sswitch_1
    const v8, 0x7f050259

    goto :goto_0

    :sswitch_2
    iget-object v9, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    const/high16 v10, 0x64650000

    const/4 v11, 0x7

    invoke-virtual {v9, v10, v11}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(II)V

    const v8, 0x7f0501d0

    goto :goto_0

    :sswitch_3
    iget-object v9, p0, Lcom/ime/implement/view/ViewControllerImpl;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v10, "SETTINGS_TURKISH_KEYBOARD_TYPE"

    const/4 v11, 0x0

    invoke-interface {v9, v10, v11}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v7

    packed-switch v7, :pswitch_data_0

    iget-object v9, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    const/high16 v10, 0x656e0000

    const/4 v11, 0x7

    invoke-virtual {v9, v10, v11}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(II)V

    const v8, 0x7f0501d0

    goto :goto_0

    :pswitch_0
    const v8, 0x7f0501f0

    goto :goto_0

    :pswitch_1
    const v8, 0x7f05025f

    goto :goto_0

    :sswitch_4
    const-string v9, "BE"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    iget-object v9, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    const v10, 0x66724652

    const/4 v11, 0x7

    invoke-virtual {v9, v10, v11}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(II)V

    const v8, 0x7f0501c6

    goto :goto_0

    :cond_3
    const v8, 0x7f0501d0

    goto :goto_0

    :sswitch_5
    iget-object v9, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    const/high16 v10, 0x65730000

    const/4 v11, 0x7

    invoke-virtual {v9, v10, v11}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(II)V

    const v8, 0x7f0501c6

    goto :goto_0

    :sswitch_6
    const-string v9, "CH"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    iget-object v9, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    const/high16 v10, 0x64650000

    const/4 v11, 0x7

    invoke-virtual {v9, v10, v11}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(II)V

    :cond_4
    const v8, 0x7f0501d0

    goto :goto_0

    :sswitch_7
    iget-boolean v9, p0, Lcom/ime/implement/view/ViewControllerImpl;->mIsKorMode:Z

    if-eqz v9, :cond_8

    iget-object v9, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v9}, Lcom/ime/framework/inputmode/InputModeManager;->getInputMethodOnKor()I

    move-result v3

    const/4 v9, 0x1

    if-ne v3, v9, :cond_5

    const v8, 0x7f05020c

    goto :goto_0

    :cond_5
    const/4 v9, 0x2

    if-ne v3, v9, :cond_6

    const v8, 0x7f050210

    goto/16 :goto_0

    :cond_6
    if-nez v3, :cond_2

    invoke-static {}, Lcom/ime/framework/repository/EditorStatus;->isPasswordInputType()Z

    move-result v9

    if-eqz v9, :cond_7

    const v8, 0x7f050213

    goto/16 :goto_0

    :cond_7
    iget-object v9, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    const/high16 v10, 0x6b6f0000

    const/4 v11, 0x7

    invoke-virtual {v9, v10, v11}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(II)V

    const v8, 0x7f0501d0

    goto/16 :goto_0

    :cond_8
    iget-object v9, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    const/high16 v10, 0x6b6f0000

    const/4 v11, 0x7

    invoke-virtual {v9, v10, v11}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(II)V

    const v8, 0x7f0501d0

    goto/16 :goto_0

    :sswitch_8
    iget-object v9, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v9}, Lcom/ime/framework/common/InputManager;->getXt9Version()I

    move-result v9

    const/4 v10, 0x2

    if-lt v9, v10, :cond_b

    const v9, 0x66724341

    if-eq p1, v9, :cond_9

    const/high16 v9, 0x66720000

    if-ne p1, v9, :cond_a

    const-string v9, "CA"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    :cond_9
    iget-object v9, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    const/high16 v10, 0x656e0000

    const/4 v11, 0x7

    invoke-virtual {v9, v10, v11}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(II)V

    const v8, 0x7f0501d0

    goto/16 :goto_0

    :cond_a
    iget-object v9, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    const v10, 0x66724652

    const/4 v11, 0x7

    invoke-virtual {v9, v10, v11}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(II)V

    const v8, 0x7f0501c2

    goto/16 :goto_0

    :cond_b
    const-string v9, "CA"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_c

    iget-object v9, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    const/high16 v10, 0x656e0000

    const/4 v11, 0x7

    invoke-virtual {v9, v10, v11}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(II)V

    const v8, 0x7f0501d0

    goto/16 :goto_0

    :cond_c
    const-string v9, "CH"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_d

    iget-object v9, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    const/high16 v10, 0x64650000

    const/4 v11, 0x7

    invoke-virtual {v9, v10, v11}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(II)V

    const v8, 0x7f0501d0

    goto/16 :goto_0

    :cond_d
    iget-object v9, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    const v10, 0x66724652

    const/4 v11, 0x7

    invoke-virtual {v9, v10, v11}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(II)V

    const v8, 0x7f0501c2

    goto/16 :goto_0

    :sswitch_9
    iget-object v9, p0, Lcom/ime/implement/view/ViewControllerImpl;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v10, "SETTINGS_GERMAN_KEYBOARD_TYPE"

    const/4 v11, 0x1

    invoke-interface {v9, v10, v11}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v1

    packed-switch v1, :pswitch_data_1

    const v8, 0x7f0501d0

    goto/16 :goto_0

    :pswitch_2
    iget-object v9, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    const v10, 0x64654445

    const/4 v11, 0x7

    invoke-virtual {v9, v10, v11}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(II)V

    const v8, 0x7f0501e0

    goto/16 :goto_0

    :sswitch_a
    const v8, 0x7f0501ca

    goto/16 :goto_0

    :sswitch_b
    const v8, 0x7f0501e6

    goto/16 :goto_0

    :sswitch_c
    const v8, 0x7f0501ea

    goto/16 :goto_0

    :sswitch_d
    const v8, 0x7f0501f2

    goto/16 :goto_0

    :sswitch_e
    const v8, 0x7f0501ea

    goto/16 :goto_0

    :sswitch_f
    const v8, 0x7f0501d4

    goto/16 :goto_0

    :sswitch_10
    const v8, 0x7f0501e0

    goto/16 :goto_0

    :sswitch_11
    const v8, 0x7f0501e0

    goto/16 :goto_0

    :sswitch_12
    const v8, 0x7f0501e0

    goto/16 :goto_0

    :sswitch_13
    iget-object v9, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    const/high16 v10, 0x66690000

    const/4 v11, 0x7

    invoke-virtual {v9, v10, v11}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(II)V

    const v8, 0x7f0501e0

    goto/16 :goto_0

    :sswitch_14
    const v8, 0x7f0501f0

    goto/16 :goto_0

    :sswitch_15
    iget-object v9, p0, Lcom/ime/implement/view/ViewControllerImpl;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v10, "SETTINGS_BULGARIAN_KEYBOARD_TYPE"

    const/4 v11, 0x0

    invoke-interface {v9, v10, v11}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v0

    packed-switch v0, :pswitch_data_2

    iget-boolean v9, p0, Lcom/ime/implement/view/ViewControllerImpl;->mIsTabletMode:Z

    if-eqz v9, :cond_e

    const v8, 0x7f0501ba

    goto/16 :goto_0

    :pswitch_3
    const v8, 0x7f0501b9

    goto/16 :goto_0

    :cond_e
    const v8, 0x7f0501e4

    goto/16 :goto_0

    :sswitch_16
    const v8, 0x7f0501f8

    goto/16 :goto_0

    :sswitch_17
    const v8, 0x7f0501c5

    goto/16 :goto_0

    :sswitch_18
    const v8, 0x7f0501dc

    goto/16 :goto_0

    :sswitch_19
    const v8, 0x7f0501c6

    goto/16 :goto_0

    :sswitch_1a
    const v8, 0x7f0501f6

    goto/16 :goto_0

    :sswitch_1b
    const v8, 0x7f0501e8

    goto/16 :goto_0

    :sswitch_1c
    invoke-static {}, Lcom/ime/framework/input/Telex/Telex;->isVietnameseEaseMode()Z

    move-result v9

    if-eqz v9, :cond_f

    const v8, 0x7f0501d6

    goto/16 :goto_0

    :cond_f
    const v8, 0x7f0501c8

    goto/16 :goto_0

    :sswitch_1d
    iget-object v9, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    const/high16 v10, 0x757a0000

    const/4 v11, 0x7

    invoke-virtual {v9, v10, v11}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(II)V

    const v8, 0x7f0501d0

    goto/16 :goto_0

    :sswitch_1e
    const v8, 0x7f0501f0

    goto/16 :goto_0

    :sswitch_1f
    const v8, 0x7f0501de

    goto/16 :goto_0

    :sswitch_20
    const v8, 0x7f0501d0

    goto/16 :goto_0

    :sswitch_21
    const v9, 0x7a68484b

    if-ne p1, v9, :cond_10

    iget-object v9, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    const v10, 0x7a68484b

    const/4 v11, 0x7

    invoke-virtual {v9, v10, v11}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(II)V

    const v8, 0x7f0501d2

    goto/16 :goto_0

    :cond_10
    const v9, 0x7a685457

    if-ne p1, v9, :cond_11

    iget-object v9, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    const/high16 v10, 0x7a680000

    const/4 v11, 0x7

    invoke-virtual {v9, v10, v11}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(II)V

    const v8, 0x7f050263

    goto/16 :goto_0

    :cond_11
    const v8, 0x7f0501cc

    goto/16 :goto_0

    :sswitch_22
    iget-object v9, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    const v10, 0x7a68484b

    const/4 v11, 0x7

    invoke-virtual {v9, v10, v11}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(II)V

    const v8, 0x7f0501d2

    goto/16 :goto_0

    :sswitch_23
    const v8, 0x7f050263

    goto/16 :goto_0

    :sswitch_24
    const v8, 0x7f0501fa

    goto/16 :goto_0

    :sswitch_25
    const v8, 0x7f0501da

    goto/16 :goto_0

    :sswitch_26
    const v8, 0x7f0501ee

    goto/16 :goto_0

    :sswitch_27
    const v8, 0x7f0501ec

    goto/16 :goto_0

    :sswitch_28
    const v8, 0x7f0501d8

    goto/16 :goto_0

    :sswitch_29
    const v8, 0x7f0501c0

    goto/16 :goto_0

    :sswitch_2a
    const v8, 0x7f0501f4

    goto/16 :goto_0

    :sswitch_2b
    const v8, 0x7f0501e2

    goto/16 :goto_0

    :sswitch_2c
    const v8, 0x7f0501ce

    goto/16 :goto_0

    :sswitch_2d
    iget-object v9, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    const/high16 v10, 0x68690000

    invoke-virtual {v9, v10}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setDefaultLanguage(I)V

    const v8, 0x7f0501fc

    goto/16 :goto_0

    :sswitch_2e
    iget-object v9, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    const/high16 v10, 0x626e0000

    invoke-virtual {v9, v10}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setDefaultLanguage(I)V

    const v8, 0x7f0501fc

    goto/16 :goto_0

    :sswitch_2f
    const v8, 0x7f050251

    goto/16 :goto_0

    :sswitch_30
    const v8, 0x7f05025b

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x61720000 -> :sswitch_18
        0x61730000 -> :sswitch_2e
        0x617a0000 -> :sswitch_1e
        0x62650000 -> :sswitch_1e
        0x62670000 -> :sswitch_15
        0x626e0000 -> :sswitch_2d
        0x63610000 -> :sswitch_0
        0x63730000 -> :sswitch_2
        0x64610000 -> :sswitch_10
        0x64650000 -> :sswitch_9
        0x656c0000 -> :sswitch_16
        0x656e0000 -> :sswitch_0
        0x65730000 -> :sswitch_5
        0x65734553 -> :sswitch_5
        0x65735553 -> :sswitch_5
        0x65740000 -> :sswitch_27
        0x65750000 -> :sswitch_0
        0x66610000 -> :sswitch_19
        0x66690000 -> :sswitch_12
        0x66720000 -> :sswitch_8
        0x66724341 -> :sswitch_8
        0x66724652 -> :sswitch_8
        0x676c0000 -> :sswitch_0
        0x67750000 -> :sswitch_2d
        0x68690000 -> :sswitch_2d
        0x68720000 -> :sswitch_2
        0x68750000 -> :sswitch_2
        0x68790000 -> :sswitch_1f
        0x69730000 -> :sswitch_25
        0x69740000 -> :sswitch_6
        0x69770000 -> :sswitch_1a
        0x6a610000 -> :sswitch_2c
        0x6b610000 -> :sswitch_20
        0x6b6b0000 -> :sswitch_a
        0x6b6d0000 -> :sswitch_29
        0x6b6e0000 -> :sswitch_2d
        0x6b6f0000 -> :sswitch_7
        0x6b790000 -> :sswitch_d
        0x6c6f0000 -> :sswitch_2a
        0x6c740000 -> :sswitch_24
        0x6c760000 -> :sswitch_17
        0x6d6b0000 -> :sswitch_26
        0x6d6c0000 -> :sswitch_2d
        0x6d6e0000 -> :sswitch_c
        0x6d720000 -> :sswitch_2d
        0x6d790000 -> :sswitch_2b
        0x6e620000 -> :sswitch_11
        0x6e650000 -> :sswitch_2d
        0x6e6c0000 -> :sswitch_4
        0x6f720000 -> :sswitch_2d
        0x70610000 -> :sswitch_2f
        0x706c0000 -> :sswitch_0
        0x70740000 -> :sswitch_0
        0x726f0000 -> :sswitch_0
        0x72750000 -> :sswitch_b
        0x73690000 -> :sswitch_2d
        0x736b0000 -> :sswitch_0
        0x736c0000 -> :sswitch_1
        0x73710000 -> :sswitch_28
        0x73720000 -> :sswitch_2
        0x73760000 -> :sswitch_13
        0x737a0000 -> :sswitch_0
        0x74610000 -> :sswitch_30
        0x74650000 -> :sswitch_2d
        0x74670000 -> :sswitch_e
        0x74680000 -> :sswitch_1b
        0x746b0000 -> :sswitch_f
        0x74720000 -> :sswitch_3
        0x756b0000 -> :sswitch_14
        0x75720000 -> :sswitch_19
        0x757a0000 -> :sswitch_1d
        0x76690000 -> :sswitch_1c
        0x7a310000 -> :sswitch_2b
        0x7a680000 -> :sswitch_21
        0x7a68434e -> :sswitch_21
        0x7a68484b -> :sswitch_22
        0x7a685457 -> :sswitch_23
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_3
    .end packed-switch
.end method

.method private getSymbolKeyboard()Lcom/ime/framework/view/DefaultKeyboard;
    .locals 13

    const-string v0, "SamsungIME"

    const-string v1, "getSymbolKeyboard"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/ime/framework/view/DefaultKeyboard;

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v1, "INPUT_LANGUAGE"

    const v11, 0x656e4742

    invoke-interface {v0, v1, v11}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v4

    invoke-static {}, Lcom/ime/framework/repository/EditorStatus;->isPhoneNumberInputClass()Z

    move-result v7

    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v0}, Lcom/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v5

    const/4 v3, 0x0

    invoke-static {}, Lcom/ime/framework/repository/InputModeStatus;->getInputRange()I

    move-result v10

    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    const/4 v1, 0x2

    invoke-virtual {v0, v4, v5, v1}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(III)V

    if-eqz v5, :cond_0

    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->isUseBstHWRPanel()Z

    move-result v0

    if-eqz v0, :cond_1b

    const/4 v0, 0x2

    if-eq v5, v0, :cond_0

    const/4 v0, 0x4

    if-ne v5, v0, :cond_1b

    :cond_0
    if-eqz v7, :cond_4

    const v2, 0x7f050113

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->isMobileKeyboard()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v9

    const-string v0, "mobilekeyboard_need_empty_keyboard"

    const/4 v1, 0x0

    invoke-interface {v9, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2e

    const v2, 0x7f05007f

    :goto_1
    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v1, "SYMBOLS_PAGE"

    const/4 v11, 0x0

    invoke-interface {v0, v1, v11}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/ime/implement/view/ViewControllerImpl;->getCurrentSymbolPageModeId(I)I

    move-result v3

    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    invoke-virtual {v0, v4, v5, v10}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(III)V

    :cond_2
    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v0}, Lcom/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v5

    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mPrevKeyboard:Lcom/ime/framework/view/DefaultKeyboard;

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputMethodId:I

    if-ne v5, v0, :cond_3

    iget v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mXmlID:I

    if-ne v0, v2, :cond_3

    iget v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mModeID:I

    if-ne v0, v3, :cond_3

    iget-boolean v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mIsLandscape:Z

    iget-object v1, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->isOrientationLandscape()Z

    move-result v1

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->getNeedChangeKeyboardHeight()Z

    move-result v0

    if-eqz v0, :cond_31

    :cond_3
    if-eqz v3, :cond_30

    new-instance v0, Lcom/ime/framework/view/DefaultKeyboard;

    iget-object v1, p0, Lcom/ime/implement/view/ViewControllerImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2, v3}, Lcom/ime/framework/view/DefaultKeyboard;-><init>(Landroid/content/Context;II)V

    iput-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/ime/framework/view/DefaultKeyboard;

    :goto_2
    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/ime/framework/common/InputManager;->setNeedChangeKeyboardHeight(Z)V

    iget-object v1, p0, Lcom/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/ime/framework/view/DefaultKeyboard;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/ime/implement/view/ViewControllerImpl;->setCurrentKeyboardInfo(Lcom/ime/framework/view/DefaultKeyboard;IIII)V

    :goto_3
    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/ime/framework/view/DefaultKeyboard;

    return-object v0

    :cond_4
    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->isFullLandMode()Z

    move-result v0

    if-eqz v0, :cond_5

    const v2, 0x7f0501ab

    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v1, "SYMBOLS_PAGE"

    const/4 v11, 0x0

    invoke-interface {v0, v1, v11}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/ime/implement/view/ViewControllerImpl;->getCurrentSymbolPageModeId(I)I

    move-result v3

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->isDualLandMode()Z

    move-result v0

    if-eqz v0, :cond_6

    const v2, 0x7f0501aa

    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v1, "SYMBOLS_PAGE"

    const/4 v11, 0x0

    invoke-interface {v0, v1, v11}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/ime/implement/view/ViewControllerImpl;->getCurrentSymbolPageModeId(I)I

    move-result v3

    goto/16 :goto_0

    :cond_6
    const-string v0, "ISL"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v11, "CscFeature_Sip_ReplaceLocalCurrencyAs"

    invoke-virtual {v1, v11}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {v4}, Lcom/ime/framework/util/Utils;->isArabicLanguage(I)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    const/high16 v1, -0x36290000    # -1761280.0f

    const/4 v11, 0x0

    const/4 v12, 0x2

    invoke-virtual {v0, v1, v11, v12}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(III)V

    :goto_4
    const v2, 0x7f0501a9

    :goto_5
    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v1, "SYMBOLS_PAGE"

    const/4 v11, 0x0

    invoke-interface {v0, v1, v11}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/ime/implement/view/ViewControllerImpl;->getCurrentSymbolPageModeId(I)I

    move-result v3

    goto/16 :goto_0

    :cond_7
    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    const/high16 v1, 0x68650000

    const/4 v11, 0x0

    const/4 v12, 0x2

    invoke-virtual {v0, v1, v11, v12}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(III)V

    goto :goto_4

    :cond_8
    invoke-static {v4}, Lcom/ime/framework/util/Utils;->isIndianLanguage(I)Z

    move-result v0

    if-eqz v0, :cond_c

    const/high16 v0, 0x73690000

    if-eq v4, v0, :cond_9

    const/high16 v0, 0x6e650000

    if-ne v4, v0, :cond_b

    :cond_9
    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    const/high16 v1, 0x6e650000

    const/4 v11, 0x2

    invoke-virtual {v0, v1, v5, v11}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(III)V

    :cond_a
    :goto_6
    const v2, 0x7f05016d

    goto :goto_5

    :cond_b
    const/high16 v0, 0x6d6e0000

    if-eq v4, v0, :cond_a

    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    const/high16 v1, 0x68690000

    const/4 v11, 0x2

    invoke-virtual {v0, v1, v5, v11}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(III)V

    goto :goto_6

    :cond_c
    const/high16 v0, 0x65730000

    if-eq v4, v0, :cond_d

    const v0, 0x65734553

    if-eq v4, v0, :cond_d

    const v0, 0x65735553

    if-ne v4, v0, :cond_f

    :cond_d
    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    const/high16 v1, 0x65730000

    const/4 v11, 0x0

    const/4 v12, 0x2

    invoke-virtual {v0, v1, v11, v12}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(III)V

    :cond_e
    :goto_7
    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->isChnMode()Z

    move-result v0

    if-eqz v0, :cond_1a

    const v2, 0x7f050117

    goto :goto_5

    :cond_f
    const/high16 v0, 0x61660000

    if-eq v4, v0, :cond_10

    const/high16 v0, 0x7a750000

    if-eq v4, v0, :cond_10

    const/high16 v0, 0x78680000

    if-ne v4, v0, :cond_11

    :cond_10
    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    const/high16 v1, 0x61660000

    const/4 v11, 0x0

    const/4 v12, 0x2

    invoke-virtual {v0, v1, v11, v12}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(III)V

    goto :goto_7

    :cond_11
    const/high16 v0, 0x61720000

    if-eq v4, v0, :cond_12

    const/high16 v0, 0x75720000

    if-eq v4, v0, :cond_12

    const/high16 v0, 0x66610000

    if-ne v4, v0, :cond_13

    :cond_12
    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    const/high16 v1, 0x61720000

    const/4 v11, 0x0

    const/4 v12, 0x2

    invoke-virtual {v0, v1, v11, v12}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(III)V

    goto :goto_7

    :cond_13
    const/high16 v0, 0x7a680000

    if-eq v4, v0, :cond_14

    const v0, 0x7a68434e

    if-eq v4, v0, :cond_14

    const v0, 0x7a68484b

    if-eq v4, v0, :cond_14

    const v0, 0x7a685457

    if-ne v4, v0, :cond_15

    :cond_14
    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    const/high16 v1, 0x7a680000

    const/4 v11, 0x0

    const/4 v12, 0x2

    invoke-virtual {v0, v1, v11, v12}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(III)V

    goto :goto_7

    :cond_15
    const/high16 v0, 0x74670000

    if-eq v4, v0, :cond_16

    const/high16 v0, 0x72750000

    if-eq v4, v0, :cond_16

    const/high16 v0, 0x656c0000

    if-eq v4, v0, :cond_16

    const/high16 v0, 0x68790000

    if-eq v4, v0, :cond_16

    const/high16 v0, 0x74680000

    if-eq v4, v0, :cond_16

    const/high16 v0, 0x6c6f0000

    if-eq v4, v0, :cond_16

    const/high16 v0, 0x6b6d0000

    if-eq v4, v0, :cond_16

    const/high16 v0, 0x6a610000

    if-ne v4, v0, :cond_17

    :cond_16
    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    const/4 v1, 0x2

    invoke-virtual {v0, v4, v5, v1}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(III)V

    goto :goto_7

    :cond_17
    iget-boolean v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->USE_SYMBOL_LAYOUT_BY_ATT:Z

    if-nez v0, :cond_18

    iget-boolean v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->USE_SYMBOL_LAYOUT_BY_ATT_WITH_NUMBER_KEY_FIRST_LINE:Z

    if-eqz v0, :cond_19

    :cond_18
    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    const/high16 v1, -0x1a920000

    const/4 v11, 0x0

    const/4 v12, 0x2

    invoke-virtual {v0, v1, v11, v12}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(III)V

    goto/16 :goto_7

    :cond_19
    iget-boolean v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mIsUSASymbolLayout:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    const/high16 v1, -0x2a920000

    const/4 v11, 0x0

    const/4 v12, 0x2

    invoke-virtual {v0, v1, v11, v12}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(III)V

    const v2, 0x7f0501a9

    goto/16 :goto_7

    :cond_1a
    const v2, 0x7f0501a9

    goto/16 :goto_5

    :cond_1b
    const/4 v0, 0x1

    if-ne v5, v0, :cond_24

    if-eqz v7, :cond_1c

    const v2, 0x7f050113

    goto/16 :goto_0

    :cond_1c
    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v0}, Lcom/ime/framework/inputmode/InputModeManager;->isKorTabletCji()Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v0}, Lcom/ime/framework/inputmode/InputModeManager;->getInputMethodOnKor()I

    move-result v8

    const/4 v0, 0x1

    if-ne v8, v0, :cond_1d

    :try_start_0
    const-string v0, "phonepad_kr_cji_symbol"

    invoke-static {v0}, Lcom/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_8
    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v1, "SYMBOLS_PAGE"

    const/4 v11, 0x0

    invoke-interface {v0, v1, v11}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/ime/implement/view/ViewControllerImpl;->getCurrentSymbolPageModeId(I)I

    move-result v3

    goto/16 :goto_0

    :cond_1d
    const/4 v0, 0x2

    if-ne v8, v0, :cond_1e

    :try_start_1
    const-string v0, "phonepad_kr_cji_turbo_symbol"

    invoke-static {v0}, Lcom/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v2

    goto :goto_8

    :cond_1e
    const v2, 0x7f050115

    goto :goto_8

    :catch_0
    move-exception v6

    const v2, 0x7f050115

    goto :goto_8

    :cond_1f
    const-string v0, "ISL"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v11, "CscFeature_Sip_ReplaceLocalCurrencyAs"

    invoke-virtual {v1, v11}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-static {v4}, Lcom/ime/framework/util/Utils;->isArabicLanguage(I)Z

    move-result v0

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    const/high16 v1, 0x68650000

    invoke-virtual {v0, v1}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setDefaultLanguage(I)V

    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    const/high16 v1, 0x66610000

    const/4 v11, 0x2

    invoke-virtual {v0, v1, v5, v11}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(III)V

    :cond_20
    :goto_9
    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->isChnMode()Z

    move-result v0

    if-eqz v0, :cond_23

    const v2, 0x7f050117

    goto :goto_8

    :cond_21
    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    const/high16 v1, 0x68650000

    const/4 v11, 0x2

    invoke-virtual {v0, v1, v5, v11}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(III)V

    goto :goto_9

    :cond_22
    invoke-static {v4}, Lcom/ime/framework/util/Utils;->isArabicLanguage(I)Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    const/high16 v1, 0x61720000

    const/4 v11, 0x2

    invoke-virtual {v0, v1, v5, v11}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(III)V

    goto :goto_9

    :cond_23
    const v2, 0x7f050115

    goto :goto_8

    :cond_24
    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->isUseBstHWRPanel()Z

    move-result v0

    if-nez v0, :cond_26

    const/4 v0, 0x2

    if-ne v5, v0, :cond_26

    invoke-direct {p0, v4}, Lcom/ime/implement/view/ViewControllerImpl;->getHWRSymbolKeyboardXmlId(I)I

    move-result v2

    if-eqz v2, :cond_25

    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v1, "SYMBOLS_PAGE"

    const/4 v11, 0x0

    invoke-interface {v0, v1, v11}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/ime/implement/view/ViewControllerImpl;->getCurrentSymbolPageModeId(I)I

    move-result v3

    :goto_a
    sget-boolean v0, Lcom/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "SamsungIME"

    const-string v1, "getSymbolKeyboard() - wrong keyboard mode in s3"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_25
    invoke-direct {p0}, Lcom/ime/implement/view/ViewControllerImpl;->getHWRKeyboardXmlId()I

    move-result v2

    invoke-direct {p0}, Lcom/ime/implement/view/ViewControllerImpl;->getHwrKeyboardModeId()I

    move-result v3

    goto :goto_a

    :cond_26
    const/4 v0, 0x4

    if-ne v5, v0, :cond_27

    const v2, 0x7f050073

    invoke-direct {p0}, Lcom/ime/implement/view/ViewControllerImpl;->getHwrKeyboardModeId()I

    move-result v3

    sget-boolean v0, Lcom/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "SamsungIME"

    const-string v1, "getSymbolKeyboard() - wrong keyboard mode in s3"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_27
    const-string v0, "ISL"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v11, "CscFeature_Sip_ReplaceLocalCurrencyAs"

    invoke-virtual {v1, v11}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-static {v4}, Lcom/ime/framework/util/Utils;->isArabicLanguage(I)Z

    move-result v0

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    const/high16 v1, -0x36290000    # -1761280.0f

    const/4 v11, 0x0

    const/4 v12, 0x2

    invoke-virtual {v0, v1, v11, v12}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(III)V

    :goto_b
    const v2, 0x7f0501a9

    :goto_c
    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v1, "SYMBOLS_PAGE"

    const/4 v11, 0x0

    invoke-interface {v0, v1, v11}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/ime/implement/view/ViewControllerImpl;->getCurrentSymbolPageModeId(I)I

    move-result v3

    goto/16 :goto_0

    :cond_28
    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    const/high16 v1, 0x68650000

    const/4 v11, 0x0

    const/4 v12, 0x2

    invoke-virtual {v0, v1, v11, v12}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(III)V

    goto :goto_b

    :cond_29
    const/high16 v0, 0x61720000

    if-eq v4, v0, :cond_2d

    const/high16 v0, 0x66610000

    if-eq v4, v0, :cond_2d

    const/high16 v0, 0x75720000

    if-eq v4, v0, :cond_2d

    const/high16 v0, 0x68690000

    if-eq v4, v0, :cond_2d

    const/high16 v0, 0x626e0000

    if-eq v4, v0, :cond_2d

    const/high16 v0, 0x67750000

    if-eq v4, v0, :cond_2d

    const/high16 v0, 0x6b6e0000

    if-eq v4, v0, :cond_2d

    const/high16 v0, 0x6d6c0000

    if-eq v4, v0, :cond_2d

    const/high16 v0, 0x6d720000

    if-eq v4, v0, :cond_2d

    const/high16 v0, 0x70610000

    if-eq v4, v0, :cond_2d

    const/high16 v0, 0x73690000

    if-eq v4, v0, :cond_2d

    const/high16 v0, 0x74650000

    if-eq v4, v0, :cond_2d

    const/high16 v0, 0x74610000

    if-eq v4, v0, :cond_2d

    const/high16 v0, 0x61730000

    if-eq v4, v0, :cond_2d

    const/high16 v0, 0x6e650000

    if-eq v4, v0, :cond_2d

    const/high16 v0, 0x6f720000

    if-eq v4, v0, :cond_2d

    iget-boolean v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->USE_SYMBOL_LAYOUT_BY_ATT:Z

    if-nez v0, :cond_2a

    iget-boolean v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->USE_SYMBOL_LAYOUT_BY_ATT_WITH_NUMBER_KEY_FIRST_LINE:Z

    if-eqz v0, :cond_2b

    :cond_2a
    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    const/high16 v1, -0x1a920000

    const/4 v11, 0x0

    const/4 v12, 0x2

    invoke-virtual {v0, v1, v11, v12}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(III)V

    const v2, 0x7f0501a9

    goto :goto_c

    :cond_2b
    iget-boolean v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mIsUSASymbolLayout:Z

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    const/high16 v1, -0x2a920000

    const/4 v11, 0x0

    const/4 v12, 0x2

    invoke-virtual {v0, v1, v11, v12}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(III)V

    const v2, 0x7f0501a9

    goto :goto_c

    :cond_2c
    const v2, 0x7f0501a9

    goto/16 :goto_c

    :cond_2d
    const v2, 0x7f0501a9

    goto/16 :goto_c

    :cond_2e
    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/cocktailbar/CocktailBarFeatures;->isSupportCocktailPanel(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2f

    const v2, 0x7f05007d

    goto/16 :goto_1

    :cond_2f
    const v2, 0x7f05007e

    goto/16 :goto_1

    :cond_30
    new-instance v0, Lcom/ime/framework/view/DefaultKeyboard;

    iget-object v1, p0, Lcom/ime/implement/view/ViewControllerImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/ime/framework/view/DefaultKeyboard;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/ime/framework/view/DefaultKeyboard;

    goto/16 :goto_2

    :cond_31
    iget v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mLanguageID:I

    if-eq v4, v0, :cond_32

    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mPrevKeyboard:Lcom/ime/framework/view/DefaultKeyboard;

    invoke-virtual {v0}, Lcom/ime/framework/view/DefaultKeyboard;->updateKeys()V

    iget-object v1, p0, Lcom/ime/implement/view/ViewControllerImpl;->mPrevKeyboard:Lcom/ime/framework/view/DefaultKeyboard;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/ime/implement/view/ViewControllerImpl;->setCurrentKeyboardInfo(Lcom/ime/framework/view/DefaultKeyboard;IIII)V

    :cond_32
    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mPrevKeyboard:Lcom/ime/framework/view/DefaultKeyboard;

    iput-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/ime/framework/view/DefaultKeyboard;

    goto/16 :goto_3
.end method

.method private getSymbolPopupKeyboard(Z)Lcom/ime/framework/view/DefaultKeyboard;
    .locals 12

    const-string v0, "SamsungIME"

    const-string v1, "getSymbolPopupKeyboard"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/ime/framework/view/DefaultKeyboard;

    const/4 v2, 0x0

    invoke-static {}, Lcom/ime/framework/repository/EditorStatus;->isPhoneNumberInputClass()Z

    move-result v6

    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v1, "INPUT_LANGUAGE"

    const v10, 0x656e4742

    invoke-interface {v0, v1, v10}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v4

    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v0}, Lcom/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v5

    const/4 v3, 0x0

    invoke-static {}, Lcom/ime/framework/repository/InputModeStatus;->getInputRange()I

    move-result v9

    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->isSplitOneHandKeypadRightSet()Z

    move-result v7

    const/4 v0, 0x7

    if-ne v5, v0, :cond_39

    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    invoke-virtual {v0, v4, v5, v9}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(III)V

    if-eqz v6, :cond_7

    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->isSplitEnableOneHandKeypad()Z

    move-result v0

    if-eqz v0, :cond_5

    if-eqz v7, :cond_3

    if-eqz p1, :cond_2

    const v2, 0x7f050217

    :goto_0
    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v0}, Lcom/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v5

    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mPrevKeyboard:Lcom/ime/framework/view/DefaultKeyboard;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputMethodId:I

    if-ne v5, v0, :cond_0

    iget v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mXmlID:I

    if-ne v0, v2, :cond_0

    iget v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mModeID:I

    if-ne v0, v3, :cond_0

    iget-boolean v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mIsLandscape:Z

    iget-object v1, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->isOrientationLandscape()Z

    move-result v1

    if-eq v0, v1, :cond_36

    :cond_0
    if-eqz v3, :cond_35

    new-instance v0, Lcom/ime/framework/view/DefaultKeyboard;

    iget-object v1, p0, Lcom/ime/implement/view/ViewControllerImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2, v3}, Lcom/ime/framework/view/DefaultKeyboard;-><init>(Landroid/content/Context;II)V

    iput-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/ime/framework/view/DefaultKeyboard;

    :goto_1
    iget-object v1, p0, Lcom/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/ime/framework/view/DefaultKeyboard;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/ime/implement/view/ViewControllerImpl;->setCurrentKeyboardInfo(Lcom/ime/framework/view/DefaultKeyboard;IIII)V

    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/ime/framework/view/DefaultKeyboard;

    return-object v0

    :cond_2
    const v2, 0x7f050255

    goto :goto_0

    :cond_3
    if-eqz p1, :cond_4

    const v2, 0x7f050254

    goto :goto_0

    :cond_4
    const v2, 0x7f050217

    goto :goto_0

    :cond_5
    if-eqz p1, :cond_6

    const v2, 0x7f050254

    goto :goto_0

    :cond_6
    const v2, 0x7f050255

    goto :goto_0

    :cond_7
    iget-boolean v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mIsKorMode:Z

    if-eqz v0, :cond_e

    const/high16 v0, 0x6b6f0000

    if-ne v4, v0, :cond_e

    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v0}, Lcom/ime/framework/inputmode/InputModeManager;->getInputMethodOnKor()I

    move-result v8

    const/4 v0, 0x1

    if-ne v8, v0, :cond_a

    if-eqz p1, :cond_9

    const v2, 0x7f05020d

    :cond_8
    :goto_3
    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v1, "SYMBOLS_PAGE"

    const/4 v10, 0x0

    invoke-interface {v0, v1, v10}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/ime/implement/view/ViewControllerImpl;->getCurrentSymbolPageModeId(I)I

    move-result v3

    goto :goto_0

    :cond_9
    const v2, 0x7f05020e

    goto :goto_3

    :cond_a
    const/4 v0, 0x2

    if-ne v8, v0, :cond_c

    if-eqz p1, :cond_b

    const v2, 0x7f05020d

    goto :goto_3

    :cond_b
    const v2, 0x7f050211

    goto :goto_3

    :cond_c
    if-nez v8, :cond_8

    if-eqz p1, :cond_d

    const v2, 0x7f05022d

    goto :goto_3

    :cond_d
    const v2, 0x7f050238

    goto :goto_3

    :cond_e
    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->isSplitEnableOneHandKeypad()Z

    move-result v0

    if-eqz v0, :cond_20

    if-eqz v7, :cond_17

    if-eqz p1, :cond_16

    const/high16 v0, 0x61720000

    if-ne v4, v0, :cond_f

    const v2, 0x7f05022e

    goto :goto_3

    :cond_f
    const/high16 v0, 0x66610000

    if-ne v4, v0, :cond_10

    const v2, 0x7f050231

    goto :goto_3

    :cond_10
    const/high16 v0, 0x75720000

    if-ne v4, v0, :cond_11

    const v2, 0x7f050235

    goto :goto_3

    :cond_11
    iget-boolean v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->USE_SYMBOL_LAYOUT_BY_ATT:Z

    if-eqz v0, :cond_12

    const v2, 0x7f05022f

    goto :goto_3

    :cond_12
    iget-boolean v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->USE_SYMBOL_LAYOUT_BY_ATT_WITH_NUMBER_KEY_FIRST_LINE:Z

    if-eqz v0, :cond_13

    const v2, 0x7f050230

    goto :goto_3

    :cond_13
    iget-boolean v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mIsUSASymbolLayout:Z

    if-eqz v0, :cond_14

    const v2, 0x7f050236

    goto :goto_3

    :cond_14
    iget-boolean v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mIsKorMode:Z

    if-eqz v0, :cond_15

    const v2, 0x7f050233

    goto :goto_3

    :cond_15
    const v2, 0x7f05022d

    goto :goto_3

    :cond_16
    const v2, 0x7f050217

    goto :goto_3

    :cond_17
    if-eqz p1, :cond_18

    const v2, 0x7f050217

    goto :goto_3

    :cond_18
    const/high16 v0, 0x61720000

    if-ne v4, v0, :cond_19

    const v2, 0x7f05022e

    goto/16 :goto_3

    :cond_19
    const/high16 v0, 0x66610000

    if-ne v4, v0, :cond_1a

    const v2, 0x7f050231

    goto/16 :goto_3

    :cond_1a
    const/high16 v0, 0x75720000

    if-ne v4, v0, :cond_1b

    const v2, 0x7f050235

    goto/16 :goto_3

    :cond_1b
    iget-boolean v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->USE_SYMBOL_LAYOUT_BY_ATT:Z

    if-eqz v0, :cond_1c

    const v2, 0x7f05022f

    goto/16 :goto_3

    :cond_1c
    iget-boolean v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->USE_SYMBOL_LAYOUT_BY_ATT_WITH_NUMBER_KEY_FIRST_LINE:Z

    if-eqz v0, :cond_1d

    const v2, 0x7f050230

    goto/16 :goto_3

    :cond_1d
    iget-boolean v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mIsUSASymbolLayout:Z

    if-eqz v0, :cond_1e

    const v2, 0x7f050236

    goto/16 :goto_3

    :cond_1e
    iget-boolean v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mIsKorMode:Z

    if-eqz v0, :cond_1f

    const v2, 0x7f050233

    goto/16 :goto_3

    :cond_1f
    const v2, 0x7f05022d

    goto/16 :goto_3

    :cond_20
    const-string v0, "ISL"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v10, "CscFeature_Sip_ReplaceLocalCurrencyAs"

    invoke-virtual {v1, v10}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-static {v4}, Lcom/ime/framework/util/Utils;->isArabicLanguage(I)Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    const/high16 v1, -0x36290000    # -1761280.0f

    const/4 v10, 0x7

    const/4 v11, 0x2

    invoke-virtual {v0, v1, v10, v11}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(III)V

    :cond_21
    :goto_4
    if-eqz p1, :cond_33

    const v2, 0x7f05022d

    goto/16 :goto_3

    :cond_22
    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    const/high16 v1, 0x68650000

    const/4 v10, 0x7

    const/4 v11, 0x2

    invoke-virtual {v0, v1, v10, v11}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(III)V

    goto :goto_4

    :cond_23
    const/high16 v0, 0x65730000

    if-eq v4, v0, :cond_24

    const v0, 0x65734553

    if-eq v4, v0, :cond_24

    const v0, 0x65735553

    if-ne v4, v0, :cond_25

    :cond_24
    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    const/high16 v1, 0x65730000

    const/4 v10, 0x7

    const/4 v11, 0x2

    invoke-virtual {v0, v1, v10, v11}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(III)V

    goto :goto_4

    :cond_25
    const/high16 v0, 0x61660000

    if-eq v4, v0, :cond_26

    const/high16 v0, 0x7a750000

    if-eq v4, v0, :cond_26

    const/high16 v0, 0x78680000

    if-ne v4, v0, :cond_27

    :cond_26
    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    const/high16 v1, 0x61660000

    const/4 v10, 0x7

    const/4 v11, 0x2

    invoke-virtual {v0, v1, v10, v11}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(III)V

    goto :goto_4

    :cond_27
    const/high16 v0, 0x61720000

    if-eq v4, v0, :cond_28

    const/high16 v0, 0x75720000

    if-eq v4, v0, :cond_28

    const/high16 v0, 0x66610000

    if-ne v4, v0, :cond_29

    :cond_28
    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    const/high16 v1, 0x61720000

    const/4 v10, 0x7

    const/4 v11, 0x2

    invoke-virtual {v0, v1, v10, v11}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(III)V

    goto :goto_4

    :cond_29
    const/high16 v0, 0x7a680000

    if-eq v4, v0, :cond_2a

    const v0, 0x7a68434e

    if-eq v4, v0, :cond_2a

    const v0, 0x7a68484b

    if-eq v4, v0, :cond_2a

    const v0, 0x7a685457

    if-ne v4, v0, :cond_2b

    :cond_2a
    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    const/high16 v1, 0x7a680000

    const/4 v10, 0x7

    const/4 v11, 0x2

    invoke-virtual {v0, v1, v10, v11}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(III)V

    goto :goto_4

    :cond_2b
    const/high16 v0, 0x74670000

    if-eq v4, v0, :cond_2c

    const/high16 v0, 0x72750000

    if-eq v4, v0, :cond_2c

    const/high16 v0, 0x656c0000

    if-eq v4, v0, :cond_2c

    const/high16 v0, 0x68790000

    if-eq v4, v0, :cond_2c

    const/high16 v0, 0x74680000

    if-eq v4, v0, :cond_2c

    const/high16 v0, 0x6c6f0000

    if-eq v4, v0, :cond_2c

    const/high16 v0, 0x6b6d0000

    if-eq v4, v0, :cond_2c

    const/high16 v0, 0x6a610000

    if-ne v4, v0, :cond_2d

    :cond_2c
    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    const/4 v1, 0x2

    invoke-virtual {v0, v4, v5, v1}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(III)V

    goto/16 :goto_4

    :cond_2d
    invoke-static {v4}, Lcom/ime/framework/util/Utils;->isIndianLanguage(I)Z

    move-result v0

    if-eqz v0, :cond_30

    const/high16 v0, 0x73690000

    if-eq v4, v0, :cond_2e

    const/high16 v0, 0x6e650000

    if-ne v4, v0, :cond_2f

    :cond_2e
    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    const/high16 v1, 0x6e650000

    const/4 v10, 0x2

    invoke-virtual {v0, v1, v5, v10}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(III)V

    goto/16 :goto_4

    :cond_2f
    const/high16 v0, 0x6d6e0000

    if-eq v4, v0, :cond_21

    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    const/high16 v1, 0x68690000

    const/4 v10, 0x2

    invoke-virtual {v0, v1, v5, v10}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(III)V

    goto/16 :goto_4

    :cond_30
    iget-boolean v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->USE_SYMBOL_LAYOUT_BY_ATT:Z

    if-nez v0, :cond_31

    iget-boolean v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->USE_SYMBOL_LAYOUT_BY_ATT_WITH_NUMBER_KEY_FIRST_LINE:Z

    if-eqz v0, :cond_32

    :cond_31
    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    const/high16 v1, -0x1a920000

    const/4 v10, 0x7

    const/4 v11, 0x2

    invoke-virtual {v0, v1, v10, v11}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(III)V

    goto/16 :goto_4

    :cond_32
    iget-boolean v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mIsUSASymbolLayout:Z

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    const/high16 v1, -0x2a920000

    const/4 v10, 0x7

    const/4 v11, 0x2

    invoke-virtual {v0, v1, v10, v11}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(III)V

    goto/16 :goto_4

    :cond_33
    invoke-static {v4}, Lcom/ime/framework/util/Utils;->isIndianLanguage(I)Z

    move-result v0

    if-eqz v0, :cond_34

    const v2, 0x7f050208

    goto/16 :goto_3

    :cond_34
    const v2, 0x7f050238

    goto/16 :goto_3

    :cond_35
    new-instance v0, Lcom/ime/framework/view/DefaultKeyboard;

    iget-object v1, p0, Lcom/ime/implement/view/ViewControllerImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/ime/framework/view/DefaultKeyboard;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/ime/framework/view/DefaultKeyboard;

    goto/16 :goto_1

    :cond_36
    iget v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mLanguageID:I

    if-ne v4, v0, :cond_37

    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->isUpdateKeyboardCodeValues()Z

    move-result v0

    if-eqz v0, :cond_38

    :cond_37
    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mPrevKeyboard:Lcom/ime/framework/view/DefaultKeyboard;

    invoke-virtual {v0}, Lcom/ime/framework/view/DefaultKeyboard;->updateKeys()V

    iget-object v1, p0, Lcom/ime/implement/view/ViewControllerImpl;->mPrevKeyboard:Lcom/ime/framework/view/DefaultKeyboard;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/ime/implement/view/ViewControllerImpl;->setCurrentKeyboardInfo(Lcom/ime/framework/view/DefaultKeyboard;IIII)V

    :cond_38
    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mPrevKeyboard:Lcom/ime/framework/view/DefaultKeyboard;

    iput-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/ime/framework/view/DefaultKeyboard;

    goto/16 :goto_2

    :cond_39
    const/16 v0, 0x8

    if-ne v5, v0, :cond_1

    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    invoke-virtual {v0, v4, v5, v9}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(III)V

    if-eqz v6, :cond_3b

    const v2, 0x7f050032

    :goto_5
    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v0}, Lcom/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v5

    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mPrevKeyboard:Lcom/ime/framework/view/DefaultKeyboard;

    if-eqz v0, :cond_3a

    iget v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputMethodId:I

    if-ne v5, v0, :cond_3a

    iget v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mXmlID:I

    if-ne v0, v2, :cond_3a

    iget v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mModeID:I

    if-ne v0, v3, :cond_3a

    iget-boolean v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mIsLandscape:Z

    iget-object v1, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->isOrientationLandscape()Z

    move-result v1

    if-eq v0, v1, :cond_51

    :cond_3a
    if-eqz v3, :cond_50

    new-instance v0, Lcom/ime/framework/view/DefaultKeyboard;

    iget-object v1, p0, Lcom/ime/implement/view/ViewControllerImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2, v3}, Lcom/ime/framework/view/DefaultKeyboard;-><init>(Landroid/content/Context;II)V

    iput-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/ime/framework/view/DefaultKeyboard;

    :goto_6
    iget-object v1, p0, Lcom/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/ime/framework/view/DefaultKeyboard;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/ime/implement/view/ViewControllerImpl;->setCurrentKeyboardInfo(Lcom/ime/framework/view/DefaultKeyboard;IIII)V

    goto/16 :goto_2

    :cond_3b
    const-string v0, "ISL"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v10, "CscFeature_Sip_ReplaceLocalCurrencyAs"

    invoke-virtual {v1, v10}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3d

    invoke-static {v4}, Lcom/ime/framework/util/Utils;->isArabicLanguage(I)Z

    move-result v0

    if-eqz v0, :cond_3c

    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    const/high16 v1, -0x36290000    # -1761280.0f

    const/16 v10, 0x8

    const/4 v11, 0x2

    invoke-virtual {v0, v1, v10, v11}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(III)V

    :goto_7
    const v2, 0x7f050014

    :goto_8
    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v1, "SYMBOLS_PAGE"

    const/4 v10, 0x0

    invoke-interface {v0, v1, v10}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/ime/implement/view/ViewControllerImpl;->getCurrentSymbolPageModeId(I)I

    move-result v3

    goto :goto_5

    :cond_3c
    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    const/high16 v1, 0x68650000

    const/16 v10, 0x8

    const/4 v11, 0x2

    invoke-virtual {v0, v1, v10, v11}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(III)V

    goto :goto_7

    :cond_3d
    invoke-static {v4}, Lcom/ime/framework/util/Utils;->isIndianLanguage(I)Z

    move-result v0

    if-eqz v0, :cond_41

    const/high16 v0, 0x73690000

    if-eq v4, v0, :cond_3e

    const/high16 v0, 0x6e650000

    if-ne v4, v0, :cond_40

    :cond_3e
    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    const/high16 v1, 0x6e650000

    const/4 v10, 0x2

    invoke-virtual {v0, v1, v5, v10}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(III)V

    :cond_3f
    :goto_9
    const v2, 0x7f05000c

    goto :goto_8

    :cond_40
    const/high16 v0, 0x6d6e0000

    if-eq v4, v0, :cond_3f

    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    const/high16 v1, 0x68690000

    const/4 v10, 0x2

    invoke-virtual {v0, v1, v5, v10}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(III)V

    goto :goto_9

    :cond_41
    const/high16 v0, 0x65730000

    if-eq v4, v0, :cond_42

    const v0, 0x65734553

    if-eq v4, v0, :cond_42

    const v0, 0x65735553

    if-ne v4, v0, :cond_44

    :cond_42
    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    const/high16 v1, 0x65730000

    const/4 v10, 0x0

    const/4 v11, 0x2

    invoke-virtual {v0, v1, v10, v11}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(III)V

    :cond_43
    :goto_a
    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->isChnMode()Z

    move-result v0

    if-eqz v0, :cond_4f

    const v2, 0x7f050034

    goto :goto_8

    :cond_44
    const/high16 v0, 0x61660000

    if-eq v4, v0, :cond_45

    const/high16 v0, 0x7a750000

    if-eq v4, v0, :cond_45

    const/high16 v0, 0x78680000

    if-ne v4, v0, :cond_46

    :cond_45
    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    const/high16 v1, 0x61660000

    const/4 v10, 0x0

    const/4 v11, 0x2

    invoke-virtual {v0, v1, v10, v11}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(III)V

    goto :goto_a

    :cond_46
    const/high16 v0, 0x61720000

    if-eq v4, v0, :cond_47

    const/high16 v0, 0x75720000

    if-eq v4, v0, :cond_47

    const/high16 v0, 0x66610000

    if-ne v4, v0, :cond_48

    :cond_47
    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    const/high16 v1, 0x61720000

    const/4 v10, 0x0

    const/4 v11, 0x2

    invoke-virtual {v0, v1, v10, v11}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(III)V

    goto :goto_a

    :cond_48
    const/high16 v0, 0x7a680000

    if-eq v4, v0, :cond_49

    const v0, 0x7a68434e

    if-eq v4, v0, :cond_49

    const v0, 0x7a68484b

    if-eq v4, v0, :cond_49

    const v0, 0x7a685457

    if-ne v4, v0, :cond_4a

    :cond_49
    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    const/high16 v1, 0x7a680000

    const/4 v10, 0x0

    const/4 v11, 0x2

    invoke-virtual {v0, v1, v10, v11}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(III)V

    goto :goto_a

    :cond_4a
    const/high16 v0, 0x74670000

    if-eq v4, v0, :cond_4b

    const/high16 v0, 0x72750000

    if-eq v4, v0, :cond_4b

    const/high16 v0, 0x656c0000

    if-eq v4, v0, :cond_4b

    const/high16 v0, 0x68790000

    if-eq v4, v0, :cond_4b

    const/high16 v0, 0x74680000

    if-eq v4, v0, :cond_4b

    const/high16 v0, 0x6c6f0000

    if-eq v4, v0, :cond_4b

    const/high16 v0, 0x6b6d0000

    if-eq v4, v0, :cond_4b

    const/high16 v0, 0x6a610000

    if-ne v4, v0, :cond_4c

    :cond_4b
    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    invoke-virtual {v0, v4, v5, v9}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(III)V

    goto :goto_a

    :cond_4c
    iget-boolean v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->USE_SYMBOL_LAYOUT_BY_ATT:Z

    if-nez v0, :cond_4d

    iget-boolean v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->USE_SYMBOL_LAYOUT_BY_ATT_WITH_NUMBER_KEY_FIRST_LINE:Z

    if-eqz v0, :cond_4e

    :cond_4d
    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    const/high16 v1, -0x1a920000

    const/16 v10, 0x8

    const/4 v11, 0x2

    invoke-virtual {v0, v1, v10, v11}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(III)V

    goto/16 :goto_a

    :cond_4e
    iget-boolean v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mIsUSASymbolLayout:Z

    if-eqz v0, :cond_43

    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    const/high16 v1, -0x2a920000

    const/16 v10, 0x8

    const/4 v11, 0x2

    invoke-virtual {v0, v1, v10, v11}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(III)V

    goto/16 :goto_a

    :cond_4f
    const v2, 0x7f050014

    goto/16 :goto_8

    :cond_50
    new-instance v0, Lcom/ime/framework/view/DefaultKeyboard;

    iget-object v1, p0, Lcom/ime/implement/view/ViewControllerImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/ime/framework/view/DefaultKeyboard;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/ime/framework/view/DefaultKeyboard;

    goto/16 :goto_6

    :cond_51
    iget v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mLanguageID:I

    if-eq v4, v0, :cond_52

    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mPrevKeyboard:Lcom/ime/framework/view/DefaultKeyboard;

    invoke-virtual {v0}, Lcom/ime/framework/view/DefaultKeyboard;->updateKeys()V

    iget-object v1, p0, Lcom/ime/implement/view/ViewControllerImpl;->mPrevKeyboard:Lcom/ime/framework/view/DefaultKeyboard;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/ime/implement/view/ViewControllerImpl;->setCurrentKeyboardInfo(Lcom/ime/framework/view/DefaultKeyboard;IIII)V

    :cond_52
    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mPrevKeyboard:Lcom/ime/framework/view/DefaultKeyboard;

    iput-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/ime/framework/view/DefaultKeyboard;

    goto/16 :goto_2
.end method

.method private getTextKeyboard()Lcom/ime/framework/view/DefaultKeyboard;
    .locals 12

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v9, "SamsungIME"

    const-string v10, "getTextKeyboard"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x0

    iput-object v9, p0, Lcom/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/ime/framework/view/DefaultKeyboard;

    const/4 v2, 0x0

    iget-object v9, p0, Lcom/ime/implement/view/ViewControllerImpl;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v10, "INPUT_LANGUAGE"

    const v11, 0x656e4742

    invoke-interface {v9, v10, v11}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v4

    iget-object v9, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v9}, Lcom/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v5

    iget-object v9, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v9}, Lcom/ime/framework/common/InputManager;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v7

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/ime/implement/view/ViewControllerImpl;->isEnableOneHandKeypad()Z

    move-result v6

    iget-object v9, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v9}, Lcom/ime/framework/common/InputManager;->isCurrentCarModeTouchSIP()Z

    move-result v9

    if-eqz v9, :cond_0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :cond_0
    if-nez v5, :cond_6

    if-eqz v6, :cond_3

    invoke-direct {p0, v4}, Lcom/ime/implement/view/ViewControllerImpl;->getOneHandQwertyKeyboardXmlId(I)I

    move-result v2

    :goto_0
    invoke-direct {p0, v7}, Lcom/ime/implement/view/ViewControllerImpl;->getTextKeyboardModeId(Landroid/view/inputmethod/EditorInfo;)I

    move-result v3

    :goto_1
    const/4 v8, 0x0

    iget-object v9, p0, Lcom/ime/implement/view/ViewControllerImpl;->mPrevKeyboard:Lcom/ime/framework/view/DefaultKeyboard;

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v9}, Lcom/ime/framework/common/InputManager;->isChnMode()Z

    move-result v9

    if-eqz v9, :cond_e

    iget-object v9, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v9}, Lcom/ime/framework/common/InputManager;->isShuangPinMode()Z

    move-result v9

    iget-object v10, p0, Lcom/ime/implement/view/ViewControllerImpl;->mPrevKeyboard:Lcom/ime/framework/view/DefaultKeyboard;

    iget-boolean v10, v10, Lcom/ime/framework/view/DefaultKeyboard;->mIsShuangPinMode:Z

    if-eq v9, v10, :cond_e

    move v8, v0

    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mPrevKeyboard:Lcom/ime/framework/view/DefaultKeyboard;

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputMethodId:I

    if-ne v5, v0, :cond_2

    iget v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mXmlID:I

    if-ne v0, v2, :cond_2

    iget v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mModeID:I

    if-ne v0, v3, :cond_2

    iget-boolean v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mIsLandscape:Z

    iget-object v9, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v9}, Lcom/ime/framework/common/InputManager;->isOrientationLandscape()Z

    move-result v9

    if-ne v0, v9, :cond_2

    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->getNeedChangeKeyboardHeight()Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz v8, :cond_10

    :cond_2
    if-eqz v3, :cond_f

    new-instance v0, Lcom/ime/framework/view/DefaultKeyboard;

    iget-object v9, p0, Lcom/ime/implement/view/ViewControllerImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v9, v2, v3}, Lcom/ime/framework/view/DefaultKeyboard;-><init>(Landroid/content/Context;II)V

    iput-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/ime/framework/view/DefaultKeyboard;

    :goto_3
    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0, v1}, Lcom/ime/framework/common/InputManager;->setNeedChangeKeyboardHeight(Z)V

    iget-object v1, p0, Lcom/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/ime/framework/view/DefaultKeyboard;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/ime/implement/view/ViewControllerImpl;->setCurrentKeyboardInfo(Lcom/ime/framework/view/DefaultKeyboard;IIII)V

    :goto_4
    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/ime/framework/view/DefaultKeyboard;

    return-object v0

    :cond_3
    iget-object v9, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v9}, Lcom/ime/framework/common/InputManager;->isFullLandMode()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-direct {p0, v4}, Lcom/ime/implement/view/ViewControllerImpl;->getDualFullQwertyKeyboardXmlId(I)I

    move-result v2

    goto :goto_0

    :cond_4
    iget-object v9, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v9}, Lcom/ime/framework/common/InputManager;->isDualLandMode()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-direct {p0, v4}, Lcom/ime/implement/view/ViewControllerImpl;->getDualQwertyKeyboardXmlId(I)I

    move-result v2

    goto :goto_0

    :cond_5
    invoke-direct {p0, v4}, Lcom/ime/implement/view/ViewControllerImpl;->getQwertyKeyboardXmlId(I)I

    move-result v2

    goto :goto_0

    :cond_6
    const/4 v9, 0x2

    if-ne v5, v9, :cond_8

    iget-object v9, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v9}, Lcom/ime/framework/common/InputManager;->isUseBstHWRPanel()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-direct {p0}, Lcom/ime/implement/view/ViewControllerImpl;->getHWRKeyboardXmlId()I

    move-result v2

    invoke-direct {p0, v7}, Lcom/ime/implement/view/ViewControllerImpl;->getBoxTextKeyboardModeId(Landroid/view/inputmethod/EditorInfo;)I

    move-result v3

    iget-object v9, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v9}, Lcom/ime/framework/common/InputManager;->getHWManager()Lcom/ime/framework/engine/bsthwr/HWManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/ime/framework/engine/bsthwr/HWManager;->showBoxHandwritingViewVisible()V

    goto/16 :goto_1

    :cond_7
    invoke-direct {p0}, Lcom/ime/implement/view/ViewControllerImpl;->getHWRKeyboardXmlId()I

    move-result v2

    invoke-direct {p0}, Lcom/ime/implement/view/ViewControllerImpl;->getHwrKeyboardModeId()I

    move-result v3

    goto/16 :goto_1

    :cond_8
    const/4 v9, 0x4

    if-ne v5, v9, :cond_a

    iget-object v9, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v9}, Lcom/ime/framework/common/InputManager;->isUseBstHWRPanel()Z

    move-result v9

    if-eqz v9, :cond_9

    const v2, 0x7f050003

    invoke-direct {p0, v7}, Lcom/ime/implement/view/ViewControllerImpl;->getFullScreenTextKeyboardModeId(Landroid/view/inputmethod/EditorInfo;)I

    move-result v3

    iget-object v9, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v9}, Lcom/ime/framework/common/InputManager;->getHWManager()Lcom/ime/framework/engine/bsthwr/HWManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/ime/framework/engine/bsthwr/HWManager;->showFSHandwritingViewVisible()V

    goto/16 :goto_1

    :cond_9
    const v2, 0x7f050073

    invoke-direct {p0}, Lcom/ime/implement/view/ViewControllerImpl;->getHwrKeyboardModeId()I

    move-result v3

    goto/16 :goto_1

    :cond_a
    if-ne v5, v0, :cond_c

    if-eqz v6, :cond_b

    invoke-direct {p0, v4}, Lcom/ime/implement/view/ViewControllerImpl;->getOneHandPhonepadXmlId(I)I

    move-result v2

    :goto_5
    invoke-direct {p0, v7}, Lcom/ime/implement/view/ViewControllerImpl;->getTextKeyboardModeId(Landroid/view/inputmethod/EditorInfo;)I

    move-result v3

    goto/16 :goto_1

    :cond_b
    invoke-direct {p0, v4}, Lcom/ime/implement/view/ViewControllerImpl;->getPhonepadXmlId(I)I

    move-result v2

    goto :goto_5

    :cond_c
    if-eqz v6, :cond_d

    invoke-direct {p0, v4}, Lcom/ime/implement/view/ViewControllerImpl;->getOneHandQwertyKeyboardXmlId(I)I

    move-result v2

    :goto_6
    invoke-direct {p0, v7}, Lcom/ime/implement/view/ViewControllerImpl;->getTextKeyboardModeId(Landroid/view/inputmethod/EditorInfo;)I

    move-result v3

    goto/16 :goto_1

    :cond_d
    invoke-direct {p0, v4}, Lcom/ime/implement/view/ViewControllerImpl;->getQwertyKeyboardXmlId(I)I

    move-result v2

    goto :goto_6

    :cond_e
    move v8, v1

    goto/16 :goto_2

    :cond_f
    new-instance v0, Lcom/ime/framework/view/DefaultKeyboard;

    iget-object v9, p0, Lcom/ime/implement/view/ViewControllerImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v9, v2}, Lcom/ime/framework/view/DefaultKeyboard;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/ime/framework/view/DefaultKeyboard;

    goto/16 :goto_3

    :cond_10
    iget v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mLanguageID:I

    if-ne v4, v0, :cond_11

    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->isUpdateKeyboardCodeValues()Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_11
    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mPrevKeyboard:Lcom/ime/framework/view/DefaultKeyboard;

    invoke-virtual {v0}, Lcom/ime/framework/view/DefaultKeyboard;->updateKeys()V

    iget-object v1, p0, Lcom/ime/implement/view/ViewControllerImpl;->mPrevKeyboard:Lcom/ime/framework/view/DefaultKeyboard;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/ime/implement/view/ViewControllerImpl;->setCurrentKeyboardInfo(Lcom/ime/framework/view/DefaultKeyboard;IIII)V

    :cond_12
    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mPrevKeyboard:Lcom/ime/framework/view/DefaultKeyboard;

    iput-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/ime/framework/view/DefaultKeyboard;

    goto/16 :goto_4
.end method

.method private getTextKeyboardModeId(Landroid/view/inputmethod/EditorInfo;)I
    .locals 11

    if-eqz p1, :cond_0

    iget-object v8, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    if-nez v8, :cond_1

    :cond_0
    const/4 v8, 0x0

    :goto_0
    return v8

    :cond_1
    iget-object v8, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/ime/framework/common/InputManager;->isCurrentCarModeTouchSIP()Z

    move-result v8

    if-eqz v8, :cond_2

    const v8, 0x7f100144

    goto :goto_0

    :cond_2
    iget-object v8, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/ime/framework/common/InputManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v7

    const-string v8, "da_mode"

    const/4 v9, 0x0

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iget v8, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/lit8 v0, v8, 0xf

    iget v8, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/lit16 v1, v8, 0xff0

    invoke-static {}, Lcom/ime/framework/repository/InputModeStatus;->getInputRange()I

    move-result v3

    iget-object v8, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v8}, Lcom/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v2

    const/16 v8, 0x8

    if-ne v2, v8, :cond_4

    iget-object v8, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v8}, Lcom/ime/framework/inputmode/InputModeManager;->isFloatingPhonepadKeyboardForMultiWindow()Z

    move-result v8

    if-nez v8, :cond_4

    const/4 v5, 0x1

    :goto_1
    const/4 v6, 0x0

    iget-boolean v8, p0, Lcom/ime/implement/view/ViewControllerImpl;->mIsTabletMode:Z

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/ime/implement/view/ViewControllerImpl;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v9, "SETTINGS_DEFAULT_VOICE_INPUT"

    const/4 v10, 0x0

    invoke-interface {v8, v9, v10}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_5

    iget-object v8, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    if-eqz v8, :cond_5

    iget-object v8, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v8}, Lcom/ime/framework/inputmode/InputModeManager;->isVoiceInputEnabled()Z

    move-result v8

    if-eqz v8, :cond_5

    const/4 v6, 0x1

    :cond_3
    :goto_2
    if-nez v3, :cond_14

    packed-switch v0, :pswitch_data_0

    sparse-switch v1, :sswitch_data_0

    iget-boolean v8, p0, Lcom/ime/implement/view/ViewControllerImpl;->mIsTabletMode:Z

    if-eqz v8, :cond_d

    iget-object v8, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/ime/framework/common/InputManager;->getSelectedLanguageList()[Lcom/ime/framework/common/Language;

    move-result-object v8

    array-length v8, v8

    const/4 v9, 0x1

    if-le v8, v9, :cond_c

    if-nez v4, :cond_c

    const v8, 0x7f10011f

    goto :goto_0

    :cond_4
    const/4 v5, 0x0

    goto :goto_1

    :cond_5
    const/4 v6, 0x0

    goto :goto_2

    :pswitch_0
    iget-object v8, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v8}, Lcom/ime/framework/inputmode/InputModeManager;->isKorTabletCji()Z

    move-result v8

    if-eqz v8, :cond_7

    iget-object v8, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/ime/framework/common/InputManager;->getSelectedLanguageList()[Lcom/ime/framework/common/Language;

    move-result-object v8

    array-length v8, v8

    const/4 v9, 0x1

    if-le v8, v9, :cond_6

    const v8, 0x7f10011f

    goto/16 :goto_0

    :cond_6
    const v8, 0x7f100120

    goto/16 :goto_0

    :cond_7
    const/4 v8, 0x0

    goto/16 :goto_0

    :sswitch_0
    iget-object v8, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/ime/framework/common/InputManager;->getSelectedLanguageList()[Lcom/ime/framework/common/Language;

    move-result-object v8

    array-length v8, v8

    const/4 v9, 0x1

    if-le v8, v9, :cond_9

    if-nez v4, :cond_9

    invoke-virtual {p0}, Lcom/ime/implement/view/ViewControllerImpl;->isUseGlobalKey()Z

    move-result v8

    if-nez v8, :cond_8

    iget-boolean v8, p0, Lcom/ime/implement/view/ViewControllerImpl;->mIsTabletMode:Z

    if-nez v8, :cond_8

    const v8, 0x7f100122

    goto/16 :goto_0

    :cond_8
    const v8, 0x7f100124

    goto/16 :goto_0

    :cond_9
    const v8, 0x7f100122

    goto/16 :goto_0

    :sswitch_1
    iget-object v8, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/ime/framework/common/InputManager;->getSelectedLanguageList()[Lcom/ime/framework/common/Language;

    move-result-object v8

    array-length v8, v8

    const/4 v9, 0x1

    if-le v8, v9, :cond_b

    if-nez v4, :cond_b

    invoke-virtual {p0}, Lcom/ime/implement/view/ViewControllerImpl;->isUseGlobalKey()Z

    move-result v8

    if-nez v8, :cond_a

    iget-boolean v8, p0, Lcom/ime/implement/view/ViewControllerImpl;->mIsTabletMode:Z

    if-nez v8, :cond_a

    const v8, 0x7f100121

    goto/16 :goto_0

    :cond_a
    const v8, 0x7f100123

    goto/16 :goto_0

    :cond_b
    const v8, 0x7f100121

    goto/16 :goto_0

    :cond_c
    const v8, 0x7f100120

    goto/16 :goto_0

    :cond_d
    iget-object v8, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/ime/framework/common/InputManager;->getSelectedLanguageList()[Lcom/ime/framework/common/Language;

    move-result-object v8

    array-length v8, v8

    const/4 v9, 0x1

    if-le v8, v9, :cond_11

    if-nez v4, :cond_11

    invoke-virtual {p0}, Lcom/ime/implement/view/ViewControllerImpl;->isUseGlobalKey()Z

    move-result v8

    if-nez v8, :cond_10

    iget-boolean v8, p0, Lcom/ime/implement/view/ViewControllerImpl;->mIsCommaKeyAsDefault:Z

    if-eqz v8, :cond_f

    if-eqz v2, :cond_e

    if-eqz v5, :cond_f

    :cond_e
    const v8, 0x7f100125

    goto/16 :goto_0

    :cond_f
    const v8, 0x7f100120

    goto/16 :goto_0

    :cond_10
    const v8, 0x7f10011f

    goto/16 :goto_0

    :cond_11
    iget-boolean v8, p0, Lcom/ime/implement/view/ViewControllerImpl;->mIsCommaKeyAsDefault:Z

    if-eqz v8, :cond_13

    if-eqz v2, :cond_12

    if-eqz v5, :cond_13

    :cond_12
    const v8, 0x7f100125

    goto/16 :goto_0

    :cond_13
    const v8, 0x7f100120

    goto/16 :goto_0

    :cond_14
    const/4 v8, 0x0

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_1
        0x20 -> :sswitch_0
        0xd0 -> :sswitch_0
    .end sparse-switch
.end method

.method private getTextPopupKeyboard(Z)Lcom/ime/framework/view/DefaultKeyboard;
    .locals 9

    const-string v0, "SamsungIME"

    const-string v1, "getTextPopupKeyboard"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/ime/framework/view/DefaultKeyboard;

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v1, "INPUT_LANGUAGE"

    const v8, 0x656e4742

    invoke-interface {v0, v1, v8}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v4

    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v0}, Lcom/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v5

    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v6

    const/4 v3, 0x0

    const/4 v0, 0x7

    if-ne v5, v0, :cond_3

    if-eqz p1, :cond_2

    invoke-direct {p0, v4}, Lcom/ime/implement/view/ViewControllerImpl;->getSplitLeftKeyboardXmlId(I)I

    move-result v2

    :goto_0
    invoke-direct {p0, v6}, Lcom/ime/implement/view/ViewControllerImpl;->getTextKeyboardModeId(Landroid/view/inputmethod/EditorInfo;)I

    move-result v3

    :goto_1
    const/4 v7, 0x0

    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mPrevKeyboard:Lcom/ime/framework/view/DefaultKeyboard;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->isChnMode()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->isShuangPinMode()Z

    move-result v0

    iget-object v1, p0, Lcom/ime/implement/view/ViewControllerImpl;->mPrevKeyboard:Lcom/ime/framework/view/DefaultKeyboard;

    iget-boolean v1, v1, Lcom/ime/framework/view/DefaultKeyboard;->mIsShuangPinMode:Z

    if-eq v0, v1, :cond_8

    const/4 v7, 0x1

    :cond_0
    :goto_2
    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mPrevKeyboard:Lcom/ime/framework/view/DefaultKeyboard;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputMethodId:I

    if-ne v5, v0, :cond_1

    iget v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mXmlID:I

    if-ne v0, v2, :cond_1

    iget v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mModeID:I

    if-ne v0, v3, :cond_1

    iget-boolean v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mIsLandscape:Z

    iget-object v1, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->isOrientationLandscape()Z

    move-result v1

    if-ne v0, v1, :cond_1

    if-eqz v7, :cond_a

    :cond_1
    if-eqz v3, :cond_9

    new-instance v0, Lcom/ime/framework/view/DefaultKeyboard;

    iget-object v1, p0, Lcom/ime/implement/view/ViewControllerImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2, v3}, Lcom/ime/framework/view/DefaultKeyboard;-><init>(Landroid/content/Context;II)V

    iput-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/ime/framework/view/DefaultKeyboard;

    :goto_3
    iget-object v1, p0, Lcom/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/ime/framework/view/DefaultKeyboard;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/ime/implement/view/ViewControllerImpl;->setCurrentKeyboardInfo(Lcom/ime/framework/view/DefaultKeyboard;IIII)V

    :goto_4
    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/ime/framework/view/DefaultKeyboard;

    return-object v0

    :cond_2
    invoke-direct {p0, v4}, Lcom/ime/implement/view/ViewControllerImpl;->getSplitRightKeyboardXmlId(I)I

    move-result v2

    goto :goto_0

    :cond_3
    const/16 v0, 0x8

    if-ne v5, v0, :cond_7

    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v0}, Lcom/ime/framework/inputmode/InputModeManager;->isFloatingHWRKeyboard()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v0}, Lcom/ime/framework/inputmode/InputModeManager;->isBstHWRmodeEnable()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/ime/implement/view/ViewControllerImpl;->getHWRKeyboardXmlId()I

    move-result v2

    invoke-direct {p0, v6}, Lcom/ime/implement/view/ViewControllerImpl;->getBoxTextKeyboardModeId(Landroid/view/inputmethod/EditorInfo;)I

    move-result v3

    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->getHWManager()Lcom/ime/framework/engine/bsthwr/HWManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ime/framework/engine/bsthwr/HWManager;->showBoxHandwritingViewVisible()V

    goto :goto_1

    :cond_4
    invoke-direct {p0}, Lcom/ime/implement/view/ViewControllerImpl;->getFloatingHWRKeyboardXmlId()I

    move-result v2

    invoke-direct {p0}, Lcom/ime/implement/view/ViewControllerImpl;->getHwrKeyboardModeId()I

    move-result v3

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v0}, Lcom/ime/framework/inputmode/InputModeManager;->isFloatingPhonepadKeyboardForMultiWindow()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-direct {p0, v4}, Lcom/ime/implement/view/ViewControllerImpl;->getFloatingPhonePadKeyboardXmlId(I)I

    move-result v2

    invoke-direct {p0, v6}, Lcom/ime/implement/view/ViewControllerImpl;->getTextKeyboardModeId(Landroid/view/inputmethod/EditorInfo;)I

    move-result v3

    goto/16 :goto_1

    :cond_6
    invoke-direct {p0, v4}, Lcom/ime/implement/view/ViewControllerImpl;->getFloatingKeyboardXmlId(I)I

    move-result v2

    invoke-direct {p0, v6}, Lcom/ime/implement/view/ViewControllerImpl;->getTextKeyboardModeId(Landroid/view/inputmethod/EditorInfo;)I

    move-result v3

    goto/16 :goto_1

    :cond_7
    invoke-direct {p0, v4}, Lcom/ime/implement/view/ViewControllerImpl;->getQwertyKeyboardXmlId(I)I

    move-result v2

    invoke-direct {p0, v6}, Lcom/ime/implement/view/ViewControllerImpl;->getTextKeyboardModeId(Landroid/view/inputmethod/EditorInfo;)I

    move-result v3

    goto/16 :goto_1

    :cond_8
    const/4 v7, 0x0

    goto/16 :goto_2

    :cond_9
    new-instance v0, Lcom/ime/framework/view/DefaultKeyboard;

    iget-object v1, p0, Lcom/ime/implement/view/ViewControllerImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/ime/framework/view/DefaultKeyboard;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/ime/framework/view/DefaultKeyboard;

    goto :goto_3

    :cond_a
    iget v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mLanguageID:I

    if-ne v4, v0, :cond_b

    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->isUpdateKeyboardCodeValues()Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_b
    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mPrevKeyboard:Lcom/ime/framework/view/DefaultKeyboard;

    invoke-virtual {v0}, Lcom/ime/framework/view/DefaultKeyboard;->updateKeys()V

    iget-object v1, p0, Lcom/ime/implement/view/ViewControllerImpl;->mPrevKeyboard:Lcom/ime/framework/view/DefaultKeyboard;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/ime/implement/view/ViewControllerImpl;->setCurrentKeyboardInfo(Lcom/ime/framework/view/DefaultKeyboard;IIII)V

    :cond_c
    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mPrevKeyboard:Lcom/ime/framework/view/DefaultKeyboard;

    iput-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/ime/framework/view/DefaultKeyboard;

    goto/16 :goto_4
.end method

.method private getValidSymbolsPage(I)I
    .locals 9

    const v8, 0x7f0a0002

    const v7, 0x7f0a0001

    const-string v4, "SamsungIME"

    const-string v5, "getValidSymbolsPage"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    iget-object v4, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v4}, Lcom/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v2

    iget-object v4, p0, Lcom/ime/implement/view/ViewControllerImpl;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v5, "INPUT_LANGUAGE"

    const v6, 0x656e4742

    invoke-interface {v4, v5, v6}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v0

    iget-object v4, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/ime/framework/common/InputManager;->isShownSoftFuncKbd()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {}, Lcom/ime/framework/repository/EditorStatus;->isPhoneNumberInputClass()Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v4, Lcom/ime/framework/common/Constant;->PHONE_NUMBER_EDITOR_SOFT_FUNC_KBD_SYMBOLS:[[Ljava/lang/String;

    array-length v1, v4

    :goto_0
    if-gez p1, :cond_8

    add-int/lit8 p1, v1, -0x1

    :cond_0
    :goto_1
    return p1

    :cond_1
    sget-object v4, Lcom/ime/framework/common/Constant;->SOFT_FUNC_KBD_SYMBOLS:[[Ljava/lang/String;

    array-length v1, v4

    goto :goto_0

    :cond_2
    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    iget-object v4, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/ime/framework/common/InputManager;->isMobileKeyboard()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0004

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    goto :goto_0

    :cond_3
    iget-object v4, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v4}, Lcom/ime/framework/inputmode/InputModeManager;->isFloatingHWRKeyboard()Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    goto :goto_0

    :cond_4
    iget-object v4, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v4}, Lcom/ime/framework/inputmode/InputModeManager;->isKorTabletCji()Z

    move-result v4

    if-nez v4, :cond_5

    iget-object v4, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v4}, Lcom/ime/framework/inputmode/InputModeManager;->isFloatingPhonepadKeyboardForMultiWindow()Z

    move-result v4

    if-eqz v4, :cond_6

    :cond_5
    iget-object v4, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    goto :goto_0

    :cond_6
    iget-boolean v4, p0, Lcom/ime/implement/view/ViewControllerImpl;->ADD_SMILEY_SYMBOL:Z

    if-eqz v4, :cond_7

    invoke-static {v0}, Lcom/ime/framework/util/Utils;->isArabicLanguage(I)Z

    move-result v4

    if-nez v4, :cond_7

    iget-object v4, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0003

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    goto :goto_0

    :cond_7
    iget-object v4, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    goto :goto_0

    :pswitch_2
    iget-object v4, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    goto :goto_0

    :pswitch_3
    iget-object v4, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    goto/16 :goto_0

    :cond_8
    if-lt p1, v1, :cond_0

    const/4 p1, 0x0

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private isTabletCji()Z
    .locals 1

    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v0}, Lcom/ime/framework/inputmode/InputModeManager;->isKorTabletCji()Z

    move-result v0

    return v0
.end method

.method private setCurrentKeyboardInfo(Lcom/ime/framework/view/DefaultKeyboard;IIII)V
    .locals 1

    iput p2, p0, Lcom/ime/implement/view/ViewControllerImpl;->mXmlID:I

    iput p3, p0, Lcom/ime/implement/view/ViewControllerImpl;->mModeID:I

    iput-object p1, p0, Lcom/ime/implement/view/ViewControllerImpl;->mPrevKeyboard:Lcom/ime/framework/view/DefaultKeyboard;

    iput p4, p0, Lcom/ime/implement/view/ViewControllerImpl;->mLanguageID:I

    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->isOrientationLandscape()Z

    move-result v0

    iput-boolean v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mIsLandscape:Z

    iput p5, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputMethodId:I

    return-void
.end method


# virtual methods
.method public closeView()V
    .locals 6

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/ime/framework/view/AbstractViewController;->closeView()V

    const/4 v1, 0x0

    move-object v0, p0

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/ime/implement/view/ViewControllerImpl;->setCurrentKeyboardInfo(Lcom/ime/framework/view/DefaultKeyboard;IIII)V

    return-void
.end method

.method protected getBoxKeyboardViewRscId(I)I
    .locals 1

    const v0, 0x7f030008

    return v0
.end method

.method protected getCNFloatingKeyboardViewRscId(I)I
    .locals 2

    const v0, 0x7f030039

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    const v0, 0x7f030009

    :cond_0
    return v0
.end method

.method protected getCNKeyboardViewRscId(I)I
    .locals 2

    const v0, 0x7f030038

    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    const v0, 0x7f030009

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->isEmoticonMode()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->isChineseLanguageMode()Z

    move-result v1

    if-eqz v1, :cond_3

    const v0, 0x7f030028

    :cond_1
    :goto_1
    return v0

    :cond_2
    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    const v0, 0x7f030031

    goto :goto_0

    :cond_3
    const v0, 0x7f030027

    goto :goto_1
.end method

.method protected getCurrentCandidateView()Lcom/ime/framework/view/candidate/AbstractCandidateView;
    .locals 6

    const v5, 0x7f03000a

    const/4 v4, 0x0

    const-string v2, "SamsungIME"

    const-string v3, "getCurrentCandidateView"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v2}, Lcom/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_0

    const/4 v2, 0x7

    if-ne v1, v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iget-object v2, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/ime/framework/common/InputManager;->isCurrentCarModeKnobSIP()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    const v3, 0x7f03000f

    invoke-interface {v2, v3, v4}, Lcom/ime/framework/common/InputManager;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/ime/framework/view/candidate/AbstractCandidateView;

    :goto_1
    return-object v2

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_3

    iget-object v2, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    const v3, 0x7f03004a

    invoke-interface {v2, v3, v4}, Lcom/ime/framework/common/InputManager;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/ime/framework/view/candidate/AbstractCandidateView;

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/ime/framework/common/InputManager;->isFullLandMode()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2, v5, v4}, Lcom/ime/framework/common/InputManager;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/ime/framework/view/candidate/AbstractCandidateView;

    goto :goto_1

    :cond_4
    iget-object v2, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2, v5, v4}, Lcom/ime/framework/common/InputManager;->inflateWithCache(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/ime/framework/view/candidate/AbstractCandidateView;

    goto :goto_1
.end method

.method protected getCurrentKeyboard()Lcom/ime/framework/view/DefaultKeyboard;
    .locals 11

    const/4 v10, 0x0

    const v9, 0x656e4742

    const/4 v8, 0x2

    const/4 v7, 0x0

    const-string v5, "SamsungIME"

    const-string v6, "getCurrentKeyboard"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v10, p0, Lcom/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/ime/framework/view/DefaultKeyboard;

    invoke-static {}, Lcom/ime/framework/repository/InputModeStatus;->getInputRange()I

    move-result v4

    iget-object v5, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/ime/framework/common/InputManager;->isLandscapePhonenumberMode()Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v4, 0x1

    :cond_0
    iget-object v5, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/ime/framework/common/InputManager;->isCurrentCarModeKnobSIP()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-direct {p0}, Lcom/ime/implement/view/ViewControllerImpl;->getKnobTextKeyboard()Lcom/ime/framework/view/DefaultKeyboard;

    move-result-object v5

    iput-object v5, p0, Lcom/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/ime/framework/view/DefaultKeyboard;

    iget-object v5, p0, Lcom/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/ime/framework/view/DefaultKeyboard;

    :goto_0
    return-object v5

    :cond_1
    iget-object v5, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/ime/framework/common/InputManager;->isMobileKeyboard()Z

    move-result v5

    if-eqz v5, :cond_6

    if-eq v4, v8, :cond_6

    invoke-static {}, Lcom/ime/framework/repository/InputModeStatus;->getInputMethodStatus()I

    move-result v2

    const/16 v5, 0x8

    if-ne v2, v5, :cond_2

    iget-object v5, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/ime/framework/common/InputManager;->getInputController()Lcom/ime/framework/input/InputController;

    move-result-object v5

    invoke-interface {v5}, Lcom/ime/framework/input/InputController;->changeToNormalKeyboardMode()V

    iget-object v5, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/ime/framework/common/InputManager;->getInputController()Lcom/ime/framework/input/InputController;

    move-result-object v5

    invoke-interface {v5, v10}, Lcom/ime/framework/input/InputController;->initCandidates(Ljava/util/ArrayList;)V

    iget-object v5, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/ime/framework/common/InputManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v5, "pref_last_input_method_type"

    invoke-interface {v0, v5, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_2
    iget-object v5, p0, Lcom/ime/implement/view/ViewControllerImpl;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v6, "INPUT_LANGUAGE"

    invoke-interface {v5, v6, v9}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v1

    iget-object v5, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v5, v1}, Lcom/ime/framework/common/InputManager;->isMobileKeyboardSupportedLanguage(I)Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    const/4 v6, 0x1

    invoke-interface {v5, v6}, Lcom/ime/framework/common/InputManager;->toggleLanguage(Z)V

    :cond_3
    const/4 v5, 0x3

    if-ne v4, v5, :cond_4

    invoke-direct {p0}, Lcom/ime/implement/view/ViewControllerImpl;->getEmoticonMobileKeyboard()Lcom/ime/framework/view/DefaultKeyboard;

    move-result-object v5

    iput-object v5, p0, Lcom/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/ime/framework/view/DefaultKeyboard;

    iget-object v5, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v5, v7}, Lcom/ime/framework/common/InputManager;->setCandidatesViewShown(Z)V

    :goto_1
    iget-object v5, p0, Lcom/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/ime/framework/view/DefaultKeyboard;

    goto :goto_0

    :cond_4
    packed-switch v4, :pswitch_data_0

    iget-object v5, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/ime/framework/common/InputManager;->isShownMobileKeyboardPopup()Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v5, v7}, Lcom/ime/framework/common/InputManager;->setShownMobileKeyboardPopup(Z)V

    :cond_5
    iget-object v5, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    invoke-virtual {v5, v9, v7}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(II)V

    const/4 v4, 0x0

    :goto_2
    invoke-direct {p0, v4}, Lcom/ime/implement/view/ViewControllerImpl;->getMobileKeyboard(I)Lcom/ime/framework/view/DefaultKeyboard;

    move-result-object v5

    iput-object v5, p0, Lcom/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/ime/framework/view/DefaultKeyboard;

    goto :goto_1

    :pswitch_0
    iget-object v5, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    invoke-virtual {v5, v1, v7}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->setLanguageAndMode(II)V

    const/4 v4, 0x1

    goto :goto_2

    :cond_6
    iget-object v5, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/ime/framework/common/InputManager;->isShownSoftFuncKbd()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-direct {p0}, Lcom/ime/implement/view/ViewControllerImpl;->getSoftFuncKbd()Lcom/ime/framework/view/DefaultKeyboard;

    move-result-object v5

    goto/16 :goto_0

    :cond_7
    iget-object v5, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/ime/framework/common/InputManager;->isCurrentCarModeTouchSIP()Z

    move-result v5

    if-eqz v5, :cond_8

    if-eq v4, v8, :cond_8

    if-eqz v4, :cond_8

    const/4 v4, 0x0

    :cond_8
    packed-switch v4, :pswitch_data_1

    invoke-direct {p0}, Lcom/ime/implement/view/ViewControllerImpl;->getTextKeyboard()Lcom/ime/framework/view/DefaultKeyboard;

    move-result-object v5

    iput-object v5, p0, Lcom/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/ime/framework/view/DefaultKeyboard;

    :goto_3
    iget-object v5, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    invoke-virtual {v5}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->reset()V

    iget-object v5, p0, Lcom/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/ime/framework/view/DefaultKeyboard;

    goto/16 :goto_0

    :pswitch_1
    iget-object v5, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/ime/framework/common/InputManager;->isEnableOneHandKeypad()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-direct {p0}, Lcom/ime/implement/view/ViewControllerImpl;->getOneHandNumberKeyboard()Lcom/ime/framework/view/DefaultKeyboard;

    move-result-object v5

    iput-object v5, p0, Lcom/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/ime/framework/view/DefaultKeyboard;

    :goto_4
    invoke-virtual {p0, v7}, Lcom/ime/implement/view/ViewControllerImpl;->setCurrentThaiVowelPageNum(I)V

    goto :goto_3

    :cond_9
    invoke-direct {p0}, Lcom/ime/implement/view/ViewControllerImpl;->getNumberKeyboard()Lcom/ime/framework/view/DefaultKeyboard;

    move-result-object v5

    iput-object v5, p0, Lcom/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/ime/framework/view/DefaultKeyboard;

    goto :goto_4

    :pswitch_2
    iget-object v5, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/ime/framework/common/InputManager;->isEnableOneHandKeypad()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-direct {p0}, Lcom/ime/implement/view/ViewControllerImpl;->getOneHandSymbolKeyboard()Lcom/ime/framework/view/DefaultKeyboard;

    move-result-object v5

    iput-object v5, p0, Lcom/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/ime/framework/view/DefaultKeyboard;

    :goto_5
    invoke-virtual {p0, v7}, Lcom/ime/implement/view/ViewControllerImpl;->setCurrentThaiVowelPageNum(I)V

    goto :goto_3

    :cond_a
    invoke-direct {p0}, Lcom/ime/implement/view/ViewControllerImpl;->getSymbolKeyboard()Lcom/ime/framework/view/DefaultKeyboard;

    move-result-object v5

    iput-object v5, p0, Lcom/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/ime/framework/view/DefaultKeyboard;

    goto :goto_5

    :pswitch_3
    invoke-direct {p0}, Lcom/ime/implement/view/ViewControllerImpl;->getEmoticonKeyboard()Lcom/ime/framework/view/DefaultKeyboard;

    move-result-object v5

    iput-object v5, p0, Lcom/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/ime/framework/view/DefaultKeyboard;

    goto :goto_3

    :pswitch_4
    invoke-direct {p0}, Lcom/ime/implement/view/ViewControllerImpl;->getDragonVoiceKeyboard()Lcom/ime/framework/view/DefaultKeyboard;

    move-result-object v5

    iput-object v5, p0, Lcom/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/ime/framework/view/DefaultKeyboard;

    goto :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method protected getCurrentPhoneticSpellScroll()Landroid/widget/FrameLayout;
    .locals 3

    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    const v1, 0x7f030038

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/ime/framework/common/InputManager;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    return-object v0
.end method

.method protected getCurrentPopupKeyboard(Z)Lcom/ime/framework/view/DefaultKeyboard;
    .locals 6

    const/4 v5, 0x0

    const-string v3, "SamsungIME"

    const-string v4, "getCurrentPopupKeyboard"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/ime/framework/view/DefaultKeyboard;

    invoke-static {}, Lcom/ime/framework/repository/InputModeStatus;->getInputRange()I

    move-result v2

    iget-object v3, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v3}, Lcom/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v0

    invoke-static {}, Lcom/ime/framework/repository/InputModeStatus;->getNumberAndSymbolsKeypadType()I

    move-result v1

    packed-switch v2, :pswitch_data_0

    invoke-direct {p0, p1}, Lcom/ime/implement/view/ViewControllerImpl;->getTextPopupKeyboard(Z)Lcom/ime/framework/view/DefaultKeyboard;

    move-result-object v3

    iput-object v3, p0, Lcom/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/ime/framework/view/DefaultKeyboard;

    :goto_0
    iget-object v3, p0, Lcom/ime/implement/view/ViewControllerImpl;->mKeyboardKeyMap:Lcom/ime/framework/view/keyboard/KeyboardKeyMap;

    invoke-virtual {v3}, Lcom/ime/framework/view/keyboard/KeyboardKeyMap;->reset()V

    iget-object v3, p0, Lcom/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/ime/framework/view/DefaultKeyboard;

    return-object v3

    :pswitch_0
    const/16 v3, 0x8

    if-ne v0, v3, :cond_1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    iget-boolean v3, p0, Lcom/ime/implement/view/ViewControllerImpl;->mIsKorMode:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v3}, Lcom/ime/framework/inputmode/InputModeManager;->isFloatingHWRKeyboard()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    invoke-direct {p0, v5}, Lcom/ime/implement/view/ViewControllerImpl;->getFloatingPhonepadNumberPopupKeyboard(Z)Lcom/ime/framework/view/DefaultKeyboard;

    move-result-object v3

    iput-object v3, p0, Lcom/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/ime/framework/view/DefaultKeyboard;

    goto :goto_0

    :cond_1
    const/4 v3, 0x7

    if-ne v0, v3, :cond_2

    iget-object v3, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/ime/framework/common/InputManager;->isSplitEnableOneHandKeypad()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-direct {p0, p1}, Lcom/ime/implement/view/ViewControllerImpl;->getSplitNumberPopupKeyboard(Z)Lcom/ime/framework/view/DefaultKeyboard;

    move-result-object v3

    iput-object v3, p0, Lcom/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/ime/framework/view/DefaultKeyboard;

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1}, Lcom/ime/implement/view/ViewControllerImpl;->getNumberPopupKeyboard(Z)Lcom/ime/framework/view/DefaultKeyboard;

    move-result-object v3

    iput-object v3, p0, Lcom/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/ime/framework/view/DefaultKeyboard;

    goto :goto_0

    :pswitch_1
    iget-object v3, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v3}, Lcom/ime/framework/inputmode/InputModeManager;->isFloatingPhonepadKeyboardForMultiWindow()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-direct {p0, v5}, Lcom/ime/implement/view/ViewControllerImpl;->getFloatingPhonepadSymbolPopupKeyboard(Z)Lcom/ime/framework/view/DefaultKeyboard;

    move-result-object v3

    iput-object v3, p0, Lcom/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/ime/framework/view/DefaultKeyboard;

    goto :goto_0

    :cond_3
    invoke-direct {p0, p1}, Lcom/ime/implement/view/ViewControllerImpl;->getSymbolPopupKeyboard(Z)Lcom/ime/framework/view/DefaultKeyboard;

    move-result-object v3

    iput-object v3, p0, Lcom/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/ime/framework/view/DefaultKeyboard;

    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, Lcom/ime/implement/view/ViewControllerImpl;->getEmoticonPopupKeyboard()Lcom/ime/framework/view/DefaultKeyboard;

    move-result-object v3

    iput-object v3, p0, Lcom/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/ime/framework/view/DefaultKeyboard;

    goto :goto_0

    :pswitch_3
    invoke-direct {p0}, Lcom/ime/implement/view/ViewControllerImpl;->getDragonVoiceKeyboard()Lcom/ime/framework/view/DefaultKeyboard;

    move-result-object v3

    iput-object v3, p0, Lcom/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/ime/framework/view/DefaultKeyboard;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected getCurrentSpellView()Lcom/ime/framework/view/chinesespell/AbstractSpellLayout;
    .locals 7

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    if-nez v5, :cond_1

    move-object v2, v4

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    iget-object v5, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/ime/framework/common/InputManager;->getInputModeManager()Lcom/ime/framework/inputmode/InputModeManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v1

    const/16 v5, 0x8

    if-ne v1, v5, :cond_4

    invoke-virtual {p0}, Lcom/ime/implement/view/ViewControllerImpl;->getPopupKeyboardView()Lcom/ime/framework/view/PopupKeyboardView;

    move-result-object v5

    if-nez v5, :cond_2

    move-object v2, v4

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/ime/implement/view/ViewControllerImpl;->getPopupKeyboardView()Lcom/ime/framework/view/PopupKeyboardView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ime/framework/view/PopupKeyboardView;->getFloatingView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_3

    move-object v2, v4

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v3

    const v4, 0x7f100081

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/ime/framework/view/chinesespell/AbstractSpellLayout;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/ime/framework/view/chinesespell/AbstractSpellLayout;->init()V

    goto :goto_0

    :cond_4
    const/4 v5, 0x7

    if-ne v1, v5, :cond_5

    iget-object v5, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    const v6, 0x7f03005e

    invoke-interface {v5, v6, v4}, Lcom/ime/framework/common/InputManager;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/ime/framework/view/chinesespell/AbstractSpellLayout;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/ime/framework/view/chinesespell/AbstractSpellLayout;->init()V

    goto :goto_0

    :cond_5
    iget-object v4, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/ime/framework/common/InputManager;->getSpellLayout()Lcom/ime/framework/view/chinesespell/AbstractSpellLayout;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/ime/framework/view/chinesespell/AbstractSpellLayout;->init()V

    goto :goto_0
.end method

.method public getCurrentThaiVowelPageNum()I
    .locals 1

    iget v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mCurrentThaiVowelPageNum:I

    return v0
.end method

.method protected getDualFullLayoutRscId()I
    .locals 1

    const v0, 0x7f03003c

    return v0
.end method

.method public getEmoticonLabelKeyboard(I)Lcom/ime/framework/view/DefaultKeyboard;
    .locals 3

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-ne p1, v2, :cond_0

    const v1, 0x7f050264

    :goto_0
    new-instance v0, Lcom/ime/framework/view/DefaultKeyboard;

    iget-object v2, p0, Lcom/ime/implement/view/ViewControllerImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2, v1}, Lcom/ime/framework/view/DefaultKeyboard;-><init>(Landroid/content/Context;I)V

    return-object v0

    :cond_0
    const/4 v2, 0x2

    if-ne p1, v2, :cond_1

    const v1, 0x7f050266

    goto :goto_0

    :cond_1
    const v1, 0x7f050265

    goto :goto_0
.end method

.method protected getEmoticonLayoutRscId(I)I
    .locals 1

    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    const v0, 0x7f03002a

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->isEnableOneHandKeypad()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f03002f

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->isMobileKeyboard()Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f03002e

    goto :goto_0

    :cond_2
    const v0, 0x7f030027

    goto :goto_0
.end method

.method protected getEmoticonScrollLayoutRscId()I
    .locals 1

    const v0, 0x7f100045

    return v0
.end method

.method protected getFloatingEmoticonKeyboardViewRscId(I)I
    .locals 2

    const v0, 0x7f03002a

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    const v0, 0x7f030009

    :cond_0
    return v0
.end method

.method protected getFloatingHWREmoticonLayoutRscId()I
    .locals 1

    const v0, 0x7f03002b

    return v0
.end method

.method protected getFullHwrKeyboard()Lcom/ime/framework/view/DefaultKeyboard;
    .locals 7

    const v2, 0x7f050074

    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v3, "INPUT_LANGUAGE"

    const v6, 0x656e4742

    invoke-interface {v0, v3, v6}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v4

    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v0}, Lcom/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v5

    new-instance v1, Lcom/ime/framework/view/DefaultKeyboard;

    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mContext:Landroid/content/Context;

    invoke-direct {v1, v0, v2}, Lcom/ime/framework/view/DefaultKeyboard;-><init>(Landroid/content/Context;I)V

    const/4 v3, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/ime/implement/view/ViewControllerImpl;->setCurrentKeyboardInfo(Lcom/ime/framework/view/DefaultKeyboard;IIII)V

    return-object v1
.end method

.method protected getFullHwrPanelViewRscId()I
    .locals 1

    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->isUseBstHWRPanel()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f030037

    :goto_0
    return v0

    :cond_0
    const v0, 0x7f030032

    goto :goto_0
.end method

.method protected getHWREmoticonLayoutRscId(I)I
    .locals 1

    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    const v0, 0x7f03002b

    :goto_0
    return v0

    :cond_0
    const v0, 0x7f03002d

    goto :goto_0
.end method

.method protected getHWRFloatingKeyboardViewRscId(I)I
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v1}, Lcom/ime/framework/inputmode/InputModeManager;->isVOHWRmodeEnable()Z

    move-result v1

    if-eqz v1, :cond_0

    const v0, 0x7f030044

    :goto_0
    return v0

    :cond_0
    const v0, 0x7f03003d

    goto :goto_0
.end method

.method protected getHWRKeyboardRscId()I
    .locals 1

    const v0, 0x7f100059

    return v0
.end method

.method public getHwPhonepadEnKeyboard()Lcom/ime/framework/view/DefaultKeyboard;
    .locals 6

    const-string v3, "SamsungIME"

    const-string v4, "getHwPhonepadEnKeyboard"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/ime/implement/view/ViewControllerImpl;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v4, "INPUT_LANGUAGE"

    const v5, 0x656e4742

    invoke-interface {v3, v4, v5}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/ime/implement/view/ViewControllerImpl;->getPhonepadXmlId(I)I

    move-result v2

    const v1, 0x7f10011f

    new-instance v3, Lcom/ime/framework/view/DefaultKeyboard;

    iget-object v4, p0, Lcom/ime/implement/view/ViewControllerImpl;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4, v2, v1}, Lcom/ime/framework/view/DefaultKeyboard;-><init>(Landroid/content/Context;II)V

    return-object v3
.end method

.method public getHwPhonepadKrKeyboard()Lcom/ime/framework/view/DefaultKeyboard;
    .locals 4

    const-string v2, "SamsungIME"

    const-string v3, "getHwPhonepadKrKeyboard"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const v1, 0x7f0500fd

    const v0, 0x7f10011f

    new-instance v2, Lcom/ime/framework/view/DefaultKeyboard;

    iget-object v3, p0, Lcom/ime/implement/view/ViewControllerImpl;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v1, v0}, Lcom/ime/framework/view/DefaultKeyboard;-><init>(Landroid/content/Context;II)V

    return-object v2
.end method

.method public getKeyboardKeyList(Z)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Lcom/ime/framework/view/Keyboard$Key;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    iget-object v1, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->isHWKeyboardConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->isCurrentCarModeKnobSIP()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/ime/implement/view/ViewControllerImpl;->getQwertyKeyboard()Lcom/ime/framework/view/DefaultKeyboard;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ime/framework/view/DefaultKeyboard;->getKeys()Ljava/util/List;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v1}, Lcom/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/ime/implement/view/ViewControllerImpl;->getCurrentPopupKeyboard(Z)Lcom/ime/framework/view/DefaultKeyboard;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ime/framework/view/DefaultKeyboard;->getKeys()Ljava/util/List;

    move-result-object v1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/ime/implement/view/ViewControllerImpl;->getCurrentKeyboard()Lcom/ime/framework/view/DefaultKeyboard;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ime/framework/view/DefaultKeyboard;->getKeys()Ljava/util/List;

    move-result-object v1

    goto :goto_0
.end method

.method protected getKeyboardOneHandDimView(Landroid/widget/FrameLayout;)Landroid/widget/ImageView;
    .locals 1

    const v0, 0x7f100062

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    return-object v0
.end method

.method protected getKeyboardOneHandLayout(Landroid/widget/FrameLayout;)Landroid/widget/LinearLayout;
    .locals 1

    const v0, 0x7f10005c

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    return-object v0
.end method

.method protected getKeyboardOneHandLayoutView(Landroid/widget/LinearLayout;Z)Landroid/widget/LinearLayout;
    .locals 1

    if-eqz p2, :cond_0

    const v0, 0x7f10005d

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    :goto_0
    return-object v0

    :cond_0
    const v0, 0x7f100060

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    goto :goto_0
.end method

.method protected getKeyboardOneHandTalkBackDimView(Landroid/widget/LinearLayout;)Landroid/widget/ImageView;
    .locals 1

    const v0, 0x7f100062

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    return-object v0
.end method

.method protected getKeyboardOneHandView(Landroid/widget/LinearLayout;Z)Landroid/widget/ImageButton;
    .locals 1

    if-eqz p2, :cond_0

    const v0, 0x7f10005e

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    :goto_0
    return-object v0

    :cond_0
    const v0, 0x7f100061

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    goto :goto_0
.end method

.method protected getKeyboardRscId()I
    .locals 1

    const v0, 0x7f100051

    return v0
.end method

.method protected getKeyboardView(Landroid/widget/LinearLayout;)Landroid/view/View;
    .locals 1

    const v0, 0x7f100051

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected getKeyboardViewRscId(I)I
    .locals 2

    const v0, 0x7f030037

    if-nez p1, :cond_1

    const v0, 0x7f030037

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v1, 0x2

    if-ne p1, v1, :cond_3

    iget-object v1, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->isUseBstHWRPanel()Z

    move-result v1

    if-eqz v1, :cond_2

    const v0, 0x7f030037

    goto :goto_0

    :cond_2
    const v0, 0x7f030009

    goto :goto_0

    :cond_3
    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    iget-object v1, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->isUseBstHWRPanel()Z

    move-result v1

    if-eqz v1, :cond_4

    const v0, 0x7f030037

    goto :goto_0

    :cond_4
    const v0, 0x7f030031

    goto :goto_0
.end method

.method protected getMicEffectViewRscId()I
    .locals 1

    const v0, 0x7f100112

    return v0
.end method

.method protected getOeHandCNPhonepadViewRscId()I
    .locals 1

    const v0, 0x7f10006a

    return v0
.end method

.method protected getOneHandCNKeyboardViewRscId()I
    .locals 2

    const v0, 0x7f03003a

    iget-object v1, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->isTalkbackEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const v0, 0x7f03003b

    :cond_0
    return v0
.end method

.method protected getOneHandKeyboardViewRscId(I)I
    .locals 2

    const v0, 0x7f03003e

    iget-object v1, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->isTalkbackEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const v0, 0x7f030040

    :cond_0
    iget-object v1, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->isEmoticonMode()Z

    move-result v1

    if-eqz v1, :cond_1

    const v0, 0x7f03002f

    :cond_1
    iget-object v1, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->isChnMode()Z

    move-result v1

    if-eqz v1, :cond_2

    const v0, 0x7f03003f

    :cond_2
    return v0
.end method

.method protected getPhoneticSpellScrollLayoutRscId()I
    .locals 1

    const v0, 0x7f100055

    return v0
.end method

.method protected getPhoneticSpellScrollViewRscId()I
    .locals 1

    const v0, 0x7f100052

    return v0
.end method

.method protected getSplitKeyboardViewRscId(Z)I
    .locals 1

    if-eqz p1, :cond_0

    const v0, 0x7f030041

    :goto_0
    return v0

    :cond_0
    const v0, 0x7f030042

    goto :goto_0
.end method

.method public getSymKeyboard()Lcom/ime/framework/view/DefaultKeyboard;
    .locals 4

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/ime/framework/common/InputManager;->isEnableOneHandKeypad()Z

    move-result v2

    if-eqz v2, :cond_0

    const v1, 0x7f0500a1

    :goto_0
    new-instance v0, Lcom/ime/framework/view/DefaultKeyboard;

    iget-object v2, p0, Lcom/ime/implement/view/ViewControllerImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2, v1}, Lcom/ime/framework/view/DefaultKeyboard;-><init>(Landroid/content/Context;I)V

    return-object v0

    :cond_0
    iget-object v2, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v2}, Lcom/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_1

    const v1, 0x7f050033

    goto :goto_0

    :cond_1
    const v1, 0x7f050116

    goto :goto_0
.end method

.method protected getThaiTextKeyboard(I)Lcom/ime/framework/view/DefaultKeyboard;
    .locals 13

    const/4 v8, 0x2

    const/4 v12, 0x0

    const/4 v11, 0x1

    const/high16 v10, 0x6b6d0000

    const v9, 0x656e4742

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/ime/framework/view/DefaultKeyboard;

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/ime/implement/view/ViewControllerImpl;->getTextKeyboardModeId(Landroid/view/inputmethod/EditorInfo;)I

    move-result v3

    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v0}, Lcom/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v5

    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v1, "INPUT_LANGUAGE"

    invoke-interface {v0, v1, v9}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {p0}, Lcom/ime/implement/view/ViewControllerImpl;->isEnableOneHandKeypad()Z

    move-result v0

    if-eqz v0, :cond_5

    packed-switch p1, :pswitch_data_0

    :goto_0
    new-instance v0, Lcom/ime/framework/view/DefaultKeyboard;

    iget-object v1, p0, Lcom/ime/implement/view/ViewControllerImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2, v3}, Lcom/ime/framework/view/DefaultKeyboard;-><init>(Landroid/content/Context;II)V

    iput-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/ime/framework/view/DefaultKeyboard;

    iget-object v1, p0, Lcom/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/ime/framework/view/DefaultKeyboard;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/ime/implement/view/ViewControllerImpl;->setCurrentKeyboardInfo(Lcom/ime/framework/view/DefaultKeyboard;IIII)V

    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/ime/framework/view/DefaultKeyboard;

    return-object v0

    :pswitch_0
    :try_start_0
    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v1, "INPUT_LANGUAGE"

    const v8, 0x656e4742

    invoke-interface {v0, v1, v8}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v10, :cond_0

    const-string v0, "onehand_phonepad_km_special_01"

    invoke-static {v0}, Lcom/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_1
    invoke-virtual {p0, v11}, Lcom/ime/implement/view/ViewControllerImpl;->setCurrentThaiVowelPageNum(I)V

    goto :goto_0

    :cond_0
    :try_start_1
    const-string v0, "onehand_phonepad_th_tone_01"

    invoke-static {v0}, Lcom/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v2

    goto :goto_1

    :catch_0
    move-exception v6

    const v2, 0x7f0500f6

    goto :goto_1

    :pswitch_1
    :try_start_2
    const-string v0, "onehand_phonepad_th_tone"

    invoke-static {v0}, Lcom/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v2

    :goto_2
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/ime/implement/view/ViewControllerImpl;->setCurrentThaiVowelPageNum(I)V

    goto :goto_0

    :catch_1
    move-exception v6

    const v2, 0x7f0500f6

    goto :goto_2

    :pswitch_2
    :try_start_3
    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v1, "INPUT_LANGUAGE"

    const v8, 0x656e4742

    invoke-interface {v0, v1, v8}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v10, :cond_1

    const-string v0, "onehand_phonepad_km"

    invoke-static {v0}, Lcom/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3 .. :try_end_3} :catch_2

    move-result v2

    :goto_3
    invoke-virtual {p0, v12}, Lcom/ime/implement/view/ViewControllerImpl;->setCurrentThaiVowelPageNum(I)V

    goto :goto_0

    :cond_1
    :try_start_4
    const-string v0, "onehand_phonepad_th"

    invoke-static {v0}, Lcom/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_4
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_4 .. :try_end_4} :catch_2

    move-result v2

    goto :goto_3

    :catch_2
    move-exception v6

    const v2, 0x7f0500f6

    goto :goto_3

    :pswitch_3
    invoke-virtual {p0}, Lcom/ime/implement/view/ViewControllerImpl;->getCurrentThaiVowelPageNum()I

    move-result v0

    if-ne v0, v11, :cond_3

    invoke-virtual {p0, v8}, Lcom/ime/implement/view/ViewControllerImpl;->setCurrentThaiVowelPageNum(I)V

    :try_start_5
    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v1, "INPUT_LANGUAGE"

    const v8, 0x656e4742

    invoke-interface {v0, v1, v8}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v10, :cond_2

    const-string v0, "onehand_phonepad_km_special_02"

    invoke-static {v0}, Lcom/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v2

    goto/16 :goto_0

    :cond_2
    const-string v0, "onehand_phonepad_th_tone_02"

    invoke-static {v0}, Lcom/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_5
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_5 .. :try_end_5} :catch_3

    move-result v2

    goto/16 :goto_0

    :catch_3
    move-exception v6

    const v2, 0x7f0500f6

    goto/16 :goto_0

    :cond_3
    invoke-virtual {p0, v11}, Lcom/ime/implement/view/ViewControllerImpl;->setCurrentThaiVowelPageNum(I)V

    :try_start_6
    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v1, "INPUT_LANGUAGE"

    const v8, 0x656e4742

    invoke-interface {v0, v1, v8}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v10, :cond_4

    const-string v0, "onehand_phonepad_km_special_01"

    invoke-static {v0}, Lcom/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v2

    goto/16 :goto_0

    :cond_4
    const-string v0, "onehand_phonepad_th_tone_01"

    invoke-static {v0}, Lcom/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_6
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_6 .. :try_end_6} :catch_4

    move-result v2

    goto/16 :goto_0

    :catch_4
    move-exception v6

    const v2, 0x7f0500f6

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v0}, Lcom/ime/framework/inputmode/InputModeManager;->isFloatingPhonepadKeyboardForMultiWindow()Z

    move-result v0

    if-eqz v0, :cond_e

    packed-switch p1, :pswitch_data_1

    goto/16 :goto_0

    :pswitch_4
    :try_start_7
    const-string v0, "floating_phonepad_th_tone"

    invoke-static {v0}, Lcom/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_7
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_7 .. :try_end_7} :catch_6

    move-result v2

    :goto_4
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/ime/implement/view/ViewControllerImpl;->setCurrentThaiVowelPageNum(I)V

    goto/16 :goto_0

    :pswitch_5
    :try_start_8
    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v1, "INPUT_LANGUAGE"

    const v8, 0x656e4742

    invoke-interface {v0, v1, v8}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v10, :cond_6

    const-string v0, "floating_phonepad_km_special_01"

    invoke-static {v0}, Lcom/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_8
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_8 .. :try_end_8} :catch_5

    move-result v2

    :goto_5
    invoke-virtual {p0, v11}, Lcom/ime/implement/view/ViewControllerImpl;->setCurrentThaiVowelPageNum(I)V

    goto/16 :goto_0

    :cond_6
    :try_start_9
    const-string v0, "floating_phonepad_th_tone_01"

    invoke-static {v0}, Lcom/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_9
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_9 .. :try_end_9} :catch_5

    move-result v2

    goto :goto_5

    :catch_5
    move-exception v6

    const v2, 0x7f05011a

    goto :goto_5

    :catch_6
    move-exception v6

    const v2, 0x7f050119

    goto :goto_4

    :pswitch_6
    :try_start_a
    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v1, "INPUT_LANGUAGE"

    const v8, 0x656e4742

    invoke-interface {v0, v1, v8}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v10, :cond_7

    const-string v0, "floating_phonepad_km"

    invoke-static {v0}, Lcom/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_a
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_a .. :try_end_a} :catch_7

    move-result v2

    :goto_6
    invoke-virtual {p0, v12}, Lcom/ime/implement/view/ViewControllerImpl;->setCurrentThaiVowelPageNum(I)V

    goto/16 :goto_0

    :cond_7
    :try_start_b
    const-string v0, "floating_phonepad_th"

    invoke-static {v0}, Lcom/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_b
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_b .. :try_end_b} :catch_7

    move-result v2

    goto :goto_6

    :catch_7
    move-exception v6

    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v1, "INPUT_LANGUAGE"

    invoke-interface {v0, v1, v9}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v10, :cond_8

    const v2, 0x7f0500fa

    goto :goto_6

    :cond_8
    const v2, 0x7f050118

    goto :goto_6

    :pswitch_7
    invoke-virtual {p0}, Lcom/ime/implement/view/ViewControllerImpl;->getCurrentThaiVowelPageNum()I

    move-result v0

    if-ne v0, v11, :cond_b

    invoke-virtual {p0, v8}, Lcom/ime/implement/view/ViewControllerImpl;->setCurrentThaiVowelPageNum(I)V

    :try_start_c
    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v1, "INPUT_LANGUAGE"

    const v8, 0x656e4742

    invoke-interface {v0, v1, v8}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v10, :cond_9

    const-string v0, "floating_phonepad_km_special_02"

    invoke-static {v0}, Lcom/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v2

    goto/16 :goto_0

    :cond_9
    const-string v0, "floating_phonepad_th_tone_02"

    invoke-static {v0}, Lcom/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_c
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_c .. :try_end_c} :catch_8

    move-result v2

    goto/16 :goto_0

    :catch_8
    move-exception v6

    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v1, "INPUT_LANGUAGE"

    invoke-interface {v0, v1, v9}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v10, :cond_a

    const v2, 0x7f0500fc

    goto/16 :goto_0

    :cond_a
    const v2, 0x7f05011b

    goto/16 :goto_0

    :cond_b
    invoke-virtual {p0, v11}, Lcom/ime/implement/view/ViewControllerImpl;->setCurrentThaiVowelPageNum(I)V

    :try_start_d
    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v1, "INPUT_LANGUAGE"

    const v8, 0x656e4742

    invoke-interface {v0, v1, v8}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v10, :cond_c

    const-string v0, "floating_phonepad_km_special_01"

    invoke-static {v0}, Lcom/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v2

    goto/16 :goto_0

    :cond_c
    const-string v0, "floating_phonepad_th_tone_01"

    invoke-static {v0}, Lcom/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_d
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_d .. :try_end_d} :catch_9

    move-result v2

    goto/16 :goto_0

    :catch_9
    move-exception v6

    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v1, "INPUT_LANGUAGE"

    invoke-interface {v0, v1, v9}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v10, :cond_d

    const v2, 0x7f0500fb

    goto/16 :goto_0

    :cond_d
    const v2, 0x7f05011a

    goto/16 :goto_0

    :cond_e
    packed-switch p1, :pswitch_data_2

    goto/16 :goto_0

    :pswitch_8
    const v2, 0x7f050119

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/ime/implement/view/ViewControllerImpl;->setCurrentThaiVowelPageNum(I)V

    goto/16 :goto_0

    :pswitch_9
    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v1, "INPUT_LANGUAGE"

    invoke-interface {v0, v1, v9}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v10, :cond_f

    const v2, 0x7f0500fb

    :goto_7
    invoke-virtual {p0, v11}, Lcom/ime/implement/view/ViewControllerImpl;->setCurrentThaiVowelPageNum(I)V

    goto/16 :goto_0

    :cond_f
    const v2, 0x7f05011a

    goto :goto_7

    :pswitch_a
    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v1, "INPUT_LANGUAGE"

    invoke-interface {v0, v1, v9}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v10, :cond_10

    const v2, 0x7f0500fa

    :goto_8
    invoke-virtual {p0, v12}, Lcom/ime/implement/view/ViewControllerImpl;->setCurrentThaiVowelPageNum(I)V

    goto/16 :goto_0

    :cond_10
    const v2, 0x7f050118

    goto :goto_8

    :pswitch_b
    invoke-virtual {p0}, Lcom/ime/implement/view/ViewControllerImpl;->getCurrentThaiVowelPageNum()I

    move-result v0

    if-ne v0, v11, :cond_12

    invoke-virtual {p0, v8}, Lcom/ime/implement/view/ViewControllerImpl;->setCurrentThaiVowelPageNum(I)V

    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v1, "INPUT_LANGUAGE"

    invoke-interface {v0, v1, v9}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v10, :cond_11

    const v2, 0x7f0500fc

    goto/16 :goto_0

    :cond_11
    const v2, 0x7f05011b

    goto/16 :goto_0

    :cond_12
    invoke-virtual {p0, v11}, Lcom/ime/implement/view/ViewControllerImpl;->setCurrentThaiVowelPageNum(I)V

    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v1, "INPUT_LANGUAGE"

    invoke-interface {v0, v1, v9}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v10, :cond_13

    const v2, 0x7f0500fb

    goto/16 :goto_0

    :cond_13
    const v2, 0x7f05011a

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch -0x3d
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch -0x3d
        :pswitch_4
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :pswitch_data_2
    .packed-switch -0x3d
        :pswitch_8
        :pswitch_b
        :pswitch_a
        :pswitch_9
    .end packed-switch
.end method

.method protected getVOHWRKeyboardViewRscId(I)I
    .locals 1

    const v0, 0x7f030043

    return v0
.end method

.method protected getVoicePanelLayout(I)I
    .locals 1

    const v0, 0x7f0300a4

    return v0
.end method

.method public initialize()V
    .locals 8

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-super {p0}, Lcom/ime/framework/view/AbstractViewController;->initialize()V

    invoke-static {}, Lcom/ime/framework/repository/PropertyItems;->getWindowHeight()I

    move-result v1

    invoke-static {}, Lcom/ime/framework/repository/PropertyItems;->getWindowWidth()I

    move-result v2

    invoke-static {}, Lcom/ime/framework/repository/PropertyItems;->isUsingAddtoNumberKeyFirstLine()Z

    move-result v3

    iput-boolean v3, p0, Lcom/ime/implement/view/ViewControllerImpl;->mIsAddNumberKeyFirstLine:Z

    iget-boolean v3, p0, Lcom/ime/implement/view/ViewControllerImpl;->mIsKorMode:Z

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lcom/ime/implement/view/ViewControllerImpl;->mIsChnMode:Z

    if-nez v3, :cond_0

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v6, "CscFeature_Sip_EnableLanguageToggleButton"

    invoke-virtual {v3, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_0
    move v3, v5

    :goto_0
    iput-boolean v3, p0, Lcom/ime/implement/view/ViewControllerImpl;->USE_GLOBAL_KEY:Z

    const-string v3, "ATT"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_Sip_ReplaceSymbolLayout4"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/ime/implement/view/ViewControllerImpl;->USE_SYMBOL_LAYOUT_BY_ATT:Z

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v6, "CscFeature_Sip_EnableSmileySymbol"

    invoke-virtual {v3, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/ime/implement/view/ViewControllerImpl;->ADD_SMILEY_SYMBOL:Z

    iget-boolean v3, p0, Lcom/ime/implement/view/ViewControllerImpl;->USE_SYMBOL_LAYOUT_BY_ATT:Z

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/ime/implement/view/ViewControllerImpl;->mIsAddNumberKeyFirstLine:Z

    if-eqz v3, :cond_1

    iput-boolean v4, p0, Lcom/ime/implement/view/ViewControllerImpl;->USE_SYMBOL_LAYOUT_BY_ATT:Z

    iput-boolean v5, p0, Lcom/ime/implement/view/ViewControllerImpl;->USE_SYMBOL_LAYOUT_BY_ATT_WITH_NUMBER_KEY_FIRST_LINE:Z

    :cond_1
    new-instance v0, Lcom/sec/android/inputmethod/ConfigFeature;

    invoke-direct {v0}, Lcom/sec/android/inputmethod/ConfigFeature;-><init>()V

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/ConfigFeature;->isUSASymbolLayout()Z

    move-result v3

    iput-boolean v3, p0, Lcom/ime/implement/view/ViewControllerImpl;->mIsUSASymbolLayout:Z

    iget-object v3, p0, Lcom/ime/implement/view/ViewControllerImpl;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v5, "TABLET_MODE"

    invoke-interface {v3, v5, v4}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/ime/implement/view/ViewControllerImpl;->mIsTabletMode:Z

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_Sip_AddCommaKeyAsDefault"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/ime/implement/view/ViewControllerImpl;->mIsCommaKeyAsDefault:Z

    iget-object v3, p0, Lcom/ime/implement/view/ViewControllerImpl;->mShiftStateController:Lcom/ime/framework/common/ShiftStateController;

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/ime/framework/common/InputManager;->getShiftStateController()Lcom/ime/framework/common/ShiftStateController;

    move-result-object v3

    iput-object v3, p0, Lcom/ime/implement/view/ViewControllerImpl;->mShiftStateController:Lcom/ime/framework/common/ShiftStateController;

    :cond_2
    return-void

    :cond_3
    move v3, v4

    goto :goto_0
.end method

.method public isUseGlobalKey()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->USE_GLOBAL_KEY:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->getTalkBackEnable()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mIsTabletMode:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->getUniversalSwitchMode()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onChangeInputLanuage(Lcom/ime/framework/common/Language;)V
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/ime/framework/common/Language;->getId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ime/implement/view/ViewControllerImpl;->setSecondarySymbolStatus(I)V

    invoke-static {}, Lcom/ime/framework/repository/PropertyItems;->isUsingLanguageToast()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->isHWKeyboardConnected()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/ime/framework/sidesync/SideSyncManager;->getInstance()Lcom/ime/framework/sidesync/SideSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ime/framework/sidesync/SideSyncManager;->isSideSyncKeyboardConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {}, Lcom/ime/framework/repository/InputStatus;->isHwKeyInput()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mToast:Landroid/widget/Toast;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/ime/framework/common/Language;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mToast:Landroid/widget/Toast;

    :goto_0
    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_1
    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->isChnMode()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mCandidateView:Lcom/ime/framework/view/candidate/AbstractCandidateView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mCandidateView:Lcom/ime/framework/view/candidate/AbstractCandidateView;

    invoke-virtual {v0}, Lcom/ime/framework/view/candidate/AbstractCandidateView;->updateExpandCandidateLayout()V

    :cond_2
    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->isMobileKeyboard()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mToast:Landroid/widget/Toast;

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/ime/framework/common/Language;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mToast:Landroid/widget/Toast;

    :goto_1
    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mToast:Landroid/widget/Toast;

    const/16 v1, 0x50

    iget-object v2, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090728

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    invoke-virtual {v0, v1, v4, v2}, Landroid/widget/Toast;->setGravity(III)V

    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_3
    return-void

    :cond_4
    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mToast:Landroid/widget/Toast;

    invoke-virtual {p1}, Lcom/ime/framework/common/Language;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mToast:Landroid/widget/Toast;

    invoke-virtual {p1}, Lcom/ime/framework/common/Language;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method protected onInitializeCustomResources()V
    .locals 2

    iget-object v1, p0, Lcom/ime/implement/view/ViewControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/ime/implement/resource/CustomResource;->init(Landroid/content/res/Resources;)V

    return-void
.end method

.method protected onInitializeFonts()V
    .locals 2

    iget-object v0, p0, Lcom/ime/implement/view/ViewControllerImpl;->mFontManager:Lcom/ime/framework/common/FontManager;

    iget-object v1, p0, Lcom/ime/implement/view/ViewControllerImpl;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/ime/framework/common/FontManager;->initialize(Landroid/content/Context;)V

    return-void
.end method

.method public setCurrentThaiVowelPageNum(I)V
    .locals 0

    iput p1, p0, Lcom/ime/implement/view/ViewControllerImpl;->mCurrentThaiVowelPageNum:I

    return-void
.end method

.method public setSecondarySymbolStatus(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/ime/framework/view/AbstractViewController;->setSecondarySymbolStatus(I)V

    return-void
.end method

.method protected setSymbolPage(I)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/ime/implement/view/ViewControllerImpl;->getValidSymbolsPage(I)I

    move-result v0

    iget-object v1, p0, Lcom/ime/implement/view/ViewControllerImpl;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v2, "SYMBOLS_PAGE"

    invoke-interface {v1, v2, v0}, Lcom/ime/framework/repository/Repository;->setData(Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/ime/implement/view/ViewControllerImpl;->updateKeyboard()V

    return-void
.end method
