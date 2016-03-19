.class public Lcom/ime/framework/input/xt9/Xt9QwertyJapaneseInputModule;
.super Lcom/ime/framework/input/xt9/AbstractXt9InputModule;
.source "Xt9QwertyJapaneseInputModule.java"


# static fields
.field private static final CHAR_SMALL:Ljava/lang/String; = "\u3041\u3043\u3045\u3047\u3049\u3063\u3083\u3085\u3087\u308e\u3095\u3096"

.field private static final MAX_LENGTH:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;-><init>()V

    return-void
.end method

.method private convertRomajiToHiragana()Z
    .locals 21

    const/16 v16, 0x1

    invoke-static/range {v16 .. v16}, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->getCursor(I)I

    move-result v6

    if-gtz v6, :cond_0

    const/16 v16, 0x0

    :goto_0
    return v16

    :cond_0
    const/16 v16, 0x4

    move/from16 v0, v16

    new-array v13, v0, [Lcom/ime/framework/input/StrSegment;

    const/4 v12, 0x4

    const/16 v16, 0x4

    move/from16 v0, v16

    invoke-static {v6, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    const/4 v8, 0x1

    :goto_1
    if-gt v8, v3, :cond_1

    rsub-int/lit8 v16, v8, 0x4

    const/16 v17, 0x1

    sub-int v18, v6, v8

    invoke-static/range {v17 .. v18}, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->getStrSegment(II)Lcom/ime/framework/input/StrSegment;

    move-result-object v17

    aput-object v17, v13, v16

    rsub-int/lit8 v16, v8, 0x4

    aget-object v16, v13, v16

    move-object/from16 v0, v16

    iget-object v14, v0, Lcom/ime/framework/input/StrSegment;->string:Ljava/lang/String;

    add-int/lit8 v12, v12, -0x1

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_1
    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    :goto_2
    const/16 v16, 0x4

    move/from16 v0, v16

    if-ge v12, v0, :cond_13

    const/4 v4, 0x0

    move v8, v12

    :goto_3
    const/16 v16, 0x4

    move/from16 v0, v16

    if-ge v8, v0, :cond_2

    aget-object v16, v13, v8

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/ime/framework/input/StrSegment;->string:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_2
    rsub-int/lit8 v16, v12, 0x4

    sub-int v16, v6, v16

    add-int/lit8 v17, v6, -0x1

    invoke-static/range {v16 .. v17}, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->getVerbatim(II)Ljava/lang/String;

    move-result-object v15

    if-nez v15, :cond_3

    const/16 v16, 0x0

    goto :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/xt9/Xt9QwertyJapaneseInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-interface {v0, v15}, Lcom/ime/framework/engine/InputEngineManager;->romajiToHiragana(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v10, 0x0

    if-nez v4, :cond_4

    const/16 v16, 0x0

    goto :goto_0

    :cond_4
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v16

    if-nez v16, :cond_5

    move-object v4, v15

    :cond_5
    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v14

    const/4 v5, 0x0

    const-string v16, "\u3041\u3043\u3045\u3047\u3049\u3063\u3083\u3085\u3087\u308e\u3095\u3096"

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/String;->charAt(I)C

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->indexOf(I)I

    move-result v16

    const/16 v17, -0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_6

    add-int/lit8 v12, v12, 0x1

    const/16 v16, 0x0

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->length()I

    move-result v17

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_6
    const/4 v8, 0x1

    :goto_4
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v16

    move/from16 v0, v16

    if-gt v8, v0, :cond_9

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v16

    move/from16 v0, v16

    if-gt v8, v0, :cond_9

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v14, v0, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v4, v0, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_8

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v16

    move/from16 v0, v16

    if-ne v0, v8, :cond_7

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v16

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v17

    move/from16 v0, v16

    move/from16 v1, v17

    if-le v0, v1, :cond_7

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v16

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v17

    sub-int v7, v16, v17

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v11, v0, [Lcom/ime/framework/input/StrSegment;

    const/16 v16, 0x0

    new-instance v17, Lcom/ime/framework/input/StrSegment;

    add-int v18, v12, v5

    aget-object v18, v13, v18

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/ime/framework/input/StrSegment;->string:Ljava/lang/String;

    move-object/from16 v18, v0

    add-int v19, v12, v5

    aget-object v19, v13, v19

    move-object/from16 v0, v19

    iget v0, v0, Lcom/ime/framework/input/StrSegment;->from:I

    move/from16 v19, v0

    add-int v20, v12, v5

    add-int/lit8 v20, v20, 0x1

    aget-object v20, v13, v20

    move-object/from16 v0, v20

    iget v0, v0, Lcom/ime/framework/input/StrSegment;->to:I

    move/from16 v20, v0

    invoke-direct/range {v17 .. v20}, Lcom/ime/framework/input/StrSegment;-><init>(Ljava/lang/String;II)V

    aput-object v17, v11, v16

    const/16 v16, 0x1

    add-int/lit8 v17, v7, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-static {v0, v11, v1}, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->replaceStrSegment(I[Lcom/ime/framework/input/StrSegment;I)V

    add-int/2addr v5, v7

    :cond_7
    add-int/lit8 v5, v5, 0x1

    :cond_8
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_4

    :cond_9
    if-lez v5, :cond_b

    :goto_5
    if-eqz v10, :cond_12

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v16

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_e

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v11, v0, [Lcom/ime/framework/input/StrSegment;

    const/16 v16, 0x0

    new-instance v17, Lcom/ime/framework/input/StrSegment;

    aget-object v18, v13, v12

    move-object/from16 v0, v18

    iget v0, v0, Lcom/ime/framework/input/StrSegment;->from:I

    move/from16 v18, v0

    const/16 v19, 0x3

    aget-object v19, v13, v19

    move-object/from16 v0, v19

    iget v0, v0, Lcom/ime/framework/input/StrSegment;->to:I

    move/from16 v19, v0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v10, v1, v2}, Lcom/ime/framework/input/StrSegment;-><init>(Ljava/lang/String;II)V

    aput-object v17, v11, v16

    const/16 v16, 0x1

    rsub-int/lit8 v17, v12, 0x4

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-static {v0, v11, v1}, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->replaceStrSegment(I[Lcom/ime/framework/input/StrSegment;I)V

    :cond_a
    :goto_6
    const/16 v16, 0x1

    goto/16 :goto_0

    :cond_b
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v16

    invoke-static/range {v16 .. v16}, Lcom/ime/framework/util/Utils;->isHiraganaKey(C)Z

    move-result v16

    if-eqz v16, :cond_c

    move-object v10, v4

    goto :goto_5

    :cond_c
    invoke-virtual {v14, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_d

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v16

    if-lez v16, :cond_d

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v16

    if-lez v16, :cond_d

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v16

    add-int/lit8 v16, v16, -0x1

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/String;->charAt(I)C

    move-result v16

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v17

    add-int/lit8 v17, v17, -0x1

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v17

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_d

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/String;->charAt(I)C

    move-result v16

    invoke-static/range {v16 .. v16}, Lcom/ime/framework/util/Utils;->isHiraganaKey(C)Z

    move-result v16

    if-eqz v16, :cond_d

    move-object v10, v14

    goto/16 :goto_5

    :cond_d
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_5

    :cond_e
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v16

    const/16 v17, 0x2

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_10

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v11, v0, [Lcom/ime/framework/input/StrSegment;

    const-string v16, "\u3041\u3043\u3045\u3047\u3049\u3063\u3083\u3085\u3087\u308e\u3095\u3096"

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/lang/String;->charAt(I)C

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->indexOf(I)I

    move-result v16

    const/16 v17, -0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_f

    const/16 v16, 0x0

    new-instance v17, Lcom/ime/framework/input/StrSegment;

    const/16 v18, 0x0

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v19

    add-int/lit8 v19, v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v10, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    aget-object v19, v13, v12

    move-object/from16 v0, v19

    iget v0, v0, Lcom/ime/framework/input/StrSegment;->from:I

    move/from16 v19, v0

    aget-object v20, v13, v12

    move-object/from16 v0, v20

    iget v0, v0, Lcom/ime/framework/input/StrSegment;->from:I

    move/from16 v20, v0

    invoke-direct/range {v17 .. v20}, Lcom/ime/framework/input/StrSegment;-><init>(Ljava/lang/String;II)V

    aput-object v17, v11, v16

    const/16 v16, 0x1

    new-instance v17, Lcom/ime/framework/input/StrSegment;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v18

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v18

    aget-object v19, v13, v12

    move-object/from16 v0, v19

    iget v0, v0, Lcom/ime/framework/input/StrSegment;->from:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, 0x1

    const/16 v20, 0x3

    aget-object v20, v13, v20

    move-object/from16 v0, v20

    iget v0, v0, Lcom/ime/framework/input/StrSegment;->to:I

    move/from16 v20, v0

    invoke-direct/range {v17 .. v20}, Lcom/ime/framework/input/StrSegment;-><init>(Ljava/lang/String;II)V

    aput-object v17, v11, v16

    :goto_7
    const/16 v16, 0x1

    rsub-int/lit8 v17, v12, 0x4

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-static {v0, v11, v1}, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->replaceStrSegment(I[Lcom/ime/framework/input/StrSegment;I)V

    goto/16 :goto_6

    :cond_f
    const/16 v16, 0x0

    new-instance v17, Lcom/ime/framework/input/StrSegment;

    const/16 v18, 0x0

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v19

    add-int/lit8 v19, v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v10, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    aget-object v19, v13, v12

    move-object/from16 v0, v19

    iget v0, v0, Lcom/ime/framework/input/StrSegment;->from:I

    move/from16 v19, v0

    const/16 v20, 0x3

    aget-object v20, v13, v20

    move-object/from16 v0, v20

    iget v0, v0, Lcom/ime/framework/input/StrSegment;->to:I

    move/from16 v20, v0

    add-int/lit8 v20, v20, -0x1

    invoke-direct/range {v17 .. v20}, Lcom/ime/framework/input/StrSegment;-><init>(Ljava/lang/String;II)V

    aput-object v17, v11, v16

    const/16 v16, 0x1

    new-instance v17, Lcom/ime/framework/input/StrSegment;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v18

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x3

    aget-object v19, v13, v19

    move-object/from16 v0, v19

    iget v0, v0, Lcom/ime/framework/input/StrSegment;->to:I

    move/from16 v19, v0

    const/16 v20, 0x3

    aget-object v20, v13, v20

    move-object/from16 v0, v20

    iget v0, v0, Lcom/ime/framework/input/StrSegment;->to:I

    move/from16 v20, v0

    invoke-direct/range {v17 .. v20}, Lcom/ime/framework/input/StrSegment;-><init>(Ljava/lang/String;II)V

    aput-object v17, v11, v16

    goto :goto_7

    :cond_10
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v16

    const/16 v17, 0x3

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_a

    const-string v16, "\u3041\u3043\u3045\u3047\u3049\u3063\u3083\u3085\u3087\u308e\u3095\u3096"

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/lang/String;->charAt(I)C

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->indexOf(I)I

    move-result v16

    const/16 v17, -0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_11

    const/16 v16, 0x3

    move/from16 v0, v16

    new-array v11, v0, [Lcom/ime/framework/input/StrSegment;

    const/16 v16, 0x0

    new-instance v17, Lcom/ime/framework/input/StrSegment;

    const/16 v18, 0x0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v10, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    aget-object v19, v13, v12

    move-object/from16 v0, v19

    iget v0, v0, Lcom/ime/framework/input/StrSegment;->from:I

    move/from16 v19, v0

    aget-object v20, v13, v12

    move-object/from16 v0, v20

    iget v0, v0, Lcom/ime/framework/input/StrSegment;->from:I

    move/from16 v20, v0

    invoke-direct/range {v17 .. v20}, Lcom/ime/framework/input/StrSegment;-><init>(Ljava/lang/String;II)V

    aput-object v17, v11, v16

    const/16 v16, 0x1

    new-instance v17, Lcom/ime/framework/input/StrSegment;

    const/16 v18, 0x1

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v19

    add-int/lit8 v19, v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v10, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    aget-object v19, v13, v12

    move-object/from16 v0, v19

    iget v0, v0, Lcom/ime/framework/input/StrSegment;->from:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, 0x1

    const/16 v20, 0x3

    aget-object v20, v13, v20

    move-object/from16 v0, v20

    iget v0, v0, Lcom/ime/framework/input/StrSegment;->to:I

    move/from16 v20, v0

    add-int/lit8 v20, v20, -0x1

    invoke-direct/range {v17 .. v20}, Lcom/ime/framework/input/StrSegment;-><init>(Ljava/lang/String;II)V

    aput-object v17, v11, v16

    const/16 v16, 0x2

    new-instance v17, Lcom/ime/framework/input/StrSegment;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v18

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x3

    aget-object v19, v13, v19

    move-object/from16 v0, v19

    iget v0, v0, Lcom/ime/framework/input/StrSegment;->to:I

    move/from16 v19, v0

    const/16 v20, 0x3

    aget-object v20, v13, v20

    move-object/from16 v0, v20

    iget v0, v0, Lcom/ime/framework/input/StrSegment;->to:I

    move/from16 v20, v0

    invoke-direct/range {v17 .. v20}, Lcom/ime/framework/input/StrSegment;-><init>(Ljava/lang/String;II)V

    aput-object v17, v11, v16

    :goto_8
    const/16 v16, 0x1

    rsub-int/lit8 v17, v12, 0x4

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-static {v0, v11, v1}, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->replaceStrSegment(I[Lcom/ime/framework/input/StrSegment;I)V

    goto/16 :goto_6

    :cond_11
    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v11, v0, [Lcom/ime/framework/input/StrSegment;

    const/16 v16, 0x0

    new-instance v17, Lcom/ime/framework/input/StrSegment;

    const/16 v18, 0x0

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v19

    add-int/lit8 v19, v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v10, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    aget-object v19, v13, v12

    move-object/from16 v0, v19

    iget v0, v0, Lcom/ime/framework/input/StrSegment;->from:I

    move/from16 v19, v0

    const/16 v20, 0x3

    aget-object v20, v13, v20

    move-object/from16 v0, v20

    iget v0, v0, Lcom/ime/framework/input/StrSegment;->to:I

    move/from16 v20, v0

    add-int/lit8 v20, v20, -0x1

    invoke-direct/range {v17 .. v20}, Lcom/ime/framework/input/StrSegment;-><init>(Ljava/lang/String;II)V

    aput-object v17, v11, v16

    const/16 v16, 0x1

    new-instance v17, Lcom/ime/framework/input/StrSegment;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v18

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x3

    aget-object v19, v13, v19

    move-object/from16 v0, v19

    iget v0, v0, Lcom/ime/framework/input/StrSegment;->to:I

    move/from16 v19, v0

    const/16 v20, 0x3

    aget-object v20, v13, v20

    move-object/from16 v0, v20

    iget v0, v0, Lcom/ime/framework/input/StrSegment;->to:I

    move/from16 v20, v0

    invoke-direct/range {v17 .. v20}, Lcom/ime/framework/input/StrSegment;-><init>(Ljava/lang/String;II)V

    aput-object v17, v11, v16

    goto :goto_8

    :cond_12
    add-int/2addr v12, v5

    const/16 v16, 0x0

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->length()I

    move-result v17

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    goto/16 :goto_2

    :cond_13
    const/16 v16, 0x0

    goto/16 :goto_0
.end method

.method private processBackSpaceKey()V
    .locals 21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/xt9/Xt9QwertyJapaneseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/xt9/Xt9QwertyJapaneseInputModule;->mMultitap:Lcom/ime/framework/input/InputModule$Timer;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/ime/framework/input/xt9/Xt9QwertyJapaneseInputModule;->stopTimer(Lcom/ime/framework/input/InputModule$Timer;)V

    const-string v11, ""

    const-string v13, ""

    if-eqz v8, :cond_4

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/ime/framework/input/xt9/Xt9QwertyJapaneseInputModule;->mIsPredictionOn:Z

    move/from16 v18, v0

    if-eqz v18, :cond_7

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v18

    if-eqz v18, :cond_7

    const v18, 0x7fffffff

    const/16 v19, 0x1

    :try_start_0
    move/from16 v0, v18

    move/from16 v1, v19

    invoke-interface {v8, v0, v1}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v18

    move-object/from16 v0, v18

    check-cast v0, Landroid/text/SpannableString;

    move-object/from16 v17, v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    if-eqz v17, :cond_1

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v17}, Landroid/text/SpannableString;->length()I

    move-result v19

    const-class v20, Ljava/lang/Object;

    invoke-virtual/range {v17 .. v20}, Landroid/text/SpannableString;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v15

    move-object v2, v15

    array-length v12, v2

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v12, :cond_1

    aget-object v16, v2, v7

    move-object/from16 v0, v16

    instance-of v0, v0, Landroid/text/style/UnderlineSpan;

    move/from16 v18, v0

    if-eqz v18, :cond_0

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/text/SpannableString;->getSpanEnd(Ljava/lang/Object;)I

    move-result v18

    invoke-virtual/range {v17 .. v17}, Landroid/text/SpannableString;->length()I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_0

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/text/SpannableString;->getSpanStart(Ljava/lang/Object;)I

    move-result v18

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/text/SpannableString;->getSpanEnd(Ljava/lang/Object;)I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-interface {v8, v0, v1}, Landroid/view/inputmethod/InputConnection;->setComposingRegion(II)Z

    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :catch_0
    move-exception v5

    const/16 v18, 0x1

    const/16 v19, 0x0

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-interface {v8, v0, v1}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string v18, ""

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_2

    if-eqz v17, :cond_2

    invoke-virtual/range {v17 .. v17}, Landroid/text/SpannableString;->length()I

    move-result v18

    if-lez v18, :cond_2

    invoke-virtual/range {v17 .. v17}, Landroid/text/SpannableString;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v17}, Landroid/text/SpannableString;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v19

    add-int/lit8 v19, v19, -0x1

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    :cond_2
    :goto_2
    const/16 v18, 0x1

    const/16 v19, 0x0

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-interface {v8, v0, v1}, Landroid/view/inputmethod/InputConnection;->getTextAfterCursor(II)Ljava/lang/CharSequence;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    if-nez v11, :cond_3

    const-string v11, ""

    :cond_3
    if-nez v13, :cond_4

    const-string v13, ""

    :cond_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/ime/framework/input/xt9/Xt9QwertyJapaneseInputModule;->setDeleteCount(Ljava/lang/String;)V

    const-string v14, ""

    if-eqz v8, :cond_5

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-interface {v8, v0}, Landroid/view/inputmethod/InputConnection;->getSelectedText(I)Ljava/lang/CharSequence;

    move-result-object v14

    :cond_5
    const/16 v18, 0x1

    invoke-static/range {v18 .. v18}, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->size(I)I

    move-result v18

    if-lez v18, :cond_d

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ime/framework/input/xt9/Xt9QwertyJapaneseInputModule;->mStateCandidate:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_d

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v18

    if-eqz v18, :cond_c

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/input/xt9/Xt9QwertyJapaneseInputModule;->isBeforeTraceInput()Z

    move-result v18

    if-nez v18, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/xt9/Xt9QwertyJapaneseInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    move-object/from16 v18, v0

    const/16 v19, -0x5

    invoke-interface/range {v18 .. v19}, Lcom/ime/framework/engine/InputEngineManager;->inputKey(I)I

    move-result v18

    if-eqz v18, :cond_6

    if-eqz v14, :cond_a

    invoke-interface {v14}, Ljava/lang/CharSequence;->length()I

    move-result v18

    if-lez v18, :cond_a

    :cond_6
    invoke-static {}, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->getlastRomajicount()I

    move-result v4

    const/16 v18, 0x1

    const/16 v19, 0x0

    invoke-static/range {v18 .. v19}, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->delete(IZ)I

    const/16 v18, 0x1

    invoke-static/range {v18 .. v18}, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->toString(I)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/ime/framework/input/ComposingTextManager;->replace(Ljava/lang/String;)V

    const/4 v6, 0x0

    :goto_3
    if-ge v6, v4, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/xt9/Xt9QwertyJapaneseInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    move-object/from16 v18, v0

    const/16 v19, -0x5

    invoke-interface/range {v18 .. v19}, Lcom/ime/framework/engine/InputEngineManager;->inputKey(I)I

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_7
    const/16 v18, 0x1

    const/16 v19, 0x0

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-interface {v8, v0, v1}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    goto/16 :goto_2

    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/input/xt9/Xt9QwertyJapaneseInputModule;->setComposingText()V

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/input/xt9/Xt9QwertyJapaneseInputModule;->updateSuggestionDelay()V

    :cond_9
    :goto_4
    return-void

    :cond_a
    invoke-static {}, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->getlastRomajicount()I

    move-result v4

    const/16 v18, 0x1

    const/16 v19, 0x0

    invoke-static/range {v18 .. v19}, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->delete(IZ)I

    const/16 v18, 0x1

    invoke-static/range {v18 .. v18}, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->toString(I)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/ime/framework/input/ComposingTextManager;->replace(Ljava/lang/String;)V

    const/4 v6, 0x0

    :goto_5
    if-ge v6, v4, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/xt9/Xt9QwertyJapaneseInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    move-object/from16 v18, v0

    const/16 v19, -0x5

    invoke-interface/range {v18 .. v19}, Lcom/ime/framework/engine/InputEngineManager;->inputKey(I)I

    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/input/xt9/Xt9QwertyJapaneseInputModule;->setComposingText()V

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/input/xt9/Xt9QwertyJapaneseInputModule;->updateSuggestionDelay()V

    goto :goto_4

    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/xt9/Xt9QwertyJapaneseInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    move-object/from16 v18, v0

    const/16 v19, -0x5

    invoke-interface/range {v18 .. v19}, Lcom/ime/framework/engine/InputEngineManager;->inputKey(I)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/xt9/Xt9QwertyJapaneseInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/ime/framework/engine/InputEngineManager;->clearContext()I

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->clear()V

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->clear()V

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/ime/framework/input/xt9/Xt9QwertyJapaneseInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/xt9/Xt9QwertyJapaneseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v18, v0

    const/16 v19, 0x19

    invoke-interface/range {v18 .. v19}, Lcom/ime/framework/common/InputManager;->buildSuggestions(I)V

    goto :goto_4

    :cond_d
    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v18

    if-eqz v18, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/xt9/Xt9QwertyJapaneseInputModule;->mAutoSpaceController:Lcom/ime/framework/input/autospace/AutoSpaceController;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/ime/framework/input/autospace/AutoSpaceController;->isLastActionIsTraceOrPick()Z

    move-result v18

    if-eqz v18, :cond_e

    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/ime/framework/input/xt9/Xt9QwertyJapaneseInputModule;->finishComposing(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/input/xt9/Xt9QwertyJapaneseInputModule;->initComposingBuffer()V

    const/16 v18, 0x43

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/ime/framework/input/xt9/Xt9QwertyJapaneseInputModule;->onKeyDownUpHandle(I)V

    goto/16 :goto_4

    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/xt9/Xt9QwertyJapaneseInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    move-object/from16 v18, v0

    const/16 v19, -0x5

    invoke-interface/range {v18 .. v19}, Lcom/ime/framework/engine/InputEngineManager;->inputKey(I)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/xt9/Xt9QwertyJapaneseInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/ime/framework/engine/InputEngineManager;->clearContext()I

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->clear()V

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/ime/framework/input/xt9/Xt9QwertyJapaneseInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/xt9/Xt9QwertyJapaneseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v18, v0

    const/16 v19, 0x19

    invoke-interface/range {v18 .. v19}, Lcom/ime/framework/common/InputManager;->buildSuggestions(I)V

    goto/16 :goto_4

    :cond_f
    invoke-static {}, Lcom/ime/framework/repository/EditorStatus;->isAutoCompletitionInput()Z

    move-result v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/xt9/Xt9QwertyJapaneseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/ime/framework/common/InputManager;->isOrientationLandscape()Z

    move-result v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/xt9/Xt9QwertyJapaneseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/ime/framework/common/InputManager;->getCompletions()[Landroid/view/inputmethod/CompletionInfo;

    move-result-object v3

    if-eqz v9, :cond_12

    if-eqz v10, :cond_12

    if-eqz v3, :cond_12

    if-eqz v8, :cond_10

    invoke-interface {v8}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    :cond_10
    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->clear()V

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/input/xt9/Xt9QwertyJapaneseInputModule;->getDeleteCount()I

    move-result v18

    const/16 v19, 0x14

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/xt9/Xt9QwertyJapaneseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/ime/framework/common/InputManager;->getCurrentPackageName()Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/xt9/Xt9QwertyJapaneseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/ime/framework/common/InputManager;->getCurrentPackageName()Ljava/lang/String;

    move-result-object v18

    const-string v19, "com.sec.chaton"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_11

    if-eqz v8, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/input/xt9/Xt9QwertyJapaneseInputModule;->getLastWordDividerIndex()I

    move-result v18

    const/16 v19, 0x0

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-interface {v8, v0, v1}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    goto/16 :goto_4

    :cond_11
    const/16 v18, 0x43

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/ime/framework/input/xt9/Xt9QwertyJapaneseInputModule;->onKeyDownUpHandle(I)V

    goto/16 :goto_4

    :cond_12
    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v18

    if-eqz v18, :cond_13

    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/ime/framework/input/xt9/Xt9QwertyJapaneseInputModule;->finishComposing(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/input/xt9/Xt9QwertyJapaneseInputModule;->initComposingBuffer()V

    :cond_13
    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/input/xt9/Xt9QwertyJapaneseInputModule;->getDeleteCount()I

    move-result v18

    const/16 v19, 0x14

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/xt9/Xt9QwertyJapaneseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/ime/framework/common/InputManager;->getCurrentPackageName()Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/xt9/Xt9QwertyJapaneseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/ime/framework/common/InputManager;->getCurrentPackageName()Ljava/lang/String;

    move-result-object v18

    const-string v19, "com.sec.chaton"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_14

    if-eqz v8, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/input/xt9/Xt9QwertyJapaneseInputModule;->getLastWordDividerIndex()I

    move-result v18

    const/16 v19, 0x0

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-interface {v8, v0, v1}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    goto/16 :goto_4

    :cond_14
    const/16 v18, 0x43

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/ime/framework/input/xt9/Xt9QwertyJapaneseInputModule;->onKeyDownUpHandle(I)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/ime/framework/input/xt9/Xt9QwertyJapaneseInputModule;->mIsPredictionOn:Z

    move/from16 v18, v0

    if-eqz v18, :cond_17

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/input/xt9/Xt9QwertyJapaneseInputModule;->isRecapture()Z

    move-result v18

    if-eqz v18, :cond_17

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->isEmpty()Z

    move-result v18

    if-eqz v18, :cond_17

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v18

    if-lez v18, :cond_16

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/lang/String;->charAt(I)C

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v18

    if-nez v18, :cond_16

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v18

    if-eqz v18, :cond_15

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/String;->charAt(I)C

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v18

    if-nez v18, :cond_16

    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/xt9/Xt9QwertyJapaneseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/ime/framework/common/InputManager;->postPredictionWordMessage()V

    goto/16 :goto_4

    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/xt9/Xt9QwertyJapaneseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v18, v0

    const/16 v19, 0x19

    invoke-interface/range {v18 .. v19}, Lcom/ime/framework/common/InputManager;->buildSuggestions(I)V

    goto/16 :goto_4

    :cond_17
    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/ime/framework/input/xt9/Xt9QwertyJapaneseInputModule;->finishComposing(Z)V

    goto/16 :goto_4
.end method

.method private processMultiTap(I[I)V
    .locals 5

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/ime/framework/input/xt9/Xt9QwertyJapaneseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/ime/framework/common/InputManager;->isPridictionOn()Z

    move-result v4

    iput-boolean v4, p0, Lcom/ime/framework/input/xt9/Xt9QwertyJapaneseInputModule;->mIsPredictionOn:Z

    iget-object v4, p0, Lcom/ime/framework/input/xt9/Xt9QwertyJapaneseInputModule;->mMultitap:Lcom/ime/framework/input/InputModule$Timer;

    invoke-virtual {p0, v4}, Lcom/ime/framework/input/xt9/Xt9QwertyJapaneseInputModule;->isTimerRunning(Lcom/ime/framework/input/InputModule$Timer;)Z

    move-result v1

    iget-object v4, p0, Lcom/ime/framework/input/xt9/Xt9QwertyJapaneseInputModule;->mMultitap:Lcom/ime/framework/input/InputModule$Timer;

    invoke-virtual {p0, v4}, Lcom/ime/framework/input/xt9/Xt9QwertyJapaneseInputModule;->stopTimer(Lcom/ime/framework/input/InputModule$Timer;)V

    iget v4, p0, Lcom/ime/framework/input/xt9/Xt9QwertyJapaneseInputModule;->mLastKeyCode:I

    if-ne v4, p1, :cond_1

    move v0, v2

    :goto_0
    iget-object v4, p0, Lcom/ime/framework/input/xt9/Xt9QwertyJapaneseInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v4}, Lcom/ime/framework/engine/InputEngineManager;->hasInputSequence()Z

    move-result v4

    if-nez v4, :cond_0

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    :cond_0
    :goto_1
    iget-object v2, p0, Lcom/ime/framework/input/xt9/Xt9QwertyJapaneseInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    iget-object v4, p0, Lcom/ime/framework/input/xt9/Xt9QwertyJapaneseInputModule;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v4, v3}, Lcom/ime/framework/trace/KeyboardTrace;->getTouchPoint(I)Landroid/graphics/PointF;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Lcom/ime/framework/engine/InputEngineManager;->inputKey(ILandroid/graphics/PointF;)I

    iget-object v2, p0, Lcom/ime/framework/input/xt9/Xt9QwertyJapaneseInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/ime/framework/engine/InputEngineManager;->getExactCharSequence(Ljava/lang/StringBuilder;)I

    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9QwertyJapaneseInputModule;->setComposingText()V

    iget-boolean v2, p0, Lcom/ime/framework/input/xt9/Xt9QwertyJapaneseInputModule;->mIsPredictionOn:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/ime/framework/input/xt9/Xt9QwertyJapaneseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    const/16 v3, 0x19

    invoke-interface {v2, v3}, Lcom/ime/framework/common/InputManager;->buildSuggestions(I)V

    :goto_2
    return-void

    :cond_1
    move v0, v3

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v2}, Lcom/ime/framework/input/xt9/Xt9QwertyJapaneseInputModule;->finishComposing(Z)V

    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9QwertyJapaneseInputModule;->initComposingBuffer()V

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/ime/framework/input/xt9/Xt9QwertyJapaneseInputModule;->mMultitap:Lcom/ime/framework/input/InputModule$Timer;

    const/16 v3, 0x5dc

    invoke-virtual {p0, v2, v3}, Lcom/ime/framework/input/xt9/Xt9QwertyJapaneseInputModule;->startTimer(Lcom/ime/framework/input/InputModule$Timer;I)V

    goto :goto_2
.end method

.method private processSingleTap(I[I)V
    .locals 10

    const/4 v9, 0x0

    const/4 v8, 0x1

    iget-object v6, p0, Lcom/ime/framework/input/xt9/Xt9QwertyJapaneseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/ime/framework/common/InputManager;->isPridictionOn()Z

    move-result v6

    iput-boolean v6, p0, Lcom/ime/framework/input/xt9/Xt9QwertyJapaneseInputModule;->mIsPredictionOn:Z

    const/4 v4, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/ime/framework/input/xt9/Xt9QwertyJapaneseInputModule;->mMultitap:Lcom/ime/framework/input/InputModule$Timer;

    invoke-virtual {p0, v6}, Lcom/ime/framework/input/xt9/Xt9QwertyJapaneseInputModule;->stopTimer(Lcom/ime/framework/input/InputModule$Timer;)V

    iget-boolean v6, p0, Lcom/ime/framework/input/xt9/Xt9QwertyJapaneseInputModule;->mIsPredictionOn:Z

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/ime/framework/input/xt9/Xt9QwertyJapaneseInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v6}, Lcom/ime/framework/engine/InputEngineManager;->getInputSequenceCount()I

    move-result v6

    const/16 v7, 0x40

    if-lt v6, v7, :cond_0

    iget-object v6, p0, Lcom/ime/framework/input/xt9/Xt9QwertyJapaneseInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v6}, Lcom/ime/framework/engine/InputEngineManager;->breakContext()V

    invoke-virtual {p0, v8}, Lcom/ime/framework/input/xt9/Xt9QwertyJapaneseInputModule;->finishComposing(Z)V

    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9QwertyJapaneseInputModule;->initComposingBuffer()V

    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9QwertyJapaneseInputModule;->clearCandidateList()V

    :cond_0
    invoke-static {}, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->OnBlockPrediction()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->setBlockCursorbeforeModified()V

    const/4 v6, 0x4

    invoke-static {v6}, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->setCursorDir(I)V

    :cond_1
    int-to-char v6, p1

    invoke-static {v6}, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->append(I)Z

    invoke-direct {p0}, Lcom/ime/framework/input/xt9/Xt9QwertyJapaneseInputModule;->convertRomajiToHiragana()Z

    iget-boolean v6, p0, Lcom/ime/framework/input/xt9/Xt9QwertyJapaneseInputModule;->mIsPredictionOn:Z

    if-nez v6, :cond_2

    iget-object v6, p0, Lcom/ime/framework/input/xt9/Xt9QwertyJapaneseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/ime/framework/common/InputManager;->isEnableTraceInPassword()Z

    move-result v6

    if-eqz v6, :cond_b

    :cond_2
    iget-boolean v6, p0, Lcom/ime/framework/input/xt9/Xt9QwertyJapaneseInputModule;->mIsTraceOn:Z

    if-eqz v6, :cond_b

    iget-object v6, p0, Lcom/ime/framework/input/xt9/Xt9QwertyJapaneseInputModule;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;

    if-eqz v6, :cond_b

    iget-object v6, p0, Lcom/ime/framework/input/xt9/Xt9QwertyJapaneseInputModule;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v6}, Lcom/ime/framework/trace/KeyboardTrace;->getTracePointCount()I

    move-result v6

    const/4 v7, 0x2

    if-le v6, v7, :cond_b

    new-array v1, v8, [Z

    new-array v0, v8, [Z

    iget-object v6, p0, Lcom/ime/framework/input/xt9/Xt9QwertyJapaneseInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v6, v0, v1}, Lcom/ime/framework/engine/InputEngineManager;->isAutoAcceptBeforeStoredTrace([Z[Z)S

    move-result v5

    if-eqz v5, :cond_3

    :goto_0
    return-void

    :cond_3
    aget-boolean v6, v0, v9

    if-eqz v6, :cond_5

    invoke-virtual {p0, v9}, Lcom/ime/framework/input/xt9/Xt9QwertyJapaneseInputModule;->selectWordInList(I)V

    invoke-virtual {p0, v8}, Lcom/ime/framework/input/xt9/Xt9QwertyJapaneseInputModule;->finishComposing(Z)V

    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9QwertyJapaneseInputModule;->initComposingBuffer()V

    iget-object v6, p0, Lcom/ime/framework/input/xt9/Xt9QwertyJapaneseInputModule;->mAutoSpaceController:Lcom/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v6}, Lcom/ime/framework/input/autospace/AutoSpaceController;->isAutoSpaceOn()Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/ime/framework/input/xt9/Xt9QwertyJapaneseInputModule;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v6}, Lcom/ime/framework/trace/KeyboardTrace;->isSymbolAndSpace()Z

    move-result v6

    if-nez v6, :cond_4

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/ime/framework/input/xt9/Xt9QwertyJapaneseInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    :cond_4
    :goto_1
    iget-object v6, p0, Lcom/ime/framework/input/xt9/Xt9QwertyJapaneseInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    const/4 v7, -0x1

    invoke-interface {v6, v7}, Lcom/ime/framework/engine/InputEngineManager;->processStoredTrace(B)S

    move-result v6

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/ime/framework/input/xt9/Xt9QwertyJapaneseInputModule;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v6}, Lcom/ime/framework/trace/KeyboardTrace;->clearTraceInfo()V

    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9QwertyJapaneseInputModule;->resetPredictionWord()V

    goto :goto_0

    :cond_5
    invoke-virtual {p0, v8}, Lcom/ime/framework/input/xt9/Xt9QwertyJapaneseInputModule;->finishComposing(Z)V

    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9QwertyJapaneseInputModule;->initComposingBuffer()V

    goto :goto_1

    :cond_6
    iget-object v6, p0, Lcom/ime/framework/input/xt9/Xt9QwertyJapaneseInputModule;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v6}, Lcom/ime/framework/trace/KeyboardTrace;->clearTraceInfo()V

    const/4 v4, 0x1

    :cond_7
    iget-boolean v6, p0, Lcom/ime/framework/input/xt9/Xt9QwertyJapaneseInputModule;->mIsPredictionOn:Z

    if-nez v6, :cond_8

    iget-object v6, p0, Lcom/ime/framework/input/xt9/Xt9QwertyJapaneseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/ime/framework/common/InputManager;->isEnableTraceInPassword()Z

    move-result v6

    if-eqz v6, :cond_e

    :cond_8
    if-eqz v4, :cond_e

    iget-object v6, p0, Lcom/ime/framework/input/xt9/Xt9QwertyJapaneseInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/ime/framework/engine/InputEngineManager;->getCharSequence(Ljava/lang/StringBuilder;)I

    :goto_2
    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-nez v6, :cond_9

    if-eqz v4, :cond_9

    iget-object v6, p0, Lcom/ime/framework/input/xt9/Xt9QwertyJapaneseInputModule;->mAutoSpaceController:Lcom/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v6}, Lcom/ime/framework/input/autospace/AutoSpaceController;->disableSetUpAutoSpace()V

    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9QwertyJapaneseInputModule;->resetPredictionWord()V

    :cond_9
    iget-boolean v6, p0, Lcom/ime/framework/input/xt9/Xt9QwertyJapaneseInputModule;->mIsPredictionOn:Z

    if-nez v6, :cond_10

    iget-object v6, p0, Lcom/ime/framework/input/xt9/Xt9QwertyJapaneseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/ime/framework/common/InputManager;->isEnableTraceInPassword()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-static {}, Lcom/ime/framework/repository/EditorStatus;->isPasswordInputType()Z

    move-result v6

    if-eqz v6, :cond_10

    if-nez v4, :cond_10

    :cond_a
    invoke-static {v2}, Lcom/ime/framework/input/ComposingTextManager;->replace(Ljava/lang/StringBuilder;)V

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->length()I

    move-result v6

    if-le v6, v8, :cond_f

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->getLastChar()C

    move-result v3

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-static {v6}, Lcom/ime/framework/input/ComposingTextManager;->setLength(I)V

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/ime/framework/input/xt9/Xt9QwertyJapaneseInputModule;->commitText(Ljava/lang/CharSequence;)V

    invoke-static {v3}, Lcom/ime/framework/input/ComposingTextManager;->replace(C)V

    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9QwertyJapaneseInputModule;->setComposingText()V

    goto/16 :goto_0

    :cond_b
    invoke-static {}, Lcom/ime/framework/repository/InputStatus;->isKeyLongpressed()Z

    move-result v6

    if-eqz v6, :cond_c

    iget-object v6, p0, Lcom/ime/framework/input/xt9/Xt9QwertyJapaneseInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v6, p1}, Lcom/ime/framework/engine/InputEngineManager;->inputKey(I)I

    move-result v6

    if-nez v6, :cond_7

    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9QwertyJapaneseInputModule;->resetPredictionWord()V

    goto/16 :goto_0

    :cond_c
    iget-object v6, p0, Lcom/ime/framework/input/xt9/Xt9QwertyJapaneseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/ime/framework/common/InputManager;->isDeviceHasHardwareKeypad()Z

    move-result v6

    if-eqz v6, :cond_d

    iget-object v6, p0, Lcom/ime/framework/input/xt9/Xt9QwertyJapaneseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/ime/framework/common/InputManager;->isHWKeyboardOpen()Z

    move-result v6

    if-eqz v6, :cond_d

    iget-object v6, p0, Lcom/ime/framework/input/xt9/Xt9QwertyJapaneseInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v6, p1}, Lcom/ime/framework/engine/InputEngineManager;->inputKey(I)I

    move-result v6

    if-nez v6, :cond_7

    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9QwertyJapaneseInputModule;->resetPredictionWord()V

    goto/16 :goto_0

    :cond_d
    invoke-static {}, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->OnBlockPrediction()Z

    move-result v6

    if-nez v6, :cond_7

    iget-object v6, p0, Lcom/ime/framework/input/xt9/Xt9QwertyJapaneseInputModule;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/ime/framework/input/xt9/Xt9QwertyJapaneseInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    iget-object v7, p0, Lcom/ime/framework/input/xt9/Xt9QwertyJapaneseInputModule;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v7, v9}, Lcom/ime/framework/trace/KeyboardTrace;->getTouchPoint(I)Landroid/graphics/PointF;

    move-result-object v7

    invoke-interface {v6, p1, v7}, Lcom/ime/framework/engine/InputEngineManager;->inputKey(ILandroid/graphics/PointF;)I

    move-result v6

    if-nez v6, :cond_7

    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9QwertyJapaneseInputModule;->resetPredictionWord()V

    goto/16 :goto_0

    :cond_e
    iget-object v6, p0, Lcom/ime/framework/input/xt9/Xt9QwertyJapaneseInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v6, v2}, Lcom/ime/framework/engine/InputEngineManager;->getExactCharSequence(Ljava/lang/StringBuilder;)I

    goto/16 :goto_2

    :cond_f
    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9QwertyJapaneseInputModule;->setComposingText()V

    goto/16 :goto_0

    :cond_10
    iget-boolean v6, p0, Lcom/ime/framework/input/xt9/Xt9QwertyJapaneseInputModule;->mIsPredictionOn:Z

    if-nez v6, :cond_11

    iget-object v6, p0, Lcom/ime/framework/input/xt9/Xt9QwertyJapaneseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/ime/framework/common/InputManager;->isEnableTraceInPassword()Z

    move-result v6

    if-eqz v6, :cond_12

    :cond_11
    if-eqz v4, :cond_12

    iget-object v6, p0, Lcom/ime/framework/input/xt9/Xt9QwertyJapaneseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    const/16 v7, 0x19

    invoke-interface {v6, v7}, Lcom/ime/framework/common/InputManager;->updateCandidates(I)V

    goto/16 :goto_0

    :cond_12
    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9QwertyJapaneseInputModule;->updateSuggestionDelay()V

    goto/16 :goto_0
.end method

.method private processWordSeparator(I[I)V
    .locals 12

    const/16 v11, 0xa

    const/16 v10, -0x3ea

    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v0, 0x1

    if-ne p1, v11, :cond_4

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v6

    if-eqz v6, :cond_4

    const/4 v0, 0x0

    :cond_0
    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/ime/framework/input/xt9/Xt9QwertyJapaneseInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    const/4 v7, -0x1

    invoke-interface {v6, v7}, Lcom/ime/framework/engine/InputEngineManager;->doNoteWordDoneForXt9(I)I

    :cond_1
    if-ne p1, v11, :cond_d

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {p0, v8}, Lcom/ime/framework/input/xt9/Xt9QwertyJapaneseInputModule;->finishComposing(Z)V

    :cond_2
    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9QwertyJapaneseInputModule;->sendEnterKeyHandle()V

    iget-object v6, p0, Lcom/ime/framework/input/xt9/Xt9QwertyJapaneseInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v6}, Lcom/ime/framework/engine/InputEngineManager;->breakContext()V

    iget-object v6, p0, Lcom/ime/framework/input/xt9/Xt9QwertyJapaneseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v6, v9}, Lcom/ime/framework/common/InputManager;->setCandidatesViewShown(Z)V

    :cond_3
    :goto_0
    return-void

    :cond_4
    const/16 v6, 0x20

    if-ne p1, v6, :cond_0

    iget-object v6, p0, Lcom/ime/framework/input/xt9/Xt9QwertyJapaneseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/ime/framework/common/InputManager;->isFocusOnCandidateView()Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/ime/framework/input/xt9/Xt9QwertyJapaneseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/ime/framework/common/InputManager;->getInputController()Lcom/ime/framework/input/InputController;

    move-result-object v6

    new-array v7, v8, [I

    aput v10, v7, v9

    invoke-interface {v6, v10, v7}, Lcom/ime/framework/input/InputController;->onKey(I[I)V

    goto :goto_0

    :cond_5
    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->OnBlockPrediction()Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/ime/framework/input/xt9/Xt9QwertyJapaneseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/ime/framework/common/InputManager;->getCandidates()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v6, p0, Lcom/ime/framework/input/xt9/Xt9QwertyJapaneseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v6, v8}, Lcom/ime/framework/common/InputManager;->setFocusOnCandidateView(Z)V

    iget-object v6, p0, Lcom/ime/framework/input/xt9/Xt9QwertyJapaneseInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v6, v9}, Lcom/ime/framework/engine/InputEngineManager;->setSuggestionActiveIndex(I)V

    iget-object v6, p0, Lcom/ime/framework/input/xt9/Xt9QwertyJapaneseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v6, v1}, Lcom/ime/framework/common/InputManager;->setCandidates(Ljava/util/ArrayList;)V

    goto :goto_0

    :cond_6
    invoke-static {}, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->OnBlockPrediction()Z

    move-result v6

    if-eqz v6, :cond_9

    iget-object v6, p0, Lcom/ime/framework/input/xt9/Xt9QwertyJapaneseInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-static {v9}, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->getBlockCursor(I)I

    move-result v7

    invoke-interface {v6, v9, v7}, Lcom/ime/framework/engine/InputEngineManager;->deleteChar(II)V

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->getBlockText()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_7

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-gez v6, :cond_8

    :cond_7
    invoke-virtual {p0, v8}, Lcom/ime/framework/input/xt9/Xt9QwertyJapaneseInputModule;->finishComposing(Z)V

    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9QwertyJapaneseInputModule;->initComposingBuffer()V

    :goto_1
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Lcom/ime/framework/input/xt9/Xt9QwertyJapaneseInputModule;->updateSequence(Ljava/lang/StringBuilder;)V

    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9QwertyJapaneseInputModule;->updateSuggestionDelay()V

    goto :goto_0

    :cond_8
    invoke-virtual {p0, v5}, Lcom/ime/framework/input/xt9/Xt9QwertyJapaneseInputModule;->commitText(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->deleteBlockText()V

    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9QwertyJapaneseInputModule;->setComposingText()V

    goto :goto_1

    :cond_9
    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v6

    if-eqz v6, :cond_b

    iget-object v6, p0, Lcom/ime/framework/input/xt9/Xt9QwertyJapaneseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v6, p0, Lcom/ime/framework/input/xt9/Xt9QwertyJapaneseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/ime/framework/common/InputManager;->isFocusOnCandidateView()Z

    move-result v6

    if-eqz v6, :cond_c

    iget-object v6, p0, Lcom/ime/framework/input/xt9/Xt9QwertyJapaneseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/ime/framework/common/InputManager;->getCandidates()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_b

    iget-object v6, p0, Lcom/ime/framework/input/xt9/Xt9QwertyJapaneseInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v6}, Lcom/ime/framework/engine/InputEngineManager;->getSuggestionActiveIndex()I

    move-result v3

    if-ltz v3, :cond_a

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v3, v6, :cond_a

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-interface {v2, v6, v8}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    :cond_a
    iget-object v6, p0, Lcom/ime/framework/input/xt9/Xt9QwertyJapaneseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v6, v9}, Lcom/ime/framework/common/InputManager;->setFocusOnCandidateView(Z)V

    :cond_b
    :goto_2
    invoke-virtual {p0, v8}, Lcom/ime/framework/input/xt9/Xt9QwertyJapaneseInputModule;->finishComposing(Z)V

    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9QwertyJapaneseInputModule;->initComposingBuffer()V

    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9QwertyJapaneseInputModule;->updateSuggestionDelay()V

    goto/16 :goto_0

    :cond_c
    invoke-static {v8}, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v6, v8}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    goto :goto_2

    :cond_d
    iget-object v6, p0, Lcom/ime/framework/input/xt9/Xt9QwertyJapaneseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/ime/framework/common/InputManager;->isInMultiTapInput()Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-virtual {p0, p1, p2}, Lcom/ime/framework/input/xt9/Xt9QwertyJapaneseInputModule;->processMultiTapSymbolicKey(I[I)V

    goto/16 :goto_0

    :cond_e
    iget-object v6, p0, Lcom/ime/framework/input/xt9/Xt9QwertyJapaneseInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v6, v8, v8}, Lcom/ime/framework/engine/InputEngineManager;->refreshContextBuffer(ZZ)I

    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9QwertyJapaneseInputModule;->finishComposingWithoutInit()V

    int-to-char v6, p1

    invoke-static {v6}, Lcom/ime/framework/input/ComposingTextManager;->replace(C)V

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/ime/framework/input/xt9/Xt9QwertyJapaneseInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    iget-object v6, p0, Lcom/ime/framework/input/xt9/Xt9QwertyJapaneseInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v6, p1}, Lcom/ime/framework/engine/InputEngineManager;->doNoteWordDoneForXt9WithoutIndex(I)I

    iget-boolean v6, p0, Lcom/ime/framework/input/xt9/Xt9QwertyJapaneseInputModule;->mIsPredictionOn:Z

    if-eqz v6, :cond_3

    invoke-virtual {p0, v8}, Lcom/ime/framework/input/xt9/Xt9QwertyJapaneseInputModule;->doNextWordPrediction(Z)V

    goto/16 :goto_0
