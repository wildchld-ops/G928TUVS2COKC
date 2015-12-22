.class Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;
.super Ljava/lang/Object;
.source "RegexParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmf/org/apache/xerces/impl/xpath/regex/RegexParser$ReferencePosition;
    }
.end annotation


# static fields
.field protected static final S_INBRACKETS:I = 0x1

.field protected static final S_INXBRACKETS:I = 0x2

.field protected static final S_NORMAL:I = 0x0

.field static final T_BACKSOLIDUS:I = 0xa

.field static final T_CARET:I = 0xb

.field static final T_CHAR:I = 0x0

.field static final T_COMMENT:I = 0x15

.field static final T_CONDITION:I = 0x17

.field static final T_DOLLAR:I = 0xc

.field static final T_DOT:I = 0x8

.field static final T_EOF:I = 0x1

.field static final T_INDEPENDENT:I = 0x12

.field static final T_LBRACKET:I = 0x9

.field static final T_LOOKAHEAD:I = 0xe

.field static final T_LOOKBEHIND:I = 0x10

.field static final T_LPAREN:I = 0x6

.field static final T_LPAREN2:I = 0xd

.field static final T_MODIFIERS:I = 0x16

.field static final T_NEGATIVELOOKAHEAD:I = 0xf

.field static final T_NEGATIVELOOKBEHIND:I = 0x11

.field static final T_OR:I = 0x2

.field static final T_PLUS:I = 0x4

.field static final T_POSIX_CHARCLASS_START:I = 0x14

.field static final T_QUESTION:I = 0x5

.field static final T_RPAREN:I = 0x7

.field static final T_SET_OPERATIONS:I = 0x13

.field static final T_STAR:I = 0x3

.field static final T_XMLSCHEMA_CC_SUBTRACTION:I = 0x18


# instance fields
.field chardata:I

.field context:I

.field hasBackReferences:Z

.field nexttoken:I

.field offset:I

.field options:I

.field parenOpened:I

.field parennumber:I

.field references:Ljava/util/Vector;

.field regex:Ljava/lang/String;

.field regexlen:I

.field resources:Ljava/util/ResourceBundle;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->context:I

    iput v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->parenOpened:I

    iput v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->parennumber:I

    const/4 v0, 0x0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->references:Ljava/util/Vector;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->setLocale(Ljava/util/Locale;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;)V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->context:I

    iput v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->parenOpened:I

    iput v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->parennumber:I

    const/4 v0, 0x0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->references:Ljava/util/Vector;

    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->setLocale(Ljava/util/Locale;)V

    return-void
.end method

.method protected static final addCaseInsensitiveChar(Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;I)V
    .locals 4

    invoke-static {p1}, Lmf/org/apache/xerces/impl/xpath/regex/CaseInsensitiveMap;->get(I)[I

    move-result-object v0

    invoke-virtual {p0, p1, p1}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->addRange(II)V

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-lt v1, v2, :cond_1

    :cond_0
    return-void

    :cond_1
    aget v2, v0, v1

    aget v3, v0, v1

    invoke-virtual {p0, v2, v3}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->addRange(II)V

    add-int/lit8 v1, v1, 0x2

    goto :goto_0
.end method

.method protected static final addCaseInsensitiveCharRange(Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;II)V
    .locals 7

    if-gt p1, p2, :cond_0

    move v3, p1

    move v4, p2

    :goto_0
    invoke-virtual {p0, v3, v4}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->addRange(II)V

    move v1, v3

    :goto_1
    if-le v1, v4, :cond_1

    return-void

    :cond_0
    move v3, p2

    move v4, p1

    goto :goto_0

    :cond_1
    invoke-static {v1}, Lmf/org/apache/xerces/impl/xpath/regex/CaseInsensitiveMap;->get(I)[I

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v2, 0x0

    :goto_2
    array-length v5, v0

    if-lt v2, v5, :cond_3

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    aget v5, v0, v2

    aget v6, v0, v2

    invoke-virtual {p0, v5, v6}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->addRange(II)V

    add-int/lit8 v2, v2, 0x2

    goto :goto_2
.end method

.method private static final hexChar(I)I
    .locals 2

    const/4 v0, -0x1

    const/16 v1, 0x30

    if-ge p0, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/16 v1, 0x66

    if-gt p0, v1, :cond_0

    const/16 v1, 0x39

    if-gt p0, v1, :cond_2

    add-int/lit8 v0, p0, -0x30

    goto :goto_0

    :cond_2
    const/16 v1, 0x41

    if-lt p0, v1, :cond_0

    const/16 v1, 0x46

    if-gt p0, v1, :cond_3

    add-int/lit8 v0, p0, -0x41

    add-int/lit8 v0, v0, 0xa

    goto :goto_0

    :cond_3
    const/16 v1, 0x61

    if-lt p0, v1, :cond_0

    add-int/lit8 v0, p0, -0x61

    add-int/lit8 v0, v0, 0xa

    goto :goto_0
.end method


# virtual methods
.method checkQuestion(I)Z
    .locals 2

    iget v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->regexlen:I

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->regex:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x3f

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method decodeEscaped()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xpath/regex/ParseException;
        }
    .end annotation

    const v5, 0x10ffff

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->read()I

    move-result v3

    const/16 v4, 0xa

    if-eq v3, v4, :cond_0

    const-string/jumbo v3, "parser.next.1"

    iget v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p0, v3, v4}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->ex(Ljava/lang/String;I)Lmf/org/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object v3

    throw v3

    :cond_0
    iget v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->chardata:I

    sparse-switch v0, :sswitch_data_0

    :goto_0
    return v0

    :sswitch_0
    const/16 v0, 0x1b

    goto :goto_0

    :sswitch_1
    const/16 v0, 0xc

    goto :goto_0

    :sswitch_2
    const/16 v0, 0xa

    goto :goto_0

    :sswitch_3
    const/16 v0, 0xd

    goto :goto_0

    :sswitch_4
    const/16 v0, 0x9

    goto :goto_0

    :sswitch_5
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->next()V

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->read()I

    move-result v3

    if-eqz v3, :cond_1

    const-string/jumbo v3, "parser.descape.1"

    iget v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p0, v3, v4}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->ex(Ljava/lang/String;I)Lmf/org/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object v3

    throw v3

    :cond_1
    iget v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->chardata:I

    const/16 v4, 0x7b

    if-ne v3, v4, :cond_7

    const/4 v2, 0x0

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->next()V

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->read()I

    move-result v3

    if-eqz v3, :cond_2

    const-string/jumbo v3, "parser.descape.1"

    iget v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p0, v3, v4}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->ex(Ljava/lang/String;I)Lmf/org/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object v3

    throw v3

    :cond_2
    iget v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->chardata:I

    invoke-static {v3}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->hexChar(I)I

    move-result v2

    if-gez v2, :cond_3

    iget v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->chardata:I

    const/16 v4, 0x7d

    if-eq v3, v4, :cond_5

    const-string/jumbo v3, "parser.descape.3"

    iget v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p0, v3, v4}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->ex(Ljava/lang/String;I)Lmf/org/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object v3

    throw v3

    :cond_3
    mul-int/lit8 v3, v1, 0x10

    if-le v1, v3, :cond_4

    const-string/jumbo v3, "parser.descape.2"

    iget v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p0, v3, v4}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->ex(Ljava/lang/String;I)Lmf/org/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object v3

    throw v3

    :cond_4
    mul-int/lit8 v3, v1, 0x10

    add-int v1, v3, v2

    goto :goto_1

    :cond_5
    if-le v1, v5, :cond_6

    const-string/jumbo v3, "parser.descape.4"

    iget v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p0, v3, v4}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->ex(Ljava/lang/String;I)Lmf/org/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object v3

    throw v3

    :cond_6
    move v0, v1

    goto :goto_0

    :cond_7
    const/4 v2, 0x0

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->read()I

    move-result v3

    if-nez v3, :cond_8

    iget v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->chardata:I

    invoke-static {v3}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->hexChar(I)I

    move-result v2

    if-gez v2, :cond_9

    :cond_8
    const-string/jumbo v3, "parser.descape.1"

    iget v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p0, v3, v4}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->ex(Ljava/lang/String;I)Lmf/org/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object v3

    throw v3

    :cond_9
    move v1, v2

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->next()V

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->read()I

    move-result v3

    if-nez v3, :cond_a

    iget v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->chardata:I

    invoke-static {v3}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->hexChar(I)I

    move-result v2

    if-gez v2, :cond_b

    :cond_a
    const-string/jumbo v3, "parser.descape.1"

    iget v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p0, v3, v4}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->ex(Ljava/lang/String;I)Lmf/org/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object v3

    throw v3

    :cond_b
    mul-int/lit8 v3, v1, 0x10

    add-int v1, v3, v2

    move v0, v1

    goto/16 :goto_0

    :sswitch_6
    const/4 v2, 0x0

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->next()V

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->read()I

    move-result v3

    if-nez v3, :cond_c

    iget v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->chardata:I

    invoke-static {v3}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->hexChar(I)I

    move-result v2

    if-gez v2, :cond_d

    :cond_c
    const-string/jumbo v3, "parser.descape.1"

    iget v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p0, v3, v4}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->ex(Ljava/lang/String;I)Lmf/org/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object v3

    throw v3

    :cond_d
    move v1, v2

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->next()V

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->read()I

    move-result v3

    if-nez v3, :cond_e

    iget v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->chardata:I

    invoke-static {v3}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->hexChar(I)I

    move-result v2

    if-gez v2, :cond_f

    :cond_e
    const-string/jumbo v3, "parser.descape.1"

    iget v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p0, v3, v4}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->ex(Ljava/lang/String;I)Lmf/org/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object v3

    throw v3

    :cond_f
    mul-int/lit8 v3, v1, 0x10

    add-int v1, v3, v2

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->next()V

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->read()I

    move-result v3

    if-nez v3, :cond_10

    iget v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->chardata:I

    invoke-static {v3}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->hexChar(I)I

    move-result v2

    if-gez v2, :cond_11

    :cond_10
    const-string/jumbo v3, "parser.descape.1"

    iget v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p0, v3, v4}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->ex(Ljava/lang/String;I)Lmf/org/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object v3

    throw v3

    :cond_11
    mul-int/lit8 v3, v1, 0x10

    add-int v1, v3, v2

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->next()V

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->read()I

    move-result v3

    if-nez v3, :cond_12

    iget v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->chardata:I

    invoke-static {v3}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->hexChar(I)I

    move-result v2

    if-gez v2, :cond_13

    :cond_12
    const-string/jumbo v3, "parser.descape.1"

    iget v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p0, v3, v4}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->ex(Ljava/lang/String;I)Lmf/org/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object v3

    throw v3

    :cond_13
    mul-int/lit8 v3, v1, 0x10

    add-int v1, v3, v2

    move v0, v1

    goto/16 :goto_0

    :sswitch_7
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->next()V

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->read()I

    move-result v3

    if-nez v3, :cond_14

    iget v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->chardata:I

    invoke-static {v3}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->hexChar(I)I

    move-result v2

    if-gez v2, :cond_15

    :cond_14
    const-string/jumbo v3, "parser.descape.1"

    iget v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p0, v3, v4}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->ex(Ljava/lang/String;I)Lmf/org/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object v3

    throw v3

    :cond_15
    move v1, v2

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->next()V

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->read()I

    move-result v3

    if-nez v3, :cond_16

    iget v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->chardata:I

    invoke-static {v3}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->hexChar(I)I

    move-result v2

    if-gez v2, :cond_17

    :cond_16
    const-string/jumbo v3, "parser.descape.1"

    iget v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p0, v3, v4}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->ex(Ljava/lang/String;I)Lmf/org/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object v3

    throw v3

    :cond_17
    mul-int/lit8 v3, v1, 0x10

    add-int v1, v3, v2

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->next()V

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->read()I

    move-result v3

    if-nez v3, :cond_18

    iget v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->chardata:I

    invoke-static {v3}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->hexChar(I)I

    move-result v2

    if-gez v2, :cond_19

    :cond_18
    const-string/jumbo v3, "parser.descape.1"

    iget v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p0, v3, v4}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->ex(Ljava/lang/String;I)Lmf/org/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object v3

    throw v3

    :cond_19
    mul-int/lit8 v3, v1, 0x10

    add-int v1, v3, v2

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->next()V

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->read()I

    move-result v3

    if-nez v3, :cond_1a

    iget v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->chardata:I

    invoke-static {v3}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->hexChar(I)I

    move-result v2

    if-gez v2, :cond_1b

    :cond_1a
    const-string/jumbo v3, "parser.descape.1"

    iget v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p0, v3, v4}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->ex(Ljava/lang/String;I)Lmf/org/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object v3

    throw v3

    :cond_1b
    mul-int/lit8 v3, v1, 0x10

    add-int v1, v3, v2

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->next()V

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->read()I

    move-result v3

    if-nez v3, :cond_1c

    iget v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->chardata:I

    invoke-static {v3}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->hexChar(I)I

    move-result v2

    if-gez v2, :cond_1d

    :cond_1c
    const-string/jumbo v3, "parser.descape.1"

    iget v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p0, v3, v4}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->ex(Ljava/lang/String;I)Lmf/org/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object v3

    throw v3

    :cond_1d
    mul-int/lit8 v3, v1, 0x10

    add-int v1, v3, v2

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->next()V

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->read()I

    move-result v3

    if-nez v3, :cond_1e

    iget v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->chardata:I

    invoke-static {v3}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->hexChar(I)I

    move-result v2

    if-gez v2, :cond_1f

    :cond_1e
    const-string/jumbo v3, "parser.descape.1"

    iget v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p0, v3, v4}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->ex(Ljava/lang/String;I)Lmf/org/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object v3

    throw v3

    :cond_1f
    mul-int/lit8 v3, v1, 0x10

    add-int v1, v3, v2

    if-le v1, v5, :cond_20

    const-string/jumbo v3, "parser.descappe.4"

    iget v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p0, v3, v4}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->ex(Ljava/lang/String;I)Lmf/org/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object v3

    throw v3

    :cond_20
    move v0, v1

    goto/16 :goto_0

    :sswitch_8
    const-string/jumbo v3, "parser.descape.5"

    iget v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    add-int/lit8 v4, v4, -0x2

    invoke-virtual {p0, v3, v4}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->ex(Ljava/lang/String;I)Lmf/org/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object v3

    throw v3

    :sswitch_data_0
    .sparse-switch
        0x41 -> :sswitch_8
        0x5a -> :sswitch_8
        0x65 -> :sswitch_0
        0x66 -> :sswitch_1
        0x6e -> :sswitch_2
        0x72 -> :sswitch_3
        0x74 -> :sswitch_4
        0x75 -> :sswitch_6
        0x76 -> :sswitch_7
        0x78 -> :sswitch_5
        0x7a -> :sswitch_8
    .end sparse-switch
