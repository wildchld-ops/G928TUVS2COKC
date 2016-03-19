.class public Lcom/ime/framework/input/ComposingTextManagerForJapanese;
.super Ljava/lang/Object;
.source "ComposingTextManagerForJapanese.java"


# static fields
.field public static final CURSOR_DIRECTION_CLEAR:I = -0x1

.field public static final CURSOR_DIRECTION_CONVERSION:I = 0x0

.field public static final CURSOR_DIRECTION_LEFT:I = 0x2

.field public static final CURSOR_DIRECTION_RIGHT:I = 0x3

.field public static final LAYER0:I = 0x0

.field public static final LAYER1:I = 0x1

.field public static final LAYER2:I = 0x2

.field public static final MAX_LAYER:I = 0x3

.field private static final OFFSET_FULL_WIDTH:I = 0xfee0

.field protected static mCursor:[I

.field protected static mCursorDir:I

.field protected static mCursorSaved:I

.field protected static mDisplayCursorState:Z

.field protected static mHasPrediction:Z

.field protected static mPredictionString:Ljava/lang/String;

.field protected static mStringLayer:[Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ime/framework/input/StrSegment;",
            ">;"
        }
    .end annotation
.end field

.field protected static mVerbatimList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, -0x1

    const/4 v0, 0x0

    sput-object v0, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->mStringLayer:[Ljava/util/ArrayList;

    sput-object v0, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->mVerbatimList:Ljava/util/ArrayList;

    sput-object v0, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->mCursor:[I

    sput v1, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->mCursorSaved:I

    sput v1, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->mCursorDir:I

    sput-boolean v2, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->mHasPrediction:Z

    sput-boolean v2, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->mDisplayCursorState:Z

    sput-object v0, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->mPredictionString:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static OnBlockPrediction()Z
    .locals 1

    sget-boolean v0, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->mHasPrediction:Z

    return v0
.end method

.method public static append(I)Z
    .locals 4

    const/4 v3, 0x1

    invoke-static {}, Lcom/ime/framework/common/InputManagerImpl;->getInstance()Lcom/ime/framework/common/InputManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->isFullWidthMode()Z

    move-result v0

    if-eqz v0, :cond_0

    int-to-char v0, p0

    invoke-static {v0}, Lcom/ime/framework/util/Utils;->convertHalftoFull(C)C

    move-result p0

    :cond_0
    const/4 v0, 0x0

    new-instance v1, Lcom/ime/framework/input/StrSegment;

    int-to-char v2, p0

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Character;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/ime/framework/input/StrSegment;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v3, v1}, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->insertStrSegment(IILcom/ime/framework/input/StrSegment;)V

    invoke-static {v3}, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ime/framework/input/ComposingTextManager;->replace(Ljava/lang/String;)V

    return v3
.end method

.method public static append(Lcom/ime/framework/input/StrSegment;)Z
    .locals 2

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-static {v0, v1, p0}, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->insertStrSegment(IILcom/ime/framework/input/StrSegment;)V

    return v1
.end method

.method public static clear()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    sget-object v1, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->mStringLayer:[Ljava/util/ArrayList;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    sget-object v1, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->mCursor:[I

    const/4 v2, 0x0

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->clear()V

    return-void
.end method

.method public static composingText()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static convertHalftoFull(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    array-length v2, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-char v3, v0, v1

    const v4, 0xfee0

    add-int/2addr v3, v4

    int-to-char v3, v3

    aput-char v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([C)V

    return-object v3
.end method

.method public static delete(IZ)I
    .locals 4

    sget-object v2, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->mCursor:[I

    aget v0, v2, p0

    sget-object v2, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->mStringLayer:[Ljava/util/ArrayList;

    aget-object v1, v2, p0

    if-nez p1, :cond_1

    if-lez v0, :cond_1

    add-int/lit8 v2, v0, -0x1

    add-int/lit8 v3, v0, -0x1

    invoke-static {p0, v2, v3}, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->deleteStrSegment(III)V

    add-int/lit8 v2, v0, -0x1

    invoke-static {p0, v2}, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->setCursor(II)I

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->deleteLastChar()V

    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    return v2

    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    invoke-static {p0, v0, v0}, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->deleteStrSegment(III)V

    invoke-static {p0, v0}, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->setCursor(II)I

    goto :goto_0
.end method

.method public static deleteBlockText()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-static {v2}, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->getCursor(I)I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    invoke-static {v2, v3, v1}, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->deleteStrSegment(III)V

    sget-object v1, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->mStringLayer:[Ljava/util/ArrayList;

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v2, v1}, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->setCursor(II)I

    invoke-static {v3}, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->setBlockPrediction(Z)V

    invoke-static {v2}, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ime/framework/input/ComposingTextManager;->replace(Ljava/lang/String;)V

    return-void
.end method

.method public static deleteForward(I)I
    .locals 3

    sget-object v2, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->mCursor:[I

    aget v0, v2, p0

    sget-object v2, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->mStringLayer:[Ljava/util/ArrayList;

    aget-object v1, v2, p0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v0, :cond_0

    invoke-static {p0, v0, v0}, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->deleteStrSegment(III)V

    invoke-static {p0, v0}, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->setCursor(II)I

    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    return v2
.end method

.method public static deleteLastChar()V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->delete(IZ)I

    return-void
.end method

.method public static deleteStrSegment(III)V
    .locals 17

    const/4 v14, 0x3

    new-array v4, v14, [I

    fill-array-data v4, :array_0

    const/4 v14, 0x3

    new-array v13, v14, [I

    fill-array-data v13, :array_1

    sget-object v14, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->mStringLayer:[Ljava/util/ArrayList;

    const/4 v15, 0x2

    aget-object v11, v14, v15

    sget-object v14, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->mStringLayer:[Ljava/util/ArrayList;

    const/4 v15, 0x1

    aget-object v10, v14, v15

    const/4 v14, 0x2

    move/from16 v0, p0

    if-ne v0, v14, :cond_0

    const/4 v14, 0x2

    aput p1, v4, v14

    const/4 v14, 0x2

    aput p2, v13, v14

    const/4 v15, 0x1

    move/from16 v0, p1

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/ime/framework/input/StrSegment;

    iget v14, v14, Lcom/ime/framework/input/StrSegment;->from:I

    aput v14, v4, v15

    const/4 v15, 0x1

    move/from16 v0, p2

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/ime/framework/input/StrSegment;

    iget v14, v14, Lcom/ime/framework/input/StrSegment;->to:I

    aput v14, v13, v15

    const/4 v15, 0x0

    const/4 v14, 0x1

    aget v14, v4, v14

    invoke-virtual {v10, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/ime/framework/input/StrSegment;

    iget v14, v14, Lcom/ime/framework/input/StrSegment;->from:I

    aput v14, v4, v15

    const/4 v15, 0x0

    const/4 v14, 0x1

    aget v14, v13, v14

    invoke-virtual {v10, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/ime/framework/input/StrSegment;

    iget v14, v14, Lcom/ime/framework/input/StrSegment;->to:I

    aput v14, v13, v15

    :goto_0
    sub-int v14, p2, p1

    add-int/lit8 v3, v14, 0x1

    const/4 v7, 0x0

    :goto_1
    const/4 v14, 0x3

    if-ge v7, v14, :cond_a

    aget v14, v4, v7

    if-ltz v14, :cond_2

    aget v14, v4, v7

    aget v15, v13, v7

    invoke-static {v7, v14, v15, v3}, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->deleteStrSegment0(IIII)V

    :goto_2
    aget v14, v13, v7

    aget v15, v4, v7

    sub-int/2addr v14, v15

    add-int/lit8 v3, v14, 0x1

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_0
    const/4 v14, 0x1

    move/from16 v0, p0

    if-ne v0, v14, :cond_1

    const/4 v14, 0x1

    aput p1, v4, v14

    const/4 v14, 0x1

    aput p2, v13, v14

    const/4 v15, 0x0

    move/from16 v0, p1

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/ime/framework/input/StrSegment;

    iget v14, v14, Lcom/ime/framework/input/StrSegment;->from:I

    aput v14, v4, v15

    const/4 v15, 0x0

    move/from16 v0, p2

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/ime/framework/input/StrSegment;

    iget v14, v14, Lcom/ime/framework/input/StrSegment;->to:I

    aput v14, v13, v15

    goto :goto_0

    :cond_1
    const/4 v14, 0x0

    aput p1, v4, v14

    const/4 v14, 0x0

    aput p2, v13, v14

    goto :goto_0

    :cond_2
    const/4 v1, -0x1

    const/4 v2, -0x1

    sget-object v14, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->mStringLayer:[Ljava/util/ArrayList;

    aget-object v9, v14, v7

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v5, 0x0

    :goto_3
    if-ge v5, v6, :cond_8

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/ime/framework/input/StrSegment;

    iget v14, v8, Lcom/ime/framework/input/StrSegment;->from:I

    add-int/lit8 v15, v7, -0x1

    aget v15, v4, v15

    if-lt v14, v15, :cond_3

    iget v14, v8, Lcom/ime/framework/input/StrSegment;->from:I

    add-int/lit8 v15, v7, -0x1

    aget v15, v13, v15

    if-le v14, v15, :cond_4

    :cond_3
    iget v14, v8, Lcom/ime/framework/input/StrSegment;->to:I

    add-int/lit8 v15, v7, -0x1

    aget v15, v4, v15

    if-lt v14, v15, :cond_7

    iget v14, v8, Lcom/ime/framework/input/StrSegment;->to:I

    add-int/lit8 v15, v7, -0x1

    aget v15, v13, v15

    if-gt v14, v15, :cond_7

    :cond_4
    aget v14, v4, v7

    if-gez v14, :cond_5

    aput v5, v4, v7

    iget v1, v8, Lcom/ime/framework/input/StrSegment;->from:I

    :cond_5
    aput v5, v13, v7

    iget v2, v8, Lcom/ime/framework/input/StrSegment;->to:I

    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_7
    iget v14, v8, Lcom/ime/framework/input/StrSegment;->from:I

    add-int/lit8 v15, v7, -0x1

    aget v15, v4, v15

    if-gt v14, v15, :cond_b

    iget v14, v8, Lcom/ime/framework/input/StrSegment;->to:I

    add-int/lit8 v15, v7, -0x1

    aget v15, v13, v15

    if-lt v14, v15, :cond_b

    iget v1, v8, Lcom/ime/framework/input/StrSegment;->from:I

    iget v2, v8, Lcom/ime/framework/input/StrSegment;->to:I

    aput v5, v4, v7

    aput v5, v13, v7

    :cond_8
    :goto_4
    add-int/lit8 v14, v7, -0x1

    aget v14, v4, v14

    if-ne v1, v14, :cond_9

    add-int/lit8 v14, v7, -0x1

    aget v14, v13, v14

    if-eq v2, v14, :cond_c

    :cond_9
    aget v14, v4, v7

    add-int/lit8 v14, v14, 0x1

    aget v15, v13, v7

    invoke-static {v7, v14, v15, v3}, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->deleteStrSegment0(IIII)V

    sub-int/2addr v2, v3

    const/4 v14, 0x1

    new-array v12, v14, [Lcom/ime/framework/input/StrSegment;

    const/4 v14, 0x0

    new-instance v15, Lcom/ime/framework/input/StrSegment;

    add-int/lit8 v16, v7, -0x1

    invoke-static/range {v16 .. v16}, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->toString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v15, v0, v1, v2}, Lcom/ime/framework/input/StrSegment;-><init>(Ljava/lang/String;II)V

    aput-object v15, v12, v14

    aget v14, v4, v7

    aget v15, v4, v7

    invoke-static {v7, v12, v14, v15}, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->replaceStrSegment0(I[Lcom/ime/framework/input/StrSegment;II)V

    :cond_a
    return-void

    :cond_b
    iget v14, v8, Lcom/ime/framework/input/StrSegment;->from:I

    add-int/lit8 v15, v7, -0x1

    aget v15, v13, v15

    if-le v14, v15, :cond_6

    goto :goto_4

    :cond_c
    aget v14, v4, v7

    aget v15, v13, v7

    invoke-static {v7, v14, v15, v3}, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->deleteStrSegment0(IIII)V

    goto/16 :goto_2

    :array_0
    .array-data 4
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_1
    .array-data 4
        -0x1
        -0x1
        -0x1
    .end array-data
.end method

.method private static deleteStrSegment0(IIII)V
    .locals 5

    sget-object v4, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->mStringLayer:[Ljava/util/ArrayList;

    aget-object v3, v4, p0

    if-eqz p3, :cond_0

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, p2, 0x1

    :goto_0
    if-ge v0, v1, :cond_0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ime/framework/input/StrSegment;

    iget v4, v2, Lcom/ime/framework/input/StrSegment;->from:I

    sub-int/2addr v4, p3

    iput v4, v2, Lcom/ime/framework/input/StrSegment;->from:I

    iget v4, v2, Lcom/ime/framework/input/StrSegment;->to:I

    sub-int/2addr v4, p3

    iput v4, v2, Lcom/ime/framework/input/StrSegment;->to:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v0, p1

    :goto_1
    if-gt v0, p2, :cond_1

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public static getBlockCursor()I
    .locals 2

    sget-object v0, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->mCursor:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method public static getBlockCursor(I)I
    .locals 1

    sget-object v0, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->mCursor:[I

    aget v0, v0, p0

    return v0
.end method

.method public static getBlockCursorbeforeModified()I
    .locals 2

    sget v0, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->mCursorSaved:I

    const/4 v1, -0x1

    sput v1, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->mCursorSaved:I

    return v0
.end method

.method public static getBlockText()Ljava/lang/String;
    .locals 3

    const/4 v2, 0x1

    const/4 v0, 0x0

    sget-object v1, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->mCursor:[I

    aget v1, v1, v2

    add-int/lit8 v1, v1, -0x1

    invoke-static {v2, v0, v1}, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->toString(III)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCursor(I)I
    .locals 1

    sget-object v0, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->mCursor:[I

    aget v0, v0, p0

    return v0
.end method

.method public static getCursorDir()I
    .locals 1

    sget v0, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->mCursorDir:I

    return v0
.end method

.method public static getStrSegment(II)Lcom/ime/framework/input/StrSegment;
    .locals 4

    const/4 v3, 0x0

    :try_start_0
    sget-object v2, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->mStringLayer:[Ljava/util/ArrayList;

    aget-object v1, v2, p0

    if-gez p1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 p1, v2, -0x1

    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p1, v2, :cond_1

    if-gez p1, :cond_2

    :cond_1
    move-object v2, v3

    :goto_0
    return-object v2

    :cond_2
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ime/framework/input/StrSegment;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v2, v3

    goto :goto_0
.end method

.method public static getVerbatim(II)Ljava/lang/String;
    .locals 5

    if-ltz p0, :cond_0

    if-ltz p1, :cond_0

    if-ge p1, p0, :cond_1

    :cond_0
    const/4 v3, 0x0

    :goto_0
    return-object v3

    :cond_1
    sget-object v3, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->mStringLayer:[Ljava/util/ArrayList;

    const/4 v4, 0x1

    aget-object v0, v3, v4

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ime/framework/input/StrSegment;

    iget v1, v3, Lcom/ime/framework/input/StrSegment;->from:I

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ime/framework/input/StrSegment;

    iget v2, v3, Lcom/ime/framework/input/StrSegment;->to:I

    const/4 v3, 0x0

    invoke-static {v3, v1, v2}, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->toString(III)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public static getVerbatimForBlock()Ljava/lang/String;
    .locals 3

    const/4 v2, 0x0

    sget-object v0, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->mStringLayer:[Ljava/util/ArrayList;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->mCursor:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    add-int/lit8 v0, v0, -0x1

    invoke-static {v2, v0}, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->getVerbatim(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getVerbatimForPrediction()Ljava/lang/String;
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    sget-object v1, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->mStringLayer:[Ljava/util/ArrayList;

    aget-object v1, v1, v3

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    const/4 v0, 0x0

    sget-object v1, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->mCursor:[I

    aget v1, v1, v2

    if-nez v1, :cond_1

    invoke-static {v2}, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->size(I)I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    :goto_1
    invoke-static {v3, v0}, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->getVerbatim(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->mCursor:[I

    aget v1, v1, v2

    add-int/lit8 v0, v1, -0x1

    goto :goto_1
.end method

.method public static getVerbatimList()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v5, 0x1

    const/4 v4, 0x0

    sget-object v3, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->mVerbatimList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    sget-object v3, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->mCursor:[I

    aget v3, v3, v5

    add-int/lit8 v3, v3, -0x1

    invoke-static {v4, v4, v3}, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->toString(III)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->mVerbatimList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v3, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->mVerbatimList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v3, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->mVerbatimList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v3, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->mVerbatimList:Ljava/util/ArrayList;

    invoke-static {v2}, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->convertHalftoFull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v3, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->mVerbatimList:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->convertHalftoFull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v3, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->mVerbatimList:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->convertHalftoFull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    sget-object v3, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->mVerbatimList:Ljava/util/ArrayList;

    return-object v3
.end method

.method public static getlastRomajicount()I
    .locals 5

    const/4 v4, 0x1

    sget-object v3, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->mCursor:[I

    aget v0, v3, v4

    if-lez v0, :cond_0

    sget-object v3, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->mStringLayer:[Ljava/util/ArrayList;

    aget-object v2, v3, v4

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ime/framework/input/StrSegment;

    iget v4, v3, Lcom/ime/framework/input/StrSegment;->to:I

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ime/framework/input/StrSegment;

    iget v3, v3, Lcom/ime/framework/input/StrSegment;->from:I

    sub-int v1, v4, v3

    if-lez v1, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static included(II)I
    .locals 6

    if-nez p1, :cond_1

    const/4 v0, 0x0

    :cond_0
    return v0

    :cond_1
    add-int/lit8 v4, p0, 0x1

    sget-object v5, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->mStringLayer:[Ljava/util/ArrayList;

    aget-object v3, v5, v4

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ime/framework/input/StrSegment;

    iget v5, v2, Lcom/ime/framework/input/StrSegment;->from:I

    if-gt v5, p1, :cond_2

    iget v5, v2, Lcom/ime/framework/input/StrSegment;->to:I

    if-le p1, v5, :cond_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static insertStrSegment(IILcom/ime/framework/input/StrSegment;)V
    .locals 11

    sget-object v8, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->mStringLayer:[Ljava/util/ArrayList;

    aget-object v8, v8, p0

    sget-object v9, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->mCursor:[I

    aget v9, v9, p0

    invoke-virtual {v8, v9, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    sget-object v8, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->mCursor:[I

    aget v9, v8, p0

    add-int/lit8 v9, v9, 0x1

    aput v9, v8, p0

    add-int/lit8 v1, p0, 0x1

    :goto_0
    if-gt v1, p1, :cond_1

    sget-object v8, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->mCursor:[I

    add-int/lit8 v9, v1, -0x1

    aget v8, v8, v9

    add-int/lit8 v4, v8, -0x1

    new-instance v7, Lcom/ime/framework/input/StrSegment;

    iget-object v8, p2, Lcom/ime/framework/input/StrSegment;->string:Ljava/lang/String;

    invoke-direct {v7, v8, v4, v4}, Lcom/ime/framework/input/StrSegment;-><init>(Ljava/lang/String;II)V

    sget-object v8, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->mStringLayer:[Ljava/util/ArrayList;

    aget-object v6, v8, v1

    sget-object v8, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->mCursor:[I

    aget v8, v8, v1

    invoke-virtual {v6, v8, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    sget-object v8, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->mCursor:[I

    aget v9, v8, v1

    add-int/lit8 v9, v9, 0x1

    aput v9, v8, v1

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v3

    sget-object v8, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->mCursor:[I

    aget v2, v8, v1

    :goto_1
    if-ge v2, v3, :cond_0

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/ime/framework/input/StrSegment;

    iget v8, v5, Lcom/ime/framework/input/StrSegment;->from:I

    add-int/lit8 v8, v8, 0x1

    iput v8, v5, Lcom/ime/framework/input/StrSegment;->from:I

    iget v8, v5, Lcom/ime/framework/input/StrSegment;->to:I

    add-int/lit8 v8, v8, 0x1

    iput v8, v5, Lcom/ime/framework/input/StrSegment;->to:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    sget-object v8, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->mCursor:[I

    aget v0, v8, p1

    add-int/lit8 v8, v0, -0x1

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-static {p1, v8, v9, v10}, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->modifyUpper(IIII)V

    invoke-static {p1, v0}, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->setCursor(II)I

    return-void
.end method

.method public static insertStrSegment(ILcom/ime/framework/input/StrSegment;)V
    .locals 3

    sget-object v1, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->mCursor:[I

    aget v0, v1, p0

    sget-object v1, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->mStringLayer:[Ljava/util/ArrayList;

    aget-object v1, v1, p0

    invoke-virtual {v1, v0, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->modifyUpper(IIII)V

    add-int/lit8 v1, v0, 0x1

    invoke-static {p0, v1}, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->setCursor(II)I

    return-void
.end method

.method public static isCursorChangingOnComposing()Z
    .locals 1

    sget-boolean v0, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->mDisplayCursorState:Z

    return v0
.end method

.method public static makeInstance()V
    .locals 4

    const/4 v3, 0x3

    new-array v1, v3, [Ljava/util/ArrayList;

    sput-object v1, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->mStringLayer:[Ljava/util/ArrayList;

    new-array v1, v3, [I

    sput-object v1, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->mCursor:[I

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    sget-object v1, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->mStringLayer:[Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    aput-object v2, v1, v0

    sget-object v1, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->mCursor:[I

    const/4 v2, 0x0

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->mVerbatimList:Ljava/util/ArrayList;

    return-void
.end method

.method private static modifyUpper(IIII)V
    .locals 18

    const/4 v14, 0x2

    move/from16 v0, p0

    if-lt v0, v14, :cond_0

    :goto_0
    return-void

    :cond_0
    add-int/lit8 v11, p0, 0x1

    sget-object v14, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->mStringLayer:[Ljava/util/ArrayList;

    aget-object v10, v14, v11

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-gtz v14, :cond_1

    new-instance v14, Lcom/ime/framework/input/StrSegment;

    invoke-static/range {p0 .. p0}, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->toString(I)Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    sget-object v17, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->mStringLayer:[Ljava/util/ArrayList;

    aget-object v17, v17, p0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v17

    add-int/lit8 v17, v17, -0x1

    invoke-direct/range {v14 .. v17}, Lcom/ime/framework/input/StrSegment;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v10, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v14, 0x0

    const/4 v15, 0x1

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-static {v11, v14, v15, v0}, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->modifyUpper(IIII)V

    goto :goto_0

    :cond_1
    if-nez p2, :cond_2

    const/4 v14, 0x0

    :goto_1
    add-int v6, p1, v14

    if-nez p3, :cond_3

    const/4 v14, 0x0

    :goto_2
    add-int v8, p1, v14

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v14

    add-int/lit8 v14, v14, -0x1

    invoke-virtual {v10, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ime/framework/input/StrSegment;

    iget v14, v3, Lcom/ime/framework/input/StrSegment;->to:I

    move/from16 v0, p1

    if-ge v14, v0, :cond_4

    iput v6, v3, Lcom/ime/framework/input/StrSegment;->to:I

    iget v14, v3, Lcom/ime/framework/input/StrSegment;->from:I

    iget v15, v3, Lcom/ime/framework/input/StrSegment;->to:I

    move/from16 v0, p0

    invoke-static {v0, v14, v15}, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->toString(III)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v3, Lcom/ime/framework/input/StrSegment;->string:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v14

    add-int/lit8 v14, v14, -0x1

    const/4 v15, 0x1

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-static {v11, v14, v15, v0}, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->modifyUpper(IIII)V

    goto :goto_0

    :cond_2
    add-int/lit8 v14, p2, -0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v14, p3, -0x1

    goto :goto_2

    :cond_4
    const/4 v12, -0x1

    const/4 v13, -0x1

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v5, :cond_8

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/ime/framework/input/StrSegment;

    iget v14, v9, Lcom/ime/framework/input/StrSegment;->from:I

    move/from16 v0, p1

    if-le v14, v0, :cond_b

    iget v14, v9, Lcom/ime/framework/input/StrSegment;->to:I

    if-gt v14, v8, :cond_7

    if-gez v12, :cond_5

    move v12, v2

    :cond_5
    move v13, v2

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_7
    move v13, v2

    :cond_8
    :goto_4
    if-gez v12, :cond_9

    const/4 v12, 0x0

    const/4 v13, 0x0

    :cond_9
    sub-int v1, p2, p3

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/ime/framework/input/StrSegment;

    iget v4, v9, Lcom/ime/framework/input/StrSegment;->to:I

    add-int/lit8 v7, v12, 0x1

    move v2, v7

    :goto_5
    if-gt v2, v13, :cond_d

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/ime/framework/input/StrSegment;

    iget v14, v9, Lcom/ime/framework/input/StrSegment;->to:I

    if-le v4, v14, :cond_a

    iget v4, v9, Lcom/ime/framework/input/StrSegment;->to:I

    :cond_a
    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_b
    if-nez p3, :cond_c

    iget v14, v9, Lcom/ime/framework/input/StrSegment;->from:I

    move/from16 v0, p1

    if-ne v14, v0, :cond_c

    add-int/lit8 v12, v2, -0x1

    add-int/lit8 v13, v2, -0x1

    goto :goto_4

    :cond_c
    move v12, v2

    move v13, v2

    iget v14, v9, Lcom/ime/framework/input/StrSegment;->to:I

    if-lt v14, v8, :cond_6

    goto :goto_4

    :cond_d
    if-ge v4, v6, :cond_e

    :goto_6
    iput v6, v9, Lcom/ime/framework/input/StrSegment;->to:I

    iget v14, v9, Lcom/ime/framework/input/StrSegment;->from:I

    iget v15, v9, Lcom/ime/framework/input/StrSegment;->to:I

    move/from16 v0, p0

    invoke-static {v0, v14, v15}, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->toString(III)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v9, Lcom/ime/framework/input/StrSegment;->string:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v2, v7

    :goto_7
    if-ge v2, v5, :cond_f

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/ime/framework/input/StrSegment;

    iget v14, v9, Lcom/ime/framework/input/StrSegment;->from:I

    add-int/2addr v14, v1

    iput v14, v9, Lcom/ime/framework/input/StrSegment;->from:I

    iget v14, v9, Lcom/ime/framework/input/StrSegment;->to:I

    add-int/2addr v14, v1

    iput v14, v9, Lcom/ime/framework/input/StrSegment;->to:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_e
    add-int v6, v4, v1

    goto :goto_6

    :cond_f
    const/4 v14, 0x1

    sub-int v15, v13, v12

    add-int/lit8 v15, v15, 0x1

    invoke-static {v11, v12, v14, v15}, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->modifyUpper(IIII)V

    goto/16 :goto_0
.end method

.method public static moveCursor(II)I
    .locals 2

    sget-object v1, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->mCursor:[I

    aget v1, v1, p0

    add-int v0, v1, p1

    invoke-static {p0, v0}, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->setCursor(II)I

    move-result v1

    return v1
.end method

.method public static replaceStrSegment(I[Lcom/ime/framework/input/StrSegment;)V
    .locals 3

    sget-object v1, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->mCursor:[I

    aget v0, v1, p0

    add-int/lit8 v1, v0, -0x1

    add-int/lit8 v2, v0, -0x1

    invoke-static {p0, p1, v1, v2}, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->replaceStrSegment0(I[Lcom/ime/framework/input/StrSegment;II)V

    array-length v1, p1

    add-int/2addr v1, v0

    add-int/lit8 v1, v1, -0x1

    invoke-static {p0, v1}, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->setCursor(II)I

    return-void
.end method

.method public static replaceStrSegment(I[Lcom/ime/framework/input/StrSegment;I)V
    .locals 3

    sget-object v1, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->mCursor:[I

    aget v0, v1, p0

    sub-int v1, v0, p2

    add-int/lit8 v2, v0, -0x1

    invoke-static {p0, p1, v1, v2}, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->replaceStrSegment0(I[Lcom/ime/framework/input/StrSegment;II)V

    array-length v1, p1

    add-int/2addr v1, v0

    sub-int/2addr v1, p2

    invoke-static {p0, v1}, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->setCursor(II)I

    return-void
.end method

.method protected static replaceStrSegment0(I[Lcom/ime/framework/input/StrSegment;II)V
    .locals 4

    sget-object v2, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->mStringLayer:[Ljava/util/ArrayList;

    aget-object v1, v2, p0

    if-ltz p2, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le p2, v2, :cond_1

    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p2

    :cond_1
    if-ltz p3, :cond_2

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le p3, v2, :cond_3

    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p3

    :cond_3
    move v0, p2

    :goto_0
    if-gt v0, p3, :cond_4

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    array-length v2, p1

    add-int/lit8 v0, v2, -0x1

    :goto_1
    if-ltz v0, :cond_5

    aget-object v2, p1, v0

    invoke-virtual {v1, p2, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_5
    array-length v2, p1

    sub-int v3, p3, p2

    add-int/lit8 v3, v3, 0x1

    invoke-static {p0, p2, v2, v3}, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->modifyUpper(IIII)V

    return-void
.end method

.method public static setBlockCursorbeforeModified()V
    .locals 2

    sget v0, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->mCursorSaved:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->mCursor:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    sput v0, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->mCursorSaved:I

    :cond_0
    return-void
.end method

.method public static setBlockPrediction(Z)V
    .locals 0

    sput-boolean p0, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->mHasPrediction:Z

    return-void
.end method

.method public static setCursor(II)I
    .locals 5

    const/4 v3, 0x2

    const/4 v1, 0x0

    const/4 v4, 0x1

    sget-object v0, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->mStringLayer:[Ljava/util/ArrayList;

    aget-object v0, v0, p0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le p1, v0, :cond_0

    sget-object v0, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->mStringLayer:[Ljava/util/ArrayList;

    aget-object v0, v0, p0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    :cond_0
    if-gez p1, :cond_1

    const/4 p1, 0x0

    :cond_1
    if-nez p0, :cond_2

    sget-object v0, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->mCursor:[I

    aput p1, v0, v1

    sget-object v0, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->mCursor:[I

    invoke-static {v1, p1}, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->included(II)I

    move-result v1

    aput v1, v0, v4

    sget-object v0, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->mCursor:[I

    sget-object v1, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->mCursor:[I

    aget v1, v1, v4

    invoke-static {v4, v1}, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->included(II)I

    move-result v1

    aput v1, v0, v3

    :goto_0
    return p1

    :cond_2
    if-ne p0, v4, :cond_4

    sget-object v0, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->mCursor:[I

    invoke-static {v4, p1}, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->included(II)I

    move-result v2

    aput v2, v0, v3

    sget-object v0, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->mCursor:[I

    aput p1, v0, v4

    sget-object v2, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->mCursor:[I

    if-lez p1, :cond_3

    sget-object v0, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->mStringLayer:[Ljava/util/ArrayList;

    aget-object v0, v0, v4

    add-int/lit8 v3, p1, -0x1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ime/framework/input/StrSegment;

    iget v0, v0, Lcom/ime/framework/input/StrSegment;->to:I

    add-int/lit8 v0, v0, 0x1

    :goto_1
    aput v0, v2, v1

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1

    :cond_4
    sget-object v0, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->mCursor:[I

    aput p1, v0, v3

    sget-object v2, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->mCursor:[I

    if-lez p1, :cond_5

    sget-object v0, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->mStringLayer:[Ljava/util/ArrayList;

    aget-object v0, v0, v3

    add-int/lit8 v3, p1, -0x1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ime/framework/input/StrSegment;

    iget v0, v0, Lcom/ime/framework/input/StrSegment;->to:I

    add-int/lit8 v0, v0, 0x1

    :goto_2
    aput v0, v2, v4

    sget-object v2, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->mCursor:[I

    sget-object v0, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->mCursor:[I

    aget v0, v0, v4

    if-lez v0, :cond_6

    sget-object v0, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->mStringLayer:[Ljava/util/ArrayList;

    aget-object v0, v0, v4

    sget-object v3, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->mCursor:[I

    aget v3, v3, v4

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ime/framework/input/StrSegment;

    iget v0, v0, Lcom/ime/framework/input/StrSegment;->to:I

    add-int/lit8 v0, v0, 0x1

    :goto_3
    aput v0, v2, v1

    goto :goto_0

    :cond_5
    move v0, v1

    goto :goto_2

    :cond_6
    move v0, v1

    goto :goto_3
.end method

.method public static setCursorChangingOnComposing(I)V
    .locals 1

    if-nez p0, :cond_0

    const/4 v0, 0x1

    sput-boolean v0, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->mDisplayCursorState:Z

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->mDisplayCursorState:Z

    goto :goto_0
.end method

.method public static setCursorDir(I)V
    .locals 0

    sput p0, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->mCursorDir:I

    return-void
.end method

.method public static size(I)I
    .locals 1

    sget-object v0, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->mStringLayer:[Ljava/util/ArrayList;

    aget-object v0, v0, p0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public static toString(I)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    sget-object v1, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->mStringLayer:[Ljava/util/ArrayList;

    aget-object v1, v1, p0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {p0, v0, v1}, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->toString(III)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toString(III)Ljava/lang/String;
    .locals 6

    :try_start_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    sget-object v5, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->mStringLayer:[Ljava/util/ArrayList;

    aget-object v4, v5, p0

    move v2, p1

    :goto_0
    if-gt v2, p2, :cond_0

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ime/framework/input/StrSegment;

    iget-object v5, v3, Lcom/ime/framework/input/StrSegment;->string:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    :goto_1
    return-object v5

    :catch_0
    move-exception v1

    const/4 v5, 0x0

    goto :goto_1
.end method


# virtual methods
.method public debugout()V
    .locals 7

    const/4 v0, 0x0

    :goto_0
    const/4 v4, 0x3

    if-ge v0, v4, :cond_1

    const-string v4, "OpenWnn"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ComposingText["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "OpenWnn"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  cur = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->mCursor:[I

    aget v6, v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    sget-object v4, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->mStringLayer:[Ljava/util/ArrayList;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ime/framework/input/StrSegment;

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v4, v2, Lcom/ime/framework/input/StrSegment;->string:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v4, v2, Lcom/ime/framework/input/StrSegment;->from:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v4, v2, Lcom/ime/framework/input/StrSegment;->to:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_0
    const-string v4, "OpenWnn"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  str = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_1
    return-void
.end method

.method public getStringLayer(I)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ime/framework/input/StrSegment;",
            ">;"
        }
    .end annotation

    :try_start_0
    sget-object v1, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->mStringLayer:[Ljava/util/ArrayList;

    aget-object v1, v1, p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    goto :goto_0
.end method
