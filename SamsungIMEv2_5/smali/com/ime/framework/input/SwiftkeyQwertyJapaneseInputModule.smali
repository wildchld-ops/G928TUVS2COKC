.class public Lcom/ime/framework/input/SwiftkeyQwertyJapaneseInputModule;
.super Lcom/ime/framework/input/AbstractSwiftkeyInputModule;
.source "SwiftkeyQwertyJapaneseInputModule.java"


# static fields
.field private static final CHAR_SMALL:Ljava/lang/String; = "\u3041\u3043\u3045\u3047\u3049\u3063\u3083\u3085\u3087\u308e\u3095\u3096"

.field private static final MAX_LENGTH:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;-><init>()V

    return-void
.end method

.method private AddVerbatimForRecapture(Ljava/util/ArrayList;)V
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

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/ime/framework/input/SwiftkeyQwertyJapaneseInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v1, v0}, Lcom/ime/framework/engine/InputEngineManager;->getCurrentInputBuffer(Ljava/lang/StringBuilder;)V

    iget-object v1, p0, Lcom/ime/framework/input/SwiftkeyQwertyJapaneseInputModule;->mCandidates:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_0

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ime/framework/input/SwiftkeyQwertyJapaneseInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {p0, v1, v0}, Lcom/ime/framework/input/SwiftkeyQwertyJapaneseInputModule;->addCurrentTextToCandidate(Ljava/util/ArrayList;Ljava/lang/StringBuilder;)V

    :cond_0
    return-void
.end method