.end method

.method final ex(Ljava/lang/String;I)Lmf/org/apache/xerces/impl/xpath/regex/ParseException;
    .locals 2

    new-instance v0, Lmf/org/apache/xerces/impl/xpath/regex/ParseException;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->resources:Ljava/util/ResourceBundle;

    invoke-virtual {v1, p1}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lmf/org/apache/xerces/impl/xpath/regex/ParseException;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method getTokenForShorthand(I)Lmf/org/apache/xerces/impl/xpath/regex/Token;
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/16 v1, 0x20

    sparse-switch p1, :sswitch_data_0

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Internal Error: shorthands: \\u"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x10

    invoke-static {p1, v3}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :sswitch_0
    invoke-virtual {p0, v1}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->isSet(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Nd"

    invoke-static {v1, v3}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getRange(Ljava/lang/String;Z)Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lmf/org/apache/xerces/impl/xpath/regex/Token;->token_0to9:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    goto :goto_0

    :sswitch_1
    invoke-virtual {p0, v1}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->isSet(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "Nd"

    invoke-static {v1, v2}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getRange(Ljava/lang/String;Z)Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;

    move-result-object v0

    :goto_1
    goto :goto_0

    :cond_1
    sget-object v0, Lmf/org/apache/xerces/impl/xpath/regex/Token;->token_not_0to9:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    goto :goto_1

    :sswitch_2
    invoke-virtual {p0, v1}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->isSet(I)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "IsWord"

    invoke-static {v1, v3}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getRange(Ljava/lang/String;Z)Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;

    move-result-object v0

    :goto_2
    goto :goto_0

    :cond_2
    sget-object v0, Lmf/org/apache/xerces/impl/xpath/regex/Token;->token_wordchars:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    goto :goto_2

    :sswitch_3
    invoke-virtual {p0, v1}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->isSet(I)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "IsWord"

    invoke-static {v1, v2}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getRange(Ljava/lang/String;Z)Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;

    move-result-object v0

    :goto_3
    goto :goto_0

    :cond_3
    sget-object v0, Lmf/org/apache/xerces/impl/xpath/regex/Token;->token_not_wordchars:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    goto :goto_3

    :sswitch_4
    invoke-virtual {p0, v1}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->isSet(I)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "IsSpace"

    invoke-static {v1, v3}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getRange(Ljava/lang/String;Z)Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;

    move-result-object v0

    :goto_4
    goto :goto_0

    :cond_4
    sget-object v0, Lmf/org/apache/xerces/impl/xpath/regex/Token;->token_spaces:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    goto :goto_4

    :sswitch_5
    invoke-virtual {p0, v1}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->isSet(I)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "IsSpace"

    invoke-static {v1, v2}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getRange(Ljava/lang/String;Z)Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;

    move-result-object v0

    :goto_5
    goto :goto_0

    :cond_5
    sget-object v0, Lmf/org/apache/xerces/impl/xpath/regex/Token;->token_not_spaces:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    goto :goto_5

    :sswitch_data_0
    .sparse-switch
        0x44 -> :sswitch_1
        0x53 -> :sswitch_5
        0x57 -> :sswitch_3
        0x64 -> :sswitch_0
        0x73 -> :sswitch_4
        0x77 -> :sswitch_2
    .end sparse-switch
.end method

.method protected final isSet(I)Z
    .locals 1

    iget v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->options:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final next()V
    .locals 9

    const/16 v8, 0x29

    const/4 v7, 0x1

    const/16 v6, 0x200

    iget v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    iget v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->regexlen:I

    if-lt v3, v4, :cond_0

    const/4 v3, -0x1

    iput v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->chardata:I

    iput v7, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->nexttoken:I

    :goto_0
    return-void

    :cond_0
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->regex:Ljava/lang/String;

    iget v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    iput v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->chardata:I

    iget v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->context:I

    if-ne v3, v7, :cond_5

    sparse-switch v0, :sswitch_data_0

    :cond_1
    invoke-static {v0}, Lmf/org/apache/xerces/impl/xpath/regex/REUtil;->isHighSurrogate(I)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    iget v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->regexlen:I

    if-ge v3, v4, :cond_2

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->regex:Ljava/lang/String;

    iget v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lmf/org/apache/xerces/impl/xpath/regex/REUtil;->isLowSurrogate(I)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {v0, v1}, Lmf/org/apache/xerces/impl/xpath/regex/REUtil;->composeFromSurrogates(II)I

    move-result v3

    iput v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->chardata:I

    iget v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    :cond_2
    const/4 v2, 0x0

    :goto_1
    iput v2, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->nexttoken:I

    goto :goto_0

    :sswitch_0
    const/16 v2, 0xa

    iget v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    iget v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->regexlen:I

    if-lt v3, v4, :cond_3

    const-string/jumbo v3, "parser.next.1"

    iget v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p0, v3, v4}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->ex(Ljava/lang/String;I)Lmf/org/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object v3

    throw v3

    :cond_3
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->regex:Ljava/lang/String;

    iget v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    iput v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->chardata:I

    goto :goto_1

    :sswitch_1
    iget v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    iget v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->regexlen:I

    if-ge v3, v4, :cond_4

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->regex:Ljava/lang/String;

    iget v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x5b

    if-ne v3, v4, :cond_4

    iget v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    const/16 v2, 0x18

    goto :goto_1

    :cond_4
    const/4 v2, 0x0

    goto :goto_1

    :sswitch_2
    invoke-virtual {p0, v6}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->isSet(I)Z

    move-result v3

    if-nez v3, :cond_1

    iget v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    iget v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->regexlen:I

    if-ge v3, v4, :cond_1

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->regex:Ljava/lang/String;

    iget v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x3a

    if-ne v3, v4, :cond_1

    iget v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    const/16 v2, 0x14

    goto :goto_1

    :cond_5
    sparse-switch v0, :sswitch_data_1

    const/4 v2, 0x0

    :cond_6
    :goto_2
    iput v2, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->nexttoken:I

    goto/16 :goto_0

    :sswitch_3
    const/4 v2, 0x2

    goto :goto_2

    :sswitch_4
    const/4 v2, 0x3

    goto :goto_2

    :sswitch_5
    const/4 v2, 0x4

    goto :goto_2

    :sswitch_6
    const/4 v2, 0x5

    goto :goto_2

    :sswitch_7
    const/4 v2, 0x7

    goto :goto_2

    :sswitch_8
    const/16 v2, 0x8

    goto :goto_2

    :sswitch_9
    const/16 v2, 0x9

    goto :goto_2

    :sswitch_a
    invoke-virtual {p0, v6}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->isSet(I)Z

    move-result v3

    if-eqz v3, :cond_7

    const/4 v2, 0x0

    goto :goto_2

    :cond_7
    const/16 v2, 0xb

    goto :goto_2

    :sswitch_b
    invoke-virtual {p0, v6}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->isSet(I)Z

    move-result v3

    if-eqz v3, :cond_8

    const/4 v2, 0x0

    goto :goto_2

    :cond_8
    const/16 v2, 0xc

    goto :goto_2

    :sswitch_c
    const/4 v2, 0x6

    iget v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    iget v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->regexlen:I

    if-ge v3, v4, :cond_6

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->regex:Ljava/lang/String;

    iget v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x3f

    if-ne v3, v4, :cond_6

    iget v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    iget v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->regexlen:I

    if-lt v3, v4, :cond_9

    const-string/jumbo v3, "parser.next.2"

    iget v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p0, v3, v4}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->ex(Ljava/lang/String;I)Lmf/org/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object v3

    throw v3

    :cond_9
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->regex:Ljava/lang/String;

    iget v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    sparse-switch v0, :sswitch_data_2

    const/16 v3, 0x2d

    if-eq v0, v3, :cond_b

    const/16 v3, 0x61

    if-gt v3, v0, :cond_a

    const/16 v3, 0x7a

    if-le v0, v3, :cond_b

    :cond_a
    const/16 v3, 0x41

    if-gt v3, v0, :cond_12

    const/16 v3, 0x5a

    if-gt v0, v3, :cond_12

    :cond_b
    iget v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    const/16 v2, 0x16

    goto :goto_2

    :sswitch_d
    const/16 v2, 0xd

    goto/16 :goto_2

    :sswitch_e
    const/16 v2, 0xe

    goto/16 :goto_2

    :sswitch_f
    const/16 v2, 0xf

    goto/16 :goto_2

    :sswitch_10
    const/16 v2, 0x13

    goto/16 :goto_2

    :sswitch_11
    const/16 v2, 0x12

    goto/16 :goto_2

    :sswitch_12
    iget v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    iget v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->regexlen:I

    if-lt v3, v4, :cond_c

    const-string/jumbo v3, "parser.next.2"

    iget v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    add-int/lit8 v4, v4, -0x3

    invoke-virtual {p0, v3, v4}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->ex(Ljava/lang/String;I)Lmf/org/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object v3

    throw v3

    :cond_c
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->regex:Ljava/lang/String;

    iget v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v3, 0x3d

    if-ne v0, v3, :cond_d

    const/16 v2, 0x10

    goto/16 :goto_2

    :cond_d
    const/16 v3, 0x21

    if-ne v0, v3, :cond_e

    const/16 v2, 0x11

    goto/16 :goto_2

    :cond_e
    const-string/jumbo v3, "parser.next.3"

    iget v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    add-int/lit8 v4, v4, -0x3

    invoke-virtual {p0, v3, v4}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->ex(Ljava/lang/String;I)Lmf/org/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object v3

    throw v3

    :cond_f
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->regex:Ljava/lang/String;

    iget v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v8, :cond_10

    :goto_3
    if-eq v0, v8, :cond_11

    const-string/jumbo v3, "parser.next.4"

    iget v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p0, v3, v4}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->ex(Ljava/lang/String;I)Lmf/org/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object v3

    throw v3

    :cond_10
    :sswitch_13
    iget v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    iget v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->regexlen:I

    if-lt v3, v4, :cond_f

    goto :goto_3

    :cond_11
    const/16 v2, 0x15

    goto/16 :goto_2

    :cond_12
    const/16 v3, 0x28

    if-ne v0, v3, :cond_13

    const/16 v2, 0x17

    goto/16 :goto_2

    :cond_13
    const-string/jumbo v3, "parser.next.2"

    iget v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    add-int/lit8 v4, v4, -0x2

    invoke-virtual {p0, v3, v4}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->ex(Ljava/lang/String;I)Lmf/org/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object v3

    throw v3

    :sswitch_14
    const/16 v2, 0xa

    iget v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    iget v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->regexlen:I

    if-lt v3, v4, :cond_14

    const-string/jumbo v3, "parser.next.1"

    iget v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p0, v3, v4}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->ex(Ljava/lang/String;I)Lmf/org/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object v3

    throw v3

    :cond_14
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->regex:Ljava/lang/String;

    iget v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    iput v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->chardata:I

    goto/16 :goto_2

    nop

    :sswitch_data_0
    .sparse-switch
        0x2d -> :sswitch_1
        0x5b -> :sswitch_2
        0x5c -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x24 -> :sswitch_b
        0x28 -> :sswitch_c
        0x29 -> :sswitch_7
        0x2a -> :sswitch_4
        0x2b -> :sswitch_5
        0x2e -> :sswitch_8
        0x3f -> :sswitch_6
        0x5b -> :sswitch_9
        0x5c -> :sswitch_14
        0x5e -> :sswitch_a
        0x7c -> :sswitch_3
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        0x21 -> :sswitch_f
        0x23 -> :sswitch_13
        0x3a -> :sswitch_d
        0x3c -> :sswitch_12
        0x3d -> :sswitch_e
        0x3e -> :sswitch_11
        0x5b -> :sswitch_10
    .end sparse-switch
