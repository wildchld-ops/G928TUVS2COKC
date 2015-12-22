.class public Lmf/org/apache/xerces/dom/DOMNormalizer;
.super Ljava/lang/Object;
.source "DOMNormalizer.java"

# interfaces
.implements Lmf/org/apache/xerces/xni/XMLDocumentHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmf/org/apache/xerces/dom/DOMNormalizer$XMLAttributesProxy;
    }
.end annotation


# static fields
.field protected static final DEBUG:Z = false

.field protected static final DEBUG_EVENTS:Z = false

.field protected static final DEBUG_ND:Z = false

.field public static final EMPTY_STRING:Lmf/org/apache/xerces/xni/XMLString;

.field protected static final PREFIX:Ljava/lang/String; = "NS"

.field public static final abort:Ljava/lang/RuntimeException;


# instance fields
.field private fAllWhitespace:Z

.field protected final fAttrProxy:Lmf/org/apache/xerces/dom/DOMNormalizer$XMLAttributesProxy;

.field private final fAttrQName:Lmf/org/apache/xerces/xni/QName;

.field protected final fAttributeList:Ljava/util/ArrayList;

.field protected fConfiguration:Lmf/org/apache/xerces/dom/DOMConfigurationImpl;

.field protected fCurrentNode:Lmf/org/w3c/dom/Node;

.field protected fDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

.field private final fError:Lmf/org/apache/xerces/dom/DOMErrorImpl;

.field protected fErrorHandler:Lmf/org/w3c/dom/DOMErrorHandler;

.field protected final fLocalNSBinder:Lmf/org/apache/xerces/xni/NamespaceContext;

.field protected final fLocator:Lmf/org/apache/xerces/dom/DOMLocatorImpl;

.field protected final fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

.field protected fNamespaceValidation:Z

.field final fNormalizedValue:Lmf/org/apache/xerces/xni/XMLString;

.field protected fPSVI:Z

.field protected final fQName:Lmf/org/apache/xerces/xni/QName;

.field protected fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

.field protected fValidationHandler:Lmf/org/apache/xerces/impl/RevalidationHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    sput-object v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->abort:Ljava/lang/RuntimeException;

    new-instance v0, Lmf/org/apache/xerces/xni/XMLString;

    invoke-direct {v0}, Lmf/org/apache/xerces/xni/XMLString;-><init>()V

    sput-object v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->EMPTY_STRING:Lmf/org/apache/xerces/xni/XMLString;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fConfiguration:Lmf/org/apache/xerces/dom/DOMConfigurationImpl;

    iput-object v3, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    new-instance v0, Lmf/org/apache/xerces/dom/DOMNormalizer$XMLAttributesProxy;

    invoke-direct {v0, p0}, Lmf/org/apache/xerces/dom/DOMNormalizer$XMLAttributesProxy;-><init>(Lmf/org/apache/xerces/dom/DOMNormalizer;)V

    iput-object v0, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fAttrProxy:Lmf/org/apache/xerces/dom/DOMNormalizer$XMLAttributesProxy;

    new-instance v0, Lmf/org/apache/xerces/xni/QName;

    invoke-direct {v0}, Lmf/org/apache/xerces/xni/QName;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fQName:Lmf/org/apache/xerces/xni/QName;

    new-instance v0, Lmf/org/apache/xerces/dom/DOMErrorImpl;

    invoke-direct {v0}, Lmf/org/apache/xerces/dom/DOMErrorImpl;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fError:Lmf/org/apache/xerces/dom/DOMErrorImpl;

    iput-boolean v2, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fNamespaceValidation:Z

    iput-boolean v2, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fPSVI:Z

    new-instance v0, Lmf/org/apache/xerces/util/NamespaceSupport;

    invoke-direct {v0}, Lmf/org/apache/xerces/util/NamespaceSupport;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    new-instance v0, Lmf/org/apache/xerces/util/NamespaceSupport;

    invoke-direct {v0}, Lmf/org/apache/xerces/util/NamespaceSupport;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fLocalNSBinder:Lmf/org/apache/xerces/xni/NamespaceContext;

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fAttributeList:Ljava/util/ArrayList;

    new-instance v0, Lmf/org/apache/xerces/dom/DOMLocatorImpl;

    invoke-direct {v0}, Lmf/org/apache/xerces/dom/DOMLocatorImpl;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fLocator:Lmf/org/apache/xerces/dom/DOMLocatorImpl;

    iput-object v3, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fCurrentNode:Lmf/org/w3c/dom/Node;

    new-instance v0, Lmf/org/apache/xerces/xni/QName;

    invoke-direct {v0}, Lmf/org/apache/xerces/xni/QName;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fAttrQName:Lmf/org/apache/xerces/xni/QName;

    new-instance v0, Lmf/org/apache/xerces/xni/XMLString;

    const/16 v1, 0x10

    new-array v1, v1, [C

    invoke-direct {v0, v1, v2, v2}, Lmf/org/apache/xerces/xni/XMLString;-><init>([CII)V

    iput-object v0, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fNormalizedValue:Lmf/org/apache/xerces/xni/XMLString;

    iput-boolean v2, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fAllWhitespace:Z

    return-void
.end method

.method public static final isAttrValueWF(Lmf/org/w3c/dom/DOMErrorHandler;Lmf/org/apache/xerces/dom/DOMErrorImpl;Lmf/org/apache/xerces/dom/DOMLocatorImpl;Lmf/org/w3c/dom/NamedNodeMap;Lmf/org/w3c/dom/Attr;Ljava/lang/String;Z)V
    .locals 18

    move-object/from16 v0, p4

    instance-of v5, v0, Lmf/org/apache/xerces/dom/AttrImpl;

    if-eqz v5, :cond_1

    move-object/from16 v5, p4

    check-cast v5, Lmf/org/apache/xerces/dom/AttrImpl;

    invoke-virtual {v5}, Lmf/org/apache/xerces/dom/AttrImpl;->hasStringValue()Z

    move-result v5

    if-eqz v5, :cond_1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p5

    move/from16 v4, p6

    invoke-static {v0, v1, v2, v3, v4}, Lmf/org/apache/xerces/dom/DOMNormalizer;->isXMLCharWF(Lmf/org/w3c/dom/DOMErrorHandler;Lmf/org/apache/xerces/dom/DOMErrorImpl;Lmf/org/apache/xerces/dom/DOMLocatorImpl;Ljava/lang/String;Z)V

    :cond_0
    return-void

    :cond_1
    invoke-interface/range {p4 .. p4}, Lmf/org/w3c/dom/Attr;->getChildNodes()Lmf/org/w3c/dom/NodeList;

    move-result-object v12

    const/16 v16, 0x0

    :goto_0
    invoke-interface {v12}, Lmf/org/w3c/dom/NodeList;->getLength()I

    move-result v5

    move/from16 v0, v16

    if-ge v0, v5, :cond_0

    move/from16 v0, v16

    invoke-interface {v12, v0}, Lmf/org/w3c/dom/NodeList;->item(I)Lmf/org/w3c/dom/Node;

    move-result-object v11

    invoke-interface {v11}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v5

    const/4 v6, 0x5

    if-ne v5, v6, :cond_4

    invoke-interface/range {p4 .. p4}, Lmf/org/w3c/dom/Attr;->getOwnerDocument()Lmf/org/w3c/dom/Document;

    move-result-object v17

    const/4 v14, 0x0

    if-eqz v17, :cond_2

    invoke-interface/range {v17 .. v17}, Lmf/org/w3c/dom/Document;->getDoctype()Lmf/org/w3c/dom/DocumentType;

    move-result-object v13

    if-eqz v13, :cond_2

    invoke-interface {v13}, Lmf/org/w3c/dom/DocumentType;->getEntities()Lmf/org/w3c/dom/NamedNodeMap;

    move-result-object v15

    const-string v5, "*"

    invoke-interface {v11}, Lmf/org/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v15, v5, v6}, Lmf/org/w3c/dom/NamedNodeMap;->getNamedItemNS(Ljava/lang/String;Ljava/lang/String;)Lmf/org/w3c/dom/Node;

    move-result-object v14

    check-cast v14, Lmf/org/w3c/dom/Entity;

    :cond_2
    if-nez v14, :cond_3

    const-string/jumbo v5, "http://www.w3.org/dom/DOMTR"

    const-string v6, "UndeclaredEntRefInAttrValue"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-interface/range {p4 .. p4}, Lmf/org/w3c/dom/Attr;->getNodeName()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v7, v9

    invoke-static {v5, v6, v7}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x2

    const-string v10, "UndeclaredEntRefInAttrValue"

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    invoke-static/range {v5 .. v10}, Lmf/org/apache/xerces/dom/DOMNormalizer;->reportDOMError(Lmf/org/w3c/dom/DOMErrorHandler;Lmf/org/apache/xerces/dom/DOMErrorImpl;Lmf/org/apache/xerces/dom/DOMLocatorImpl;Ljava/lang/String;SLjava/lang/String;)V

    :cond_3
    :goto_1
    add-int/lit8 v16, v16, 0x1

    goto :goto_0

    :cond_4
    invoke-interface {v11}, Lmf/org/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p6

    invoke-static {v0, v1, v2, v5, v3}, Lmf/org/apache/xerces/dom/DOMNormalizer;->isXMLCharWF(Lmf/org/w3c/dom/DOMErrorHandler;Lmf/org/apache/xerces/dom/DOMErrorImpl;Lmf/org/apache/xerces/dom/DOMLocatorImpl;Ljava/lang/String;Z)V

    goto :goto_1
.end method

.method public static final isCDataWF(Lmf/org/w3c/dom/DOMErrorHandler;Lmf/org/apache/xerces/dom/DOMErrorImpl;Lmf/org/apache/xerces/dom/DOMLocatorImpl;Ljava/lang/String;Z)V
    .locals 13

    if-eqz p3, :cond_0

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v9

    array-length v10, v9

    if-eqz p4, :cond_a

    const/4 v11, 0x0

    move v12, v11

    :cond_2
    :goto_1
    if-lt v12, v10, :cond_3

    move v11, v12

    goto :goto_0

    :cond_3
    add-int/lit8 v11, v12, 0x1

    aget-char v6, v9, v12

    invoke-static {v6}, Lmf/org/apache/xerces/util/XML11Char;->isXML11Invalid(I)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {v6}, Lmf/org/apache/xerces/util/XMLChar;->isHighSurrogate(I)Z

    move-result v0

    if-eqz v0, :cond_5

    if-ge v11, v10, :cond_5

    add-int/lit8 v12, v11, 0x1

    aget-char v7, v9, v11

    invoke-static {v7}, Lmf/org/apache/xerces/util/XMLChar;->isLowSurrogate(I)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {v6, v7}, Lmf/org/apache/xerces/util/XMLChar;->supplemental(CC)I

    move-result v0

    invoke-static {v0}, Lmf/org/apache/xerces/util/XMLChar;->isSupplemental(I)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_4
    move v11, v12

    :cond_5
    const-string/jumbo v0, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string v1, "InvalidCharInCDSect"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/16 v5, 0x10

    invoke-static {v6, v5}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    invoke-static {v0, v1, v2}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    const-string/jumbo v5, "wf-invalid-character"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v5}, Lmf/org/apache/xerces/dom/DOMNormalizer;->reportDOMError(Lmf/org/w3c/dom/DOMErrorHandler;Lmf/org/apache/xerces/dom/DOMErrorImpl;Lmf/org/apache/xerces/dom/DOMLocatorImpl;Ljava/lang/String;SLjava/lang/String;)V

    move v12, v11

    goto :goto_1

    :cond_6
    const/16 v0, 0x5d

    if-ne v6, v0, :cond_9

    move v8, v11

    if-ge v8, v10, :cond_9

    aget-char v0, v9, v8

    const/16 v1, 0x5d

    if-ne v0, v1, :cond_9

    :cond_7
    add-int/lit8 v8, v8, 0x1

    if-ge v8, v10, :cond_8

    aget-char v0, v9, v8

    const/16 v1, 0x5d

    if-eq v0, v1, :cond_7

    :cond_8
    if-ge v8, v10, :cond_9

    aget-char v0, v9, v8

    const/16 v1, 0x3e

    if-ne v0, v1, :cond_9

    const-string/jumbo v0, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string v1, "CDEndInContent"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    const-string/jumbo v5, "wf-invalid-character"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v5}, Lmf/org/apache/xerces/dom/DOMNormalizer;->reportDOMError(Lmf/org/w3c/dom/DOMErrorHandler;Lmf/org/apache/xerces/dom/DOMErrorImpl;Lmf/org/apache/xerces/dom/DOMLocatorImpl;Ljava/lang/String;SLjava/lang/String;)V

    :cond_9
    move v12, v11

    goto :goto_1

    :cond_a
    const/4 v11, 0x0

    move v12, v11

    :cond_b
    :goto_2
    if-lt v12, v10, :cond_c

    move v11, v12

    goto/16 :goto_0

    :cond_c
    add-int/lit8 v11, v12, 0x1

    aget-char v6, v9, v12

    invoke-static {v6}, Lmf/org/apache/xerces/util/XMLChar;->isInvalid(I)Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-static {v6}, Lmf/org/apache/xerces/util/XMLChar;->isHighSurrogate(I)Z

    move-result v0

    if-eqz v0, :cond_e

    if-ge v11, v10, :cond_e

    add-int/lit8 v12, v11, 0x1

    aget-char v7, v9, v11

    invoke-static {v7}, Lmf/org/apache/xerces/util/XMLChar;->isLowSurrogate(I)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-static {v6, v7}, Lmf/org/apache/xerces/util/XMLChar;->supplemental(CC)I

    move-result v0

    invoke-static {v0}, Lmf/org/apache/xerces/util/XMLChar;->isSupplemental(I)Z

    move-result v0

    if-nez v0, :cond_b

    :cond_d
    move v11, v12

    :cond_e
    const-string/jumbo v0, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string v1, "InvalidCharInCDSect"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/16 v5, 0x10

    invoke-static {v6, v5}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    invoke-static {v0, v1, v2}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    const-string/jumbo v5, "wf-invalid-character"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v5}, Lmf/org/apache/xerces/dom/DOMNormalizer;->reportDOMError(Lmf/org/w3c/dom/DOMErrorHandler;Lmf/org/apache/xerces/dom/DOMErrorImpl;Lmf/org/apache/xerces/dom/DOMLocatorImpl;Ljava/lang/String;SLjava/lang/String;)V

    move v12, v11

    goto :goto_2

    :cond_f
    const/16 v0, 0x5d

    if-ne v6, v0, :cond_12

    move v8, v11

    if-ge v8, v10, :cond_12

    aget-char v0, v9, v8

    const/16 v1, 0x5d

    if-ne v0, v1, :cond_12

    :cond_10
    add-int/lit8 v8, v8, 0x1

    if-ge v8, v10, :cond_11

    aget-char v0, v9, v8

    const/16 v1, 0x5d

    if-eq v0, v1, :cond_10

    :cond_11
    if-ge v8, v10, :cond_12

    aget-char v0, v9, v8

    const/16 v1, 0x3e

    if-ne v0, v1, :cond_12

    const-string/jumbo v0, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string v1, "CDEndInContent"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    const-string/jumbo v5, "wf-invalid-character"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v5}, Lmf/org/apache/xerces/dom/DOMNormalizer;->reportDOMError(Lmf/org/w3c/dom/DOMErrorHandler;Lmf/org/apache/xerces/dom/DOMErrorImpl;Lmf/org/apache/xerces/dom/DOMLocatorImpl;Ljava/lang/String;SLjava/lang/String;)V

    :cond_12
    move v12, v11

    goto/16 :goto_2
