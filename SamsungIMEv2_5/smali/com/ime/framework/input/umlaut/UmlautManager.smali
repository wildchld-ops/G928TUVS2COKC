.class public Lcom/ime/framework/input/umlaut/UmlautManager;
.super Ljava/lang/Object;
.source "UmlautManager.java"


# static fields
.field public static final INVALID_VALUE:Ljava/lang/String; = ""

.field private static sInstance:Lcom/ime/framework/input/umlaut/UmlautManager;


# instance fields
.field private mCurrentUmlautMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/ime/framework/input/umlaut/UmlautInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mUmlautMapSet:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/ime/framework/input/umlaut/UmlautInfo;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/ime/framework/input/umlaut/UmlautManager;
    .locals 2

    const-class v1, Lcom/ime/framework/input/umlaut/UmlautManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/ime/framework/input/umlaut/UmlautManager;->sInstance:Lcom/ime/framework/input/umlaut/UmlautManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/ime/framework/input/umlaut/UmlautManager;

    invoke-direct {v0}, Lcom/ime/framework/input/umlaut/UmlautManager;-><init>()V

    sput-object v0, Lcom/ime/framework/input/umlaut/UmlautManager;->sInstance:Lcom/ime/framework/input/umlaut/UmlautManager;

    :cond_0
    sget-object v0, Lcom/ime/framework/input/umlaut/UmlautManager;->sInstance:Lcom/ime/framework/input/umlaut/UmlautManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public getCurrentKeyUmlautString(Lcom/ime/framework/view/KeboardKeyInfo;)Ljava/lang/StringBuilder;
    .locals 18

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v1, 0x0

    const/4 v10, 0x0

    invoke-static {}, Lcom/ime/framework/common/InputManagerImpl;->getInstance()Lcom/ime/framework/common/InputManager;

    move-result-object v4

    const/high16 v6, 0x656e0000

    const/4 v14, 0x0

    const/4 v12, 0x0

    if-eqz v4, :cond_0

    invoke-interface {v4}, Lcom/ime/framework/common/InputManager;->getShiftStateController()Lcom/ime/framework/common/ShiftStateController;

    move-result-object v15

    invoke-interface {v15}, Lcom/ime/framework/common/ShiftStateController;->getShiftState()Z

    move-result v13

    invoke-interface {v4}, Lcom/ime/framework/common/InputManager;->getShiftStateController()Lcom/ime/framework/common/ShiftStateController;

    move-result-object v15

    invoke-interface {v15}, Lcom/ime/framework/common/ShiftStateController;->getCapsLockState()Z

    move-result v1

    invoke-interface {v4}, Lcom/ime/framework/common/InputManager;->getRepository()Lcom/ime/framework/repository/Repository;

    move-result-object v10

    if-eqz v10, :cond_0

    const-string v15, "INPUT_LANGUAGE"

    const/high16 v16, 0x656e0000

    move/from16 v0, v16

    invoke-interface {v10, v15, v0}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v6

    const-string v15, "SETTINGS_TURKISH_KEYBOARD_TYPE"

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-interface {v10, v15, v0}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v14

    :cond_0
    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/ime/framework/view/KeboardKeyInfo;->popupCharacters:Ljava/lang/CharSequence;

    if-nez v15, :cond_6

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    const v15, 0x7a314d4d

    if-eq v6, v15, :cond_1

    const v15, 0x6d794d4d

    if-ne v6, v15, :cond_2

    :cond_1
    if-eqz v13, :cond_2

    new-instance v15, Lcom/ime/framework/input/Indochina/MyanmarPopupCharacters;

    invoke-direct {v15}, Lcom/ime/framework/input/Indochina/MyanmarPopupCharacters;-><init>()V

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/ime/framework/view/KeboardKeyInfo;->codes:[I

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aget v16, v16, v17

    move/from16 v0, v16

    invoke-virtual {v15, v6, v0}, Lcom/ime/framework/input/Indochina/MyanmarPopupCharacters;->getPopupCharactersShifted(II)Ljava/lang/CharSequence;

    move-result-object v9

    if-nez v9, :cond_7

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    :cond_2
    :goto_1
    new-instance v12, Ljava/lang/StringBuilder;

    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/ime/framework/view/KeboardKeyInfo;->codes:[I

    const/16 v16, 0x0

    aget v15, v15, v16

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/ime/framework/input/umlaut/UmlautManager;->getUmlautString(I)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v12, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    invoke-static {}, Lcom/ime/framework/common/InputManagerImpl;->getInstance()Lcom/ime/framework/common/InputManager;

    move-result-object v7

    invoke-interface {v7}, Lcom/ime/framework/common/InputManager;->isMobileKeyboard()Z

    move-result v15

    if-nez v15, :cond_4

    const/high16 v15, 0x74720000

    if-ne v6, v15, :cond_8

    const/4 v15, 0x1

    if-eq v14, v15, :cond_3

    const/4 v15, 0x2

    if-ne v14, v15, :cond_4

    :cond_3
    const/4 v5, 0x1

    :cond_4
    :goto_2
    if-nez v5, :cond_9

    if-eqz v12, :cond_5

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->length()I

    move-result v15

    if-nez v15, :cond_9

    :cond_5
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->length()I

    move-result v15

    add-int/lit8 v2, v15, -0x1

    const/4 v8, 0x0

    :goto_3
    if-lt v2, v8, :cond_9

    const/4 v15, 0x0

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v12, v15, v0}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, -0x1

    goto :goto_3

    :cond_6
    new-instance v11, Ljava/lang/StringBuilder;

    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/ime/framework/view/KeboardKeyInfo;->popupCharacters:Ljava/lang/CharSequence;

    invoke-direct {v11, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_7
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_8
    const/high16 v15, 0x617a0000

    if-ne v6, v15, :cond_4

    const/4 v5, 0x1

    goto :goto_2

    :cond_9
    if-eqz v12, :cond_10

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->length()I

    move-result v15

    if-lez v15, :cond_10

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->length()I

    move-result v15

    add-int/lit8 v2, v15, -0x1

    const/4 v8, 0x0

    :goto_4
    if-lt v2, v8, :cond_10

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v15

    invoke-static {v15}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v15, -0x1

    if-eq v3, v15, :cond_a

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    move-result-object v11

    :cond_a
    if-nez v5, :cond_d

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v15

    const/16 v16, 0x131

    move/from16 v0, v16

    if-ne v15, v0, :cond_d

    if-nez v13, :cond_b

    if-eqz v1, :cond_d

    :cond_b
    const/4 v15, 0x0

    const/16 v16, 0x130

    move/from16 v0, v16

    invoke-virtual {v11, v15, v0}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    :cond_c
    :goto_5
    add-int/lit8 v2, v2, -0x1

    goto :goto_4

    :cond_d
    const/high16 v15, 0x656c0000

    if-ne v6, v15, :cond_f

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v15

    const/16 v16, 0x390

    move/from16 v0, v16

    if-eq v15, v0, :cond_e

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v15

    const/16 v16, 0x3b0

    move/from16 v0, v16

    if-ne v15, v0, :cond_f

    :cond_e
    if-nez v13, :cond_c

    if-nez v1, :cond_c

    :cond_f
    const/4 v15, 0x0

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v11, v15, v0}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    goto :goto_5

    :cond_10
    return-object v11
.end method

.method public getCurrentKeyUmlautString(Lcom/ime/framework/view/Keyboard$Key;)Ljava/lang/StringBuilder;
    .locals 18

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v2, 0x0

    const/4 v11, 0x0

    invoke-static {}, Lcom/ime/framework/common/InputManagerImpl;->getInstance()Lcom/ime/framework/common/InputManager;

    move-result-object v5

    const/high16 v8, 0x656e0000

    const/4 v14, 0x0

    const/4 v15, 0x0

    if-eqz v5, :cond_0

    invoke-interface {v5}, Lcom/ime/framework/common/InputManager;->getShiftStateController()Lcom/ime/framework/common/ShiftStateController;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Lcom/ime/framework/common/ShiftStateController;->getShiftState()Z

    move-result v13

    invoke-interface {v5}, Lcom/ime/framework/common/InputManager;->getShiftStateController()Lcom/ime/framework/common/ShiftStateController;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Lcom/ime/framework/common/ShiftStateController;->getCapsLockState()Z

    move-result v2

    invoke-interface {v5}, Lcom/ime/framework/common/InputManager;->getRepository()Lcom/ime/framework/repository/Repository;

    move-result-object v11

    if-eqz v11, :cond_0

    const-string v16, "INPUT_LANGUAGE"

    const/high16 v17, 0x656e0000

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-interface {v11, v0, v1}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v8

    const-string v16, "SETTINGS_TURKISH_KEYBOARD_TYPE"

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-interface {v11, v0, v1}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v14

    :cond_0
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/ime/framework/view/Keyboard$Key;->popupCharacters:Ljava/lang/CharSequence;

    move-object/from16 v16, v0

    if-nez v16, :cond_1

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    if-eqz v5, :cond_3

    invoke-interface {v5}, Lcom/ime/framework/common/InputManager;->getInputModeManager()Lcom/ime/framework/inputmode/InputModeManager;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v16

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_3

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/ime/framework/view/Keyboard$Key;->label:Ljava/lang/CharSequence;

    if-eqz v7, :cond_4

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v9

    if-lez v9, :cond_4

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v9, :cond_4

    if-nez v15, :cond_2

    invoke-interface {v7, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v16

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/ime/framework/input/umlaut/UmlautManager;->getUmlautString(I)Ljava/lang/String;

    move-result-object v15

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    new-instance v12, Ljava/lang/StringBuilder;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/ime/framework/view/Keyboard$Key;->popupCharacters:Ljava/lang/CharSequence;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-direct {v12, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-interface {v7, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/ime/framework/input/umlaut/UmlautManager;->getUmlautString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    goto :goto_2

    :cond_3
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/ime/framework/view/Keyboard$Key;->codes:[I

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aget v16, v16, v17

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/ime/framework/input/umlaut/UmlautManager;->getUmlautString(I)Ljava/lang/String;

    move-result-object v15

    :cond_4
    const/4 v6, 0x0

    const/high16 v16, 0x74720000

    move/from16 v0, v16

    if-ne v8, v0, :cond_5

    if-nez v14, :cond_5

    const/4 v6, 0x1

    :cond_5
    if-eqz v15, :cond_d

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v16

    if-lez v16, :cond_d

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v16

    add-int/lit8 v3, v16, -0x1

    const/4 v10, 0x0

    :goto_3
    if-lt v3, v10, :cond_d

    invoke-virtual {v15, v3}, Ljava/lang/String;->charAt(I)C

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v4

    const/16 v16, -0x1

    move/from16 v0, v16

    if-eq v4, v0, :cond_6

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    move-result-object v12

    :cond_6
    invoke-interface {v5}, Lcom/ime/framework/common/InputManager;->isMobileKeyboard()Z

    move-result v16

    if-nez v16, :cond_a

    if-nez v6, :cond_7

    const/high16 v16, 0x617a0000

    move/from16 v0, v16

    if-ne v8, v0, :cond_a

    :cond_7
    invoke-virtual {v15, v3}, Ljava/lang/String;->charAt(I)C

    move-result v16

    const/16 v17, 0x131

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_a

    if-nez v13, :cond_8

    if-eqz v2, :cond_a

    :cond_8
    const/16 v16, 0x0

    const/16 v17, 0x130

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v12, v0, v1}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    :cond_9
    :goto_4
    add-int/lit8 v3, v3, -0x1

    goto :goto_3

    :cond_a
    const/high16 v16, 0x656c0000

    move/from16 v0, v16

    if-ne v8, v0, :cond_c

    invoke-virtual {v15, v3}, Ljava/lang/String;->charAt(I)C

    move-result v16

    const/16 v17, 0x390

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_b

    invoke-virtual {v15, v3}, Ljava/lang/String;->charAt(I)C

    move-result v16

    const/16 v17, 0x3b0

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_c

    :cond_b
    if-nez v13, :cond_9

    if-nez v2, :cond_9

    :cond_c
    const/16 v16, 0x0

    invoke-virtual {v15, v3}, Ljava/lang/String;->charAt(I)C

    move-result v17

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v12, v0, v1}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_d
    return-object v12
.end method

.method protected getCurrentUmlautSelectedLanguages()[Lcom/ime/framework/common/Language;
    .locals 6

    const/4 v5, 0x0

    const/4 v0, 0x0

    invoke-static {}, Lcom/ime/framework/common/InputManagerImpl;->getInstance()Lcom/ime/framework/common/InputManager;

    move-result-object v3

    const/4 v2, 0x0

    const/4 v1, 0x0

    if-eqz v3, :cond_0

    invoke-interface {v3}, Lcom/ime/framework/common/InputManager;->getSelectedLanguageList()[Lcom/ime/framework/common/Language;

    move-result-object v2

    invoke-interface {v3}, Lcom/ime/framework/common/InputManager;->isDaMode()Z

    move-result v1

    :cond_0
    if-eqz v1, :cond_2

    if-eqz v2, :cond_1

    array-length v4, v2

    if-lez v4, :cond_1

    move-object v0, v2

    :goto_0
    return-object v0

    :cond_1
    new-array v0, v5, [Lcom/ime/framework/common/Language;

    goto :goto_0

    :cond_2
    new-array v0, v5, [Lcom/ime/framework/common/Language;

    goto :goto_0
.end method

.method public getUmlautString(I)Ljava/lang/String;
    .locals 6

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/ime/framework/input/umlaut/UmlautManager;->getCurrentUmlautSelectedLanguages()[Lcom/ime/framework/common/Language;

    move-result-object v3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/ime/framework/input/umlaut/UmlautManager;->mCurrentUmlautMap:Ljava/util/HashMap;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/ime/framework/input/umlaut/UmlautManager;->mCurrentUmlautMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ime/framework/input/umlaut/UmlautInfo;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/ime/framework/input/umlaut/UmlautInfo;->getUmlautString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const/4 v1, 0x0

    :goto_0
    array-length v4, v3

    if-ge v1, v4, :cond_2

    aget-object v4, v3, v1

    invoke-virtual {p0, v4}, Lcom/ime/framework/input/umlaut/UmlautManager;->setInputLanguage(Lcom/ime/framework/common/Language;)V

    iget-object v4, p0, Lcom/ime/framework/input/umlaut/UmlautManager;->mCurrentUmlautMap:Ljava/util/HashMap;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/ime/framework/input/umlaut/UmlautManager;->mCurrentUmlautMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ime/framework/input/umlaut/UmlautInfo;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/ime/framework/input/umlaut/UmlautInfo;->getUmlautString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public final initialize()V
    .locals 5

    invoke-static {}, Lcom/ime/framework/common/InputManagerImpl;->getInstance()Lcom/ime/framework/common/InputManager;

    move-result-object v0

    new-instance v2, Ljava/util/HashMap;

    const/16 v3, 0xa

    const/high16 v4, 0x40a00000    # 5.0f

    invoke-direct {v2, v3, v4}, Ljava/util/HashMap;-><init>(IF)V

    iput-object v2, p0, Lcom/ime/framework/input/umlaut/UmlautManager;->mUmlautMapSet:Ljava/util/HashMap;

    new-instance v1, Lcom/ime/framework/input/umlaut/UmlautMapFactory;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->isSwiftKeyMode()Z

    move-result v2

    invoke-direct {v1, v2}, Lcom/ime/framework/input/umlaut/UmlautMapFactory;-><init>(Z)V

    invoke-virtual {v1}, Lcom/ime/framework/input/umlaut/UmlautMapFactory;->getUmlautMapSet()Ljava/util/HashMap;

    move-result-object v2

    iput-object v2, p0, Lcom/ime/framework/input/umlaut/UmlautManager;->mUmlautMapSet:Ljava/util/HashMap;

    return-void
.end method

.method public setInputLanguage(Lcom/ime/framework/common/Language;)V
    .locals 10

    const/4 v9, 0x1

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/ime/framework/common/Language;->getCountryCode()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {p1}, Lcom/ime/framework/common/Language;->getCountryCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v5, v7, :cond_4

    :cond_0
    invoke-virtual {p1}, Lcom/ime/framework/common/Language;->getLanguageCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/ime/framework/common/Language;->getId()I

    move-result v5

    const/high16 v6, -0x10000

    and-int v2, v5, v6

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    sparse-switch v2, :sswitch_data_0

    :cond_1
    :goto_0
    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/ime/framework/common/Language;->getLanguageCode()Ljava/lang/String;

    move-result-object v5

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :cond_2
    :goto_1
    iget-object v5, p0, Lcom/ime/framework/input/umlaut/UmlautManager;->mUmlautMapSet:Ljava/util/HashMap;

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/HashMap;

    iput-object v5, p0, Lcom/ime/framework/input/umlaut/UmlautManager;->mCurrentUmlautMap:Ljava/util/HashMap;

    return-void

    :sswitch_0
    const-string v5, "nl"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "BE"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "%s_%s"

    new-array v6, v7, [Ljava/lang/Object;

    aput-object v1, v6, v8

    aput-object v4, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_1
    const-string v5, "CA"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "CH"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_3
    const-string v5, "%s_%s"

    new-array v6, v7, [Ljava/lang/Object;

    aput-object v1, v6, v8

    aput-object v4, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    const-string v5, "%s_%s"

    new-array v6, v7, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/ime/framework/common/Language;->getLanguageCode()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {p1}, Lcom/ime/framework/common/Language;->getCountryCode()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x66720000 -> :sswitch_1
        0x66724341 -> :sswitch_1
        0x66724652 -> :sswitch_1
        0x6e6c0000 -> :sswitch_0
    .end sparse-switch
.end method