.end method

.method declared-synchronized parse(Ljava/lang/String;I)Lmf/org/apache/xerces/impl/xpath/regex/Token;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xpath/regex/ParseException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iput p2, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->options:I

    const/4 v3, 0x0

    iput v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->setContext(I)V

    const/4 v3, 0x1

    iput v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->parennumber:I

    const/4 v3, 0x1

    iput v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->parenOpened:I

    const/4 v3, 0x0

    iput-boolean v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->hasBackReferences:Z

    iput-object p1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->regex:Ljava/lang/String;

    const/16 v3, 0x10

    invoke-virtual {p0, v3}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->isSet(I)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->regex:Ljava/lang/String;

    invoke-static {v3}, Lmf/org/apache/xerces/impl/xpath/regex/REUtil;->stripExtendedComment(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->regex:Ljava/lang/String;

    :cond_0
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->regex:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    iput v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->regexlen:I

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->next()V

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->parseRegex()Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v2

    iget v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    iget v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->regexlen:I

    if-eq v3, v4, :cond_1

    const-string/jumbo v3, "parser.parse.1"

    iget v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    invoke-virtual {p0, v3, v4}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->ex(Ljava/lang/String;I)Lmf/org/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object v3

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    :cond_1
    :try_start_1
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->references:Ljava/util/Vector;

    if-eqz v3, :cond_2

    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->references:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-lt v0, v3, :cond_3

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->references:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->removeAllElements()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    monitor-exit p0

    return-object v2

    :cond_3
    :try_start_2
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->references:Ljava/util/Vector;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser$ReferencePosition;

    iget v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->parennumber:I

    iget v4, v1, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser$ReferencePosition;->refNumber:I

    if-gt v3, v4, :cond_4

    const-string/jumbo v3, "parser.parse.2"

    iget v4, v1, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser$ReferencePosition;->position:I

    invoke-virtual {p0, v3, v4}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->ex(Ljava/lang/String;I)Lmf/org/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object v3

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method parseAtom()Lmf/org/apache/xerces/impl/xpath/regex/Token;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xpath/regex/ParseException;
        }
    .end annotation

    const/4 v9, 0x1

    const/4 v8, 0x0

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->read()I

    move-result v0

    const/4 v5, 0x0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const-string/jumbo v6, "parser.atom.4"

    iget v7, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {p0, v6, v7}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->ex(Ljava/lang/String;I)Lmf/org/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object v6

    throw v6

    :pswitch_1
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->processParen()Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v6

    :goto_0
    return-object v6

    :pswitch_2
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->processParen2()Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v6

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->processCondition()Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v6

    goto :goto_0

    :pswitch_4
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->processModifiers()Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v6

    goto :goto_0

    :pswitch_5
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->processIndependent()Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v6

    goto :goto_0

    :pswitch_6
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->next()V

    sget-object v5, Lmf/org/apache/xerces/impl/xpath/regex/Token;->token_dot:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    :cond_0
    :goto_1
    move-object v6, v5

    goto :goto_0

    :pswitch_7
    invoke-virtual {p0, v9}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->parseCharacterClass(Z)Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;

    move-result-object v6

    goto :goto_0

    :pswitch_8
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->parseSetOperations()Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;

    move-result-object v6

    goto :goto_0

    :pswitch_9
    iget v6, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->chardata:I

    packed-switch v6, :pswitch_data_1

    :pswitch_a
    iget v6, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->chardata:I

    invoke-static {v6}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->createChar(I)Lmf/org/apache/xerces/impl/xpath/regex/Token$CharToken;

    move-result-object v5

    :cond_1
    :goto_2
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->next()V

    goto :goto_1

    :pswitch_b
    iget v6, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->chardata:I

    invoke-virtual {p0, v6}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->getTokenForShorthand(I)Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v5

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->next()V

    move-object v6, v5

    goto :goto_0

    :pswitch_c
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->decodeEscaped()I

    move-result v1

    const/high16 v6, 0x10000

    if-ge v1, v6, :cond_2

    invoke-static {v1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->createChar(I)Lmf/org/apache/xerces/impl/xpath/regex/Token$CharToken;

    move-result-object v5

    goto :goto_2

    :cond_2
    invoke-static {v1}, Lmf/org/apache/xerces/impl/xpath/regex/REUtil;->decomposeToSurrogates(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->createString(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xpath/regex/Token$StringToken;

    move-result-object v5

    goto :goto_2

    :pswitch_d
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->processBacksolidus_c()Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v6

    goto :goto_0

    :pswitch_e
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->processBacksolidus_C()Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v6

    goto :goto_0

    :pswitch_f
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->processBacksolidus_i()Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v6

    goto :goto_0

    :pswitch_10
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->processBacksolidus_I()Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v6

    goto :goto_0

    :pswitch_11
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->processBacksolidus_g()Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v6

    goto :goto_0

    :pswitch_12
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->processBacksolidus_X()Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v6

    goto :goto_0

    :pswitch_13
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->processBackreference()Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v6

    goto :goto_0

    :pswitch_14
    iget v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    iget v6, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->chardata:I

    invoke-virtual {p0, v6}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->processBacksolidus_pP(I)Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;

    move-result-object v5

    if-nez v5, :cond_1

    const-string/jumbo v6, "parser.atom.5"

    invoke-virtual {p0, v6, v3}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->ex(Ljava/lang/String;I)Lmf/org/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object v6

    throw v6

    :pswitch_15
    iget v6, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->chardata:I

    const/16 v7, 0x5d

    if-eq v6, v7, :cond_3

    iget v6, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->chardata:I

    const/16 v7, 0x7b

    if-eq v6, v7, :cond_3

    iget v6, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->chardata:I

    const/16 v7, 0x7d

    if-ne v6, v7, :cond_4

    :cond_3
    const-string/jumbo v6, "parser.atom.4"

    iget v7, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {p0, v6, v7}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->ex(Ljava/lang/String;I)Lmf/org/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object v6

    throw v6

    :cond_4
    iget v6, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->chardata:I

    invoke-static {v6}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->createChar(I)Lmf/org/apache/xerces/impl/xpath/regex/Token$CharToken;

    move-result-object v5

    iget v2, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->chardata:I

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->next()V

    invoke-static {v2}, Lmf/org/apache/xerces/impl/xpath/regex/REUtil;->isHighSurrogate(I)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->read()I

    move-result v6

    if-nez v6, :cond_0

    iget v6, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->chardata:I

    invoke-static {v6}, Lmf/org/apache/xerces/impl/xpath/regex/REUtil;->isLowSurrogate(I)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x2

    new-array v4, v6, [C

    int-to-char v6, v2

    aput-char v6, v4, v8

    iget v6, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->chardata:I

    int-to-char v6, v6

    aput-char v6, v4, v9

    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v4}, Ljava/lang/String;-><init>([C)V

    invoke-static {v6}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->createString(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xpath/regex/Token$StringToken;

    move-result-object v6

    invoke-static {v6, v8}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->createParen(Lmf/org/apache/xerces/impl/xpath/regex/Token;I)Lmf/org/apache/xerces/impl/xpath/regex/Token$ParenToken;

    move-result-object v5

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->next()V

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_15
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x31
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_e
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_10
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_14
        :pswitch_a
        :pswitch_a
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_b
        :pswitch_12
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_d
        :pswitch_b
        :pswitch_c
        :pswitch_c
        :pswitch_11
        :pswitch_a
        :pswitch_f
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_c
        :pswitch_a
        :pswitch_14
        :pswitch_a
        :pswitch_c
        :pswitch_b
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method

.method protected parseCharacterClass(Z)Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xpath/regex/ParseException;
        }
    .end annotation

    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->setContext(I)V

    invoke-virtual/range {p0 .. p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->next()V

    const/4 v9, 0x0

    const/4 v3, 0x0

    invoke-virtual/range {p0 .. p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->read()I

    move-result v18

    if-nez v18, :cond_2

    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->chardata:I

    move/from16 v18, v0

    const/16 v19, 0x5e

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_2

    const/4 v9, 0x1

    invoke-virtual/range {p0 .. p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->next()V

    if-eqz p1, :cond_1

    invoke-static {}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->createNRange()Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;

    move-result-object v15

    :goto_0
    const/4 v6, 0x1

    :goto_1
    invoke-virtual/range {p0 .. p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->read()I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_3

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->read()I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_20

    const-string/jumbo v18, "parser.cc.2"

    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->ex(Ljava/lang/String;I)Lmf/org/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object v18

    throw v18

    :cond_1
    invoke-static {}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->createRange()Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;

    move-result-object v3

    const/16 v18, 0x0

    const v19, 0x10ffff

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v3, v0, v1}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->addRange(II)V

    invoke-static {}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->createRange()Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;

    move-result-object v15

    goto :goto_0

    :cond_2
    invoke-static {}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->createRange()Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;

    move-result-object v15

    goto :goto_0

    :cond_3
    if-nez v17, :cond_4

    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->chardata:I

    move/from16 v18, v0

    const/16 v19, 0x5d

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_4

    if-eqz v6, :cond_0

    :cond_4
    move-object/from16 v0, p0

    iget v4, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->chardata:I

    const/4 v5, 0x0

    const/16 v18, 0xa

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_b

    sparse-switch v4, :sswitch_data_0

    invoke-virtual/range {p0 .. p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->decodeEscaped()I

    move-result v4

    :cond_5
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->next()V

    if-nez v5, :cond_8

    invoke-virtual/range {p0 .. p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->read()I

    move-result v18

    if-nez v18, :cond_6

    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->chardata:I

    move/from16 v18, v0

    const/16 v19, 0x2d

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_16

    :cond_6
    const/16 v18, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->isSet(I)Z

    move-result v18

    if-eqz v18, :cond_7

    const v18, 0xffff

    move/from16 v0, v18

    if-le v4, v0, :cond_15

    :cond_7
    invoke-virtual {v15, v4, v4}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->addRange(II)V

    :cond_8
    :goto_3
    const/16 v18, 0x400

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->isSet(I)Z

    move-result v18

    if-eqz v18, :cond_9

    invoke-virtual/range {p0 .. p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->read()I

    move-result v18

    if-nez v18, :cond_9

    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->chardata:I

    move/from16 v18, v0

    const/16 v19, 0x2c

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_9

    invoke-virtual/range {p0 .. p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->next()V

    :cond_9
    const/4 v6, 0x0

    goto/16 :goto_1

    :sswitch_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->getTokenForShorthand(I)Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->mergeRanges(Lmf/org/apache/xerces/impl/xpath/regex/Token;)V

    const/4 v5, 0x1

    goto :goto_2

    :sswitch_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v4}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->processCIinCharacterClass(Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;I)I

    move-result v4

    if-gez v4, :cond_5

    const/4 v5, 0x1

    goto :goto_2

    :sswitch_2
    move-object/from16 v0, p0

    iget v11, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->processBacksolidus_pP(I)Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;

    move-result-object v16

    if-nez v16, :cond_a

    const-string/jumbo v18, "parser.atom.5"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v11}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->ex(Ljava/lang/String;I)Lmf/org/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object v18

    throw v18

    :cond_a
    invoke-virtual/range {v15 .. v16}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->mergeRanges(Lmf/org/apache/xerces/impl/xpath/regex/Token;)V

    const/4 v5, 0x1

    goto/16 :goto_2

    :cond_b
    const/16 v18, 0x14

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->regex:Ljava/lang/String;

    move-object/from16 v18, v0

    const/16 v19, 0x3a

    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    move/from16 v20, v0

    invoke-virtual/range {v18 .. v20}, Ljava/lang/String;->indexOf(II)I

    move-result v8

    if-gez v8, :cond_c

    const-string/jumbo v18, "parser.cc.1"

    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->ex(Ljava/lang/String;I)Lmf/org/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object v18

    throw v18

    :cond_c
    const/4 v10, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->regex:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->charAt(I)C

    move-result v18

    const/16 v19, 0x5e

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_d

    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    const/4 v10, 0x0

    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->regex:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    move/from16 v19, v0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v0, v1, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    const/16 v18, 0x200

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->isSet(I)Z

    move-result v18

    move/from16 v0, v18

    invoke-static {v7, v10, v0}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getRange(Ljava/lang/String;ZZ)Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;

    move-result-object v12

    if-nez v12, :cond_e

    const-string/jumbo v18, "parser.cc.3"

    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->ex(Ljava/lang/String;I)Lmf/org/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object v18

    throw v18

    :cond_e
    invoke-virtual {v15, v12}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->mergeRanges(Lmf/org/apache/xerces/impl/xpath/regex/Token;)V

    const/4 v5, 0x1

    add-int/lit8 v18, v8, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->regexlen:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->regex:Ljava/lang/String;

    move-object/from16 v18, v0

    add-int/lit8 v19, v8, 0x1

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->charAt(I)C

    move-result v18

    const/16 v19, 0x5d

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_10

    :cond_f
    const-string/jumbo v18, "parser.cc.1"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v8}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->ex(Ljava/lang/String;I)Lmf/org/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object v18

    throw v18

    :cond_10
    add-int/lit8 v18, v8, 0x2

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    goto/16 :goto_2

    :cond_11
    const/16 v18, 0x18

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_5

    if-nez v6, :cond_5

    if-eqz v9, :cond_12

    const/4 v9, 0x0

    if-eqz p1, :cond_14

    invoke-static {v15}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->complementRanges(Lmf/org/apache/xerces/impl/xpath/regex/Token;)Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v15

    check-cast v15, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;

    :cond_12
    :goto_4
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->parseCharacterClass(Z)Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;

    move-result-object v13

    invoke-virtual {v15, v13}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->subtractRanges(Lmf/org/apache/xerces/impl/xpath/regex/Token;)V

    invoke-virtual/range {p0 .. p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->read()I

    move-result v18

    if-nez v18, :cond_13

    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->chardata:I

    move/from16 v18, v0

    const/16 v19, 0x5d

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_0

    :cond_13
    const-string/jumbo v18, "parser.cc.5"

    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->ex(Ljava/lang/String;I)Lmf/org/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object v18

    throw v18

    :cond_14
    invoke-virtual {v3, v15}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->subtractRanges(Lmf/org/apache/xerces/impl/xpath/regex/Token;)V

    move-object v15, v3

    goto :goto_4

    :cond_15
    invoke-static {v15, v4}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->addCaseInsensitiveChar(Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;I)V

    goto/16 :goto_3

    :cond_16
    const/16 v18, 0x18

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_17

    const-string/jumbo v18, "parser.cc.8"

    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->ex(Ljava/lang/String;I)Lmf/org/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object v18

    throw v18

    :cond_17
    invoke-virtual/range {p0 .. p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->next()V

    invoke-virtual/range {p0 .. p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->read()I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_18

    const-string/jumbo v18, "parser.cc.2"

    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->ex(Ljava/lang/String;I)Lmf/org/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object v18

    throw v18

    :cond_18
    if-nez v17, :cond_1b

    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->chardata:I

    move/from16 v18, v0

    const/16 v19, 0x5d

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_1b

    const/16 v18, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->isSet(I)Z

    move-result v18

    if-eqz v18, :cond_19

    const v18, 0xffff

    move/from16 v0, v18

    if-le v4, v0, :cond_1a

    :cond_19
    invoke-virtual {v15, v4, v4}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->addRange(II)V

    :goto_5
    const/16 v18, 0x2d

    const/16 v19, 0x2d

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v15, v0, v1}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->addRange(II)V

    goto/16 :goto_3

    :cond_1a
    invoke-static {v15, v4}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->addCaseInsensitiveChar(Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;I)V

    goto :goto_5

    :cond_1b
    move-object/from16 v0, p0

    iget v14, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->chardata:I

    const/16 v18, 0xa

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_1c

    invoke-virtual/range {p0 .. p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->decodeEscaped()I

    move-result v14

    :cond_1c
    invoke-virtual/range {p0 .. p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->next()V

    if-le v4, v14, :cond_1d

    const-string/jumbo v18, "parser.ope.3"

    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->ex(Ljava/lang/String;I)Lmf/org/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object v18

    throw v18

    :cond_1d
    const/16 v18, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->isSet(I)Z

    move-result v18

    if-eqz v18, :cond_1e

    const v18, 0xffff

    move/from16 v0, v18

    if-le v4, v0, :cond_1f

    const v18, 0xffff

    move/from16 v0, v18

    if-le v14, v0, :cond_1f

    :cond_1e
    invoke-virtual {v15, v4, v14}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->addRange(II)V

    goto/16 :goto_3

    :cond_1f
    invoke-static {v15, v4, v14}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->addCaseInsensitiveCharRange(Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;II)V

    goto/16 :goto_3

    :cond_20
    if-nez p1, :cond_21

    if-eqz v9, :cond_21

    invoke-virtual {v3, v15}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->subtractRanges(Lmf/org/apache/xerces/impl/xpath/regex/Token;)V

    move-object v15, v3

    :cond_21
    invoke-virtual {v15}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->sortRanges()V

    invoke-virtual {v15}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->compactRanges()V

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->setContext(I)V

    invoke-virtual/range {p0 .. p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->next()V

    return-object v15

    nop

    :sswitch_data_0
    .sparse-switch
        0x43 -> :sswitch_1
        0x44 -> :sswitch_0
        0x49 -> :sswitch_1
        0x50 -> :sswitch_2
        0x53 -> :sswitch_0
        0x57 -> :sswitch_0
        0x63 -> :sswitch_1
        0x64 -> :sswitch_0
        0x69 -> :sswitch_1
        0x70 -> :sswitch_2
        0x73 -> :sswitch_0
        0x77 -> :sswitch_0
    .end sparse-switch
.end method

.method parseFactor()Lmf/org/apache/xerces/impl/xpath/regex/Token;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xpath/regex/ParseException;
        }
    .end annotation

    const/16 v9, 0x39

    const/16 v8, 0x30

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->read()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->parseAtom()Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v5

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->read()I

    move-result v0

    packed-switch v0, :pswitch_data_1

    :cond_0
    :goto_1
    :pswitch_1
    return-object v5

    :pswitch_2
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->processCaret()Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v5

    goto :goto_1

    :pswitch_3
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->processDollar()Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v5

    goto :goto_1

    :pswitch_4
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->processLookahead()Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v5

    goto :goto_1

    :pswitch_5
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->processNegativelookahead()Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v5

    goto :goto_1

    :pswitch_6
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->processLookbehind()Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v5

    goto :goto_1

    :pswitch_7
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->processNegativelookbehind()Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v5

    goto :goto_1

    :pswitch_8
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->next()V

    invoke-static {}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->createEmpty()Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v5

    goto :goto_1

    :pswitch_9
    iget v6, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->chardata:I

    sparse-switch v6, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->processBacksolidus_lt()Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v5

    goto :goto_1

    :sswitch_1
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->processBacksolidus_A()Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v5

    goto :goto_1

    :sswitch_2
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->processBacksolidus_Z()Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v5

    goto :goto_1

    :sswitch_3
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->processBacksolidus_z()Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v5

    goto :goto_1

    :sswitch_4
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->processBacksolidus_b()Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v5

    goto :goto_1

    :sswitch_5
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->processBacksolidus_B()Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v5

    goto :goto_1

    :sswitch_6
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->processBacksolidus_gt()Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v5

    goto :goto_1

    :pswitch_a
    invoke-virtual {p0, v5}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->processStar(Lmf/org/apache/xerces/impl/xpath/regex/Token;)Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v5

    goto :goto_1

    :pswitch_b
    invoke-virtual {p0, v5}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->processPlus(Lmf/org/apache/xerces/impl/xpath/regex/Token;)Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v5

    goto :goto_1

    :pswitch_c
    invoke-virtual {p0, v5}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->processQuestion(Lmf/org/apache/xerces/impl/xpath/regex/Token;)Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v5

    goto :goto_1

    :pswitch_d
    iget v6, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->chardata:I

    const/16 v7, 0x7b

    if-ne v6, v7, :cond_0

    iget v6, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    iget v7, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->regexlen:I

    if-ge v6, v7, :cond_0

    iget v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    const/4 v2, 0x0

    const/4 v1, -0x1

    iget-object v6, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->regex:Ljava/lang/String;

    add-int/lit8 v4, v3, 0x1

    invoke-virtual {v6, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-lt v0, v8, :cond_3

    if-gt v0, v9, :cond_3

    add-int/lit8 v2, v0, -0x30

    move v3, v4

    :goto_2
    iget v6, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->regexlen:I

    if-ge v3, v6, :cond_f

    iget-object v6, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->regex:Ljava/lang/String;

    add-int/lit8 v4, v3, 0x1

    invoke-virtual {v6, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-lt v0, v8, :cond_1

    if-le v0, v9, :cond_2

    :cond_1
    :goto_3
    move v1, v2

    const/16 v6, 0x2c

    if-ne v0, v6, :cond_d

    iget v6, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->regexlen:I

    if-lt v4, v6, :cond_4

    const-string/jumbo v6, "parser.quantifier.3"

    iget v7, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    invoke-virtual {p0, v6, v7}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->ex(Ljava/lang/String;I)Lmf/org/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object v6

    throw v6

    :cond_2
    mul-int/lit8 v6, v2, 0xa

    add-int/2addr v6, v0

    add-int/lit8 v2, v6, -0x30

    if-gez v2, :cond_e

    const-string/jumbo v6, "parser.quantifier.5"

    iget v7, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    invoke-virtual {p0, v6, v7}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->ex(Ljava/lang/String;I)Lmf/org/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object v6

    throw v6

    :cond_3
    const-string/jumbo v6, "parser.quantifier.1"

    iget v7, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    invoke-virtual {p0, v6, v7}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->ex(Ljava/lang/String;I)Lmf/org/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object v6

    throw v6

    :cond_4
    iget-object v6, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->regex:Ljava/lang/String;

    add-int/lit8 v3, v4, 0x1

    invoke-virtual {v6, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-lt v0, v8, :cond_8

    if-gt v0, v9, :cond_8

    add-int/lit8 v1, v0, -0x30

    :goto_4
    iget v6, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->regexlen:I

    if-ge v3, v6, :cond_6

    iget-object v6, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->regex:Ljava/lang/String;

    add-int/lit8 v4, v3, 0x1

    invoke-virtual {v6, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-lt v0, v8, :cond_5

    if-le v0, v9, :cond_7

    :cond_5
    move v3, v4

    :cond_6
    if-le v2, v1, :cond_9

    const-string/jumbo v6, "parser.quantifier.4"

    iget v7, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    invoke-virtual {p0, v6, v7}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->ex(Ljava/lang/String;I)Lmf/org/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object v6

    throw v6

    :cond_7
    mul-int/lit8 v6, v1, 0xa

    add-int/2addr v6, v0

    add-int/lit8 v1, v6, -0x30

    if-gez v1, :cond_c

    const-string/jumbo v6, "parser.quantifier.5"

    iget v7, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    invoke-virtual {p0, v6, v7}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->ex(Ljava/lang/String;I)Lmf/org/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object v6

    throw v6

    :cond_8
    const/4 v1, -0x1

    :cond_9
    :goto_5
    const/16 v6, 0x7d

    if-eq v0, v6, :cond_a

    const-string/jumbo v6, "parser.quantifier.2"

    iget v7, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    invoke-virtual {p0, v6, v7}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->ex(Ljava/lang/String;I)Lmf/org/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object v6

    throw v6

    :cond_a
    invoke-virtual {p0, v3}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->checkQuestion(I)Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-static {v5}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->createNGClosure(Lmf/org/apache/xerces/impl/xpath/regex/Token;)Lmf/org/apache/xerces/impl/xpath/regex/Token$ClosureToken;

    move-result-object v5

    add-int/lit8 v6, v3, 0x1

    iput v6, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    :goto_6
    invoke-virtual {v5, v2}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->setMin(I)V

    invoke-virtual {v5, v1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->setMax(I)V

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->next()V

    goto/16 :goto_1

    :cond_b
    invoke-static {v5}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->createClosure(Lmf/org/apache/xerces/impl/xpath/regex/Token;)Lmf/org/apache/xerces/impl/xpath/regex/Token$ClosureToken;

    move-result-object v5

    iput v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    goto :goto_6

    :cond_c
    move v3, v4

    goto :goto_4

    :cond_d
    move v3, v4

    goto :goto_5

    :cond_e
    move v3, v4

    goto/16 :goto_2

    :cond_f
    move v4, v3

    goto/16 :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_9
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_8
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_d
        :pswitch_1
        :pswitch_1
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x3c -> :sswitch_0
        0x3e -> :sswitch_6
        0x41 -> :sswitch_1
        0x42 -> :sswitch_5
        0x5a -> :sswitch_2
        0x62 -> :sswitch_4
        0x7a -> :sswitch_3
    .end sparse-switch
.end method

.method parseRegex()Lmf/org/apache/xerces/impl/xpath/regex/Token;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xpath/regex/ParseException;
        }
    .end annotation

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->parseTerm()Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->read()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->next()V

    if-nez v0, :cond_1

    invoke-static {}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->createUnion()Lmf/org/apache/xerces/impl/xpath/regex/Token$UnionToken;

    move-result-object v0

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->addChild(Lmf/org/apache/xerces/impl/xpath/regex/Token;)V

    move-object v1, v0

    :cond_1
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->parseTerm()Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->addChild(Lmf/org/apache/xerces/impl/xpath/regex/Token;)V

    goto :goto_0
.end method

.method protected parseSetOperations()Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xpath/regex/ParseException;
        }
    .end annotation

    const/16 v9, 0x2d

    const/16 v8, 0x26

    const/4 v7, 0x4

    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->parseCharacterClass(Z)Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;

    move-result-object v2

    :goto_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->read()I

    move-result v3

    const/4 v4, 0x7

    if-ne v3, v4, :cond_0

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->next()V

    return-object v2

    :cond_0
    iget v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->chardata:I

    if-nez v3, :cond_1

    if-eq v0, v9, :cond_2

    if-eq v0, v8, :cond_2

    :cond_1
    if-ne v3, v7, :cond_7

    :cond_2
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->next()V

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->read()I

    move-result v4

    const/16 v5, 0x9

    if-eq v4, v5, :cond_3

    const-string/jumbo v4, "parser.ope.1"

    iget v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {p0, v4, v5}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->ex(Ljava/lang/String;I)Lmf/org/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object v4

    throw v4

    :cond_3
    invoke-virtual {p0, v6}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->parseCharacterClass(Z)Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;

    move-result-object v1

    if-ne v3, v7, :cond_4

    invoke-virtual {v2, v1}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->mergeRanges(Lmf/org/apache/xerces/impl/xpath/regex/Token;)V

    goto :goto_0

    :cond_4
    if-ne v0, v9, :cond_5

    invoke-virtual {v2, v1}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->subtractRanges(Lmf/org/apache/xerces/impl/xpath/regex/Token;)V

    goto :goto_0

    :cond_5
    if-ne v0, v8, :cond_6

    invoke-virtual {v2, v1}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->intersectRanges(Lmf/org/apache/xerces/impl/xpath/regex/Token;)V

    goto :goto_0

    :cond_6
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "ASSERT"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_7
    const-string/jumbo v4, "parser.ope.2"

    iget v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {p0, v4, v5}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->ex(Ljava/lang/String;I)Lmf/org/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object v4

    throw v4
.end method

.method parseTerm()Lmf/org/apache/xerces/impl/xpath/regex/Token;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xpath/regex/ParseException;
        }
    .end annotation

    const/4 v6, 0x7

    const/4 v5, 0x2

    const/4 v4, 0x1

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->read()I

    move-result v0

    if-eq v0, v5, :cond_0

    if-eq v0, v6, :cond_0

    if-ne v0, v4, :cond_2

    :cond_0
    invoke-static {}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->createEmpty()Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v2

    :cond_1
    return-object v2

    :cond_2
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->parseFactor()Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v2

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->read()I

    move-result v0

    if-eq v0, v5, :cond_1

    if-eq v0, v6, :cond_1

    if-eq v0, v4, :cond_1

    if-nez v1, :cond_3

    invoke-static {}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->createConcat()Lmf/org/apache/xerces/impl/xpath/regex/Token$UnionToken;

    move-result-object v1

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->addChild(Lmf/org/apache/xerces/impl/xpath/regex/Token;)V

    move-object v2, v1

    :cond_3
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->parseFactor()Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v3

    invoke-virtual {v1, v3}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->addChild(Lmf/org/apache/xerces/impl/xpath/regex/Token;)V

    goto :goto_0
.end method

.method processBackreference()Lmf/org/apache/xerces/impl/xpath/regex/Token;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xpath/regex/ParseException;
        }
    .end annotation

    iget v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->chardata:I

    add-int/lit8 v2, v4, -0x30

    move v1, v2

    iget v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->parennumber:I

    if-gt v4, v2, :cond_1

    const-string/jumbo v4, "parser.parse.2"

    iget v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    add-int/lit8 v5, v5, -0x2

    invoke-virtual {p0, v4, v5}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->ex(Ljava/lang/String;I)Lmf/org/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object v4

    throw v4

    :cond_0
    iget-object v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->regex:Ljava/lang/String;

    iget v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v4, 0x30

    if-gt v4, v0, :cond_2

    const/16 v4, 0x39

    if-gt v0, v4, :cond_2

    mul-int/lit8 v4, v2, 0xa

    add-int/lit8 v5, v0, -0x30

    add-int v2, v4, v5

    iget v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->parennumber:I

    if-ge v2, v4, :cond_2

    iget v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    move v1, v2

    iput v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->chardata:I

    :cond_1
    iget v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    iget v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->regexlen:I

    if-lt v4, v5, :cond_0

    :cond_2
    invoke-static {v1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->createBackReference(I)Lmf/org/apache/xerces/impl/xpath/regex/Token$StringToken;

    move-result-object v3

    const/4 v4, 0x1

    iput-boolean v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->hasBackReferences:Z

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->references:Ljava/util/Vector;

    if-nez v4, :cond_3

    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    iput-object v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->references:Ljava/util/Vector;

    :cond_3
    iget-object v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->references:Ljava/util/Vector;

    new-instance v5, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser$ReferencePosition;

    iget v6, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    add-int/lit8 v6, v6, -0x2

    invoke-direct {v5, v1, v6}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser$ReferencePosition;-><init>(II)V

    invoke-virtual {v4, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->next()V

    return-object v3
.end method

.method processBacksolidus_A()Lmf/org/apache/xerces/impl/xpath/regex/Token;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xpath/regex/ParseException;
        }
    .end annotation

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->next()V

    sget-object v0, Lmf/org/apache/xerces/impl/xpath/regex/Token;->token_stringbeginning:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    return-object v0
.end method

.method processBacksolidus_B()Lmf/org/apache/xerces/impl/xpath/regex/Token;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xpath/regex/ParseException;
        }
    .end annotation

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->next()V

    sget-object v0, Lmf/org/apache/xerces/impl/xpath/regex/Token;->token_not_wordedge:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    return-object v0
.end method

.method processBacksolidus_C()Lmf/org/apache/xerces/impl/xpath/regex/Token;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xpath/regex/ParseException;
        }
    .end annotation

    const-string/jumbo v0, "parser.process.1"

    iget v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    invoke-virtual {p0, v0, v1}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->ex(Ljava/lang/String;I)Lmf/org/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object v0

    throw v0
.end method

.method processBacksolidus_I()Lmf/org/apache/xerces/impl/xpath/regex/Token;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xpath/regex/ParseException;
        }
    .end annotation

    const-string/jumbo v0, "parser.process.1"

    iget v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    invoke-virtual {p0, v0, v1}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->ex(Ljava/lang/String;I)Lmf/org/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object v0

    throw v0
.end method

.method processBacksolidus_X()Lmf/org/apache/xerces/impl/xpath/regex/Token;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xpath/regex/ParseException;
        }
    .end annotation

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->next()V

    invoke-static {}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getCombiningCharacterSequence()Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v0

    return-object v0
.end method

.method processBacksolidus_Z()Lmf/org/apache/xerces/impl/xpath/regex/Token;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xpath/regex/ParseException;
        }
    .end annotation

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->next()V

    sget-object v0, Lmf/org/apache/xerces/impl/xpath/regex/Token;->token_stringend2:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    return-object v0
.end method

.method processBacksolidus_b()Lmf/org/apache/xerces/impl/xpath/regex/Token;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xpath/regex/ParseException;
        }
    .end annotation

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->next()V

    sget-object v0, Lmf/org/apache/xerces/impl/xpath/regex/Token;->token_wordedge:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    return-object v0
.end method

.method processBacksolidus_c()Lmf/org/apache/xerces/impl/xpath/regex/Token;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xpath/regex/ParseException;
        }
    .end annotation

    iget v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    iget v2, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->regexlen:I

    if-ge v1, v2, :cond_0

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->regex:Ljava/lang/String;

    iget v2, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const v1, 0xffe0

    and-int/2addr v1, v0

    const/16 v2, 0x40

    if-eq v1, v2, :cond_1

    :cond_0
    const-string/jumbo v1, "parser.atom.1"

    iget v2, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v1, v2}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->ex(Ljava/lang/String;I)Lmf/org/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object v1

    throw v1

    :cond_1
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->next()V

    add-int/lit8 v1, v0, -0x40

    invoke-static {v1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->createChar(I)Lmf/org/apache/xerces/impl/xpath/regex/Token$CharToken;

    move-result-object v1

    return-object v1
.end method

.method processBacksolidus_g()Lmf/org/apache/xerces/impl/xpath/regex/Token;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xpath/regex/ParseException;
        }
    .end annotation

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->next()V

    invoke-static {}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getGraphemePattern()Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v0

    return-object v0
.end method

.method processBacksolidus_gt()Lmf/org/apache/xerces/impl/xpath/regex/Token;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xpath/regex/ParseException;
        }
    .end annotation

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->next()V

    sget-object v0, Lmf/org/apache/xerces/impl/xpath/regex/Token;->token_wordend:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    return-object v0
.end method

.method processBacksolidus_i()Lmf/org/apache/xerces/impl/xpath/regex/Token;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xpath/regex/ParseException;
        }
    .end annotation

    const/16 v1, 0x69

    invoke-static {v1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->createChar(I)Lmf/org/apache/xerces/impl/xpath/regex/Token$CharToken;

    move-result-object v0

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->next()V

    return-object v0
.end method

.method processBacksolidus_lt()Lmf/org/apache/xerces/impl/xpath/regex/Token;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xpath/regex/ParseException;
        }
    .end annotation

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->next()V

    sget-object v0, Lmf/org/apache/xerces/impl/xpath/regex/Token;->token_wordbeginning:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    return-object v0
.end method

.method protected processBacksolidus_pP(I)Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xpath/regex/ParseException;
        }
    .end annotation

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->next()V

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->read()I

    move-result v4

    if-nez v4, :cond_0

    iget v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->chardata:I

    const/16 v5, 0x7b

    if-eq v4, v5, :cond_1

    :cond_0
    const-string/jumbo v4, "parser.atom.2"

    iget v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {p0, v4, v5}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->ex(Ljava/lang/String;I)Lmf/org/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object v4

    throw v4

    :cond_1
    const/16 v4, 0x70

    if-ne p1, v4, :cond_2

    const/4 v3, 0x1

    :goto_0
    iget v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->regex:Ljava/lang/String;

    const/16 v5, 0x7d

    invoke-virtual {v4, v5, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    if-gez v0, :cond_3

    const-string/jumbo v4, "parser.atom.3"

    iget v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    invoke-virtual {p0, v4, v5}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->ex(Ljava/lang/String;I)Lmf/org/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object v4

    throw v4

    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    :cond_3
    iget-object v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->regex:Ljava/lang/String;

    invoke-virtual {v4, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v4, v0, 0x1

    iput v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    const/16 v4, 0x200

    invoke-virtual {p0, v4}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->isSet(I)Z

    move-result v4

    invoke-static {v2, v3, v4}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getRange(Ljava/lang/String;ZZ)Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;

    move-result-object v4

    return-object v4
.end method

.method processBacksolidus_z()Lmf/org/apache/xerces/impl/xpath/regex/Token;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xpath/regex/ParseException;
        }
    .end annotation

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->next()V

    sget-object v0, Lmf/org/apache/xerces/impl/xpath/regex/Token;->token_stringend:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    return-object v0
.end method

.method processCIinCharacterClass(Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;I)I
    .locals 1

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->decodeEscaped()I

    move-result v0

    return v0
.end method

.method processCaret()Lmf/org/apache/xerces/impl/xpath/regex/Token;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xpath/regex/ParseException;
        }
    .end annotation

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->next()V

    sget-object v0, Lmf/org/apache/xerces/impl/xpath/regex/Token;->token_linebeginning:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    return-object v0
.end method

.method processCondition()Lmf/org/apache/xerces/impl/xpath/regex/Token;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xpath/regex/ParseException;
        }
    .end annotation

    const/16 v8, 0x39

    const/4 v11, 0x7

    const/4 v10, 0x2

    const/4 v9, 0x1

    iget v6, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    add-int/lit8 v6, v6, 0x1

    iget v7, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->regexlen:I

    if-lt v6, v7, :cond_0

    const-string/jumbo v6, "parser.factor.4"

    iget v7, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    invoke-virtual {p0, v6, v7}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->ex(Ljava/lang/String;I)Lmf/org/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object v6

    throw v6

    :cond_0
    const/4 v4, -0x1

    const/4 v1, 0x0

    iget-object v6, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->regex:Ljava/lang/String;

    iget v7, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v6, 0x31

    if-gt v6, v0, :cond_7

    if-gt v0, v8, :cond_7

    add-int/lit8 v4, v0, -0x30

    move v2, v4

    iget v6, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->parennumber:I

    if-gt v6, v4, :cond_2

    const-string/jumbo v6, "parser.parse.2"

    iget v7, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    invoke-virtual {p0, v6, v7}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->ex(Ljava/lang/String;I)Lmf/org/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object v6

    throw v6

    :cond_1
    iget-object v6, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->regex:Ljava/lang/String;

    iget v7, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v6, 0x30

    if-gt v6, v0, :cond_3

    if-gt v0, v8, :cond_3

    mul-int/lit8 v6, v4, 0xa

    add-int/lit8 v7, v0, -0x30

    add-int v4, v6, v7

    iget v6, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->parennumber:I

    if-ge v4, v6, :cond_3

    move v2, v4

    iget v6, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    :cond_2
    iget v6, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    add-int/lit8 v6, v6, 0x1

    iget v7, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->regexlen:I

    if-lt v6, v7, :cond_1

    :cond_3
    iput-boolean v9, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->hasBackReferences:Z

    iget-object v6, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->references:Ljava/util/Vector;

    if-nez v6, :cond_4

    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    iput-object v6, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->references:Ljava/util/Vector;

    :cond_4
    iget-object v6, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->references:Ljava/util/Vector;

    new-instance v7, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser$ReferencePosition;

    iget v8, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    invoke-direct {v7, v2, v8}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser$ReferencePosition;-><init>(II)V

    invoke-virtual {v6, v7}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget v6, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    iget-object v6, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->regex:Ljava/lang/String;

    iget v7, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x29

    if-eq v6, v7, :cond_5

    const-string/jumbo v6, "parser.factor.1"

    iget v7, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    invoke-virtual {p0, v6, v7}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->ex(Ljava/lang/String;I)Lmf/org/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object v6

    throw v6

    :cond_5
    iget v6, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    :cond_6
    :sswitch_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->next()V

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->parseRegex()Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v5

    const/4 v3, 0x0

    iget v6, v5, Lmf/org/apache/xerces/impl/xpath/regex/Token;->type:I

    if-ne v6, v10, :cond_a

    invoke-virtual {v5}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->size()I

    move-result v6

    if-eq v6, v10, :cond_9

    const-string/jumbo v6, "parser.factor.6"

    iget v7, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    invoke-virtual {p0, v6, v7}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->ex(Ljava/lang/String;I)Lmf/org/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object v6

    throw v6

    :cond_7
    const/16 v6, 0x3f

    if-ne v0, v6, :cond_8

    iget v6, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    :cond_8
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->next()V

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->parseFactor()Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v1

    iget v6, v1, Lmf/org/apache/xerces/impl/xpath/regex/Token;->type:I

    sparse-switch v6, :sswitch_data_0

    const-string/jumbo v6, "parser.factor.5"

    iget v7, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    invoke-virtual {p0, v6, v7}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->ex(Ljava/lang/String;I)Lmf/org/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object v6

    throw v6

    :sswitch_1
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->read()I

    move-result v6

    if-eq v6, v11, :cond_6

    const-string/jumbo v6, "parser.factor.1"

    iget v7, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {p0, v6, v7}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->ex(Ljava/lang/String;I)Lmf/org/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object v6

    throw v6

    :cond_9
    invoke-virtual {v5, v9}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getChild(I)Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v3

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getChild(I)Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v5

    :cond_a
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->read()I

    move-result v6

    if-eq v6, v11, :cond_b

    const-string/jumbo v6, "parser.factor.1"

    iget v7, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {p0, v6, v7}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->ex(Ljava/lang/String;I)Lmf/org/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object v6

    throw v6

    :cond_b
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->next()V

    invoke-static {v4, v1, v5, v3}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->createCondition(ILmf/org/apache/xerces/impl/xpath/regex/Token;Lmf/org/apache/xerces/impl/xpath/regex/Token;Lmf/org/apache/xerces/impl/xpath/regex/Token;)Lmf/org/apache/xerces/impl/xpath/regex/Token$ConditionToken;

    move-result-object v6

    return-object v6

    nop

    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_1
        0x14 -> :sswitch_0
        0x15 -> :sswitch_0
        0x16 -> :sswitch_0
        0x17 -> :sswitch_0
    .end sparse-switch
.end method

.method processDollar()Lmf/org/apache/xerces/impl/xpath/regex/Token;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xpath/regex/ParseException;
        }
    .end annotation

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->next()V

    sget-object v0, Lmf/org/apache/xerces/impl/xpath/regex/Token;->token_lineend:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    return-object v0
.end method

.method processIndependent()Lmf/org/apache/xerces/impl/xpath/regex/Token;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xpath/regex/ParseException;
        }
    .end annotation

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->next()V

    const/16 v1, 0x18

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->parseRegex()Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v2

    invoke-static {v1, v2}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->createLook(ILmf/org/apache/xerces/impl/xpath/regex/Token;)Lmf/org/apache/xerces/impl/xpath/regex/Token$ParenToken;

    move-result-object v0

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->read()I

    move-result v1

    const/4 v2, 0x7

    if-eq v1, v2, :cond_0

    const-string/jumbo v1, "parser.factor.1"

    iget v2, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v1, v2}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->ex(Ljava/lang/String;I)Lmf/org/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object v1

    throw v1

    :cond_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->next()V

    return-object v0