.end method

.method public static final isCommentWF(Lmf/org/w3c/dom/DOMErrorHandler;Lmf/org/apache/xerces/dom/DOMErrorImpl;Lmf/org/apache/xerces/dom/DOMLocatorImpl;Ljava/lang/String;Z)V
    .locals 13

    if-eqz p3, :cond_0

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v8

    array-length v9, v8

    if-eqz p4, :cond_8

    const/4 v10, 0x0

    move v11, v10

    :cond_2
    :goto_1
    if-lt v11, v9, :cond_3

    move v10, v11

    goto :goto_0

    :cond_3
    add-int/lit8 v10, v11, 0x1

    aget-char v6, v8, v11

    invoke-static {v6}, Lmf/org/apache/xerces/util/XML11Char;->isXML11Invalid(I)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {v6}, Lmf/org/apache/xerces/util/XMLChar;->isHighSurrogate(I)Z

    move-result v0

    if-eqz v0, :cond_5

    if-ge v10, v9, :cond_5

    add-int/lit8 v11, v10, 0x1

    aget-char v7, v8, v10

    invoke-static {v7}, Lmf/org/apache/xerces/util/XMLChar;->isLowSurrogate(I)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {v6, v7}, Lmf/org/apache/xerces/util/XMLChar;->supplemental(CC)I

    move-result v0

    invoke-static {v0}, Lmf/org/apache/xerces/util/XMLChar;->isSupplemental(I)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_4
    move v10, v11

    :cond_5
    const-string/jumbo v0, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string v1, "InvalidCharInComment"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    add-int/lit8 v5, v10, -0x1

    aget-char v5, v8, v5

    const/16 v12, 0x10

    invoke-static {v5, v12}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    invoke-static {v0, v1, v2}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    const-string/jumbo v5, "wf-invalid-character"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v5}, Lmf/org/apache/xerces/dom/DOMNormalizer;->reportDOMError(Lmf/org/w3c/dom/DOMErrorHandler;Lmf/org/apache/xerces/dom/DOMErrorImpl;Lmf/org/apache/xerces/dom/DOMLocatorImpl;Ljava/lang/String;SLjava/lang/String;)V

    move v11, v10

    goto :goto_1

    :cond_6
    const/16 v0, 0x2d

    if-ne v6, v0, :cond_7

    if-ge v10, v9, :cond_7

    aget-char v0, v8, v10

    const/16 v1, 0x2d

    if-ne v0, v1, :cond_7

    const-string/jumbo v0, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string v1, "DashDashInComment"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    const-string/jumbo v5, "wf-invalid-character"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v5}, Lmf/org/apache/xerces/dom/DOMNormalizer;->reportDOMError(Lmf/org/w3c/dom/DOMErrorHandler;Lmf/org/apache/xerces/dom/DOMErrorImpl;Lmf/org/apache/xerces/dom/DOMLocatorImpl;Ljava/lang/String;SLjava/lang/String;)V

    :cond_7
    move v11, v10

    goto :goto_1

    :cond_8
    const/4 v10, 0x0

    move v11, v10

    :cond_9
    :goto_2
    if-lt v11, v9, :cond_a

    move v10, v11

    goto/16 :goto_0

    :cond_a
    add-int/lit8 v10, v11, 0x1

    aget-char v6, v8, v11

    invoke-static {v6}, Lmf/org/apache/xerces/util/XMLChar;->isInvalid(I)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-static {v6}, Lmf/org/apache/xerces/util/XMLChar;->isHighSurrogate(I)Z

    move-result v0

    if-eqz v0, :cond_c

    if-ge v10, v9, :cond_c

    add-int/lit8 v11, v10, 0x1

    aget-char v7, v8, v10

    invoke-static {v7}, Lmf/org/apache/xerces/util/XMLChar;->isLowSurrogate(I)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {v6, v7}, Lmf/org/apache/xerces/util/XMLChar;->supplemental(CC)I

    move-result v0

    invoke-static {v0}, Lmf/org/apache/xerces/util/XMLChar;->isSupplemental(I)Z

    move-result v0

    if-nez v0, :cond_9

    :cond_b
    move v10, v11

    :cond_c
    const-string/jumbo v0, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string v1, "InvalidCharInComment"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    add-int/lit8 v5, v10, -0x1

    aget-char v5, v8, v5

    const/16 v12, 0x10

    invoke-static {v5, v12}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    invoke-static {v0, v1, v2}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    const-string/jumbo v5, "wf-invalid-character"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v5}, Lmf/org/apache/xerces/dom/DOMNormalizer;->reportDOMError(Lmf/org/w3c/dom/DOMErrorHandler;Lmf/org/apache/xerces/dom/DOMErrorImpl;Lmf/org/apache/xerces/dom/DOMLocatorImpl;Ljava/lang/String;SLjava/lang/String;)V

    move v11, v10

    goto :goto_2

    :cond_d
    const/16 v0, 0x2d

    if-ne v6, v0, :cond_e

    if-ge v10, v9, :cond_e

    aget-char v0, v8, v10

    const/16 v1, 0x2d

    if-ne v0, v1, :cond_e

    const-string/jumbo v0, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string v1, "DashDashInComment"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    const-string/jumbo v5, "wf-invalid-character"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v5}, Lmf/org/apache/xerces/dom/DOMNormalizer;->reportDOMError(Lmf/org/w3c/dom/DOMErrorHandler;Lmf/org/apache/xerces/dom/DOMErrorImpl;Lmf/org/apache/xerces/dom/DOMLocatorImpl;Ljava/lang/String;SLjava/lang/String;)V

    :cond_e
    move v11, v10

    goto :goto_2
.end method

.method public static final isXMLCharWF(Lmf/org/w3c/dom/DOMErrorHandler;Lmf/org/apache/xerces/dom/DOMErrorImpl;Lmf/org/apache/xerces/dom/DOMLocatorImpl;Ljava/lang/String;Z)V
    .locals 13

    if-eqz p3, :cond_0

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v8

    array-length v9, v8

    if-eqz p4, :cond_7

    const/4 v10, 0x0

    move v11, v10

    :cond_2
    :goto_1
    if-lt v11, v9, :cond_3

    move v10, v11

    goto :goto_0

    :cond_3
    add-int/lit8 v10, v11, 0x1

    aget-char v0, v8, v11

    invoke-static {v0}, Lmf/org/apache/xerces/util/XML11Char;->isXML11Invalid(I)Z

    move-result v0

    if-eqz v0, :cond_6

    add-int/lit8 v0, v10, -0x1

    aget-char v6, v8, v0

    invoke-static {v6}, Lmf/org/apache/xerces/util/XMLChar;->isHighSurrogate(I)Z

    move-result v0

    if-eqz v0, :cond_5

    if-ge v10, v9, :cond_5

    add-int/lit8 v11, v10, 0x1

    aget-char v7, v8, v10

    invoke-static {v7}, Lmf/org/apache/xerces/util/XMLChar;->isLowSurrogate(I)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {v6, v7}, Lmf/org/apache/xerces/util/XMLChar;->supplemental(CC)I

    move-result v0

    invoke-static {v0}, Lmf/org/apache/xerces/util/XMLChar;->isSupplemental(I)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_4
    move v10, v11

    :cond_5
    const-string/jumbo v0, "http://www.w3.org/dom/DOMTR"

    const-string v1, "InvalidXMLCharInDOM"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    add-int/lit8 v5, v10, -0x1

    aget-char v5, v8, v5

    const/16 v12, 0x10

    invoke-static {v5, v12}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    invoke-static {v0, v1, v2}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    const-string/jumbo v5, "wf-invalid-character"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v5}, Lmf/org/apache/xerces/dom/DOMNormalizer;->reportDOMError(Lmf/org/w3c/dom/DOMErrorHandler;Lmf/org/apache/xerces/dom/DOMErrorImpl;Lmf/org/apache/xerces/dom/DOMLocatorImpl;Ljava/lang/String;SLjava/lang/String;)V

    :cond_6
    move v11, v10

    goto :goto_1

    :cond_7
    const/4 v10, 0x0

    move v11, v10

    :cond_8
    :goto_2
    if-lt v11, v9, :cond_9

    move v10, v11

    goto :goto_0

    :cond_9
    add-int/lit8 v10, v11, 0x1

    aget-char v0, v8, v11

    invoke-static {v0}, Lmf/org/apache/xerces/util/XMLChar;->isInvalid(I)Z

    move-result v0

    if-eqz v0, :cond_c

    add-int/lit8 v0, v10, -0x1

    aget-char v6, v8, v0

    invoke-static {v6}, Lmf/org/apache/xerces/util/XMLChar;->isHighSurrogate(I)Z

    move-result v0

    if-eqz v0, :cond_b

    if-ge v10, v9, :cond_b

    add-int/lit8 v11, v10, 0x1

    aget-char v7, v8, v10

    invoke-static {v7}, Lmf/org/apache/xerces/util/XMLChar;->isLowSurrogate(I)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-static {v6, v7}, Lmf/org/apache/xerces/util/XMLChar;->supplemental(CC)I

    move-result v0

    invoke-static {v0}, Lmf/org/apache/xerces/util/XMLChar;->isSupplemental(I)Z

    move-result v0

    if-nez v0, :cond_8

    :cond_a
    move v10, v11

    :cond_b
    const-string/jumbo v0, "http://www.w3.org/dom/DOMTR"

    const-string v1, "InvalidXMLCharInDOM"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    add-int/lit8 v5, v10, -0x1

    aget-char v5, v8, v5

    const/16 v12, 0x10

    invoke-static {v5, v12}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    invoke-static {v0, v1, v2}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    const-string/jumbo v5, "wf-invalid-character"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v5}, Lmf/org/apache/xerces/dom/DOMNormalizer;->reportDOMError(Lmf/org/w3c/dom/DOMErrorHandler;Lmf/org/apache/xerces/dom/DOMErrorImpl;Lmf/org/apache/xerces/dom/DOMLocatorImpl;Ljava/lang/String;SLjava/lang/String;)V

    :cond_c
    move v11, v10

    goto :goto_2
.end method

