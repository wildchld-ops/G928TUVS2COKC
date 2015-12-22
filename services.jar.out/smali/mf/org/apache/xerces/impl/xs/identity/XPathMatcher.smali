.class public Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;
.super Ljava/lang/Object;
.source "XPathMatcher.java"


# static fields
.field protected static final DEBUG_ALL:Z = false

.field protected static final DEBUG_ANY:Z = false

.field protected static final DEBUG_MATCH:Z = false

.field protected static final DEBUG_METHODS:Z = false

.field protected static final DEBUG_METHODS2:Z = false

.field protected static final DEBUG_METHODS3:Z = false

.field protected static final DEBUG_STACK:Z = false

.field protected static final MATCHED:I = 0x1

.field protected static final MATCHED_ATTRIBUTE:I = 0x3

.field protected static final MATCHED_DESCENDANT:I = 0x5

.field protected static final MATCHED_DESCENDANT_PREVIOUS:I = 0xd


# instance fields
.field private final fCurrentStep:[I

.field private final fLocationPaths:[Lmf/org/apache/xerces/impl/xpath/XPath$LocationPath;

.field private final fMatched:[I

.field protected fMatchedString:Ljava/lang/Object;

.field private final fNoMatchDepth:[I

.field final fQName:Lmf/org/apache/xerces/xni/QName;

.field private final fStepIndexes:[Lmf/org/apache/xerces/util/IntStack;


# direct methods
.method public constructor <init>(Lmf/org/apache/xerces/impl/xpath/XPath;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Lmf/org/apache/xerces/xni/QName;

    invoke-direct {v1}, Lmf/org/apache/xerces/xni/QName;-><init>()V

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->fQName:Lmf/org/apache/xerces/xni/QName;

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xpath/XPath;->getLocationPaths()[Lmf/org/apache/xerces/impl/xpath/XPath$LocationPath;

    move-result-object v1

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->fLocationPaths:[Lmf/org/apache/xerces/impl/xpath/XPath$LocationPath;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->fLocationPaths:[Lmf/org/apache/xerces/impl/xpath/XPath$LocationPath;

    array-length v1, v1

    new-array v1, v1, [Lmf/org/apache/xerces/util/IntStack;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->fStepIndexes:[Lmf/org/apache/xerces/util/IntStack;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->fStepIndexes:[Lmf/org/apache/xerces/util/IntStack;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->fLocationPaths:[Lmf/org/apache/xerces/impl/xpath/XPath$LocationPath;

    array-length v1, v1

    new-array v1, v1, [I

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->fCurrentStep:[I

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->fLocationPaths:[Lmf/org/apache/xerces/impl/xpath/XPath$LocationPath;

    array-length v1, v1

    new-array v1, v1, [I

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->fNoMatchDepth:[I

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->fLocationPaths:[Lmf/org/apache/xerces/impl/xpath/XPath$LocationPath;

    array-length v1, v1

    new-array v1, v1, [I

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->fMatched:[I

    return-void

    :cond_0
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->fStepIndexes:[Lmf/org/apache/xerces/util/IntStack;

    new-instance v2, Lmf/org/apache/xerces/util/IntStack;

    invoke-direct {v2}, Lmf/org/apache/xerces/util/IntStack;-><init>()V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static matches(Lmf/org/apache/xerces/impl/xpath/XPath$NodeTest;Lmf/org/apache/xerces/xni/QName;)Z
    .locals 3

    const/4 v0, 0x1

    iget-short v1, p0, Lmf/org/apache/xerces/impl/xpath/XPath$NodeTest;->type:S

    if-ne v1, v0, :cond_1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/XPath$NodeTest;->name:Lmf/org/apache/xerces/xni/QName;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/xni/QName;->equals(Ljava/lang/Object;)Z

    move-result v0

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-short v1, p0, Lmf/org/apache/xerces/impl/xpath/XPath$NodeTest;->type:S

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xpath/XPath$NodeTest;->name:Lmf/org/apache/xerces/xni/QName;

    iget-object v1, v1, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    iget-object v2, p1, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-eq v1, v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private normalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v2, :cond_0

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    :cond_0
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    packed-switch v0, :pswitch_data_0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :pswitch_0
    const-string v4, "\\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public endElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xs/XSTypeDefinition;ZLjava/lang/Object;SLmf/org/apache/xerces/xs/ShortList;)V
    .locals 9

    const/4 v8, 0x0

    const/4 v6, 0x0

    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->fLocationPaths:[Lmf/org/apache/xerces/impl/xpath/XPath$LocationPath;

    array-length v0, v0

    if-lt v6, v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->fCurrentStep:[I

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->fStepIndexes:[Lmf/org/apache/xerces/util/IntStack;

    aget-object v1, v1, v6

    invoke-virtual {v1}, Lmf/org/apache/xerces/util/IntStack;->pop()I

    move-result v1

    aput v1, v0, v6

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->fNoMatchDepth:[I

    aget v0, v0, v6

    if-lez v0, :cond_2

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->fNoMatchDepth:[I

    aget v1, v0, v6

    add-int/lit8 v1, v1, -0x1

    aput v1, v0, v6

    :cond_1
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    const/4 v7, 0x0

    :goto_2
    if-ge v7, v6, :cond_3

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->fMatched:[I

    aget v0, v0, v7

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    :cond_3
    if-lt v7, v6, :cond_1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->fMatched:[I

    aget v0, v0, v7

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->fMatched:[I

    aget v0, v0, v7

    and-int/lit8 v0, v0, 0x3

    const/4 v1, 0x3

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->fMatched:[I

    aput v8, v0, v6

    goto :goto_1

    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_5
    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move-object v3, p4

    move v4, p5

    move-object v5, p6

    invoke-virtual/range {v0 .. v5}, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->handleContent(Lmf/org/apache/xerces/xs/XSTypeDefinition;ZLjava/lang/Object;SLmf/org/apache/xerces/xs/ShortList;)V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->fMatched:[I

    aput v8, v0, v6

    goto :goto_1
.end method

.method protected handleContent(Lmf/org/apache/xerces/xs/XSTypeDefinition;ZLjava/lang/Object;SLmf/org/apache/xerces/xs/ShortList;)V
    .locals 0

    return-void
.end method

.method public isMatched()Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->fLocationPaths:[Lmf/org/apache/xerces/impl/xpath/XPath$LocationPath;

    array-length v2, v2

    if-lt v0, v2, :cond_1

    const/4 v1, 0x0

    :cond_0
    return v1

    :cond_1
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->fMatched:[I

    aget v2, v2, v0

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v1, :cond_2

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->fMatched:[I

    aget v2, v2, v0

    and-int/lit8 v2, v2, 0xd

    const/16 v3, 0xd

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->fNoMatchDepth:[I

    aget v2, v2, v0

    if-eqz v2, :cond_0

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->fMatched:[I

    aget v2, v2, v0

    and-int/lit8 v2, v2, 0x5

    const/4 v3, 0x5

    if-eq v2, v3, :cond_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected matched(Ljava/lang/Object;SLmf/org/apache/xerces/xs/ShortList;Z)V
    .locals 0

    return-void
.end method

.method public startDocumentFragment()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->fMatchedString:Ljava/lang/Object;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->fLocationPaths:[Lmf/org/apache/xerces/impl/xpath/XPath$LocationPath;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->fStepIndexes:[Lmf/org/apache/xerces/util/IntStack;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lmf/org/apache/xerces/util/IntStack;->clear()V

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->fCurrentStep:[I

    aput v2, v1, v0

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->fNoMatchDepth:[I

    aput v2, v1, v0

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->fMatched:[I

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public startElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;)V
    .locals 16

    const/4 v5, 0x0

    :goto_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->fLocationPaths:[Lmf/org/apache/xerces/impl/xpath/XPath$LocationPath;

    array-length v12, v12

    if-lt v5, v12, :cond_0

    return-void

    :cond_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->fCurrentStep:[I

    aget v9, v12, v5

    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->fStepIndexes:[Lmf/org/apache/xerces/util/IntStack;

    aget-object v12, v12, v5

    invoke-virtual {v12, v9}, Lmf/org/apache/xerces/util/IntStack;->push(I)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->fMatched:[I

    aget v12, v12, v5

    and-int/lit8 v12, v12, 0x5

    const/4 v13, 0x1

    if-eq v12, v13, :cond_1

    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->fNoMatchDepth:[I

    aget v12, v12, v5

    if-lez v12, :cond_3

    :cond_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->fNoMatchDepth:[I

    aget v13, v12, v5

    add-int/lit8 v13, v13, 0x1

    aput v13, v12, v5

    :cond_2
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->fMatched:[I

    aget v12, v12, v5

    and-int/lit8 v12, v12, 0x5

    const/4 v13, 0x5

    if-ne v12, v13, :cond_4

    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->fMatched:[I

    const/16 v13, 0xd

    aput v13, v12, v5

    :cond_4
    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->fLocationPaths:[Lmf/org/apache/xerces/impl/xpath/XPath$LocationPath;

    aget-object v12, v12, v5

    iget-object v11, v12, Lmf/org/apache/xerces/impl/xpath/XPath$LocationPath;->steps:[Lmf/org/apache/xerces/impl/xpath/XPath$Step;

    :goto_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->fCurrentStep:[I

    aget v12, v12, v5

    array-length v13, v11

    if-ge v12, v13, :cond_5

    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->fCurrentStep:[I

    aget v12, v12, v5

    aget-object v12, v11, v12

    iget-object v12, v12, Lmf/org/apache/xerces/impl/xpath/XPath$Step;->axis:Lmf/org/apache/xerces/impl/xpath/XPath$Axis;

    iget-short v12, v12, Lmf/org/apache/xerces/impl/xpath/XPath$Axis;->type:S

    const/4 v13, 0x3

    if-eq v12, v13, :cond_6

    :cond_5
    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->fCurrentStep:[I

    aget v12, v12, v5

    array-length v13, v11

    if-ne v12, v13, :cond_7

    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->fMatched:[I

    const/4 v13, 0x1

    aput v13, v12, v5

    goto :goto_1

    :cond_6
    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->fCurrentStep:[I

    aget v13, v12, v5

    add-int/lit8 v13, v13, 0x1

    aput v13, v12, v5

    goto :goto_2

    :cond_7
    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->fCurrentStep:[I

    aget v4, v12, v5

    :goto_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->fCurrentStep:[I

    aget v12, v12, v5

    array-length v13, v11

    if-ge v12, v13, :cond_8

    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->fCurrentStep:[I

    aget v12, v12, v5

    aget-object v12, v11, v12

    iget-object v12, v12, Lmf/org/apache/xerces/impl/xpath/XPath$Step;->axis:Lmf/org/apache/xerces/impl/xpath/XPath$Axis;

    iget-short v12, v12, Lmf/org/apache/xerces/impl/xpath/XPath$Axis;->type:S

    const/4 v13, 0x4

    if-eq v12, v13, :cond_9

    :cond_8
    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->fCurrentStep:[I

    aget v12, v12, v5

    if-le v12, v4, :cond_a

    const/4 v8, 0x1

    :goto_4
    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->fCurrentStep:[I

    aget v12, v12, v5

    array-length v13, v11

    if-ne v12, v13, :cond_b

    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->fNoMatchDepth:[I

    aget v13, v12, v5

    add-int/lit8 v13, v13, 0x1

    aput v13, v12, v5

    goto/16 :goto_1

    :cond_9
    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->fCurrentStep:[I

    aget v13, v12, v5

    add-int/lit8 v13, v13, 0x1

    aput v13, v12, v5

    goto :goto_3

    :cond_a
    const/4 v8, 0x0

    goto :goto_4

    :cond_b
    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->fCurrentStep:[I

    aget v12, v12, v5

    if-eq v12, v9, :cond_c

    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->fCurrentStep:[I

    aget v12, v12, v5

    if-le v12, v4, :cond_f

    :cond_c
    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->fCurrentStep:[I

    aget v12, v12, v5

    aget-object v12, v11, v12

    iget-object v12, v12, Lmf/org/apache/xerces/impl/xpath/XPath$Step;->axis:Lmf/org/apache/xerces/impl/xpath/XPath$Axis;

    iget-short v12, v12, Lmf/org/apache/xerces/impl/xpath/XPath$Axis;->type:S

    const/4 v13, 0x1

    if-ne v12, v13, :cond_f

    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->fCurrentStep:[I

    aget v12, v12, v5

    aget-object v10, v11, v12

    iget-object v7, v10, Lmf/org/apache/xerces/impl/xpath/XPath$Step;->nodeTest:Lmf/org/apache/xerces/impl/xpath/XPath$NodeTest;

    move-object/from16 v0, p1

    invoke-static {v7, v0}, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->matches(Lmf/org/apache/xerces/impl/xpath/XPath$NodeTest;Lmf/org/apache/xerces/xni/QName;)Z

    move-result v12

    if-nez v12, :cond_e

    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->fCurrentStep:[I

    aget v12, v12, v5

    if-le v12, v4, :cond_d

    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->fCurrentStep:[I

    aput v4, v12, v5

    goto/16 :goto_1

    :cond_d
    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->fNoMatchDepth:[I

    aget v13, v12, v5

    add-int/lit8 v13, v13, 0x1

    aput v13, v12, v5

    goto/16 :goto_1

    :cond_e
    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->fCurrentStep:[I

    aget v13, v12, v5

    add-int/lit8 v13, v13, 0x1

    aput v13, v12, v5

    :cond_f
    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->fCurrentStep:[I

    aget v12, v12, v5

    array-length v13, v11

    if-ne v12, v13, :cond_11

    if-eqz v8, :cond_10

    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->fCurrentStep:[I

    aput v4, v12, v5

    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->fMatched:[I

    const/4 v13, 0x5

    aput v13, v12, v5

    goto/16 :goto_1

    :cond_10
    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->fMatched:[I

    const/4 v13, 0x1

    aput v13, v12, v5

    goto/16 :goto_1

    :cond_11
    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->fCurrentStep:[I

    aget v12, v12, v5

    array-length v13, v11

    if-ge v12, v13, :cond_2

    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->fCurrentStep:[I

    aget v12, v12, v5

    aget-object v12, v11, v12

    iget-object v12, v12, Lmf/org/apache/xerces/impl/xpath/XPath$Step;->axis:Lmf/org/apache/xerces/impl/xpath/XPath$Axis;

    iget-short v12, v12, Lmf/org/apache/xerces/impl/xpath/XPath$Axis;->type:S

    const/4 v13, 0x2

    if-ne v12, v13, :cond_2

    invoke-interface/range {p2 .. p2}, Lmf/org/apache/xerces/xni/XMLAttributes;->getLength()I

    move-result v2

    if-lez v2, :cond_12

    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->fCurrentStep:[I

    aget v12, v12, v5

    aget-object v12, v11, v12

    iget-object v7, v12, Lmf/org/apache/xerces/impl/xpath/XPath$Step;->nodeTest:Lmf/org/apache/xerces/impl/xpath/XPath$NodeTest;

    const/4 v1, 0x0

    :goto_5
    if-lt v1, v2, :cond_13

    :cond_12
    :goto_6
    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->fMatched:[I

    aget v12, v12, v5

    and-int/lit8 v12, v12, 0x1

    const/4 v13, 0x1

    if-eq v12, v13, :cond_2

    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->fCurrentStep:[I

    aget v12, v12, v5

    if-le v12, v4, :cond_17

    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->fCurrentStep:[I

    aput v4, v12, v5

    goto/16 :goto_1

    :cond_13
    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->fQName:Lmf/org/apache/xerces/xni/QName;

    move-object/from16 v0, p2

    invoke-interface {v0, v1, v12}, Lmf/org/apache/xerces/xni/XMLAttributes;->getName(ILmf/org/apache/xerces/xni/QName;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->fQName:Lmf/org/apache/xerces/xni/QName;

    invoke-static {v7, v12}, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->matches(Lmf/org/apache/xerces/impl/xpath/XPath$NodeTest;Lmf/org/apache/xerces/xni/QName;)Z

    move-result v12

    if-eqz v12, :cond_16

    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->fCurrentStep:[I

    aget v13, v12, v5

    add-int/lit8 v13, v13, 0x1

    aput v13, v12, v5

    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->fCurrentStep:[I

    aget v12, v12, v5

    array-length v13, v11

    if-ne v12, v13, :cond_12

    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->fMatched:[I

    const/4 v13, 0x3

    aput v13, v12, v5

    const/4 v6, 0x0

    :goto_7
    if-ge v6, v5, :cond_14

    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->fMatched:[I

    aget v12, v12, v6

    and-int/lit8 v12, v12, 0x1

    const/4 v13, 0x1

    if-ne v12, v13, :cond_15

    :cond_14
    if-ne v6, v5, :cond_12

    move-object/from16 v0, p2

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/xni/XMLAttributes;->getAugmentations(I)Lmf/org/apache/xerces/xni/Augmentations;

    move-result-object v12

    const-string v13, "ATTRIBUTE_PSVI"

    invoke-interface {v12, v13}, Lmf/org/apache/xerces/xni/Augmentations;->getItem(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmf/org/apache/xerces/xs/AttributePSVI;

    invoke-interface {v3}, Lmf/org/apache/xerces/xs/AttributePSVI;->getActualNormalizedValue()Ljava/lang/Object;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->fMatchedString:Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->fMatchedString:Ljava/lang/Object;

    invoke-interface {v3}, Lmf/org/apache/xerces/xs/AttributePSVI;->getActualNormalizedValueType()S

    move-result v13

    invoke-interface {v3}, Lmf/org/apache/xerces/xs/AttributePSVI;->getItemValueTypes()Lmf/org/apache/xerces/xs/ShortList;

    move-result-object v14

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13, v14, v15}, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->matched(Ljava/lang/Object;SLmf/org/apache/xerces/xs/ShortList;Z)V

    goto :goto_6

    :cond_15
    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    :cond_16
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_5

    :cond_17
    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->fNoMatchDepth:[I

    aget v13, v12, v5

    add-int/lit8 v13, v13, 0x1

    aput v13, v12, v5

    goto/16 :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    const/16 v8, 0x5e

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v6, 0x2e

    invoke-virtual {v3, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    const/4 v6, -0x1

    if-eq v1, v6, :cond_0

    add-int/lit8 v6, v1, 0x1

    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    :cond_0
    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v0, 0x0

    :goto_0
    iget-object v6, p0, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->fLocationPaths:[Lmf/org/apache/xerces/impl/xpath/XPath$LocationPath;

    array-length v6, v6

    if-lt v0, v6, :cond_1

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6

    :cond_1
    const/16 v6, 0x5b

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v6, p0, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->fLocationPaths:[Lmf/org/apache/xerces/impl/xpath/XPath$LocationPath;

    aget-object v6, v6, v0

    iget-object v4, v6, Lmf/org/apache/xerces/impl/xpath/XPath$LocationPath;->steps:[Lmf/org/apache/xerces/impl/xpath/XPath$Step;

    const/4 v2, 0x0

    :goto_1
    array-length v6, v4

    if-lt v2, v6, :cond_3

    iget-object v6, p0, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->fCurrentStep:[I

    aget v6, v6, v0

    array-length v7, v4

    if-ne v6, v7, :cond_2

    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_2
    const/16 v6, 0x5d

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/16 v6, 0x2c

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    iget-object v6, p0, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->fCurrentStep:[I

    aget v6, v6, v0

    if-ne v2, v6, :cond_4

    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_4
    aget-object v6, v4, v2

    invoke-virtual {v6}, Lmf/org/apache/xerces/impl/xpath/XPath$Step;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    array-length v6, v4

    add-int/lit8 v6, v6, -0x1

    if-ge v2, v6, :cond_5

    const/16 v6, 0x2f

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method
