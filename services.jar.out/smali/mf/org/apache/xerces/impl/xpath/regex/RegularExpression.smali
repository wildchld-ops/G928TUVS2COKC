.class public Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;
.super Ljava/lang/Object;
.source "RegularExpression.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$CharArrayTarget;,
        Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$CharacterIteratorTarget;,
        Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$ClosureContext;,
        Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;,
        Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$ExpressionTarget;,
        Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$StringTarget;
    }
.end annotation


# static fields
.field static final CARRIAGE_RETURN:I = 0xd

.field static final DEBUG:Z = false

.field static final EXTENDED_COMMENT:I = 0x10

.field static final IGNORE_CASE:I = 0x2

.field static final LINE_FEED:I = 0xa

.field static final LINE_SEPARATOR:I = 0x2028

.field static final MULTIPLE_LINES:I = 0x8

.field static final PARAGRAPH_SEPARATOR:I = 0x2029

.field static final PROHIBIT_FIXED_STRING_OPTIMIZATION:I = 0x100

.field static final PROHIBIT_HEAD_CHARACTER_OPTIMIZATION:I = 0x80

.field static final SINGLE_LINE:I = 0x4

.field static final SPECIAL_COMMA:I = 0x400

.field static final UNICODE_WORD_BOUNDARY:I = 0x40

.field static final USE_UNICODE_CATEGORY:I = 0x20

.field private static final WT_IGNORE:I = 0x0

.field private static final WT_LETTER:I = 0x1

.field private static final WT_OTHER:I = 0x2

.field static final XMLSCHEMA_MODE:I = 0x200

.field private static final serialVersionUID:J = 0x56a1d011fd4e4bc1L


# instance fields
.field transient context:Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;

.field transient firstChar:Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;

.field transient fixedString:Ljava/lang/String;

.field transient fixedStringOnly:Z

.field transient fixedStringOptions:I

.field transient fixedStringTable:Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;

.field hasBackReferences:Z

.field transient minlength:I

.field nofparen:I

.field transient numberOfClosures:I

.field transient operations:Lmf/org/apache/xerces/impl/xpath/regex/Op;

.field options:I

.field regex:Ljava/lang/String;