.end method

.method processLookahead()Lmf/org/apache/xerces/impl/xpath/regex/Token;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xpath/regex/ParseException;
        }
    .end annotation

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->next()V

    const/16 v1, 0x14

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->parseRegex()Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v2

    invoke-static {v1, v2}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->createLook(ILmf/org/apache/xerces/impl/xpath/regex/Token;)Lmf/org/apache/xerces/impl/xpath/regex/Token$ParenToken;

    move-result-object v0

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->read()I

    move-result v1

    const/4 v2, 0x7

    if-eq v1, v2, :cond_0

    const-string/jumbo v1, "parser.factor.1"

    iget v2, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v1, v2}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->ex(Ljava/lang/String;I)Lmf/org/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object v1

    throw v1

    :cond_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->next()V

    return-object v0
.end method

.method processLookbehind()Lmf/org/apache/xerces/impl/xpath/regex/Token;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xpath/regex/ParseException;
        }
    .end annotation

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->next()V

    const/16 v1, 0x16

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->parseRegex()Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v2

    invoke-static {v1, v2}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->createLook(ILmf/org/apache/xerces/impl/xpath/regex/Token;)Lmf/org/apache/xerces/impl/xpath/regex/Token$ParenToken;

    move-result-object v0

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->read()I

    move-result v1

    const/4 v2, 0x7

    if-eq v1, v2, :cond_0

    const-string/jumbo v1, "parser.factor.1"

    iget v2, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v1, v2}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->ex(Ljava/lang/String;I)Lmf/org/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object v1

    throw v1

    :cond_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->next()V

    return-object v0
