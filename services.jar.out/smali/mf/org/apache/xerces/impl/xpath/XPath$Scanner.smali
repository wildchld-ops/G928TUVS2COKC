.class Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;
.super Ljava/lang/Object;
.source "XPath.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmf/org/apache/xerces/impl/xpath/XPath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Scanner"
.end annotation


# static fields
.field private static final CHARTYPE_ATSIGN:B = 0x13t

.field private static final CHARTYPE_CLOSE_BRACKET:B = 0x16t

.field private static final CHARTYPE_CLOSE_PAREN:B = 0x7t

.field private static final CHARTYPE_COLON:B = 0xft

.field private static final CHARTYPE_COMMA:B = 0xat

.field private static final CHARTYPE_DIGIT:B = 0xet

.field private static final CHARTYPE_DOLLAR:B = 0x5t

.field private static final CHARTYPE_EQUAL:B = 0x11t

.field private static final CHARTYPE_EXCLAMATION:B = 0x3t

.field private static final CHARTYPE_GREATER:B = 0x12t

.field private static final CHARTYPE_INVALID:B = 0x0t

.field private static final CHARTYPE_LESS:B = 0x10t

.field private static final CHARTYPE_LETTER:B = 0x14t

.field private static final CHARTYPE_MINUS:B = 0xbt

.field private static final CHARTYPE_NONASCII:B = 0x19t

.field private static final CHARTYPE_OPEN_BRACKET:B = 0x15t

.field private static final CHARTYPE_OPEN_PAREN:B = 0x6t

.field private static final CHARTYPE_OTHER:B = 0x1t

.field private static final CHARTYPE_PERIOD:B = 0xct

.field private static final CHARTYPE_PLUS:B = 0x9t

.field private static final CHARTYPE_QUOTE:B = 0x4t

.field private static final CHARTYPE_SLASH:B = 0xdt

.field private static final CHARTYPE_STAR:B = 0x8t

.field private static final CHARTYPE_UNDERSCORE:B = 0x17t

.field private static final CHARTYPE_UNION:B = 0x18t

.field private static final CHARTYPE_WHITESPACE:B = 0x2t