.field tokentree:Lmf/org/apache/xerces/impl/xpath/regex/Token;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xpath/regex/ParseException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xpath/regex/ParseException;
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->hasBackReferences:Z

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->operations:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->context:Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->firstChar:Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->fixedString:Ljava/lang/String;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->fixedStringTable:Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;

    iput-boolean v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->fixedStringOnly:Z

    invoke-virtual {p0, p1, p2}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->setPattern(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xpath/regex/ParseException;
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->hasBackReferences:Z

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->operations:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->context:Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->firstChar:Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->fixedString:Ljava/lang/String;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->fixedStringTable:Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;

    iput-boolean v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->fixedStringOnly:Z

    invoke-virtual {p0, p1, p2, p3}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->setPattern(Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lmf/org/apache/xerces/impl/xpath/regex/Token;IZI)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->hasBackReferences:Z

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->operations:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->context:Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->firstChar:Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->fixedString:Ljava/lang/String;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->fixedStringTable:Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;

    iput-boolean v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->fixedStringOnly:Z

    iput-object p1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->regex:Ljava/lang/String;

    iput-object p2, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->tokentree:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    iput p3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->nofparen:I

    iput p5, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->options:I

    iput-boolean p4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->hasBackReferences:Z

    return-void
.end method

.method private compile(Lmf/org/apache/xerces/impl/xpath/regex/Token;Lmf/org/apache/xerces/impl/xpath/regex/Op;Z)Lmf/org/apache/xerces/impl/xpath/regex/Op;
    .locals 21

    move-object/from16 v0, p1

    iget v0, v0, Lmf/org/apache/xerces/impl/xpath/regex/Token;->type:I

    move/from16 v17, v0

    packed-switch v17, :pswitch_data_0

    :pswitch_0
    new-instance v17, Ljava/lang/RuntimeException;

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "Unknown token type: "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget v0, v0, Lmf/org/apache/xerces/impl/xpath/regex/Token;->type:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v17

    :pswitch_1
    invoke-static {}, Lmf/org/apache/xerces/impl/xpath/regex/Op;->createDot()Lmf/org/apache/xerces/impl/xpath/regex/Op;

    move-result-object v14

    move-object/from16 v0, p2

    iput-object v0, v14, Lmf/org/apache/xerces/impl/xpath/regex/Op;->next:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    :cond_0
    :goto_0
    return-object v14

    :pswitch_2
    invoke-virtual/range {p1 .. p1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getChar()I

    move-result v17

    invoke-static/range {v17 .. v17}, Lmf/org/apache/xerces/impl/xpath/regex/Op;->createChar(I)Lmf/org/apache/xerces/impl/xpath/regex/Op$CharOp;

    move-result-object v14

    move-object/from16 v0, p2

    iput-object v0, v14, Lmf/org/apache/xerces/impl/xpath/regex/Op;->next:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    goto :goto_0

    :pswitch_3
    invoke-virtual/range {p1 .. p1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getChar()I

    move-result v17

    invoke-static/range {v17 .. v17}, Lmf/org/apache/xerces/impl/xpath/regex/Op;->createAnchor(I)Lmf/org/apache/xerces/impl/xpath/regex/Op$CharOp;

    move-result-object v14

    move-object/from16 v0, p2

    iput-object v0, v14, Lmf/org/apache/xerces/impl/xpath/regex/Op;->next:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    goto :goto_0

    :pswitch_4
    invoke-static/range {p1 .. p1}, Lmf/org/apache/xerces/impl/xpath/regex/Op;->createRange(Lmf/org/apache/xerces/impl/xpath/regex/Token;)Lmf/org/apache/xerces/impl/xpath/regex/Op$RangeOp;

    move-result-object v14

    move-object/from16 v0, p2

    iput-object v0, v14, Lmf/org/apache/xerces/impl/xpath/regex/Op;->next:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    goto :goto_0

    :pswitch_5
    move-object/from16 v14, p2

    if-nez p3, :cond_1

    invoke-virtual/range {p1 .. p1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->size()I

    move-result v17

    add-int/lit8 v7, v17, -0x1

    :goto_1
    if-ltz v7, :cond_0

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getChild(I)Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v17

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v1, v14, v2}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->compile(Lmf/org/apache/xerces/impl/xpath/regex/Token;Lmf/org/apache/xerces/impl/xpath/regex/Op;Z)Lmf/org/apache/xerces/impl/xpath/regex/Op;

    move-result-object v14

    add-int/lit8 v7, v7, -0x1

    goto :goto_1

    :cond_1
    const/4 v7, 0x0

    :goto_2
    invoke-virtual/range {p1 .. p1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->size()I

    move-result v17

    move/from16 v0, v17

    if-ge v7, v0, :cond_0

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getChild(I)Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v17

    const/16 v18, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v1, v14, v2}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->compile(Lmf/org/apache/xerces/impl/xpath/regex/Token;Lmf/org/apache/xerces/impl/xpath/regex/Op;Z)Lmf/org/apache/xerces/impl/xpath/regex/Op;

    move-result-object v14

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :pswitch_6
    invoke-virtual/range {p1 .. p1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->size()I

    move-result v17

    invoke-static/range {v17 .. v17}, Lmf/org/apache/xerces/impl/xpath/regex/Op;->createUnion(I)Lmf/org/apache/xerces/impl/xpath/regex/Op$UnionOp;

    move-result-object v15

    const/4 v7, 0x0

    :goto_3
    invoke-virtual/range {p1 .. p1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->size()I

    move-result v17

    move/from16 v0, v17

    if-lt v7, v0, :cond_2

    move-object v14, v15

    goto :goto_0

    :cond_2
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getChild(I)Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, p2

    move/from16 v3, p3

    invoke-direct {v0, v1, v2, v3}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->compile(Lmf/org/apache/xerces/impl/xpath/regex/Token;Lmf/org/apache/xerces/impl/xpath/regex/Op;Z)Lmf/org/apache/xerces/impl/xpath/regex/Op;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Lmf/org/apache/xerces/impl/xpath/regex/Op$UnionOp;->addElement(Lmf/org/apache/xerces/impl/xpath/regex/Op;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :pswitch_7
    const/16 v17, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getChild(I)Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getMin()I

    move-result v9

    invoke-virtual/range {p1 .. p1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getMax()I

    move-result v8

    if-ltz v9, :cond_3

    if-ne v9, v8, :cond_3

    move-object/from16 v14, p2

    const/4 v7, 0x0

    :goto_4
    if-ge v7, v9, :cond_0

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v4, v14, v1}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->compile(Lmf/org/apache/xerces/impl/xpath/regex/Token;Lmf/org/apache/xerces/impl/xpath/regex/Op;Z)Lmf/org/apache/xerces/impl/xpath/regex/Op;

    move-result-object v14

    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_3
    if-lez v9, :cond_4

    if-lez v8, :cond_4

    sub-int/2addr v8, v9

    :cond_4
    if-lez v8, :cond_7

    move-object/from16 v14, p2

    const/4 v7, 0x0

    :goto_5
    if-lt v7, v8, :cond_5

    :goto_6
    if-lez v9, :cond_0

    const/4 v7, 0x0

    :goto_7
    if-ge v7, v9, :cond_0

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v4, v14, v1}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->compile(Lmf/org/apache/xerces/impl/xpath/regex/Token;Lmf/org/apache/xerces/impl/xpath/regex/Op;Z)Lmf/org/apache/xerces/impl/xpath/regex/Op;

    move-result-object v14

    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    :cond_5
    move-object/from16 v0, p1

    iget v0, v0, Lmf/org/apache/xerces/impl/xpath/regex/Token;->type:I

    move/from16 v17, v0

    const/16 v18, 0x9

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_6

    const/16 v17, 0x1

    :goto_8
    invoke-static/range {v17 .. v17}, Lmf/org/apache/xerces/impl/xpath/regex/Op;->createQuestion(Z)Lmf/org/apache/xerces/impl/xpath/regex/Op$ChildOp;

    move-result-object v12

    move-object/from16 v0, p2

    iput-object v0, v12, Lmf/org/apache/xerces/impl/xpath/regex/Op$ChildOp;->next:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v4, v14, v1}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->compile(Lmf/org/apache/xerces/impl/xpath/regex/Token;Lmf/org/apache/xerces/impl/xpath/regex/Op;Z)Lmf/org/apache/xerces/impl/xpath/regex/Op;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Lmf/org/apache/xerces/impl/xpath/regex/Op$ChildOp;->setChild(Lmf/org/apache/xerces/impl/xpath/regex/Op;)V

    move-object v14, v12

    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    :cond_6
    const/16 v17, 0x0

    goto :goto_8

    :cond_7
    move-object/from16 v0, p1

    iget v0, v0, Lmf/org/apache/xerces/impl/xpath/regex/Token;->type:I

    move/from16 v17, v0

    const/16 v18, 0x9

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_8

    invoke-static {}, Lmf/org/apache/xerces/impl/xpath/regex/Op;->createNonGreedyClosure()Lmf/org/apache/xerces/impl/xpath/regex/Op$ChildOp;

    move-result-object v11

    :goto_9
    move-object/from16 v0, p2

    iput-object v0, v11, Lmf/org/apache/xerces/impl/xpath/regex/Op$ChildOp;->next:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v4, v11, v1}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->compile(Lmf/org/apache/xerces/impl/xpath/regex/Token;Lmf/org/apache/xerces/impl/xpath/regex/Op;Z)Lmf/org/apache/xerces/impl/xpath/regex/Op;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Lmf/org/apache/xerces/impl/xpath/regex/Op$ChildOp;->setChild(Lmf/org/apache/xerces/impl/xpath/regex/Op;)V

    move-object v14, v11

    goto :goto_6

    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->numberOfClosures:I

    move/from16 v17, v0

    add-int/lit8 v18, v17, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->numberOfClosures:I

    invoke-static/range {v17 .. v17}, Lmf/org/apache/xerces/impl/xpath/regex/Op;->createClosure(I)Lmf/org/apache/xerces/impl/xpath/regex/Op$ChildOp;

    move-result-object v11

    goto :goto_9

    :pswitch_8
    move-object/from16 v14, p2

    goto/16 :goto_0

    :pswitch_9
    invoke-virtual/range {p1 .. p1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lmf/org/apache/xerces/impl/xpath/regex/Op;->createString(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xpath/regex/Op$StringOp;

    move-result-object v14

    move-object/from16 v0, p2

    iput-object v0, v14, Lmf/org/apache/xerces/impl/xpath/regex/Op;->next:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    goto/16 :goto_0

    :pswitch_a
    invoke-virtual/range {p1 .. p1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getReferenceNumber()I

    move-result v17

    invoke-static/range {v17 .. v17}, Lmf/org/apache/xerces/impl/xpath/regex/Op;->createBackReference(I)Lmf/org/apache/xerces/impl/xpath/regex/Op$CharOp;

    move-result-object v14

    move-object/from16 v0, p2

    iput-object v0, v14, Lmf/org/apache/xerces/impl/xpath/regex/Op;->next:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    goto/16 :goto_0

    :pswitch_b
    invoke-virtual/range {p1 .. p1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getParenNumber()I

    move-result v17

    if-nez v17, :cond_9

    const/16 v17, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getChild(I)Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, p2

    move/from16 v3, p3

    invoke-direct {v0, v1, v2, v3}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->compile(Lmf/org/apache/xerces/impl/xpath/regex/Token;Lmf/org/apache/xerces/impl/xpath/regex/Op;Z)Lmf/org/apache/xerces/impl/xpath/regex/Op;

    move-result-object v14

    goto/16 :goto_0

    :cond_9
    if-eqz p3, :cond_a

    invoke-virtual/range {p1 .. p1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getParenNumber()I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lmf/org/apache/xerces/impl/xpath/regex/Op;->createCapture(ILmf/org/apache/xerces/impl/xpath/regex/Op;)Lmf/org/apache/xerces/impl/xpath/regex/Op$CharOp;

    move-result-object p2

    const/16 v17, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getChild(I)Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, p2

    move/from16 v3, p3

    invoke-direct {v0, v1, v2, v3}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->compile(Lmf/org/apache/xerces/impl/xpath/regex/Token;Lmf/org/apache/xerces/impl/xpath/regex/Op;Z)Lmf/org/apache/xerces/impl/xpath/regex/Op;

    move-result-object p2

    invoke-virtual/range {p1 .. p1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getParenNumber()I

    move-result v17

    move/from16 v0, v17

    neg-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lmf/org/apache/xerces/impl/xpath/regex/Op;->createCapture(ILmf/org/apache/xerces/impl/xpath/regex/Op;)Lmf/org/apache/xerces/impl/xpath/regex/Op$CharOp;

    move-result-object v14

    goto/16 :goto_0

    :cond_a
    invoke-virtual/range {p1 .. p1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getParenNumber()I

    move-result v17

    move/from16 v0, v17

    neg-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lmf/org/apache/xerces/impl/xpath/regex/Op;->createCapture(ILmf/org/apache/xerces/impl/xpath/regex/Op;)Lmf/org/apache/xerces/impl/xpath/regex/Op$CharOp;

    move-result-object p2

    const/16 v17, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getChild(I)Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, p2

    move/from16 v3, p3

    invoke-direct {v0, v1, v2, v3}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->compile(Lmf/org/apache/xerces/impl/xpath/regex/Token;Lmf/org/apache/xerces/impl/xpath/regex/Op;Z)Lmf/org/apache/xerces/impl/xpath/regex/Op;

    move-result-object p2

    invoke-virtual/range {p1 .. p1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getParenNumber()I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lmf/org/apache/xerces/impl/xpath/regex/Op;->createCapture(ILmf/org/apache/xerces/impl/xpath/regex/Op;)Lmf/org/apache/xerces/impl/xpath/regex/Op$CharOp;

    move-result-object v14

    goto/16 :goto_0

    :pswitch_c
    const/16 v17, 0x14

    const/16 v18, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getChild(I)Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v18

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    move/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->compile(Lmf/org/apache/xerces/impl/xpath/regex/Token;Lmf/org/apache/xerces/impl/xpath/regex/Op;Z)Lmf/org/apache/xerces/impl/xpath/regex/Op;

    move-result-object v18

    move/from16 v0, v17

    move-object/from16 v1, p2

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Lmf/org/apache/xerces/impl/xpath/regex/Op;->createLook(ILmf/org/apache/xerces/impl/xpath/regex/Op;Lmf/org/apache/xerces/impl/xpath/regex/Op;)Lmf/org/apache/xerces/impl/xpath/regex/Op$ChildOp;

    move-result-object v14

    goto/16 :goto_0

    :pswitch_d
    const/16 v17, 0x15

    const/16 v18, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getChild(I)Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v18

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    move/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->compile(Lmf/org/apache/xerces/impl/xpath/regex/Token;Lmf/org/apache/xerces/impl/xpath/regex/Op;Z)Lmf/org/apache/xerces/impl/xpath/regex/Op;

    move-result-object v18

    move/from16 v0, v17

    move-object/from16 v1, p2

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Lmf/org/apache/xerces/impl/xpath/regex/Op;->createLook(ILmf/org/apache/xerces/impl/xpath/regex/Op;Lmf/org/apache/xerces/impl/xpath/regex/Op;)Lmf/org/apache/xerces/impl/xpath/regex/Op$ChildOp;

    move-result-object v14

    goto/16 :goto_0

    :pswitch_e
    const/16 v17, 0x16

    const/16 v18, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getChild(I)Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v18

    const/16 v19, 0x0

    const/16 v20, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    move/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->compile(Lmf/org/apache/xerces/impl/xpath/regex/Token;Lmf/org/apache/xerces/impl/xpath/regex/Op;Z)Lmf/org/apache/xerces/impl/xpath/regex/Op;

    move-result-object v18

    move/from16 v0, v17

    move-object/from16 v1, p2

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Lmf/org/apache/xerces/impl/xpath/regex/Op;->createLook(ILmf/org/apache/xerces/impl/xpath/regex/Op;Lmf/org/apache/xerces/impl/xpath/regex/Op;)Lmf/org/apache/xerces/impl/xpath/regex/Op$ChildOp;

    move-result-object v14

    goto/16 :goto_0

    :pswitch_f
    const/16 v17, 0x17

    const/16 v18, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getChild(I)Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v18

    const/16 v19, 0x0

    const/16 v20, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    move/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->compile(Lmf/org/apache/xerces/impl/xpath/regex/Token;Lmf/org/apache/xerces/impl/xpath/regex/Op;Z)Lmf/org/apache/xerces/impl/xpath/regex/Op;

    move-result-object v18

    move/from16 v0, v17

    move-object/from16 v1, p2

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Lmf/org/apache/xerces/impl/xpath/regex/Op;->createLook(ILmf/org/apache/xerces/impl/xpath/regex/Op;Lmf/org/apache/xerces/impl/xpath/regex/Op;)Lmf/org/apache/xerces/impl/xpath/regex/Op$ChildOp;

    move-result-object v14

    goto/16 :goto_0

    :pswitch_10
    const/16 v17, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getChild(I)Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v17

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    move/from16 v3, p3

    invoke-direct {v0, v1, v2, v3}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->compile(Lmf/org/apache/xerces/impl/xpath/regex/Token;Lmf/org/apache/xerces/impl/xpath/regex/Op;Z)Lmf/org/apache/xerces/impl/xpath/regex/Op;

    move-result-object v17

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lmf/org/apache/xerces/impl/xpath/regex/Op;->createIndependent(Lmf/org/apache/xerces/impl/xpath/regex/Op;Lmf/org/apache/xerces/impl/xpath/regex/Op;)Lmf/org/apache/xerces/impl/xpath/regex/Op$ChildOp;

    move-result-object v14

    goto/16 :goto_0

    :pswitch_11
    const/16 v17, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getChild(I)Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v17

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    move/from16 v3, p3

    invoke-direct {v0, v1, v2, v3}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->compile(Lmf/org/apache/xerces/impl/xpath/regex/Token;Lmf/org/apache/xerces/impl/xpath/regex/Op;Z)Lmf/org/apache/xerces/impl/xpath/regex/Op;

    move-result-object v18

    move-object/from16 v17, p1

    check-cast v17, Lmf/org/apache/xerces/impl/xpath/regex/Token$ModifierToken;

    invoke-virtual/range {v17 .. v17}, Lmf/org/apache/xerces/impl/xpath/regex/Token$ModifierToken;->getOptions()I

    move-result v17

    check-cast p1, Lmf/org/apache/xerces/impl/xpath/regex/Token$ModifierToken;

    invoke-virtual/range {p1 .. p1}, Lmf/org/apache/xerces/impl/xpath/regex/Token$ModifierToken;->getOptionsMask()I

    move-result v19

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move/from16 v2, v17

    move/from16 v3, v19

    invoke-static {v0, v1, v2, v3}, Lmf/org/apache/xerces/impl/xpath/regex/Op;->createModifier(Lmf/org/apache/xerces/impl/xpath/regex/Op;Lmf/org/apache/xerces/impl/xpath/regex/Op;II)Lmf/org/apache/xerces/impl/xpath/regex/Op$ModifierOp;

    move-result-object v14

    goto/16 :goto_0

    :pswitch_12
    move-object/from16 v6, p1

    check-cast v6, Lmf/org/apache/xerces/impl/xpath/regex/Token$ConditionToken;

    iget v13, v6, Lmf/org/apache/xerces/impl/xpath/regex/Token$ConditionToken;->refNumber:I

    iget-object v0, v6, Lmf/org/apache/xerces/impl/xpath/regex/Token$ConditionToken;->condition:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-object/from16 v17, v0

    if-nez v17, :cond_b

    const/4 v5, 0x0

    :goto_a
    iget-object v0, v6, Lmf/org/apache/xerces/impl/xpath/regex/Token$ConditionToken;->yes:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, p2

    move/from16 v3, p3

    invoke-direct {v0, v1, v2, v3}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->compile(Lmf/org/apache/xerces/impl/xpath/regex/Token;Lmf/org/apache/xerces/impl/xpath/regex/Op;Z)Lmf/org/apache/xerces/impl/xpath/regex/Op;

    move-result-object v16

    iget-object v0, v6, Lmf/org/apache/xerces/impl/xpath/regex/Token$ConditionToken;->no:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-object/from16 v17, v0

    if-nez v17, :cond_c

    const/4 v10, 0x0

    :goto_b
    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-static {v0, v13, v5, v1, v10}, Lmf/org/apache/xerces/impl/xpath/regex/Op;->createCondition(Lmf/org/apache/xerces/impl/xpath/regex/Op;ILmf/org/apache/xerces/impl/xpath/regex/Op;Lmf/org/apache/xerces/impl/xpath/regex/Op;Lmf/org/apache/xerces/impl/xpath/regex/Op;)Lmf/org/apache/xerces/impl/xpath/regex/Op$ConditionOp;

    move-result-object v14

    goto/16 :goto_0

    :cond_b
    iget-object v0, v6, Lmf/org/apache/xerces/impl/xpath/regex/Token$ConditionToken;->condition:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    move/from16 v3, p3

    invoke-direct {v0, v1, v2, v3}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->compile(Lmf/org/apache/xerces/impl/xpath/regex/Token;Lmf/org/apache/xerces/impl/xpath/regex/Op;Z)Lmf/org/apache/xerces/impl/xpath/regex/Op;

    move-result-object v5

    goto :goto_a

    :cond_c
    iget-object v0, v6, Lmf/org/apache/xerces/impl/xpath/regex/Token$ConditionToken;->no:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, p2

    move/from16 v3, p3

    invoke-direct {v0, v1, v2, v3}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->compile(Lmf/org/apache/xerces/impl/xpath/regex/Token;Lmf/org/apache/xerces/impl/xpath/regex/Op;Z)Lmf/org/apache/xerces/impl/xpath/regex/Op;

    move-result-object v10

    goto :goto_b

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_4
        :pswitch_4
        :pswitch_b
        :pswitch_8
        :pswitch_3
        :pswitch_7
        :pswitch_9
        :pswitch_1
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
    .end packed-switch
.end method

.method private declared-synchronized compile(Lmf/org/apache/xerces/impl/xpath/regex/Token;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->operations:Lmf/org/apache/xerces/impl/xpath/regex/Op;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x0

    :try_start_1
    iput v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->numberOfClosures:I

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->compile(Lmf/org/apache/xerces/impl/xpath/regex/Token;Lmf/org/apache/xerces/impl/xpath/regex/Op;Z)Lmf/org/apache/xerces/impl/xpath/regex/Op;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->operations:Lmf/org/apache/xerces/impl/xpath/regex/Op;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static final getPreviousWordType(Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$ExpressionTarget;IIII)I
    .locals 1

    add-int/lit8 p3, p3, -0x1

    invoke-static {p0, p1, p2, p3, p4}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->getWordType(Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$ExpressionTarget;IIII)I

    move-result v0

    :goto_0
    if-eqz v0, :cond_0

    return v0

    :cond_0
    add-int/lit8 p3, p3, -0x1

    invoke-static {p0, p1, p2, p3, p4}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->getWordType(Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$ExpressionTarget;IIII)I

    move-result v0

    goto :goto_0
.end method

.method private static final getWordType(Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$ExpressionTarget;IIII)I
    .locals 1

    if-lt p3, p1, :cond_0

    if-lt p3, p2, :cond_1

    :cond_0
    const/4 v0, 0x2

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0, p3}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$ExpressionTarget;->charAt(I)C

    move-result v0

    invoke-static {v0, p4}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->getWordType0(CI)I

    move-result v0

    goto :goto_0
.end method

.method private static final getWordType0(CI)I
    .locals 4

    const/4 v2, 0x0

    const/4 v1, 0x2

    const/4 v0, 0x1

    const/16 v3, 0x40

    invoke-static {p1, v3}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->isSet(II)Z

    move-result v3

    if-nez v3, :cond_3

    const/16 v2, 0x20

    invoke-static {p1, v2}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->isSet(II)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "IsWord"

    invoke-static {v2, v0}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getRange(Ljava/lang/String;Z)Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;

    move-result-object v2

    invoke-virtual {v2, p0}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->match(I)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    :pswitch_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    invoke-static {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->isWordChar(I)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_3
    invoke-static {p0}, Ljava/lang/Character;->getType(C)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    :pswitch_1
    move v0, v1

    goto :goto_0

    :pswitch_2
    move v0, v2

    goto :goto_0

    :pswitch_3
    packed-switch p0, :pswitch_data_1

    move v0, v2

    goto :goto_0

    :pswitch_4
    move v0, v1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x9
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method private static final isEOLChar(I)Z
    .locals 1

    const/16 v0, 0xa

    if-eq p0, v0, :cond_0

    const/16 v0, 0xd

    if-eq p0, v0, :cond_0

    const/16 v0, 0x2028

    if-eq p0, v0, :cond_0

    const/16 v0, 0x2029

    if-eq p0, v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static final isSet(II)Z
    .locals 1

    and-int v0, p0, p1

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static final isWordChar(I)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v2, 0x5f

    if-ne p0, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/16 v2, 0x30

    if-ge p0, v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    const/16 v2, 0x7a

    if-le p0, v2, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    const/16 v2, 0x39

    if-le p0, v2, :cond_0

    const/16 v2, 0x41

    if-ge p0, v2, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    const/16 v2, 0x5a

    if-le p0, v2, :cond_0

    const/16 v2, 0x61

    if-ge p0, v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private match(Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;Lmf/org/apache/xerces/impl/xpath/regex/Op;III)I
    .locals 29

    move-object/from16 v0, p1

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->target:Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$ExpressionTarget;

    new-instance v22, Ljava/util/Stack;

    invoke-direct/range {v22 .. v22}, Ljava/util/Stack;-><init>()V

    new-instance v17, Lmf/org/apache/xerces/util/IntStack;

    invoke-direct/range {v17 .. v17}, Lmf/org/apache/xerces/util/IntStack;-><init>()V

    const/4 v2, 0x2

    move/from16 v0, p5

    invoke-static {v0, v2}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->isSet(II)Z

    move-result v10

    const/16 v24, -0x1

    const/16 v25, 0x0

    :cond_0
    if-eqz p2, :cond_1

    move-object/from16 v0, p1

    iget v2, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->limit:I

    move/from16 v0, p3

    if-gt v0, v2, :cond_1

    move-object/from16 v0, p1

    iget v2, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->start:I

    move/from16 v0, p3

    if-ge v0, v2, :cond_5

    :cond_1
    if-nez p2, :cond_4

    const/16 v2, 0x200

    move/from16 v0, p5

    invoke-static {v0, v2}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->isSet(II)Z

    move-result v2

    if-eqz v2, :cond_3

    move-object/from16 v0, p1

    iget v2, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->limit:I

    move/from16 v0, p3

    if-eq v0, v2, :cond_3

    const/16 v24, -0x1

    :goto_0
    const/16 v25, 0x1

    :cond_2
    :goto_1
    if-eqz v25, :cond_0

    invoke-virtual/range {v22 .. v22}, Ljava/util/Stack;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2b

    return v24

    :cond_3
    move/from16 v24, p3

    goto :goto_0

    :cond_4
    const/16 v24, -0x1

    goto :goto_0

    :cond_5
    const/16 v24, -0x1

    move-object/from16 v0, p2

    iget v2, v0, Lmf/org/apache/xerces/impl/xpath/regex/Op;->type:I

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Unknown operation type: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p2

    iget v5, v0, Lmf/org/apache/xerces/impl/xpath/regex/Op;->type:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :pswitch_1
    if-lez p4, :cond_7

    move/from16 v21, p3

    :goto_2
    move-object/from16 v0, p1

    iget v2, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->limit:I

    move/from16 v0, v21

    if-ge v0, v2, :cond_6

    if-ltz v21, :cond_6

    invoke-virtual/range {p2 .. p2}, Lmf/org/apache/xerces/impl/xpath/regex/Op;->getData()I

    move-result v2

    move/from16 v0, v21

    invoke-virtual {v3, v0}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$ExpressionTarget;->charAt(I)C

    move-result v4

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4, v10}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->matchChar(IIZ)Z

    move-result v2

    if-nez v2, :cond_8

    :cond_6
    const/16 v25, 0x1

    goto :goto_1

    :cond_7
    add-int/lit8 v21, p3, -0x1

    goto :goto_2

    :cond_8
    add-int p3, p3, p4

    move-object/from16 v0, p2

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xpath/regex/Op;->next:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    move-object/from16 p2, v0

    goto :goto_1

    :pswitch_2
    if-lez p4, :cond_a

    move/from16 v21, p3

    :goto_3
    move-object/from16 v0, p1

    iget v2, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->limit:I

    move/from16 v0, v21

    if-ge v0, v2, :cond_9

    if-gez v21, :cond_b

    :cond_9
    const/16 v25, 0x1

    goto :goto_1

    :cond_a
    add-int/lit8 v21, p3, -0x1

    goto :goto_3

    :cond_b
    const/4 v2, 0x4

    move/from16 v0, p5

    invoke-static {v0, v2}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->isSet(II)Z

    move-result v2

    if-eqz v2, :cond_d

    move/from16 v0, v21

    invoke-virtual {v3, v0}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$ExpressionTarget;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lmf/org/apache/xerces/impl/xpath/regex/REUtil;->isHighSurrogate(I)Z

    move-result v2

    if-eqz v2, :cond_c

    add-int v2, v21, p4

    if-ltz v2, :cond_c

    add-int v2, v21, p4

    move-object/from16 v0, p1

    iget v4, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->limit:I

    if-ge v2, v4, :cond_c

    add-int v21, v21, p4

    :cond_c
    if-lez p4, :cond_f

    add-int/lit8 p3, v21, 0x1

    :goto_4
    move-object/from16 v0, p2

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xpath/regex/Op;->next:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    move-object/from16 p2, v0

    goto/16 :goto_1

    :cond_d
    move/from16 v0, v21

    invoke-virtual {v3, v0}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$ExpressionTarget;->charAt(I)C

    move-result v15

    invoke-static {v15}, Lmf/org/apache/xerces/impl/xpath/regex/REUtil;->isHighSurrogate(I)Z

    move-result v2

    if-eqz v2, :cond_e

    add-int v2, v21, p4

    if-ltz v2, :cond_e

    add-int v2, v21, p4

    move-object/from16 v0, p1

    iget v4, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->limit:I

    if-ge v2, v4, :cond_e

    add-int v21, v21, p4

    move/from16 v0, v21

    invoke-virtual {v3, v0}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$ExpressionTarget;->charAt(I)C

    move-result v2

    invoke-static {v15, v2}, Lmf/org/apache/xerces/impl/xpath/regex/REUtil;->composeFromSurrogates(II)I

    move-result v15

    :cond_e
    invoke-static {v15}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->isEOLChar(I)Z

    move-result v2

    if-eqz v2, :cond_c

    const/16 v25, 0x1

    goto/16 :goto_1

    :cond_f
    move/from16 p3, v21

    goto :goto_4

    :pswitch_3
    if-lez p4, :cond_11

    move/from16 v21, p3

    :goto_5
    move-object/from16 v0, p1

    iget v2, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->limit:I

    move/from16 v0, v21

    if-ge v0, v2, :cond_10

    if-gez v21, :cond_12

    :cond_10
    const/16 v25, 0x1

    goto/16 :goto_1

    :cond_11
    add-int/lit8 v21, p3, -0x1

    goto :goto_5

    :cond_12
    move/from16 v0, p3

    invoke-virtual {v3, v0}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$ExpressionTarget;->charAt(I)C

    move-result v15

    invoke-static {v15}, Lmf/org/apache/xerces/impl/xpath/regex/REUtil;->isHighSurrogate(I)Z

    move-result v2

    if-eqz v2, :cond_13

    add-int v2, v21, p4

    move-object/from16 v0, p1

    iget v4, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->limit:I

    if-ge v2, v4, :cond_13

    add-int v2, v21, p4

    if-ltz v2, :cond_13

    add-int v21, v21, p4

    move/from16 v0, v21

    invoke-virtual {v3, v0}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$ExpressionTarget;->charAt(I)C

    move-result v2

    invoke-static {v15, v2}, Lmf/org/apache/xerces/impl/xpath/regex/REUtil;->composeFromSurrogates(II)I

    move-result v15

    :cond_13
    invoke-virtual/range {p2 .. p2}, Lmf/org/apache/xerces/impl/xpath/regex/Op;->getToken()Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v15}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->match(I)Z

    move-result v2

    if-nez v2, :cond_14

    const/16 v25, 0x1

    goto/16 :goto_1

    :cond_14
    if-lez p4, :cond_15

    add-int/lit8 p3, v21, 0x1

    :goto_6
    move-object/from16 v0, p2

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xpath/regex/Op;->next:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    move-object/from16 p2, v0

    goto/16 :goto_1

    :cond_15
    move/from16 p3, v21

    goto :goto_6

    :pswitch_4
    move-object/from16 v2, p0

    move-object/from16 v4, p2

    move-object/from16 v5, p1

    move/from16 v6, p3

    move/from16 v7, p5

    invoke-virtual/range {v2 .. v7}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->matchAnchor(Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$ExpressionTarget;Lmf/org/apache/xerces/impl/xpath/regex/Op;Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;II)Z

    move-result v2

    if-nez v2, :cond_16

    const/16 v25, 0x1

    goto/16 :goto_1

    :cond_16
    move-object/from16 v0, p2

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xpath/regex/Op;->next:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    move-object/from16 p2, v0

    goto/16 :goto_1

    :pswitch_5
    invoke-virtual/range {p2 .. p2}, Lmf/org/apache/xerces/impl/xpath/regex/Op;->getData()I

    move-result v23

    if-lez v23, :cond_17

    move-object/from16 v0, p0

    iget v2, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->nofparen:I

    move/from16 v0, v23

    if-lt v0, v2, :cond_18

    :cond_17
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Internal Error: Reference number must be more than zero: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_18
    move-object/from16 v0, p1

    iget-object v2, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->match:Lmf/org/apache/xerces/impl/xpath/regex/Match;

    move/from16 v0, v23

    invoke-virtual {v2, v0}, Lmf/org/apache/xerces/impl/xpath/regex/Match;->getBeginning(I)I

    move-result v2

    if-ltz v2, :cond_19

    move-object/from16 v0, p1

    iget-object v2, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->match:Lmf/org/apache/xerces/impl/xpath/regex/Match;

    move/from16 v0, v23

    invoke-virtual {v2, v0}, Lmf/org/apache/xerces/impl/xpath/regex/Match;->getEnd(I)I

    move-result v2

    if-gez v2, :cond_1a

    :cond_19
    const/16 v25, 0x1

    goto/16 :goto_1

    :cond_1a
    move-object/from16 v0, p1

    iget-object v2, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->match:Lmf/org/apache/xerces/impl/xpath/regex/Match;

    move/from16 v0, v23

    invoke-virtual {v2, v0}, Lmf/org/apache/xerces/impl/xpath/regex/Match;->getBeginning(I)I

    move-result v7

    move-object/from16 v0, p1

    iget-object v2, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->match:Lmf/org/apache/xerces/impl/xpath/regex/Match;

    move/from16 v0, v23

    invoke-virtual {v2, v0}, Lmf/org/apache/xerces/impl/xpath/regex/Match;->getEnd(I)I

    move-result v2

    sub-int v8, v2, v7

    if-lez p4, :cond_1c

    move-object/from16 v0, p1

    iget v6, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->limit:I

    move v4, v10

    move/from16 v5, p3

    invoke-virtual/range {v3 .. v8}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$ExpressionTarget;->regionMatches(ZIIII)Z

    move-result v2

    if-nez v2, :cond_1b

    const/16 v25, 0x1

    goto/16 :goto_1

    :cond_1b
    add-int p3, p3, v8

    :goto_7
    move-object/from16 v0, p2

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xpath/regex/Op;->next:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    move-object/from16 p2, v0

    goto/16 :goto_1

    :cond_1c
    sub-int v5, p3, v8

    move-object/from16 v0, p1

    iget v6, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->limit:I

    move v4, v10

    invoke-virtual/range {v3 .. v8}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$ExpressionTarget;->regionMatches(ZIIII)Z

    move-result v2

    if-nez v2, :cond_1d

    const/16 v25, 0x1

    goto/16 :goto_1

    :cond_1d
    sub-int p3, p3, v8

    goto :goto_7

    :pswitch_6
    invoke-virtual/range {p2 .. p2}, Lmf/org/apache/xerces/impl/xpath/regex/Op;->getString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v8

    if-lez p4, :cond_1f

    move-object/from16 v0, p1

    iget v12, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->limit:I

    move-object v9, v3

    move/from16 v11, p3

    move v14, v8

    invoke-virtual/range {v9 .. v14}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$ExpressionTarget;->regionMatches(ZIILjava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_1e

    const/16 v25, 0x1

    goto/16 :goto_1

    :cond_1e
    add-int p3, p3, v8

    :goto_8
    move-object/from16 v0, p2

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xpath/regex/Op;->next:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    move-object/from16 p2, v0

    goto/16 :goto_1

    :cond_1f
    sub-int v11, p3, v8

    move-object/from16 v0, p1

    iget v12, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->limit:I

    move-object v9, v3

    move v14, v8

    invoke-virtual/range {v9 .. v14}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$ExpressionTarget;->regionMatches(ZIILjava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_20

    const/16 v25, 0x1

    goto/16 :goto_1

    :cond_20
    sub-int p3, p3, v8

    goto :goto_8

    :pswitch_7
    invoke-virtual/range {p2 .. p2}, Lmf/org/apache/xerces/impl/xpath/regex/Op;->getData()I

    move-result v18

    move-object/from16 v0, p1

    iget-object v2, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->closureContexts:[Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$ClosureContext;

    aget-object v2, v2, v18

    move/from16 v0, p3

    invoke-virtual {v2, v0}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$ClosureContext;->contains(I)Z

    move-result v2

    if-eqz v2, :cond_21

    const/16 v25, 0x1

    goto/16 :goto_1

    :cond_21
    move-object/from16 v0, p1

    iget-object v2, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->closureContexts:[Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$ClosureContext;

    aget-object v2, v2, v18

    move/from16 v0, p3

    invoke-virtual {v2, v0}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$ClosureContext;->addOffset(I)V

    :pswitch_8
    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, v17

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/util/IntStack;->push(I)V

    invoke-virtual/range {p2 .. p2}, Lmf/org/apache/xerces/impl/xpath/regex/Op;->getChild()Lmf/org/apache/xerces/impl/xpath/regex/Op;

    move-result-object p2

    goto/16 :goto_1

    :pswitch_9
    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, v17

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/util/IntStack;->push(I)V

    move-object/from16 v0, p2

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xpath/regex/Op;->next:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    move-object/from16 p2, v0

    goto/16 :goto_1

    :pswitch_a
    invoke-virtual/range {p2 .. p2}, Lmf/org/apache/xerces/impl/xpath/regex/Op;->size()I

    move-result v2

    if-nez v2, :cond_22

    const/16 v25, 0x1

    goto/16 :goto_1

    :cond_22
    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lmf/org/apache/xerces/util/IntStack;->push(I)V

    move-object/from16 v0, v17

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/util/IntStack;->push(I)V

    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lmf/org/apache/xerces/impl/xpath/regex/Op;->elementAt(I)Lmf/org/apache/xerces/impl/xpath/regex/Op;

    move-result-object p2

    goto/16 :goto_1

    :pswitch_b
    invoke-virtual/range {p2 .. p2}, Lmf/org/apache/xerces/impl/xpath/regex/Op;->getData()I

    move-result v23

    move-object/from16 v0, p1

    iget-object v2, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->match:Lmf/org/apache/xerces/impl/xpath/regex/Match;

    if-eqz v2, :cond_23

    if-lez v23, :cond_24

    move-object/from16 v0, p1

    iget-object v2, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->match:Lmf/org/apache/xerces/impl/xpath/regex/Match;

    move/from16 v0, v23

    invoke-virtual {v2, v0}, Lmf/org/apache/xerces/impl/xpath/regex/Match;->getBeginning(I)I

    move-result v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lmf/org/apache/xerces/util/IntStack;->push(I)V

    move-object/from16 v0, p1

    iget-object v2, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->match:Lmf/org/apache/xerces/impl/xpath/regex/Match;

    move/from16 v0, v23

    move/from16 v1, p3

    invoke-virtual {v2, v0, v1}, Lmf/org/apache/xerces/impl/xpath/regex/Match;->setBeginning(II)V

    :goto_9
    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, v17

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/util/IntStack;->push(I)V

    :cond_23
    move-object/from16 v0, p2

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xpath/regex/Op;->next:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    move-object/from16 p2, v0

    goto/16 :goto_1

    :cond_24
    move/from16 v0, v23

    neg-int v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p1

    iget-object v2, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->match:Lmf/org/apache/xerces/impl/xpath/regex/Match;

    move/from16 v0, v19

    invoke-virtual {v2, v0}, Lmf/org/apache/xerces/impl/xpath/regex/Match;->getEnd(I)I

    move-result v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lmf/org/apache/xerces/util/IntStack;->push(I)V

    move-object/from16 v0, p1

    iget-object v2, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->match:Lmf/org/apache/xerces/impl/xpath/regex/Match;

    move/from16 v0, v19

    move/from16 v1, p3

    invoke-virtual {v2, v0, v1}, Lmf/org/apache/xerces/impl/xpath/regex/Match;->setEnd(II)V

    goto :goto_9

    :pswitch_c
    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, v17

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/util/IntStack;->push(I)V

    move-object/from16 v0, v17

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/util/IntStack;->push(I)V

    move-object/from16 v0, p2

    iget v2, v0, Lmf/org/apache/xerces/impl/xpath/regex/Op;->type:I

    const/16 v4, 0x14

    if-eq v2, v4, :cond_25

    move-object/from16 v0, p2

    iget v2, v0, Lmf/org/apache/xerces/impl/xpath/regex/Op;->type:I

    const/16 v4, 0x15

    if-ne v2, v4, :cond_26

    :cond_25
    const/16 p4, 0x1

    :goto_a
    invoke-virtual/range {p2 .. p2}, Lmf/org/apache/xerces/impl/xpath/regex/Op;->getChild()Lmf/org/apache/xerces/impl/xpath/regex/Op;

    move-result-object p2

    goto/16 :goto_1

    :cond_26
    const/16 p4, -0x1

    goto :goto_a

    :pswitch_d
    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, v17

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/util/IntStack;->push(I)V

    invoke-virtual/range {p2 .. p2}, Lmf/org/apache/xerces/impl/xpath/regex/Op;->getChild()Lmf/org/apache/xerces/impl/xpath/regex/Op;

    move-result-object p2

    goto/16 :goto_1

    :pswitch_e
    move/from16 v20, p5

    invoke-virtual/range {p2 .. p2}, Lmf/org/apache/xerces/impl/xpath/regex/Op;->getData()I

    move-result v2

    or-int v20, v20, v2

    invoke-virtual/range {p2 .. p2}, Lmf/org/apache/xerces/impl/xpath/regex/Op;->getData2()I

    move-result v2

    xor-int/lit8 v2, v2, -0x1

    and-int v20, v20, v2

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, v17

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/util/IntStack;->push(I)V

    move-object/from16 v0, v17

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/util/IntStack;->push(I)V

    move/from16 p5, v20

    invoke-virtual/range {p2 .. p2}, Lmf/org/apache/xerces/impl/xpath/regex/Op;->getChild()Lmf/org/apache/xerces/impl/xpath/regex/Op;

    move-result-object p2

    goto/16 :goto_1

    :pswitch_f
    move-object/from16 v16, p2

    check-cast v16, Lmf/org/apache/xerces/impl/xpath/regex/Op$ConditionOp;

    move-object/from16 v0, v16

    iget v2, v0, Lmf/org/apache/xerces/impl/xpath/regex/Op$ConditionOp;->refNumber:I

    if-lez v2, :cond_2a

    move-object/from16 v0, v16

    iget v2, v0, Lmf/org/apache/xerces/impl/xpath/regex/Op$ConditionOp;->refNumber:I

    move-object/from16 v0, p0

    iget v4, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->nofparen:I

    if-lt v2, v4, :cond_27

    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Internal Error: Reference number must be more than zero: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    iget v5, v0, Lmf/org/apache/xerces/impl/xpath/regex/Op$ConditionOp;->refNumber:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_27
    move-object/from16 v0, p1

    iget-object v2, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->match:Lmf/org/apache/xerces/impl/xpath/regex/Match;

    move-object/from16 v0, v16

    iget v4, v0, Lmf/org/apache/xerces/impl/xpath/regex/Op$ConditionOp;->refNumber:I

    invoke-virtual {v2, v4}, Lmf/org/apache/xerces/impl/xpath/regex/Match;->getBeginning(I)I

    move-result v2

    if-ltz v2, :cond_28

    move-object/from16 v0, p1

    iget-object v2, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->match:Lmf/org/apache/xerces/impl/xpath/regex/Match;

    move-object/from16 v0, v16

    iget v4, v0, Lmf/org/apache/xerces/impl/xpath/regex/Op$ConditionOp;->refNumber:I

    invoke-virtual {v2, v4}, Lmf/org/apache/xerces/impl/xpath/regex/Match;->getEnd(I)I

    move-result v2

    if-ltz v2, :cond_28

    move-object/from16 v0, v16

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xpath/regex/Op$ConditionOp;->yes:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    move-object/from16 p2, v0

    goto/16 :goto_1

    :cond_28
    move-object/from16 v0, v16

    iget-object v2, v0, Lmf/org/apache/xerces/impl/xpath/regex/Op$ConditionOp;->no:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    if-eqz v2, :cond_29

    move-object/from16 v0, v16

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xpath/regex/Op$ConditionOp;->no:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    move-object/from16 p2, v0

    goto/16 :goto_1

    :cond_29
    move-object/from16 v0, v16

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xpath/regex/Op$ConditionOp;->next:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    move-object/from16 p2, v0

    goto/16 :goto_1

    :cond_2a
    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, v17

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/util/IntStack;->push(I)V

    move-object/from16 v0, v16

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xpath/regex/Op$ConditionOp;->condition:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    move-object/from16 p2, v0

    goto/16 :goto_1

    :cond_2b
    invoke-virtual/range {v22 .. v22}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lmf/org/apache/xerces/impl/xpath/regex/Op;

    invoke-virtual/range {v17 .. v17}, Lmf/org/apache/xerces/util/IntStack;->pop()I

    move-result p3

    move-object/from16 v0, p2

    iget v2, v0, Lmf/org/apache/xerces/impl/xpath/regex/Op;->type:I

    packed-switch v2, :pswitch_data_1

    :pswitch_10
    goto/16 :goto_1

    :pswitch_11
    if-gez v24, :cond_2

    move-object/from16 v0, p2

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xpath/regex/Op;->next:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    move-object/from16 p2, v0

    const/16 v25, 0x0

    goto/16 :goto_1

    :pswitch_12
    if-gez v24, :cond_2

    invoke-virtual/range {p2 .. p2}, Lmf/org/apache/xerces/impl/xpath/regex/Op;->getChild()Lmf/org/apache/xerces/impl/xpath/regex/Op;

    move-result-object p2

    const/16 v25, 0x0

    goto/16 :goto_1

    :pswitch_13
    invoke-virtual/range {v17 .. v17}, Lmf/org/apache/xerces/util/IntStack;->pop()I

    move-result v28

    if-gez v24, :cond_2

    add-int/lit8 v28, v28, 0x1

    invoke-virtual/range {p2 .. p2}, Lmf/org/apache/xerces/impl/xpath/regex/Op;->size()I

    move-result v2

    move/from16 v0, v28

    if-ge v0, v2, :cond_2c

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, v17

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/util/IntStack;->push(I)V

    move-object/from16 v0, v17

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/util/IntStack;->push(I)V

    move-object/from16 v0, p2

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/xpath/regex/Op;->elementAt(I)Lmf/org/apache/xerces/impl/xpath/regex/Op;

    move-result-object p2

    const/16 v25, 0x0

    goto/16 :goto_1

    :cond_2c
    const/16 v24, -0x1

    goto/16 :goto_1

    :pswitch_14
    invoke-virtual/range {p2 .. p2}, Lmf/org/apache/xerces/impl/xpath/regex/Op;->getData()I

    move-result v23

    invoke-virtual/range {v17 .. v17}, Lmf/org/apache/xerces/util/IntStack;->pop()I

    move-result v26

    if-gez v24, :cond_2

    if-lez v23, :cond_2d

    move-object/from16 v0, p1

    iget-object v2, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->match:Lmf/org/apache/xerces/impl/xpath/regex/Match;

    move/from16 v0, v23

    move/from16 v1, v26

    invoke-virtual {v2, v0, v1}, Lmf/org/apache/xerces/impl/xpath/regex/Match;->setBeginning(II)V

    goto/16 :goto_1

    :cond_2d
    move-object/from16 v0, p1

    iget-object v2, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->match:Lmf/org/apache/xerces/impl/xpath/regex/Match;

    move/from16 v0, v23

    neg-int v4, v0

    move/from16 v0, v26

    invoke-virtual {v2, v4, v0}, Lmf/org/apache/xerces/impl/xpath/regex/Match;->setEnd(II)V

    goto/16 :goto_1

    :pswitch_15
    invoke-virtual/range {v17 .. v17}, Lmf/org/apache/xerces/util/IntStack;->pop()I

    move-result p4

    if-ltz v24, :cond_2e

    move-object/from16 v0, p2

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xpath/regex/Op;->next:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    move-object/from16 p2, v0

    const/16 v25, 0x0

    :cond_2e
    const/16 v24, -0x1

    goto/16 :goto_1

    :pswitch_16
    invoke-virtual/range {v17 .. v17}, Lmf/org/apache/xerces/util/IntStack;->pop()I

    move-result p4

    if-gez v24, :cond_2f

    move-object/from16 v0, p2

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xpath/regex/Op;->next:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    move-object/from16 p2, v0

    const/16 v25, 0x0

    :cond_2f
    const/16 v24, -0x1

    goto/16 :goto_1

    :pswitch_17
    invoke-virtual/range {v17 .. v17}, Lmf/org/apache/xerces/util/IntStack;->pop()I

    move-result p5

    :pswitch_18
    if-ltz v24, :cond_2

    move/from16 p3, v24

    move-object/from16 v0, p2

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xpath/regex/Op;->next:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    move-object/from16 p2, v0

    const/16 v25, 0x0

    goto/16 :goto_1

    :pswitch_19
    move-object/from16 v16, p2

    check-cast v16, Lmf/org/apache/xerces/impl/xpath/regex/Op$ConditionOp;

    if-ltz v24, :cond_30

    move-object/from16 v0, v16

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xpath/regex/Op$ConditionOp;->yes:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    move-object/from16 p2, v0

    :goto_b
    const/16 v25, 0x0

    goto/16 :goto_1

    :cond_30
    move-object/from16 v0, v16

    iget-object v2, v0, Lmf/org/apache/xerces/impl/xpath/regex/Op$ConditionOp;->no:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    if-eqz v2, :cond_31

    move-object/from16 v0, v16

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xpath/regex/Op$ConditionOp;->no:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    move-object/from16 p2, v0

    goto :goto_b

    :cond_31
    move-object/from16 v0, v16

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xpath/regex/Op$ConditionOp;->next:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    move-object/from16 p2, v0

    goto :goto_b

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_7
        :pswitch_9
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_b
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x7
        :pswitch_11
        :pswitch_12
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_14
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_15
        :pswitch_16
        :pswitch_15
        :pswitch_16
        :pswitch_18
        :pswitch_17
        :pswitch_19
    .end packed-switch
.end method

.method private matchChar(IIZ)Z
    .locals 1

    if-eqz p3, :cond_0

    invoke-static {p1, p2}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->matchIgnoreCase(II)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    if-ne p1, p2, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static final matchIgnoreCase(II)Z
    .locals 6

    const v4, 0xffff

    const/4 v3, 0x0

    const/4 v2, 0x1

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    if-gt p0, v4, :cond_2

    if-le p1, v4, :cond_3

    :cond_2
    move v2, v3

    goto :goto_0

    :cond_3
    int-to-char v4, p0

    invoke-static {v4}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v0

    int-to-char v4, p1

    invoke-static {v4}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v1

    if-eq v0, v1, :cond_0

    invoke-static {v0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v4

    invoke-static {v1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v5

    if-eq v4, v5, :cond_0

    move v2, v3

    goto :goto_0
.end method

.method private setPattern(Ljava/lang/String;ILjava/util/Locale;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xpath/regex/ParseException;
        }
    .end annotation

    const/4 v3, 0x0

    iput-object p1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->regex:Ljava/lang/String;

    iput p2, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->options:I

    iget v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->options:I

    const/16 v2, 0x200

    invoke-static {v1, v2}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->isSet(II)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Lmf/org/apache/xerces/impl/xpath/regex/ParserForXMLSchema;

    invoke-direct {v0, p3}, Lmf/org/apache/xerces/impl/xpath/regex/ParserForXMLSchema;-><init>(Ljava/util/Locale;)V

    :goto_0
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->regex:Ljava/lang/String;

    iget v2, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->options:I

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->parse(Ljava/lang/String;I)Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v1

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->tokentree:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    iget v1, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->parennumber:I

    iput v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->nofparen:I

    iget-boolean v1, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->hasBackReferences:Z

    iput-boolean v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->hasBackReferences:Z

    iput-object v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->operations:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    iput-object v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->context:Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;

    return-void

    :cond_0
    new-instance v0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;

    invoke-direct {v0, p3}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;-><init>(Ljava/util/Locale;)V

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v1, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    instance-of v2, p1, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;

    if-eqz v2, :cond_0

    move-object v0, p1

    check-cast v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->regex:Ljava/lang/String;

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->regex:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->options:I

    iget v3, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->options:I

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method equals(Ljava/lang/String;I)Z
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->regex:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->options:I

    if-ne v0, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getNumberOfGroups()I
    .locals 1

    iget v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->nofparen:I

    return v0
.end method

.method public getOptions()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->options:I

    invoke-static {v0}, Lmf/org/apache/xerces/impl/xpath/regex/REUtil;->createOptionString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPattern()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->regex:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->regex:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->getOptions()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method matchAnchor(Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$ExpressionTarget;Lmf/org/apache/xerces/impl/xpath/regex/Op;Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;II)Z
    .locals 9

    const/16 v8, 0xa

    const/16 v6, 0x8

    const/4 v7, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-virtual {p2}, Lmf/org/apache/xerces/impl/xpath/regex/Op;->getData()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    :cond_0
    move v3, v4

    :cond_1
    :goto_0
    return v3

    :sswitch_0
    invoke-static {p5, v6}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->isSet(II)Z

    move-result v5

    if-eqz v5, :cond_2

    iget v5, p3, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->start:I

    if-eq p4, v5, :cond_0

    iget v5, p3, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->start:I

    if-le p4, v5, :cond_1

    iget v5, p3, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->limit:I

    if-ge p4, v5, :cond_1

    add-int/lit8 v5, p4, -0x1

    invoke-virtual {p1, v5}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$ExpressionTarget;->charAt(I)C

    move-result v5

    invoke-static {v5}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->isEOLChar(I)Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_0

    :cond_2
    iget v5, p3, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->start:I

    if-eq p4, v5, :cond_0

    goto :goto_0

    :sswitch_1
    iget v5, p3, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->start:I

    if-eq p4, v5, :cond_0

    iget v5, p3, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->start:I

    if-le p4, v5, :cond_1

    add-int/lit8 v5, p4, -0x1

    invoke-virtual {p1, v5}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$ExpressionTarget;->charAt(I)C

    move-result v5

    invoke-static {v5}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->isEOLChar(I)Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_0

    :sswitch_2
    invoke-static {p5, v6}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->isSet(II)Z

    move-result v5

    if-eqz v5, :cond_3

    iget v5, p3, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->limit:I

    if-eq p4, v5, :cond_0

    iget v5, p3, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->limit:I

    if-ge p4, v5, :cond_1

    invoke-virtual {p1, p4}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$ExpressionTarget;->charAt(I)C

    move-result v5

    invoke-static {v5}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->isEOLChar(I)Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_0

    :cond_3
    iget v5, p3, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->limit:I

    if-eq p4, v5, :cond_0

    add-int/lit8 v5, p4, 0x1

    iget v6, p3, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->limit:I

    if-ne v5, v6, :cond_4

    invoke-virtual {p1, p4}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$ExpressionTarget;->charAt(I)C

    move-result v5

    invoke-static {v5}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->isEOLChar(I)Z

    move-result v5

    if-nez v5, :cond_0

    :cond_4
    add-int/lit8 v5, p4, 0x2

    iget v6, p3, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->limit:I

    if-ne v5, v6, :cond_1

    invoke-virtual {p1, p4}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$ExpressionTarget;->charAt(I)C

    move-result v5

    const/16 v6, 0xd

    if-ne v5, v6, :cond_1

    add-int/lit8 v5, p4, 0x1

    invoke-virtual {p1, v5}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$ExpressionTarget;->charAt(I)C

    move-result v5

    if-eq v5, v8, :cond_0

    goto :goto_0

    :sswitch_3
    iget v5, p3, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->start:I

    if-eq p4, v5, :cond_0

    goto/16 :goto_0

    :sswitch_4
    iget v5, p3, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->limit:I

    if-eq p4, v5, :cond_0

    add-int/lit8 v5, p4, 0x1

    iget v6, p3, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->limit:I

    if-ne v5, v6, :cond_5

    invoke-virtual {p1, p4}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$ExpressionTarget;->charAt(I)C

    move-result v5

    invoke-static {v5}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->isEOLChar(I)Z

    move-result v5

    if-nez v5, :cond_0

    :cond_5
    add-int/lit8 v5, p4, 0x2

    iget v6, p3, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->limit:I

    if-ne v5, v6, :cond_1

    invoke-virtual {p1, p4}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$ExpressionTarget;->charAt(I)C

    move-result v5

    const/16 v6, 0xd

    if-ne v5, v6, :cond_1

    add-int/lit8 v5, p4, 0x1

    invoke-virtual {p1, v5}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$ExpressionTarget;->charAt(I)C

    move-result v5

    if-eq v5, v8, :cond_0

    goto/16 :goto_0

    :sswitch_5
    iget v5, p3, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->limit:I

    if-eq p4, v5, :cond_0

    goto/16 :goto_0

    :sswitch_6
    iget v5, p3, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->length:I

    if-eqz v5, :cond_1

    iget v5, p3, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->start:I

    iget v6, p3, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->limit:I

    invoke-static {p1, v5, v6, p4, p5}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->getWordType(Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$ExpressionTarget;IIII)I

    move-result v0

    if-eqz v0, :cond_1

    iget v5, p3, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->start:I

    iget v6, p3, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->limit:I

    invoke-static {p1, v5, v6, p4, p5}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->getPreviousWordType(Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$ExpressionTarget;IIII)I

    move-result v1

    if-ne v0, v1, :cond_0

    goto/16 :goto_0

    :sswitch_7
    iget v5, p3, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->length:I

    if-nez v5, :cond_6

    const/4 v2, 0x1

    :goto_1
    if-nez v2, :cond_0

    goto/16 :goto_0

    :cond_6
    iget v5, p3, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->start:I

    iget v6, p3, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->limit:I

    invoke-static {p1, v5, v6, p4, p5}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->getWordType(Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$ExpressionTarget;IIII)I

    move-result v0

    if-eqz v0, :cond_7

    iget v5, p3, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->start:I

    iget v6, p3, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->limit:I

    invoke-static {p1, v5, v6, p4, p5}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->getPreviousWordType(Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$ExpressionTarget;IIII)I

    move-result v5

    if-eq v0, v5, :cond_7

    move v2, v3

    :goto_2
    goto :goto_1

    :cond_7
    move v2, v4

    goto :goto_2

    :sswitch_8
    iget v5, p3, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->length:I

    if-eqz v5, :cond_1

    iget v5, p3, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->limit:I

    if-eq p4, v5, :cond_1

    iget v5, p3, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->start:I

    iget v6, p3, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->limit:I

    invoke-static {p1, v5, v6, p4, p5}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->getWordType(Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$ExpressionTarget;IIII)I

    move-result v5

    if-ne v5, v4, :cond_1

    iget v5, p3, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->start:I

    iget v6, p3, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->limit:I

    invoke-static {p1, v5, v6, p4, p5}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->getPreviousWordType(Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$ExpressionTarget;IIII)I

    move-result v5

    if-eq v5, v7, :cond_0

    goto/16 :goto_0

    :sswitch_9
    iget v5, p3, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->length:I

    if-eqz v5, :cond_1

    iget v5, p3, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->start:I

    if-eq p4, v5, :cond_1

    iget v5, p3, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->start:I

    iget v6, p3, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->limit:I

    invoke-static {p1, v5, v6, p4, p5}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->getWordType(Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$ExpressionTarget;IIII)I

    move-result v5

    if-ne v5, v7, :cond_1

    iget v5, p3, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->start:I

    iget v6, p3, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->limit:I

    invoke-static {p1, v5, v6, p4, p5}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->getPreviousWordType(Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$ExpressionTarget;IIII)I

    move-result v5

    if-eq v5, v4, :cond_0

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x24 -> :sswitch_2
        0x3c -> :sswitch_8
        0x3e -> :sswitch_9
        0x40 -> :sswitch_1
        0x41 -> :sswitch_3
        0x42 -> :sswitch_7
        0x5a -> :sswitch_4
        0x5e -> :sswitch_0
        0x62 -> :sswitch_6
        0x7a -> :sswitch_5
    .end sparse-switch
.end method

.method public matches(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->matches(Ljava/lang/String;IILmf/org/apache/xerces/impl/xpath/regex/Match;)Z

    move-result v0

    return v0
.end method

.method public matches(Ljava/lang/String;II)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->matches(Ljava/lang/String;IILmf/org/apache/xerces/impl/xpath/regex/Match;)Z

    move-result v0

    return v0
.end method

.method public matches(Ljava/lang/String;IILmf/org/apache/xerces/impl/xpath/regex/Match;)Z
    .locals 16

    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->operations:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    if-nez v3, :cond_0

    invoke-virtual/range {p0 .. p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->prepare()V

    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->context:Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;

    if-nez v3, :cond_1

    new-instance v3, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;

    invoke-direct {v3}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->context:Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;

    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->context:Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;

    monitor-enter v5

    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->context:Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;

    iget-boolean v3, v3, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->inuse:Z

    if-eqz v3, :cond_4

    new-instance v3, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;

    invoke-direct {v3}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;-><init>()V

    move-object v4, v3

    :goto_0
    move-object/from16 v0, p0

    iget v3, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->numberOfClosures:I

    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v4, v0, v1, v2, v3}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->reset(Ljava/lang/String;III)V

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz p4, :cond_5

    move-object/from16 v0, p0

    iget v3, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->nofparen:I

    move-object/from16 v0, p4

    invoke-virtual {v0, v3}, Lmf/org/apache/xerces/impl/xpath/regex/Match;->setNumberOfGroups(I)V

    move-object/from16 v0, p4

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/xpath/regex/Match;->setSource(Ljava/lang/String;)V

    :cond_2
    :goto_1
    move-object/from16 v0, p4

    iput-object v0, v4, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->match:Lmf/org/apache/xerces/impl/xpath/regex/Match;

    move-object/from16 v0, p0

    iget v3, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->options:I

    const/16 v5, 0x200

    invoke-static {v3, v5}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->isSet(II)Z

    move-result v3

    if-eqz v3, :cond_7

    move-object/from16 v0, p0

    iget-object v5, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->operations:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    iget v6, v4, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->start:I

    const/4 v7, 0x1

    move-object/from16 v0, p0

    iget v8, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->options:I

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->match(Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;Lmf/org/apache/xerces/impl/xpath/regex/Op;III)I

    move-result v11

    iget v3, v4, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->limit:I

    if-ne v11, v3, :cond_6

    iget-object v3, v4, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->match:Lmf/org/apache/xerces/impl/xpath/regex/Match;

    if-eqz v3, :cond_3

    iget-object v3, v4, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->match:Lmf/org/apache/xerces/impl/xpath/regex/Match;

    const/4 v5, 0x0

    iget v7, v4, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->start:I

    invoke-virtual {v3, v5, v7}, Lmf/org/apache/xerces/impl/xpath/regex/Match;->setBeginning(II)V

    iget-object v3, v4, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->match:Lmf/org/apache/xerces/impl/xpath/regex/Match;

    const/4 v5, 0x0

    invoke-virtual {v3, v5, v11}, Lmf/org/apache/xerces/impl/xpath/regex/Match;->setEnd(II)V

    :cond_3
    const/4 v3, 0x0

    invoke-virtual {v4, v3}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->setInUse(Z)V

    const/4 v3, 0x1

    :goto_2
    return v3

    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    :cond_4
    :try_start_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->context:Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;

    goto :goto_0

    :catchall_1
    move-exception v3

    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v3

    :cond_5
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->hasBackReferences:Z

    if-eqz v3, :cond_2

    new-instance p4, Lmf/org/apache/xerces/impl/xpath/regex/Match;

    invoke-direct/range {p4 .. p4}, Lmf/org/apache/xerces/impl/xpath/regex/Match;-><init>()V

    move-object/from16 v0, p0

    iget v3, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->nofparen:I

    move-object/from16 v0, p4

    invoke-virtual {v0, v3}, Lmf/org/apache/xerces/impl/xpath/regex/Match;->setNumberOfGroups(I)V

    goto :goto_1

    :cond_6
    const/4 v3, 0x0

    goto :goto_2

    :cond_7
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->fixedStringOnly:Z

    if-eqz v3, :cond_a

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->fixedStringTable:Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;

    iget v5, v4, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->start:I

    iget v7, v4, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->limit:I

    move-object/from16 v0, p1

    invoke-virtual {v3, v0, v5, v7}, Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;->matches(Ljava/lang/String;II)I

    move-result v13

    if-ltz v13, :cond_9

    iget-object v3, v4, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->match:Lmf/org/apache/xerces/impl/xpath/regex/Match;

    if-eqz v3, :cond_8

    iget-object v3, v4, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->match:Lmf/org/apache/xerces/impl/xpath/regex/Match;

    const/4 v5, 0x0

    invoke-virtual {v3, v5, v13}, Lmf/org/apache/xerces/impl/xpath/regex/Match;->setBeginning(II)V

    iget-object v3, v4, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->match:Lmf/org/apache/xerces/impl/xpath/regex/Match;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->fixedString:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v7, v13

    invoke-virtual {v3, v5, v7}, Lmf/org/apache/xerces/impl/xpath/regex/Match;->setEnd(II)V

    :cond_8
    const/4 v3, 0x0

    invoke-virtual {v4, v3}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->setInUse(Z)V

    const/4 v3, 0x1

    goto :goto_2

    :cond_9
    const/4 v3, 0x0

    invoke-virtual {v4, v3}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->setInUse(Z)V

    const/4 v3, 0x0

    goto :goto_2

    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->fixedString:Ljava/lang/String;

    if-eqz v3, :cond_b

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->fixedStringTable:Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;

    iget v5, v4, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->start:I

    iget v7, v4, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->limit:I

    move-object/from16 v0, p1

    invoke-virtual {v3, v0, v5, v7}, Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;->matches(Ljava/lang/String;II)I

    move-result v13

    if-gez v13, :cond_b

    const/4 v3, 0x0

    invoke-virtual {v4, v3}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->setInUse(Z)V

    const/4 v3, 0x0

    goto :goto_2

    :cond_b
    iget v3, v4, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->limit:I

    move-object/from16 v0, p0

    iget v5, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->minlength:I

    sub-int v10, v3, v5

    const/4 v11, -0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->operations:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    if-eqz v3, :cond_11

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->operations:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    iget v3, v3, Lmf/org/apache/xerces/impl/xpath/regex/Op;->type:I

    const/4 v5, 0x7

    if-ne v3, v5, :cond_11

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->operations:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/xpath/regex/Op;->getChild()Lmf/org/apache/xerces/impl/xpath/regex/Op;

    move-result-object v3

    iget v3, v3, Lmf/org/apache/xerces/impl/xpath/regex/Op;->type:I

    if-nez v3, :cond_11

    move-object/from16 v0, p0

    iget v3, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->options:I

    const/4 v5, 0x4

    invoke-static {v3, v5}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->isSet(II)Z

    move-result v3

    if-eqz v3, :cond_e

    iget v12, v4, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->start:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->operations:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    iget v6, v4, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->start:I

    const/4 v7, 0x1

    move-object/from16 v0, p0

    iget v8, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->options:I

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->match(Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;Lmf/org/apache/xerces/impl/xpath/regex/Op;III)I

    move-result v11

    move v6, v12

    :cond_c
    :goto_3
    if-ltz v11, :cond_16

    iget-object v3, v4, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->match:Lmf/org/apache/xerces/impl/xpath/regex/Match;

    if-eqz v3, :cond_d

    iget-object v3, v4, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->match:Lmf/org/apache/xerces/impl/xpath/regex/Match;

    const/4 v5, 0x0

    invoke-virtual {v3, v5, v6}, Lmf/org/apache/xerces/impl/xpath/regex/Match;->setBeginning(II)V

    iget-object v3, v4, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->match:Lmf/org/apache/xerces/impl/xpath/regex/Match;

    const/4 v5, 0x0

    invoke-virtual {v3, v5, v11}, Lmf/org/apache/xerces/impl/xpath/regex/Match;->setEnd(II)V

    :cond_d
    const/4 v3, 0x0

    invoke-virtual {v4, v3}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->setInUse(Z)V

    const/4 v3, 0x1

    goto/16 :goto_2

    :cond_e
    const/4 v14, 0x1

    iget v6, v4, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->start:I

    :goto_4
    if-gt v6, v10, :cond_c

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-static {v9}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->isEOLChar(I)Z

    move-result v3

    if-eqz v3, :cond_f

    const/4 v14, 0x1

    :goto_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_f
    if-eqz v14, :cond_10

    move-object/from16 v0, p0

    iget-object v5, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->operations:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    const/4 v7, 0x1

    move-object/from16 v0, p0

    iget v8, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->options:I

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->match(Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;Lmf/org/apache/xerces/impl/xpath/regex/Op;III)I

    move-result v11

    if-gez v11, :cond_c

    :cond_10
    const/4 v14, 0x0

    goto :goto_5

    :cond_11
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->firstChar:Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;

    if-eqz v3, :cond_15

    move-object/from16 v0, p0

    iget-object v15, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->firstChar:Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;

    iget v6, v4, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->start:I

    :goto_6
    if-gt v6, v10, :cond_c

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-static {v9}, Lmf/org/apache/xerces/impl/xpath/regex/REUtil;->isHighSurrogate(I)Z

    move-result v3

    if-eqz v3, :cond_12

    add-int/lit8 v3, v6, 0x1

    iget v5, v4, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->limit:I

    if-ge v3, v5, :cond_12

    add-int/lit8 v3, v6, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v9, v3}, Lmf/org/apache/xerces/impl/xpath/regex/REUtil;->composeFromSurrogates(II)I

    move-result v9

    :cond_12
    invoke-virtual {v15, v9}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->match(I)Z

    move-result v3

    if-nez v3, :cond_14

    :cond_13
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    :cond_14
    move-object/from16 v0, p0

    iget-object v5, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->operations:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    const/4 v7, 0x1

    move-object/from16 v0, p0

    iget v8, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->options:I

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->match(Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;Lmf/org/apache/xerces/impl/xpath/regex/Op;III)I

    move-result v11

    if-ltz v11, :cond_13

    goto/16 :goto_3

    :cond_15
    iget v6, v4, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->start:I

    :goto_7
    if-gt v6, v10, :cond_c

    move-object/from16 v0, p0

    iget-object v5, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->operations:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    const/4 v7, 0x1

    move-object/from16 v0, p0

    iget v8, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->options:I

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->match(Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;Lmf/org/apache/xerces/impl/xpath/regex/Op;III)I

    move-result v11

    if-gez v11, :cond_c

    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    :cond_16
    const/4 v3, 0x0

    invoke-virtual {v4, v3}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->setInUse(Z)V

    const/4 v3, 0x0

    goto/16 :goto_2
.end method

.method public matches(Ljava/lang/String;Lmf/org/apache/xerces/impl/xpath/regex/Match;)Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1, p2}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->matches(Ljava/lang/String;IILmf/org/apache/xerces/impl/xpath/regex/Match;)Z

    move-result v0

    return v0
.end method

.method public matches(Ljava/text/CharacterIterator;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->matches(Ljava/text/CharacterIterator;Lmf/org/apache/xerces/impl/xpath/regex/Match;)Z

    move-result v0

    return v0
.end method

.method public matches(Ljava/text/CharacterIterator;Lmf/org/apache/xerces/impl/xpath/regex/Match;)Z
    .locals 17

    invoke-interface/range {p1 .. p1}, Ljava/text/CharacterIterator;->getBeginIndex()I

    move-result v16

    invoke-interface/range {p1 .. p1}, Ljava/text/CharacterIterator;->getEndIndex()I

    move-result v9

    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->operations:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    if-nez v2, :cond_0

    invoke-virtual/range {p0 .. p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->prepare()V

    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->context:Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;

    if-nez v2, :cond_1

    new-instance v2, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;

    invoke-direct {v2}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->context:Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;

    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->context:Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;

    monitor-enter v4

    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->context:Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;

    iget-boolean v2, v2, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->inuse:Z

    if-eqz v2, :cond_4

    new-instance v2, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;

    invoke-direct {v2}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;-><init>()V

    move-object v3, v2

    :goto_0
    move-object/from16 v0, p0

    iget v2, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->numberOfClosures:I

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v3, v0, v1, v9, v2}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->reset(Ljava/text/CharacterIterator;III)V

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz p2, :cond_5

    move-object/from16 v0, p0

    iget v2, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->nofparen:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lmf/org/apache/xerces/impl/xpath/regex/Match;->setNumberOfGroups(I)V

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/xpath/regex/Match;->setSource(Ljava/text/CharacterIterator;)V

    :cond_2
    :goto_1
    move-object/from16 v0, p2

    iput-object v0, v3, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->match:Lmf/org/apache/xerces/impl/xpath/regex/Match;

    move-object/from16 v0, p0

    iget v2, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->options:I

    const/16 v4, 0x200

    invoke-static {v2, v4}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->isSet(II)Z

    move-result v2

    if-eqz v2, :cond_7

    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->operations:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    iget v5, v3, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->start:I

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget v7, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->options:I

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->match(Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;Lmf/org/apache/xerces/impl/xpath/regex/Op;III)I

    move-result v11

    iget v2, v3, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->limit:I

    if-ne v11, v2, :cond_6

    iget-object v2, v3, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->match:Lmf/org/apache/xerces/impl/xpath/regex/Match;

    if-eqz v2, :cond_3

    iget-object v2, v3, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->match:Lmf/org/apache/xerces/impl/xpath/regex/Match;

    const/4 v4, 0x0

    iget v6, v3, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->start:I

    invoke-virtual {v2, v4, v6}, Lmf/org/apache/xerces/impl/xpath/regex/Match;->setBeginning(II)V

    iget-object v2, v3, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->match:Lmf/org/apache/xerces/impl/xpath/regex/Match;

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v11}, Lmf/org/apache/xerces/impl/xpath/regex/Match;->setEnd(II)V

    :cond_3
    const/4 v2, 0x0

    invoke-virtual {v3, v2}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->setInUse(Z)V

    const/4 v2, 0x1

    :goto_2
    return v2

    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    :cond_4
    :try_start_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->context:Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;

    goto :goto_0

    :catchall_1
    move-exception v2

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2

    :cond_5
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->hasBackReferences:Z

    if-eqz v2, :cond_2

    new-instance p2, Lmf/org/apache/xerces/impl/xpath/regex/Match;

    invoke-direct/range {p2 .. p2}, Lmf/org/apache/xerces/impl/xpath/regex/Match;-><init>()V

    move-object/from16 v0, p0

    iget v2, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->nofparen:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lmf/org/apache/xerces/impl/xpath/regex/Match;->setNumberOfGroups(I)V

    goto :goto_1

    :cond_6
    const/4 v2, 0x0

    goto :goto_2

    :cond_7
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->fixedStringOnly:Z

    if-eqz v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->fixedStringTable:Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;

    iget v4, v3, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->start:I

    iget v6, v3, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->limit:I

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v4, v6}, Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;->matches(Ljava/text/CharacterIterator;II)I

    move-result v13

    if-ltz v13, :cond_9

    iget-object v2, v3, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->match:Lmf/org/apache/xerces/impl/xpath/regex/Match;

    if-eqz v2, :cond_8

    iget-object v2, v3, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->match:Lmf/org/apache/xerces/impl/xpath/regex/Match;

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v13}, Lmf/org/apache/xerces/impl/xpath/regex/Match;->setBeginning(II)V

    iget-object v2, v3, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->match:Lmf/org/apache/xerces/impl/xpath/regex/Match;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->fixedString:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v6, v13

    invoke-virtual {v2, v4, v6}, Lmf/org/apache/xerces/impl/xpath/regex/Match;->setEnd(II)V

    :cond_8
    const/4 v2, 0x0

    invoke-virtual {v3, v2}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->setInUse(Z)V

    const/4 v2, 0x1

    goto :goto_2

    :cond_9
    const/4 v2, 0x0

    invoke-virtual {v3, v2}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->setInUse(Z)V

    const/4 v2, 0x0

    goto :goto_2

    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->fixedString:Ljava/lang/String;

    if-eqz v2, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->fixedStringTable:Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;

    iget v4, v3, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->start:I

    iget v6, v3, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->limit:I

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v4, v6}, Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;->matches(Ljava/text/CharacterIterator;II)I

    move-result v13

    if-gez v13, :cond_b

    const/4 v2, 0x0

    invoke-virtual {v3, v2}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->setInUse(Z)V

    const/4 v2, 0x0

    goto :goto_2

    :cond_b
    iget v2, v3, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->limit:I

    move-object/from16 v0, p0

    iget v4, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->minlength:I

    sub-int v10, v2, v4

    const/4 v11, -0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->operations:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    if-eqz v2, :cond_11

    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->operations:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    iget v2, v2, Lmf/org/apache/xerces/impl/xpath/regex/Op;->type:I

    const/4 v4, 0x7

    if-ne v2, v4, :cond_11

    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->operations:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/xpath/regex/Op;->getChild()Lmf/org/apache/xerces/impl/xpath/regex/Op;

    move-result-object v2

    iget v2, v2, Lmf/org/apache/xerces/impl/xpath/regex/Op;->type:I

    if-nez v2, :cond_11

    move-object/from16 v0, p0

    iget v2, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->options:I

    const/4 v4, 0x4

    invoke-static {v2, v4}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->isSet(II)Z

    move-result v2

    if-eqz v2, :cond_e

    iget v12, v3, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->start:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->operations:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    iget v5, v3, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->start:I

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget v7, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->options:I

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->match(Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;Lmf/org/apache/xerces/impl/xpath/regex/Op;III)I

    move-result v11

    move v5, v12

    :cond_c
    :goto_3
    if-ltz v11, :cond_16

    iget-object v2, v3, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->match:Lmf/org/apache/xerces/impl/xpath/regex/Match;

    if-eqz v2, :cond_d

    iget-object v2, v3, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->match:Lmf/org/apache/xerces/impl/xpath/regex/Match;

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v5}, Lmf/org/apache/xerces/impl/xpath/regex/Match;->setBeginning(II)V

    iget-object v2, v3, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->match:Lmf/org/apache/xerces/impl/xpath/regex/Match;

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v11}, Lmf/org/apache/xerces/impl/xpath/regex/Match;->setEnd(II)V

    :cond_d
    const/4 v2, 0x0

    invoke-virtual {v3, v2}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->setInUse(Z)V

    const/4 v2, 0x1

    goto/16 :goto_2

    :cond_e
    const/4 v14, 0x1

    iget v5, v3, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->start:I

    :goto_4
    if-gt v5, v10, :cond_c

    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Ljava/text/CharacterIterator;->setIndex(I)C

    move-result v8

    invoke-static {v8}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->isEOLChar(I)Z

    move-result v2

    if-eqz v2, :cond_f

    const/4 v14, 0x1

    :goto_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_f
    if-eqz v14, :cond_10

    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->operations:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget v7, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->options:I

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->match(Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;Lmf/org/apache/xerces/impl/xpath/regex/Op;III)I

    move-result v11

    if-gez v11, :cond_c

    :cond_10
    const/4 v14, 0x0

    goto :goto_5

    :cond_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->firstChar:Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;

    if-eqz v2, :cond_15

    move-object/from16 v0, p0

    iget-object v15, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->firstChar:Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;

    iget v5, v3, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->start:I

    :goto_6
    if-gt v5, v10, :cond_c

    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Ljava/text/CharacterIterator;->setIndex(I)C

    move-result v8

    invoke-static {v8}, Lmf/org/apache/xerces/impl/xpath/regex/REUtil;->isHighSurrogate(I)Z

    move-result v2

    if-eqz v2, :cond_12

    add-int/lit8 v2, v5, 0x1

    iget v4, v3, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->limit:I

    if-ge v2, v4, :cond_12

    add-int/lit8 v2, v5, 0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljava/text/CharacterIterator;->setIndex(I)C

    move-result v2

    invoke-static {v8, v2}, Lmf/org/apache/xerces/impl/xpath/regex/REUtil;->composeFromSurrogates(II)I

    move-result v8

    :cond_12
    invoke-virtual {v15, v8}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->match(I)Z

    move-result v2

    if-nez v2, :cond_14

    :cond_13
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    :cond_14
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->operations:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget v7, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->options:I

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->match(Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;Lmf/org/apache/xerces/impl/xpath/regex/Op;III)I

    move-result v11

    if-ltz v11, :cond_13

    goto/16 :goto_3

    :cond_15
    iget v5, v3, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->start:I

    :goto_7
    if-gt v5, v10, :cond_c

    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->operations:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget v7, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->options:I

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->match(Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;Lmf/org/apache/xerces/impl/xpath/regex/Op;III)I

    move-result v11

    if-gez v11, :cond_c

    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    :cond_16
    const/4 v2, 0x0

    invoke-virtual {v3, v2}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->setInUse(Z)V

    const/4 v2, 0x0

    goto/16 :goto_2
.end method

.method public matches([C)Z
    .locals 3

    const/4 v0, 0x0

    array-length v1, p1

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->matches([CIILmf/org/apache/xerces/impl/xpath/regex/Match;)Z

    move-result v0

    return v0
.end method

.method public matches([CII)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->matches([CIILmf/org/apache/xerces/impl/xpath/regex/Match;)Z

    move-result v0

    return v0
.end method

.method public matches([CIILmf/org/apache/xerces/impl/xpath/regex/Match;)Z
    .locals 16

    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->operations:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    if-nez v3, :cond_0

    invoke-virtual/range {p0 .. p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->prepare()V

    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->context:Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;

    if-nez v3, :cond_1

    new-instance v3, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;

    invoke-direct {v3}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->context:Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;

    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->context:Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;

    monitor-enter v5

    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->context:Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;

    iget-boolean v3, v3, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->inuse:Z

    if-eqz v3, :cond_4

    new-instance v3, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;

    invoke-direct {v3}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;-><init>()V

    move-object v4, v3

    :goto_0
    move-object/from16 v0, p0

    iget v3, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->numberOfClosures:I

    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v4, v0, v1, v2, v3}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->reset([CIII)V

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz p4, :cond_5

    move-object/from16 v0, p0

    iget v3, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->nofparen:I

    move-object/from16 v0, p4

    invoke-virtual {v0, v3}, Lmf/org/apache/xerces/impl/xpath/regex/Match;->setNumberOfGroups(I)V

    move-object/from16 v0, p4

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/xpath/regex/Match;->setSource([C)V

    :cond_2
    :goto_1
    move-object/from16 v0, p4

    iput-object v0, v4, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->match:Lmf/org/apache/xerces/impl/xpath/regex/Match;

    move-object/from16 v0, p0

    iget v3, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->options:I

    const/16 v5, 0x200

    invoke-static {v3, v5}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->isSet(II)Z

    move-result v3

    if-eqz v3, :cond_7

    move-object/from16 v0, p0

    iget-object v5, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->operations:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    iget v6, v4, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->start:I

    const/4 v7, 0x1

    move-object/from16 v0, p0

    iget v8, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->options:I

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->match(Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;Lmf/org/apache/xerces/impl/xpath/regex/Op;III)I

    move-result v11

    iget v3, v4, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->limit:I

    if-ne v11, v3, :cond_6

    iget-object v3, v4, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->match:Lmf/org/apache/xerces/impl/xpath/regex/Match;

    if-eqz v3, :cond_3

    iget-object v3, v4, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->match:Lmf/org/apache/xerces/impl/xpath/regex/Match;

    const/4 v5, 0x0

    iget v7, v4, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->start:I

    invoke-virtual {v3, v5, v7}, Lmf/org/apache/xerces/impl/xpath/regex/Match;->setBeginning(II)V

    iget-object v3, v4, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->match:Lmf/org/apache/xerces/impl/xpath/regex/Match;

    const/4 v5, 0x0

    invoke-virtual {v3, v5, v11}, Lmf/org/apache/xerces/impl/xpath/regex/Match;->setEnd(II)V

    :cond_3
    const/4 v3, 0x0

    invoke-virtual {v4, v3}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->setInUse(Z)V

    const/4 v3, 0x1

    :goto_2
    return v3

    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    :cond_4
    :try_start_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->context:Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;

    goto :goto_0

    :catchall_1
    move-exception v3

    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v3

    :cond_5
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->hasBackReferences:Z

    if-eqz v3, :cond_2

    new-instance p4, Lmf/org/apache/xerces/impl/xpath/regex/Match;

    invoke-direct/range {p4 .. p4}, Lmf/org/apache/xerces/impl/xpath/regex/Match;-><init>()V

    move-object/from16 v0, p0

    iget v3, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->nofparen:I

    move-object/from16 v0, p4

    invoke-virtual {v0, v3}, Lmf/org/apache/xerces/impl/xpath/regex/Match;->setNumberOfGroups(I)V

    goto :goto_1

    :cond_6
    const/4 v3, 0x0

    goto :goto_2

    :cond_7
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->fixedStringOnly:Z

    if-eqz v3, :cond_a

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->fixedStringTable:Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;

    iget v5, v4, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->start:I

    iget v7, v4, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->limit:I

    move-object/from16 v0, p1

    invoke-virtual {v3, v0, v5, v7}, Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;->matches([CII)I

    move-result v13

    if-ltz v13, :cond_9

    iget-object v3, v4, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->match:Lmf/org/apache/xerces/impl/xpath/regex/Match;

    if-eqz v3, :cond_8

    iget-object v3, v4, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->match:Lmf/org/apache/xerces/impl/xpath/regex/Match;

    const/4 v5, 0x0

    invoke-virtual {v3, v5, v13}, Lmf/org/apache/xerces/impl/xpath/regex/Match;->setBeginning(II)V

    iget-object v3, v4, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->match:Lmf/org/apache/xerces/impl/xpath/regex/Match;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->fixedString:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v7, v13

    invoke-virtual {v3, v5, v7}, Lmf/org/apache/xerces/impl/xpath/regex/Match;->setEnd(II)V

    :cond_8
    const/4 v3, 0x0

    invoke-virtual {v4, v3}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->setInUse(Z)V

    const/4 v3, 0x1

    goto :goto_2

    :cond_9
    const/4 v3, 0x0

    invoke-virtual {v4, v3}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->setInUse(Z)V

    const/4 v3, 0x0

    goto :goto_2

    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->fixedString:Ljava/lang/String;

    if-eqz v3, :cond_b

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->fixedStringTable:Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;

    iget v5, v4, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->start:I

    iget v7, v4, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->limit:I

    move-object/from16 v0, p1

    invoke-virtual {v3, v0, v5, v7}, Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;->matches([CII)I

    move-result v13

    if-gez v13, :cond_b

    const/4 v3, 0x0

    invoke-virtual {v4, v3}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->setInUse(Z)V

    const/4 v3, 0x0

    goto :goto_2

    :cond_b
    iget v3, v4, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->limit:I

    move-object/from16 v0, p0

    iget v5, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->minlength:I

    sub-int v10, v3, v5

    const/4 v11, -0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->operations:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    if-eqz v3, :cond_11

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->operations:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    iget v3, v3, Lmf/org/apache/xerces/impl/xpath/regex/Op;->type:I

    const/4 v5, 0x7

    if-ne v3, v5, :cond_11

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->operations:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/xpath/regex/Op;->getChild()Lmf/org/apache/xerces/impl/xpath/regex/Op;

    move-result-object v3

    iget v3, v3, Lmf/org/apache/xerces/impl/xpath/regex/Op;->type:I

    if-nez v3, :cond_11

    move-object/from16 v0, p0

    iget v3, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->options:I

    const/4 v5, 0x4

    invoke-static {v3, v5}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->isSet(II)Z

    move-result v3

    if-eqz v3, :cond_e

    iget v12, v4, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->start:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->operations:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    iget v6, v4, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->start:I

    const/4 v7, 0x1

    move-object/from16 v0, p0

    iget v8, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->options:I

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->match(Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;Lmf/org/apache/xerces/impl/xpath/regex/Op;III)I

    move-result v11

    move v6, v12

    :cond_c
    :goto_3
    if-ltz v11, :cond_16

    iget-object v3, v4, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->match:Lmf/org/apache/xerces/impl/xpath/regex/Match;

    if-eqz v3, :cond_d

    iget-object v3, v4, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->match:Lmf/org/apache/xerces/impl/xpath/regex/Match;

    const/4 v5, 0x0

    invoke-virtual {v3, v5, v6}, Lmf/org/apache/xerces/impl/xpath/regex/Match;->setBeginning(II)V

    iget-object v3, v4, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->match:Lmf/org/apache/xerces/impl/xpath/regex/Match;

    const/4 v5, 0x0

    invoke-virtual {v3, v5, v11}, Lmf/org/apache/xerces/impl/xpath/regex/Match;->setEnd(II)V

    :cond_d
    const/4 v3, 0x0

    invoke-virtual {v4, v3}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->setInUse(Z)V

    const/4 v3, 0x1

    goto/16 :goto_2

    :cond_e
    const/4 v14, 0x1

    iget v6, v4, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->start:I

    :goto_4
    if-gt v6, v10, :cond_c

    aget-char v9, p1, v6

    invoke-static {v9}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->isEOLChar(I)Z

    move-result v3

    if-eqz v3, :cond_f

    const/4 v14, 0x1

    :goto_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_f
    if-eqz v14, :cond_10

    move-object/from16 v0, p0

    iget-object v5, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->operations:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    const/4 v7, 0x1

    move-object/from16 v0, p0

    iget v8, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->options:I

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->match(Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;Lmf/org/apache/xerces/impl/xpath/regex/Op;III)I

    move-result v11

    if-gez v11, :cond_c

    :cond_10
    const/4 v14, 0x0

    goto :goto_5

    :cond_11
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->firstChar:Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;

    if-eqz v3, :cond_15

    move-object/from16 v0, p0

    iget-object v15, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->firstChar:Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;

    iget v6, v4, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->start:I

    :goto_6
    if-gt v6, v10, :cond_c

    aget-char v9, p1, v6

    invoke-static {v9}, Lmf/org/apache/xerces/impl/xpath/regex/REUtil;->isHighSurrogate(I)Z

    move-result v3

    if-eqz v3, :cond_12

    add-int/lit8 v3, v6, 0x1

    iget v5, v4, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->limit:I

    if-ge v3, v5, :cond_12

    add-int/lit8 v3, v6, 0x1

    aget-char v3, p1, v3

    invoke-static {v9, v3}, Lmf/org/apache/xerces/impl/xpath/regex/REUtil;->composeFromSurrogates(II)I

    move-result v9

    :cond_12
    invoke-virtual {v15, v9}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->match(I)Z

    move-result v3

    if-nez v3, :cond_14

    :cond_13
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    :cond_14
    move-object/from16 v0, p0

    iget-object v5, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->operations:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    const/4 v7, 0x1

    move-object/from16 v0, p0

    iget v8, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->options:I

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->match(Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;Lmf/org/apache/xerces/impl/xpath/regex/Op;III)I

    move-result v11

    if-ltz v11, :cond_13

    goto :goto_3

    :cond_15
    iget v6, v4, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->start:I

    :goto_7
    if-gt v6, v10, :cond_c

    move-object/from16 v0, p0

    iget-object v5, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->operations:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    const/4 v7, 0x1

    move-object/from16 v0, p0

    iget v8, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->options:I

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->match(Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;Lmf/org/apache/xerces/impl/xpath/regex/Op;III)I

    move-result v11

    if-gez v11, :cond_c

    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    :cond_16
    const/4 v3, 0x0

    invoke-virtual {v4, v3}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$Context;->setInUse(Z)V

    const/4 v3, 0x0

    goto/16 :goto_2
.end method

.method public matches([CLmf/org/apache/xerces/impl/xpath/regex/Match;)Z
    .locals 2

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1, p2}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->matches([CIILmf/org/apache/xerces/impl/xpath/regex/Match;)Z

    move-result v0

    return v0
.end method

.method prepare()V
    .locals 11

    const/4 v10, 0x6

    const/4 v5, 0x0

    const/16 v9, 0x100

    const/4 v8, 0x2

    const/4 v7, 0x1

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->tokentree:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    invoke-direct {p0, v4}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->compile(Lmf/org/apache/xerces/impl/xpath/regex/Token;)V

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->tokentree:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    invoke-virtual {v4}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getMinLength()I

    move-result v4

    iput v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->minlength:I

    iput-object v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->firstChar:Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;

    iget v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->options:I

    const/16 v6, 0x80

    invoke-static {v4, v6}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->isSet(II)Z

    move-result v4

    if-nez v4, :cond_0

    iget v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->options:I

    const/16 v6, 0x200

    invoke-static {v4, v6}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->isSet(II)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->createRange()Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;

    move-result-object v2

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->tokentree:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    iget v6, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->options:I

    invoke-virtual {v4, v2, v6}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->analyzeFirstCharacter(Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;I)I

    move-result v3

    if-ne v3, v7, :cond_0

    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->compactRanges()V

    iput-object v2, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->firstChar:Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;

    :cond_0
    iget-object v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->operations:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->operations:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    iget v4, v4, Lmf/org/apache/xerces/impl/xpath/regex/Op;->type:I

    if-eq v4, v10, :cond_1

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->operations:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    iget v4, v4, Lmf/org/apache/xerces/impl/xpath/regex/Op;->type:I

    if-ne v4, v7, :cond_5

    :cond_1
    iget-object v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->operations:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    iget-object v4, v4, Lmf/org/apache/xerces/impl/xpath/regex/Op;->next:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    if-nez v4, :cond_5

    iput-boolean v7, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->fixedStringOnly:Z

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->operations:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    iget v4, v4, Lmf/org/apache/xerces/impl/xpath/regex/Op;->type:I

    if-ne v4, v10, :cond_3

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->operations:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    invoke-virtual {v4}, Lmf/org/apache/xerces/impl/xpath/regex/Op;->getString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->fixedString:Ljava/lang/String;

    :goto_0
    iget v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->options:I

    iput v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->fixedStringOptions:I

    new-instance v4, Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->fixedString:Ljava/lang/String;

    iget v6, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->fixedStringOptions:I

    invoke-static {v6, v8}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->isSet(II)Z

    move-result v6

    invoke-direct {v4, v5, v9, v6}, Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;-><init>(Ljava/lang/String;IZ)V

    iput-object v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->fixedStringTable:Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;

    :cond_2
    :goto_1
    return-void

    :cond_3
    iget-object v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->operations:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    invoke-virtual {v4}, Lmf/org/apache/xerces/impl/xpath/regex/Op;->getData()I

    move-result v4

    const/high16 v5, 0x10000

    if-lt v4, v5, :cond_4

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->operations:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    invoke-virtual {v4}, Lmf/org/apache/xerces/impl/xpath/regex/Op;->getData()I

    move-result v4

    invoke-static {v4}, Lmf/org/apache/xerces/impl/xpath/regex/REUtil;->decomposeToSurrogates(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->fixedString:Ljava/lang/String;

    goto :goto_0

    :cond_4
    new-array v0, v7, [C

    const/4 v4, 0x0

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->operations:Lmf/org/apache/xerces/impl/xpath/regex/Op;

    invoke-virtual {v5}, Lmf/org/apache/xerces/impl/xpath/regex/Op;->getData()I

    move-result v5

    int-to-char v5, v5

    aput-char v5, v0, v4

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v0}, Ljava/lang/String;-><init>([C)V

    iput-object v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->fixedString:Ljava/lang/String;

    goto :goto_0

    :cond_5
    iget v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->options:I

    invoke-static {v4, v9}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->isSet(II)Z

    move-result v4

    if-nez v4, :cond_2

    iget v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->options:I

    const/16 v6, 0x200

    invoke-static {v4, v6}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->isSet(II)Z

    move-result v4

    if-nez v4, :cond_2

    new-instance v1, Lmf/org/apache/xerces/impl/xpath/regex/Token$FixedStringContainer;

    invoke-direct {v1}, Lmf/org/apache/xerces/impl/xpath/regex/Token$FixedStringContainer;-><init>()V

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->tokentree:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    iget v6, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->options:I

    invoke-virtual {v4, v1, v6}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->findFixedString(Lmf/org/apache/xerces/impl/xpath/regex/Token$FixedStringContainer;I)V

    iget-object v4, v1, Lmf/org/apache/xerces/impl/xpath/regex/Token$FixedStringContainer;->token:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    if-nez v4, :cond_7

    move-object v4, v5

    :goto_2
    iput-object v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->fixedString:Ljava/lang/String;

    iget v4, v1, Lmf/org/apache/xerces/impl/xpath/regex/Token$FixedStringContainer;->options:I

    iput v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->fixedStringOptions:I

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->fixedString:Ljava/lang/String;

    if-eqz v4, :cond_6

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->fixedString:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v4, v8, :cond_6

    iput-object v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->fixedString:Ljava/lang/String;

    :cond_6
    iget-object v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->fixedString:Ljava/lang/String;

    if-eqz v4, :cond_2

    new-instance v4, Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->fixedString:Ljava/lang/String;

    iget v6, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->fixedStringOptions:I

    invoke-static {v6, v8}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->isSet(II)Z

    move-result v6

    invoke-direct {v4, v5, v9, v6}, Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;-><init>(Ljava/lang/String;IZ)V

    iput-object v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->fixedStringTable:Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;

    goto :goto_1

    :cond_7
    iget-object v4, v1, Lmf/org/apache/xerces/impl/xpath/regex/Token$FixedStringContainer;->token:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    invoke-virtual {v4}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getString()Ljava/lang/String;

    move-result-object v4

    goto :goto_2
.end method

.method public setPattern(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xpath/regex/ParseException;
        }
    .end annotation

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->setPattern(Ljava/lang/String;Ljava/util/Locale;)V

    return-void
.end method

.method public setPattern(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xpath/regex/ParseException;
        }
    .end annotation

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->setPattern(Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;)V

    return-void
.end method

.method public setPattern(Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xpath/regex/ParseException;
        }
    .end annotation

    invoke-static {p2}, Lmf/org/apache/xerces/impl/xpath/regex/REUtil;->parseOptions(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, p1, v0, p3}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->setPattern(Ljava/lang/String;ILjava/util/Locale;)V

    return-void
.end method

.method public setPattern(Ljava/lang/String;Ljava/util/Locale;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xpath/regex/ParseException;
        }
    .end annotation

    iget v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->options:I

    invoke-direct {p0, p1, v0, p2}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->setPattern(Ljava/lang/String;ILjava/util/Locale;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->tokentree:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    iget v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->options:I

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