.end method

.method processModifiers()Lmf/org/apache/xerces/impl/xpath/regex/Token;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xpath/regex/ParseException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v1, -0x1

    :goto_0
    iget v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    iget v6, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->regexlen:I

    if-lt v5, v6, :cond_1

    :cond_0
    iget v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    iget v6, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->regexlen:I

    if-lt v5, v6, :cond_2

    const-string/jumbo v5, "parser.factor.2"

    iget v6, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {p0, v5, v6}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->ex(Ljava/lang/String;I)Lmf/org/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object v5

    throw v5

    :cond_1
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->regex:Ljava/lang/String;

    iget v6, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lmf/org/apache/xerces/impl/xpath/regex/REUtil;->getOptionValue(I)I

    move-result v4

    if-eqz v4, :cond_0

    or-int/2addr v0, v4

    iget v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    goto :goto_0

    :cond_2
    const/16 v5, 0x2d

    if-ne v1, v5, :cond_5

    iget v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    :goto_1
    iget v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    iget v6, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->regexlen:I

    if-lt v5, v6, :cond_4

    :cond_3
    iget v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    iget v6, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->regexlen:I

    if-lt v5, v6, :cond_5

    const-string/jumbo v5, "parser.factor.2"

    iget v6, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {p0, v5, v6}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->ex(Ljava/lang/String;I)Lmf/org/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object v5

    throw v5

    :cond_4
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->regex:Ljava/lang/String;

    iget v6, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lmf/org/apache/xerces/impl/xpath/regex/REUtil;->getOptionValue(I)I

    move-result v4

    if-eqz v4, :cond_3

    or-int/2addr v2, v4

    iget v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    goto :goto_1

    :cond_5
    const/16 v5, 0x3a

    if-ne v1, v5, :cond_7

    iget v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->next()V

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->parseRegex()Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v5

    invoke-static {v5, v0, v2}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->createModifierGroup(Lmf/org/apache/xerces/impl/xpath/regex/Token;II)Lmf/org/apache/xerces/impl/xpath/regex/Token$ModifierToken;

    move-result-object v3

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->read()I

    move-result v5

    const/4 v6, 0x7

    if-eq v5, v6, :cond_6

    const-string/jumbo v5, "parser.factor.1"

    iget v6, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {p0, v5, v6}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->ex(Ljava/lang/String;I)Lmf/org/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object v5

    throw v5

    :cond_6
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->next()V

    :goto_2
    return-object v3

    :cond_7
    const/16 v5, 0x29

    if-ne v1, v5, :cond_8

    iget v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->next()V

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->parseRegex()Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v5

    invoke-static {v5, v0, v2}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->createModifierGroup(Lmf/org/apache/xerces/impl/xpath/regex/Token;II)Lmf/org/apache/xerces/impl/xpath/regex/Token$ModifierToken;

    move-result-object v3

    goto :goto_2

    :cond_8
    const-string/jumbo v5, "parser.factor.3"

    iget v6, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    invoke-virtual {p0, v5, v6}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->ex(Ljava/lang/String;I)Lmf/org/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object v5

    throw v5