.method private processDTD(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v4, p2

    iget-object v1, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    invoke-virtual {v1}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->getDocumentURI()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    iget-object v1, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    invoke-virtual {v1}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->getDoctype()Lmf/org/w3c/dom/DocumentType;

    move-result-object v7

    if-eqz v7, :cond_4

    invoke-interface {v7}, Lmf/org/w3c/dom/DocumentType;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v7}, Lmf/org/w3c/dom/DocumentType;->getPublicId()Ljava/lang/String;

    move-result-object v3

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    invoke-interface {v7}, Lmf/org/w3c/dom/DocumentType;->getSystemId()Ljava/lang/String;

    move-result-object v4

    :cond_1
    invoke-interface {v7}, Lmf/org/w3c/dom/DocumentType;->getInternalSubset()Ljava/lang/String;

    move-result-object v6

    :cond_2
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fValidationHandler:Lmf/org/apache/xerces/impl/RevalidationHandler;

    const/4 v9, 0x0

    invoke-interface {v1, v2, v3, v4, v9}, Lmf/org/apache/xerces/impl/RevalidationHandler;->doctypeDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V

    sget-object v1, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->singleton:Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;

    invoke-virtual {v1, p1}, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->getDTDLoader(Ljava/lang/String;)Lmf/org/apache/xerces/impl/dtd/XMLDTDLoader;

    move-result-object v0

    const-string/jumbo v1, "http://xml.org/sax/features/validation"

    const/4 v9, 0x1

    invoke-virtual {v0, v1, v9}, Lmf/org/apache/xerces/impl/dtd/XMLDTDLoader;->setFeature(Ljava/lang/String;Z)V

    iget-object v1, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fConfiguration:Lmf/org/apache/xerces/dom/DOMConfigurationImpl;

    invoke-virtual {v1}, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->getEntityResolver()Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/dtd/XMLDTDLoader;->setEntityResolver(Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;)V

    iget-object v1, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fConfiguration:Lmf/org/apache/xerces/dom/DOMConfigurationImpl;

    invoke-virtual {v1}, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->getErrorHandler()Lmf/org/apache/xerces/xni/parser/XMLErrorHandler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/dtd/XMLDTDLoader;->setErrorHandler(Lmf/org/apache/xerces/xni/parser/XMLErrorHandler;)V

    iget-object v1, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fValidationHandler:Lmf/org/apache/xerces/impl/RevalidationHandler;

    check-cast v1, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;

    invoke-virtual/range {v0 .. v6}, Lmf/org/apache/xerces/impl/dtd/XMLDTDLoader;->loadGrammarWithContext(Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_3

    sget-object v1, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->singleton:Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;

    invoke-virtual {v1, p1, v0}, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->releaseDTDLoader(Ljava/lang/String;Lmf/org/apache/xerces/impl/dtd/XMLDTDLoader;)V

    :cond_3
    :goto_0
    return-void

    :cond_4
    iget-object v1, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    invoke-virtual {v1}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->getDocumentElement()Lmf/org/w3c/dom/Element;

    move-result-object v8

    if-eqz v8, :cond_3

    invoke-interface {v8}, Lmf/org/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v2

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :catch_0
    move-exception v1

    if-eqz v0, :cond_3

    sget-object v1, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->singleton:Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;

    invoke-virtual {v1, p1, v0}, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->releaseDTDLoader(Ljava/lang/String;Lmf/org/apache/xerces/impl/dtd/XMLDTDLoader;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    if-eqz v0, :cond_5

    sget-object v9, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->singleton:Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;

    invoke-virtual {v9, p1, v0}, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->releaseDTDLoader(Ljava/lang/String;Lmf/org/apache/xerces/impl/dtd/XMLDTDLoader;)V

    :cond_5
    throw v1
.end method

.method public static final reportDOMError(Lmf/org/w3c/dom/DOMErrorHandler;Lmf/org/apache/xerces/dom/DOMErrorImpl;Lmf/org/apache/xerces/dom/DOMLocatorImpl;Ljava/lang/String;SLjava/lang/String;)V
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Lmf/org/apache/xerces/dom/DOMErrorImpl;->reset()V

    iput-object p3, p1, Lmf/org/apache/xerces/dom/DOMErrorImpl;->fMessage:Ljava/lang/String;

    iput-short p4, p1, Lmf/org/apache/xerces/dom/DOMErrorImpl;->fSeverity:S

    iput-object p2, p1, Lmf/org/apache/xerces/dom/DOMErrorImpl;->fLocator:Lmf/org/apache/xerces/dom/DOMLocatorImpl;

    iput-object p5, p1, Lmf/org/apache/xerces/dom/DOMErrorImpl;->fType:Ljava/lang/String;

    iget-object v0, p2, Lmf/org/apache/xerces/dom/DOMLocatorImpl;->fRelatedNode:Lmf/org/w3c/dom/Node;

    iput-object v0, p1, Lmf/org/apache/xerces/dom/DOMErrorImpl;->fRelatedData:Ljava/lang/Object;

    invoke-interface {p0, p1}, Lmf/org/w3c/dom/DOMErrorHandler;->handleError(Lmf/org/w3c/dom/DOMError;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->abort:Ljava/lang/RuntimeException;

    throw v0

    :cond_0
    const/4 v0, 0x3

    if-ne p4, v0, :cond_1

    sget-object v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->abort:Ljava/lang/RuntimeException;

    throw v0

    :cond_1
    return-void
.end method


# virtual methods
.method protected final addNamespaceDecl(Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/dom/ElementImpl;)V
    .locals 3

    sget-object v0, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    if-ne p1, v0, :cond_0

    sget-object v0, Lmf/org/apache/xerces/xni/NamespaceContext;->XMLNS_URI:Ljava/lang/String;

    sget-object v1, Lmf/org/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    invoke-virtual {p3, v0, v1, p2}, Lmf/org/apache/xerces/dom/ElementImpl;->setAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lmf/org/apache/xerces/xni/NamespaceContext;->XMLNS_URI:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "xmlns:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v0, v1, p2}, Lmf/org/apache/xerces/dom/ElementImpl;->setAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public characters(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    return-void
.end method

.method public comment(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    return-void
.end method

.method public doctypeDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    return-void
.end method

.method public emptyElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lmf/org/apache/xerces/dom/DOMNormalizer;->startElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;)V

    invoke-virtual {p0, p1, p3}, Lmf/org/apache/xerces/dom/DOMNormalizer;->endElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/Augmentations;)V

    return-void
.end method

.method public endCDATA(Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    return-void
.end method

.method public endDocument(Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    return-void
.end method

.method public endElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    if-eqz p2, :cond_5

    const-string v5, "ELEMENT_PSVI"

    invoke-interface {p2, v5}, Lmf/org/apache/xerces/xni/Augmentations;->getItem(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmf/org/apache/xerces/xs/ElementPSVI;

    if-eqz v1, :cond_5

    iget-object v0, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fCurrentNode:Lmf/org/w3c/dom/Node;

    check-cast v0, Lmf/org/apache/xerces/dom/ElementImpl;

    iget-boolean v5, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fPSVI:Z

    if-eqz v5, :cond_0

    iget-object v5, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fCurrentNode:Lmf/org/w3c/dom/Node;

    check-cast v5, Lmf/org/apache/xerces/dom/PSVIElementNSImpl;

    invoke-virtual {v5, v1}, Lmf/org/apache/xerces/dom/PSVIElementNSImpl;->setPSVI(Lmf/org/apache/xerces/xs/ElementPSVI;)V

    :cond_0
    instance-of v5, v0, Lmf/org/apache/xerces/dom/ElementNSImpl;

    if-eqz v5, :cond_2

    invoke-interface {v1}, Lmf/org/apache/xerces/xs/ElementPSVI;->getMemberTypeDefinition()Lmf/org/apache/xerces/xs/XSSimpleTypeDefinition;

    move-result-object v4

    if-nez v4, :cond_1

    invoke-interface {v1}, Lmf/org/apache/xerces/xs/ElementPSVI;->getTypeDefinition()Lmf/org/apache/xerces/xs/XSTypeDefinition;

    move-result-object v4

    :cond_1
    move-object v5, v0

    check-cast v5, Lmf/org/apache/xerces/dom/ElementNSImpl;

    invoke-virtual {v5, v4}, Lmf/org/apache/xerces/dom/ElementNSImpl;->setType(Lmf/org/apache/xerces/xs/XSTypeDefinition;)V

    :cond_2
    invoke-interface {v1}, Lmf/org/apache/xerces/xs/ElementPSVI;->getSchemaNormalizedValue()Ljava/lang/String;

    move-result-object v2

    iget-object v5, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fConfiguration:Lmf/org/apache/xerces/dom/DOMConfigurationImpl;

    iget-short v5, v5, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->features:S

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_4

    if-eqz v2, :cond_3

    invoke-virtual {v0, v2}, Lmf/org/apache/xerces/dom/ElementImpl;->setTextContent(Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void

    :cond_4
    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/ElementImpl;->getTextContent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_3

    if-eqz v2, :cond_3

    invoke-virtual {v0, v2}, Lmf/org/apache/xerces/dom/ElementImpl;->setTextContent(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    iget-object v5, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fCurrentNode:Lmf/org/w3c/dom/Node;

    instance-of v5, v5, Lmf/org/apache/xerces/dom/ElementNSImpl;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fCurrentNode:Lmf/org/w3c/dom/Node;

    check-cast v5, Lmf/org/apache/xerces/dom/ElementNSImpl;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lmf/org/apache/xerces/dom/ElementNSImpl;->setType(Lmf/org/apache/xerces/xs/XSTypeDefinition;)V

    goto :goto_0
.end method

.method public endGeneralEntity(Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    return-void
.end method

.method protected final expandEntityRef(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)V
    .locals 2

    invoke-interface {p2}, Lmf/org/w3c/dom/Node;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v1

    invoke-interface {p1, v0, p2}, Lmf/org/w3c/dom/Node;->insertBefore(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    move-object v0, v1

    goto :goto_0
.end method

.method public getDocumentSource()Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public ignorableWhitespace(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fAllWhitespace:Z

    return-void
.end method

.method protected final namespaceFixUp(Lmf/org/apache/xerces/dom/ElementImpl;Lmf/org/apache/xerces/dom/AttributeMap;)V
    .locals 25

    if-eqz p2, :cond_0

    const/16 v20, 0x0

    :goto_0
    invoke-virtual/range {p2 .. p2}, Lmf/org/apache/xerces/dom/AttributeMap;->getLength()I

    move-result v4

    move/from16 v0, v20

    if-lt v0, v4, :cond_4

    :cond_0
    invoke-virtual/range {p1 .. p1}, Lmf/org/apache/xerces/dom/ElementImpl;->getNamespaceURI()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {p1 .. p1}, Lmf/org/apache/xerces/dom/ElementImpl;->getPrefix()Ljava/lang/String;

    move-result-object v22

    if-eqz v23, :cond_d

    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    if-eqz v22, :cond_1

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_c

    :cond_1
    sget-object v22, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    :goto_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    move-object/from16 v0, v22

    invoke-interface {v4, v0}, Lmf/org/apache/xerces/xni/NamespaceContext;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v23

    if-eq v4, v0, :cond_2

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    move-object/from16 v3, p1

    invoke-virtual {v0, v1, v2, v3}, Lmf/org/apache/xerces/dom/DOMNormalizer;->addNamespaceDecl(Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/dom/ElementImpl;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fLocalNSBinder:Lmf/org/apache/xerces/xni/NamespaceContext;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-interface {v4, v0, v1}, Lmf/org/apache/xerces/xni/NamespaceContext;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-interface {v4, v0, v1}, Lmf/org/apache/xerces/xni/NamespaceContext;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_2
    :goto_2
    if-eqz p2, :cond_3

    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fAttributeList:Ljava/util/ArrayList;

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lmf/org/apache/xerces/dom/AttributeMap;->cloneMap(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    const/16 v19, 0x0

    :goto_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fAttributeList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v19

    if-lt v0, v4, :cond_10

    :cond_3
    return-void

    :cond_4
    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/dom/AttributeMap;->getItem(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lmf/org/w3c/dom/Attr;

    invoke-interface {v12}, Lmf/org/w3c/dom/Attr;->getNamespaceURI()Ljava/lang/String;

    move-result-object v23

    if-eqz v23, :cond_6

    sget-object v4, Lmf/org/apache/xerces/xni/NamespaceContext;->XMLNS_URI:Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v12}, Lmf/org/w3c/dom/Attr;->getNodeValue()Ljava/lang/String;

    move-result-object v13

    if-nez v13, :cond_5

    sget-object v13, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    iget-boolean v4, v4, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->errorChecking:Z

    if-eqz v4, :cond_7

    sget-object v4, Lmf/org/apache/xerces/xni/NamespaceContext;->XMLNS_URI:Ljava/lang/String;

    invoke-virtual {v13, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fLocator:Lmf/org/apache/xerces/dom/DOMLocatorImpl;

    iput-object v12, v4, Lmf/org/apache/xerces/dom/DOMLocatorImpl;->fRelatedNode:Lmf/org/w3c/dom/Node;

    const-string/jumbo v4, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string v5, "CantBindXMLNS"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fErrorHandler:Lmf/org/w3c/dom/DOMErrorHandler;

    move-object/from16 v0, p0

    iget-object v5, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fError:Lmf/org/apache/xerces/dom/DOMErrorImpl;

    move-object/from16 v0, p0

    iget-object v6, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fLocator:Lmf/org/apache/xerces/dom/DOMLocatorImpl;

    const/4 v8, 0x2

    const-string v9, "CantBindXMLNS"

    invoke-static/range {v4 .. v9}, Lmf/org/apache/xerces/dom/DOMNormalizer;->reportDOMError(Lmf/org/w3c/dom/DOMErrorHandler;Lmf/org/apache/xerces/dom/DOMErrorImpl;Lmf/org/apache/xerces/dom/DOMLocatorImpl;Ljava/lang/String;SLjava/lang/String;)V

    :cond_6
    :goto_4
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_0

    :cond_7
    invoke-interface {v12}, Lmf/org/w3c/dom/Attr;->getPrefix()Ljava/lang/String;

    move-result-object v22

    if-eqz v22, :cond_8

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_9

    :cond_8
    sget-object v22, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    :goto_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-interface {v12}, Lmf/org/w3c/dom/Attr;->getLocalName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    sget-object v4, Lmf/org/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    move-object/from16 v0, v22

    if-ne v0, v4, :cond_a

    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-virtual {v4, v13}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_6

    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    move-object/from16 v0, v21

    invoke-interface {v4, v0, v13}, Lmf/org/apache/xerces/xni/NamespaceContext;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_4

    :cond_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    goto :goto_5

    :cond_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-virtual {v4, v13}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    sget-object v5, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_b

    :goto_6
    invoke-interface {v4, v5, v13}, Lmf/org/apache/xerces/xni/NamespaceContext;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_4

    :cond_b
    const/4 v13, 0x0

    goto :goto_6

    :cond_c
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    goto/16 :goto_1

    :cond_d
    invoke-virtual/range {p1 .. p1}, Lmf/org/apache/xerces/dom/ElementImpl;->getLocalName()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_f

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fNamespaceValidation:Z

    if-eqz v4, :cond_e

    const-string/jumbo v4, "http://www.w3.org/dom/DOMTR"

    const-string v5, "NullLocalElementName"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual/range {p1 .. p1}, Lmf/org/apache/xerces/dom/ElementImpl;->getNodeName()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v6, v8

    invoke-static {v4, v5, v6}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fErrorHandler:Lmf/org/w3c/dom/DOMErrorHandler;

    move-object/from16 v0, p0

    iget-object v5, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fError:Lmf/org/apache/xerces/dom/DOMErrorImpl;

    move-object/from16 v0, p0

    iget-object v6, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fLocator:Lmf/org/apache/xerces/dom/DOMLocatorImpl;

    const/4 v8, 0x3

    const-string v9, "NullLocalElementName"

    invoke-static/range {v4 .. v9}, Lmf/org/apache/xerces/dom/DOMNormalizer;->reportDOMError(Lmf/org/w3c/dom/DOMErrorHandler;Lmf/org/apache/xerces/dom/DOMErrorImpl;Lmf/org/apache/xerces/dom/DOMLocatorImpl;Ljava/lang/String;SLjava/lang/String;)V

    goto/16 :goto_2

    :cond_e
    const-string/jumbo v4, "http://www.w3.org/dom/DOMTR"

    const-string v5, "NullLocalElementName"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual/range {p1 .. p1}, Lmf/org/apache/xerces/dom/ElementImpl;->getNodeName()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v6, v8

    invoke-static {v4, v5, v6}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fErrorHandler:Lmf/org/w3c/dom/DOMErrorHandler;

    move-object/from16 v0, p0

    iget-object v5, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fError:Lmf/org/apache/xerces/dom/DOMErrorImpl;

    move-object/from16 v0, p0

    iget-object v6, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fLocator:Lmf/org/apache/xerces/dom/DOMLocatorImpl;

    const/4 v8, 0x2

    const-string v9, "NullLocalElementName"

    invoke-static/range {v4 .. v9}, Lmf/org/apache/xerces/dom/DOMNormalizer;->reportDOMError(Lmf/org/w3c/dom/DOMErrorHandler;Lmf/org/apache/xerces/dom/DOMErrorImpl;Lmf/org/apache/xerces/dom/DOMLocatorImpl;Ljava/lang/String;SLjava/lang/String;)V

    goto/16 :goto_2

    :cond_f
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    sget-object v5, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    invoke-interface {v4, v5}, Lmf/org/apache/xerces/xni/NamespaceContext;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    if-eqz v23, :cond_2

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2

    sget-object v4, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    sget-object v5, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v4, v5, v1}, Lmf/org/apache/xerces/dom/DOMNormalizer;->addNamespaceDecl(Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/dom/ElementImpl;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fLocalNSBinder:Lmf/org/apache/xerces/xni/NamespaceContext;

    sget-object v5, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Lmf/org/apache/xerces/xni/NamespaceContext;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    sget-object v5, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Lmf/org/apache/xerces/xni/NamespaceContext;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_2

    :cond_10
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fAttributeList:Ljava/util/ArrayList;

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lmf/org/w3c/dom/Attr;

    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fLocator:Lmf/org/apache/xerces/dom/DOMLocatorImpl;

    iput-object v12, v4, Lmf/org/apache/xerces/dom/DOMLocatorImpl;->fRelatedNode:Lmf/org/w3c/dom/Node;

    invoke-interface {v12}, Lmf/org/w3c/dom/Attr;->normalize()V

    invoke-interface {v12}, Lmf/org/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v12}, Lmf/org/w3c/dom/Attr;->getNamespaceURI()Ljava/lang/String;

    move-result-object v23

    if-nez v13, :cond_11

    sget-object v13, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    :cond_11
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    iget-boolean v4, v4, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->errorChecking:Z

    if-eqz v4, :cond_12

    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fConfiguration:Lmf/org/apache/xerces/dom/DOMConfigurationImpl;

    iget-short v4, v4, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->features:S

    and-int/lit16 v4, v4, 0x100

    if-eqz v4, :cond_12

    move-object/from16 v0, p0

    iget-object v8, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fErrorHandler:Lmf/org/w3c/dom/DOMErrorHandler;

    move-object/from16 v0, p0

    iget-object v9, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fError:Lmf/org/apache/xerces/dom/DOMErrorImpl;

    move-object/from16 v0, p0

    iget-object v10, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fLocator:Lmf/org/apache/xerces/dom/DOMLocatorImpl;

    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    invoke-virtual {v4}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->isXML11Version()Z

    move-result v14

    move-object/from16 v11, p2

    invoke-static/range {v8 .. v14}, Lmf/org/apache/xerces/dom/DOMNormalizer;->isAttrValueWF(Lmf/org/w3c/dom/DOMErrorHandler;Lmf/org/apache/xerces/dom/DOMErrorImpl;Lmf/org/apache/xerces/dom/DOMLocatorImpl;Lmf/org/w3c/dom/NamedNodeMap;Lmf/org/w3c/dom/Attr;Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    invoke-virtual {v4}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->isXMLVersionChanged()Z

    move-result v4

    if-eqz v4, :cond_12

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fNamespaceValidation:Z

    if-eqz v4, :cond_15

    invoke-interface {v12}, Lmf/org/w3c/dom/Attr;->getPrefix()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v12}, Lmf/org/w3c/dom/Attr;->getLocalName()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    invoke-virtual {v6}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->isXML11Version()Z

    move-result v6

    invoke-static {v4, v5, v6}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->isValidQName(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v24

    :goto_7
    if-nez v24, :cond_12

    const-string/jumbo v4, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v5, "wf-invalid-character-in-node-name"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "Attr"

    aput-object v9, v6, v8

    const/4 v8, 0x1

    invoke-interface {v12}, Lmf/org/w3c/dom/Attr;->getNodeName()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v6, v8

    invoke-static {v4, v5, v6}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fErrorHandler:Lmf/org/w3c/dom/DOMErrorHandler;

    move-object/from16 v0, p0

    iget-object v5, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fError:Lmf/org/apache/xerces/dom/DOMErrorImpl;

    move-object/from16 v0, p0

    iget-object v6, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fLocator:Lmf/org/apache/xerces/dom/DOMLocatorImpl;

    const/4 v8, 0x2

    const-string/jumbo v9, "wf-invalid-character-in-node-name"

    invoke-static/range {v4 .. v9}, Lmf/org/apache/xerces/dom/DOMNormalizer;->reportDOMError(Lmf/org/w3c/dom/DOMErrorHandler;Lmf/org/apache/xerces/dom/DOMErrorImpl;Lmf/org/apache/xerces/dom/DOMLocatorImpl;Ljava/lang/String;SLjava/lang/String;)V

    :cond_12
    if-eqz v23, :cond_1d

    invoke-interface {v12}, Lmf/org/w3c/dom/Attr;->getPrefix()Ljava/lang/String;

    move-result-object v22

    if-eqz v22, :cond_13

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_16

    :cond_13
    sget-object v22, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    :goto_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-interface {v12}, Lmf/org/w3c/dom/Attr;->getLocalName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    if-eqz v23, :cond_17

    sget-object v4, Lmf/org/apache/xerces/xni/NamespaceContext;->XMLNS_URI:Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_17

    :cond_14
    :goto_9
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_3

    :cond_15
    invoke-interface {v12}, Lmf/org/w3c/dom/Attr;->getNodeName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    invoke-virtual {v5}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->isXML11Version()Z

    move-result v5

    invoke-static {v4, v5}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->isXMLName(Ljava/lang/String;Z)Z

    move-result v24

    goto :goto_7

    :cond_16
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    goto :goto_8

    :cond_17
    move-object v4, v12

    check-cast v4, Lmf/org/apache/xerces/dom/AttrImpl;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lmf/org/apache/xerces/dom/AttrImpl;->setIdAttribute(Z)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    move-object/from16 v0, v22

    invoke-interface {v4, v0}, Lmf/org/apache/xerces/xni/NamespaceContext;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    sget-object v4, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    move-object/from16 v0, v22

    if-eq v0, v4, :cond_18

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    if-eq v0, v1, :cond_14

    :cond_18
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    move-object/from16 v0, v23

    invoke-interface {v4, v0}, Lmf/org/apache/xerces/xni/NamespaceContext;->getPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_19

    sget-object v4, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    move-object/from16 v0, v17

    if-eq v0, v4, :cond_19

    move-object/from16 v22, v17

    :goto_a
    move-object/from16 v0, v22

    invoke-interface {v12, v0}, Lmf/org/w3c/dom/Attr;->setPrefix(Ljava/lang/String;)V

    goto :goto_9

    :cond_19
    sget-object v4, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    move-object/from16 v0, v22

    if-eq v0, v4, :cond_1a

    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fLocalNSBinder:Lmf/org/apache/xerces/xni/NamespaceContext;

    move-object/from16 v0, v22

    invoke-interface {v4, v0}, Lmf/org/apache/xerces/xni/NamespaceContext;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1b

    :cond_1a
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "NS"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v16, v15, 0x1

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move/from16 v15, v16

    :goto_b
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fLocalNSBinder:Lmf/org/apache/xerces/xni/NamespaceContext;

    move-object/from16 v0, v22

    invoke-interface {v4, v0}, Lmf/org/apache/xerces/xni/NamespaceContext;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1c

    :cond_1b
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    move-object/from16 v3, p1

    invoke-virtual {v0, v1, v2, v3}, Lmf/org/apache/xerces/dom/DOMNormalizer;->addNamespaceDecl(Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/dom/ElementImpl;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-virtual {v4, v13}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fLocalNSBinder:Lmf/org/apache/xerces/xni/NamespaceContext;

    move-object/from16 v0, v22

    invoke-interface {v4, v0, v13}, Lmf/org/apache/xerces/xni/NamespaceContext;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-interface {v4, v0, v1}, Lmf/org/apache/xerces/xni/NamespaceContext;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_a

    :cond_1c
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "NS"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v16, v15, 0x1

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move/from16 v15, v16

    goto :goto_b

    :cond_1d
    move-object v4, v12

    check-cast v4, Lmf/org/apache/xerces/dom/AttrImpl;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lmf/org/apache/xerces/dom/AttrImpl;->setIdAttribute(Z)V

    invoke-interface {v12}, Lmf/org/w3c/dom/Attr;->getLocalName()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_14

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fNamespaceValidation:Z

    if-eqz v4, :cond_1e

    const-string/jumbo v4, "http://www.w3.org/dom/DOMTR"

    const-string v5, "NullLocalAttrName"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-interface {v12}, Lmf/org/w3c/dom/Attr;->getNodeName()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v6, v8

    invoke-static {v4, v5, v6}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fErrorHandler:Lmf/org/w3c/dom/DOMErrorHandler;

    move-object/from16 v0, p0

    iget-object v5, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fError:Lmf/org/apache/xerces/dom/DOMErrorImpl;

    move-object/from16 v0, p0

    iget-object v6, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fLocator:Lmf/org/apache/xerces/dom/DOMLocatorImpl;

    const/4 v8, 0x3

    const-string v9, "NullLocalAttrName"

    invoke-static/range {v4 .. v9}, Lmf/org/apache/xerces/dom/DOMNormalizer;->reportDOMError(Lmf/org/w3c/dom/DOMErrorHandler;Lmf/org/apache/xerces/dom/DOMErrorImpl;Lmf/org/apache/xerces/dom/DOMLocatorImpl;Ljava/lang/String;SLjava/lang/String;)V

    goto/16 :goto_9

    :cond_1e
    const-string/jumbo v4, "http://www.w3.org/dom/DOMTR"

    const-string v5, "NullLocalAttrName"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-interface {v12}, Lmf/org/w3c/dom/Attr;->getNodeName()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v6, v8

    invoke-static {v4, v5, v6}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fErrorHandler:Lmf/org/w3c/dom/DOMErrorHandler;

    move-object/from16 v0, p0

    iget-object v5, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fError:Lmf/org/apache/xerces/dom/DOMErrorImpl;

    move-object/from16 v0, p0

    iget-object v6, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fLocator:Lmf/org/apache/xerces/dom/DOMLocatorImpl;

    const/4 v8, 0x2

    const-string v9, "NullLocalAttrName"

    invoke-static/range {v4 .. v9}, Lmf/org/apache/xerces/dom/DOMNormalizer;->reportDOMError(Lmf/org/w3c/dom/DOMErrorHandler;Lmf/org/apache/xerces/dom/DOMErrorImpl;Lmf/org/apache/xerces/dom/DOMLocatorImpl;Ljava/lang/String;SLjava/lang/String;)V

    goto/16 :goto_9
.end method

.method final normalizeAttributeValue(Ljava/lang/String;Lmf/org/w3c/dom/Attr;)Ljava/lang/String;
    .locals 12

    const/16 v11, 0x20

    const/16 v10, 0xa

    invoke-interface {p2}, Lmf/org/w3c/dom/Attr;->getSpecified()Z

    move-result v6

    if-nez v6, :cond_0

    move-object v5, p1

    :goto_0
    return-object v5

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v6, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fNormalizedValue:Lmf/org/apache/xerces/xni/XMLString;

    iget-object v6, v6, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    array-length v6, v6

    if-ge v6, v1, :cond_1

    iget-object v6, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fNormalizedValue:Lmf/org/apache/xerces/xni/XMLString;

    new-array v7, v1, [C

    iput-object v7, v6, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    :cond_1
    iget-object v6, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fNormalizedValue:Lmf/org/apache/xerces/xni/XMLString;

    const/4 v7, 0x0

    iput v7, v6, Lmf/org/apache/xerces/xni/XMLString;->length:I

    const/4 v4, 0x0

    const/4 v2, 0x0

    :goto_1
    if-lt v2, v1, :cond_3

    if-eqz v4, :cond_2

    iget-object v6, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fNormalizedValue:Lmf/org/apache/xerces/xni/XMLString;

    invoke-virtual {v6}, Lmf/org/apache/xerces/xni/XMLString;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lmf/org/w3c/dom/Attr;->setValue(Ljava/lang/String;)V

    :cond_2
    move-object v5, p1

    goto :goto_0

    :cond_3
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v6, 0x9

    if-eq v0, v6, :cond_4

    if-ne v0, v10, :cond_6

    :cond_4
    iget-object v6, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fNormalizedValue:Lmf/org/apache/xerces/xni/XMLString;

    iget-object v6, v6, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    iget-object v7, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fNormalizedValue:Lmf/org/apache/xerces/xni/XMLString;

    iget v8, v7, Lmf/org/apache/xerces/xni/XMLString;->length:I

    add-int/lit8 v9, v8, 0x1

    iput v9, v7, Lmf/org/apache/xerces/xni/XMLString;->length:I

    aput-char v11, v6, v8

    const/4 v4, 0x1

    :cond_5
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_6
    const/16 v6, 0xd

    if-ne v0, v6, :cond_7

    const/4 v4, 0x1

    iget-object v6, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fNormalizedValue:Lmf/org/apache/xerces/xni/XMLString;

    iget-object v6, v6, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    iget-object v7, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fNormalizedValue:Lmf/org/apache/xerces/xni/XMLString;

    iget v8, v7, Lmf/org/apache/xerces/xni/XMLString;->length:I

    add-int/lit8 v9, v8, 0x1

    iput v9, v7, Lmf/org/apache/xerces/xni/XMLString;->length:I

    aput-char v11, v6, v8

    add-int/lit8 v3, v2, 0x1

    if-ge v3, v1, :cond_5

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v10, :cond_5

    move v2, v3

    goto :goto_2

    :cond_7
    iget-object v6, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fNormalizedValue:Lmf/org/apache/xerces/xni/XMLString;

    iget-object v6, v6, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    iget-object v7, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fNormalizedValue:Lmf/org/apache/xerces/xni/XMLString;

    iget v8, v7, Lmf/org/apache/xerces/xni/XMLString;->length:I

    add-int/lit8 v9, v8, 0x1

    iput v9, v7, Lmf/org/apache/xerces/xni/XMLString;->length:I

    aput-char v0, v6, v8

    goto :goto_2
.end method

.method protected normalizeDocument(Lmf/org/apache/xerces/dom/CoreDocumentImpl;Lmf/org/apache/xerces/dom/DOMConfigurationImpl;)V
    .locals 13

    const/4 v12, -0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    iput-object p1, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    iput-object p2, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fConfiguration:Lmf/org/apache/xerces/dom/DOMConfigurationImpl;

    iput-boolean v9, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fAllWhitespace:Z

    iput-boolean v9, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fNamespaceValidation:Z

    iget-object v7, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    invoke-virtual {v7}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->getXmlVersion()Ljava/lang/String;

    move-result-object v6

    const/4 v5, 0x0

    const/4 v4, 0x0

    iget-object v7, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fConfiguration:Lmf/org/apache/xerces/dom/DOMConfigurationImpl;

    const-string/jumbo v11, "http://apache.org/xml/properties/internal/symbol-table"

    invoke-virtual {v7, v11}, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lmf/org/apache/xerces/util/SymbolTable;

    iput-object v7, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    iget-object v7, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    invoke-interface {v7}, Lmf/org/apache/xerces/xni/NamespaceContext;->reset()V

    iget-object v7, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    sget-object v11, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    invoke-interface {v7, v11, v10}, Lmf/org/apache/xerces/xni/NamespaceContext;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v7, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fConfiguration:Lmf/org/apache/xerces/dom/DOMConfigurationImpl;

    iget-short v7, v7, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->features:S

    and-int/lit8 v7, v7, 0x40

    if-eqz v7, :cond_7

    iget-object v7, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fConfiguration:Lmf/org/apache/xerces/dom/DOMConfigurationImpl;

    const-string/jumbo v11, "http://java.sun.com/xml/jaxp/properties/schemaLanguage"

    invoke-virtual {v7, v11}, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_5

    sget-object v7, Lmf/org/apache/xerces/impl/Constants;->NS_XMLSCHEMA:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    const-string/jumbo v5, "http://www.w3.org/2001/XMLSchema"

    sget-object v7, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->singleton:Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;

    invoke-virtual {v7, v5, v6}, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->getValidator(Ljava/lang/String;Ljava/lang/String;)Lmf/org/apache/xerces/impl/RevalidationHandler;

    move-result-object v7

    iput-object v7, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fValidationHandler:Lmf/org/apache/xerces/impl/RevalidationHandler;

    iget-object v7, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fConfiguration:Lmf/org/apache/xerces/dom/DOMConfigurationImpl;

    const-string/jumbo v11, "http://apache.org/xml/features/validation/schema"

    invoke-virtual {v7, v11, v8}, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->setFeature(Ljava/lang/String;Z)V

    iget-object v7, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fConfiguration:Lmf/org/apache/xerces/dom/DOMConfigurationImpl;

    const-string/jumbo v11, "http://apache.org/xml/features/validation/schema-full-checking"

    invoke-virtual {v7, v11, v8}, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->setFeature(Ljava/lang/String;Z)V

    iput-boolean v8, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fNamespaceValidation:Z

    iget-object v7, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fConfiguration:Lmf/org/apache/xerces/dom/DOMConfigurationImpl;

    iget-short v7, v7, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->features:S

    and-int/lit16 v7, v7, 0x80

    if-eqz v7, :cond_4

    move v7, v8

    :goto_0
    iput-boolean v7, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fPSVI:Z

    :goto_1
    iget-object v7, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fConfiguration:Lmf/org/apache/xerces/dom/DOMConfigurationImpl;

    const-string/jumbo v9, "http://xml.org/sax/features/validation"

    invoke-virtual {v7, v9, v8}, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->setFeature(Ljava/lang/String;Z)V

    iget-object v7, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    invoke-virtual {v7}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->clearIdentifiers()V

    iget-object v7, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fValidationHandler:Lmf/org/apache/xerces/impl/RevalidationHandler;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fValidationHandler:Lmf/org/apache/xerces/impl/RevalidationHandler;

    check-cast v7, Lmf/org/apache/xerces/xni/parser/XMLComponent;

    iget-object v8, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fConfiguration:Lmf/org/apache/xerces/dom/DOMConfigurationImpl;

    invoke-interface {v7, v8}, Lmf/org/apache/xerces/xni/parser/XMLComponent;->reset(Lmf/org/apache/xerces/xni/parser/XMLComponentManager;)V

    :cond_0
    :goto_2
    iget-object v7, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fConfiguration:Lmf/org/apache/xerces/dom/DOMConfigurationImpl;

    const-string v8, "error-handler"

    invoke-virtual {v7, v8}, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lmf/org/w3c/dom/DOMErrorHandler;

    iput-object v7, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fErrorHandler:Lmf/org/w3c/dom/DOMErrorHandler;

    iget-object v7, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fValidationHandler:Lmf/org/apache/xerces/impl/RevalidationHandler;

    if-eqz v7, :cond_1

    iget-object v7, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fValidationHandler:Lmf/org/apache/xerces/impl/RevalidationHandler;

    invoke-interface {v7, p0}, Lmf/org/apache/xerces/impl/RevalidationHandler;->setDocumentHandler(Lmf/org/apache/xerces/xni/XMLDocumentHandler;)V

    iget-object v7, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fValidationHandler:Lmf/org/apache/xerces/impl/RevalidationHandler;

    new-instance v8, Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;

    iget-object v9, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    iget-object v9, v9, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->fDocumentURI:Ljava/lang/String;

    iget-object v11, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    iget-object v11, v11, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->fDocumentURI:Ljava/lang/String;

    invoke-direct {v8, v9, v11, v12, v12}, Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    iget-object v9, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    iget-object v9, v9, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->encoding:Ljava/lang/String;

    iget-object v11, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    invoke-interface {v7, v8, v9, v11, v10}, Lmf/org/apache/xerces/impl/RevalidationHandler;->startDocument(Lmf/org/apache/xerces/xni/XMLLocator;Ljava/lang/String;Lmf/org/apache/xerces/xni/NamespaceContext;Lmf/org/apache/xerces/xni/Augmentations;)V

    iget-object v8, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fValidationHandler:Lmf/org/apache/xerces/impl/RevalidationHandler;

    iget-object v7, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    invoke-virtual {v7}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->getXmlVersion()Ljava/lang/String;

    move-result-object v9

    iget-object v7, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    invoke-virtual {v7}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->getXmlEncoding()Ljava/lang/String;

    move-result-object v11

    iget-object v7, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    invoke-virtual {v7}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->getXmlStandalone()Z

    move-result v7

    if-eqz v7, :cond_8

    const-string/jumbo v7, "yes"

    :goto_3
    invoke-interface {v8, v9, v11, v7, v10}, Lmf/org/apache/xerces/impl/RevalidationHandler;->xmlDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V

    :cond_1
    :try_start_0
    const-string/jumbo v7, "http://www.w3.org/TR/REC-xml"

    if-ne v5, v7, :cond_2

    if-eqz v4, :cond_9

    const/4 v7, 0x0

    aget-object v7, v4, v7

    :goto_4
    invoke-direct {p0, v6, v7}, Lmf/org/apache/xerces/dom/DOMNormalizer;->processDTD(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object v7, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    invoke-virtual {v7}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object v1

    :goto_5
    if-nez v1, :cond_a

    iget-object v7, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fValidationHandler:Lmf/org/apache/xerces/impl/RevalidationHandler;

    if-eqz v7, :cond_3

    iget-object v7, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fValidationHandler:Lmf/org/apache/xerces/impl/RevalidationHandler;

    const/4 v8, 0x0

    invoke-interface {v7, v8}, Lmf/org/apache/xerces/impl/RevalidationHandler;->endDocument(Lmf/org/apache/xerces/xni/Augmentations;)V

    iget-object v7, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fValidationHandler:Lmf/org/apache/xerces/impl/RevalidationHandler;

    const/4 v8, 0x0

    invoke-interface {v7, v8}, Lmf/org/apache/xerces/impl/RevalidationHandler;->setDocumentHandler(Lmf/org/apache/xerces/xni/XMLDocumentHandler;)V

    sget-object v7, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->singleton:Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;

    iget-object v8, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fValidationHandler:Lmf/org/apache/xerces/impl/RevalidationHandler;

    invoke-virtual {v7, v5, v6, v8}, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->releaseValidator(Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/impl/RevalidationHandler;)V

    const/4 v7, 0x0

    iput-object v7, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fValidationHandler:Lmf/org/apache/xerces/impl/RevalidationHandler;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    return-void

    :cond_4
    move v7, v9

    goto/16 :goto_0

    :cond_5
    const-string/jumbo v5, "http://www.w3.org/TR/REC-xml"

    if-eqz v3, :cond_6

    iget-object v7, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fConfiguration:Lmf/org/apache/xerces/dom/DOMConfigurationImpl;

    const-string/jumbo v11, "http://java.sun.com/xml/jaxp/properties/schemaSource"

    invoke-virtual {v7, v11}, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    :cond_6
    iget-object v7, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fConfiguration:Lmf/org/apache/xerces/dom/DOMConfigurationImpl;

    invoke-virtual {v7, v6}, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->setDTDValidatorFactory(Ljava/lang/String;)V

    sget-object v7, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->singleton:Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;

    invoke-virtual {v7, v5, v6}, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->getValidator(Ljava/lang/String;Ljava/lang/String;)Lmf/org/apache/xerces/impl/RevalidationHandler;

    move-result-object v7

    iput-object v7, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fValidationHandler:Lmf/org/apache/xerces/impl/RevalidationHandler;

    iput-boolean v9, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fPSVI:Z

    goto/16 :goto_1

    :cond_7
    iput-object v10, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fValidationHandler:Lmf/org/apache/xerces/impl/RevalidationHandler;

    goto/16 :goto_2

    :cond_8
    const-string/jumbo v7, "no"

    goto :goto_3

    :cond_9
    move-object v7, v10

    goto :goto_4

    :cond_a
    :try_start_1
    invoke-interface {v1}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v2

    invoke-virtual {p0, v1}, Lmf/org/apache/xerces/dom/DOMNormalizer;->normalizeNode(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    if-eqz v1, :cond_b

    move-object v2, v1

    :cond_b
    move-object v1, v2

    goto :goto_5

    :catch_0
    move-exception v0

    iget-object v7, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fValidationHandler:Lmf/org/apache/xerces/impl/RevalidationHandler;

    if-eqz v7, :cond_c

    iget-object v7, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fValidationHandler:Lmf/org/apache/xerces/impl/RevalidationHandler;

    invoke-interface {v7, v10}, Lmf/org/apache/xerces/impl/RevalidationHandler;->setDocumentHandler(Lmf/org/apache/xerces/xni/XMLDocumentHandler;)V

    sget-object v7, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->singleton:Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;

    iget-object v8, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fValidationHandler:Lmf/org/apache/xerces/impl/RevalidationHandler;

    invoke-virtual {v7, v5, v6, v8}, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->releaseValidator(Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/impl/RevalidationHandler;)V

    iput-object v10, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fValidationHandler:Lmf/org/apache/xerces/impl/RevalidationHandler;

    :cond_c
    sget-object v7, Lmf/org/apache/xerces/dom/DOMNormalizer;->abort:Ljava/lang/RuntimeException;

    if-eq v0, v7, :cond_3

    throw v0
.end method

.method protected normalizeNode(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;
    .locals 33

    invoke-interface/range {p1 .. p1}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v30

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fLocator:Lmf/org/apache/xerces/dom/DOMLocatorImpl;

    move-object/from16 v0, p1

    iput-object v0, v3, Lmf/org/apache/xerces/dom/DOMLocatorImpl;->fRelatedNode:Lmf/org/w3c/dom/Node;

    packed-switch v30, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    const/16 v27, 0x0

    :cond_1
    :goto_1
    return-object v27

    :pswitch_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    iget-boolean v3, v3, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->errorChecking:Z

    if-eqz v3, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fConfiguration:Lmf/org/apache/xerces/dom/DOMConfigurationImpl;

    iget-short v3, v3, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->features:S

    and-int/lit16 v3, v3, 0x100

    if-eqz v3, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    invoke-virtual {v3}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->isXMLVersionChanged()Z

    move-result v3

    if-eqz v3, :cond_2

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fNamespaceValidation:Z

    if-eqz v3, :cond_7

    invoke-interface/range {p1 .. p1}, Lmf/org/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v3

    invoke-interface/range {p1 .. p1}, Lmf/org/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    invoke-virtual {v5}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->isXML11Version()Z

    move-result v5

    invoke-static {v3, v4, v5}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->isValidQName(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v32

    :goto_2
    if-nez v32, :cond_2

    const-string/jumbo v3, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v4, "wf-invalid-character-in-node-name"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "Element"

    aput-object v8, v5, v7

    const/4 v7, 0x1

    invoke-interface/range {p1 .. p1}, Lmf/org/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v7

    invoke-static {v3, v4, v5}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fErrorHandler:Lmf/org/w3c/dom/DOMErrorHandler;

    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fError:Lmf/org/apache/xerces/dom/DOMErrorImpl;

    move-object/from16 v0, p0

    iget-object v5, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fLocator:Lmf/org/apache/xerces/dom/DOMLocatorImpl;

    const/4 v7, 0x2

    const-string/jumbo v8, "wf-invalid-character-in-node-name"

    invoke-static/range {v3 .. v8}, Lmf/org/apache/xerces/dom/DOMNormalizer;->reportDOMError(Lmf/org/w3c/dom/DOMErrorHandler;Lmf/org/apache/xerces/dom/DOMErrorImpl;Lmf/org/apache/xerces/dom/DOMLocatorImpl;Ljava/lang/String;SLjava/lang/String;)V

    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    invoke-interface {v3}, Lmf/org/apache/xerces/xni/NamespaceContext;->pushContext()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fLocalNSBinder:Lmf/org/apache/xerces/xni/NamespaceContext;

    invoke-interface {v3}, Lmf/org/apache/xerces/xni/NamespaceContext;->reset()V

    move-object/from16 v16, p1

    check-cast v16, Lmf/org/apache/xerces/dom/ElementImpl;

    invoke-virtual/range {v16 .. v16}, Lmf/org/apache/xerces/dom/ElementImpl;->needsSyncChildren()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual/range {v16 .. v16}, Lmf/org/apache/xerces/dom/ElementImpl;->synchronizeChildren()V

    :cond_3
    invoke-virtual/range {v16 .. v16}, Lmf/org/apache/xerces/dom/ElementImpl;->hasAttributes()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-virtual/range {v16 .. v16}, Lmf/org/apache/xerces/dom/ElementImpl;->getAttributes()Lmf/org/w3c/dom/NamedNodeMap;

    move-result-object v3

    check-cast v3, Lmf/org/apache/xerces/dom/AttributeMap;

    move-object v10, v3

    :goto_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fConfiguration:Lmf/org/apache/xerces/dom/DOMConfigurationImpl;

    iget-short v3, v3, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->features:S

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_c

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v10}, Lmf/org/apache/xerces/dom/DOMNormalizer;->namespaceFixUp(Lmf/org/apache/xerces/dom/ElementImpl;Lmf/org/apache/xerces/dom/AttributeMap;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fConfiguration:Lmf/org/apache/xerces/dom/DOMConfigurationImpl;

    iget-short v3, v3, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->features:S

    and-int/lit16 v3, v3, 0x200

    if-nez v3, :cond_4

    if-eqz v10, :cond_4

    const/16 v18, 0x0

    :goto_4
    invoke-virtual {v10}, Lmf/org/apache/xerces/dom/AttributeMap;->getLength()I

    move-result v3

    move/from16 v0, v18

    if-lt v0, v3, :cond_9

    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fValidationHandler:Lmf/org/apache/xerces/impl/RevalidationHandler;

    if-eqz v3, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fAttrProxy:Lmf/org/apache/xerces/dom/DOMNormalizer$XMLAttributesProxy;

    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    move-object/from16 v0, v16

    invoke-virtual {v3, v10, v4, v0}, Lmf/org/apache/xerces/dom/DOMNormalizer$XMLAttributesProxy;->setAttributes(Lmf/org/apache/xerces/dom/AttributeMap;Lmf/org/apache/xerces/dom/CoreDocumentImpl;Lmf/org/apache/xerces/dom/ElementImpl;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fQName:Lmf/org/apache/xerces/xni/QName;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v3}, Lmf/org/apache/xerces/dom/DOMNormalizer;->updateQName(Lmf/org/w3c/dom/Node;Lmf/org/apache/xerces/xni/QName;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fConfiguration:Lmf/org/apache/xerces/dom/DOMConfigurationImpl;

    iget-object v3, v3, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->fErrorHandlerWrapper:Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;

    move-object/from16 v0, p1

    iput-object v0, v3, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;->fCurrentNode:Lmf/org/w3c/dom/Node;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lmf/org/apache/xerces/dom/DOMNormalizer;->fCurrentNode:Lmf/org/w3c/dom/Node;

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fValidationHandler:Lmf/org/apache/xerces/impl/RevalidationHandler;

    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fQName:Lmf/org/apache/xerces/xni/QName;

    move-object/from16 v0, p0

    iget-object v5, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fAttrProxy:Lmf/org/apache/xerces/dom/DOMNormalizer$XMLAttributesProxy;

    const/4 v7, 0x0

    invoke-interface {v3, v4, v5, v7}, Lmf/org/apache/xerces/impl/RevalidationHandler;->startElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;)V

    :cond_5
    invoke-virtual/range {v16 .. v16}, Lmf/org/apache/xerces/dom/ElementImpl;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object v20

    :goto_5
    if-nez v20, :cond_f

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fValidationHandler:Lmf/org/apache/xerces/impl/RevalidationHandler;

    if-eqz v3, :cond_6

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fQName:Lmf/org/apache/xerces/xni/QName;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v3}, Lmf/org/apache/xerces/dom/DOMNormalizer;->updateQName(Lmf/org/w3c/dom/Node;Lmf/org/apache/xerces/xni/QName;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fConfiguration:Lmf/org/apache/xerces/dom/DOMConfigurationImpl;

    iget-object v3, v3, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->fErrorHandlerWrapper:Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;

    move-object/from16 v0, p1

    iput-object v0, v3, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;->fCurrentNode:Lmf/org/w3c/dom/Node;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lmf/org/apache/xerces/dom/DOMNormalizer;->fCurrentNode:Lmf/org/w3c/dom/Node;

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fValidationHandler:Lmf/org/apache/xerces/impl/RevalidationHandler;

    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fQName:Lmf/org/apache/xerces/xni/QName;

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Lmf/org/apache/xerces/impl/RevalidationHandler;->endElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/Augmentations;)V

    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    invoke-interface {v3}, Lmf/org/apache/xerces/xni/NamespaceContext;->popContext()V

    goto/16 :goto_0

    :cond_7
    invoke-interface/range {p1 .. p1}, Lmf/org/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    invoke-virtual {v4}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->isXML11Version()Z

    move-result v4

    invoke-static {v3, v4}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->isXMLName(Ljava/lang/String;Z)Z

    move-result v32

    goto/16 :goto_2

    :cond_8
    const/4 v10, 0x0

    goto/16 :goto_3

    :cond_9
    move/from16 v0, v18

    invoke-virtual {v10, v0}, Lmf/org/apache/xerces/dom/AttributeMap;->getItem(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lmf/org/w3c/dom/Attr;

    sget-object v3, Lmf/org/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    invoke-interface {v14}, Lmf/org/w3c/dom/Attr;->getPrefix()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    sget-object v3, Lmf/org/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    invoke-interface {v14}, Lmf/org/w3c/dom/Attr;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    :cond_a
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Lmf/org/apache/xerces/dom/ElementImpl;->removeAttributeNode(Lmf/org/w3c/dom/Attr;)Lmf/org/w3c/dom/Attr;

    add-int/lit8 v18, v18, -0x1

    :cond_b
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_4

    :cond_c
    if-eqz v10, :cond_4

    const/16 v18, 0x0

    :goto_6
    invoke-virtual {v10}, Lmf/org/apache/xerces/dom/AttributeMap;->getLength()I

    move-result v3

    move/from16 v0, v18

    if-ge v0, v3, :cond_4

    move/from16 v0, v18

    invoke-virtual {v10, v0}, Lmf/org/apache/xerces/dom/AttributeMap;->item(I)Lmf/org/w3c/dom/Node;

    move-result-object v11

    check-cast v11, Lmf/org/w3c/dom/Attr;

    invoke-interface {v11}, Lmf/org/w3c/dom/Attr;->normalize()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    iget-boolean v3, v3, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->errorChecking:Z

    if-eqz v3, :cond_d

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fConfiguration:Lmf/org/apache/xerces/dom/DOMConfigurationImpl;

    iget-short v3, v3, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->features:S

    and-int/lit16 v3, v3, 0x100

    if-eqz v3, :cond_d

    move-object/from16 v0, p0

    iget-object v7, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fErrorHandler:Lmf/org/w3c/dom/DOMErrorHandler;

    move-object/from16 v0, p0

    iget-object v8, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fError:Lmf/org/apache/xerces/dom/DOMErrorImpl;

    move-object/from16 v0, p0

    iget-object v9, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fLocator:Lmf/org/apache/xerces/dom/DOMLocatorImpl;

    invoke-interface {v11}, Lmf/org/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    invoke-virtual {v3}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->isXML11Version()Z

    move-result v13

    invoke-static/range {v7 .. v13}, Lmf/org/apache/xerces/dom/DOMNormalizer;->isAttrValueWF(Lmf/org/w3c/dom/DOMErrorHandler;Lmf/org/apache/xerces/dom/DOMErrorImpl;Lmf/org/apache/xerces/dom/DOMLocatorImpl;Lmf/org/w3c/dom/NamedNodeMap;Lmf/org/w3c/dom/Attr;Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    invoke-virtual {v3}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->isXMLVersionChanged()Z

    move-result v3

    if-eqz v3, :cond_d

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fNamespaceValidation:Z

    if-eqz v3, :cond_e

    invoke-interface/range {p1 .. p1}, Lmf/org/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v3

    invoke-interface/range {p1 .. p1}, Lmf/org/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    invoke-virtual {v5}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->isXML11Version()Z

    move-result v5

    invoke-static {v3, v4, v5}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->isValidQName(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v32

    :goto_7
    if-nez v32, :cond_d

    const-string/jumbo v3, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v4, "wf-invalid-character-in-node-name"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "Attr"

    aput-object v8, v5, v7

    const/4 v7, 0x1

    invoke-interface/range {p1 .. p1}, Lmf/org/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v7

    invoke-static {v3, v4, v5}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fErrorHandler:Lmf/org/w3c/dom/DOMErrorHandler;

    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fError:Lmf/org/apache/xerces/dom/DOMErrorImpl;

    move-object/from16 v0, p0

    iget-object v5, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fLocator:Lmf/org/apache/xerces/dom/DOMLocatorImpl;

    const/4 v7, 0x2

    const-string/jumbo v8, "wf-invalid-character-in-node-name"

    invoke-static/range {v3 .. v8}, Lmf/org/apache/xerces/dom/DOMNormalizer;->reportDOMError(Lmf/org/w3c/dom/DOMErrorHandler;Lmf/org/apache/xerces/dom/DOMErrorImpl;Lmf/org/apache/xerces/dom/DOMLocatorImpl;Ljava/lang/String;SLjava/lang/String;)V

    :cond_d
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_6

    :cond_e
    invoke-interface/range {p1 .. p1}, Lmf/org/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    invoke-virtual {v4}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->isXML11Version()Z

    move-result v4

    invoke-static {v3, v4}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->isXMLName(Ljava/lang/String;Z)Z

    move-result v32

    goto :goto_7

    :cond_f
    invoke-interface/range {v20 .. v20}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/dom/DOMNormalizer;->normalizeNode(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    move-result-object v20

    if-eqz v20, :cond_10

    move-object/from16 v22, v20

    :cond_10
    move-object/from16 v20, v22

    goto/16 :goto_5

    :pswitch_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fConfiguration:Lmf/org/apache/xerces/dom/DOMConfigurationImpl;

    iget-short v3, v3, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->features:S

    and-int/lit8 v3, v3, 0x20

    if-nez v3, :cond_11

    invoke-interface/range {p1 .. p1}, Lmf/org/w3c/dom/Node;->getPreviousSibling()Lmf/org/w3c/dom/Node;

    move-result-object v27

    invoke-interface/range {p1 .. p1}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Lmf/org/w3c/dom/Node;->removeChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    if-eqz v27, :cond_0

    invoke-interface/range {v27 .. v27}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    invoke-interface/range {v27 .. v27}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v23

    if-eqz v23, :cond_0

    invoke-interface/range {v23 .. v23}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    move-object/from16 v3, v23

    check-cast v3, Lmf/org/apache/xerces/dom/TextImpl;

    const/4 v4, 0x0

    invoke-interface/range {v27 .. v27}, Lmf/org/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lmf/org/apache/xerces/dom/TextImpl;->insertData(ILjava/lang/String;)V

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Lmf/org/w3c/dom/Node;->removeChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    move-object/from16 v27, v23

    goto/16 :goto_1

    :cond_11
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    iget-boolean v3, v3, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->errorChecking:Z

    if-eqz v3, :cond_12

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fConfiguration:Lmf/org/apache/xerces/dom/DOMConfigurationImpl;

    iget-short v3, v3, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->features:S

    and-int/lit16 v3, v3, 0x100

    if-eqz v3, :cond_12

    move-object/from16 v3, p1

    check-cast v3, Lmf/org/w3c/dom/Comment;

    invoke-interface {v3}, Lmf/org/w3c/dom/Comment;->getData()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fErrorHandler:Lmf/org/w3c/dom/DOMErrorHandler;

    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fError:Lmf/org/apache/xerces/dom/DOMErrorImpl;

    move-object/from16 v0, p0

    iget-object v5, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fLocator:Lmf/org/apache/xerces/dom/DOMLocatorImpl;

    move-object/from16 v0, p0

    iget-object v7, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    invoke-virtual {v7}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->isXML11Version()Z

    move-result v7

    invoke-static {v3, v4, v5, v15, v7}, Lmf/org/apache/xerces/dom/DOMNormalizer;->isCommentWF(Lmf/org/w3c/dom/DOMErrorHandler;Lmf/org/apache/xerces/dom/DOMErrorImpl;Lmf/org/apache/xerces/dom/DOMLocatorImpl;Ljava/lang/String;Z)V

    :cond_12
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fValidationHandler:Lmf/org/apache/xerces/impl/RevalidationHandler;

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fValidationHandler:Lmf/org/apache/xerces/impl/RevalidationHandler;

    sget-object v4, Lmf/org/apache/xerces/dom/DOMNormalizer;->EMPTY_STRING:Lmf/org/apache/xerces/xni/XMLString;

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Lmf/org/apache/xerces/impl/RevalidationHandler;->comment(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V

    goto/16 :goto_0

    :pswitch_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fConfiguration:Lmf/org/apache/xerces/dom/DOMConfigurationImpl;

    iget-short v3, v3, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->features:S

    and-int/lit8 v3, v3, 0x4

    if-nez v3, :cond_15

    invoke-interface/range {p1 .. p1}, Lmf/org/w3c/dom/Node;->getPreviousSibling()Lmf/org/w3c/dom/Node;

    move-result-object v27

    invoke-interface/range {p1 .. p1}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v25

    move-object/from16 v3, p1

    check-cast v3, Lmf/org/apache/xerces/dom/EntityReferenceImpl;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lmf/org/apache/xerces/dom/EntityReferenceImpl;->setReadOnly(ZZ)V

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/dom/DOMNormalizer;->expandEntityRef(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)V

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Lmf/org/w3c/dom/Node;->removeChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    if-eqz v27, :cond_14

    invoke-interface/range {v27 .. v27}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v22

    :goto_8
    if-eqz v27, :cond_13

    if-eqz v22, :cond_13

    invoke-interface/range {v27 .. v27}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_13

    invoke-interface/range {v22 .. v22}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_1

    :cond_13
    move-object/from16 v27, v22

    goto/16 :goto_1

    :cond_14
    invoke-interface/range {v25 .. v25}, Lmf/org/w3c/dom/Node;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object v22

    goto :goto_8

    :cond_15
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    iget-boolean v3, v3, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->errorChecking:Z

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fConfiguration:Lmf/org/apache/xerces/dom/DOMConfigurationImpl;

    iget-short v3, v3, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->features:S

    and-int/lit16 v3, v3, 0x100

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    invoke-virtual {v3}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->isXMLVersionChanged()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface/range {p1 .. p1}, Lmf/org/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    invoke-virtual {v4}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->isXML11Version()Z

    move-result v4

    invoke-static {v3, v4}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->isXMLName(Ljava/lang/String;Z)Z

    goto/16 :goto_0

    :pswitch_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fConfiguration:Lmf/org/apache/xerces/dom/DOMConfigurationImpl;

    iget-short v3, v3, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->features:S

    and-int/lit8 v3, v3, 0x8

    if-nez v3, :cond_17

    invoke-interface/range {p1 .. p1}, Lmf/org/w3c/dom/Node;->getPreviousSibling()Lmf/org/w3c/dom/Node;

    move-result-object v27

    if-eqz v27, :cond_16

    invoke-interface/range {v27 .. v27}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_16

    move-object/from16 v3, v27

    check-cast v3, Lmf/org/w3c/dom/Text;

    invoke-interface/range {p1 .. p1}, Lmf/org/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lmf/org/w3c/dom/Text;->appendData(Ljava/lang/String;)V

    invoke-interface/range {p1 .. p1}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-interface {v3, v0}, Lmf/org/w3c/dom/Node;->removeChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    goto/16 :goto_1

    :cond_16
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    invoke-interface/range {p1 .. p1}, Lmf/org/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->createTextNode(Ljava/lang/String;)Lmf/org/w3c/dom/Text;

    move-result-object v29

    invoke-interface/range {p1 .. p1}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v29

    move-object/from16 v2, p1

    invoke-interface {v0, v1, v2}, Lmf/org/w3c/dom/Node;->replaceChild(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    move-result-object p1

    move-object/from16 v27, v29

    goto/16 :goto_1

    :cond_17
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fValidationHandler:Lmf/org/apache/xerces/impl/RevalidationHandler;

    if-eqz v3, :cond_18

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fConfiguration:Lmf/org/apache/xerces/dom/DOMConfigurationImpl;

    iget-object v3, v3, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->fErrorHandlerWrapper:Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;

    move-object/from16 v0, p1

    iput-object v0, v3, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;->fCurrentNode:Lmf/org/w3c/dom/Node;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lmf/org/apache/xerces/dom/DOMNormalizer;->fCurrentNode:Lmf/org/w3c/dom/Node;

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fValidationHandler:Lmf/org/apache/xerces/impl/RevalidationHandler;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lmf/org/apache/xerces/impl/RevalidationHandler;->startCDATA(Lmf/org/apache/xerces/xni/Augmentations;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fValidationHandler:Lmf/org/apache/xerces/impl/RevalidationHandler;

    invoke-interface/range {p1 .. p1}, Lmf/org/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Lmf/org/apache/xerces/impl/RevalidationHandler;->characterData(Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fValidationHandler:Lmf/org/apache/xerces/impl/RevalidationHandler;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lmf/org/apache/xerces/impl/RevalidationHandler;->endCDATA(Lmf/org/apache/xerces/xni/Augmentations;)V

    :cond_18
    invoke-interface/range {p1 .. p1}, Lmf/org/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fConfiguration:Lmf/org/apache/xerces/dom/DOMConfigurationImpl;

    iget-short v3, v3, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->features:S

    and-int/lit8 v3, v3, 0x10

    if-eqz v3, :cond_1a

    invoke-interface/range {p1 .. p1}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    iget-boolean v3, v3, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->errorChecking:Z

    if-eqz v3, :cond_19

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fErrorHandler:Lmf/org/w3c/dom/DOMErrorHandler;

    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fError:Lmf/org/apache/xerces/dom/DOMErrorImpl;

    move-object/from16 v0, p0

    iget-object v5, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fLocator:Lmf/org/apache/xerces/dom/DOMLocatorImpl;

    invoke-interface/range {p1 .. p1}, Lmf/org/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    invoke-virtual {v8}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->isXML11Version()Z

    move-result v8

    invoke-static {v3, v4, v5, v7, v8}, Lmf/org/apache/xerces/dom/DOMNormalizer;->isXMLCharWF(Lmf/org/w3c/dom/DOMErrorHandler;Lmf/org/apache/xerces/dom/DOMErrorImpl;Lmf/org/apache/xerces/dom/DOMLocatorImpl;Ljava/lang/String;Z)V

    :cond_19
    :goto_9
    const-string v3, "]]>"

    move-object/from16 v0, v31

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v19

    if-ltz v19, :cond_0

    const/4 v3, 0x0

    add-int/lit8 v4, v19, 0x2

    move-object/from16 v0, v31

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Lmf/org/w3c/dom/Node;->setNodeValue(Ljava/lang/String;)V

    add-int/lit8 v3, v19, 0x2

    move-object/from16 v0, v31

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v17, p1

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    move-object/from16 v0, v31

    invoke-virtual {v3, v0}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->createCDATASection(Ljava/lang/String;)Lmf/org/w3c/dom/CDATASection;

    move-result-object v21

    invoke-interface/range {p1 .. p1}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v3

    move-object/from16 v0, v25

    move-object/from16 v1, v21

    invoke-interface {v0, v1, v3}, Lmf/org/w3c/dom/Node;->insertBefore(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    move-object/from16 p1, v21

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fLocator:Lmf/org/apache/xerces/dom/DOMLocatorImpl;

    move-object/from16 v0, v17

    iput-object v0, v3, Lmf/org/apache/xerces/dom/DOMLocatorImpl;->fRelatedNode:Lmf/org/w3c/dom/Node;

    const-string/jumbo v3, "http://www.w3.org/dom/DOMTR"

    const-string v4, "cdata-sections-splitted"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fErrorHandler:Lmf/org/w3c/dom/DOMErrorHandler;

    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fError:Lmf/org/apache/xerces/dom/DOMErrorImpl;

    move-object/from16 v0, p0

    iget-object v5, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fLocator:Lmf/org/apache/xerces/dom/DOMLocatorImpl;

    const/4 v7, 0x1

    const-string v8, "cdata-sections-splitted"

    invoke-static/range {v3 .. v8}, Lmf/org/apache/xerces/dom/DOMNormalizer;->reportDOMError(Lmf/org/w3c/dom/DOMErrorHandler;Lmf/org/apache/xerces/dom/DOMErrorImpl;Lmf/org/apache/xerces/dom/DOMLocatorImpl;Ljava/lang/String;SLjava/lang/String;)V

    goto :goto_9

    :cond_1a
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    iget-boolean v3, v3, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->errorChecking:Z

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fErrorHandler:Lmf/org/w3c/dom/DOMErrorHandler;

    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fError:Lmf/org/apache/xerces/dom/DOMErrorImpl;

    move-object/from16 v0, p0

    iget-object v5, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fLocator:Lmf/org/apache/xerces/dom/DOMLocatorImpl;

    move-object/from16 v0, p0

    iget-object v7, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    invoke-virtual {v7}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->isXML11Version()Z

    move-result v7

    move-object/from16 v0, v31

    invoke-static {v3, v4, v5, v0, v7}, Lmf/org/apache/xerces/dom/DOMNormalizer;->isCDataWF(Lmf/org/w3c/dom/DOMErrorHandler;Lmf/org/apache/xerces/dom/DOMErrorImpl;Lmf/org/apache/xerces/dom/DOMLocatorImpl;Ljava/lang/String;Z)V

    goto/16 :goto_0

    :pswitch_5
    invoke-interface/range {p1 .. p1}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v22

    if-eqz v22, :cond_1b

    invoke-interface/range {v22 .. v22}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1b

    move-object/from16 v3, p1

    check-cast v3, Lmf/org/w3c/dom/Text;

    invoke-interface/range {v22 .. v22}, Lmf/org/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lmf/org/w3c/dom/Text;->appendData(Ljava/lang/String;)V

    invoke-interface/range {p1 .. p1}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-interface {v3, v0}, Lmf/org/w3c/dom/Node;->removeChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    move-object/from16 v27, p1

    goto/16 :goto_1

    :cond_1b
    invoke-interface/range {p1 .. p1}, Lmf/org/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1c

    invoke-interface/range {p1 .. p1}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-interface {v3, v0}, Lmf/org/w3c/dom/Node;->removeChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    goto/16 :goto_0

    :cond_1c
    if-eqz v22, :cond_21

    invoke-interface/range {v22 .. v22}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v24

    :goto_a
    const/4 v3, -0x1

    move/from16 v0, v24

    if-eq v0, v3, :cond_1f

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fConfiguration:Lmf/org/apache/xerces/dom/DOMConfigurationImpl;

    iget-short v3, v3, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->features:S

    and-int/lit8 v3, v3, 0x4

    if-nez v3, :cond_1d

    const/4 v3, 0x6

    move/from16 v0, v24

    if-eq v0, v3, :cond_0

    :cond_1d
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fConfiguration:Lmf/org/apache/xerces/dom/DOMConfigurationImpl;

    iget-short v3, v3, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->features:S

    and-int/lit8 v3, v3, 0x20

    if-nez v3, :cond_1e

    const/16 v3, 0x8

    move/from16 v0, v24

    if-eq v0, v3, :cond_0

    :cond_1e
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fConfiguration:Lmf/org/apache/xerces/dom/DOMConfigurationImpl;

    iget-short v3, v3, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->features:S

    and-int/lit8 v3, v3, 0x8

    if-nez v3, :cond_1f

    const/4 v3, 0x4

    move/from16 v0, v24

    if-eq v0, v3, :cond_0

    :cond_1f
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    iget-boolean v3, v3, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->errorChecking:Z

    if-eqz v3, :cond_20

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fConfiguration:Lmf/org/apache/xerces/dom/DOMConfigurationImpl;

    iget-short v3, v3, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->features:S

    and-int/lit16 v3, v3, 0x100

    if-eqz v3, :cond_20

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fErrorHandler:Lmf/org/w3c/dom/DOMErrorHandler;

    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fError:Lmf/org/apache/xerces/dom/DOMErrorImpl;

    move-object/from16 v0, p0

    iget-object v5, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fLocator:Lmf/org/apache/xerces/dom/DOMLocatorImpl;

    invoke-interface/range {p1 .. p1}, Lmf/org/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    invoke-virtual {v8}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->isXML11Version()Z

    move-result v8

    invoke-static {v3, v4, v5, v7, v8}, Lmf/org/apache/xerces/dom/DOMNormalizer;->isXMLCharWF(Lmf/org/w3c/dom/DOMErrorHandler;Lmf/org/apache/xerces/dom/DOMErrorImpl;Lmf/org/apache/xerces/dom/DOMLocatorImpl;Ljava/lang/String;Z)V

    :cond_20
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fValidationHandler:Lmf/org/apache/xerces/impl/RevalidationHandler;

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fConfiguration:Lmf/org/apache/xerces/dom/DOMConfigurationImpl;

    iget-object v3, v3, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->fErrorHandlerWrapper:Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;

    move-object/from16 v0, p1

    iput-object v0, v3, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;->fCurrentNode:Lmf/org/w3c/dom/Node;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lmf/org/apache/xerces/dom/DOMNormalizer;->fCurrentNode:Lmf/org/w3c/dom/Node;

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fValidationHandler:Lmf/org/apache/xerces/impl/RevalidationHandler;

    invoke-interface/range {p1 .. p1}, Lmf/org/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Lmf/org/apache/xerces/impl/RevalidationHandler;->characterData(Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)Z

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fNamespaceValidation:Z

    if-nez v3, :cond_0

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fAllWhitespace:Z

    if-eqz v3, :cond_22

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fAllWhitespace:Z

    move-object/from16 v3, p1

    check-cast v3, Lmf/org/apache/xerces/dom/TextImpl;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lmf/org/apache/xerces/dom/TextImpl;->setIgnorableWhitespace(Z)V

    goto/16 :goto_0

    :cond_21
    const/16 v24, -0x1

    goto/16 :goto_a

    :cond_22
    move-object/from16 v3, p1

    check-cast v3, Lmf/org/apache/xerces/dom/TextImpl;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lmf/org/apache/xerces/dom/TextImpl;->setIgnorableWhitespace(Z)V

    goto/16 :goto_0

    :pswitch_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    iget-boolean v3, v3, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->errorChecking:Z

    if-eqz v3, :cond_24

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fConfiguration:Lmf/org/apache/xerces/dom/DOMConfigurationImpl;

    iget-short v3, v3, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->features:S

    and-int/lit16 v3, v3, 0x100

    if-eqz v3, :cond_24

    move-object/from16 v26, p1

    check-cast v26, Lmf/org/w3c/dom/ProcessingInstruction;

    invoke-interface/range {v26 .. v26}, Lmf/org/w3c/dom/ProcessingInstruction;->getTarget()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    invoke-virtual {v3}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->isXML11Version()Z

    move-result v3

    if-eqz v3, :cond_25

    invoke-static/range {v28 .. v28}, Lmf/org/apache/xerces/util/XML11Char;->isXML11ValidName(Ljava/lang/String;)Z

    move-result v32

    :goto_b
    if-nez v32, :cond_23

    const-string/jumbo v3, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v4, "wf-invalid-character-in-node-name"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "Element"

    aput-object v8, v5, v7

    const/4 v7, 0x1

    invoke-interface/range {p1 .. p1}, Lmf/org/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v7

    invoke-static {v3, v4, v5}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fErrorHandler:Lmf/org/w3c/dom/DOMErrorHandler;

    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fError:Lmf/org/apache/xerces/dom/DOMErrorImpl;

    move-object/from16 v0, p0

    iget-object v5, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fLocator:Lmf/org/apache/xerces/dom/DOMLocatorImpl;

    const/4 v7, 0x2

    const-string/jumbo v8, "wf-invalid-character-in-node-name"

    invoke-static/range {v3 .. v8}, Lmf/org/apache/xerces/dom/DOMNormalizer;->reportDOMError(Lmf/org/w3c/dom/DOMErrorHandler;Lmf/org/apache/xerces/dom/DOMErrorImpl;Lmf/org/apache/xerces/dom/DOMLocatorImpl;Ljava/lang/String;SLjava/lang/String;)V

    :cond_23
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fErrorHandler:Lmf/org/w3c/dom/DOMErrorHandler;

    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fError:Lmf/org/apache/xerces/dom/DOMErrorImpl;

    move-object/from16 v0, p0

    iget-object v5, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fLocator:Lmf/org/apache/xerces/dom/DOMLocatorImpl;

    invoke-interface/range {v26 .. v26}, Lmf/org/w3c/dom/ProcessingInstruction;->getData()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    invoke-virtual {v8}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->isXML11Version()Z

    move-result v8

    invoke-static {v3, v4, v5, v7, v8}, Lmf/org/apache/xerces/dom/DOMNormalizer;->isXMLCharWF(Lmf/org/w3c/dom/DOMErrorHandler;Lmf/org/apache/xerces/dom/DOMErrorImpl;Lmf/org/apache/xerces/dom/DOMLocatorImpl;Ljava/lang/String;Z)V

    :cond_24
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fValidationHandler:Lmf/org/apache/xerces/impl/RevalidationHandler;

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fValidationHandler:Lmf/org/apache/xerces/impl/RevalidationHandler;

    move-object/from16 v3, p1

    check-cast v3, Lmf/org/w3c/dom/ProcessingInstruction;

    invoke-interface {v3}, Lmf/org/w3c/dom/ProcessingInstruction;->getTarget()Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lmf/org/apache/xerces/dom/DOMNormalizer;->EMPTY_STRING:Lmf/org/apache/xerces/xni/XMLString;

    const/4 v7, 0x0

    invoke-interface {v4, v3, v5, v7}, Lmf/org/apache/xerces/impl/RevalidationHandler;->processingInstruction(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V

    goto/16 :goto_0

    :cond_25
    invoke-static/range {v28 .. v28}, Lmf/org/apache/xerces/util/XMLChar;->isValidName(Ljava/lang/String;)Z

    move-result v32

    goto :goto_b

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_6
        :pswitch_2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public processingInstruction(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    return-void
.end method

.method public setDocumentSource(Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;)V
    .locals 0

    return-void
.end method

.method public startCDATA(Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    return-void
.end method

.method public startDocument(Lmf/org/apache/xerces/xni/XMLLocator;Ljava/lang/String;Lmf/org/apache/xerces/xni/NamespaceContext;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    return-void
.end method

.method public startElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-object v4, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fCurrentNode:Lmf/org/w3c/dom/Node;

    check-cast v4, Lmf/org/w3c/dom/Element;

    invoke-interface/range {p2 .. p2}, Lmf/org/apache/xerces/xni/XMLAttributes;->getLength()I

    move-result v2

    const/4 v6, 0x0

    :goto_0
    if-lt v6, v2, :cond_0

    return-void

    :cond_0
    iget-object v12, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fAttrQName:Lmf/org/apache/xerces/xni/QName;

    move-object/from16 v0, p2

    invoke-interface {v0, v6, v12}, Lmf/org/apache/xerces/xni/XMLAttributes;->getName(ILmf/org/apache/xerces/xni/QName;)V

    const/4 v1, 0x0

    iget-object v12, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fAttrQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v12, v12, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    iget-object v13, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fAttrQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v13, v13, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    invoke-interface {v4, v12, v13}, Lmf/org/w3c/dom/Element;->getAttributeNodeNS(Ljava/lang/String;Ljava/lang/String;)Lmf/org/w3c/dom/Attr;

    move-result-object v1

    if-nez v1, :cond_1

    iget-object v12, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fAttrQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v12, v12, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    invoke-interface {v4, v12}, Lmf/org/w3c/dom/Element;->getAttributeNode(Ljava/lang/String;)Lmf/org/w3c/dom/Attr;

    move-result-object v1

    :cond_1
    move-object/from16 v0, p2

    invoke-interface {v0, v6}, Lmf/org/apache/xerces/xni/XMLAttributes;->getAugmentations(I)Lmf/org/apache/xerces/xni/Augmentations;

    move-result-object v12

    const-string v13, "ATTRIBUTE_PSVI"

    invoke-interface {v12, v13}, Lmf/org/apache/xerces/xni/Augmentations;->getItem(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmf/org/apache/xerces/xs/AttributePSVI;

    if-eqz v3, :cond_7

    invoke-interface {v3}, Lmf/org/apache/xerces/xs/AttributePSVI;->getMemberTypeDefinition()Lmf/org/apache/xerces/xs/XSSimpleTypeDefinition;

    move-result-object v5

    const/4 v7, 0x0

    if-eqz v5, :cond_6

    move-object v12, v5

    check-cast v12, Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    invoke-interface {v12}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->isIDType()Z

    move-result v7

    :cond_2
    :goto_1
    if-eqz v7, :cond_3

    move-object v12, v4

    check-cast v12, Lmf/org/apache/xerces/dom/ElementImpl;

    const/4 v13, 0x1

    invoke-virtual {v12, v1, v13}, Lmf/org/apache/xerces/dom/ElementImpl;->setIdAttributeNode(Lmf/org/w3c/dom/Attr;Z)V

    :cond_3
    iget-boolean v12, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fPSVI:Z

    if-eqz v12, :cond_4

    move-object v12, v1

    check-cast v12, Lmf/org/apache/xerces/dom/PSVIAttrNSImpl;

    invoke-virtual {v12, v3}, Lmf/org/apache/xerces/dom/PSVIAttrNSImpl;->setPSVI(Lmf/org/apache/xerces/xs/AttributePSVI;)V

    :cond_4
    move-object v12, v1

    check-cast v12, Lmf/org/apache/xerces/dom/AttrImpl;

    invoke-virtual {v12, v5}, Lmf/org/apache/xerces/dom/AttrImpl;->setType(Ljava/lang/Object;)V

    iget-object v12, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fConfiguration:Lmf/org/apache/xerces/dom/DOMConfigurationImpl;

    iget-short v12, v12, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->features:S

    and-int/lit8 v12, v12, 0x2

    if-eqz v12, :cond_5

    invoke-interface {v3}, Lmf/org/apache/xerces/xs/AttributePSVI;->getSchemaNormalizedValue()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_5

    invoke-interface {v1}, Lmf/org/w3c/dom/Attr;->getSpecified()Z

    move-result v10

    invoke-interface {v1, v9}, Lmf/org/w3c/dom/Attr;->setValue(Ljava/lang/String;)V

    if-nez v10, :cond_5

    check-cast v1, Lmf/org/apache/xerces/dom/AttrImpl;

    invoke-virtual {v1, v10}, Lmf/org/apache/xerces/dom/AttrImpl;->setSpecified(Z)V

    :cond_5
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_6
    invoke-interface {v3}, Lmf/org/apache/xerces/xs/AttributePSVI;->getTypeDefinition()Lmf/org/apache/xerces/xs/XSTypeDefinition;

    move-result-object v5

    if-eqz v5, :cond_2

    move-object v12, v5

    check-cast v12, Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    invoke-interface {v12}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->isIDType()Z

    move-result v7

    goto :goto_1

    :cond_7
    const/4 v11, 0x0

    sget-object v12, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object/from16 v0, p2

    invoke-interface {v0, v6}, Lmf/org/apache/xerces/xni/XMLAttributes;->getAugmentations(I)Lmf/org/apache/xerces/xni/Augmentations;

    move-result-object v13

    const-string v14, "ATTRIBUTE_DECLARED"

    invoke-interface {v13, v14}, Lmf/org/apache/xerces/xni/Augmentations;->getItem(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    move-object/from16 v0, p2

    invoke-interface {v0, v6}, Lmf/org/apache/xerces/xni/XMLAttributes;->getType(I)Ljava/lang/String;

    move-result-object v11

    const-string v12, "ID"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    move-object v12, v4

    check-cast v12, Lmf/org/apache/xerces/dom/ElementImpl;

    const/4 v13, 0x1

    invoke-virtual {v12, v1, v13}, Lmf/org/apache/xerces/dom/ElementImpl;->setIdAttributeNode(Lmf/org/w3c/dom/Attr;Z)V

    :cond_8
    check-cast v1, Lmf/org/apache/xerces/dom/AttrImpl;

    invoke-virtual {v1, v11}, Lmf/org/apache/xerces/dom/AttrImpl;->setType(Ljava/lang/Object;)V

    goto :goto_2
.end method

.method public startGeneralEntity(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLResourceIdentifier;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    return-void
.end method

.method public textDecl(Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    return-void
.end method

.method protected final updateQName(Lmf/org/w3c/dom/Node;Lmf/org/apache/xerces/xni/QName;)V
    .locals 6

    const/4 v4, 0x0

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v0

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-virtual {v3, v2}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_0
    iput-object v3, p2, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v3, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-virtual {v3, v0}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_1
    iput-object v3, p2, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    iget-object v3, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p2, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v3, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-virtual {v3, v1}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :cond_0
    iput-object v4, p2, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    return-void

    :cond_1
    move-object v3, v4

    goto :goto_0

    :cond_2
    move-object v3, v4

    goto :goto_1
.end method

.method public xmlDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    return-void
.end method
