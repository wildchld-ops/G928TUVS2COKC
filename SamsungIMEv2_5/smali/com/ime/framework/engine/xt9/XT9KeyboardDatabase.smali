.class public Lcom/ime/framework/engine/xt9/XT9KeyboardDatabase;
.super Ljava/lang/Object;
.source "XT9KeyboardDatabase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ime/framework/engine/xt9/XT9KeyboardDatabase$XT9Key;
    }
.end annotation


# instance fields
.field public final height:I

.field public final id:I

.field public final isSecondPage:Z

.field public final keys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ime/framework/engine/xt9/XT9KeyboardDatabase$XT9Key;",
            ">;"
        }
    .end annotation
.end field

.field protected mInputManager:Lcom/ime/framework/common/InputManager;

.field protected mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

.field public final page:I

.field public final width:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/ime/framework/engine/xt9/XT9KeyboardDatabase;->id:I

    iput v0, p0, Lcom/ime/framework/engine/xt9/XT9KeyboardDatabase;->page:I

    iput v0, p0, Lcom/ime/framework/engine/xt9/XT9KeyboardDatabase;->width:I

    iput v0, p0, Lcom/ime/framework/engine/xt9/XT9KeyboardDatabase;->height:I

    iput-boolean v0, p0, Lcom/ime/framework/engine/xt9/XT9KeyboardDatabase;->isSecondPage:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ime/framework/engine/xt9/XT9KeyboardDatabase;->keys:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(IILcom/ime/framework/view/Keyboard;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/ime/framework/common/InputManagerImpl;->getInstance()Lcom/ime/framework/common/InputManager;

    move-result-object v0

    iput-object v0, p0, Lcom/ime/framework/engine/xt9/XT9KeyboardDatabase;->mInputManager:Lcom/ime/framework/common/InputManager;

    iget-object v0, p0, Lcom/ime/framework/engine/xt9/XT9KeyboardDatabase;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->getInputModeManager()Lcom/ime/framework/inputmode/InputModeManager;

    move-result-object v0

    iput-object v0, p0, Lcom/ime/framework/engine/xt9/XT9KeyboardDatabase;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    iput p1, p0, Lcom/ime/framework/engine/xt9/XT9KeyboardDatabase;->id:I

    iput p2, p0, Lcom/ime/framework/engine/xt9/XT9KeyboardDatabase;->page:I

    invoke-virtual {p3}, Lcom/ime/framework/view/Keyboard;->getMinWidth()I

    move-result v0

    iput v0, p0, Lcom/ime/framework/engine/xt9/XT9KeyboardDatabase;->width:I

    invoke-virtual {p3}, Lcom/ime/framework/view/Keyboard;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/ime/framework/engine/xt9/XT9KeyboardDatabase;->height:I

    iput-boolean p4, p0, Lcom/ime/framework/engine/xt9/XT9KeyboardDatabase;->isSecondPage:Z

    invoke-virtual {p0, p3}, Lcom/ime/framework/engine/xt9/XT9KeyboardDatabase;->makeKeys(Lcom/ime/framework/view/Keyboard;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ime/framework/engine/xt9/XT9KeyboardDatabase;->keys:Ljava/util/List;

    return-void
.end method

.method private isBPMFTone(I)Z
    .locals 1

    sparse-switch p1, :sswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0xb2 -> :sswitch_0
        0xb3 -> :sswitch_0
        0xb4 -> :sswitch_0
        0xb5 -> :sswitch_0
        0x323 -> :sswitch_0
    .end sparse-switch
.end method

.method private isChnFullHwrSymbol(I)Z
    .locals 1

    const v0, 0xff1f

    if-eq p1, v0, :cond_0

    const v0, 0xff01

    if-eq p1, v0, :cond_0

    const/16 v0, 0x3001

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isEnableShfit()Z
    .locals 3

    const/4 v1, 0x0

    const-string v0, ""

    iget-object v2, p0, Lcom/ime/framework/engine/xt9/XT9KeyboardDatabase;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/ime/framework/common/InputManager;->getCurrentInputLanguageCode()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ko"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method


# virtual methods
.method makeKeys(Lcom/ime/framework/view/Keyboard;)Ljava/util/List;
    .locals 40
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ime/framework/view/Keyboard;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/ime/framework/engine/xt9/XT9KeyboardDatabase$XT9Key;",
            ">;"
        }
    .end annotation

    new-instance v39, Ljava/util/ArrayList;

    invoke-direct/range {v39 .. v39}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/ime/framework/view/Keyboard;->getKeys()Ljava/util/List;

    move-result-object v34

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/framework/engine/xt9/XT9KeyboardDatabase;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v2}, Lcom/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v31

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/framework/engine/xt9/XT9KeyboardDatabase;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/ime/framework/common/InputManager;->getRepository()Lcom/ime/framework/repository/Repository;

    move-result-object v2

    const-string v4, "INPUT_LANGUAGE"

    const v5, 0x656e4742

    invoke-interface {v2, v4, v5}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v30

    invoke-static {}, Lcom/ime/framework/input/umlaut/UmlautManager;->getInstance()Lcom/ime/framework/input/umlaut/UmlautManager;

    move-result-object v38

    invoke-static {}, Lcom/ime/framework/input/secondarykey/SecondaryKeyManager;->getInstance()Lcom/ime/framework/input/secondarykey/SecondaryKeyManager;

    move-result-object v36

    invoke-direct/range {p0 .. p0}, Lcom/ime/framework/engine/xt9/XT9KeyboardDatabase;->isEnableShfit()Z

    move-result v10

    const/16 v18, 0x0

    const/4 v2, 0x1

    move/from16 v0, v31

    if-eq v0, v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/framework/engine/xt9/XT9KeyboardDatabase;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v2}, Lcom/ime/framework/inputmode/InputModeManager;->isFloatingPhonepadKeyboardForMultiWindow()Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_0
    const/16 v32, 0x1

    :goto_0
    invoke-interface/range {v34 .. v34}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v28

    :cond_1
    :goto_1
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Lcom/ime/framework/view/Keyboard$Key;

    move-object/from16 v0, v38

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/ime/framework/input/umlaut/UmlautManager;->getCurrentKeyUmlautString(Lcom/ime/framework/view/Keyboard$Key;)Ljava/lang/StringBuilder;

    move-result-object v18

    if-eqz v18, :cond_2

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_2

    const/4 v2, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    move-object/from16 v0, v33

    iget-object v4, v0, Lcom/ime/framework/view/Keyboard$Key;->codes:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    if-ne v2, v4, :cond_2

    const/4 v2, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    :cond_2
    move-object/from16 v0, v33

    iget-object v2, v0, Lcom/ime/framework/view/Keyboard$Key;->codes:[I

    const/4 v4, 0x0

    aget v2, v2, v4

    if-gez v2, :cond_3

    move-object/from16 v0, v33

    iget-object v2, v0, Lcom/ime/framework/view/Keyboard$Key;->codes:[I

    const/4 v4, 0x0

    aget v2, v2, v4

    const/16 v4, -0xff

    if-eq v2, v4, :cond_3

    move-object/from16 v0, v33

    iget-object v2, v0, Lcom/ime/framework/view/Keyboard$Key;->codes:[I

    const/4 v4, 0x0

    aget v2, v2, v4

    const/16 v4, -0x101

    if-ne v2, v4, :cond_6

    :cond_3
    move-object/from16 v0, v33

    iget-object v2, v0, Lcom/ime/framework/view/Keyboard$Key;->codes:[I

    const/4 v4, 0x0

    aget v2, v2, v4

    const/16 v4, 0x20

    if-eq v2, v4, :cond_6

    move-object/from16 v0, v33

    iget-object v2, v0, Lcom/ime/framework/view/Keyboard$Key;->codes:[I

    const/4 v4, 0x0

    aget v2, v2, v4

    const/16 v4, 0xa

    if-eq v2, v4, :cond_6

    move-object/from16 v0, v33

    iget-object v2, v0, Lcom/ime/framework/view/Keyboard$Key;->codes:[I

    const/4 v4, 0x0

    aget v2, v2, v4

    const/16 v4, 0x40

    if-ne v2, v4, :cond_4

    const/4 v2, 0x1

    move/from16 v0, v31

    if-ne v0, v2, :cond_6

    :cond_4
    move-object/from16 v0, v33

    iget-object v2, v0, Lcom/ime/framework/view/Keyboard$Key;->codes:[I

    const/4 v4, 0x0

    aget v2, v2, v4

    const/16 v4, 0x2f

    if-ne v2, v4, :cond_5

    const/4 v2, 0x1

    move/from16 v0, v31

    if-ne v0, v2, :cond_6

    :cond_5
    move-object/from16 v0, v33

    iget-object v2, v0, Lcom/ime/framework/view/Keyboard$Key;->codes:[I

    const/4 v4, 0x0

    aget v2, v2, v4

    const/16 v4, 0x2c

    if-ne v2, v4, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/framework/engine/xt9/XT9KeyboardDatabase;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v2}, Lcom/ime/framework/inputmode/InputModeManager;->getInputRange()I

    move-result v2

    if-nez v2, :cond_8

    const/4 v2, 0x1

    move/from16 v0, v31

    if-eq v0, v2, :cond_8

    :cond_6
    new-instance v2, Lcom/ime/framework/engine/xt9/XT9KeyboardDatabase$XT9Key;

    move-object/from16 v0, v33

    iget-object v4, v0, Lcom/ime/framework/view/Keyboard$Key;->codes:[I

    const/4 v5, 0x0

    aget v3, v4, v5

    const/4 v4, 0x4

    move-object/from16 v0, v33

    iget v5, v0, Lcom/ime/framework/view/Keyboard$Key;->x:I

    move-object/from16 v0, v33

    iget v6, v0, Lcom/ime/framework/view/Keyboard$Key;->y:I

    move-object/from16 v0, v33

    iget v7, v0, Lcom/ime/framework/view/Keyboard$Key;->width:I

    move-object/from16 v0, v33

    iget v8, v0, Lcom/ime/framework/view/Keyboard$Key;->height:I

    const/4 v9, 0x0

    invoke-direct/range {v2 .. v10}, Lcom/ime/framework/engine/xt9/XT9KeyboardDatabase$XT9Key;-><init>(IIIIIILjava/lang/CharSequence;Z)V

    move-object/from16 v0, v39

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_7
    const/16 v32, 0x0

    goto/16 :goto_0

    :cond_8
    move-object/from16 v0, v33

    iget-object v2, v0, Lcom/ime/framework/view/Keyboard$Key;->codes:[I

    const/4 v4, 0x0

    aget v3, v2, v4

    move-object/from16 v0, v36

    invoke-virtual {v0, v3}, Lcom/ime/framework/input/secondarykey/SecondaryKeyManager;->getSecondaryKey(I)I

    move-result v35

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/ime/framework/engine/xt9/XT9KeyboardDatabase;->isSecondPage:Z

    if-eqz v2, :cond_a

    const/16 v2, -0xff

    move/from16 v0, v35

    if-eq v0, v2, :cond_a

    const/16 v29, -0x1

    move/from16 v0, v35

    int-to-char v2, v0

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v18

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v29

    const/4 v2, -0x1

    move/from16 v0, v29

    if-eq v0, v2, :cond_9

    move-object/from16 v0, v18

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    :cond_9
    move/from16 v3, v35

    :cond_a
    int-to-char v2, v3

    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    if-eqz v2, :cond_b

    if-gtz v3, :cond_c

    :cond_b
    const v2, 0x7a685457

    move/from16 v0, v30

    if-ne v0, v2, :cond_f

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/ime/framework/engine/xt9/XT9KeyboardDatabase;->isBPMFTone(I)Z

    move-result v2

    if-eqz v2, :cond_f

    :cond_c
    const/4 v2, 0x1

    move/from16 v0, v31

    if-eq v0, v2, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/framework/engine/xt9/XT9KeyboardDatabase;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v2}, Lcom/ime/framework/inputmode/InputModeManager;->isFloatingPhonepadKeyboardForMultiWindow()Z

    move-result v2

    if-eqz v2, :cond_e

    :cond_d
    new-instance v2, Lcom/ime/framework/engine/xt9/XT9KeyboardDatabase$XT9Key;

    move-object/from16 v0, v33

    iget-object v3, v0, Lcom/ime/framework/view/Keyboard$Key;->codes:[I

    const/4 v4, 0x1

    move-object/from16 v0, v33

    iget v5, v0, Lcom/ime/framework/view/Keyboard$Key;->x:I

    move-object/from16 v0, v33

    iget v6, v0, Lcom/ime/framework/view/Keyboard$Key;->y:I

    move-object/from16 v0, v33

    iget v7, v0, Lcom/ime/framework/view/Keyboard$Key;->width:I

    move-object/from16 v0, v33

    iget v8, v0, Lcom/ime/framework/view/Keyboard$Key;->height:I

    move-object/from16 v9, v18

    invoke-direct/range {v2 .. v10}, Lcom/ime/framework/engine/xt9/XT9KeyboardDatabase$XT9Key;-><init>([IIIIIILjava/lang/CharSequence;Z)V

    move-object/from16 v0, v39

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_e
    new-instance v2, Lcom/ime/framework/engine/xt9/XT9KeyboardDatabase$XT9Key;

    const/4 v4, 0x1

    move-object/from16 v0, v33

    iget v5, v0, Lcom/ime/framework/view/Keyboard$Key;->x:I

    move-object/from16 v0, v33

    iget v6, v0, Lcom/ime/framework/view/Keyboard$Key;->y:I

    move-object/from16 v0, v33

    iget v7, v0, Lcom/ime/framework/view/Keyboard$Key;->width:I

    move-object/from16 v0, v33

    iget v8, v0, Lcom/ime/framework/view/Keyboard$Key;->height:I

    move-object/from16 v9, v18

    invoke-direct/range {v2 .. v10}, Lcom/ime/framework/engine/xt9/XT9KeyboardDatabase$XT9Key;-><init>(IIIIIILjava/lang/CharSequence;Z)V

    move-object/from16 v0, v39

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_f
    int-to-char v2, v3

    invoke-static {v2}, Ljava/lang/Character;->isLetter(C)Z

    move-result v2

    if-eqz v2, :cond_10

    if-gtz v3, :cond_11

    :cond_10
    const v2, 0xff0c

    if-eq v3, v2, :cond_11

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/ime/framework/engine/xt9/XT9KeyboardDatabase;->isChnFullHwrSymbol(I)Z

    move-result v2

    if-eqz v2, :cond_14

    :cond_11
    const/4 v2, 0x1

    move/from16 v0, v31

    if-eq v0, v2, :cond_12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/framework/engine/xt9/XT9KeyboardDatabase;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v2}, Lcom/ime/framework/inputmode/InputModeManager;->isFloatingPhonepadKeyboardForMultiWindow()Z

    move-result v2

    if-eqz v2, :cond_13

    :cond_12
    new-instance v11, Lcom/ime/framework/engine/xt9/XT9KeyboardDatabase$XT9Key;

    move-object/from16 v0, v33

    iget-object v12, v0, Lcom/ime/framework/view/Keyboard$Key;->codes:[I

    const/4 v13, 0x1

    move-object/from16 v0, v33

    iget v14, v0, Lcom/ime/framework/view/Keyboard$Key;->x:I

    move-object/from16 v0, v33

    iget v15, v0, Lcom/ime/framework/view/Keyboard$Key;->y:I

    move-object/from16 v0, v33

    iget v0, v0, Lcom/ime/framework/view/Keyboard$Key;->width:I

    move/from16 v16, v0

    move-object/from16 v0, v33

    iget v0, v0, Lcom/ime/framework/view/Keyboard$Key;->height:I

    move/from16 v17, v0

    move/from16 v19, v10

    invoke-direct/range {v11 .. v19}, Lcom/ime/framework/engine/xt9/XT9KeyboardDatabase$XT9Key;-><init>([IIIIIILjava/lang/CharSequence;Z)V

    move-object/from16 v0, v39

    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_13
    new-instance v2, Lcom/ime/framework/engine/xt9/XT9KeyboardDatabase$XT9Key;

    const/4 v4, 0x0

    move-object/from16 v0, v33

    iget v5, v0, Lcom/ime/framework/view/Keyboard$Key;->x:I

    move-object/from16 v0, v33

    iget v6, v0, Lcom/ime/framework/view/Keyboard$Key;->y:I

    move-object/from16 v0, v33

    iget v7, v0, Lcom/ime/framework/view/Keyboard$Key;->width:I

    move-object/from16 v0, v33

    iget v8, v0, Lcom/ime/framework/view/Keyboard$Key;->height:I

    move-object/from16 v9, v18

    invoke-direct/range {v2 .. v10}, Lcom/ime/framework/engine/xt9/XT9KeyboardDatabase$XT9Key;-><init>(IIIIIILjava/lang/CharSequence;Z)V

    move-object/from16 v0, v39

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_14
    if-eqz v32, :cond_15

    move-object/from16 v0, v33

    iget-object v2, v0, Lcom/ime/framework/view/Keyboard$Key;->codes:[I

    array-length v2, v2

    const/4 v4, 0x1

    if-lt v2, v4, :cond_15

    const-string v2, "StrEmpty"

    move-object/from16 v0, v33

    iget-object v4, v0, Lcom/ime/framework/view/Keyboard$Key;->label:Ljava/lang/CharSequence;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    :cond_15
    const v2, 0x7a68434e

    move/from16 v0, v30

    if-ne v0, v2, :cond_17

    const/16 v2, 0x27

    if-ne v3, v2, :cond_17

    :cond_16
    new-instance v2, Lcom/ime/framework/engine/xt9/XT9KeyboardDatabase$XT9Key;

    const/4 v4, 0x2

    move-object/from16 v0, v33

    iget v5, v0, Lcom/ime/framework/view/Keyboard$Key;->x:I

    move-object/from16 v0, v33

    iget v6, v0, Lcom/ime/framework/view/Keyboard$Key;->y:I

    move-object/from16 v0, v33

    iget v7, v0, Lcom/ime/framework/view/Keyboard$Key;->width:I

    move-object/from16 v0, v33

    iget v8, v0, Lcom/ime/framework/view/Keyboard$Key;->height:I

    move-object/from16 v9, v18

    invoke-direct/range {v2 .. v10}, Lcom/ime/framework/engine/xt9/XT9KeyboardDatabase$XT9Key;-><init>(IIIIIILjava/lang/CharSequence;Z)V

    move-object/from16 v0, v39

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_17
    if-eqz v32, :cond_19

    invoke-static {}, Lcom/ime/framework/repository/EditorStatus;->isPhoneNumberInputClass()Z

    move-result v2

    if-eqz v2, :cond_19

    const/16 v2, 0x2a

    if-eq v3, v2, :cond_18

    const/16 v2, 0x23

    if-eq v3, v2, :cond_18

    const/16 v2, 0x2f

    if-eq v3, v2, :cond_18

    const/16 v2, 0x28

    if-eq v3, v2, :cond_18

    const/16 v2, 0x29

    if-ne v3, v2, :cond_19

    :cond_18
    new-instance v19, Lcom/ime/framework/engine/xt9/XT9KeyboardDatabase$XT9Key;

    move-object/from16 v0, v33

    iget-object v2, v0, Lcom/ime/framework/view/Keyboard$Key;->codes:[I

    const/4 v4, 0x0

    aget v20, v2, v4

    const/16 v21, 0x4

    move-object/from16 v0, v33

    iget v0, v0, Lcom/ime/framework/view/Keyboard$Key;->x:I

    move/from16 v22, v0

    move-object/from16 v0, v33

    iget v0, v0, Lcom/ime/framework/view/Keyboard$Key;->y:I

    move/from16 v23, v0

    move-object/from16 v0, v33

    iget v0, v0, Lcom/ime/framework/view/Keyboard$Key;->width:I

    move/from16 v24, v0

    move-object/from16 v0, v33

    iget v0, v0, Lcom/ime/framework/view/Keyboard$Key;->height:I

    move/from16 v25, v0

    const/16 v26, 0x0

    move/from16 v27, v10

    invoke-direct/range {v19 .. v27}, Lcom/ime/framework/engine/xt9/XT9KeyboardDatabase$XT9Key;-><init>(IIIIIILjava/lang/CharSequence;Z)V

    move-object/from16 v0, v39

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_19
    move-object/from16 v0, v33

    iget-object v2, v0, Lcom/ime/framework/view/Keyboard$Key;->label:Ljava/lang/CharSequence;

    if-eqz v2, :cond_1a

    move-object/from16 v0, v33

    iget-object v2, v0, Lcom/ime/framework/view/Keyboard$Key;->label:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const/4 v4, 0x1

    if-le v2, v4, :cond_1a

    const-string v2, "StrEmpty"

    move-object/from16 v0, v33

    iget-object v4, v0, Lcom/ime/framework/view/Keyboard$Key;->label:Ljava/lang/CharSequence;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1a

    new-instance v2, Lcom/ime/framework/engine/xt9/XT9KeyboardDatabase$XT9Key;

    const/4 v4, -0x1

    move-object/from16 v0, v33

    iget v5, v0, Lcom/ime/framework/view/Keyboard$Key;->x:I

    move-object/from16 v0, v33

    iget v6, v0, Lcom/ime/framework/view/Keyboard$Key;->y:I

    move-object/from16 v0, v33

    iget v7, v0, Lcom/ime/framework/view/Keyboard$Key;->width:I

    move-object/from16 v0, v33

    iget v8, v0, Lcom/ime/framework/view/Keyboard$Key;->height:I

    move-object/from16 v9, v18

    invoke-direct/range {v2 .. v10}, Lcom/ime/framework/engine/xt9/XT9KeyboardDatabase$XT9Key;-><init>(IIIIIILjava/lang/CharSequence;Z)V

    move-object/from16 v0, v39

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_1a
    if-eqz v32, :cond_1b

    if-lez v3, :cond_1b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/framework/engine/xt9/XT9KeyboardDatabase;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v2}, Lcom/ime/framework/inputmode/InputModeManager;->getInputRange()I

    move-result v2

    if-nez v2, :cond_1b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/framework/engine/xt9/XT9KeyboardDatabase;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/ime/framework/common/InputManager;->getRepository()Lcom/ime/framework/repository/Repository;

    move-result-object v2

    const-string v4, "INPUT_LANGUAGE"

    const v5, 0x656e4742

    invoke-interface {v2, v4, v5}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v2

    const/high16 v4, -0x10000

    and-int/2addr v2, v4

    const/high16 v4, 0x7a680000

    if-ne v2, v4, :cond_1b

    new-instance v19, Lcom/ime/framework/engine/xt9/XT9KeyboardDatabase$XT9Key;

    move-object/from16 v0, v33

    iget-object v2, v0, Lcom/ime/framework/view/Keyboard$Key;->codes:[I

    const/4 v4, 0x0

    aget v20, v2, v4

    const/16 v21, -0x1

    move-object/from16 v0, v33

    iget v0, v0, Lcom/ime/framework/view/Keyboard$Key;->x:I

    move/from16 v22, v0

    move-object/from16 v0, v33

    iget v0, v0, Lcom/ime/framework/view/Keyboard$Key;->y:I

    move/from16 v23, v0

    move-object/from16 v0, v33

    iget v0, v0, Lcom/ime/framework/view/Keyboard$Key;->width:I

    move/from16 v24, v0

    move-object/from16 v0, v33

    iget v0, v0, Lcom/ime/framework/view/Keyboard$Key;->height:I

    move/from16 v25, v0

    const/16 v26, 0x0

    move/from16 v27, v10

    invoke-direct/range {v19 .. v27}, Lcom/ime/framework/engine/xt9/XT9KeyboardDatabase$XT9Key;-><init>(IIIIIILjava/lang/CharSequence;Z)V

    move-object/from16 v0, v39

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_1b
    const-string v2, "StrEmpty"

    move-object/from16 v0, v33

    iget-object v4, v0, Lcom/ime/framework/view/Keyboard$Key;->label:Ljava/lang/CharSequence;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/framework/engine/xt9/XT9KeyboardDatabase;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/ime/framework/common/InputManager;->isChnMode()Z

    move-result v2

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/framework/engine/xt9/XT9KeyboardDatabase;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/ime/framework/common/InputManager;->isShuangPinMode()Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v11, Lcom/ime/framework/engine/xt9/XT9KeyboardDatabase$XT9Key;

    move-object/from16 v0, v33

    iget-object v12, v0, Lcom/ime/framework/view/Keyboard$Key;->codes:[I

    const/4 v13, 0x0

    move-object/from16 v0, v33

    iget v14, v0, Lcom/ime/framework/view/Keyboard$Key;->x:I

    move-object/from16 v0, v33

    iget v15, v0, Lcom/ime/framework/view/Keyboard$Key;->y:I

    move-object/from16 v0, v33

    iget v0, v0, Lcom/ime/framework/view/Keyboard$Key;->width:I

    move/from16 v16, v0

    move-object/from16 v0, v33

    iget v0, v0, Lcom/ime/framework/view/Keyboard$Key;->height:I

    move/from16 v17, v0

    move/from16 v19, v10

    invoke-direct/range {v11 .. v19}, Lcom/ime/framework/engine/xt9/XT9KeyboardDatabase$XT9Key;-><init>([IIIIIILjava/lang/CharSequence;Z)V

    move-object/from16 v0, v39

    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_1c
    return-object v39
.end method