.end method

.method processNegativelookahead()Lmf/org/apache/xerces/impl/xpath/regex/Token;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xpath/regex/ParseException;
        }
    .end annotation

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->next()V

    const/16 v1, 0x15

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->parseRegex()Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v2

    invoke-static {v1, v2}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->createLook(ILmf/org/apache/xerces/impl/xpath/regex/Token;)Lmf/org/apache/xerces/impl/xpath/regex/Token$ParenToken;

    move-result-object v0

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->read()I

    move-result v1

    const/4 v2, 0x7

    if-eq v1, v2, :cond_0

    const-string/jumbo v1, "parser.factor.1"

    iget v2, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v1, v2}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->ex(Ljava/lang/String;I)Lmf/org/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object v1

    throw v1

    :cond_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->next()V

    return-object v0
.end method

.method processNegativelookbehind()Lmf/org/apache/xerces/impl/xpath/regex/Token;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xpath/regex/ParseException;
        }
    .end annotation

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->next()V

    const/16 v1, 0x17

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->parseRegex()Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v2

    invoke-static {v1, v2}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->createLook(ILmf/org/apache/xerces/impl/xpath/regex/Token;)Lmf/org/apache/xerces/impl/xpath/regex/Token$ParenToken;

    move-result-object v0

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->read()I

    move-result v1

    const/4 v2, 0x7

    if-eq v1, v2, :cond_0

    const-string/jumbo v1, "parser.factor.1"

    iget v2, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v1, v2}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->ex(Ljava/lang/String;I)Lmf/org/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object v1

    throw v1

    :cond_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->next()V

    return-object v0