.field private static final fASCIICharMap:[B

.field private static final fAncestorOrSelfSymbol:Ljava/lang/String;

.field private static final fAncestorSymbol:Ljava/lang/String;

.field private static final fAndSymbol:Ljava/lang/String;

.field private static final fAttributeSymbol:Ljava/lang/String;

.field private static final fChildSymbol:Ljava/lang/String;

.field private static final fCommentSymbol:Ljava/lang/String;

.field private static final fDescendantOrSelfSymbol:Ljava/lang/String;

.field private static final fDescendantSymbol:Ljava/lang/String;

.field private static final fDivSymbol:Ljava/lang/String;

.field private static final fFollowingSiblingSymbol:Ljava/lang/String;

.field private static final fFollowingSymbol:Ljava/lang/String;

.field private static final fModSymbol:Ljava/lang/String;

.field private static final fNamespaceSymbol:Ljava/lang/String;

.field private static final fNodeSymbol:Ljava/lang/String;

.field private static final fOrSymbol:Ljava/lang/String;

.field private static final fPISymbol:Ljava/lang/String;

.field private static final fParentSymbol:Ljava/lang/String;

.field private static final fPrecedingSiblingSymbol:Ljava/lang/String;

.field private static final fPrecedingSymbol:Ljava/lang/String;

.field private static final fSelfSymbol:Ljava/lang/String;

.field private static final fTextSymbol:Ljava/lang/String;


# instance fields
.field private fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v2, 0x2

    const/16 v5, 0xe

    const/4 v4, 0x1

    const/16 v3, 0x14

    const/16 v0, 0x80

    new-array v0, v0, [B

    const/16 v1, 0x9

    aput-byte v2, v0, v1

    const/16 v1, 0xa

    aput-byte v2, v0, v1

    const/16 v1, 0xd

    aput-byte v2, v0, v1

    const/16 v1, 0x20

    aput-byte v2, v0, v1

    const/16 v1, 0x21

    const/4 v2, 0x3

    aput-byte v2, v0, v1

    const/16 v1, 0x22

    aput-byte v6, v0, v1

    const/16 v1, 0x23

    aput-byte v4, v0, v1

    const/16 v1, 0x24

    const/4 v2, 0x5

    aput-byte v2, v0, v1

    const/16 v1, 0x25

    aput-byte v4, v0, v1

    const/16 v1, 0x26

    aput-byte v4, v0, v1

    const/16 v1, 0x27

    aput-byte v6, v0, v1

    const/16 v1, 0x28

    const/4 v2, 0x6

    aput-byte v2, v0, v1

    const/16 v1, 0x29

    const/4 v2, 0x7

    aput-byte v2, v0, v1

    const/16 v1, 0x2a

    const/16 v2, 0x8

    aput-byte v2, v0, v1

    const/16 v1, 0x2b

    const/16 v2, 0x9

    aput-byte v2, v0, v1

    const/16 v1, 0x2c

    const/16 v2, 0xa

    aput-byte v2, v0, v1

    const/16 v1, 0x2d

    const/16 v2, 0xb

    aput-byte v2, v0, v1

    const/16 v1, 0x2e

    const/16 v2, 0xc

    aput-byte v2, v0, v1

    const/16 v1, 0x2f

    const/16 v2, 0xd

    aput-byte v2, v0, v1

    const/16 v1, 0x30

    aput-byte v5, v0, v1

    const/16 v1, 0x31

    aput-byte v5, v0, v1

    const/16 v1, 0x32

    aput-byte v5, v0, v1

    const/16 v1, 0x33

    aput-byte v5, v0, v1

    const/16 v1, 0x34

    aput-byte v5, v0, v1

    const/16 v1, 0x35

    aput-byte v5, v0, v1

    const/16 v1, 0x36

    aput-byte v5, v0, v1

    const/16 v1, 0x37

    aput-byte v5, v0, v1

    const/16 v1, 0x38

    aput-byte v5, v0, v1

    const/16 v1, 0x39

    aput-byte v5, v0, v1

    const/16 v1, 0x3a

    const/16 v2, 0xf

    aput-byte v2, v0, v1

    const/16 v1, 0x3b

    aput-byte v4, v0, v1

    const/16 v1, 0x3c

    const/16 v2, 0x10

    aput-byte v2, v0, v1

    const/16 v1, 0x3d

    const/16 v2, 0x11

    aput-byte v2, v0, v1

    const/16 v1, 0x3e

    const/16 v2, 0x12

    aput-byte v2, v0, v1

    const/16 v1, 0x3f

    aput-byte v4, v0, v1

    const/16 v1, 0x40

    const/16 v2, 0x13

    aput-byte v2, v0, v1

    const/16 v1, 0x41

    aput-byte v3, v0, v1

    const/16 v1, 0x42

    aput-byte v3, v0, v1

    const/16 v1, 0x43

    aput-byte v3, v0, v1

    const/16 v1, 0x44

    aput-byte v3, v0, v1

    const/16 v1, 0x45

    aput-byte v3, v0, v1

    const/16 v1, 0x46

    aput-byte v3, v0, v1

    const/16 v1, 0x47

    aput-byte v3, v0, v1

    const/16 v1, 0x48

    aput-byte v3, v0, v1

    const/16 v1, 0x49

    aput-byte v3, v0, v1

    const/16 v1, 0x4a

    aput-byte v3, v0, v1

    const/16 v1, 0x4b

    aput-byte v3, v0, v1

    const/16 v1, 0x4c

    aput-byte v3, v0, v1

    const/16 v1, 0x4d

    aput-byte v3, v0, v1

    const/16 v1, 0x4e

    aput-byte v3, v0, v1

    const/16 v1, 0x4f

    aput-byte v3, v0, v1

    const/16 v1, 0x50

    aput-byte v3, v0, v1

    const/16 v1, 0x51

    aput-byte v3, v0, v1

    const/16 v1, 0x52

    aput-byte v3, v0, v1

    const/16 v1, 0x53

    aput-byte v3, v0, v1

    const/16 v1, 0x54

    aput-byte v3, v0, v1

    const/16 v1, 0x55

    aput-byte v3, v0, v1

    const/16 v1, 0x56

    aput-byte v3, v0, v1

    const/16 v1, 0x57

    aput-byte v3, v0, v1

    const/16 v1, 0x58

    aput-byte v3, v0, v1

    const/16 v1, 0x59

    aput-byte v3, v0, v1

    const/16 v1, 0x5a

    aput-byte v3, v0, v1

    const/16 v1, 0x5b

    const/16 v2, 0x15

    aput-byte v2, v0, v1

    const/16 v1, 0x5c

    aput-byte v4, v0, v1

    const/16 v1, 0x5d

    const/16 v2, 0x16

    aput-byte v2, v0, v1

    const/16 v1, 0x5e

    aput-byte v4, v0, v1

    const/16 v1, 0x5f

    const/16 v2, 0x17

    aput-byte v2, v0, v1

    const/16 v1, 0x60

    aput-byte v4, v0, v1

    const/16 v1, 0x61

    aput-byte v3, v0, v1

    const/16 v1, 0x62

    aput-byte v3, v0, v1

    const/16 v1, 0x63

    aput-byte v3, v0, v1

    const/16 v1, 0x64

    aput-byte v3, v0, v1

    const/16 v1, 0x65

    aput-byte v3, v0, v1

    const/16 v1, 0x66

    aput-byte v3, v0, v1

    const/16 v1, 0x67

    aput-byte v3, v0, v1

    const/16 v1, 0x68

    aput-byte v3, v0, v1

    const/16 v1, 0x69

    aput-byte v3, v0, v1

    const/16 v1, 0x6a

    aput-byte v3, v0, v1

    const/16 v1, 0x6b

    aput-byte v3, v0, v1

    const/16 v1, 0x6c

    aput-byte v3, v0, v1

    const/16 v1, 0x6d

    aput-byte v3, v0, v1

    const/16 v1, 0x6e

    aput-byte v3, v0, v1

    const/16 v1, 0x6f

    aput-byte v3, v0, v1

    const/16 v1, 0x70

    aput-byte v3, v0, v1

    const/16 v1, 0x71

    aput-byte v3, v0, v1

    const/16 v1, 0x72

    aput-byte v3, v0, v1

    const/16 v1, 0x73

    aput-byte v3, v0, v1

    const/16 v1, 0x74

    aput-byte v3, v0, v1

    const/16 v1, 0x75

    aput-byte v3, v0, v1

    const/16 v1, 0x76

    aput-byte v3, v0, v1

    const/16 v1, 0x77

    aput-byte v3, v0, v1

    const/16 v1, 0x78

    aput-byte v3, v0, v1

    const/16 v1, 0x79

    aput-byte v3, v0, v1

    const/16 v1, 0x7a

    aput-byte v3, v0, v1

    const/16 v1, 0x7b

    aput-byte v4, v0, v1

    const/16 v1, 0x7c

    const/16 v2, 0x18

    aput-byte v2, v0, v1

    const/16 v1, 0x7d

    aput-byte v4, v0, v1

    const/16 v1, 0x7e

    aput-byte v4, v0, v1

    const/16 v1, 0x7f

    aput-byte v4, v0, v1

    sput-object v0, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->fASCIICharMap:[B

    const-string v0, "and"

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->fAndSymbol:Ljava/lang/String;

    const-string/jumbo v0, "or"

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->fOrSymbol:Ljava/lang/String;

    const-string/jumbo v0, "mod"

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->fModSymbol:Ljava/lang/String;

    const-string v0, "div"

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->fDivSymbol:Ljava/lang/String;

    const-string v0, "comment"

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->fCommentSymbol:Ljava/lang/String;

    const-string/jumbo v0, "text"

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->fTextSymbol:Ljava/lang/String;

    const-string/jumbo v0, "processing-instruction"

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->fPISymbol:Ljava/lang/String;

    const-string/jumbo v0, "node"

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->fNodeSymbol:Ljava/lang/String;

    const-string v0, "ancestor"

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->fAncestorSymbol:Ljava/lang/String;

    const-string v0, "ancestor-or-self"

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->fAncestorOrSelfSymbol:Ljava/lang/String;

    const-string v0, "attribute"

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->fAttributeSymbol:Ljava/lang/String;

    const-string v0, "child"

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->fChildSymbol:Ljava/lang/String;

    const-string v0, "descendant"

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->fDescendantSymbol:Ljava/lang/String;

    const-string v0, "descendant-or-self"

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->fDescendantOrSelfSymbol:Ljava/lang/String;

    const-string/jumbo v0, "following"

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->fFollowingSymbol:Ljava/lang/String;

    const-string/jumbo v0, "following-sibling"

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->fFollowingSiblingSymbol:Ljava/lang/String;

    const-string/jumbo v0, "namespace"

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->fNamespaceSymbol:Ljava/lang/String;

    const-string/jumbo v0, "parent"

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->fParentSymbol:Ljava/lang/String;

    const-string/jumbo v0, "preceding"

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->fPrecedingSymbol:Ljava/lang/String;

    const-string/jumbo v0, "preceding-sibling"

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->fPrecedingSiblingSymbol:Ljava/lang/String;

    const-string/jumbo v0, "self"

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->fSelfSymbol:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lmf/org/apache/xerces/util/SymbolTable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    return-void
.end method

.method private scanNumber(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;Ljava/lang/String;II)I
    .locals 7

    const/16 v6, 0x39

    const/16 v5, 0x30

    invoke-virtual {p2, p4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/4 v2, 0x0

    const/4 v1, 0x0

    :goto_0
    if-lt v0, v5, :cond_0

    if-le v0, v6, :cond_2

    :cond_0
    const/16 v3, 0x2e

    if-ne v0, v3, :cond_4

    add-int/lit8 p4, p4, 0x1

    if-ge p4, p3, :cond_4

    invoke-virtual {p2, p4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    :goto_1
    if-lt v0, v5, :cond_1

    if-le v0, v6, :cond_3

    :cond_1
    if-eqz v1, :cond_4

    new-instance v3, Ljava/lang/RuntimeException;

    const-string/jumbo v4, "find a solution!"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_2
    mul-int/lit8 v3, v2, 0xa

    add-int/lit8 v4, v0, -0x30

    add-int v2, v3, v4

    add-int/lit8 p4, p4, 0x1

    if-eq p4, p3, :cond_0

    invoke-virtual {p2, p4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_0

    :cond_3
    mul-int/lit8 v3, v1, 0xa

    add-int/lit8 v4, v0, -0x30

    add-int v1, v3, v4

    add-int/lit8 p4, p4, 0x1

    if-eq p4, p3, :cond_1

    invoke-virtual {p2, p4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_1

    :cond_4
    invoke-virtual {p1, v2}, Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;->addToken(I)V

    invoke-virtual {p1, v1}, Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;->addToken(I)V

    return p4
.end method


# virtual methods
.method protected addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xpath/XPathException;
        }
    .end annotation

    invoke-virtual {p1, p2}, Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;->addToken(I)V

    return-void
.end method

.method public scanExpr(Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;Ljava/lang/String;II)Z
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xpath/XPathException;
        }
    .end annotation

    const/4 v15, 0x0

    :cond_0
    :goto_0
    move/from16 v0, p4

    move/from16 v1, p5

    if-ne v0, v1, :cond_2

    :cond_1
    const/16 v16, 0x1

    :goto_1
    return v16

    :cond_2
    invoke-virtual/range {p3 .. p4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    :goto_2
    const/16 v16, 0x20

    move/from16 v0, v16

    if-eq v5, v0, :cond_4

    const/16 v16, 0xa

    move/from16 v0, v16

    if-eq v5, v0, :cond_4

    const/16 v16, 0x9

    move/from16 v0, v16

    if-eq v5, v0, :cond_4

    const/16 v16, 0xd

    move/from16 v0, v16

    if-eq v5, v0, :cond_4

    :cond_3
    move/from16 v0, p4

    move/from16 v1, p5

    if-eq v0, v1, :cond_1

    const/16 v16, 0x80

    move/from16 v0, v16

    if-lt v5, v0, :cond_5

    const/16 v6, 0x19

    :goto_3
    packed-switch v6, :pswitch_data_0

    const/16 v16, 0x0

    goto :goto_1

    :cond_4
    add-int/lit8 p4, p4, 0x1

    move/from16 v0, p4

    move/from16 v1, p5

    if-eq v0, v1, :cond_3

    invoke-virtual/range {p3 .. p4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    goto :goto_2

    :cond_5
    sget-object v16, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->fASCIICharMap:[B

    aget-byte v6, v16, v5

    goto :goto_3

    :pswitch_0
    const/16 v16, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    const/4 v15, 0x0

    add-int/lit8 p4, p4, 0x1

    move/from16 v0, p4

    move/from16 v1, p5

    if-ne v0, v1, :cond_0

    goto :goto_0

    :pswitch_1
    const/16 v16, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    const/4 v15, 0x1

    add-int/lit8 p4, p4, 0x1

    move/from16 v0, p4

    move/from16 v1, p5

    if-ne v0, v1, :cond_0

    goto :goto_0

    :pswitch_2
    const/16 v16, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    const/4 v15, 0x0

    add-int/lit8 p4, p4, 0x1

    move/from16 v0, p4

    move/from16 v1, p5

    if-ne v0, v1, :cond_0

    goto/16 :goto_0

    :pswitch_3
    const/16 v16, 0x3

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    const/4 v15, 0x1

    add-int/lit8 p4, p4, 0x1

    move/from16 v0, p4

    move/from16 v1, p5

    if-ne v0, v1, :cond_0

    goto/16 :goto_0

    :pswitch_4
    add-int/lit8 v16, p4, 0x1

    move/from16 v0, v16

    move/from16 v1, p5

    if-ne v0, v1, :cond_6

    const/16 v16, 0x4

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    const/4 v15, 0x1

    add-int/lit8 p4, p4, 0x1

    goto/16 :goto_0

    :cond_6
    add-int/lit8 v16, p4, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v16, 0x2e

    move/from16 v0, v16

    if-ne v5, v0, :cond_7

    const/16 v16, 0x5

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    const/4 v15, 0x1

    add-int/lit8 p4, p4, 0x2

    :goto_4
    move/from16 v0, p4

    move/from16 v1, p5

    if-ne v0, v1, :cond_0

    goto/16 :goto_0

    :cond_7
    const/16 v16, 0x30

    move/from16 v0, v16

    if-lt v5, v0, :cond_8

    const/16 v16, 0x39

    move/from16 v0, v16

    if-gt v5, v0, :cond_8

    const/16 v16, 0x2f

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    const/4 v15, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move/from16 v3, p5

    move/from16 v4, p4

    invoke-direct {v0, v1, v2, v3, v4}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->scanNumber(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;Ljava/lang/String;II)I

    move-result p4

    goto :goto_4

    :cond_8
    const/16 v16, 0x2f

    move/from16 v0, v16

    if-ne v5, v0, :cond_9

    const/16 v16, 0x4

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    const/4 v15, 0x1

    add-int/lit8 p4, p4, 0x1

    goto :goto_4

    :cond_9
    const/16 v16, 0x7c

    move/from16 v0, v16

    if-ne v5, v0, :cond_a

    const/16 v16, 0x4

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    const/4 v15, 0x1

    add-int/lit8 p4, p4, 0x1

    goto/16 :goto_0

    :cond_a
    const/16 v16, 0x20

    move/from16 v0, v16

    if-eq v5, v0, :cond_b

    const/16 v16, 0xa

    move/from16 v0, v16

    if-eq v5, v0, :cond_b

    const/16 v16, 0x9

    move/from16 v0, v16

    if-eq v5, v0, :cond_b

    const/16 v16, 0xd

    move/from16 v0, v16

    if-ne v5, v0, :cond_f

    :cond_b
    add-int/lit8 p4, p4, 0x1

    move/from16 v0, p4

    move/from16 v1, p5

    if-ne v0, v1, :cond_d

    :goto_5
    move/from16 v0, p4

    move/from16 v1, p5

    if-eq v0, v1, :cond_c

    const/16 v16, 0x7c

    move/from16 v0, v16

    if-ne v5, v0, :cond_e

    :cond_c
    const/16 v16, 0x4

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    const/4 v15, 0x1

    goto/16 :goto_0

    :cond_d
    invoke-virtual/range {p3 .. p4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v16, 0x20

    move/from16 v0, v16

    if-eq v5, v0, :cond_b

    const/16 v16, 0xa

    move/from16 v0, v16

    if-eq v5, v0, :cond_b

    const/16 v16, 0x9

    move/from16 v0, v16

    if-eq v5, v0, :cond_b

    const/16 v16, 0xd

    move/from16 v0, v16

    if-eq v5, v0, :cond_b

    goto :goto_5

    :cond_e
    new-instance v16, Lmf/org/apache/xerces/impl/xpath/XPathException;

    const-string v17, "c-general-xpath"

    invoke-direct/range {v16 .. v17}, Lmf/org/apache/xerces/impl/xpath/XPathException;-><init>(Ljava/lang/String;)V

    throw v16

    :cond_f
    new-instance v16, Lmf/org/apache/xerces/impl/xpath/XPathException;

    const-string v17, "c-general-xpath"

    invoke-direct/range {v16 .. v17}, Lmf/org/apache/xerces/impl/xpath/XPathException;-><init>(Ljava/lang/String;)V

    throw v16

    :pswitch_5
    const/16 v16, 0x6

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    const/4 v15, 0x0

    add-int/lit8 p4, p4, 0x1

    move/from16 v0, p4

    move/from16 v1, p5

    if-ne v0, v1, :cond_0

    goto/16 :goto_0

    :pswitch_6
    const/16 v16, 0x7

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    const/4 v15, 0x0

    add-int/lit8 p4, p4, 0x1

    move/from16 v0, p4

    move/from16 v1, p5

    if-ne v0, v1, :cond_0

    goto/16 :goto_0

    :pswitch_7
    add-int/lit8 p4, p4, 0x1

    move/from16 v0, p4

    move/from16 v1, p5

    if-ne v0, v1, :cond_10

    const/16 v16, 0x0

    goto/16 :goto_1

    :cond_10
    invoke-virtual/range {p3 .. p4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v16, 0x3a

    move/from16 v0, v16

    if-eq v5, v0, :cond_11

    const/16 v16, 0x0

    goto/16 :goto_1

    :cond_11
    const/16 v16, 0x8

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    const/4 v15, 0x0

    add-int/lit8 p4, p4, 0x1

    move/from16 v0, p4

    move/from16 v1, p5

    if-ne v0, v1, :cond_0

    goto/16 :goto_0

    :pswitch_8
    add-int/lit8 p4, p4, 0x1

    move/from16 v0, p4

    move/from16 v1, p5

    if-ne v0, v1, :cond_12

    const/16 v16, 0x15

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    const/4 v15, 0x0

    goto/16 :goto_0

    :cond_12
    invoke-virtual/range {p3 .. p4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v16, 0x2f

    move/from16 v0, v16

    if-ne v5, v0, :cond_13

    const/16 v16, 0x16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    const/4 v15, 0x0

    add-int/lit8 p4, p4, 0x1

    move/from16 v0, p4

    move/from16 v1, p5

    if-ne v0, v1, :cond_0

    goto/16 :goto_0

    :cond_13
    const/16 v16, 0x15

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    const/4 v15, 0x0

    goto/16 :goto_0

    :pswitch_9
    const/16 v16, 0x17

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    const/4 v15, 0x0

    add-int/lit8 p4, p4, 0x1

    move/from16 v0, p4

    move/from16 v1, p5

    if-ne v0, v1, :cond_0

    goto/16 :goto_0

    :pswitch_a
    const/16 v16, 0x18

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    const/4 v15, 0x0

    add-int/lit8 p4, p4, 0x1

    move/from16 v0, p4

    move/from16 v1, p5

    if-ne v0, v1, :cond_0

    goto/16 :goto_0

    :pswitch_b
    const/16 v16, 0x19

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    const/4 v15, 0x0

    add-int/lit8 p4, p4, 0x1

    move/from16 v0, p4

    move/from16 v1, p5

    if-ne v0, v1, :cond_0

    goto/16 :goto_0

    :pswitch_c
    const/16 v16, 0x1a

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    const/4 v15, 0x0

    add-int/lit8 p4, p4, 0x1

    move/from16 v0, p4

    move/from16 v1, p5

    if-ne v0, v1, :cond_0

    goto/16 :goto_0

    :pswitch_d
    add-int/lit8 p4, p4, 0x1

    move/from16 v0, p4

    move/from16 v1, p5

    if-ne v0, v1, :cond_14

    const/16 v16, 0x0

    goto/16 :goto_1

    :cond_14
    invoke-virtual/range {p3 .. p4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v16, 0x3d

    move/from16 v0, v16

    if-eq v5, v0, :cond_15

    const/16 v16, 0x0

    goto/16 :goto_1

    :cond_15
    const/16 v16, 0x1b

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    const/4 v15, 0x0

    add-int/lit8 p4, p4, 0x1

    move/from16 v0, p4

    move/from16 v1, p5

    if-ne v0, v1, :cond_0

    goto/16 :goto_0

    :pswitch_e
    add-int/lit8 p4, p4, 0x1

    move/from16 v0, p4

    move/from16 v1, p5

    if-ne v0, v1, :cond_16

    const/16 v16, 0x1c

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    const/4 v15, 0x0

    goto/16 :goto_0

    :cond_16
    invoke-virtual/range {p3 .. p4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v16, 0x3d

    move/from16 v0, v16

    if-ne v5, v0, :cond_17

    const/16 v16, 0x1d

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    const/4 v15, 0x0

    add-int/lit8 p4, p4, 0x1

    move/from16 v0, p4

    move/from16 v1, p5

    if-ne v0, v1, :cond_0

    goto/16 :goto_0

    :cond_17
    const/16 v16, 0x1c

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    const/4 v15, 0x0

    goto/16 :goto_0

    :pswitch_f
    add-int/lit8 p4, p4, 0x1

    move/from16 v0, p4

    move/from16 v1, p5

    if-ne v0, v1, :cond_18

    const/16 v16, 0x1e

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    const/4 v15, 0x0

    goto/16 :goto_0

    :cond_18
    invoke-virtual/range {p3 .. p4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v16, 0x3d

    move/from16 v0, v16

    if-ne v5, v0, :cond_19

    const/16 v16, 0x1f

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    const/4 v15, 0x0

    add-int/lit8 p4, p4, 0x1

    move/from16 v0, p4

    move/from16 v1, p5

    if-ne v0, v1, :cond_0

    goto/16 :goto_0

    :cond_19
    const/16 v16, 0x1e

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    const/4 v15, 0x0

    goto/16 :goto_0

    :pswitch_10
    move v14, v5

    add-int/lit8 p4, p4, 0x1

    move/from16 v0, p4

    move/from16 v1, p5

    if-ne v0, v1, :cond_1a

    const/16 v16, 0x0

    goto/16 :goto_1

    :cond_1a
    invoke-virtual/range {p3 .. p4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    move/from16 v10, p4

    :goto_6
    if-ne v5, v14, :cond_1b

    sub-int v9, p4, v10

    const/16 v16, 0x2e

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    const/4 v15, 0x1

    add-int v16, v10, v9

    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v10, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;->addToken(Ljava/lang/String;)V

    add-int/lit8 p4, p4, 0x1

    move/from16 v0, p4

    move/from16 v1, p5

    if-ne v0, v1, :cond_0

    goto/16 :goto_0

    :cond_1b
    add-int/lit8 p4, p4, 0x1

    move/from16 v0, p4

    move/from16 v1, p5

    if-ne v0, v1, :cond_1c

    const/16 v16, 0x0

    goto/16 :goto_1

    :cond_1c
    invoke-virtual/range {p3 .. p4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    goto :goto_6

    :pswitch_11
    const/16 v16, 0x2f

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    const/4 v15, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move/from16 v3, p5

    move/from16 v4, p4

    invoke-direct {v0, v1, v2, v3, v4}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->scanNumber(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;Ljava/lang/String;II)I

    move-result p4

    goto/16 :goto_0

    :pswitch_12
    add-int/lit8 p4, p4, 0x1

    move/from16 v0, p4

    move/from16 v1, p5

    if-ne v0, v1, :cond_1d

    const/16 v16, 0x0

    goto/16 :goto_1

    :cond_1d
    move/from16 v12, p4

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move/from16 v2, p5

    move/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->scanNCName(Ljava/lang/String;II)I

    move-result p4

    move/from16 v0, p4

    if-ne v0, v12, :cond_1e

    const/16 v16, 0x0

    goto/16 :goto_1

    :cond_1e
    move/from16 v0, p4

    move/from16 v1, p5

    if-ge v0, v1, :cond_1f

    invoke-virtual/range {p3 .. p4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    :goto_7
    move-object/from16 v0, p3

    move/from16 v1, p4

    invoke-virtual {v0, v12, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const/16 v16, 0x3a

    move/from16 v0, v16

    if-eq v5, v0, :cond_20

    sget-object v13, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    :goto_8
    const/16 v16, 0x30

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    const/4 v15, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;->addToken(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;->addToken(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1f
    const/4 v5, -0x1

    goto :goto_7

    :cond_20
    move-object v13, v11

    add-int/lit8 p4, p4, 0x1

    move/from16 v0, p4

    move/from16 v1, p5

    if-ne v0, v1, :cond_21

    const/16 v16, 0x0

    goto/16 :goto_1

    :cond_21
    move/from16 v12, p4

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move/from16 v2, p5

    move/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->scanNCName(Ljava/lang/String;II)I

    move-result p4

    move/from16 v0, p4

    if-ne v0, v12, :cond_22

    const/16 v16, 0x0

    goto/16 :goto_1

    :cond_22
    move/from16 v0, p4

    move/from16 v1, p5

    if-ge v0, v1, :cond_23

    invoke-virtual/range {p3 .. p4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    :goto_9
    move-object/from16 v0, p3

    move/from16 v1, p4

    invoke-virtual {v0, v12, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    goto :goto_8

    :cond_23
    const/4 v5, -0x1

    goto :goto_9

    :pswitch_13
    if-eqz v15, :cond_24

    const/16 v16, 0x14

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    const/4 v15, 0x0

    :goto_a
    add-int/lit8 p4, p4, 0x1

    move/from16 v0, p4

    move/from16 v1, p5

    if-ne v0, v1, :cond_0

    goto/16 :goto_0

    :cond_24
    const/16 v16, 0x9

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    const/4 v15, 0x1

    goto :goto_a

    :pswitch_14
    move/from16 v12, p4

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move/from16 v2, p5

    move/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->scanNCName(Ljava/lang/String;II)I

    move-result p4

    move/from16 v0, p4

    if-ne v0, v12, :cond_25

    const/16 v16, 0x0

    goto/16 :goto_1

    :cond_25
    move/from16 v0, p4

    move/from16 v1, p5

    if-ge v0, v1, :cond_26

    invoke-virtual/range {p3 .. p4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    :goto_b
    move-object/from16 v0, p3

    move/from16 v1, p4

    invoke-virtual {v0, v12, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const/4 v8, 0x0

    const/4 v7, 0x0

    sget-object v13, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    const/16 v16, 0x3a

    move/from16 v0, v16

    if-ne v5, v0, :cond_29

    add-int/lit8 p4, p4, 0x1

    move/from16 v0, p4

    move/from16 v1, p5

    if-ne v0, v1, :cond_27

    const/16 v16, 0x0

    goto/16 :goto_1

    :cond_26
    const/4 v5, -0x1

    goto :goto_b

    :cond_27
    invoke-virtual/range {p3 .. p4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v16, 0x2a

    move/from16 v0, v16

    if-ne v5, v0, :cond_2b

    add-int/lit8 p4, p4, 0x1

    move/from16 v0, p4

    move/from16 v1, p5

    if-ge v0, v1, :cond_28

    invoke-virtual/range {p3 .. p4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    :cond_28
    const/4 v8, 0x1

    :cond_29
    :goto_c
    const/16 v16, 0x20

    move/from16 v0, v16

    if-eq v5, v0, :cond_30

    const/16 v16, 0xa

    move/from16 v0, v16

    if-eq v5, v0, :cond_30

    const/16 v16, 0x9

    move/from16 v0, v16

    if-eq v5, v0, :cond_30

    const/16 v16, 0xd

    move/from16 v0, v16

    if-eq v5, v0, :cond_30

    :cond_2a
    if-eqz v15, :cond_36

    sget-object v16, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->fAndSymbol:Ljava/lang/String;

    move-object/from16 v0, v16

    if-ne v11, v0, :cond_31

    const/16 v16, 0x10

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    const/4 v15, 0x0

    :goto_d
    if-eqz v8, :cond_35

    const/16 v16, 0x0

    goto/16 :goto_1

    :cond_2b
    const/16 v16, 0x3a

    move/from16 v0, v16

    if-ne v5, v0, :cond_2d

    add-int/lit8 p4, p4, 0x1

    move/from16 v0, p4

    move/from16 v1, p5

    if-ge v0, v1, :cond_2c

    invoke-virtual/range {p3 .. p4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    :cond_2c
    const/4 v7, 0x1

    goto :goto_c

    :cond_2d
    move-object v13, v11

    move/from16 v12, p4

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move/from16 v2, p5

    move/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->scanNCName(Ljava/lang/String;II)I

    move-result p4

    move/from16 v0, p4

    if-ne v0, v12, :cond_2e

    const/16 v16, 0x0

    goto/16 :goto_1

    :cond_2e
    move/from16 v0, p4

    move/from16 v1, p5

    if-ge v0, v1, :cond_2f

    invoke-virtual/range {p3 .. p4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    :goto_e
    move-object/from16 v0, p3

    move/from16 v1, p4

    invoke-virtual {v0, v12, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    goto :goto_c

    :cond_2f
    const/4 v5, -0x1

    goto :goto_e

    :cond_30
    add-int/lit8 p4, p4, 0x1

    move/from16 v0, p4

    move/from16 v1, p5

    if-eq v0, v1, :cond_2a

    invoke-virtual/range {p3 .. p4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    goto/16 :goto_c

    :cond_31
    sget-object v16, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->fOrSymbol:Ljava/lang/String;

    move-object/from16 v0, v16

    if-ne v11, v0, :cond_32

    const/16 v16, 0x11

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    const/4 v15, 0x0

    goto :goto_d

    :cond_32
    sget-object v16, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->fModSymbol:Ljava/lang/String;

    move-object/from16 v0, v16

    if-ne v11, v0, :cond_33

    const/16 v16, 0x12

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    const/4 v15, 0x0

    goto/16 :goto_d

    :cond_33
    sget-object v16, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->fDivSymbol:Ljava/lang/String;

    move-object/from16 v0, v16

    if-ne v11, v0, :cond_34

    const/16 v16, 0x13

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    const/4 v15, 0x0

    goto/16 :goto_d

    :cond_34
    const/16 v16, 0x0

    goto/16 :goto_1

    :cond_35
    if-eqz v7, :cond_0

    const/16 v16, 0x0

    goto/16 :goto_1

    :cond_36
    const/16 v16, 0x28

    move/from16 v0, v16

    if-ne v5, v0, :cond_3b

    if-nez v8, :cond_3b

    if-nez v7, :cond_3b

    sget-object v16, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->fCommentSymbol:Ljava/lang/String;

    move-object/from16 v0, v16

    if-ne v11, v0, :cond_37

    const/16 v16, 0xc

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    :goto_f
    const/16 v16, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    const/4 v15, 0x0

    add-int/lit8 p4, p4, 0x1

    move/from16 v0, p4

    move/from16 v1, p5

    if-ne v0, v1, :cond_0

    goto/16 :goto_0

    :cond_37
    sget-object v16, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->fTextSymbol:Ljava/lang/String;

    move-object/from16 v0, v16

    if-ne v11, v0, :cond_38

    const/16 v16, 0xd

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    goto :goto_f

    :cond_38
    sget-object v16, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->fPISymbol:Ljava/lang/String;

    move-object/from16 v0, v16

    if-ne v11, v0, :cond_39

    const/16 v16, 0xe

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    goto :goto_f

    :cond_39
    sget-object v16, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->fNodeSymbol:Ljava/lang/String;

    move-object/from16 v0, v16

    if-ne v11, v0, :cond_3a

    const/16 v16, 0xf

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    goto :goto_f

    :cond_3a
    const/16 v16, 0x20

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;->addToken(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;->addToken(Ljava/lang/String;)V

    goto :goto_f

    :cond_3b
    if-nez v7, :cond_3c

    const/16 v16, 0x3a

    move/from16 v0, v16

    if-ne v5, v0, :cond_4b

    add-int/lit8 v16, p4, 0x1

    move/from16 v0, v16

    move/from16 v1, p5

    if-ge v0, v1, :cond_4b

    add-int/lit8 v16, p4, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v16

    const/16 v17, 0x3a

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_4b

    :cond_3c
    sget-object v16, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->fAncestorSymbol:Ljava/lang/String;

    move-object/from16 v0, v16

    if-ne v11, v0, :cond_3d

    const/16 v16, 0x21

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    :goto_10
    if-eqz v8, :cond_4a

    const/16 v16, 0x0

    goto/16 :goto_1

    :cond_3d
    sget-object v16, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->fAncestorOrSelfSymbol:Ljava/lang/String;

    move-object/from16 v0, v16

    if-ne v11, v0, :cond_3e

    const/16 v16, 0x22

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    goto :goto_10

    :cond_3e
    sget-object v16, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->fAttributeSymbol:Ljava/lang/String;

    move-object/from16 v0, v16

    if-ne v11, v0, :cond_3f

    const/16 v16, 0x23

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    goto :goto_10

    :cond_3f
    sget-object v16, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->fChildSymbol:Ljava/lang/String;

    move-object/from16 v0, v16

    if-ne v11, v0, :cond_40

    const/16 v16, 0x24

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    goto :goto_10

    :cond_40
    sget-object v16, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->fDescendantSymbol:Ljava/lang/String;

    move-object/from16 v0, v16

    if-ne v11, v0, :cond_41

    const/16 v16, 0x25

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    goto :goto_10

    :cond_41
    sget-object v16, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->fDescendantOrSelfSymbol:Ljava/lang/String;

    move-object/from16 v0, v16

    if-ne v11, v0, :cond_42

    const/16 v16, 0x26

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    goto :goto_10

    :cond_42
    sget-object v16, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->fFollowingSymbol:Ljava/lang/String;

    move-object/from16 v0, v16

    if-ne v11, v0, :cond_43

    const/16 v16, 0x27

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    goto :goto_10

    :cond_43
    sget-object v16, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->fFollowingSiblingSymbol:Ljava/lang/String;

    move-object/from16 v0, v16

    if-ne v11, v0, :cond_44

    const/16 v16, 0x28

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    goto/16 :goto_10

    :cond_44
    sget-object v16, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->fNamespaceSymbol:Ljava/lang/String;

    move-object/from16 v0, v16

    if-ne v11, v0, :cond_45

    const/16 v16, 0x29

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    goto/16 :goto_10

    :cond_45
    sget-object v16, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->fParentSymbol:Ljava/lang/String;

    move-object/from16 v0, v16

    if-ne v11, v0, :cond_46

    const/16 v16, 0x2a

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    goto/16 :goto_10

    :cond_46
    sget-object v16, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->fPrecedingSymbol:Ljava/lang/String;

    move-object/from16 v0, v16

    if-ne v11, v0, :cond_47

    const/16 v16, 0x2b

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    goto/16 :goto_10

    :cond_47
    sget-object v16, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->fPrecedingSiblingSymbol:Ljava/lang/String;

    move-object/from16 v0, v16

    if-ne v11, v0, :cond_48

    const/16 v16, 0x2c

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    goto/16 :goto_10

    :cond_48
    sget-object v16, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->fSelfSymbol:Ljava/lang/String;

    move-object/from16 v0, v16

    if-ne v11, v0, :cond_49

    const/16 v16, 0x2d

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    goto/16 :goto_10

    :cond_49
    const/16 v16, 0x0

    goto/16 :goto_1

    :cond_4a
    const/16 v16, 0x8

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    const/4 v15, 0x0

    if-nez v7, :cond_0

    add-int/lit8 p4, p4, 0x1

    add-int/lit8 p4, p4, 0x1

    move/from16 v0, p4

    move/from16 v1, p5

    if-ne v0, v1, :cond_0

    goto/16 :goto_0

    :cond_4b
    if-eqz v8, :cond_4c

    const/16 v16, 0xa

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    const/4 v15, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;->addToken(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4c
    const/16 v16, 0xb

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    const/4 v15, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;->addToken(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;->addToken(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_d
        :pswitch_10
        :pswitch_12
        :pswitch_0
        :pswitch_1
        :pswitch_13
        :pswitch_a
        :pswitch_6
        :pswitch_b
        :pswitch_4
        :pswitch_8
        :pswitch_11
        :pswitch_7
        :pswitch_e
        :pswitch_c
        :pswitch_f
        :pswitch_5
        :pswitch_14
        :pswitch_2
        :pswitch_3
        :pswitch_14
        :pswitch_9
        :pswitch_14
    .end packed-switch
.end method

.method scanNCName(Ljava/lang/String;II)I
    .locals 7

    const/16 v6, 0x80

    const/16 v5, 0x17

    const/16 v4, 0x14

    invoke-virtual {p1, p3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-lt v0, v6, :cond_0

    invoke-static {v0}, Lmf/org/apache/xerces/util/XMLChar;->isNameStart(I)Z

    move-result v3

    if-nez v3, :cond_4

    move v2, p3

    :goto_0
    return v2

    :cond_0
    sget-object v3, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->fASCIICharMap:[B

    aget-byte v1, v3, v0

    if-eq v1, v4, :cond_4

    if-eq v1, v5, :cond_4

    move v2, p3

    goto :goto_0

    :cond_1
    invoke-virtual {p1, p3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-lt v0, v6, :cond_3

    invoke-static {v0}, Lmf/org/apache/xerces/util/XMLChar;->isName(I)Z

    move-result v3

    if-nez v3, :cond_4

    :cond_2
    :goto_1
    move v2, p3

    goto :goto_0

    :cond_3
    sget-object v3, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->fASCIICharMap:[B

    aget-byte v1, v3, v0

    if-eq v1, v4, :cond_4

    const/16 v3, 0xe

    if-eq v1, v3, :cond_4

    const/16 v3, 0xc

    if-eq v1, v3, :cond_4

    const/16 v3, 0xb

    if-eq v1, v3, :cond_4

    if-ne v1, v5, :cond_2

    :cond_4
    add-int/lit8 p3, p3, 0x1

    if-lt p3, p2, :cond_1

    goto :goto_1
.end method
