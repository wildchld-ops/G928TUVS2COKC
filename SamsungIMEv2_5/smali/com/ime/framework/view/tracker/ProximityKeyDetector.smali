.class public Lcom/ime/framework/view/tracker/ProximityKeyDetector;
.super Lcom/ime/framework/view/tracker/KeyDetector;
.source "ProximityKeyDetector.java"


# static fields
.field private static final MAX_NEARBY_KEYS:I = 0xc


# instance fields
.field private mIgnore:Z

.field private mInputManager:Lcom/ime/framework/common/InputManager;

.field private mSpaceHeight:I

.field private mSpaceY:I

.field private mSwiftkeyVersion:I

.field private mSymbolPopupInput:Ljava/lang/String;

.field private mThreshold:I

.field private mTrace:Lcom/ime/framework/trace/KeyboardTrace;

.field private mValidArea:[Landroid/graphics/Rect;

.field private mXt9Version:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/ime/framework/view/tracker/KeyDetector;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/ime/framework/view/tracker/ProximityKeyDetector;->mXt9Version:I

    invoke-static {}, Lcom/ime/framework/common/InputManagerImpl;->getInstance()Lcom/ime/framework/common/InputManager;

    move-result-object v0

    iput-object v0, p0, Lcom/ime/framework/view/tracker/ProximityKeyDetector;->mInputManager:Lcom/ime/framework/common/InputManager;

    const/4 v0, 0x1

    iput v0, p0, Lcom/ime/framework/view/tracker/ProximityKeyDetector;->mSwiftkeyVersion:I

    invoke-static {}, Lcom/ime/framework/trace/KeyboardTrace;->getInstance()Lcom/ime/framework/trace/KeyboardTrace;

    move-result-object v0

    iput-object v0, p0, Lcom/ime/framework/view/tracker/ProximityKeyDetector;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;

    iget-object v0, p0, Lcom/ime/framework/view/tracker/ProximityKeyDetector;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->getXt9Version()I

    move-result v0

    iput v0, p0, Lcom/ime/framework/view/tracker/ProximityKeyDetector;->mXt9Version:I

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Sip_SymbolPopupInput"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ime/framework/view/tracker/ProximityKeyDetector;->mSymbolPopupInput:Ljava/lang/String;

    iget-object v0, p0, Lcom/ime/framework/view/tracker/ProximityKeyDetector;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->getSwiftkeyVersion()I

    move-result v0

    iput v0, p0, Lcom/ime/framework/view/tracker/ProximityKeyDetector;->mSwiftkeyVersion:I

    return-void
.end method

.method private growArray([Landroid/graphics/Rect;I)[Landroid/graphics/Rect;
    .locals 3

    const/4 v2, 0x0

    new-array v0, p2, [Landroid/graphics/Rect;

    array-length v1, p1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method private isBelowSpace(I)Z
    .locals 1

    iget v0, p0, Lcom/ime/framework/view/tracker/ProximityKeyDetector;->mSpaceY:I

    if-ge v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isValidArea(II)Z
    .locals 5

    iget-object v4, p0, Lcom/ime/framework/view/tracker/ProximityKeyDetector;->mValidArea:[Landroid/graphics/Rect;

    if-eqz v4, :cond_0

    iget-object v0, p0, Lcom/ime/framework/view/tracker/ProximityKeyDetector;->mValidArea:[Landroid/graphics/Rect;

    array-length v2, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    if-nez v3, :cond_1

    :cond_0
    const/4 v4, 0x0

    :goto_1
    return v4

    :cond_1
    iget v4, v3, Landroid/graphics/Rect;->left:I

    if-lt p1, v4, :cond_2

    iget v4, v3, Landroid/graphics/Rect;->right:I

    if-gt p1, v4, :cond_2

    iget v4, v3, Landroid/graphics/Rect;->top:I

    if-lt p2, v4, :cond_2

    iget v4, v3, Landroid/graphics/Rect;->bottom:I

    if-gt p2, v4, :cond_2

    const/4 v4, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private makeValidArea()V
    .locals 26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/tracker/ProximityKeyDetector;->mKeyboard:Lcom/ime/framework/view/DefaultKeyboard;

    move-object/from16 v21, v0

    if-eqz v21, :cond_f

    const/16 v21, 0x3

    move/from16 v0, v21

    new-array v0, v0, [Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ime/framework/view/tracker/ProximityKeyDetector;->mValidArea:[Landroid/graphics/Rect;

    const/16 v21, 0x0

    move/from16 v0, v21

    new-array v11, v0, [Lcom/ime/framework/view/Keyboard$Key;

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/view/tracker/ProximityKeyDetector;->getKeys()[Lcom/ime/framework/view/Keyboard$Key;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v11

    :goto_0
    if-eqz v11, :cond_f

    array-length v0, v11

    move/from16 v21, v0

    if-lez v21, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/tracker/ProximityKeyDetector;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Lcom/ime/framework/common/InputManager;->isEnableOneHandKeypad()Z

    move-result v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/tracker/ProximityKeyDetector;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Lcom/ime/framework/common/InputManager;->isQwertyLookInputMethod()Z

    move-result v10

    new-instance v15, Landroid/graphics/Rect;

    invoke-direct {v15}, Landroid/graphics/Rect;-><init>()V

    const/16 v19, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    const/4 v12, 0x0

    const/16 v18, 0x0

    const/16 v20, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ime/framework/view/tracker/ProximityKeyDetector;->mKeyboardWidth:I

    move/from16 v21, v0

    if-lez v21, :cond_7

    move-object/from16 v0, p0

    iget v13, v0, Lcom/ime/framework/view/tracker/ProximityKeyDetector;->mKeyboardWidth:I

    :goto_1
    const/4 v8, 0x0

    :goto_2
    array-length v0, v11

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v8, v0, :cond_f

    aget-object v6, v11, v8

    iget-object v0, v6, Lcom/ime/framework/view/Keyboard$Key;->codes:[I

    move-object/from16 v21, v0

    if-eqz v21, :cond_0

    iget-object v0, v6, Lcom/ime/framework/view/Keyboard$Key;->codes:[I

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aget v21, v21, v22

    const/16 v22, 0x20

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_0

    iget v0, v6, Lcom/ime/framework/view/Keyboard$Key;->y:I

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ime/framework/view/tracker/ProximityKeyDetector;->mSpaceY:I

    iget v0, v6, Lcom/ime/framework/view/Keyboard$Key;->height:I

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ime/framework/view/tracker/ProximityKeyDetector;->mSpaceHeight:I

    :cond_0
    if-nez v14, :cond_8

    const/4 v12, 0x0

    const/16 v20, 0x0

    :goto_3
    iget v0, v6, Lcom/ime/framework/view/Keyboard$Key;->edgeFlags:I

    move/from16 v21, v0

    and-int/lit8 v21, v21, 0x4

    if-eqz v21, :cond_1

    const/16 v20, 0x0

    :cond_1
    iget-object v0, v6, Lcom/ime/framework/view/Keyboard$Key;->codes:[I

    move-object/from16 v21, v0

    if-eqz v21, :cond_a

    iget-object v0, v6, Lcom/ime/framework/view/Keyboard$Key;->codes:[I

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    if-lez v21, :cond_a

    iget-object v0, v6, Lcom/ime/framework/view/Keyboard$Key;->codes:[I

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aget v21, v21, v22

    invoke-static/range {v21 .. v21}, Ljava/lang/Character;->isLetter(I)Z

    move-result v21

    if-nez v21, :cond_3

    const/16 v21, 0x20

    iget-object v0, v6, Lcom/ime/framework/view/Keyboard$Key;->codes:[I

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aget v22, v22, v23

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_2

    if-nez v10, :cond_3

    :cond_2
    iget-object v0, v6, Lcom/ime/framework/view/Keyboard$Key;->codes:[I

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aget v21, v21, v22

    invoke-static/range {v21 .. v21}, Lcom/ime/framework/common/InputSequenceCheck;->isThaiUnicode(I)Z

    move-result v21

    if-eqz v21, :cond_a

    :cond_3
    if-nez v19, :cond_4

    iput v12, v15, Landroid/graphics/Rect;->left:I

    move/from16 v0, v20

    iput v0, v15, Landroid/graphics/Rect;->top:I

    const/16 v19, 0x1

    :cond_4
    :goto_4
    const/16 v21, -0x1

    move/from16 v0, v21

    if-eq v5, v0, :cond_5

    if-eqz v14, :cond_6

    iget v0, v14, Lcom/ime/framework/view/Keyboard$Key;->y:I

    move/from16 v21, v0

    iget v0, v6, Lcom/ime/framework/view/Keyboard$Key;->y:I

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_6

    :cond_5
    invoke-static {v8, v11, v9}, Lcom/ime/framework/util/Utils;->getVerticalGap(I[Lcom/ime/framework/view/Keyboard$Key;Z)I

    move-result v5

    const/16 v21, -0x1

    move/from16 v0, v21

    if-ne v5, v0, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/tracker/ProximityKeyDetector;->mKeyboard:Lcom/ime/framework/view/DefaultKeyboard;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/ime/framework/view/DefaultKeyboard;->getHeight()I

    move-result v4

    :cond_6
    :goto_5
    move-object v14, v6

    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_2

    :catch_0
    move-exception v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/tracker/ProximityKeyDetector;->mKeyboard:Lcom/ime/framework/view/DefaultKeyboard;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/ime/framework/view/DefaultKeyboard;->getKeys()Ljava/util/List;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-interface {v0, v11}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Lcom/ime/framework/view/Keyboard$Key;

    goto/16 :goto_0

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/tracker/ProximityKeyDetector;->mKeyboard:Lcom/ime/framework/view/DefaultKeyboard;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/ime/framework/view/DefaultKeyboard;->getMinWidth()I

    move-result v13

    goto/16 :goto_1

    :cond_8
    if-eqz v14, :cond_9

    iget v0, v14, Lcom/ime/framework/view/Keyboard$Key;->y:I

    move/from16 v21, v0

    iget v0, v6, Lcom/ime/framework/view/Keyboard$Key;->y:I

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_9

    const/4 v12, 0x0

    move/from16 v18, v13

    move/from16 v20, v4

    goto/16 :goto_3

    :cond_9
    iget v0, v6, Lcom/ime/framework/view/Keyboard$Key;->x:I

    move/from16 v21, v0

    iget v0, v6, Lcom/ime/framework/view/Keyboard$Key;->x:I

    move/from16 v22, v0

    iget v0, v14, Lcom/ime/framework/view/Keyboard$Key;->x:I

    move/from16 v23, v0

    iget v0, v14, Lcom/ime/framework/view/Keyboard$Key;->width:I

    move/from16 v24, v0

    add-int v23, v23, v24

    sub-int v22, v22, v23

    div-int/lit8 v22, v22, 0x2

    sub-int v12, v21, v22

    move/from16 v18, v12

    goto/16 :goto_3

    :cond_a
    if-eqz v19, :cond_4

    if-eqz v14, :cond_4

    move/from16 v0, v18

    iput v0, v15, Landroid/graphics/Rect;->right:I

    iput v4, v15, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/tracker/ProximityKeyDetector;->mValidArea:[Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    add-int/lit8 v21, v21, -0x1

    move/from16 v0, v21

    move/from16 v1, v16

    if-ge v0, v1, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/tracker/ProximityKeyDetector;->mValidArea:[Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/tracker/ProximityKeyDetector;->mValidArea:[Landroid/graphics/Rect;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v22, v0

    mul-int/lit8 v22, v22, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/ime/framework/view/tracker/ProximityKeyDetector;->growArray([Landroid/graphics/Rect;I)[Landroid/graphics/Rect;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ime/framework/view/tracker/ProximityKeyDetector;->mValidArea:[Landroid/graphics/Rect;

    :cond_b
    if-nez v16, :cond_d

    iget v0, v15, Landroid/graphics/Rect;->top:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-double v0, v0

    move-wide/from16 v22, v0

    const-wide v24, 0x3feb333333333333L    # 0.85

    mul-double v22, v22, v24

    move-wide/from16 v0, v22

    double-to-int v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    iput v0, v15, Landroid/graphics/Rect;->top:I

    iget v0, v15, Landroid/graphics/Rect;->bottom:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-double v0, v0

    move-wide/from16 v22, v0

    const-wide v24, 0x3ff04189374bc6a8L    # 1.016

    mul-double v22, v22, v24

    move-wide/from16 v0, v22

    double-to-int v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    iput v0, v15, Landroid/graphics/Rect;->bottom:I

    :cond_c
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/tracker/ProximityKeyDetector;->mValidArea:[Landroid/graphics/Rect;

    move-object/from16 v21, v0

    add-int/lit8 v17, v16, 0x1

    aput-object v15, v21, v16

    new-instance v15, Landroid/graphics/Rect;

    invoke-direct {v15}, Landroid/graphics/Rect;-><init>()V

    const/16 v19, 0x0

    move/from16 v16, v17

    goto/16 :goto_4

    :cond_d
    const/16 v21, 0x1

    move/from16 v0, v16

    move/from16 v1, v21

    if-ne v0, v1, :cond_c

    iget v0, v15, Landroid/graphics/Rect;->left:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-double v0, v0

    move-wide/from16 v22, v0

    const-wide v24, 0x3feeb851eb851eb8L    # 0.96

    mul-double v22, v22, v24

    move-wide/from16 v0, v22

    double-to-int v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    iput v0, v15, Landroid/graphics/Rect;->left:I

    iget v0, v15, Landroid/graphics/Rect;->right:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-double v0, v0

    move-wide/from16 v22, v0

    const-wide v24, 0x3ff026e978d4fdf4L    # 1.0095

    mul-double v22, v22, v24

    move-wide/from16 v0, v22

    double-to-int v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    iput v0, v15, Landroid/graphics/Rect;->right:I

    goto :goto_6

    :cond_e
    iget v0, v6, Lcom/ime/framework/view/Keyboard$Key;->y:I

    move/from16 v21, v0

    iget v0, v6, Lcom/ime/framework/view/Keyboard$Key;->height:I

    move/from16 v22, v0

    add-int v21, v21, v22

    mul-int/lit8 v22, v5, 0x3

    div-int/lit8 v22, v22, 0x4

    add-int v4, v21, v22

    goto/16 :goto_5

    :cond_f
    return-void
.end method

.method private needSkipPaddingAreaTouch(II)Z
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/view/tracker/ProximityKeyDetector;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->isChnMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/view/tracker/ProximityKeyDetector;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->isEnableOneHandKeypad()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/view/tracker/ProximityKeyDetector;->mKeyboard:Lcom/ime/framework/view/DefaultKeyboard;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/view/tracker/ProximityKeyDetector;->mKeyboard:Lcom/ime/framework/view/DefaultKeyboard;

    invoke-virtual {v0, p1, p2}, Lcom/ime/framework/view/DefaultKeyboard;->isPaddingRegion(II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/ime/framework/view/tracker/ProximityKeyDetector;->mIsMiniKeyboard:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/view/tracker/ProximityKeyDetector;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v0}, Lcom/ime/framework/trace/KeyboardTrace;->isTracing()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public dumpCurrentGrid()V
    .locals 0

    return-void
.end method

.method public getKeyIndexAndNearbyCodes(IIZ)I
    .locals 18

    invoke-virtual/range {p0 .. p1}, Lcom/ime/framework/view/tracker/ProximityKeyDetector;->getTouchX(I)I

    move-result v2

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/ime/framework/view/tracker/ProximityKeyDetector;->getTouchY(I)I

    move-result v3

    const/4 v15, -0x1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/ime/framework/view/tracker/ProximityKeyDetector;->mXt9Version:I

    const/4 v5, 0x2

    if-lt v4, v5, :cond_a

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/ime/framework/view/tracker/ProximityKeyDetector;->needSkipPaddingAreaTouch(II)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "SamsungIME"

    const-string v5, "getKeyIndexAndNearbyCodes Skip touch"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, -0x1

    :goto_0
    return v4

    :cond_0
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/ime/framework/view/tracker/ProximityKeyDetector;->mIsMiniKeyboard:Z

    if-nez v4, :cond_1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/ime/framework/view/tracker/ProximityKeyDetector;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/ime/framework/common/InputManager;->isPridictionOn()Z

    move-result v4

    if-eqz v4, :cond_1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/ime/framework/view/tracker/ProximityKeyDetector;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/ime/framework/common/InputManager;->getInputModeManager()Lcom/ime/framework/inputmode/InputModeManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ime/framework/inputmode/InputModeManager;->getInputRange()I

    move-result v4

    if-nez v4, :cond_1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/ime/framework/view/tracker/ProximityKeyDetector;->mInputManager:Lcom/ime/framework/common/InputManager;

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-interface {v4, v0, v1}, Lcom/ime/framework/common/InputManager;->computeCurrentKeyCode(II)I

    move-result v11

    const/16 v4, -0x12c

    if-eq v11, v4, :cond_1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/ime/framework/view/tracker/ProximityKeyDetector;->mKeyboard:Lcom/ime/framework/view/DefaultKeyboard;

    if-eqz v4, :cond_1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/ime/framework/view/tracker/ProximityKeyDetector;->mKeyboard:Lcom/ime/framework/view/DefaultKeyboard;

    invoke-virtual {v4}, Lcom/ime/framework/view/DefaultKeyboard;->getKeys()Ljava/util/List;

    move-result-object v13

    const/4 v9, 0x0

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v14

    :goto_1
    if-ge v9, v14, :cond_1

    invoke-interface {v13, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/ime/framework/view/Keyboard$Key;

    iget-object v4, v10, Lcom/ime/framework/view/Keyboard$Key;->codes:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    if-ne v4, v11, :cond_9

    move v15, v9

    iget v4, v10, Lcom/ime/framework/view/Keyboard$Key;->x:I

    iget v5, v10, Lcom/ime/framework/view/Keyboard$Key;->width:I

    add-int/2addr v4, v5

    move/from16 v0, p1

    if-le v0, v4, :cond_7

    iget v4, v10, Lcom/ime/framework/view/Keyboard$Key;->x:I

    iget v5, v10, Lcom/ime/framework/view/Keyboard$Key;->width:I

    add-int/2addr v4, v5

    sub-int v4, p1, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/ime/framework/view/tracker/ProximityKeyDetector;->mThreshold:I

    if-le v4, v5, :cond_1

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/ime/framework/view/tracker/ProximityKeyDetector;->mIgnore:Z

    :cond_1
    :goto_2
    const/4 v4, -0x1

    if-ne v15, v4, :cond_6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/ime/framework/view/tracker/ProximityKeyDetector;->mKeyboard:Lcom/ime/framework/view/DefaultKeyboard;

    if-eqz v4, :cond_1b

    const/4 v4, 0x0

    new-array v12, v4, [Lcom/ime/framework/view/Keyboard$Key;

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/view/tracker/ProximityKeyDetector;->getKeys()[Lcom/ime/framework/view/Keyboard$Key;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v12

    :goto_3
    if-eqz v12, :cond_2

    array-length v4, v12

    if-lez v4, :cond_2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/ime/framework/view/tracker/ProximityKeyDetector;->mKeyboard:Lcom/ime/framework/view/DefaultKeyboard;

    invoke-virtual {v4}, Lcom/ime/framework/view/DefaultKeyboard;->isUseCustomArea()Z

    move-result v4

    if-eqz v4, :cond_18

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/ime/framework/view/tracker/ProximityKeyDetector;->mKeyboard:Lcom/ime/framework/view/DefaultKeyboard;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/ime/framework/view/tracker/ProximityKeyDetector;->mKeyboardWidth:I

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/ime/framework/view/tracker/ProximityKeyDetector;->mIsMiniKeyboard:Z

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/ime/framework/view/tracker/ProximityKeyDetector;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/ime/framework/common/InputManager;->isOrientationLandscape()Z

    move-result v7

    invoke-static/range {v2 .. v7}, Lcom/ime/framework/util/Utils;->getTheNearestKeyIndexKor(IILcom/ime/framework/view/DefaultKeyboard;IZZ)I

    move-result v15

    :cond_2
    :goto_4
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/ime/framework/view/tracker/ProximityKeyDetector;->mIsMiniKeyboard:Z

    if-nez v4, :cond_3

    const/4 v4, -0x1

    if-eq v15, v4, :cond_3

    aget-object v4, v12, v15

    iget v4, v4, Lcom/ime/framework/view/Keyboard$Key;->x:I

    aget-object v5, v12, v15

    iget v5, v5, Lcom/ime/framework/view/Keyboard$Key;->width:I

    add-int/2addr v4, v5

    move/from16 v0, p1

    if-le v0, v4, :cond_19

    aget-object v4, v12, v15

    iget v4, v4, Lcom/ime/framework/view/Keyboard$Key;->x:I

    aget-object v5, v12, v15

    iget v5, v5, Lcom/ime/framework/view/Keyboard$Key;->width:I

    add-int/2addr v4, v5

    sub-int v4, p1, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/ime/framework/view/tracker/ProximityKeyDetector;->mThreshold:I

    if-le v4, v5, :cond_3

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/ime/framework/view/tracker/ProximityKeyDetector;->mIgnore:Z

    :cond_3
    :goto_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/ime/framework/view/tracker/ProximityKeyDetector;->mKeyboard:Lcom/ime/framework/view/DefaultKeyboard;

    if-eqz v4, :cond_6

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/ime/framework/view/tracker/ProximityKeyDetector;->mIsMiniKeyboard:Z

    if-eqz v4, :cond_6

    const-string v4, "NOTSTAY"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/ime/framework/view/tracker/ProximityKeyDetector;->mSymbolPopupInput:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/ime/framework/view/tracker/ProximityKeyDetector;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/ime/framework/common/InputManager;->isTouchExplorationEnabled()Z

    move-result v4

    if-nez v4, :cond_6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/ime/framework/view/tracker/ProximityKeyDetector;->mKeyboard:Lcom/ime/framework/view/DefaultKeyboard;

    invoke-virtual {v4}, Lcom/ime/framework/view/DefaultKeyboard;->getPopupMiniKeyboardType()I

    move-result v4

    const/4 v5, 0x4

    if-eq v4, v5, :cond_4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/ime/framework/view/tracker/ProximityKeyDetector;->mKeyboard:Lcom/ime/framework/view/DefaultKeyboard;

    invoke-virtual {v4}, Lcom/ime/framework/view/DefaultKeyboard;->getPopupMiniKeyboardType()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/ime/framework/view/tracker/ProximityKeyDetector;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/ime/framework/common/InputManager;->isTabletMode()Z

    move-result v4

    if-nez v4, :cond_6

    :cond_4
    if-ltz v3, :cond_5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/ime/framework/view/tracker/ProximityKeyDetector;->mKeyboard:Lcom/ime/framework/view/DefaultKeyboard;

    invoke-virtual {v4}, Lcom/ime/framework/view/DefaultKeyboard;->getHeight()I

    move-result v4

    if-le v3, v4, :cond_6

    :cond_5
    const/4 v15, -0x1

    :cond_6
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/ime/framework/view/tracker/ProximityKeyDetector;->mIgnore:Z

    if-eqz v4, :cond_1c

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/ime/framework/view/tracker/ProximityKeyDetector;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;

    iget-boolean v4, v4, Lcom/ime/framework/trace/KeyboardTrace;->mIsTracing:Z

    if-nez v4, :cond_1c

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/ime/framework/view/tracker/ProximityKeyDetector;->mIgnore:Z

    const/4 v4, -0x1

    goto/16 :goto_0

    :cond_7
    iget v4, v10, Lcom/ime/framework/view/Keyboard$Key;->x:I

    move/from16 v0, p1

    if-ge v0, v4, :cond_1

    iget v4, v10, Lcom/ime/framework/view/Keyboard$Key;->x:I

    sub-int v4, v4, p1

    move-object/from16 v0, p0

    iget v5, v0, Lcom/ime/framework/view/tracker/ProximityKeyDetector;->mThreshold:I

    if-le v4, v5, :cond_1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/ime/framework/view/tracker/ProximityKeyDetector;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/ime/framework/common/InputManager;->isTabletMode()Z

    move-result v4

    if-eqz v4, :cond_8

    iget v4, v10, Lcom/ime/framework/view/Keyboard$Key;->edgeFlags:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_8

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/ime/framework/view/tracker/ProximityKeyDetector;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/ime/framework/common/InputManager;->getInputModeManager()Lcom/ime/framework/inputmode/InputModeManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ime/framework/inputmode/InputModeManager;->isFloatingPhonepadKeyboard()Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_8
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/ime/framework/view/tracker/ProximityKeyDetector;->mIgnore:Z

    goto/16 :goto_2

    :cond_9
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1

    :cond_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/ime/framework/view/tracker/ProximityKeyDetector;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/ime/framework/common/InputManager;->isSwiftKeyMode()Z

    move-result v4

    if-eqz v4, :cond_15

    move-object/from16 v0, p0

    iget v4, v0, Lcom/ime/framework/view/tracker/ProximityKeyDetector;->mSwiftkeyVersion:I

    const/4 v5, 0x3

    if-lt v4, v5, :cond_15

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/ime/framework/view/tracker/ProximityKeyDetector;->mIsMiniKeyboard:Z

    if-nez v4, :cond_1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/ime/framework/view/tracker/ProximityKeyDetector;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/ime/framework/common/InputManager;->isSupportingKPM()Z

    move-result v4

    if-eqz v4, :cond_1

    if-nez p3, :cond_1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/ime/framework/view/tracker/ProximityKeyDetector;->mValidArea:[Landroid/graphics/Rect;

    if-nez v4, :cond_b

    invoke-direct/range {p0 .. p0}, Lcom/ime/framework/view/tracker/ProximityKeyDetector;->makeValidArea()V

    :cond_b
    invoke-direct/range {p0 .. p2}, Lcom/ime/framework/view/tracker/ProximityKeyDetector;->isValidArea(II)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/ime/framework/view/tracker/ProximityKeyDetector;->isBelowSpace(I)Z

    move-result v4

    if-nez v4, :cond_1

    const/4 v4, 0x0

    new-array v12, v4, [Lcom/ime/framework/view/Keyboard$Key;

    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/view/tracker/ProximityKeyDetector;->getKeys()[Lcom/ime/framework/view/Keyboard$Key;
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v12

    :goto_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/ime/framework/view/tracker/ProximityKeyDetector;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/ime/framework/common/InputManager;->isOrientationLandscape()Z

    move-result v4

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-static {v0, v1, v12, v4}, Lcom/ime/framework/util/Utils;->getTheMatchedKeyIndexForV15(II[Lcom/ime/framework/view/Keyboard$Key;Z)I

    move-result v15

    const/4 v4, -0x1

    if-ne v15, v4, :cond_1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/ime/framework/view/tracker/ProximityKeyDetector;->mInputManager:Lcom/ime/framework/common/InputManager;

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-interface {v4, v0, v1}, Lcom/ime/framework/common/InputManager;->computeCurrentKeyCode(II)I

    move-result v11

    if-lez v11, :cond_1

    const/4 v9, 0x0

    :goto_7
    array-length v4, v12

    if-ge v9, v4, :cond_1

    aget-object v4, v12, v9

    iget-object v4, v4, Lcom/ime/framework/view/Keyboard$Key;->codes:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    if-ne v4, v11, :cond_14

    move v15, v9

    aget-object v4, v12, v9

    iget v4, v4, Lcom/ime/framework/view/Keyboard$Key;->x:I

    aget-object v5, v12, v9

    iget v5, v5, Lcom/ime/framework/view/Keyboard$Key;->width:I

    add-int/2addr v4, v5

    move/from16 v0, p1

    if-le v0, v4, :cond_d

    aget-object v4, v12, v9

    iget v4, v4, Lcom/ime/framework/view/Keyboard$Key;->x:I

    aget-object v5, v12, v9

    iget v5, v5, Lcom/ime/framework/view/Keyboard$Key;->width:I

    add-int/2addr v4, v5

    sub-int v4, p1, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/ime/framework/view/tracker/ProximityKeyDetector;->mThreshold:I

    if-le v4, v5, :cond_c

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/ime/framework/view/tracker/ProximityKeyDetector;->mIgnore:Z

    :cond_c
    :goto_8
    aget-object v4, v12, v9

    iget v4, v4, Lcom/ime/framework/view/Keyboard$Key;->y:I

    aget-object v5, v12, v9

    iget v5, v5, Lcom/ime/framework/view/Keyboard$Key;->height:I

    add-int/2addr v4, v5

    move/from16 v0, p2

    if-le v0, v4, :cond_11

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/ime/framework/view/tracker/ProximityKeyDetector;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/ime/framework/common/InputManager;->isTabletMode()Z

    move-result v4

    if-nez v4, :cond_10

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/ime/framework/view/tracker/ProximityKeyDetector;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/ime/framework/common/InputManager;->isOrientationLandscape()Z

    move-result v4

    if-eqz v4, :cond_10

    aget-object v4, v12, v9

    iget v4, v4, Lcom/ime/framework/view/Keyboard$Key;->edgeFlags:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_f

    aget-object v4, v12, v9

    iget v4, v4, Lcom/ime/framework/view/Keyboard$Key;->x:I

    aget-object v5, v12, v9

    iget v5, v5, Lcom/ime/framework/view/Keyboard$Key;->width:I

    div-int/lit8 v5, v5, 0x3

    add-int/2addr v4, v5

    move/from16 v0, p1

    if-le v4, v0, :cond_1

    aget-object v4, v12, v9

    iget v4, v4, Lcom/ime/framework/view/Keyboard$Key;->y:I

    aget-object v5, v12, v9

    iget v5, v5, Lcom/ime/framework/view/Keyboard$Key;->height:I

    add-int/2addr v4, v5

    sub-int v4, p2, v4

    int-to-double v4, v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/ime/framework/view/tracker/ProximityKeyDetector;->mThreshold:I

    int-to-double v6, v6

    const-wide/high16 v16, 0x401a000000000000L    # 6.5

    div-double v6, v6, v16

    cmpl-double v4, v4, v6

    if-lez v4, :cond_1

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/ime/framework/view/tracker/ProximityKeyDetector;->mIgnore:Z

    goto/16 :goto_2

    :catch_0
    move-exception v8

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/ime/framework/view/tracker/ProximityKeyDetector;->mKeyboard:Lcom/ime/framework/view/DefaultKeyboard;

    invoke-virtual {v4}, Lcom/ime/framework/view/DefaultKeyboard;->getKeys()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v12}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Lcom/ime/framework/view/Keyboard$Key;

    goto/16 :goto_6

    :cond_d
    aget-object v4, v12, v9

    iget v4, v4, Lcom/ime/framework/view/Keyboard$Key;->x:I

    move/from16 v0, p1

    if-ge v0, v4, :cond_c

    aget-object v4, v12, v9

    iget v4, v4, Lcom/ime/framework/view/Keyboard$Key;->x:I

    sub-int v4, v4, p1

    move-object/from16 v0, p0

    iget v5, v0, Lcom/ime/framework/view/tracker/ProximityKeyDetector;->mThreshold:I

    if-le v4, v5, :cond_c

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/ime/framework/view/tracker/ProximityKeyDetector;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/ime/framework/common/InputManager;->isTabletMode()Z

    move-result v4

    if-eqz v4, :cond_e

    aget-object v4, v12, v9

    iget v4, v4, Lcom/ime/framework/view/Keyboard$Key;->edgeFlags:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_e

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/ime/framework/view/tracker/ProximityKeyDetector;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/ime/framework/common/InputManager;->getInputModeManager()Lcom/ime/framework/inputmode/InputModeManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ime/framework/inputmode/InputModeManager;->isFloatingPhonepadKeyboard()Z

    move-result v4

    if-eqz v4, :cond_c

    :cond_e
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/ime/framework/view/tracker/ProximityKeyDetector;->mIgnore:Z

    goto/16 :goto_8

    :cond_f
    aget-object v4, v12, v9

    iget v4, v4, Lcom/ime/framework/view/Keyboard$Key;->edgeFlags:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_1

    aget-object v4, v12, v9

    iget v4, v4, Lcom/ime/framework/view/Keyboard$Key;->x:I

    aget-object v5, v12, v9

    iget v5, v5, Lcom/ime/framework/view/Keyboard$Key;->width:I

    mul-int/lit8 v5, v5, 0x2

    div-int/lit8 v5, v5, 0x3

    add-int/2addr v4, v5

    move/from16 v0, p1

    if-ge v4, v0, :cond_1

    aget-object v4, v12, v9

    iget v4, v4, Lcom/ime/framework/view/Keyboard$Key;->y:I

    aget-object v5, v12, v9

    iget v5, v5, Lcom/ime/framework/view/Keyboard$Key;->height:I

    add-int/2addr v4, v5

    sub-int v4, p2, v4

    int-to-double v4, v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/ime/framework/view/tracker/ProximityKeyDetector;->mThreshold:I

    int-to-double v6, v6

    const-wide/high16 v16, 0x401a000000000000L    # 6.5

    div-double v6, v6, v16

    cmpl-double v4, v4, v6

    if-lez v4, :cond_1

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/ime/framework/view/tracker/ProximityKeyDetector;->mIgnore:Z

    goto/16 :goto_2

    :cond_10
    aget-object v4, v12, v9

    iget v4, v4, Lcom/ime/framework/view/Keyboard$Key;->y:I

    aget-object v5, v12, v9

    iget v5, v5, Lcom/ime/framework/view/Keyboard$Key;->height:I

    add-int/2addr v4, v5

    sub-int v4, p2, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/ime/framework/view/tracker/ProximityKeyDetector;->mThreshold:I

    div-int/lit8 v5, v5, 0x2

    if-le v4, v5, :cond_1

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/ime/framework/view/tracker/ProximityKeyDetector;->mIgnore:Z

    goto/16 :goto_2

    :cond_11
    aget-object v4, v12, v9

    iget v4, v4, Lcom/ime/framework/view/Keyboard$Key;->y:I

    move/from16 v0, p2

    if-ge v0, v4, :cond_1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/ime/framework/view/tracker/ProximityKeyDetector;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/ime/framework/common/InputManager;->isTabletMode()Z

    move-result v4

    if-nez v4, :cond_13

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/ime/framework/view/tracker/ProximityKeyDetector;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/ime/framework/common/InputManager;->isOrientationLandscape()Z

    move-result v4

    if-eqz v4, :cond_13

    aget-object v4, v12, v9

    iget v4, v4, Lcom/ime/framework/view/Keyboard$Key;->edgeFlags:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_12

    aget-object v4, v12, v9

    iget v4, v4, Lcom/ime/framework/view/Keyboard$Key;->x:I

    aget-object v5, v12, v9

    iget v5, v5, Lcom/ime/framework/view/Keyboard$Key;->width:I

    div-int/lit8 v5, v5, 0x3

    add-int/2addr v4, v5

    move/from16 v0, p1

    if-le v4, v0, :cond_1

    aget-object v4, v12, v9

    iget v4, v4, Lcom/ime/framework/view/Keyboard$Key;->y:I

    sub-int v4, v4, p2

    move-object/from16 v0, p0

    iget v5, v0, Lcom/ime/framework/view/tracker/ProximityKeyDetector;->mThreshold:I

    div-int/lit8 v5, v5, 0x2

    if-le v4, v5, :cond_1

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/ime/framework/view/tracker/ProximityKeyDetector;->mIgnore:Z

    goto/16 :goto_2

    :cond_12
    aget-object v4, v12, v9

    iget v4, v4, Lcom/ime/framework/view/Keyboard$Key;->edgeFlags:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_1

    aget-object v4, v12, v9

    iget v4, v4, Lcom/ime/framework/view/Keyboard$Key;->x:I

    aget-object v5, v12, v9

    iget v5, v5, Lcom/ime/framework/view/Keyboard$Key;->width:I

    mul-int/lit8 v5, v5, 0x2

    div-int/lit8 v5, v5, 0x3

    add-int/2addr v4, v5

    move/from16 v0, p1

    if-ge v4, v0, :cond_1

    aget-object v4, v12, v9

    iget v4, v4, Lcom/ime/framework/view/Keyboard$Key;->y:I

    sub-int v4, v4, p2

    move-object/from16 v0, p0

    iget v5, v0, Lcom/ime/framework/view/tracker/ProximityKeyDetector;->mThreshold:I

    div-int/lit8 v5, v5, 0x2

    if-le v4, v5, :cond_1

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/ime/framework/view/tracker/ProximityKeyDetector;->mIgnore:Z

    goto/16 :goto_2

    :cond_13
    aget-object v4, v12, v9

    iget v4, v4, Lcom/ime/framework/view/Keyboard$Key;->y:I

    sub-int v4, v4, p2

    move-object/from16 v0, p0

    iget v5, v0, Lcom/ime/framework/view/tracker/ProximityKeyDetector;->mThreshold:I

    div-int/lit8 v5, v5, 0x2

    if-le v4, v5, :cond_1

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/ime/framework/view/tracker/ProximityKeyDetector;->mIgnore:Z

    goto/16 :goto_2

    :cond_14
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_7

    :cond_15
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/ime/framework/view/tracker/ProximityKeyDetector;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/ime/framework/common/InputManager;->isSwiftKeyMode()Z

    move-result v4

    if-eqz v4, :cond_1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/ime/framework/view/tracker/ProximityKeyDetector;->mSwiftkeyVersion:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/ime/framework/view/tracker/ProximityKeyDetector;->mIsMiniKeyboard:Z

    if-nez v4, :cond_1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/ime/framework/view/tracker/ProximityKeyDetector;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/ime/framework/common/InputManager;->isSupportingKPM()Z

    move-result v4

    if-eqz v4, :cond_1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/ime/framework/view/tracker/ProximityKeyDetector;->mValidArea:[Landroid/graphics/Rect;

    if-nez v4, :cond_16

    invoke-direct/range {p0 .. p0}, Lcom/ime/framework/view/tracker/ProximityKeyDetector;->makeValidArea()V

    :cond_16
    invoke-direct/range {p0 .. p2}, Lcom/ime/framework/view/tracker/ProximityKeyDetector;->isValidArea(II)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x0

    new-array v12, v4, [Lcom/ime/framework/view/Keyboard$Key;

    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/view/tracker/ProximityKeyDetector;->getKeys()[Lcom/ime/framework/view/Keyboard$Key;
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v12

    :goto_9
    move/from16 v0, p1

    move/from16 v1, p2

    invoke-static {v0, v1, v12}, Lcom/ime/framework/util/Utils;->getTheMatchedKeyIndex(II[Lcom/ime/framework/view/Keyboard$Key;)I

    move-result v15

    const/4 v4, -0x1

    if-ne v15, v4, :cond_1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/ime/framework/view/tracker/ProximityKeyDetector;->mInputManager:Lcom/ime/framework/common/InputManager;

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-interface {v4, v0, v1}, Lcom/ime/framework/common/InputManager;->computeCurrentKeyCode(II)I

    move-result v11

    if-lez v11, :cond_1

    const/4 v9, 0x0

    :goto_a
    array-length v4, v12

    if-ge v9, v4, :cond_1

    aget-object v4, v12, v9

    iget-object v4, v4, Lcom/ime/framework/view/Keyboard$Key;->codes:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    if-ne v4, v11, :cond_17

    move v15, v9

    goto/16 :goto_2

    :catch_1
    move-exception v8

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/ime/framework/view/tracker/ProximityKeyDetector;->mKeyboard:Lcom/ime/framework/view/DefaultKeyboard;

    invoke-virtual {v4}, Lcom/ime/framework/view/DefaultKeyboard;->getKeys()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v12}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Lcom/ime/framework/view/Keyboard$Key;

    goto :goto_9

    :cond_17
    add-int/lit8 v9, v9, 0x1

    goto :goto_a

    :catch_2
    move-exception v8

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/ime/framework/view/tracker/ProximityKeyDetector;->mKeyboard:Lcom/ime/framework/view/DefaultKeyboard;

    invoke-virtual {v4}, Lcom/ime/framework/view/DefaultKeyboard;->getKeys()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v12}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Lcom/ime/framework/view/Keyboard$Key;

    goto/16 :goto_3

    :cond_18
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/ime/framework/view/tracker/ProximityKeyDetector;->mKeyboard:Lcom/ime/framework/view/DefaultKeyboard;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/ime/framework/view/tracker/ProximityKeyDetector;->mKeyboardWidth:I

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/ime/framework/view/tracker/ProximityKeyDetector;->mIsMiniKeyboard:Z

    invoke-static {v2, v3, v4, v5, v6}, Lcom/ime/framework/util/Utils;->getTheNearestKeyIndex(IILcom/ime/framework/view/Keyboard;IZ)I

    move-result v15

    goto/16 :goto_4

    :cond_19
    aget-object v4, v12, v15

    iget v4, v4, Lcom/ime/framework/view/Keyboard$Key;->x:I

    move/from16 v0, p1

    if-ge v0, v4, :cond_1a

    aget-object v4, v12, v15

    iget v4, v4, Lcom/ime/framework/view/Keyboard$Key;->x:I

    sub-int v4, v4, p1

    move-object/from16 v0, p0

    iget v5, v0, Lcom/ime/framework/view/tracker/ProximityKeyDetector;->mThreshold:I

    if-le v4, v5, :cond_3

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/ime/framework/view/tracker/ProximityKeyDetector;->mIgnore:Z

    goto/16 :goto_5

    :cond_1a
    aget-object v4, v12, v15

    iget v4, v4, Lcom/ime/framework/view/Keyboard$Key;->y:I

    aget-object v5, v12, v15

    iget v5, v5, Lcom/ime/framework/view/Keyboard$Key;->height:I

    add-int/2addr v4, v5

    move/from16 v0, p2

    if-le v0, v4, :cond_3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/ime/framework/view/tracker/ProximityKeyDetector;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/ime/framework/common/InputManager;->isTabletMode()Z

    move-result v4

    if-eqz v4, :cond_3

    aget-object v4, v12, v15

    iget v4, v4, Lcom/ime/framework/view/Keyboard$Key;->y:I

    aget-object v5, v12, v15

    iget v5, v5, Lcom/ime/framework/view/Keyboard$Key;->height:I

    add-int/2addr v4, v5

    sub-int v4, p2, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/ime/framework/view/tracker/ProximityKeyDetector;->mThreshold:I

    div-int/lit8 v5, v5, 0x2

    if-le v4, v5, :cond_3

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/ime/framework/view/tracker/ProximityKeyDetector;->mIgnore:Z

    goto/16 :goto_5

    :cond_1b
    const-string v4, "SamsungIME"

    const-string v5, "ProximityKeyDetector.getKeyIndexAndNearbyCodes() mKeyboard == null"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    :cond_1c
    move-object/from16 v0, p0

    iget v4, v0, Lcom/ime/framework/view/tracker/ProximityKeyDetector;->mXt9Version:I

    if-eqz v4, :cond_1e

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/ime/framework/view/tracker/ProximityKeyDetector;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/ime/framework/common/InputManager;->isMiniKeyboardOnScreen()Z

    move-result v4

    if-nez v4, :cond_1d

    const/4 v4, -0x1

    if-ne v4, v15, :cond_1d

    const/4 v4, 0x0

    goto/16 :goto_0

    :cond_1d
    move v4, v15

    goto/16 :goto_0

    :cond_1e
    move v4, v15

    goto/16 :goto_0
.end method

.method protected getMaxNearbyKeys()I
    .locals 1

    const/16 v0, 0xc

    return v0
.end method

.method public setKeyboard(Lcom/ime/framework/view/DefaultKeyboard;FFZ)[Lcom/ime/framework/view/Keyboard$Key;
    .locals 2

    invoke-super {p0, p1, p2, p3, p4}, Lcom/ime/framework/view/tracker/KeyDetector;->setKeyboard(Lcom/ime/framework/view/DefaultKeyboard;FFZ)[Lcom/ime/framework/view/Keyboard$Key;

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/ime/framework/view/tracker/ProximityKeyDetector;->mValidArea:[Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/ime/framework/view/tracker/ProximityKeyDetector;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->isOrientationLandscape()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/ime/framework/view/tracker/ProximityKeyDetector;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v1, v1, 0x1e

    iput v1, p0, Lcom/ime/framework/view/tracker/ProximityKeyDetector;->mThreshold:I

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/ime/framework/view/tracker/ProximityKeyDetector;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v1, v1, 0x14

    iput v1, p0, Lcom/ime/framework/view/tracker/ProximityKeyDetector;->mThreshold:I

    iget-object v1, p0, Lcom/ime/framework/view/tracker/ProximityKeyDetector;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->isTabletMode()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ime/framework/view/tracker/ProximityKeyDetector;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->getInputModeManager()Lcom/ime/framework/inputmode/InputModeManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ime/framework/inputmode/InputModeManager;->isFloatingPhonepadKeyboard()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/ime/framework/view/tracker/ProximityKeyDetector;->mThreshold:I

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/ime/framework/view/tracker/ProximityKeyDetector;->mThreshold:I

    goto :goto_0
.end method