.end method

.method processParen()Lmf/org/apache/xerces/impl/xpath/regex/Token;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xpath/regex/ParseException;
        }
    .end annotation

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->next()V

    iget v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->parenOpened:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->parenOpened:I

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->parseRegex()Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v2

    invoke-static {v2, v0}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->createParen(Lmf/org/apache/xerces/impl/xpath/regex/Token;I)Lmf/org/apache/xerces/impl/xpath/regex/Token$ParenToken;

    move-result-object v1

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->read()I

    move-result v2

    const/4 v3, 0x7

    if-eq v2, v3, :cond_0

    const-string/jumbo v2, "parser.factor.1"

    iget v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p0, v2, v3}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->ex(Ljava/lang/String;I)Lmf/org/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object v2

    throw v2

    :cond_0
    iget v2, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->parennumber:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->parennumber:I

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->next()V

    return-object v1
.end method

.method processParen2()Lmf/org/apache/xerces/impl/xpath/regex/Token;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xpath/regex/ParseException;
        }
    .end annotation

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->next()V

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->parseRegex()Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->createParen(Lmf/org/apache/xerces/impl/xpath/regex/Token;I)Lmf/org/apache/xerces/impl/xpath/regex/Token$ParenToken;

    move-result-object v0

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->read()I

    move-result v1

    const/4 v2, 0x7

    if-eq v1, v2, :cond_0

    const-string/jumbo v1, "parser.factor.1"

    iget v2, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->offset:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v1, v2}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->ex(Ljava/lang/String;I)Lmf/org/apache/xerces/impl/xpath/regex/ParseException;

    move-result-object v1

    throw v1

    :cond_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->next()V

    return-object v0