.method private convertRomajiToHiragana()Z
    .locals 23

    const/16 v18, 0x1

    invoke-static/range {v18 .. v18}, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->getCursor(I)I

    move-result v7

    if-gtz v7, :cond_0

    const/16 v18, 0x0

    :goto_0
    return v18

    :cond_0
    const/16 v18, 0x4

    move/from16 v0, v18

    new-array v14, v0, [Lcom/ime/framework/input/StrSegment;

    const/4 v13, 0x4

    const/16 v18, 0x4

    move/from16 v0, v18

    invoke-static {v7, v0}, Ljava/lang/Math;->min(II)I

    move-result v4

    const/4 v9, 0x1

    :goto_1
    if-gt v9, v4, :cond_1

    rsub-int/lit8 v18, v9, 0x4

    const/16 v19, 0x1

    sub-int v20, v7, v9

    invoke-static/range {v19 .. v20}, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->getStrSegment(II)Lcom/ime/framework/input/StrSegment;

    move-result-object v19

    aput-object v19, v14, v18

    rsub-int/lit8 v18, v9, 0x4

    aget-object v18, v14, v18

    move-object/from16 v0, v18

    iget-object v15, v0, Lcom/ime/framework/input/StrSegment;->string:Ljava/lang/String;

    add-int/lit8 v13, v13, -0x1

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_1
    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    :goto_2
    const/16 v18, 0x4

    move/from16 v0, v18

    if-ge v13, v0, :cond_12

    const/4 v5, 0x0

    move v9, v13

    :goto_3
    const/16 v18, 0x4

    move/from16 v0, v18

    if-ge v9, v0, :cond_2

    aget-object v18, v14, v9

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/ime/framework/input/StrSegment;->string:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_2
    rsub-int/lit8 v18, v13, 0x4

    sub-int v18, v7, v18

    add-int/lit8 v19, v7, -0x1

    invoke-static/range {v18 .. v19}, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->getVerbatim(II)Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/SwiftkeyQwertyJapaneseInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Lcom/ime/framework/engine/InputEngineManager;->romajiToHiragana(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :cond_3
    const/4 v11, 0x0

    if-nez v5, :cond_4

    const/16 v18, 0x0

    goto :goto_0

    :cond_4
    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v15

    const/4 v6, 0x0

    const-string v18, "\u3041\u3043\u3045\u3047\u3049\u3063\u3083\u3085\u3087\u308e\u3095\u3096"

    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/lang/String;->charAt(I)C

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->indexOf(I)I

    move-result v18

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_5

    add-int/lit8 v13, v13, 0x1

    const/16 v18, 0x0

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->length()I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v10, v0, v1}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_5
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v16

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v9, 0x1

    :goto_4
    move/from16 v0, v16

    if-gt v9, v0, :cond_8

    if-gt v9, v3, :cond_8

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v15, v0, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v5, v0, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_7

    if-ne v3, v9, :cond_6

    move/from16 v0, v16

    if-le v0, v3, :cond_6

    sub-int v8, v16, v3

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v12, v0, [Lcom/ime/framework/input/StrSegment;

    const/16 v18, 0x0

    new-instance v19, Lcom/ime/framework/input/StrSegment;

    add-int v20, v13, v6

    aget-object v20, v14, v20

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/ime/framework/input/StrSegment;->string:Ljava/lang/String;

    move-object/from16 v20, v0

    add-int v21, v13, v6

    aget-object v21, v14, v21

    move-object/from16 v0, v21

    iget v0, v0, Lcom/ime/framework/input/StrSegment;->from:I

    move/from16 v21, v0

    add-int v22, v13, v6

    add-int/lit8 v22, v22, 0x1

    aget-object v22, v14, v22

    move-object/from16 v0, v22

    iget v0, v0, Lcom/ime/framework/input/StrSegment;->to:I

    move/from16 v22, v0

    invoke-direct/range {v19 .. v22}, Lcom/ime/framework/input/StrSegment;-><init>(Ljava/lang/String;II)V

    aput-object v19, v12, v18

    const/16 v18, 0x1

    add-int/lit8 v19, v8, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-static {v0, v12, v1}, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->replaceStrSegment(I[Lcom/ime/framework/input/StrSegment;I)V

    add-int/2addr v6, v8

    :cond_6
    add-int/lit8 v6, v6, 0x1

    :cond_7
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    :cond_8
    if-lez v6, :cond_a

    :goto_5
    if-eqz v11, :cond_11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_d

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v12, v0, [Lcom/ime/framework/input/StrSegment;

    const/16 v18, 0x0

    new-instance v19, Lcom/ime/framework/input/StrSegment;

    aget-object v20, v14, v13

    move-object/from16 v0, v20

    iget v0, v0, Lcom/ime/framework/input/StrSegment;->from:I

    move/from16 v20, v0

    const/16 v21, 0x3

    aget-object v21, v14, v21

    move-object/from16 v0, v21

    iget v0, v0, Lcom/ime/framework/input/StrSegment;->to:I

    move/from16 v21, v0

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v0, v11, v1, v2}, Lcom/ime/framework/input/StrSegment;-><init>(Ljava/lang/String;II)V

    aput-object v19, v12, v18

    const/16 v18, 0x1

    rsub-int/lit8 v19, v13, 0x4

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-static {v0, v12, v1}, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->replaceStrSegment(I[Lcom/ime/framework/input/StrSegment;I)V

    :cond_9
    :goto_6
    const/16 v18, 0x1

    goto/16 :goto_0

    :cond_a
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/String;->charAt(I)C

    move-result v18

    invoke-static/range {v18 .. v18}, Lcom/ime/framework/util/Utils;->isHiraganaKey(C)Z

    move-result v18

    if-eqz v18, :cond_b

    move-object v11, v5

    goto :goto_5

    :cond_b
    invoke-virtual {v15, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_c

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v18

    if-lez v18, :cond_c

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v18

    if-lez v18, :cond_c

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v18

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/String;->charAt(I)C

    move-result v18

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v19

    add-int/lit8 v19, v19, -0x1

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/String;->charAt(I)C

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_c

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/String;->charAt(I)C

    move-result v18

    invoke-static/range {v18 .. v18}, Lcom/ime/framework/util/Utils;->isHiraganaKey(C)Z

    move-result v18

    if-eqz v18, :cond_c

    move-object v11, v15

    goto/16 :goto_5

    :cond_c
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_5

    :cond_d
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v18

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_f

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v12, v0, [Lcom/ime/framework/input/StrSegment;

    const-string v18, "\u3041\u3043\u3045\u3047\u3049\u3063\u3083\u3085\u3087\u308e\u3095\u3096"

    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v11, v0}, Ljava/lang/String;->charAt(I)C

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->indexOf(I)I

    move-result v18

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_e

    const/16 v18, 0x0

    new-instance v19, Lcom/ime/framework/input/StrSegment;

    const/16 v20, 0x0

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v21

    add-int/lit8 v21, v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v11, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    aget-object v21, v14, v13

    move-object/from16 v0, v21

    iget v0, v0, Lcom/ime/framework/input/StrSegment;->from:I

    move/from16 v21, v0

    aget-object v22, v14, v13

    move-object/from16 v0, v22

    iget v0, v0, Lcom/ime/framework/input/StrSegment;->from:I

    move/from16 v22, v0

    invoke-direct/range {v19 .. v22}, Lcom/ime/framework/input/StrSegment;-><init>(Ljava/lang/String;II)V

    aput-object v19, v12, v18

    const/16 v18, 0x1

    new-instance v19, Lcom/ime/framework/input/StrSegment;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v20

    add-int/lit8 v20, v20, -0x1

    move/from16 v0, v20

    invoke-virtual {v11, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v20

    aget-object v21, v14, v13

    move-object/from16 v0, v21

    iget v0, v0, Lcom/ime/framework/input/StrSegment;->from:I

    move/from16 v21, v0

    add-int/lit8 v21, v21, 0x1

    const/16 v22, 0x3

    aget-object v22, v14, v22

    move-object/from16 v0, v22

    iget v0, v0, Lcom/ime/framework/input/StrSegment;->to:I

    move/from16 v22, v0

    invoke-direct/range {v19 .. v22}, Lcom/ime/framework/input/StrSegment;-><init>(Ljava/lang/String;II)V

    aput-object v19, v12, v18

    :goto_7
    const/16 v18, 0x1

    rsub-int/lit8 v19, v13, 0x4

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-static {v0, v12, v1}, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->replaceStrSegment(I[Lcom/ime/framework/input/StrSegment;I)V

    goto/16 :goto_6

    :cond_e
    const/16 v18, 0x0

    new-instance v19, Lcom/ime/framework/input/StrSegment;

    const/16 v20, 0x0

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v21

    add-int/lit8 v21, v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v11, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    aget-object v21, v14, v13

    move-object/from16 v0, v21

    iget v0, v0, Lcom/ime/framework/input/StrSegment;->from:I

    move/from16 v21, v0

    const/16 v22, 0x3

    aget-object v22, v14, v22

    move-object/from16 v0, v22

    iget v0, v0, Lcom/ime/framework/input/StrSegment;->to:I

    move/from16 v22, v0

    add-int/lit8 v22, v22, -0x1

    invoke-direct/range {v19 .. v22}, Lcom/ime/framework/input/StrSegment;-><init>(Ljava/lang/String;II)V

    aput-object v19, v12, v18

    const/16 v18, 0x1

    new-instance v19, Lcom/ime/framework/input/StrSegment;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v20

    add-int/lit8 v20, v20, -0x1

    move/from16 v0, v20

    invoke-virtual {v11, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x3

    aget-object v21, v14, v21

    move-object/from16 v0, v21

    iget v0, v0, Lcom/ime/framework/input/StrSegment;->to:I

    move/from16 v21, v0

    const/16 v22, 0x3

    aget-object v22, v14, v22

    move-object/from16 v0, v22

    iget v0, v0, Lcom/ime/framework/input/StrSegment;->to:I

    move/from16 v22, v0

    invoke-direct/range {v19 .. v22}, Lcom/ime/framework/input/StrSegment;-><init>(Ljava/lang/String;II)V

    aput-object v19, v12, v18

    goto :goto_7

    :cond_f
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v18

    const/16 v19, 0x3

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_9

    const-string v18, "\u3041\u3043\u3045\u3047\u3049\u3063\u3083\u3085\u3087\u308e\u3095\u3096"

    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v11, v0}, Ljava/lang/String;->charAt(I)C

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->indexOf(I)I

    move-result v18

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_10

    const/16 v18, 0x3

    move/from16 v0, v18

    new-array v12, v0, [Lcom/ime/framework/input/StrSegment;

    const/16 v18, 0x0

    new-instance v19, Lcom/ime/framework/input/StrSegment;

    const/16 v20, 0x0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v11, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    aget-object v21, v14, v13

    move-object/from16 v0, v21

    iget v0, v0, Lcom/ime/framework/input/StrSegment;->from:I

    move/from16 v21, v0

    aget-object v22, v14, v13

    move-object/from16 v0, v22

    iget v0, v0, Lcom/ime/framework/input/StrSegment;->from:I

    move/from16 v22, v0

    invoke-direct/range {v19 .. v22}, Lcom/ime/framework/input/StrSegment;-><init>(Ljava/lang/String;II)V

    aput-object v19, v12, v18

    const/16 v18, 0x1

    new-instance v19, Lcom/ime/framework/input/StrSegment;

    const/16 v20, 0x1

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v21

    add-int/lit8 v21, v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v11, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    aget-object v21, v14, v13

    move-object/from16 v0, v21

    iget v0, v0, Lcom/ime/framework/input/StrSegment;->from:I

    move/from16 v21, v0

    add-int/lit8 v21, v21, 0x1

    const/16 v22, 0x3

    aget-object v22, v14, v22

    move-object/from16 v0, v22

    iget v0, v0, Lcom/ime/framework/input/StrSegment;->to:I

    move/from16 v22, v0

    add-int/lit8 v22, v22, -0x1

    invoke-direct/range {v19 .. v22}, Lcom/ime/framework/input/StrSegment;-><init>(Ljava/lang/String;II)V

    aput-object v19, v12, v18

    const/16 v18, 0x2

    new-instance v19, Lcom/ime/framework/input/StrSegment;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v20

    add-int/lit8 v20, v20, -0x1

    move/from16 v0, v20

    invoke-virtual {v11, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x3

    aget-object v21, v14, v21

    move-object/from16 v0, v21

    iget v0, v0, Lcom/ime/framework/input/StrSegment;->to:I

    move/from16 v21, v0

    const/16 v22, 0x3

    aget-object v22, v14, v22

    move-object/from16 v0, v22

    iget v0, v0, Lcom/ime/framework/input/StrSegment;->to:I

    move/from16 v22, v0

    invoke-direct/range {v19 .. v22}, Lcom/ime/framework/input/StrSegment;-><init>(Ljava/lang/String;II)V

    aput-object v19, v12, v18

    :goto_8
    const/16 v18, 0x1

    rsub-int/lit8 v19, v13, 0x4

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-static {v0, v12, v1}, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->replaceStrSegment(I[Lcom/ime/framework/input/StrSegment;I)V

    goto/16 :goto_6

    :cond_10
    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v12, v0, [Lcom/ime/framework/input/StrSegment;

    const/16 v18, 0x0

    new-instance v19, Lcom/ime/framework/input/StrSegment;

    const/16 v20, 0x0

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v21

    add-int/lit8 v21, v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v11, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    aget-object v21, v14, v13

    move-object/from16 v0, v21

    iget v0, v0, Lcom/ime/framework/input/StrSegment;->from:I

    move/from16 v21, v0

    const/16 v22, 0x3

    aget-object v22, v14, v22

    move-object/from16 v0, v22

    iget v0, v0, Lcom/ime/framework/input/StrSegment;->to:I

    move/from16 v22, v0

    add-int/lit8 v22, v22, -0x1

    invoke-direct/range {v19 .. v22}, Lcom/ime/framework/input/StrSegment;-><init>(Ljava/lang/String;II)V

    aput-object v19, v12, v18

    const/16 v18, 0x1

    new-instance v19, Lcom/ime/framework/input/StrSegment;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v20

    add-int/lit8 v20, v20, -0x1

    move/from16 v0, v20

    invoke-virtual {v11, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x3

    aget-object v21, v14, v21

    move-object/from16 v0, v21

    iget v0, v0, Lcom/ime/framework/input/StrSegment;->to:I

    move/from16 v21, v0

    const/16 v22, 0x3

    aget-object v22, v14, v22

    move-object/from16 v0, v22

    iget v0, v0, Lcom/ime/framework/input/StrSegment;->to:I

    move/from16 v22, v0

    invoke-direct/range {v19 .. v22}, Lcom/ime/framework/input/StrSegment;-><init>(Ljava/lang/String;II)V

    aput-object v19, v12, v18

    goto :goto_8

    :cond_11
    add-int/2addr v13, v6

    const/16 v18, 0x0

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->length()I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v10, v0, v1}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    goto/16 :goto_2

    :cond_12
    const/16 v18, 0x0

    goto/16 :goto_0
.end method

.method private processBackSpaceKey()V
    .locals 12

    const/16 v11, 0x14

    const/4 v10, -0x5

    const/16 v9, 0x43

    const/4 v7, 0x1

    const/4 v8, 0x0

    iget-object v6, p0, Lcom/ime/framework/input/SwiftkeyQwertyJapaneseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v6, p0, Lcom/ime/framework/input/SwiftkeyQwertyJapaneseInputModule;->mMultitap:Lcom/ime/framework/input/InputModule$Timer;

    invoke-virtual {p0, v6}, Lcom/ime/framework/input/SwiftkeyQwertyJapaneseInputModule;->stopTimer(Lcom/ime/framework/input/InputModule$Timer;)V

    iget-object v6, p0, Lcom/ime/framework/input/SwiftkeyQwertyJapaneseInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v6}, Lcom/ime/framework/engine/InputEngineManager;->removeCurrentTermFromTemporaryModel()V

    iget-object v6, p0, Lcom/ime/framework/input/SwiftkeyQwertyJapaneseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v6, v8}, Lcom/ime/framework/common/InputManager;->setFocusOnCandidateView(Z)V

    const-string v4, ""

    if-eqz v1, :cond_2

    invoke-interface {v1, v7, v8}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-nez v4, :cond_2

    const-string v4, ""

    :cond_2
    invoke-virtual {p0, v4}, Lcom/ime/framework/input/SwiftkeyQwertyJapaneseInputModule;->setDeleteCount(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyQwertyJapaneseInputModule;->resetPredictionWord()V

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_3

    iget-object v6, p0, Lcom/ime/framework/input/SwiftkeyQwertyJapaneseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/ime/framework/common/InputManager;->getInputController()Lcom/ime/framework/input/InputController;

    move-result-object v6

    invoke-interface {v6}, Lcom/ime/framework/input/InputController;->getAudioAndHapticVibratorFeedback()Lcom/sec/android/inputmethod/AudioAndHapticVibratorFeedback;

    move-result-object v6

    invoke-virtual {v6, v10, v7}, Lcom/sec/android/inputmethod/AudioAndHapticVibratorFeedback;->playVibrateEffect(IZ)V

    :cond_3
    iget-object v6, p0, Lcom/ime/framework/input/SwiftkeyQwertyJapaneseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/ime/framework/common/InputManager;->getSelectedNumOfText()I

    move-result v5

    iget-object v6, p0, Lcom/ime/framework/input/SwiftkeyQwertyJapaneseInputModule;->mCandidates:Ljava/util/ArrayList;

    if-eqz v6, :cond_b

    iget-object v6, p0, Lcom/ime/framework/input/SwiftkeyQwertyJapaneseInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_b

    iget-object v6, p0, Lcom/ime/framework/input/SwiftkeyQwertyJapaneseInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_b

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->length()I

    move-result v6

    if-le v6, v7, :cond_5

    iget-object v6, p0, Lcom/ime/framework/input/SwiftkeyQwertyJapaneseInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v6, v10}, Lcom/ime/framework/engine/InputEngineManager;->inputKey(I)I

    move-result v6

    if-nez v6, :cond_4

    invoke-static {v7, v8}, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->delete(IZ)I

    invoke-static {v7}, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/ime/framework/input/ComposingTextManager;->replace(Ljava/lang/String;)V

    invoke-virtual {p0, v9}, Lcom/ime/framework/input/SwiftkeyQwertyJapaneseInputModule;->onKeyDownUpHandle(I)V

    invoke-virtual {p0, v8}, Lcom/ime/framework/input/SwiftkeyQwertyJapaneseInputModule;->postUpdateSequenceAndSuggestionDelay(I)V

    goto :goto_0

    :cond_4
    invoke-static {v7, v8}, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->delete(IZ)I

    invoke-static {v7}, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/ime/framework/input/ComposingTextManager;->replace(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyQwertyJapaneseInputModule;->setComposingText()V

    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyQwertyJapaneseInputModule;->updateSuggestionDelay()V

    goto :goto_0

    :cond_5
    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v6

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/ime/framework/input/SwiftkeyQwertyJapaneseInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v6, v10}, Lcom/ime/framework/engine/InputEngineManager;->inputKey(I)I

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->clear()V

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/ime/framework/input/SwiftkeyQwertyJapaneseInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    iget-object v6, p0, Lcom/ime/framework/input/SwiftkeyQwertyJapaneseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v6, v8}, Lcom/ime/framework/common/InputManager;->setIsPendingUpdateCandidateView(Z)V

    invoke-virtual {p0, v8}, Lcom/ime/framework/input/SwiftkeyQwertyJapaneseInputModule;->postUpdateSequenceAndSuggestionDelay(I)V

    goto/16 :goto_0

    :cond_6
    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->clear()V

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-gtz v6, :cond_7

    if-lez v5, :cond_8

    :cond_7
    invoke-virtual {p0, v7}, Lcom/ime/framework/input/SwiftkeyQwertyJapaneseInputModule;->setPredictionWord(Z)V

    :cond_8
    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyQwertyJapaneseInputModule;->getDeleteCount()I

    move-result v6

    const/16 v7, 0xa

    if-le v6, v7, :cond_9

    invoke-static {}, Lcom/ime/framework/repository/PackageStatus;->getPackageName()Lcom/ime/framework/repository/PackageStatus$PACKAGE_NAME;

    move-result-object v6

    sget-object v7, Lcom/ime/framework/repository/PackageStatus$PACKAGE_NAME;->CHATON_PACKAGE_NAME:Lcom/ime/framework/repository/PackageStatus$PACKAGE_NAME;

    if-eq v6, v7, :cond_9

    if-eqz v1, :cond_a

    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyQwertyJapaneseInputModule;->getLastWordDividerIndex()I

    move-result v6

    invoke-interface {v1, v6, v8}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    const/16 v6, 0xc8

    invoke-virtual {p0, v6}, Lcom/ime/framework/input/SwiftkeyQwertyJapaneseInputModule;->postUpdateSequenceAndSuggestionDelay(I)V

    goto/16 :goto_0

    :cond_9
    invoke-virtual {p0, v9}, Lcom/ime/framework/input/SwiftkeyQwertyJapaneseInputModule;->onKeyDownUpHandle(I)V

    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyQwertyJapaneseInputModule;->finishComposingWithoutInit()V

    :cond_a
    invoke-virtual {p0, v8}, Lcom/ime/framework/input/SwiftkeyQwertyJapaneseInputModule;->postUpdateSequence(I)V

    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyQwertyJapaneseInputModule;->updateSuggestionDelay()V

    goto/16 :goto_0

    :cond_b
    invoke-static {}, Lcom/ime/framework/repository/EditorStatus;->isAutoCompletitionInput()Z

    move-result v2

    iget-object v6, p0, Lcom/ime/framework/input/SwiftkeyQwertyJapaneseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/ime/framework/common/InputManager;->isOrientationLandscape()Z

    move-result v3

    iget-object v6, p0, Lcom/ime/framework/input/SwiftkeyQwertyJapaneseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/ime/framework/common/InputManager;->getCompletions()[Landroid/view/inputmethod/CompletionInfo;

    move-result-object v0

    if-eqz v2, :cond_e

    if-eqz v3, :cond_e

    if-eqz v0, :cond_e

    if-eqz v1, :cond_c

    invoke-interface {v1}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    :cond_c
    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->clear()V

    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyQwertyJapaneseInputModule;->getDeleteCount()I

    move-result v6

    if-le v6, v11, :cond_d

    invoke-static {}, Lcom/ime/framework/repository/PackageStatus;->getPackageName()Lcom/ime/framework/repository/PackageStatus$PACKAGE_NAME;

    move-result-object v6

    sget-object v7, Lcom/ime/framework/repository/PackageStatus$PACKAGE_NAME;->CHATON_PACKAGE_NAME:Lcom/ime/framework/repository/PackageStatus$PACKAGE_NAME;

    if-eq v6, v7, :cond_d

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyQwertyJapaneseInputModule;->getLastWordDividerIndex()I

    move-result v6

    invoke-interface {v1, v6, v8}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    goto/16 :goto_0

    :cond_d
    invoke-virtual {p0, v9}, Lcom/ime/framework/input/SwiftkeyQwertyJapaneseInputModule;->onKeyDownUpHandle(I)V

    goto/16 :goto_0

    :cond_e
    invoke-virtual {p0, v7}, Lcom/ime/framework/input/SwiftkeyQwertyJapaneseInputModule;->finishComposing(Z)V

    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyQwertyJapaneseInputModule;->initComposingBuffer()V

    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyQwertyJapaneseInputModule;->getDeleteCount()I

    move-result v6

    if-le v6, v11, :cond_f

    invoke-static {}, Lcom/ime/framework/repository/PackageStatus;->getPackageName()Lcom/ime/framework/repository/PackageStatus$PACKAGE_NAME;

    move-result-object v6

    sget-object v7, Lcom/ime/framework/repository/PackageStatus$PACKAGE_NAME;->CHATON_PACKAGE_NAME:Lcom/ime/framework/repository/PackageStatus$PACKAGE_NAME;

    if-eq v6, v7, :cond_f

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyQwertyJapaneseInputModule;->getLastWordDividerIndex()I

    move-result v6

    invoke-interface {v1, v6, v8}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    goto/16 :goto_0

    :cond_f
    invoke-virtual {p0, v9}, Lcom/ime/framework/input/SwiftkeyQwertyJapaneseInputModule;->onKeyDownUpHandle(I)V

    goto/16 :goto_0
.end method

.method private processForwardDelete()V
    .locals 5

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/ime/framework/input/SwiftkeyQwertyJapaneseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, ""

    if-eqz v1, :cond_2

    const/4 v2, 0x1

    invoke-interface {v1, v2, v4}, Landroid/view/inputmethod/InputConnection;->getTextAfterCursor(II)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_2

    const-string v0, ""

    :cond_2
    invoke-virtual {p0, v0}, Lcom/ime/framework/input/SwiftkeyQwertyJapaneseInputModule;->setDeleteCount(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyQwertyJapaneseInputModule;->resetPredictionWord()V

    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyQwertyJapaneseInputModule;->getDeleteCount()I

    move-result v2

    const/16 v3, 0xa

    if-le v2, v3, :cond_4

    invoke-static {}, Lcom/ime/framework/repository/PackageStatus;->getPackageName()Lcom/ime/framework/repository/PackageStatus$PACKAGE_NAME;

    move-result-object v2

    sget-object v3, Lcom/ime/framework/repository/PackageStatus$PACKAGE_NAME;->CHATON_PACKAGE_NAME:Lcom/ime/framework/repository/PackageStatus$PACKAGE_NAME;

    if-eq v2, v3, :cond_4

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyQwertyJapaneseInputModule;->getFirstWordDividerIndex()I

    move-result v2

    invoke-interface {v1, v4, v2}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    :cond_3
    :goto_1
    iget-object v2, p0, Lcom/ime/framework/input/SwiftkeyQwertyJapaneseInputModule;->mCandidates:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/ime/framework/input/SwiftkeyQwertyJapaneseInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/ime/framework/input/SwiftkeyQwertyJapaneseInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    const/16 v2, 0xc8

    invoke-virtual {p0, v2}, Lcom/ime/framework/input/SwiftkeyQwertyJapaneseInputModule;->postUpdateSequenceAndSuggestionDelay(I)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyQwertyJapaneseInputModule;->initWordDividerIndexList()V

    const/16 v2, 0x70

    invoke-virtual {p0, v2}, Lcom/ime/framework/input/SwiftkeyQwertyJapaneseInputModule;->onKeyDownUpHandle(I)V

    goto :goto_1
.end method

.method private processSingleTap(I[I)V
    .locals 7

    const/4 v6, 0x0

    iget-object v5, p0, Lcom/ime/framework/input/SwiftkeyQwertyJapaneseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v2

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v5, p0, Lcom/ime/framework/input/SwiftkeyQwertyJapaneseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v5, v6}, Lcom/ime/framework/common/InputManager;->setCandidateviewStatus(I)V

    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyQwertyJapaneseInputModule;->cancelPreviewTrace()V

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/ime/framework/input/SwiftkeyQwertyJapaneseInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v5}, Lcom/ime/framework/engine/InputEngineManager;->breakContext()V

    :cond_1
    iget-object v5, p0, Lcom/ime/framework/input/SwiftkeyQwertyJapaneseInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v5, p1}, Lcom/ime/framework/engine/InputEngineManager;->isNumericCharacter(I)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyQwertyJapaneseInputModule;->isRequiredSendingKeyCode()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->composingText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/ime/framework/input/SwiftkeyQwertyJapaneseInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    :cond_2
    add-int/lit8 v5, p1, -0x30

    add-int/lit8 v0, v5, 0x7

    iget-object v5, p0, Lcom/ime/framework/input/SwiftkeyQwertyJapaneseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/ime/framework/common/InputManager;->getInputController()Lcom/ime/framework/input/InputController;

    move-result-object v5

    invoke-interface {v5, v0, v6}, Lcom/ime/framework/input/InputController;->sendDownUpKeyEvent(II)V

    :goto_1
    invoke-direct {p0}, Lcom/ime/framework/input/SwiftkeyQwertyJapaneseInputModule;->convertRomajiToHiragana()Z

    iget-object v5, p0, Lcom/ime/framework/input/SwiftkeyQwertyJapaneseInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    const/4 v6, 0x0

    invoke-interface {v5, p1, v6}, Lcom/ime/framework/engine/InputEngineManager;->inputKey(ILandroid/graphics/PointF;)I

    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyQwertyJapaneseInputModule;->clearAction()V

    iget-object v5, p0, Lcom/ime/framework/input/SwiftkeyQwertyJapaneseInputModule;->mCandidates:Ljava/util/ArrayList;

    if-eqz v5, :cond_4

    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyQwertyJapaneseInputModule;->setComposingText()V

    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyQwertyJapaneseInputModule;->updateSuggestionDelay()V

    goto :goto_0

    :cond_3
    int-to-char v5, p1

    invoke-static {v5}, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->append(I)Z

    goto :goto_1

    :cond_4
    invoke-static {}, Lcom/ime/framework/repository/EditorStatus;->isAutoCompletitionInput()Z

    move-result v3

    iget-object v5, p0, Lcom/ime/framework/input/SwiftkeyQwertyJapaneseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/ime/framework/common/InputManager;->isOrientationLandscape()Z

    move-result v4

    iget-object v5, p0, Lcom/ime/framework/input/SwiftkeyQwertyJapaneseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/ime/framework/common/InputManager;->getCompletions()[Landroid/view/inputmethod/CompletionInfo;

    move-result-object v1

    if-eqz v3, :cond_6

    if-eqz v4, :cond_6

    if-eqz v1, :cond_6

    if-eqz v2, :cond_5

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x1

    invoke-interface {v2, v5, v6}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    :cond_5
    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->clear()V

    goto :goto_0

    :cond_6
    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/ime/framework/input/SwiftkeyQwertyJapaneseInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/ime/framework/input/SwiftkeyQwertyJapaneseInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v5}, Lcom/ime/framework/engine/InputEngineManager;->clearContext()I

    goto/16 :goto_0
.end method

.method private processWordSeparator(I[I)V
    .locals 12

    iget-object v7, p0, Lcom/ime/framework/input/SwiftkeyQwertyJapaneseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyQwertyJapaneseInputModule;->clearCandidateList()V

    const/16 v7, 0xa

    if-eq p1, v7, :cond_2

    const/16 v7, 0x20

    if-ne p1, v7, :cond_3

    :cond_2
    iget-object v7, p0, Lcom/ime/framework/input/SwiftkeyQwertyJapaneseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    const/4 v8, 0x0

    invoke-interface {v7, v8}, Lcom/ime/framework/common/InputManager;->doRecaptureWord(Z)V

    :cond_3
    const/4 v1, 0x1

    iget-object v7, p0, Lcom/ime/framework/input/SwiftkeyQwertyJapaneseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/ime/framework/common/InputManager;->isFocusOnCandidateView()Z

    move-result v7

    if-nez v7, :cond_4

    const/16 v7, 0x20

    if-ne p1, v7, :cond_6

    :cond_4
    iget-object v7, p0, Lcom/ime/framework/input/SwiftkeyQwertyJapaneseInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    iget-object v8, p0, Lcom/ime/framework/input/SwiftkeyQwertyJapaneseInputModule;->mCandidates:Ljava/util/ArrayList;

    const/4 v9, 0x1

    invoke-interface {v7, v8, v9}, Lcom/ime/framework/engine/InputEngineManager;->getSuggestion(Ljava/util/ArrayList;Z)I

    :goto_1
    const/4 v7, 0x1

    new-array v0, v7, [I

    iget-object v7, p0, Lcom/ime/framework/input/SwiftkeyQwertyJapaneseInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v7, v0}, Lcom/ime/framework/engine/InputEngineManager;->getActiveIndex([I)I

    const/16 v7, 0xa

    if-ne p1, v7, :cond_7

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v7

    if-eqz v7, :cond_7

    const/4 v1, 0x0

    :cond_5
    :goto_2
    const/16 v7, 0xa

    if-ne p1, v7, :cond_11

    if-eqz v1, :cond_a

    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyQwertyJapaneseInputModule;->sendEnterKeyHandle()V

    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lcom/ime/framework/input/SwiftkeyQwertyJapaneseInputModule;->postUpdateSequenceAndSuggestionDelay(I)V

    goto :goto_0

    :cond_6
    iget-object v7, p0, Lcom/ime/framework/input/SwiftkeyQwertyJapaneseInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    iget-object v8, p0, Lcom/ime/framework/input/SwiftkeyQwertyJapaneseInputModule;->mCandidates:Ljava/util/ArrayList;

    const/4 v9, 0x0

    invoke-interface {v7, v8, v9}, Lcom/ime/framework/engine/InputEngineManager;->getSuggestion(Ljava/util/ArrayList;Z)I

    goto :goto_1

    :cond_7
    const/16 v7, 0x20

    if-ne p1, v7, :cond_9

    iget-object v7, p0, Lcom/ime/framework/input/SwiftkeyQwertyJapaneseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/ime/framework/common/InputManager;->isFocusOnCandidateView()Z

    move-result v7

    if-eqz v7, :cond_8

    iget-object v7, p0, Lcom/ime/framework/input/SwiftkeyQwertyJapaneseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/ime/framework/common/InputManager;->getInputController()Lcom/ime/framework/input/InputController;

    move-result-object v7

    const/16 v8, -0x3ea

    const/4 v9, 0x1

    new-array v9, v9, [I

    const/4 v10, 0x0

    const/16 v11, -0x3ea

    aput v11, v9, v10

    invoke-interface {v7, v8, v9}, Lcom/ime/framework/input/InputController;->onKey(I[I)V

    goto :goto_0

    :cond_8
    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->OnBlockPrediction()Z

    move-result v7

    if-nez v7, :cond_5

    iget-object v7, p0, Lcom/ime/framework/input/SwiftkeyQwertyJapaneseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/ime/framework/common/InputManager;->getCandidates()Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v7, p0, Lcom/ime/framework/input/SwiftkeyQwertyJapaneseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    const/4 v8, 0x1

    invoke-interface {v7, v8}, Lcom/ime/framework/common/InputManager;->setFocusOnCandidateView(Z)V

    iget-object v7, p0, Lcom/ime/framework/input/SwiftkeyQwertyJapaneseInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    const/4 v8, 0x0

    invoke-interface {v7, v8}, Lcom/ime/framework/engine/InputEngineManager;->setSuggestionActiveIndex(I)V

    iget-object v7, p0, Lcom/ime/framework/input/SwiftkeyQwertyJapaneseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v7, v2}, Lcom/ime/framework/common/InputManager;->setCandidates(Ljava/util/ArrayList;)V

    goto/16 :goto_0

    :cond_9
    iget-object v7, p0, Lcom/ime/framework/input/SwiftkeyQwertyJapaneseInputModule;->mCandidates:Ljava/util/ArrayList;

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/ime/framework/input/SwiftkeyQwertyJapaneseInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_5

    iget-object v7, p0, Lcom/ime/framework/input/SwiftkeyQwertyJapaneseInputModule;->mCandidates:Ljava/util/ArrayList;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/ime/framework/input/SwiftkeyQwertyJapaneseInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    const/4 v8, -0x1

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Lcom/ime/framework/engine/InputEngineManager;->wordSelected(ILjava/lang/CharSequence;)I

    const/4 v7, 0x1

    invoke-virtual {p0, v7}, Lcom/ime/framework/input/SwiftkeyQwertyJapaneseInputModule;->finishComposing(Z)V

    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyQwertyJapaneseInputModule;->initComposingBuffer()V

    goto/16 :goto_2

    :cond_a
    invoke-static {}, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->OnBlockPrediction()Z

    move-result v7

    if-eqz v7, :cond_d

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->getBlockText()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_b

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-gez v7, :cond_c

    :cond_b
    const/4 v7, 0x1

    invoke-virtual {p0, v7}, Lcom/ime/framework/input/SwiftkeyQwertyJapaneseInputModule;->finishComposing(Z)V

    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyQwertyJapaneseInputModule;->initComposingBuffer()V

    :goto_3
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lcom/ime/framework/input/SwiftkeyQwertyJapaneseInputModule;->updateSequence(Ljava/lang/StringBuilder;)V

    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyQwertyJapaneseInputModule;->updateSuggestionDelay()V

    goto/16 :goto_0

    :cond_c
    invoke-virtual {p0, v6}, Lcom/ime/framework/input/SwiftkeyQwertyJapaneseInputModule;->commitText(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->deleteBlockText()V

    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyQwertyJapaneseInputModule;->setComposingText()V

    goto :goto_3

    :cond_d
    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v7

    if-eqz v7, :cond_f

    iget-object v7, p0, Lcom/ime/framework/input/SwiftkeyQwertyJapaneseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/ime/framework/common/InputManager;->isFocusOnCandidateView()Z

    move-result v7

    if-eqz v7, :cond_10

    iget-object v7, p0, Lcom/ime/framework/input/SwiftkeyQwertyJapaneseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/ime/framework/common/InputManager;->getCandidates()Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_f

    iget-object v7, p0, Lcom/ime/framework/input/SwiftkeyQwertyJapaneseInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v7}, Lcom/ime/framework/engine/InputEngineManager;->getSuggestionActiveIndex()I

    move-result v4

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v4, v7, :cond_e

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/CharSequence;

    const/4 v8, 0x1

    invoke-interface {v3, v7, v8}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    :cond_e
    iget-object v7, p0, Lcom/ime/framework/input/SwiftkeyQwertyJapaneseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    const/4 v8, 0x0

    invoke-interface {v7, v8}, Lcom/ime/framework/common/InputManager;->setFocusOnCandidateView(Z)V

    :cond_f
    :goto_4
    const/4 v7, 0x1

    invoke-virtual {p0, v7}, Lcom/ime/framework/input/SwiftkeyQwertyJapaneseInputModule;->finishComposing(Z)V

    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyQwertyJapaneseInputModule;->initComposingBuffer()V

    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lcom/ime/framework/input/SwiftkeyQwertyJapaneseInputModule;->postUpdateSequenceAndSuggestionDelay(I)V

    goto/16 :goto_0

    :cond_10
    const/4 v7, 0x1

    invoke-static {v7}, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->toString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-interface {v3, v7, v8}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    goto :goto_4

    :cond_11
    iget-object v7, p0, Lcom/ime/framework/input/SwiftkeyQwertyJapaneseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/ime/framework/common/InputManager;->isInMultiTapInput()Z

    move-result v5

    if-eqz v5, :cond_12

    invoke-virtual {p0, p1, p2}, Lcom/ime/framework/input/SwiftkeyQwertyJapaneseInputModule;->processMultiTapSymbolicKey(I[I)V

    goto/16 :goto_0

    :cond_12
    const/4 v7, 0x1

    invoke-virtual {p0, v7}, Lcom/ime/framework/input/SwiftkeyQwertyJapaneseInputModule;->finishComposing(Z)V

    int-to-char v7, p1

    invoke-static {v7}, Lcom/ime/framework/input/ComposingTextManager;->replace(C)V

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/ime/framework/input/SwiftkeyQwertyJapaneseInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lcom/ime/framework/input/SwiftkeyQwertyJapaneseInputModule;->postUpdateSequenceAndSuggestionDelay(I)V

    iget-object v7, p0, Lcom/ime/framework/input/SwiftkeyQwertyJapaneseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    const/4 v8, 0x0

    invoke-interface {v7, v8}, Lcom/ime/framework/common/InputManager;->setFocusOnCandidateView(Z)V

    goto/16 :goto_0
.end method

.method private setVerbatirmsInPrediction()V
    .locals 6

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->getVerbatimForBlock()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    iget-object v4, p0, Lcom/ime/framework/input/SwiftkeyQwertyJapaneseInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Lcom/ime/framework/engine/InputEngineManager;->setVerbatirmsInPrediction(Ljava/util/ArrayList;)V

    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->getBlockText()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/ime/framework/input/SwiftkeyQwertyJapaneseInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v4, v0}, Lcom/ime/framework/engine/InputEngineManager;->hiraganaToKatakana(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/ime/framework/input/SwiftkeyQwertyJapaneseInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v4, v1}, Lcom/ime/framework/engine/InputEngineManager;->fullToHalfWidth(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/ime/framework/input/SwiftkeyQwertyJapaneseInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v4, v2}, Lcom/ime/framework/engine/InputEngineManager;->halfToFullWidth(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/ime/framework/input/SwiftkeyQwertyJapaneseInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v4, v3}, Lcom/ime/framework/engine/InputEngineManager;->setVerbatirmsInPrediction(Ljava/util/ArrayList;)V

    goto :goto_0
.end method


# virtual methods
.method protected addCurrentTextToCandidate(Ljava/util/ArrayList;Ljava/lang/StringBuilder;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;",
            "Ljava/lang/StringBuilder;",
            ")V"
        }
    .end annotation

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ime/framework/input/SwiftkeyQwertyJapaneseInputModule;->setIndexOfInputBuffer(I)V

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_3
    const/4 v1, 0x0

    invoke-virtual {p1, v1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public closing()V
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/input/SwiftkeyQwertyJapaneseInputModule;->mMultitap:Lcom/ime/framework/input/InputModule$Timer;

    invoke-virtual {p0, v0}, Lcom/ime/framework/input/SwiftkeyQwertyJapaneseInputModule;->stopTimer(Lcom/ime/framework/input/InputModule$Timer;)V

    iget-object v0, p0, Lcom/ime/framework/input/SwiftkeyQwertyJapaneseInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v0}, Lcom/ime/framework/engine/InputEngineManager;->clearContext()I

    invoke-super {p0}, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->closing()V

    return-void
.end method

.method public endMultitapTimer()V
    .locals 2

    iget-object v0, p0, Lcom/ime/framework/input/SwiftkeyQwertyJapaneseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->getSelectedNumOfText()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ime/framework/input/SwiftkeyQwertyJapaneseInputModule;->finishComposing(Z)V

    :cond_0
    iget-object v0, p0, Lcom/ime/framework/input/SwiftkeyQwertyJapaneseInputModule;->mMultitap:Lcom/ime/framework/input/InputModule$Timer;

    invoke-virtual {v0}, Lcom/ime/framework/input/InputModule$Timer;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/ime/framework/input/SwiftkeyQwertyJapaneseInputModule;->mMultitap:Lcom/ime/framework/input/InputModule$Timer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ime/framework/input/InputModule$Timer;->setRunning(Z)V

    iget-object v0, p0, Lcom/ime/framework/input/SwiftkeyQwertyJapaneseInputModule;->mTimmerHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/ime/framework/input/SwiftkeyQwertyJapaneseInputModule;->mMultitap:Lcom/ime/framework/input/InputModule$Timer;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/ime/framework/input/SwiftkeyQwertyJapaneseInputModule;->mLastKeyCode:I

    goto :goto_0
.end method

.method public onCharacterKey(I[I)V
    .locals 7

    const/4 v6, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    iget-object v5, p0, Lcom/ime/framework/input/SwiftkeyQwertyJapaneseInputModule;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v5}, Lcom/ime/framework/inputmode/InputModeManager;->getInputRange()I

    move-result v0

    invoke-virtual {p0, v3}, Lcom/ime/framework/input/SwiftkeyQwertyJapaneseInputModule;->setPredictionWord(Z)V

    iget-object v5, p0, Lcom/ime/framework/input/SwiftkeyQwertyJapaneseInputModule;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v5}, Lcom/ime/framework/inputmode/InputModeManager;->getInputRange()I

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {p0, p1}, Lcom/ime/framework/input/SwiftkeyQwertyJapaneseInputModule;->getSecondaryChar(I)I

    move-result p1

    :cond_0
    iget-boolean v5, p0, Lcom/ime/framework/input/SwiftkeyQwertyJapaneseInputModule;->mIsTraceOn:Z

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/ime/framework/input/SwiftkeyQwertyJapaneseInputModule;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/ime/framework/input/SwiftkeyQwertyJapaneseInputModule;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v5}, Lcom/ime/framework/trace/KeyboardTrace;->getTracePointCount()I

    move-result v5

    if-le v5, v6, :cond_3

    iget-object v5, p0, Lcom/ime/framework/input/SwiftkeyQwertyJapaneseInputModule;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v5}, Lcom/ime/framework/trace/KeyboardTrace;->isSymbolAndSpace()Z

    move-result v5

    if-nez v5, :cond_3

    move v1, v3

    :goto_0
    iget-object v5, p0, Lcom/ime/framework/input/SwiftkeyQwertyJapaneseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/ime/framework/common/InputManager;->isEnableTraceInPassword()Z

    move-result v5

    if-eqz v5, :cond_4

    iget-boolean v5, p0, Lcom/ime/framework/input/SwiftkeyQwertyJapaneseInputModule;->mIsTraceOn:Z

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/ime/framework/input/SwiftkeyQwertyJapaneseInputModule;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/ime/framework/input/SwiftkeyQwertyJapaneseInputModule;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v5}, Lcom/ime/framework/trace/KeyboardTrace;->getTracePointCount()I

    move-result v5

    if-le v5, v6, :cond_4

    move v2, v3

    :goto_1
    iget-object v3, p0, Lcom/ime/framework/input/SwiftkeyQwertyJapaneseInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v3, p1}, Lcom/ime/framework/engine/InputEngineManager;->isTextCharacter(I)Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz v0, :cond_2

    :cond_1
    if-eqz v2, :cond_5

    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/ime/framework/input/SwiftkeyQwertyJapaneseInputModule;->processSingleTap(I[I)V

    :goto_2
    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyQwertyJapaneseInputModule;->setVerbatimToEngine()V

    iput p1, p0, Lcom/ime/framework/input/SwiftkeyQwertyJapaneseInputModule;->mLastKeyCode:I

    return-void

    :cond_3
    move v1, v4

    goto :goto_0

    :cond_4
    move v2, v4

    goto :goto_1

    :cond_5
    iget-object v3, p0, Lcom/ime/framework/input/SwiftkeyQwertyJapaneseInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v3, p1}, Lcom/ime/framework/engine/InputEngineManager;->isNumericCharacter(I)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-direct {p0, p1, p2}, Lcom/ime/framework/input/SwiftkeyQwertyJapaneseInputModule;->processSingleTap(I[I)V

    :goto_3
    invoke-virtual {p0, p1}, Lcom/ime/framework/input/SwiftkeyQwertyJapaneseInputModule;->autoPeriod(I)V

    goto :goto_2

    :cond_6
    invoke-virtual {p0, p1, p2}, Lcom/ime/framework/input/SwiftkeyQwertyJapaneseInputModule;->processSymbolicKey(I[I)V

    goto :goto_3
.end method

.method public onHwrPanelLongPressed(ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public pickSuggestionManually(ILjava/lang/CharSequence;)V
    .locals 17

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ime/framework/input/SwiftkeyQwertyJapaneseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v15}, Lcom/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v8

    if-eqz v8, :cond_0

    invoke-static {}, Lcom/ime/framework/repository/EditorStatus;->isAutoCompletitionInput()Z

    move-result v9

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ime/framework/input/SwiftkeyQwertyJapaneseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v15}, Lcom/ime/framework/common/InputManager;->isOrientationLandscape()Z

    move-result v10

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ime/framework/input/SwiftkeyQwertyJapaneseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v15}, Lcom/ime/framework/common/InputManager;->getCompletions()[Landroid/view/inputmethod/CompletionInfo;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ime/framework/input/SwiftkeyQwertyJapaneseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    const/16 v16, 0x0

    invoke-interface/range {v15 .. v16}, Lcom/ime/framework/common/InputManager;->setFocusOnCandidateView(Z)V

    if-eqz v9, :cond_2

    if-eqz v10, :cond_2

    if-eqz v5, :cond_2

    if-ltz p1, :cond_0

    array-length v15, v5

    move/from16 v0, p1

    if-ge v0, v15, :cond_0

    aget-object v4, v5, p1

    invoke-interface {v8, v4}, Landroid/view/inputmethod/InputConnection;->commitCompletion(Landroid/view/inputmethod/CompletionInfo;)Z

    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ime/framework/input/SwiftkeyQwertyJapaneseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    const/16 v16, 0x0

    invoke-interface/range {v15 .. v16}, Lcom/ime/framework/common/InputManager;->getKeyboardKeyList(Z)Ljava/util/List;

    move-result-object v13

    if-eqz v13, :cond_10

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_10

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/ime/framework/view/Keyboard$Key;

    iget-object v15, v12, Lcom/ime/framework/view/Keyboard$Key;->codes:[I

    const/16 v16, 0x0

    aget v15, v15, v16

    const/16 v16, 0xa

    move/from16 v0, v16

    if-ne v15, v0, :cond_1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ime/framework/input/SwiftkeyQwertyJapaneseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    const/16 v16, 0x0

    invoke-interface/range {v15 .. v16}, Lcom/ime/framework/common/InputManager;->getInputView(Z)Landroid/view/View;

    move-result-object v15

    check-cast v15, Lcom/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v15, v12}, Lcom/ime/framework/view/AbstractKeyboardView;->invalidateKey(Lcom/ime/framework/view/Keyboard$Key;)V

    goto :goto_1

    :cond_2
    invoke-interface {v8}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ime/framework/input/SwiftkeyQwertyJapaneseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v15}, Lcom/ime/framework/common/InputManager;->getCandidateviewStatus()I

    move-result v2

    const/4 v11, 0x0

    const/4 v6, 0x0

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_7

    move-object/from16 v0, p0

    iget v15, v0, Lcom/ime/framework/input/SwiftkeyQwertyJapaneseInputModule;->mStateCandidate:I

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_7

    if-nez v2, :cond_7

    move-object/from16 v0, p0

    iget v15, v0, Lcom/ime/framework/input/SwiftkeyQwertyJapaneseInputModule;->mPosPrevText:I

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-interface {v8, v15, v0}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_6

    const v15, 0xfffc

    invoke-virtual {v3, v15}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v14

    :goto_2
    const/4 v15, -0x1

    if-eq v14, v15, :cond_3

    move-object/from16 v0, p0

    iget v15, v0, Lcom/ime/framework/input/SwiftkeyQwertyJapaneseInputModule;->mPosPrevText:I

    add-int/lit8 v16, v14, 0x1

    sub-int v15, v15, v16

    move-object/from16 v0, p0

    iput v15, v0, Lcom/ime/framework/input/SwiftkeyQwertyJapaneseInputModule;->mPosPrevText:I

    :cond_3
    move-object/from16 v0, p0

    iget v15, v0, Lcom/ime/framework/input/SwiftkeyQwertyJapaneseInputModule;->mPosPrevText:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ime/framework/input/SwiftkeyQwertyJapaneseInputModule;->mPosNextText:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-interface {v8, v15, v0}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    move-object/from16 v0, p0

    iget v6, v0, Lcom/ime/framework/input/SwiftkeyQwertyJapaneseInputModule;->mPosPrevText:I

    :cond_4
    :goto_3
    if-eqz p2, :cond_5

    invoke-interface/range {p2 .. p2}, Ljava/lang/CharSequence;->length()I

    move-result v15

    if-eq v6, v15, :cond_5

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->length()I

    move-result v15

    invoke-interface/range {p2 .. p2}, Ljava/lang/CharSequence;->length()I

    move-result v16

    move/from16 v0, v16

    if-eq v15, v0, :cond_5

    const/4 v15, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/ime/framework/input/SwiftkeyQwertyJapaneseInputModule;->setPredictionWord(Z)V

    :cond_5
    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->clear()V

    invoke-static/range {p2 .. p2}, Lcom/ime/framework/input/ComposingTextManager;->append(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/ime/framework/input/SwiftkeyQwertyJapaneseInputModule;->replaceSpaceToSymbol(Ljava/lang/StringBuilder;)V

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/input/SwiftkeyQwertyJapaneseInputModule;->setComposingText()V

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->OnBlockPrediction()Z

    move-result v15

    if-eqz v15, :cond_8

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v15

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-interface {v8, v15, v0}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->deleteBlockText()V

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/ime/framework/input/SwiftkeyQwertyJapaneseInputModule;->updateSequence(Ljava/lang/StringBuilder;)V

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/input/SwiftkeyQwertyJapaneseInputModule;->updateSuggestionDelay()V

    :goto_4
    invoke-interface {v8}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput v15, v0, Lcom/ime/framework/input/SwiftkeyQwertyJapaneseInputModule;->mPosPrevText:I

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput v15, v0, Lcom/ime/framework/input/SwiftkeyQwertyJapaneseInputModule;->mPosNextText:I

    goto/16 :goto_0

    :cond_6
    const/4 v14, -0x1

    goto :goto_2

    :cond_7
    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_4

    move-object/from16 v0, p0

    iget v15, v0, Lcom/ime/framework/input/SwiftkeyQwertyJapaneseInputModule;->mStateCandidate:I

    const/16 v16, 0x2

    move/from16 v0, v16

    if-ne v15, v0, :cond_4

    if-nez v2, :cond_4

    const/4 v11, 0x1

    goto :goto_3

    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/input/SwiftkeyQwertyJapaneseInputModule;->isEnableAutoCorrection()Z

    move-result v15

    if-eqz v15, :cond_f

    if-nez v11, :cond_f

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/input/SwiftkeyQwertyJapaneseInputModule;->getIndexOfInputBuffer()I

    move-result v15

    const/16 v16, -0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_b

    const/4 v15, 0x1

    move/from16 v0, p1

    if-eq v0, v15, :cond_a

    const/4 v15, 0x1

    move/from16 v0, p1

    if-le v0, v15, :cond_9

    add-int/lit8 p1, p1, -0x1

    :cond_9
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ime/framework/input/SwiftkeyQwertyJapaneseInputModule;->mPickSuggestionIndex:I

    invoke-virtual/range {p0 .. p1}, Lcom/ime/framework/input/SwiftkeyQwertyJapaneseInputModule;->selectWordInList(I)V

    :cond_a
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/input/SwiftkeyQwertyJapaneseInputModule;->clearCandidateList()V

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/ime/framework/input/SwiftkeyQwertyJapaneseInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    invoke-direct/range {p0 .. p0}, Lcom/ime/framework/input/SwiftkeyQwertyJapaneseInputModule;->setVerbatirmsInPrediction()V

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/ime/framework/input/SwiftkeyQwertyJapaneseInputModule;->doNextWordPrediction(Z)V

    goto :goto_4

    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/input/SwiftkeyQwertyJapaneseInputModule;->getIndexOfInputBuffer()I

    move-result v15

    if-lez v15, :cond_e

    const/4 v15, 0x1

    move/from16 v0, p1

    if-ne v0, v15, :cond_d

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/input/SwiftkeyQwertyJapaneseInputModule;->getIndexOfInputBuffer()I

    move-result p1

    :cond_c
    :goto_6
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ime/framework/input/SwiftkeyQwertyJapaneseInputModule;->mPickSuggestionIndex:I

    invoke-virtual/range {p0 .. p1}, Lcom/ime/framework/input/SwiftkeyQwertyJapaneseInputModule;->selectWordInList(I)V

    goto :goto_5

    :cond_d
    const/4 v15, 0x1

    move/from16 v0, p1

    if-le v0, v15, :cond_c

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/input/SwiftkeyQwertyJapaneseInputModule;->getIndexOfInputBuffer()I

    move-result v15

    move/from16 v0, p1

    if-gt v0, v15, :cond_c

    add-int/lit8 p1, p1, -0x1

    goto :goto_6

    :cond_e
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ime/framework/input/SwiftkeyQwertyJapaneseInputModule;->mPickSuggestionIndex:I

    invoke-virtual/range {p0 .. p1}, Lcom/ime/framework/input/SwiftkeyQwertyJapaneseInputModule;->selectWordInList(I)V

    goto :goto_5

    :cond_f
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ime/framework/input/SwiftkeyQwertyJapaneseInputModule;->mPickSuggestionIndex:I

    invoke-virtual/range {p0 .. p1}, Lcom/ime/framework/input/SwiftkeyQwertyJapaneseInputModule;->selectWordInList(I)V

    goto :goto_5

    :cond_10
    return-void
.end method

.method protected processSymbolicKey(I[I)V
    .locals 5

    const/4 v4, 0x0

    invoke-static {}, Lcom/ime/framework/common/SymbolCountManagerImpl;->getInstance()Lcom/ime/framework/common/SymbolCountManager;

    move-result-object v1

    iget-object v2, p0, Lcom/ime/framework/input/SwiftkeyQwertyJapaneseInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v2}, Lcom/ime/framework/engine/InputEngineManager;->cancelTrace()Z

    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyQwertyJapaneseInputModule;->clearCandidateList()V

    iget-object v2, p0, Lcom/ime/framework/input/SwiftkeyQwertyJapaneseInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    iget-object v3, p0, Lcom/ime/framework/input/SwiftkeyQwertyJapaneseInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v2, v3, v4}, Lcom/ime/framework/engine/InputEngineManager;->getSuggestion(Ljava/util/ArrayList;Z)I

    const-string v2, " .,;:!?\n()[]*&@{}/<>_-+=|\'\u061b\u060c\u061f\""

    invoke-virtual {v2, p1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/ime/framework/input/SwiftkeyQwertyJapaneseInputModule;->processWordSeparator(I[I)V

    :goto_0
    return-void

    :cond_0
    const/16 v2, 0xa

    if-eq p1, v2, :cond_1

    const/16 v2, 0x20

    if-ne p1, v2, :cond_2

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/ime/framework/input/SwiftkeyQwertyJapaneseInputModule;->processWordSeparator(I[I)V

    goto :goto_0

    :cond_2
    const/4 v2, -0x5

    if-ne p1, v2, :cond_4

    iget-object v2, p0, Lcom/ime/framework/input/SwiftkeyQwertyJapaneseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/ime/framework/common/InputManager;->getShiftStateController()Lcom/ime/framework/common/ShiftStateController;

    move-result-object v2

    invoke-interface {v2}, Lcom/ime/framework/common/ShiftStateController;->getShiftPressedState()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-direct {p0}, Lcom/ime/framework/input/SwiftkeyQwertyJapaneseInputModule;->processForwardDelete()V

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/ime/framework/input/SwiftkeyQwertyJapaneseInputModule;->processBackSpaceKey()V

    goto :goto_0

    :cond_4
    const/16 v2, -0x3eb

    if-ne p1, v2, :cond_5

    invoke-direct {p0}, Lcom/ime/framework/input/SwiftkeyQwertyJapaneseInputModule;->processForwardDelete()V

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/ime/framework/input/SwiftkeyQwertyJapaneseInputModule;->mCandidates:Ljava/util/ArrayList;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/ime/framework/input/SwiftkeyQwertyJapaneseInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_6

    iget-object v2, p0, Lcom/ime/framework/input/SwiftkeyQwertyJapaneseInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyQwertyJapaneseInputModule;->updateSuggestionDelay()V

    :cond_6
    iget-object v2, p0, Lcom/ime/framework/input/SwiftkeyQwertyJapaneseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/ime/framework/common/InputManager;->isInMultiTapInput()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {p1}, Lcom/ime/framework/util/Utils;->isZawgyiChar(I)Z

    move-result v2

    if-nez v2, :cond_7

    invoke-virtual {p0, p1, p2}, Lcom/ime/framework/input/SwiftkeyQwertyJapaneseInputModule;->processMultiTapSymbolicKey(I[I)V

    goto :goto_0

    :cond_7
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/ime/framework/input/SwiftkeyQwertyJapaneseInputModule;->finishComposing(Z)V

    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyQwertyJapaneseInputModule;->initComposingBuffer()V

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->clear()V

    int-to-char v2, p1

    invoke-static {v2}, Lcom/ime/framework/input/ComposingTextManager;->append(C)V

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/ime/framework/input/SwiftkeyQwertyJapaneseInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/ime/framework/input/SwiftkeyQwertyJapaneseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2, v4}, Lcom/ime/framework/common/InputManager;->setIsPendingUpdateCandidateView(Z)V

    invoke-virtual {p0, v4}, Lcom/ime/framework/input/SwiftkeyQwertyJapaneseInputModule;->postUpdateSequenceAndSuggestionDelay(I)V

    goto :goto_0
.end method

.method public release()V
    .locals 0

    return-void
.end method

.method public updateSuggestion()V
    .locals 2

    iget-object v0, p0, Lcom/ime/framework/input/SwiftkeyQwertyJapaneseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->isDeviceHasHardwareKeypad()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/input/SwiftkeyQwertyJapaneseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->isHWKeyboardOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/ime/framework/input/SwiftkeyQwertyJapaneseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->updateViewStatus()V

    invoke-direct {p0}, Lcom/ime/framework/input/SwiftkeyQwertyJapaneseInputModule;->setVerbatirmsInPrediction()V

    iget-object v0, p0, Lcom/ime/framework/input/SwiftkeyQwertyJapaneseInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/ime/framework/input/SwiftkeyQwertyJapaneseInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    iget-object v1, p0, Lcom/ime/framework/input/SwiftkeyQwertyJapaneseInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Lcom/ime/framework/engine/InputEngineManager;->getSuggestion(Ljava/util/ArrayList;)I

    iget-object v0, p0, Lcom/ime/framework/input/SwiftkeyQwertyJapaneseInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/ime/framework/input/SwiftkeyQwertyJapaneseInputModule;->AddVerbatimForRecapture(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/ime/framework/input/SwiftkeyQwertyJapaneseInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/ime/framework/input/SwiftkeyQwertyJapaneseInputModule;->mIsPredictionOn:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ime/framework/input/SwiftkeyQwertyJapaneseInputModule;->mCandidates:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/ime/framework/input/SwiftkeyQwertyJapaneseInputModule;->mCurrentSequenceString:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v0, p0, Lcom/ime/framework/input/SwiftkeyQwertyJapaneseInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/ime/framework/engine/InputEngineManager;->setSuggestionActiveIndex(I)V

    iget-object v0, p0, Lcom/ime/framework/input/SwiftkeyQwertyJapaneseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    iget-object v1, p0, Lcom/ime/framework/input/SwiftkeyQwertyJapaneseInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Lcom/ime/framework/common/InputManager;->setCandidates(Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method public updateSuggestionDelay()V
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/input/SwiftkeyQwertyJapaneseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->updateViewStatus()V

    invoke-super {p0}, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->updateSuggestionDelay()V

    return-void
.end method

.method public updateVOHWRSuggestion()V
    .locals 0

    return-void
.end method