.end method


# virtual methods
.method public closing()V
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/input/xt9/Xt9QwertyJapaneseInputModule;->mMultitap:Lcom/ime/framework/input/InputModule$Timer;

    invoke-virtual {p0, v0}, Lcom/ime/framework/input/xt9/Xt9QwertyJapaneseInputModule;->stopTimer(Lcom/ime/framework/input/InputModule$Timer;)V

    iget-object v0, p0, Lcom/ime/framework/input/xt9/Xt9QwertyJapaneseInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v0}, Lcom/ime/framework/engine/InputEngineManager;->clearContext()I

    invoke-super {p0}, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->closing()V

    return-void
.end method

.method protected commitText(Ljava/lang/CharSequence;)V
    .locals 2

    iget-object v1, p0, Lcom/ime/framework/input/xt9/Xt9QwertyJapaneseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    :cond_0
    return-void
.end method

.method public initialize()V
    .locals 0

    invoke-super {p0}, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->initialize()V

    return-void
.end method

.method public onCharacterKey(I[I)V
    .locals 7

    const/16 v6, 0x20

    const/4 v5, 0x2

    const/4 v4, 0x1

    iget-object v3, p0, Lcom/ime/framework/input/xt9/Xt9QwertyJapaneseInputModule;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v3}, Lcom/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v0

    iget-object v3, p0, Lcom/ime/framework/input/xt9/Xt9QwertyJapaneseInputModule;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v3}, Lcom/ime/framework/inputmode/InputModeManager;->getInputRange()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/ime/framework/input/xt9/Xt9QwertyJapaneseInputModule;->mStateCandidate:I

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/ime/framework/input/xt9/Xt9QwertyJapaneseInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v3}, Lcom/ime/framework/engine/InputEngineManager;->clearContext()I

    :cond_0
    invoke-virtual {p0, v4}, Lcom/ime/framework/input/xt9/Xt9QwertyJapaneseInputModule;->setPredictionWord(Z)V

    iget-object v3, p0, Lcom/ime/framework/input/xt9/Xt9QwertyJapaneseInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v3, p1}, Lcom/ime/framework/engine/InputEngineManager;->isTextCharacter(I)Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz v1, :cond_2

    :cond_1
    iget-boolean v3, p0, Lcom/ime/framework/input/xt9/Xt9QwertyJapaneseInputModule;->mIsPredictionOn:Z

    if-eqz v3, :cond_9

    iget-boolean v3, p0, Lcom/ime/framework/input/xt9/Xt9QwertyJapaneseInputModule;->mIsTraceOn:Z

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/ime/framework/input/xt9/Xt9QwertyJapaneseInputModule;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/ime/framework/input/xt9/Xt9QwertyJapaneseInputModule;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v3}, Lcom/ime/framework/trace/KeyboardTrace;->getTracePointCount()I

    move-result v3

    if-le v3, v5, :cond_9

    :cond_2
    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/ime/framework/input/xt9/Xt9QwertyJapaneseInputModule;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v3}, Lcom/ime/framework/trace/KeyboardTrace;->isSymbolAndSpace()Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/ime/framework/input/xt9/Xt9QwertyJapaneseInputModule;->mAutoSpaceController:Lcom/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v3}, Lcom/ime/framework/input/autospace/AutoSpaceController;->isEnableAutoSpaceAtText()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/ime/framework/input/xt9/Xt9QwertyJapaneseInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    :cond_3
    if-nez v0, :cond_6

    invoke-direct {p0, p1, p2}, Lcom/ime/framework/input/xt9/Xt9QwertyJapaneseInputModule;->processSingleTap(I[I)V

    :goto_0
    iget-object v3, p0, Lcom/ime/framework/input/xt9/Xt9QwertyJapaneseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/ime/framework/common/InputManager;->getXt9Recapture()Z

    move-result v3

    if-nez v3, :cond_5

    if-ne p1, v6, :cond_4

    iget v3, p0, Lcom/ime/framework/input/xt9/Xt9QwertyJapaneseInputModule;->mStateCandidate:I

    if-eq v3, v5, :cond_5

    :cond_4
    const/4 v3, 0x0

    iput v3, p0, Lcom/ime/framework/input/xt9/Xt9QwertyJapaneseInputModule;->mStateCandidate:I

    :cond_5
    iput p1, p0, Lcom/ime/framework/input/xt9/Xt9QwertyJapaneseInputModule;->mLastKeyCode:I

    iget-object v3, p0, Lcom/ime/framework/input/xt9/Xt9QwertyJapaneseInputModule;->mAutoSpaceController:Lcom/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v3, p1, v2}, Lcom/ime/framework/input/autospace/AutoSpaceController;->setUpAutoSpace(IZ)V

    invoke-virtual {p0, v2}, Lcom/ime/framework/input/xt9/Xt9QwertyJapaneseInputModule;->setBeforeTraceInput(Z)V

    return-void

    :cond_6
    if-ne v0, v4, :cond_8

    iget-object v3, p0, Lcom/ime/framework/input/xt9/Xt9QwertyJapaneseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/ime/framework/common/InputManager;->isEnableTraceInPassword()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-direct {p0, p1, p2}, Lcom/ime/framework/input/xt9/Xt9QwertyJapaneseInputModule;->processSingleTap(I[I)V

    goto :goto_0

    :cond_7
    invoke-direct {p0, p1, p2}, Lcom/ime/framework/input/xt9/Xt9QwertyJapaneseInputModule;->processMultiTap(I[I)V

    goto :goto_0

    :cond_8
    invoke-direct {p0, p1, p2}, Lcom/ime/framework/input/xt9/Xt9QwertyJapaneseInputModule;->processSingleTap(I[I)V

    goto :goto_0

    :cond_9
    iget-object v3, p0, Lcom/ime/framework/input/xt9/Xt9QwertyJapaneseInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v3, p1}, Lcom/ime/framework/engine/InputEngineManager;->isNumericCharacter(I)Z

    move-result v3

    if-eqz v3, :cond_c

    iget-boolean v3, p0, Lcom/ime/framework/input/xt9/Xt9QwertyJapaneseInputModule;->mIsKorMode:Z

    if-eqz v3, :cond_a

    invoke-static {}, Lcom/ime/framework/repository/EditorStatus;->isDigitEditor()Z

    move-result v3

    if-nez v3, :cond_c

    invoke-static {}, Lcom/ime/framework/repository/EditorStatus;->isPhoneNumberInputClass()Z

    move-result v3

    if-nez v3, :cond_c

    :cond_a
    iget-boolean v3, p0, Lcom/ime/framework/input/xt9/Xt9QwertyJapaneseInputModule;->mIsPredictionOn:Z

    if-eqz v3, :cond_c

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_b

    iget-object v3, p0, Lcom/ime/framework/input/xt9/Xt9QwertyJapaneseInputModule;->mAutoSpaceController:Lcom/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v3}, Lcom/ime/framework/input/autospace/AutoSpaceController;->isEnableAutoSpaceAtNumeric()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->clear()V

    invoke-static {v6}, Lcom/ime/framework/input/ComposingTextManager;->append(C)V

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/ime/framework/input/xt9/Xt9QwertyJapaneseInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    :cond_b
    invoke-direct {p0, p1, p2}, Lcom/ime/framework/input/xt9/Xt9QwertyJapaneseInputModule;->processSingleTap(I[I)V

    :goto_1
    invoke-virtual {p0, p1}, Lcom/ime/framework/input/xt9/Xt9QwertyJapaneseInputModule;->autoPeriod(I)V

    goto :goto_0

    :cond_c
    invoke-virtual {p0, p1, p2}, Lcom/ime/framework/input/xt9/Xt9QwertyJapaneseInputModule;->processSymbolicKey(I[I)V

    goto :goto_1
.end method

.method public onHwrPanelLongPressed(ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onHwrTouchDown(IIJ)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onHwrTouchMove(IIJ)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onHwrTouchUp(IIJ)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected processSymbolicKey(I[I)V
    .locals 3

    const/16 v1, 0x20

    if-ne p1, v1, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/ime/framework/input/xt9/Xt9QwertyJapaneseInputModule;->processWordSeparator(I[I)V

    :goto_0
    return-void

    :cond_0
    const-string v1, " .,;:!?\n()[]*&@{}/<>_-+=|\'\u061b\u060c\u061f\""

    invoke-virtual {v1, p1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    invoke-direct {p0, p1, p2}, Lcom/ime/framework/input/xt9/Xt9QwertyJapaneseInputModule;->processWordSeparator(I[I)V

    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9QwertyJapaneseInputModule;->clearCandidateList()V

    goto :goto_0

    :cond_1
    const/16 v1, 0xa

    if-ne p1, v1, :cond_2

    invoke-direct {p0, p1, p2}, Lcom/ime/framework/input/xt9/Xt9QwertyJapaneseInputModule;->processWordSeparator(I[I)V

    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9QwertyJapaneseInputModule;->clearCandidateList()V

    goto :goto_0

    :cond_2
    const/4 v1, -0x5

    if-ne p1, v1, :cond_3

    invoke-direct {p0}, Lcom/ime/framework/input/xt9/Xt9QwertyJapaneseInputModule;->processBackSpaceKey()V

    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9QwertyJapaneseInputModule;->clearCandidateList()V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9QwertyJapaneseInputModule;->clearCandidateList()V

    iget-object v1, p0, Lcom/ime/framework/input/xt9/Xt9QwertyJapaneseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->isInMultiTapInput()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0, p1, p2}, Lcom/ime/framework/input/xt9/Xt9QwertyJapaneseInputModule;->processMultiTapSymbolicKey(I[I)V

    goto :goto_0

    :cond_4
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/ime/framework/input/xt9/Xt9QwertyJapaneseInputModule;->finishComposing(Z)V

    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9QwertyJapaneseInputModule;->initComposingBuffer()V

    int-to-char v1, p1

    invoke-static {v1}, Lcom/ime/framework/input/ComposingTextManager;->replace(C)V

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/ime/framework/input/xt9/Xt9QwertyJapaneseInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public release()V
    .locals 0

    return-void
.end method

.method public setAddStrokeCallBackOnHWREngine()V
    .locals 0

    return-void
.end method

.method public updateSuggestionDelay()V
    .locals 2

    iget-object v0, p0, Lcom/ime/framework/input/xt9/Xt9QwertyJapaneseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->updateViewStatus()V

    iget-object v0, p0, Lcom/ime/framework/input/xt9/Xt9QwertyJapaneseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    const/16 v1, 0x19

    invoke-interface {v0, v1}, Lcom/ime/framework/common/InputManager;->buildSuggestions(I)V

    return-void
.end method

.method public updateVOHWRSuggestion()V
    .locals 0

    return-void
.end method