.end method

.method processPlus(Lmf/org/apache/xerces/impl/xpath/regex/Token;)Lmf/org/apache/xerces/impl/xpath/regex/Token;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xpath/regex/ParseException;
        }
    .end annotation

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->next()V

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->read()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->next()V

    invoke-static {p1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->createNGClosure(Lmf/org/apache/xerces/impl/xpath/regex/Token;)Lmf/org/apache/xerces/impl/xpath/regex/Token$ClosureToken;

    move-result-object v0

    invoke-static {p1, v0}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->createConcat(Lmf/org/apache/xerces/impl/xpath/regex/Token;Lmf/org/apache/xerces/impl/xpath/regex/Token;)Lmf/org/apache/xerces/impl/xpath/regex/Token$ConcatToken;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->createClosure(Lmf/org/apache/xerces/impl/xpath/regex/Token;)Lmf/org/apache/xerces/impl/xpath/regex/Token$ClosureToken;

    move-result-object v0

    invoke-static {p1, v0}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->createConcat(Lmf/org/apache/xerces/impl/xpath/regex/Token;Lmf/org/apache/xerces/impl/xpath/regex/Token;)Lmf/org/apache/xerces/impl/xpath/regex/Token$ConcatToken;

    move-result-object v0

    goto :goto_0
.end method

.method processQuestion(Lmf/org/apache/xerces/impl/xpath/regex/Token;)Lmf/org/apache/xerces/impl/xpath/regex/Token;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xpath/regex/ParseException;
        }
    .end annotation

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->next()V

    invoke-static {}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->createUnion()Lmf/org/apache/xerces/impl/xpath/regex/Token$UnionToken;

    move-result-object v0

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->read()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->next()V

    invoke-static {}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->createEmpty()Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->addChild(Lmf/org/apache/xerces/impl/xpath/regex/Token;)V

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->addChild(Lmf/org/apache/xerces/impl/xpath/regex/Token;)V

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->addChild(Lmf/org/apache/xerces/impl/xpath/regex/Token;)V

    invoke-static {}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->createEmpty()Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->addChild(Lmf/org/apache/xerces/impl/xpath/regex/Token;)V

    goto :goto_0
.end method

.method processStar(Lmf/org/apache/xerces/impl/xpath/regex/Token;)Lmf/org/apache/xerces/impl/xpath/regex/Token;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xpath/regex/ParseException;
        }
    .end annotation

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->next()V

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->read()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->next()V

    invoke-static {p1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->createNGClosure(Lmf/org/apache/xerces/impl/xpath/regex/Token;)Lmf/org/apache/xerces/impl/xpath/regex/Token$ClosureToken;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->createClosure(Lmf/org/apache/xerces/impl/xpath/regex/Token;)Lmf/org/apache/xerces/impl/xpath/regex/Token$ClosureToken;

    move-result-object v0

    goto :goto_0
.end method

.method final read()I
    .locals 1

    iget v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->nexttoken:I

    return v0
.end method

.method protected final setContext(I)V
    .locals 0

    iput p1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->context:I

    return-void
.end method

.method public setLocale(Ljava/util/Locale;)V
    .locals 4

    if-eqz p1, :cond_0

    :try_start_0
    const-string/jumbo v1, "mf.org.apache.xerces.impl.xpath.regex.message"

    invoke-static {v1, p1}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object v1

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->resources:Ljava/util/ResourceBundle;

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v1, "mf.org.apache.xerces.impl.xpath.regex.message"

    invoke-static {v1}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;)Ljava/util/ResourceBundle;

    move-result-object v1

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegexParser;->resources:Ljava/util/ResourceBundle;
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Installation Problem???  Couldn\'t load messages: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/MissingResourceException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
