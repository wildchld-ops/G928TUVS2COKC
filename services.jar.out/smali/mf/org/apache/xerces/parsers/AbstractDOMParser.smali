.class public Lmf/org/apache/xerces/parsers/AbstractDOMParser;
.super Lmf/org/apache/xerces/parsers/AbstractXMLDocumentParser;
.source "AbstractDOMParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmf/org/apache/xerces/parsers/AbstractDOMParser$Abort;
    }
.end annotation


# static fields
.field protected static final CORE_DOCUMENT_CLASS_NAME:Ljava/lang/String; = "mf.org.apache.xerces.dom.CoreDocumentImpl"

.field protected static final CREATE_CDATA_NODES_FEATURE:Ljava/lang/String; = "http://apache.org/xml/features/create-cdata-nodes"

.field protected static final CREATE_ENTITY_REF_NODES:Ljava/lang/String; = "http://apache.org/xml/features/dom/create-entity-ref-nodes"

.field protected static final CURRENT_ELEMENT_NODE:Ljava/lang/String; = "http://apache.org/xml/properties/dom/current-element-node"

.field private static final DEBUG_BASEURI:Z = false

.field private static final DEBUG_EVENTS:Z = false

.field protected static final DEFAULT_DOCUMENT_CLASS_NAME:Ljava/lang/String; = "mf.org.apache.xerces.dom.DocumentImpl"

.field protected static final DEFER_NODE_EXPANSION:Ljava/lang/String; = "http://apache.org/xml/features/dom/defer-node-expansion"

.field protected static final DOCUMENT_CLASS_NAME:Ljava/lang/String; = "http://apache.org/xml/properties/dom/document-class-name"

.field protected static final INCLUDE_COMMENTS_FEATURE:Ljava/lang/String; = "http://apache.org/xml/features/include-comments"

.field protected static final INCLUDE_IGNORABLE_WHITESPACE:Ljava/lang/String; = "http://apache.org/xml/features/dom/include-ignorable-whitespace"

.field protected static final NAMESPACES:Ljava/lang/String; = "http://xml.org/sax/features/namespaces"

.field protected static final PSVI_DOCUMENT_CLASS_NAME:Ljava/lang/String; = "mf.org.apache.xerces.dom.PSVIDocumentImpl"

.field private static final RECOGNIZED_FEATURES:[Ljava/lang/String;

.field private static final RECOGNIZED_PROPERTIES:[Ljava/lang/String;


# instance fields
.field private final fAttrQName:Lmf/org/apache/xerces/xni/QName;

.field protected final fBaseURIStack:Ljava/util/Stack;

.field protected fCreateCDATANodes:Z

.field protected fCreateEntityRefNodes:Z

.field protected fCurrentCDATASection:Lmf/org/w3c/dom/CDATASection;

.field protected fCurrentCDATASectionIndex:I

.field protected fCurrentEntityDecl:Lmf/org/apache/xerces/dom/EntityImpl;

.field protected fCurrentNode:Lmf/org/w3c/dom/Node;

.field protected fCurrentNodeIndex:I

.field protected fDOMFilter:Lmf/org/w3c/dom/ls/LSParserFilter;

.field protected fDeferNodeExpansion:Z

.field protected fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

.field protected fDeferredEntityDecl:I

.field protected fDocument:Lmf/org/w3c/dom/Document;

.field protected fDocumentClassName:Ljava/lang/String;

.field protected fDocumentImpl:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

.field protected fDocumentIndex:I

.field protected fDocumentType:Lmf/org/w3c/dom/DocumentType;

.field protected fDocumentTypeIndex:I

.field protected fErrorHandler:Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;

.field protected fFilterReject:Z

.field protected fFirstChunk:Z

.field protected fInCDATASection:Z

.field protected fInDTD:Z

.field protected fInDTDExternalSubset:Z

.field protected fInEntityRef:Z

.field protected fIncludeComments:Z

.field protected fIncludeIgnorableWhitespace:Z

.field protected fInternalSubset:Ljava/lang/StringBuffer;

.field private fLocator:Lmf/org/apache/xerces/xni/XMLLocator;

.field protected fNamespaceAware:Z

.field protected fRejectedElementDepth:I

.field protected fRoot:Lmf/org/w3c/dom/Node;

.field protected fSkippedElemStack:Ljava/util/Stack;

.field protected fStorePSVI:Z

.field protected final fStringBuffer:Ljava/lang/StringBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "http://xml.org/sax/features/namespaces"

    aput-object v1, v0, v3

    const-string/jumbo v1, "http://apache.org/xml/features/dom/create-entity-ref-nodes"

    aput-object v1, v0, v4

    const-string/jumbo v1, "http://apache.org/xml/features/include-comments"

    aput-object v1, v0, v5

    const/4 v1, 0x3

    const-string/jumbo v2, "http://apache.org/xml/features/create-cdata-nodes"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "http://apache.org/xml/features/dom/include-ignorable-whitespace"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "http://apache.org/xml/features/dom/defer-node-expansion"

    aput-object v2, v0, v1

    sput-object v0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->RECOGNIZED_FEATURES:[Ljava/lang/String;

    new-array v0, v5, [Ljava/lang/String;

    const-string/jumbo v1, "http://apache.org/xml/properties/dom/document-class-name"

    aput-object v1, v0, v3

    const-string/jumbo v1, "http://apache.org/xml/properties/dom/current-element-node"

    aput-object v1, v0, v4

    sput-object v0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->RECOGNIZED_PROPERTIES:[Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1}, Lmf/org/apache/xerces/parsers/AbstractXMLDocumentParser;-><init>(Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;)V

    iput-object v4, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fErrorHandler:Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;

    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    iput-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fStringBuffer:Ljava/lang/StringBuffer;

    iput-boolean v3, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fFirstChunk:Z

    iput-boolean v3, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fFilterReject:Z

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fBaseURIStack:Ljava/util/Stack;

    iput v3, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fRejectedElementDepth:I

    iput-object v4, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fSkippedElemStack:Ljava/util/Stack;

    iput-boolean v3, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInEntityRef:Z

    new-instance v0, Lmf/org/apache/xerces/xni/QName;

    invoke-direct {v0}, Lmf/org/apache/xerces/xni/QName;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fAttrQName:Lmf/org/apache/xerces/xni/QName;

    iput-object v4, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDOMFilter:Lmf/org/w3c/dom/ls/LSParserFilter;

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    sget-object v1, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->RECOGNIZED_FEATURES:[Ljava/lang/String;

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->addRecognizedFeatures([Ljava/lang/String;)V

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v1, "http://apache.org/xml/features/dom/create-entity-ref-nodes"

    invoke-interface {v0, v1, v2}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v1, "http://apache.org/xml/features/dom/include-ignorable-whitespace"

    invoke-interface {v0, v1, v2}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v1, "http://apache.org/xml/features/dom/defer-node-expansion"

    invoke-interface {v0, v1, v2}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v1, "http://apache.org/xml/features/include-comments"

    invoke-interface {v0, v1, v2}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v1, "http://apache.org/xml/features/create-cdata-nodes"

    invoke-interface {v0, v1, v2}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    sget-object v1, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->RECOGNIZED_PROPERTIES:[Ljava/lang/String;

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->addRecognizedProperties([Ljava/lang/String;)V

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v1, "http://apache.org/xml/properties/dom/document-class-name"

    const-string/jumbo v2, "mf.org.apache.xerces.dom.DocumentImpl"

    invoke-interface {v0, v1, v2}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public abort()V
    .locals 1

    sget-object v0, Lmf/org/apache/xerces/parsers/AbstractDOMParser$Abort;->INSTANCE:Lmf/org/apache/xerces/parsers/AbstractDOMParser$Abort;

    throw v0
.end method

.method public attributeDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-object v10, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    if-eqz v10, :cond_2

    iget-boolean v10, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInDTDExternalSubset:Z

    if-nez v10, :cond_2

    iget-object v10, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    const-string v11, "<!ATTLIST "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v10, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    invoke-virtual {v10, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v10, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    const/16 v11, 0x20

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v10, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    invoke-virtual {v10, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v10, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    const/16 v11, 0x20

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const-string v10, "ENUMERATION"

    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    iget-object v10, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    const/16 v11, 0x28

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v7, 0x0

    :goto_0
    move-object/from16 v0, p4

    array-length v10, v0

    if-lt v7, v10, :cond_8

    iget-object v10, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    const/16 v11, 0x29

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_1
    if-eqz p5, :cond_0

    iget-object v10, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    const/16 v11, 0x20

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v10, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    move-object/from16 v0, p5

    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    if-eqz p6, :cond_1

    iget-object v10, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    const-string v11, " \'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v7, 0x0

    :goto_2
    move-object/from16 v0, p6

    iget v10, v0, Lmf/org/apache/xerces/xni/XMLString;->length:I

    if-lt v7, v10, :cond_b

    iget-object v10, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    const/16 v11, 0x27

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_1
    iget-object v10, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    const-string v11, ">\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    iget-object v10, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    if-eqz v10, :cond_e

    if-eqz p6, :cond_7

    iget-object v10, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    invoke-virtual {v10, p1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->lookupElementDefinition(Ljava/lang/String;)I

    move-result v5

    const/4 v10, -0x1

    if-ne v5, v10, :cond_3

    iget-object v10, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    invoke-virtual {v10, p1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->createDeferredElementDefinition(Ljava/lang/String;)I

    move-result v5

    iget-object v10, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    iget v11, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocumentTypeIndex:I

    invoke-virtual {v10, v11, v5}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->appendChild(II)V

    :cond_3
    iget-boolean v9, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fNamespaceAware:Z

    const/4 v8, 0x0

    if-eqz v9, :cond_5

    const-string/jumbo v10, "xmlns:"

    invoke-virtual {p2, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_4

    const-string/jumbo v10, "xmlns"

    invoke-virtual {p2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_d

    :cond_4
    sget-object v8, Lmf/org/apache/xerces/xni/NamespaceContext;->XMLNS_URI:Ljava/lang/String;

    :cond_5
    :goto_3
    iget-object v10, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    invoke-virtual/range {p6 .. p6}, Lmf/org/apache/xerces/xni/XMLString;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v10, p2, v8, v11, v12}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->createDeferredAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v2

    const-string v10, "ID"

    move-object/from16 v0, p3

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    iget-object v10, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    invoke-virtual {v10, v2}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->setIdAttribute(I)V

    :cond_6
    iget-object v10, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    invoke-virtual {v10, v5, v2}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->appendChild(II)V

    :cond_7
    :goto_4
    return-void

    :cond_8
    if-lez v7, :cond_9

    iget-object v10, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    const/16 v11, 0x7c

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_9
    iget-object v10, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    aget-object v11, p4, v7

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    :cond_a
    iget-object v10, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    move-object/from16 v0, p3

    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    :cond_b
    move-object/from16 v0, p6

    iget-object v10, v0, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    move-object/from16 v0, p6

    iget v11, v0, Lmf/org/apache/xerces/xni/XMLString;->offset:I

    add-int/2addr v11, v7

    aget-char v3, v10, v11

    const/16 v10, 0x27

    if-ne v3, v10, :cond_c

    iget-object v10, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    const-string v11, "&apos;"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_5
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_2

    :cond_c
    iget-object v10, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_5

    :cond_d
    const-string/jumbo v10, "xml:"

    invoke-virtual {p2, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    sget-object v8, Lmf/org/apache/xerces/xni/NamespaceContext;->XML_URI:Ljava/lang/String;

    goto :goto_3

    :cond_e
    iget-object v10, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocumentImpl:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    if-eqz v10, :cond_7

    if-eqz p6, :cond_7

    iget-object v10, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocumentType:Lmf/org/w3c/dom/DocumentType;

    check-cast v10, Lmf/org/apache/xerces/dom/DocumentTypeImpl;

    invoke-virtual {v10}, Lmf/org/apache/xerces/dom/DocumentTypeImpl;->getElements()Lmf/org/w3c/dom/NamedNodeMap;

    move-result-object v6

    invoke-interface {v6, p1}, Lmf/org/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lmf/org/w3c/dom/Node;

    move-result-object v4

    check-cast v4, Lmf/org/apache/xerces/dom/ElementDefinitionImpl;

    if-nez v4, :cond_f

    iget-object v10, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocumentImpl:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    invoke-virtual {v10, p1}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->createElementDefinition(Ljava/lang/String;)Lmf/org/apache/xerces/dom/ElementDefinitionImpl;

    move-result-object v4

    iget-object v10, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocumentType:Lmf/org/w3c/dom/DocumentType;

    check-cast v10, Lmf/org/apache/xerces/dom/DocumentTypeImpl;

    invoke-virtual {v10}, Lmf/org/apache/xerces/dom/DocumentTypeImpl;->getElements()Lmf/org/w3c/dom/NamedNodeMap;

    move-result-object v10

    invoke-interface {v10, v4}, Lmf/org/w3c/dom/NamedNodeMap;->setNamedItem(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    :cond_f
    iget-boolean v9, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fNamespaceAware:Z

    if-eqz v9, :cond_13

    const/4 v8, 0x0

    const-string/jumbo v10, "xmlns:"

    invoke-virtual {p2, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_10

    const-string/jumbo v10, "xmlns"

    invoke-virtual {p2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_12

    :cond_10
    sget-object v8, Lmf/org/apache/xerces/xni/NamespaceContext;->XMLNS_URI:Ljava/lang/String;

    :cond_11
    :goto_6
    iget-object v10, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocumentImpl:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    invoke-virtual {v10, v8, p2}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->createAttributeNS(Ljava/lang/String;Ljava/lang/String;)Lmf/org/w3c/dom/Attr;

    move-result-object v1

    check-cast v1, Lmf/org/apache/xerces/dom/AttrImpl;

    :goto_7
    invoke-virtual/range {p6 .. p6}, Lmf/org/apache/xerces/xni/XMLString;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Lmf/org/apache/xerces/dom/AttrImpl;->setValue(Ljava/lang/String;)V

    const/4 v10, 0x0

    invoke-virtual {v1, v10}, Lmf/org/apache/xerces/dom/AttrImpl;->setSpecified(Z)V

    const-string v10, "ID"

    move-object/from16 v0, p3

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    invoke-virtual {v1, v10}, Lmf/org/apache/xerces/dom/AttrImpl;->setIdAttribute(Z)V

    if-eqz v9, :cond_14

    invoke-virtual {v4}, Lmf/org/apache/xerces/dom/ElementDefinitionImpl;->getAttributes()Lmf/org/w3c/dom/NamedNodeMap;

    move-result-object v10

    invoke-interface {v10, v1}, Lmf/org/w3c/dom/NamedNodeMap;->setNamedItemNS(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    goto/16 :goto_4

    :cond_12
    const-string/jumbo v10, "xml:"

    invoke-virtual {p2, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_11

    sget-object v8, Lmf/org/apache/xerces/xni/NamespaceContext;->XML_URI:Ljava/lang/String;

    goto :goto_6

    :cond_13
    iget-object v10, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocumentImpl:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    invoke-virtual {v10, p2}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->createAttribute(Ljava/lang/String;)Lmf/org/w3c/dom/Attr;

    move-result-object v1

    check-cast v1, Lmf/org/apache/xerces/dom/AttrImpl;

    goto :goto_7

    :cond_14
    invoke-virtual {v4}, Lmf/org/apache/xerces/dom/ElementDefinitionImpl;->getAttributes()Lmf/org/w3c/dom/NamedNodeMap;

    move-result-object v10

    invoke-interface {v10, v1}, Lmf/org/w3c/dom/NamedNodeMap;->setNamedItem(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    goto/16 :goto_4
.end method

.method public characters(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    const/4 v7, 0x0

    iget-boolean v5, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferNodeExpansion:Z

    if-nez v5, :cond_7

    iget-boolean v5, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fFilterReject:Z

    if-eqz v5, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v5, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInCDATASection:Z

    if-eqz v5, :cond_3

    iget-boolean v5, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCreateCDATANodes:Z

    if-eqz v5, :cond_3

    iget-object v5, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentCDATASection:Lmf/org/w3c/dom/CDATASection;

    if-nez v5, :cond_2

    iget-object v5, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocument:Lmf/org/w3c/dom/Document;

    invoke-virtual {p1}, Lmf/org/apache/xerces/xni/XMLString;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lmf/org/w3c/dom/Document;->createCDATASection(Ljava/lang/String;)Lmf/org/w3c/dom/CDATASection;

    move-result-object v5

    iput-object v5, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentCDATASection:Lmf/org/w3c/dom/CDATASection;

    iget-object v5, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentNode:Lmf/org/w3c/dom/Node;

    iget-object v6, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentCDATASection:Lmf/org/w3c/dom/CDATASection;

    invoke-interface {v5, v6}, Lmf/org/w3c/dom/Node;->appendChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    iget-object v5, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentCDATASection:Lmf/org/w3c/dom/CDATASection;

    iput-object v5, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentNode:Lmf/org/w3c/dom/Node;

    goto :goto_0

    :cond_2
    iget-object v5, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentCDATASection:Lmf/org/w3c/dom/CDATASection;

    invoke-virtual {p1}, Lmf/org/apache/xerces/xni/XMLString;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lmf/org/w3c/dom/CDATASection;->appendData(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-boolean v5, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInDTD:Z

    if-nez v5, :cond_0

    iget v5, p1, Lmf/org/apache/xerces/xni/XMLString;->length:I

    if-eqz v5, :cond_0

    iget-object v5, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentNode:Lmf/org/w3c/dom/Node;

    invoke-interface {v5}, Lmf/org/w3c/dom/Node;->getLastChild()Lmf/org/w3c/dom/Node;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_6

    iget-boolean v5, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fFirstChunk:Z

    if-eqz v5, :cond_4

    iget-object v5, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocumentImpl:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fStringBuffer:Ljava/lang/StringBuffer;

    check-cast v0, Lmf/org/apache/xerces/dom/TextImpl;

    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/TextImpl;->removeData()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_1
    iput-boolean v7, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fFirstChunk:Z

    :cond_4
    iget v5, p1, Lmf/org/apache/xerces/xni/XMLString;->length:I

    if-lez v5, :cond_0

    iget-object v5, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fStringBuffer:Ljava/lang/StringBuffer;

    iget-object v6, p1, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    iget v7, p1, Lmf/org/apache/xerces/xni/XMLString;->offset:I

    iget v8, p1, Lmf/org/apache/xerces/xni/XMLString;->length:I

    invoke-virtual {v5, v6, v7, v8}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_5
    iget-object v6, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fStringBuffer:Ljava/lang/StringBuffer;

    move-object v5, v0

    check-cast v5, Lmf/org/w3c/dom/Text;

    invoke-interface {v5}, Lmf/org/w3c/dom/Text;->getData()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    check-cast v0, Lmf/org/w3c/dom/Text;

    const/4 v5, 0x0

    invoke-interface {v0, v5}, Lmf/org/w3c/dom/Text;->setNodeValue(Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    const/4 v5, 0x1

    iput-boolean v5, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fFirstChunk:Z

    iget-object v5, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocument:Lmf/org/w3c/dom/Document;

    invoke-virtual {p1}, Lmf/org/apache/xerces/xni/XMLString;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lmf/org/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lmf/org/w3c/dom/Text;

    move-result-object v2

    iget-object v5, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentNode:Lmf/org/w3c/dom/Node;

    invoke-interface {v5, v2}, Lmf/org/w3c/dom/Node;->appendChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    goto/16 :goto_0

    :cond_7
    iget-boolean v5, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInCDATASection:Z

    if-eqz v5, :cond_9

    iget-boolean v5, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCreateCDATANodes:Z

    if-eqz v5, :cond_9

    iget v5, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentCDATASectionIndex:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_8

    iget-object v5, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    invoke-virtual {p1}, Lmf/org/apache/xerces/xni/XMLString;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->createDeferredCDATASection(Ljava/lang/String;)I

    move-result v1

    iget-object v5, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    iget v6, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentNodeIndex:I

    invoke-virtual {v5, v6, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->appendChild(II)V

    iput v1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentCDATASectionIndex:I

    iput v1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentNodeIndex:I

    goto/16 :goto_0

    :cond_8
    iget-object v5, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    invoke-virtual {p1}, Lmf/org/apache/xerces/xni/XMLString;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v7}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->createDeferredTextNode(Ljava/lang/String;Z)I

    move-result v3

    iget-object v5, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    iget v6, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentNodeIndex:I

    invoke-virtual {v5, v6, v3}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->appendChild(II)V

    goto/16 :goto_0

    :cond_9
    iget-boolean v5, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInDTD:Z

    if-nez v5, :cond_0

    iget v5, p1, Lmf/org/apache/xerces/xni/XMLString;->length:I

    if-eqz v5, :cond_0

    invoke-virtual {p1}, Lmf/org/apache/xerces/xni/XMLString;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    invoke-virtual {v5, v4, v7}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->createDeferredTextNode(Ljava/lang/String;Z)I

    move-result v3

    iget-object v5, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    iget v6, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentNodeIndex:I

    invoke-virtual {v5, v6, v3}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->appendChild(II)V

    goto/16 :goto_0
.end method

.method public comment(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-boolean v2, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInDTD:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInDTDExternalSubset:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    const-string v3, "<!--"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v2, p1, Lmf/org/apache/xerces/xni/XMLString;->length:I

    if-lez v2, :cond_0

    iget-object v2, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    iget-object v3, p1, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    iget v4, p1, Lmf/org/apache/xerces/xni/XMLString;->offset:I

    iget v5, p1, Lmf/org/apache/xerces/xni/XMLString;->length:I

    invoke-virtual {v2, v3, v4, v5}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    :cond_0
    iget-object v2, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    const-string v3, "-->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-boolean v2, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fIncludeComments:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fFilterReject:Z

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferNodeExpansion:Z

    if-nez v2, :cond_3

    iget-object v2, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocument:Lmf/org/w3c/dom/Document;

    invoke-virtual {p1}, Lmf/org/apache/xerces/xni/XMLString;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lmf/org/w3c/dom/Document;->createComment(Ljava/lang/String;)Lmf/org/w3c/dom/Comment;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->setCharacterData(Z)V

    iget-object v2, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentNode:Lmf/org/w3c/dom/Node;

    invoke-interface {v2, v1}, Lmf/org/w3c/dom/Node;->appendChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    iget-object v2, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDOMFilter:Lmf/org/w3c/dom/ls/LSParserFilter;

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInEntityRef:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDOMFilter:Lmf/org/w3c/dom/ls/LSParserFilter;

    invoke-interface {v2}, Lmf/org/w3c/dom/ls/LSParserFilter;->getWhatToShow()I

    move-result v2

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_1

    iget-object v2, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDOMFilter:Lmf/org/w3c/dom/ls/LSParserFilter;

    invoke-interface {v2, v1}, Lmf/org/w3c/dom/ls/LSParserFilter;->acceptNode(Lmf/org/w3c/dom/Node;)S

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v2, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentNode:Lmf/org/w3c/dom/Node;

    invoke-interface {v2, v1}, Lmf/org/w3c/dom/Node;->removeChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    const/4 v2, 0x1

    iput-boolean v2, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fFirstChunk:Z

    goto :goto_0

    :pswitch_1
    sget-object v2, Lmf/org/apache/xerces/parsers/AbstractDOMParser$Abort;->INSTANCE:Lmf/org/apache/xerces/parsers/AbstractDOMParser$Abort;

    throw v2

    :cond_3
    iget-object v2, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    invoke-virtual {p1}, Lmf/org/apache/xerces/xni/XMLString;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->createDeferredComment(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    iget v3, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentNodeIndex:I

    invoke-virtual {v2, v3, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->appendChild(II)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected createAttrNode(Lmf/org/apache/xerces/xni/QName;)Lmf/org/w3c/dom/Attr;
    .locals 5

    const/4 v0, 0x0

    iget-boolean v1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fNamespaceAware:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocumentImpl:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocumentImpl:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    iget-object v2, p1, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    iget-object v3, p1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    iget-object v4, p1, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->createAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lmf/org/w3c/dom/Attr;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocument:Lmf/org/w3c/dom/Document;

    iget-object v2, p1, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    iget-object v3, p1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lmf/org/w3c/dom/Document;->createAttributeNS(Ljava/lang/String;Ljava/lang/String;)Lmf/org/w3c/dom/Attr;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocument:Lmf/org/w3c/dom/Document;

    iget-object v2, p1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    invoke-interface {v1, v2}, Lmf/org/w3c/dom/Document;->createAttribute(Ljava/lang/String;)Lmf/org/w3c/dom/Attr;

    move-result-object v0

    goto :goto_0
.end method

.method protected createElementNode(Lmf/org/apache/xerces/xni/QName;)Lmf/org/w3c/dom/Element;
    .locals 5

    const/4 v0, 0x0

    iget-boolean v1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fNamespaceAware:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocumentImpl:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocumentImpl:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    iget-object v2, p1, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    iget-object v3, p1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    iget-object v4, p1, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->createElementNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lmf/org/w3c/dom/Element;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocument:Lmf/org/w3c/dom/Document;

    iget-object v2, p1, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    iget-object v3, p1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lmf/org/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lmf/org/w3c/dom/Element;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocument:Lmf/org/w3c/dom/Document;

    iget-object v2, p1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    invoke-interface {v1, v2}, Lmf/org/w3c/dom/Document;->createElement(Ljava/lang/String;)Lmf/org/w3c/dom/Element;

    move-result-object v0

    goto :goto_0
.end method

.method public doctypeDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-boolean v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferNodeExpansion:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocumentImpl:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocumentImpl:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    invoke-virtual {v0, p1, p2, p3}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->createDocumentType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lmf/org/w3c/dom/DocumentType;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocumentType:Lmf/org/w3c/dom/DocumentType;

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentNode:Lmf/org/w3c/dom/Node;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocumentType:Lmf/org/w3c/dom/DocumentType;

    invoke-interface {v0, v1}, Lmf/org/w3c/dom/Node;->appendChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    invoke-virtual {v0, p1, p2, p3}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->createDeferredDocumentType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocumentTypeIndex:I

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    iget v1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentNodeIndex:I

    iget v2, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocumentTypeIndex:I

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->appendChild(II)V

    goto :goto_0
.end method

.method public final dropDocumentReferences()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocument:Lmf/org/w3c/dom/Document;

    iput-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocumentImpl:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    iput-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    iput-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocumentType:Lmf/org/w3c/dom/DocumentType;

    iput-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentNode:Lmf/org/w3c/dom/Node;

    iput-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentCDATASection:Lmf/org/w3c/dom/CDATASection;

    iput-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentEntityDecl:Lmf/org/apache/xerces/dom/EntityImpl;

    iput-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fRoot:Lmf/org/w3c/dom/Node;

    return-void
.end method

.method public elementDecl(Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInDTDExternalSubset:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    const-string v1, "<!ELEMENT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    const-string v1, ">\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    return-void
.end method

.method public emptyElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->startElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;)V

    invoke-virtual {p0, p1, p3}, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->endElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/Augmentations;)V

    return-void
.end method

.method public endAttlist(Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    return-void
.end method

.method public endCDATA(Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    const/4 v5, 0x0

    const/4 v4, -0x1

    iput-boolean v5, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInCDATASection:Z

    iget-boolean v2, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferNodeExpansion:Z

    if-nez v2, :cond_3

    iget-boolean v2, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fFilterReject:Z

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentCDATASection:Lmf/org/w3c/dom/CDATASection;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDOMFilter:Lmf/org/w3c/dom/ls/LSParserFilter;

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInEntityRef:Z

    if-nez v2, :cond_2

    iget-object v2, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDOMFilter:Lmf/org/w3c/dom/ls/LSParserFilter;

    invoke-interface {v2}, Lmf/org/w3c/dom/ls/LSParserFilter;->getWhatToShow()I

    move-result v2

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_2

    iget-object v2, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDOMFilter:Lmf/org/w3c/dom/ls/LSParserFilter;

    iget-object v3, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentCDATASection:Lmf/org/w3c/dom/CDATASection;

    invoke-interface {v2, v3}, Lmf/org/w3c/dom/ls/LSParserFilter;->acceptNode(Lmf/org/w3c/dom/Node;)S

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_2
    iget-object v2, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentNode:Lmf/org/w3c/dom/Node;

    invoke-interface {v2}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v2

    iput-object v2, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentNode:Lmf/org/w3c/dom/Node;

    const/4 v2, 0x0

    iput-object v2, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentCDATASection:Lmf/org/w3c/dom/CDATASection;

    goto :goto_0

    :pswitch_0
    sget-object v2, Lmf/org/apache/xerces/parsers/AbstractDOMParser$Abort;->INSTANCE:Lmf/org/apache/xerces/parsers/AbstractDOMParser$Abort;

    throw v2

    :pswitch_1
    iget-object v2, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentNode:Lmf/org/w3c/dom/Node;

    invoke-interface {v2}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v1

    iget-object v2, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentCDATASection:Lmf/org/w3c/dom/CDATASection;

    invoke-interface {v1, v2}, Lmf/org/w3c/dom/Node;->removeChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    iput-object v1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentNode:Lmf/org/w3c/dom/Node;

    goto :goto_0

    :cond_3
    iget v2, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentCDATASectionIndex:I

    if-eq v2, v4, :cond_0

    iget-object v2, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    iget v3, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentNodeIndex:I

    invoke-virtual {v2, v3, v5}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getParentNode(IZ)I

    move-result v2

    iput v2, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentNodeIndex:I

    iput v4, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentCDATASectionIndex:I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public endConditional(Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    return-void
.end method

.method public endDTD(Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    const/4 v1, 0x0

    iput-boolean v1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInDTD:Z

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fBaseURIStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fBaseURIStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    :cond_0
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-lez v1, :cond_2

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-boolean v1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferNodeExpansion:Z

    if-eqz v1, :cond_3

    if-eqz v0, :cond_1

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    iget v2, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocumentTypeIndex:I

    invoke-virtual {v1, v2, v0}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->setInternalSubset(ILjava/lang/String;)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocumentImpl:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocumentType:Lmf/org/w3c/dom/DocumentType;

    check-cast v1, Lmf/org/apache/xerces/dom/DocumentTypeImpl;

    invoke-virtual {v1, v0}, Lmf/org/apache/xerces/dom/DocumentTypeImpl;->setInternalSubset(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public endDocument(Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-boolean v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferNodeExpansion:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocumentImpl:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fLocator:Lmf/org/apache/xerces/xni/XMLLocator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocumentImpl:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fLocator:Lmf/org/apache/xerces/xni/XMLLocator;

    invoke-interface {v1}, Lmf/org/apache/xerces/xni/XMLLocator;->getEncoding()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->setInputEncoding(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocumentImpl:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->setStrictErrorChecking(Z)V

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentNode:Lmf/org/w3c/dom/Node;

    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fLocator:Lmf/org/apache/xerces/xni/XMLLocator;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fLocator:Lmf/org/apache/xerces/xni/XMLLocator;

    invoke-interface {v1}, Lmf/org/apache/xerces/xni/XMLLocator;->getEncoding()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->setInputEncoding(Ljava/lang/String;)V

    :cond_3
    const/4 v0, -0x1

    iput v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentNodeIndex:I

    goto :goto_0
.end method

.method public endElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    const/4 v9, 0x0

    iget-boolean v7, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferNodeExpansion:Z

    if-nez v7, :cond_a

    if-eqz p2, :cond_3

    iget-object v7, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocumentImpl:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    if-eqz v7, :cond_3

    iget-boolean v7, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fNamespaceAware:Z

    if-nez v7, :cond_0

    iget-boolean v7, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fStorePSVI:Z

    if-eqz v7, :cond_3

    :cond_0
    const-string v7, "ELEMENT_PSVI"

    invoke-interface {p2, v7}, Lmf/org/apache/xerces/xni/Augmentations;->getItem(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmf/org/apache/xerces/xs/ElementPSVI;

    if-eqz v1, :cond_3

    iget-boolean v7, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fNamespaceAware:Z

    if-eqz v7, :cond_2

    invoke-interface {v1}, Lmf/org/apache/xerces/xs/ElementPSVI;->getMemberTypeDefinition()Lmf/org/apache/xerces/xs/XSSimpleTypeDefinition;

    move-result-object v6

    if-nez v6, :cond_1

    invoke-interface {v1}, Lmf/org/apache/xerces/xs/ElementPSVI;->getTypeDefinition()Lmf/org/apache/xerces/xs/XSTypeDefinition;

    move-result-object v6

    :cond_1
    iget-object v7, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentNode:Lmf/org/w3c/dom/Node;

    check-cast v7, Lmf/org/apache/xerces/dom/ElementNSImpl;

    invoke-virtual {v7, v6}, Lmf/org/apache/xerces/dom/ElementNSImpl;->setType(Lmf/org/apache/xerces/xs/XSTypeDefinition;)V

    :cond_2
    iget-boolean v7, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fStorePSVI:Z

    if-eqz v7, :cond_3

    iget-object v7, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentNode:Lmf/org/w3c/dom/Node;

    check-cast v7, Lmf/org/apache/xerces/dom/PSVIElementNSImpl;

    invoke-virtual {v7, v1}, Lmf/org/apache/xerces/dom/PSVIElementNSImpl;->setPSVI(Lmf/org/apache/xerces/xs/ElementPSVI;)V

    :cond_3
    iget-object v7, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDOMFilter:Lmf/org/w3c/dom/ls/LSParserFilter;

    if-eqz v7, :cond_9

    iget-boolean v7, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fFilterReject:Z

    if-eqz v7, :cond_5

    iget v7, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fRejectedElementDepth:I

    add-int/lit8 v8, v7, -0x1

    iput v8, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fRejectedElementDepth:I

    if-nez v7, :cond_4

    iput-boolean v9, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fFilterReject:Z

    :cond_4
    :goto_0
    return-void

    :cond_5
    iget-object v7, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fSkippedElemStack:Ljava/util/Stack;

    invoke-virtual {v7}, Ljava/util/Stack;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_6

    iget-object v7, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fSkippedElemStack:Ljava/util/Stack;

    invoke-virtual {v7}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v7

    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-eq v7, v8, :cond_4

    :cond_6
    invoke-virtual {p0, v9}, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->setCharacterData(Z)V

    iget-object v7, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentNode:Lmf/org/w3c/dom/Node;

    iget-object v8, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fRoot:Lmf/org/w3c/dom/Node;

    if-eq v7, v8, :cond_7

    iget-boolean v7, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInEntityRef:Z

    if-nez v7, :cond_7

    iget-object v7, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDOMFilter:Lmf/org/w3c/dom/ls/LSParserFilter;

    invoke-interface {v7}, Lmf/org/w3c/dom/ls/LSParserFilter;->getWhatToShow()I

    move-result v7

    and-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_7

    iget-object v7, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDOMFilter:Lmf/org/w3c/dom/ls/LSParserFilter;

    iget-object v8, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentNode:Lmf/org/w3c/dom/Node;

    invoke-interface {v7, v8}, Lmf/org/w3c/dom/ls/LSParserFilter;->acceptNode(Lmf/org/w3c/dom/Node;)S

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_7
    iget-object v7, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentNode:Lmf/org/w3c/dom/Node;

    invoke-interface {v7}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v7

    iput-object v7, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentNode:Lmf/org/w3c/dom/Node;

    goto :goto_0

    :pswitch_0
    sget-object v7, Lmf/org/apache/xerces/parsers/AbstractDOMParser$Abort;->INSTANCE:Lmf/org/apache/xerces/parsers/AbstractDOMParser$Abort;

    throw v7

    :pswitch_1
    iget-object v7, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentNode:Lmf/org/w3c/dom/Node;

    invoke-interface {v7}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v5

    iget-object v7, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentNode:Lmf/org/w3c/dom/Node;

    invoke-interface {v5, v7}, Lmf/org/w3c/dom/Node;->removeChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    iput-object v5, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentNode:Lmf/org/w3c/dom/Node;

    goto :goto_0

    :pswitch_2
    const/4 v7, 0x1

    iput-boolean v7, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fFirstChunk:Z

    iget-object v7, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentNode:Lmf/org/w3c/dom/Node;

    invoke-interface {v7}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v5

    iget-object v7, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentNode:Lmf/org/w3c/dom/Node;

    invoke-interface {v7}, Lmf/org/w3c/dom/Node;->getChildNodes()Lmf/org/w3c/dom/NodeList;

    move-result-object v4

    invoke-interface {v4}, Lmf/org/w3c/dom/NodeList;->getLength()I

    move-result v3

    const/4 v2, 0x0

    :goto_1
    if-lt v2, v3, :cond_8

    iget-object v7, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentNode:Lmf/org/w3c/dom/Node;

    invoke-interface {v5, v7}, Lmf/org/w3c/dom/Node;->removeChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    iput-object v5, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentNode:Lmf/org/w3c/dom/Node;

    goto :goto_0

    :cond_8
    invoke-interface {v4, v9}, Lmf/org/w3c/dom/NodeList;->item(I)Lmf/org/w3c/dom/Node;

    move-result-object v7

    invoke-interface {v5, v7}, Lmf/org/w3c/dom/Node;->appendChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_9
    invoke-virtual {p0, v9}, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->setCharacterData(Z)V

    iget-object v7, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentNode:Lmf/org/w3c/dom/Node;

    invoke-interface {v7}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v7

    iput-object v7, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentNode:Lmf/org/w3c/dom/Node;

    goto/16 :goto_0

    :cond_a
    if-eqz p2, :cond_c

    const-string v7, "ELEMENT_PSVI"

    invoke-interface {p2, v7}, Lmf/org/apache/xerces/xni/Augmentations;->getItem(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmf/org/apache/xerces/xs/ElementPSVI;

    if-eqz v1, :cond_c

    invoke-interface {v1}, Lmf/org/apache/xerces/xs/ElementPSVI;->getMemberTypeDefinition()Lmf/org/apache/xerces/xs/XSSimpleTypeDefinition;

    move-result-object v6

    if-nez v6, :cond_b

    invoke-interface {v1}, Lmf/org/apache/xerces/xs/ElementPSVI;->getTypeDefinition()Lmf/org/apache/xerces/xs/XSTypeDefinition;

    move-result-object v6

    :cond_b
    iget-object v7, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    iget v8, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentNodeIndex:I

    invoke-virtual {v7, v8, v6}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->setTypeInfo(ILjava/lang/Object;)V

    :cond_c
    iget-object v7, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    iget v8, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentNodeIndex:I

    invoke-virtual {v7, v8, v9}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getParentNode(IZ)I

    move-result v7

    iput v7, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentNodeIndex:I

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public endExternalSubset(Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInDTDExternalSubset:Z

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fBaseURIStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    return-void
.end method

.method public endGeneralEntity(Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferNodeExpansion:Z

    move/from16 v21, v0

    if-nez v21, :cond_c

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fFilterReject:Z

    move/from16 v21, v0

    if-eqz v21, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->setCharacterData(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocumentType:Lmf/org/w3c/dom/DocumentType;

    move-object/from16 v21, v0

    if-eqz v21, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocumentType:Lmf/org/w3c/dom/DocumentType;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Lmf/org/w3c/dom/DocumentType;->getEntities()Lmf/org/w3c/dom/NamedNodeMap;

    move-result-object v9

    move-object/from16 v0, p1

    invoke-interface {v9, v0}, Lmf/org/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lmf/org/w3c/dom/Node;

    move-result-object v21

    check-cast v21, Lmf/org/apache/xerces/dom/EntityImpl;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentEntityDecl:Lmf/org/apache/xerces/dom/EntityImpl;

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentEntityDecl:Lmf/org/apache/xerces/dom/EntityImpl;

    move-object/from16 v21, v0

    if-eqz v21, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentEntityDecl:Lmf/org/apache/xerces/dom/EntityImpl;

    move-object/from16 v21, v0

    if-eqz v21, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentEntityDecl:Lmf/org/apache/xerces/dom/EntityImpl;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lmf/org/apache/xerces/dom/EntityImpl;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object v21

    if-nez v21, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentEntityDecl:Lmf/org/apache/xerces/dom/EntityImpl;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const/16 v23, 0x1

    invoke-virtual/range {v21 .. v23}, Lmf/org/apache/xerces/dom/EntityImpl;->setReadOnly(ZZ)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentNode:Lmf/org/w3c/dom/Node;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Lmf/org/w3c/dom/Node;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object v3

    :goto_1
    if-nez v3, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentEntityDecl:Lmf/org/apache/xerces/dom/EntityImpl;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    const/16 v23, 0x1

    invoke-virtual/range {v21 .. v23}, Lmf/org/apache/xerces/dom/EntityImpl;->setReadOnly(ZZ)V

    :cond_2
    const/16 v21, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentEntityDecl:Lmf/org/apache/xerces/dom/EntityImpl;

    :cond_3
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInEntityRef:Z

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCreateEntityRefNodes:Z

    move/from16 v21, v0

    if-eqz v21, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocumentImpl:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    move-object/from16 v21, v0

    if-eqz v21, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentNode:Lmf/org/w3c/dom/Node;

    move-object/from16 v21, v0

    check-cast v21, Lmf/org/apache/xerces/dom/NodeImpl;

    const/16 v22, 0x1

    const/16 v23, 0x1

    invoke-virtual/range {v21 .. v23}, Lmf/org/apache/xerces/dom/NodeImpl;->setReadOnly(ZZ)V

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDOMFilter:Lmf/org/w3c/dom/ls/LSParserFilter;

    move-object/from16 v21, v0

    if-eqz v21, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDOMFilter:Lmf/org/w3c/dom/ls/LSParserFilter;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Lmf/org/w3c/dom/ls/LSParserFilter;->getWhatToShow()I

    move-result v21

    and-int/lit8 v21, v21, 0x10

    if-eqz v21, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDOMFilter:Lmf/org/w3c/dom/ls/LSParserFilter;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentNode:Lmf/org/w3c/dom/Node;

    move-object/from16 v22, v0

    invoke-interface/range {v21 .. v22}, Lmf/org/w3c/dom/ls/LSParserFilter;->acceptNode(Lmf/org/w3c/dom/Node;)S

    move-result v7

    packed-switch v7, :pswitch_data_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentNode:Lmf/org/w3c/dom/Node;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentNode:Lmf/org/w3c/dom/Node;

    :cond_5
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCreateEntityRefNodes:Z

    move/from16 v21, v0

    if-eqz v21, :cond_6

    if-eqz v19, :cond_0

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentNode:Lmf/org/w3c/dom/Node;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Lmf/org/w3c/dom/Node;->getChildNodes()Lmf/org/w3c/dom/NodeList;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentNode:Lmf/org/w3c/dom/Node;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v16

    invoke-interface {v5}, Lmf/org/w3c/dom/NodeList;->getLength()I

    move-result v12

    if-lez v12, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentNode:Lmf/org/w3c/dom/Node;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Lmf/org/w3c/dom/Node;->getPreviousSibling()Lmf/org/w3c/dom/Node;

    move-result-object v13

    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-interface {v5, v0}, Lmf/org/w3c/dom/NodeList;->item(I)Lmf/org/w3c/dom/Node;

    move-result-object v3

    if-eqz v13, :cond_a

    invoke-interface {v13}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v21

    const/16 v22, 0x3

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_a

    invoke-interface {v3}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v21

    const/16 v22, 0x3

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_a

    move-object/from16 v21, v13

    check-cast v21, Lmf/org/w3c/dom/Text;

    invoke-interface {v3}, Lmf/org/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v22

    invoke-interface/range {v21 .. v22}, Lmf/org/w3c/dom/Text;->appendData(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentNode:Lmf/org/w3c/dom/Node;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-interface {v0, v3}, Lmf/org/w3c/dom/Node;->removeChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    :goto_3
    const/4 v10, 0x1

    :goto_4
    if-lt v10, v12, :cond_b

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentNode:Lmf/org/w3c/dom/Node;

    move-object/from16 v21, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Lmf/org/w3c/dom/Node;->removeChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentNode:Lmf/org/w3c/dom/Node;

    goto/16 :goto_0

    :cond_8
    const/16 v21, 0x1

    move/from16 v0, v21

    invoke-interface {v3, v0}, Lmf/org/w3c/dom/Node;->cloneNode(Z)Lmf/org/w3c/dom/Node;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentEntityDecl:Lmf/org/apache/xerces/dom/EntityImpl;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Lmf/org/apache/xerces/dom/EntityImpl;->appendChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    invoke-interface {v3}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v3

    goto/16 :goto_1

    :pswitch_0
    sget-object v21, Lmf/org/apache/xerces/parsers/AbstractDOMParser$Abort;->INSTANCE:Lmf/org/apache/xerces/parsers/AbstractDOMParser$Abort;

    throw v21

    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentNode:Lmf/org/w3c/dom/Node;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentNode:Lmf/org/w3c/dom/Node;

    move-object/from16 v21, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Lmf/org/w3c/dom/Node;->removeChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentNode:Lmf/org/w3c/dom/Node;

    goto/16 :goto_0

    :pswitch_2
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fFirstChunk:Z

    const/16 v19, 0x1

    goto/16 :goto_2

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentNode:Lmf/org/w3c/dom/Node;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentNode:Lmf/org/w3c/dom/Node;

    goto/16 :goto_2

    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentNode:Lmf/org/w3c/dom/Node;

    move-object/from16 v21, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-interface {v0, v3, v1}, Lmf/org/w3c/dom/Node;->insertBefore(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->handleBaseURI(Lmf/org/w3c/dom/Node;)V

    goto/16 :goto_3

    :cond_b
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-interface {v5, v0}, Lmf/org/w3c/dom/NodeList;->item(I)Lmf/org/w3c/dom/Node;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentNode:Lmf/org/w3c/dom/Node;

    move-object/from16 v22, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-interface {v0, v1, v2}, Lmf/org/w3c/dom/Node;->insertBefore(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->handleBaseURI(Lmf/org/w3c/dom/Node;)V

    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_4

    :cond_c
    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocumentTypeIndex:I

    move/from16 v21, v0

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocumentTypeIndex:I

    move/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v21 .. v23}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getLastChild(IZ)I

    move-result v13

    :goto_5
    const/16 v21, -0x1

    move/from16 v0, v21

    if-ne v13, v0, :cond_f

    :cond_d
    :goto_6
    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredEntityDecl:I

    move/from16 v21, v0

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredEntityDecl:I

    move/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v21 .. v23}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getLastChild(IZ)I

    move-result v21

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_e

    const/16 v18, -0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentNodeIndex:I

    move/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v21 .. v23}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getLastChild(IZ)I

    move-result v4

    :goto_7
    const/16 v21, -0x1

    move/from16 v0, v21

    if-ne v4, v0, :cond_11

    :cond_e
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCreateEntityRefNodes:Z

    move/from16 v21, v0

    if-eqz v21, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentNodeIndex:I

    move/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v21 .. v23}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getParentNode(IZ)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentNodeIndex:I

    :goto_8
    const/16 v21, -0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredEntityDecl:I

    goto/16 :goto_0

    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v0, v13, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getNodeType(IZ)S

    move-result v15

    const/16 v21, 0x6

    move/from16 v0, v21

    if-ne v15, v0, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v0, v13, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getNodeName(IZ)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_10

    move-object/from16 v0, p0

    iput v13, v0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredEntityDecl:I

    goto/16 :goto_6

    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v0, v13, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getRealPrevSibling(IZ)I

    move-result v13

    goto/16 :goto_5

    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v0, v4, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->cloneNode(IZ)I

    move-result v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredEntityDecl:I

    move/from16 v22, v0

    move-object/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v18

    invoke-virtual {v0, v1, v6, v2}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->insertBefore(III)I

    move/from16 v18, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v0, v4, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getRealPrevSibling(IZ)I

    move-result v4

    goto/16 :goto_7

    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentNodeIndex:I

    move/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v21 .. v23}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getLastChild(IZ)I

    move-result v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentNodeIndex:I

    move/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v21 .. v23}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getParentNode(IZ)I

    move-result v17

    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentNodeIndex:I

    move/from16 v18, v0

    move v11, v4

    const/16 v20, -0x1

    :goto_9
    const/16 v21, -0x1

    move/from16 v0, v21

    if-ne v4, v0, :cond_13

    const/16 v21, -0x1

    move/from16 v0, v21

    if-eq v11, v0, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move/from16 v1, v17

    invoke-virtual {v0, v1, v11}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->setAsLastChild(II)V

    :goto_a
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentNodeIndex:I

    goto/16 :goto_8

    :cond_13
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->handleBaseURI(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v0, v4, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getRealPrevSibling(IZ)I

    move-result v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v4, v2}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->insertBefore(III)I

    move/from16 v18, v4

    move/from16 v4, v20

    goto :goto_9

    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v18

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getRealPrevSibling(IZ)I

    move-result v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move/from16 v1, v17

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->setAsLastChild(II)V

    goto :goto_a

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public endParameterEntity(Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fBaseURIStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    return-void
.end method

.method public externalEntityDecl(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLResourceIdentifier;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    invoke-interface {p2}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->getPublicId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->getLiteralSystemId()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInDTDExternalSubset:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    const-string v1, "<!ENTITY "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "%"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    const-string v1, "% "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    if-eqz v2, :cond_3

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    const-string v1, "PUBLIC \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    const-string v1, "\' \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_1
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    const-string v1, "\'>\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    const-string v0, "%"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_1
    :goto_2
    return-void

    :cond_2
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    const-string v1, "SYSTEM \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocumentType:Lmf/org/w3c/dom/DocumentType;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocumentType:Lmf/org/w3c/dom/DocumentType;

    invoke-interface {v0}, Lmf/org/w3c/dom/DocumentType;->getEntities()Lmf/org/w3c/dom/NamedNodeMap;

    move-result-object v6

    invoke-interface {v6, p1}, Lmf/org/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lmf/org/w3c/dom/Node;

    move-result-object v7

    check-cast v7, Lmf/org/apache/xerces/dom/EntityImpl;

    if-nez v7, :cond_5

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocumentImpl:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->createEntity(Ljava/lang/String;)Lmf/org/w3c/dom/Entity;

    move-result-object v7

    check-cast v7, Lmf/org/apache/xerces/dom/EntityImpl;

    invoke-virtual {v7, v2}, Lmf/org/apache/xerces/dom/EntityImpl;->setPublicId(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Lmf/org/apache/xerces/dom/EntityImpl;->setSystemId(Ljava/lang/String;)V

    invoke-interface {p2}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->getBaseSystemId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lmf/org/apache/xerces/dom/EntityImpl;->setBaseURI(Ljava/lang/String;)V

    invoke-interface {v6, v7}, Lmf/org/w3c/dom/NamedNodeMap;->setNamedItem(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    :cond_5
    iget v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocumentTypeIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    const/4 v9, 0x0

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    iget v1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocumentTypeIndex:I

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getLastChild(IZ)I

    move-result v10

    :goto_3
    const/4 v0, -0x1

    if-ne v10, v0, :cond_6

    :goto_4
    if-nez v9, :cond_1

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    const/4 v4, 0x0

    invoke-interface {p2}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->getBaseSystemId()Ljava/lang/String;

    move-result-object v5

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->createDeferredEntity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    iget v1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocumentTypeIndex:I

    invoke-virtual {v0, v1, v8}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->appendChild(II)V

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, v10, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getNodeType(IZ)S

    move-result v12

    const/4 v0, 0x6

    if-ne v12, v0, :cond_7

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, v10, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getNodeName(IZ)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v9, 0x1

    goto :goto_4

    :cond_7
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, v10, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getRealPrevSibling(IZ)I

    move-result v10

    goto :goto_3
.end method

.method public getDocument()Lmf/org/w3c/dom/Document;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocument:Lmf/org/w3c/dom/Document;

    return-object v0
.end method

.method protected getDocumentClassName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocumentClassName:Ljava/lang/String;

    return-object v0
.end method

.method protected final handleBaseURI(I)V
    .locals 8

    const/4 v5, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    invoke-virtual {v0, p1, v2}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getNodeType(IZ)S

    move-result v7

    if-ne v7, v5, :cond_2

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    iget v1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentNodeIndex:I

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getNodeValueString(IZ)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    iget v1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredEntityDecl:I

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getDeferredEntityBaseURI(I)Ljava/lang/String;

    move-result-object v4

    :cond_0
    if-eqz v4, :cond_1

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getDocumentURI()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    const-string/jumbo v2, "xml:base"

    const-string/jumbo v3, "http://www.w3.org/XML/1998/namespace"

    move v1, p1

    invoke-virtual/range {v0 .. v5}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->setDeferredAttribute(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/4 v0, 0x7

    if-ne v7, v0, :cond_1

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    iget v1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentNodeIndex:I

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getNodeValueString(IZ)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_3

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    iget v1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredEntityDecl:I

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getDeferredEntityBaseURI(I)Ljava/lang/String;

    move-result-object v4

    :cond_3
    if-eqz v4, :cond_1

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fErrorHandler:Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;

    if-eqz v0, :cond_1

    new-instance v6, Lmf/org/apache/xerces/dom/DOMErrorImpl;

    invoke-direct {v6}, Lmf/org/apache/xerces/dom/DOMErrorImpl;-><init>()V

    const-string/jumbo v0, "pi-base-uri-not-preserved"

    iput-object v0, v6, Lmf/org/apache/xerces/dom/DOMErrorImpl;->fType:Ljava/lang/String;

    iput-object v4, v6, Lmf/org/apache/xerces/dom/DOMErrorImpl;->fRelatedData:Ljava/lang/Object;

    iput-short v5, v6, Lmf/org/apache/xerces/dom/DOMErrorImpl;->fSeverity:S

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fErrorHandler:Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;

    invoke-virtual {v0}, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;->getErrorHandler()Lmf/org/w3c/dom/DOMErrorHandler;

    move-result-object v0

    invoke-interface {v0, v6}, Lmf/org/w3c/dom/DOMErrorHandler;->handleError(Lmf/org/w3c/dom/DOMError;)Z

    goto :goto_0
.end method

.method protected final handleBaseURI(Lmf/org/w3c/dom/Node;)V
    .locals 6

    const/4 v4, 0x1

    iget-object v3, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocumentImpl:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    if-eqz v3, :cond_0

    const/4 v0, 0x0

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v2

    if-ne v2, v4, :cond_4

    iget-boolean v3, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fNamespaceAware:Z

    if-eqz v3, :cond_1

    move-object v3, p1

    check-cast v3, Lmf/org/w3c/dom/Element;

    const-string/jumbo v4, "http://www.w3.org/XML/1998/namespace"

    const-string v5, "base"

    invoke-interface {v3, v4, v5}, Lmf/org/w3c/dom/Element;->getAttributeNodeNS(Ljava/lang/String;Ljava/lang/String;)Lmf/org/w3c/dom/Attr;

    move-result-object v3

    if-eqz v3, :cond_2

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v3, p1

    check-cast v3, Lmf/org/w3c/dom/Element;

    const-string/jumbo v4, "xml:base"

    invoke-interface {v3, v4}, Lmf/org/w3c/dom/Element;->getAttributeNode(Ljava/lang/String;)Lmf/org/w3c/dom/Attr;

    move-result-object v3

    if-nez v3, :cond_0

    :cond_2
    iget-object v3, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentNode:Lmf/org/w3c/dom/Node;

    check-cast v3, Lmf/org/apache/xerces/dom/EntityReferenceImpl;

    invoke-virtual {v3}, Lmf/org/apache/xerces/dom/EntityReferenceImpl;->getBaseURI()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v3, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocumentImpl:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    invoke-virtual {v3}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->getDocumentURI()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fNamespaceAware:Z

    if-eqz v3, :cond_3

    check-cast p1, Lmf/org/w3c/dom/Element;

    const-string/jumbo v3, "http://www.w3.org/XML/1998/namespace"

    const-string/jumbo v4, "xml:base"

    invoke-interface {p1, v3, v4, v0}, Lmf/org/w3c/dom/Element;->setAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    check-cast p1, Lmf/org/w3c/dom/Element;

    const-string/jumbo v3, "xml:base"

    invoke-interface {p1, v3, v0}, Lmf/org/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const/4 v3, 0x7

    if-ne v2, v3, :cond_0

    iget-object v3, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentNode:Lmf/org/w3c/dom/Node;

    check-cast v3, Lmf/org/apache/xerces/dom/EntityReferenceImpl;

    invoke-virtual {v3}, Lmf/org/apache/xerces/dom/EntityReferenceImpl;->getBaseURI()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v3, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fErrorHandler:Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;

    if-eqz v3, :cond_0

    new-instance v1, Lmf/org/apache/xerces/dom/DOMErrorImpl;

    invoke-direct {v1}, Lmf/org/apache/xerces/dom/DOMErrorImpl;-><init>()V

    const-string/jumbo v3, "pi-base-uri-not-preserved"

    iput-object v3, v1, Lmf/org/apache/xerces/dom/DOMErrorImpl;->fType:Ljava/lang/String;

    iput-object v0, v1, Lmf/org/apache/xerces/dom/DOMErrorImpl;->fRelatedData:Ljava/lang/Object;

    iput-short v4, v1, Lmf/org/apache/xerces/dom/DOMErrorImpl;->fSeverity:S

    iget-object v3, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fErrorHandler:Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;

    invoke-virtual {v3}, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;->getErrorHandler()Lmf/org/w3c/dom/DOMErrorHandler;

    move-result-object v3

    invoke-interface {v3, v1}, Lmf/org/w3c/dom/DOMErrorHandler;->handleError(Lmf/org/w3c/dom/DOMError;)Z

    goto :goto_0
.end method

.method public ignorableWhitespace(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    const/4 v6, 0x1

    iget-boolean v4, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fIncludeIgnorableWhitespace:Z

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fFilterReject:Z

    if-eqz v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v4, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferNodeExpansion:Z

    if-nez v4, :cond_4

    iget-object v4, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentNode:Lmf/org/w3c/dom/Node;

    invoke-interface {v4}, Lmf/org/w3c/dom/Node;->getLastChild()Lmf/org/w3c/dom/Node;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_2

    move-object v1, v0

    check-cast v1, Lmf/org/w3c/dom/Text;

    invoke-virtual {p1}, Lmf/org/apache/xerces/xni/XMLString;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Lmf/org/w3c/dom/Text;->appendData(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocument:Lmf/org/w3c/dom/Document;

    invoke-virtual {p1}, Lmf/org/apache/xerces/xni/XMLString;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lmf/org/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lmf/org/w3c/dom/Text;

    move-result-object v1

    iget-object v4, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocumentImpl:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    if-eqz v4, :cond_3

    move-object v2, v1

    check-cast v2, Lmf/org/apache/xerces/dom/TextImpl;

    invoke-virtual {v2, v6}, Lmf/org/apache/xerces/dom/TextImpl;->setIgnorableWhitespace(Z)V

    :cond_3
    iget-object v4, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentNode:Lmf/org/w3c/dom/Node;

    invoke-interface {v4, v1}, Lmf/org/w3c/dom/Node;->appendChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    goto :goto_0

    :cond_4
    iget-object v4, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    invoke-virtual {p1}, Lmf/org/apache/xerces/xni/XMLString;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v6}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->createDeferredTextNode(Ljava/lang/String;Z)I

    move-result v3

    iget-object v4, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    iget v5, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentNodeIndex:I

    invoke-virtual {v4, v5, v3}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->appendChild(II)V

    goto :goto_0
.end method

.method public ignoredCharacters(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    return-void
.end method

.method public internalEntityDecl(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v1, v0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInDTDExternalSubset:Z

    if-nez v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    const-string v2, "<!ENTITY "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "%"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    const-string v2, "% "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-object/from16 v0, p0

    iget-object v1, v0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    const/4 v2, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual/range {p3 .. p3}, Lmf/org/apache/xerces/xni/XMLString;->toString()Ljava/lang/String;

    move-result-object v15

    const/16 v1, 0x27

    invoke-virtual {v15, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_3

    const/4 v14, 0x1

    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    if-eqz v14, :cond_4

    const/16 v1, 0x27

    :goto_2
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-object/from16 v0, p0

    iget-object v1, v0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    if-eqz v14, :cond_5

    const/16 v1, 0x27

    :goto_3
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-object/from16 v0, p0

    iget-object v1, v0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    const-string v2, ">\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    const-string v1, "%"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_1
    :goto_4
    return-void

    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_3
    const/4 v14, 0x0

    goto :goto_1

    :cond_4
    const/16 v1, 0x22

    goto :goto_2

    :cond_5
    const/16 v1, 0x22

    goto :goto_3

    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocumentType:Lmf/org/w3c/dom/DocumentType;

    if-eqz v1, :cond_7

    move-object/from16 v0, p0

    iget-object v1, v0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocumentType:Lmf/org/w3c/dom/DocumentType;

    invoke-interface {v1}, Lmf/org/w3c/dom/DocumentType;->getEntities()Lmf/org/w3c/dom/NamedNodeMap;

    move-result-object v7

    move-object/from16 v0, p1

    invoke-interface {v7, v0}, Lmf/org/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lmf/org/w3c/dom/Node;

    move-result-object v8

    check-cast v8, Lmf/org/apache/xerces/dom/EntityImpl;

    if-nez v8, :cond_7

    move-object/from16 v0, p0

    iget-object v1, v0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocumentImpl:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->createEntity(Ljava/lang/String;)Lmf/org/w3c/dom/Entity;

    move-result-object v8

    check-cast v8, Lmf/org/apache/xerces/dom/EntityImpl;

    move-object/from16 v0, p0

    iget-object v1, v0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fBaseURIStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v8, v1}, Lmf/org/apache/xerces/dom/EntityImpl;->setBaseURI(Ljava/lang/String;)V

    invoke-interface {v7, v8}, Lmf/org/w3c/dom/NamedNodeMap;->setNamedItem(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    :cond_7
    move-object/from16 v0, p0

    iget v1, v0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocumentTypeIndex:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v1, v0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    move-object/from16 v0, p0

    iget v2, v0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocumentTypeIndex:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getLastChild(IZ)I

    move-result v11

    :goto_5
    const/4 v1, -0x1

    if-ne v11, v1, :cond_8

    :goto_6
    if-nez v10, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fBaseURIStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->createDeferredEntity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    move-object/from16 v0, p0

    iget-object v1, v0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    move-object/from16 v0, p0

    iget v2, v0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocumentTypeIndex:I

    invoke-virtual {v1, v2, v9}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->appendChild(II)V

    goto/16 :goto_4

    :cond_8
    move-object/from16 v0, p0

    iget-object v1, v0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    const/4 v2, 0x0

    invoke-virtual {v1, v11, v2}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getNodeType(IZ)S

    move-result v13

    const/4 v1, 0x6

    if-ne v13, v1, :cond_9

    move-object/from16 v0, p0

    iget-object v1, v0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    const/4 v2, 0x0

    invoke-virtual {v1, v11, v2}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getNodeName(IZ)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    const/4 v10, 0x1

    goto :goto_6

    :cond_9
    move-object/from16 v0, p0

    iget-object v1, v0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    const/4 v2, 0x0

    invoke-virtual {v1, v11, v2}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getRealPrevSibling(IZ)I

    move-result v11

    goto :goto_5
.end method

.method public notationDecl(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLResourceIdentifier;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    invoke-interface {p2}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->getPublicId()Ljava/lang/String;

    move-result-object v8

    invoke-interface {p2}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->getLiteralSystemId()Ljava/lang/String;

    move-result-object v1

    iget-object v9, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    if-eqz v9, :cond_1

    iget-boolean v9, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInDTDExternalSubset:Z

    if-nez v9, :cond_1

    iget-object v9, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    const-string v10, "<!NOTATION "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v9, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    invoke-virtual {v9, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eqz v8, :cond_4

    iget-object v9, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    const-string v10, " PUBLIC \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v9, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eqz v1, :cond_0

    iget-object v9, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    const-string v10, "\' \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v9, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    :goto_0
    iget-object v9, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    const-string v10, "\'>\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    iget-object v9, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocumentImpl:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    if-eqz v9, :cond_2

    iget-object v9, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocumentType:Lmf/org/w3c/dom/DocumentType;

    if-eqz v9, :cond_2

    iget-object v9, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocumentType:Lmf/org/w3c/dom/DocumentType;

    invoke-interface {v9}, Lmf/org/w3c/dom/DocumentType;->getNotations()Lmf/org/w3c/dom/NamedNodeMap;

    move-result-object v7

    invoke-interface {v7, p1}, Lmf/org/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lmf/org/w3c/dom/Node;

    move-result-object v9

    if-nez v9, :cond_2

    iget-object v9, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocumentImpl:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    invoke-virtual {v9, p1}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->createNotation(Ljava/lang/String;)Lmf/org/w3c/dom/Notation;

    move-result-object v5

    check-cast v5, Lmf/org/apache/xerces/dom/NotationImpl;

    invoke-virtual {v5, v8}, Lmf/org/apache/xerces/dom/NotationImpl;->setPublicId(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Lmf/org/apache/xerces/dom/NotationImpl;->setSystemId(Ljava/lang/String;)V

    invoke-interface {p2}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->getBaseSystemId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Lmf/org/apache/xerces/dom/NotationImpl;->setBaseURI(Ljava/lang/String;)V

    invoke-interface {v7, v5}, Lmf/org/w3c/dom/NamedNodeMap;->setNamedItem(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    :cond_2
    iget v9, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocumentTypeIndex:I

    const/4 v10, -0x1

    if-eq v9, v10, :cond_3

    const/4 v0, 0x0

    iget-object v9, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    iget v10, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocumentTypeIndex:I

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getLastChild(IZ)I

    move-result v2

    :goto_1
    const/4 v9, -0x1

    if-ne v2, v9, :cond_5

    :goto_2
    if-nez v0, :cond_3

    iget-object v9, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    invoke-interface {p2}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->getBaseSystemId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, p1, v8, v1, v10}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->createDeferredNotation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    iget-object v9, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    iget v10, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocumentTypeIndex:I

    invoke-virtual {v9, v10, v6}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->appendChild(II)V

    :cond_3
    return-void

    :cond_4
    iget-object v9, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    const-string v10, " SYSTEM \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v9, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_5
    iget-object v9, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    const/4 v10, 0x0

    invoke-virtual {v9, v2, v10}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getNodeType(IZ)S

    move-result v4

    const/16 v9, 0xc

    if-ne v4, v9, :cond_6

    iget-object v9, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    const/4 v10, 0x0

    invoke-virtual {v9, v2, v10}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getNodeName(IZ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    const/4 v0, 0x1

    goto :goto_2

    :cond_6
    iget-object v9, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    const/4 v10, 0x0

    invoke-virtual {v9, v2, v10}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getPrevSibling(IZ)I

    move-result v2

    goto :goto_1
.end method

.method public processingInstruction(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-boolean v2, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInDTD:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInDTDExternalSubset:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    const-string v3, "<?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v2, p2, Lmf/org/apache/xerces/xni/XMLString;->length:I

    if-lez v2, :cond_0

    iget-object v2, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p2, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    iget v4, p2, Lmf/org/apache/xerces/xni/XMLString;->offset:I

    iget v5, p2, Lmf/org/apache/xerces/xni/XMLString;->length:I

    invoke-virtual {v2, v3, v4, v5}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    :cond_0
    iget-object v2, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    const-string v3, "?>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-boolean v2, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferNodeExpansion:Z

    if-nez v2, :cond_3

    iget-boolean v2, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fFilterReject:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocument:Lmf/org/w3c/dom/Document;

    invoke-virtual {p2}, Lmf/org/apache/xerces/xni/XMLString;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Lmf/org/w3c/dom/Document;->createProcessingInstruction(Ljava/lang/String;Ljava/lang/String;)Lmf/org/w3c/dom/ProcessingInstruction;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->setCharacterData(Z)V

    iget-object v2, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentNode:Lmf/org/w3c/dom/Node;

    invoke-interface {v2, v1}, Lmf/org/w3c/dom/Node;->appendChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    iget-object v2, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDOMFilter:Lmf/org/w3c/dom/ls/LSParserFilter;

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInEntityRef:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDOMFilter:Lmf/org/w3c/dom/ls/LSParserFilter;

    invoke-interface {v2}, Lmf/org/w3c/dom/ls/LSParserFilter;->getWhatToShow()I

    move-result v2

    and-int/lit8 v2, v2, 0x40

    if-eqz v2, :cond_1

    iget-object v2, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDOMFilter:Lmf/org/w3c/dom/ls/LSParserFilter;

    invoke-interface {v2, v1}, Lmf/org/w3c/dom/ls/LSParserFilter;->acceptNode(Lmf/org/w3c/dom/Node;)S

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v2, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentNode:Lmf/org/w3c/dom/Node;

    invoke-interface {v2, v1}, Lmf/org/w3c/dom/Node;->removeChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    const/4 v2, 0x1

    iput-boolean v2, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fFirstChunk:Z

    goto :goto_0

    :pswitch_1
    sget-object v2, Lmf/org/apache/xerces/parsers/AbstractDOMParser$Abort;->INSTANCE:Lmf/org/apache/xerces/parsers/AbstractDOMParser$Abort;

    throw v2

    :cond_3
    iget-object v2, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    invoke-virtual {p2}, Lmf/org/apache/xerces/xni/XMLString;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->createDeferredProcessingInstruction(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    iget v3, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentNodeIndex:I

    invoke-virtual {v2, v3, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->appendChild(II)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public reset()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    const/4 v4, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-super {p0}, Lmf/org/apache/xerces/parsers/AbstractXMLDocumentParser;->reset()V

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v1, "http://apache.org/xml/features/dom/create-entity-ref-nodes"

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->getFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCreateEntityRefNodes:Z

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v1, "http://apache.org/xml/features/dom/include-ignorable-whitespace"

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->getFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fIncludeIgnorableWhitespace:Z

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v1, "http://apache.org/xml/features/dom/defer-node-expansion"

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->getFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferNodeExpansion:Z

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v1, "http://xml.org/sax/features/namespaces"

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->getFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fNamespaceAware:Z

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v1, "http://apache.org/xml/features/include-comments"

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->getFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fIncludeComments:Z

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v1, "http://apache.org/xml/features/create-cdata-nodes"

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->getFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCreateCDATANodes:Z

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v1, "http://apache.org/xml/properties/dom/document-class-name"

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->setDocumentClassName(Ljava/lang/String;)V

    iput-object v2, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocument:Lmf/org/w3c/dom/Document;

    iput-object v2, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocumentImpl:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    iput-boolean v3, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fStorePSVI:Z

    iput-object v2, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocumentType:Lmf/org/w3c/dom/DocumentType;

    iput v4, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocumentTypeIndex:I

    iput-object v2, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    iput-object v2, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentNode:Lmf/org/w3c/dom/Node;

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fStringBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->setLength(I)V

    iput-object v2, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fRoot:Lmf/org/w3c/dom/Node;

    iput-boolean v3, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInDTD:Z

    iput-boolean v3, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInDTDExternalSubset:Z

    iput-boolean v3, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInCDATASection:Z

    iput-boolean v3, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fFirstChunk:Z

    iput-object v2, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentCDATASection:Lmf/org/w3c/dom/CDATASection;

    iput v4, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentCDATASectionIndex:I

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fBaseURIStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->removeAllElements()V

    return-void
.end method

.method protected setCharacterData(Z)V
    .locals 5

    const/4 v4, 0x3

    iput-boolean p1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fFirstChunk:Z

    iget-object v2, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentNode:Lmf/org/w3c/dom/Node;

    invoke-interface {v2}, Lmf/org/w3c/dom/Node;->getLastChild()Lmf/org/w3c/dom/Node;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v2, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fStringBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    if-lez v2, :cond_1

    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v2

    if-ne v2, v4, :cond_0

    iget-object v2, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocumentImpl:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    if-eqz v2, :cond_3

    move-object v2, v0

    check-cast v2, Lmf/org/apache/xerces/dom/TextImpl;

    iget-object v3, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fStringBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lmf/org/apache/xerces/dom/TextImpl;->replaceData(Ljava/lang/String;)V

    :cond_0
    :goto_0
    iget-object v2, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fStringBuffer:Ljava/lang/StringBuffer;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->setLength(I)V

    :cond_1
    iget-object v2, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDOMFilter:Lmf/org/w3c/dom/ls/LSParserFilter;

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInEntityRef:Z

    if-nez v2, :cond_2

    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v2

    if-ne v2, v4, :cond_2

    iget-object v2, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDOMFilter:Lmf/org/w3c/dom/ls/LSParserFilter;

    invoke-interface {v2}, Lmf/org/w3c/dom/ls/LSParserFilter;->getWhatToShow()I

    move-result v2

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_2

    iget-object v2, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDOMFilter:Lmf/org/w3c/dom/ls/LSParserFilter;

    invoke-interface {v2, v0}, Lmf/org/w3c/dom/ls/LSParserFilter;->acceptNode(Lmf/org/w3c/dom/Node;)S

    move-result v1

    packed-switch v1, :pswitch_data_0

    :cond_2
    :goto_1
    return-void

    :cond_3
    move-object v2, v0

    check-cast v2, Lmf/org/w3c/dom/Text;

    iget-object v3, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fStringBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lmf/org/w3c/dom/Text;->setData(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_0
    sget-object v2, Lmf/org/apache/xerces/parsers/AbstractDOMParser$Abort;->INSTANCE:Lmf/org/apache/xerces/parsers/AbstractDOMParser$Abort;

    throw v2

    :pswitch_1
    iget-object v2, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentNode:Lmf/org/w3c/dom/Node;

    invoke-interface {v2, v0}, Lmf/org/w3c/dom/Node;->removeChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected setDocumentClassName(Ljava/lang/String;)V
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    if-nez p1, :cond_0

    const-string/jumbo p1, "mf.org.apache.xerces.dom.DocumentImpl"

    :cond_0
    const-string/jumbo v2, "mf.org.apache.xerces.dom.DocumentImpl"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "mf.org.apache.xerces.dom.PSVIDocumentImpl"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    :try_start_0
    invoke-static {}, Lmf/org/apache/xerces/parsers/ObjectFactory;->findClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {p1, v2, v3}, Lmf/org/apache/xerces/parsers/ObjectFactory;->findProviderClass(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Class;

    move-result-object v0

    const-class v2, Lmf/org/w3c/dom/Document;

    invoke-virtual {v2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "http://www.w3.org/dom/DOMTR"

    const-string v4, "InvalidDocumentClassName"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-static {v3, v4, v5}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "http://www.w3.org/dom/DOMTR"

    const-string v4, "MissingDocumentClassName"

    new-array v5, v8, [Ljava/lang/Object;

    aput-object p1, v5, v7

    invoke-static {v3, v4, v5}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    iput-object p1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocumentClassName:Ljava/lang/String;

    const-string/jumbo v2, "mf.org.apache.xerces.dom.DocumentImpl"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iput-boolean v7, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferNodeExpansion:Z

    :cond_2
    return-void
.end method

.method public setLocale(Ljava/util/Locale;)V
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    invoke-interface {v0, p1}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setLocale(Ljava/util/Locale;)V

    return-void
.end method

.method public startAttlist(Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    return-void
.end method

.method public startCDATA(Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInCDATASection:Z

    iget-boolean v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferNodeExpansion:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fFilterReject:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCreateCDATANodes:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->setCharacterData(Z)V

    goto :goto_0
.end method

.method public startConditional(SLmf/org/apache/xerces/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    return-void
.end method

.method public startDTD(Lmf/org/apache/xerces/xni/XMLLocator;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInDTD:Z

    if-eqz p1, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fBaseURIStack:Ljava/util/Stack;

    invoke-interface {p1}, Lmf/org/apache/xerces/xni/XMLLocator;->getBaseSystemId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-boolean v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferNodeExpansion:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocumentImpl:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    if-eqz v0, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x400

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    iput-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    :cond_2
    return-void
.end method

.method public startDocument(Lmf/org/apache/xerces/xni/XMLLocator;Ljava/lang/String;Lmf/org/apache/xerces/xni/NamespaceContext;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    const/4 v10, 0x0

    const/4 v8, 0x1

    iput-object p1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fLocator:Lmf/org/apache/xerces/xni/XMLLocator;

    iget-boolean v5, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferNodeExpansion:Z

    if-nez v5, :cond_4

    iget-object v5, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocumentClassName:Ljava/lang/String;

    const-string/jumbo v6, "mf.org.apache.xerces.dom.DocumentImpl"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    new-instance v5, Lmf/org/apache/xerces/dom/DocumentImpl;

    invoke-direct {v5}, Lmf/org/apache/xerces/dom/DocumentImpl;-><init>()V

    iput-object v5, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocument:Lmf/org/w3c/dom/Document;

    iget-object v5, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocument:Lmf/org/w3c/dom/Document;

    check-cast v5, Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    iput-object v5, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocumentImpl:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    iget-object v5, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocumentImpl:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    invoke-virtual {v5, v10}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->setStrictErrorChecking(Z)V

    iget-object v5, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocumentImpl:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    invoke-virtual {v5, p2}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->setInputEncoding(Ljava/lang/String;)V

    iget-object v5, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocumentImpl:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    invoke-interface {p1}, Lmf/org/apache/xerces/xni/XMLLocator;->getExpandedSystemId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->setDocumentURI(Ljava/lang/String;)V

    :cond_0
    :goto_0
    iget-object v5, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocument:Lmf/org/w3c/dom/Document;

    iput-object v5, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentNode:Lmf/org/w3c/dom/Node;

    :goto_1
    return-void

    :cond_1
    iget-object v5, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocumentClassName:Ljava/lang/String;

    const-string/jumbo v6, "mf.org.apache.xerces.dom.PSVIDocumentImpl"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    new-instance v5, Lmf/org/apache/xerces/dom/PSVIDocumentImpl;

    invoke-direct {v5}, Lmf/org/apache/xerces/dom/PSVIDocumentImpl;-><init>()V

    iput-object v5, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocument:Lmf/org/w3c/dom/Document;

    iget-object v5, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocument:Lmf/org/w3c/dom/Document;

    check-cast v5, Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    iput-object v5, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocumentImpl:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    iput-boolean v8, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fStorePSVI:Z

    iget-object v5, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocumentImpl:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    invoke-virtual {v5, v10}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->setStrictErrorChecking(Z)V

    iget-object v5, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocumentImpl:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    invoke-virtual {v5, p2}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->setInputEncoding(Ljava/lang/String;)V

    iget-object v5, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocumentImpl:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    invoke-interface {p1}, Lmf/org/apache/xerces/xni/XMLLocator;->getExpandedSystemId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->setDocumentURI(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    :try_start_0
    invoke-static {}, Lmf/org/apache/xerces/parsers/ObjectFactory;->findClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    iget-object v5, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocumentClassName:Ljava/lang/String;

    const/4 v6, 0x1

    invoke-static {v5, v0, v6}, Lmf/org/apache/xerces/parsers/ObjectFactory;->findProviderClass(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lmf/org/w3c/dom/Document;

    iput-object v5, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocument:Lmf/org/w3c/dom/Document;

    const-string/jumbo v5, "mf.org.apache.xerces.dom.CoreDocumentImpl"

    const/4 v6, 0x1

    invoke-static {v5, v0, v6}, Lmf/org/apache/xerces/parsers/ObjectFactory;->findProviderClass(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocument:Lmf/org/w3c/dom/Document;

    check-cast v5, Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    iput-object v5, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocumentImpl:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    const-string/jumbo v5, "mf.org.apache.xerces.dom.PSVIDocumentImpl"

    const/4 v6, 0x1

    invoke-static {v5, v0, v6}, Lmf/org/apache/xerces/parsers/ObjectFactory;->findProviderClass(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v5, 0x1

    iput-boolean v5, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fStorePSVI:Z

    :cond_3
    iget-object v5, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocumentImpl:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->setStrictErrorChecking(Z)V

    iget-object v5, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocumentImpl:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    invoke-virtual {v5, p2}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->setInputEncoding(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    iget-object v5, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocumentImpl:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    invoke-interface {p1}, Lmf/org/apache/xerces/xni/XMLLocator;->getExpandedSystemId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->setDocumentURI(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_0

    :catch_0
    move-exception v5

    goto/16 :goto_0

    :catch_1
    move-exception v3

    new-instance v5, Ljava/lang/RuntimeException;

    const-string/jumbo v6, "http://www.w3.org/dom/DOMTR"

    const-string v7, "CannotCreateDocumentClass"

    new-array v8, v8, [Ljava/lang/Object;

    iget-object v9, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocumentClassName:Ljava/lang/String;

    aput-object v9, v8, v10

    invoke-static {v6, v7, v8}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_4
    new-instance v5, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    iget-boolean v6, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fNamespaceAware:Z

    invoke-direct {v5, v6}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;-><init>(Z)V

    iput-object v5, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    iget-object v5, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    iput-object v5, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocument:Lmf/org/w3c/dom/Document;

    iget-object v5, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    invoke-virtual {v5}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->createDeferredDocument()I

    move-result v5

    iput v5, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocumentIndex:I

    iget-object v5, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    invoke-virtual {v5, p2}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->setInputEncoding(Ljava/lang/String;)V

    iget-object v5, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    invoke-interface {p1}, Lmf/org/apache/xerces/xni/XMLLocator;->getExpandedSystemId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->setDocumentURI(Ljava/lang/String;)V

    iget v5, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocumentIndex:I

    iput v5, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentNodeIndex:I

    goto/16 :goto_1
.end method

.method public startElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferNodeExpansion:Z

    if-nez v2, :cond_f

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fFilterReject:Z

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget v2, v0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fRejectedElementDepth:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fRejectedElementDepth:I

    :goto_0
    return-void

    :cond_0
    invoke-virtual/range {p0 .. p1}, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->createElementNode(Lmf/org/apache/xerces/xni/QName;)Lmf/org/w3c/dom/Element;

    move-result-object v3

    invoke-interface/range {p2 .. p2}, Lmf/org/apache/xerces/xni/XMLAttributes;->getLength()I

    move-result v11

    const/16 v19, 0x0

    const/16 v17, 0x0

    :goto_1
    move/from16 v0, v17

    if-lt v0, v11, :cond_4

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->setCharacterData(Z)V

    if-eqz p3, :cond_2

    const-string v2, "ELEMENT_PSVI"

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Lmf/org/apache/xerces/xni/Augmentations;->getItem(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lmf/org/apache/xerces/xs/ElementPSVI;

    if-eqz v16, :cond_2

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fNamespaceAware:Z

    if-eqz v2, :cond_2

    invoke-interface/range {v16 .. v16}, Lmf/org/apache/xerces/xs/ElementPSVI;->getMemberTypeDefinition()Lmf/org/apache/xerces/xs/XSSimpleTypeDefinition;

    move-result-object v21

    if-nez v21, :cond_1

    invoke-interface/range {v16 .. v16}, Lmf/org/apache/xerces/xs/ElementPSVI;->getTypeDefinition()Lmf/org/apache/xerces/xs/XSTypeDefinition;

    move-result-object v21

    :cond_1
    move-object v2, v3

    check-cast v2, Lmf/org/apache/xerces/dom/ElementNSImpl;

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Lmf/org/apache/xerces/dom/ElementNSImpl;->setType(Lmf/org/apache/xerces/xs/XSTypeDefinition;)V

    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDOMFilter:Lmf/org/w3c/dom/ls/LSParserFilter;

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInEntityRef:Z

    if-nez v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fRoot:Lmf/org/w3c/dom/Node;

    if-nez v2, :cond_e

    move-object/from16 v0, p0

    iput-object v3, v0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fRoot:Lmf/org/w3c/dom/Node;

    :cond_3
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentNode:Lmf/org/w3c/dom/Node;

    invoke-interface {v2, v3}, Lmf/org/w3c/dom/Node;->appendChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    move-object/from16 v0, p0

    iput-object v3, v0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentNode:Lmf/org/w3c/dom/Node;

    goto :goto_0

    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fAttrQName:Lmf/org/apache/xerces/xni/QName;

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-interface {v0, v1, v2}, Lmf/org/apache/xerces/xni/XMLAttributes;->getName(ILmf/org/apache/xerces/xni/QName;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fAttrQName:Lmf/org/apache/xerces/xni/QName;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->createAttrNode(Lmf/org/apache/xerces/xni/QName;)Lmf/org/w3c/dom/Attr;

    move-result-object v10

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/xni/XMLAttributes;->getValue(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/xni/XMLAttributes;->getAugmentations(I)Lmf/org/apache/xerces/xni/Augmentations;

    move-result-object v2

    const-string v4, "ATTRIBUTE_PSVI"

    invoke-interface {v2, v4}, Lmf/org/apache/xerces/xni/Augmentations;->getItem(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lmf/org/apache/xerces/xs/AttributePSVI;

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fStorePSVI:Z

    if-eqz v2, :cond_5

    if-eqz v13, :cond_5

    move-object v2, v10

    check-cast v2, Lmf/org/apache/xerces/dom/PSVIAttrNSImpl;

    invoke-virtual {v2, v13}, Lmf/org/apache/xerces/dom/PSVIAttrNSImpl;->setPSVI(Lmf/org/apache/xerces/xs/AttributePSVI;)V

    :cond_5
    invoke-interface {v10, v14}, Lmf/org/w3c/dom/Attr;->setValue(Ljava/lang/String;)V

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/xni/XMLAttributes;->isSpecified(I)Z

    move-result v20

    if-nez v20, :cond_a

    if-nez v19, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fAttrQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v2, v2, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-eqz v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fAttrQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v2, v2, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    sget-object v4, Lmf/org/apache/xerces/xni/NamespaceContext;->XMLNS_URI:Ljava/lang/String;

    if-eq v2, v4, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fAttrQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v2, v2, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    if-nez v2, :cond_a

    :cond_6
    invoke-interface {v3, v10}, Lmf/org/w3c/dom/Element;->setAttributeNodeNS(Lmf/org/w3c/dom/Attr;)Lmf/org/w3c/dom/Attr;

    const/16 v19, 0x1

    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocumentImpl:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    if-eqz v2, :cond_9

    move-object v12, v10

    check-cast v12, Lmf/org/apache/xerces/dom/AttrImpl;

    const/16 v21, 0x0

    const/4 v8, 0x0

    if-eqz v13, :cond_c

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fNamespaceAware:Z

    if-eqz v2, :cond_c

    invoke-interface {v13}, Lmf/org/apache/xerces/xs/AttributePSVI;->getMemberTypeDefinition()Lmf/org/apache/xerces/xs/XSSimpleTypeDefinition;

    move-result-object v21

    if-nez v21, :cond_b

    invoke-interface {v13}, Lmf/org/apache/xerces/xs/AttributePSVI;->getTypeDefinition()Lmf/org/apache/xerces/xs/XSTypeDefinition;

    move-result-object v21

    if-eqz v21, :cond_7

    move-object/from16 v2, v21

    check-cast v2, Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    invoke-interface {v2}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->isIDType()Z

    move-result v8

    move-object/from16 v0, v21

    invoke-virtual {v12, v0}, Lmf/org/apache/xerces/dom/AttrImpl;->setType(Ljava/lang/Object;)V

    :cond_7
    :goto_4
    if-eqz v8, :cond_8

    move-object v2, v3

    check-cast v2, Lmf/org/apache/xerces/dom/ElementImpl;

    const/4 v4, 0x1

    invoke-virtual {v2, v10, v4}, Lmf/org/apache/xerces/dom/ElementImpl;->setIdAttributeNode(Lmf/org/w3c/dom/Attr;Z)V

    :cond_8
    move/from16 v0, v20

    invoke-virtual {v12, v0}, Lmf/org/apache/xerces/dom/AttrImpl;->setSpecified(Z)V

    :cond_9
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_1

    :cond_a
    invoke-interface {v3, v10}, Lmf/org/w3c/dom/Element;->setAttributeNode(Lmf/org/w3c/dom/Attr;)Lmf/org/w3c/dom/Attr;

    goto :goto_3

    :cond_b
    move-object/from16 v2, v21

    check-cast v2, Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    invoke-interface {v2}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->isIDType()Z

    move-result v8

    move-object/from16 v0, v21

    invoke-virtual {v12, v0}, Lmf/org/apache/xerces/dom/AttrImpl;->setType(Ljava/lang/Object;)V

    goto :goto_4

    :cond_c
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/xni/XMLAttributes;->getAugmentations(I)Lmf/org/apache/xerces/xni/Augmentations;

    move-result-object v4

    const-string v5, "ATTRIBUTE_DECLARED"

    invoke-interface {v4, v5}, Lmf/org/apache/xerces/xni/Augmentations;->getItem(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_d

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/xni/XMLAttributes;->getType(I)Ljava/lang/String;

    move-result-object v21

    const-string v2, "ID"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    :cond_d
    move-object/from16 v0, v21

    invoke-virtual {v12, v0}, Lmf/org/apache/xerces/dom/AttrImpl;->setType(Ljava/lang/Object;)V

    goto :goto_4

    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDOMFilter:Lmf/org/w3c/dom/ls/LSParserFilter;

    invoke-interface {v2, v3}, Lmf/org/w3c/dom/ls/LSParserFilter;->startElement(Lmf/org/w3c/dom/Element;)S

    move-result v15

    packed-switch v15, :pswitch_data_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fSkippedElemStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fSkippedElemStack:Ljava/util/Stack;

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v2, v4}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    :pswitch_0
    sget-object v2, Lmf/org/apache/xerces/parsers/AbstractDOMParser$Abort;->INSTANCE:Lmf/org/apache/xerces/parsers/AbstractDOMParser$Abort;

    throw v2

    :pswitch_1
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fFilterReject:Z

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fRejectedElementDepth:I

    goto/16 :goto_0

    :pswitch_2
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fFirstChunk:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fSkippedElemStack:Ljava/util/Stack;

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2, v4}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_f
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fNamespaceAware:Z

    if-eqz v2, :cond_10

    move-object/from16 v0, p1

    iget-object v2, v0, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    :goto_5
    move-object/from16 v0, p1

    iget-object v5, v0, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    invoke-virtual {v4, v2, v5}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->createDeferredElement(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const/16 v21, 0x0

    invoke-interface/range {p2 .. p2}, Lmf/org/apache/xerces/xni/XMLAttributes;->getLength()I

    move-result v11

    add-int/lit8 v17, v11, -0x1

    :goto_6
    if-gez v17, :cond_11

    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    move-object/from16 v0, p0

    iget v4, v0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentNodeIndex:I

    invoke-virtual {v2, v4, v3}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->appendChild(II)V

    move-object/from16 v0, p0

    iput v3, v0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentNodeIndex:I

    goto/16 :goto_0

    :cond_10
    const/4 v2, 0x0

    goto :goto_5

    :cond_11
    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/xni/XMLAttributes;->getAugmentations(I)Lmf/org/apache/xerces/xni/Augmentations;

    move-result-object v2

    const-string v4, "ATTRIBUTE_PSVI"

    invoke-interface {v2, v4}, Lmf/org/apache/xerces/xni/Augmentations;->getItem(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lmf/org/apache/xerces/xs/AttributePSVI;

    const/4 v8, 0x0

    if-eqz v13, :cond_13

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fNamespaceAware:Z

    if-eqz v2, :cond_13

    invoke-interface {v13}, Lmf/org/apache/xerces/xs/AttributePSVI;->getMemberTypeDefinition()Lmf/org/apache/xerces/xs/XSSimpleTypeDefinition;

    move-result-object v21

    if-nez v21, :cond_12

    invoke-interface {v13}, Lmf/org/apache/xerces/xs/AttributePSVI;->getTypeDefinition()Lmf/org/apache/xerces/xs/XSTypeDefinition;

    move-result-object v21

    if-eqz v21, :cond_15

    move-object/from16 v2, v21

    check-cast v2, Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    invoke-interface {v2}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->isIDType()Z

    move-result v8

    move-object/from16 v9, v21

    :goto_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/xni/XMLAttributes;->getQName(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/xni/XMLAttributes;->getURI(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/xni/XMLAttributes;->getValue(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/xni/XMLAttributes;->isSpecified(I)Z

    move-result v7

    invoke-virtual/range {v2 .. v9}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->setDeferredAttribute(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/Object;)I

    add-int/lit8 v17, v17, -0x1

    move-object/from16 v21, v9

    goto :goto_6

    :cond_12
    move-object/from16 v2, v21

    check-cast v2, Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    invoke-interface {v2}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->isIDType()Z

    move-result v8

    move-object/from16 v9, v21

    goto :goto_7

    :cond_13
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/xni/XMLAttributes;->getAugmentations(I)Lmf/org/apache/xerces/xni/Augmentations;

    move-result-object v4

    const-string v5, "ATTRIBUTE_DECLARED"

    invoke-interface {v4, v5}, Lmf/org/apache/xerces/xni/Augmentations;->getItem(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_14

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/xni/XMLAttributes;->getType(I)Ljava/lang/String;

    move-result-object v21

    const-string v2, "ID"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    move-object/from16 v9, v21

    goto :goto_7

    :cond_14
    move-object/from16 v9, v21

    goto :goto_7

    :cond_15
    move-object/from16 v9, v21

    goto :goto_7

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public startExternalSubset(Lmf/org/apache/xerces/xni/XMLResourceIdentifier;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fBaseURIStack:Ljava/util/Stack;

    invoke-interface {p1}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->getBaseSystemId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInDTDExternalSubset:Z

    return-void
.end method

.method public startGeneralEntity(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLResourceIdentifier;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    const/4 v7, 0x1

    const/4 v9, -0x1

    const/4 v8, 0x0

    iget-boolean v6, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferNodeExpansion:Z

    if-nez v6, :cond_3

    iget-boolean v6, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fFilterReject:Z

    if-eqz v6, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, v7}, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->setCharacterData(Z)V

    iget-object v6, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocument:Lmf/org/w3c/dom/Document;

    invoke-interface {v6, p1}, Lmf/org/w3c/dom/Document;->createEntityReference(Ljava/lang/String;)Lmf/org/w3c/dom/EntityReference;

    move-result-object v1

    iget-object v6, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocumentImpl:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    if-eqz v6, :cond_2

    move-object v2, v1

    check-cast v2, Lmf/org/apache/xerces/dom/EntityReferenceImpl;

    invoke-interface {p2}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->getExpandedSystemId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lmf/org/apache/xerces/dom/EntityReferenceImpl;->setBaseURI(Ljava/lang/String;)V

    iget-object v6, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocumentType:Lmf/org/w3c/dom/DocumentType;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocumentType:Lmf/org/w3c/dom/DocumentType;

    invoke-interface {v6}, Lmf/org/w3c/dom/DocumentType;->getEntities()Lmf/org/w3c/dom/NamedNodeMap;

    move-result-object v0

    invoke-interface {v0, p1}, Lmf/org/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lmf/org/w3c/dom/Node;

    move-result-object v6

    check-cast v6, Lmf/org/apache/xerces/dom/EntityImpl;

    iput-object v6, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentEntityDecl:Lmf/org/apache/xerces/dom/EntityImpl;

    iget-object v6, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentEntityDecl:Lmf/org/apache/xerces/dom/EntityImpl;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentEntityDecl:Lmf/org/apache/xerces/dom/EntityImpl;

    invoke-virtual {v6, p3}, Lmf/org/apache/xerces/dom/EntityImpl;->setInputEncoding(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v2, v8}, Lmf/org/apache/xerces/dom/EntityReferenceImpl;->needsSyncChildren(Z)V

    :cond_2
    iput-boolean v7, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInEntityRef:Z

    iget-object v6, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentNode:Lmf/org/w3c/dom/Node;

    invoke-interface {v6, v1}, Lmf/org/w3c/dom/Node;->appendChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    iput-object v1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentNode:Lmf/org/w3c/dom/Node;

    goto :goto_0

    :cond_3
    iget-object v6, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    invoke-interface {p2}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->getExpandedSystemId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, p1, v7}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->createDeferredEntityReference(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iget v6, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocumentTypeIndex:I

    if-eq v6, v9, :cond_4

    iget-object v6, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    iget v7, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocumentTypeIndex:I

    invoke-virtual {v6, v7, v8}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getLastChild(IZ)I

    move-result v3

    :goto_1
    if-ne v3, v9, :cond_5

    :cond_4
    :goto_2
    iget-object v6, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    iget v7, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentNodeIndex:I

    invoke-virtual {v6, v7, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->appendChild(II)V

    iput v1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentNodeIndex:I

    goto :goto_0

    :cond_5
    iget-object v6, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    invoke-virtual {v6, v3, v8}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getNodeType(IZ)S

    move-result v5

    const/4 v6, 0x6

    if-ne v5, v6, :cond_6

    iget-object v6, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    invoke-virtual {v6, v3, v8}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getNodeName(IZ)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    iput v3, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredEntityDecl:I

    iget-object v6, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    invoke-virtual {v6, v3, p3}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->setInputEncoding(ILjava/lang/String;)V

    goto :goto_2

    :cond_6
    iget-object v6, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    invoke-virtual {v6, v3, v8}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getRealPrevSibling(IZ)I

    move-result v3

    goto :goto_1
.end method

.method public startParameterEntity(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLResourceIdentifier;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    if-eqz p4, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInDTDExternalSubset:Z

    if-nez v0, :cond_0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v1, "ENTITY_SKIPPED"

    invoke-interface {p4, v1}, Lmf/org/apache/xerces/xni/Augmentations;->getItem(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ";\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fBaseURIStack:Ljava/util/Stack;

    invoke-interface {p2}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->getExpandedSystemId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public textDecl(Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-boolean v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInDTD:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferNodeExpansion:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentEntityDecl:Lmf/org/apache/xerces/dom/EntityImpl;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fFilterReject:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentEntityDecl:Lmf/org/apache/xerces/dom/EntityImpl;

    invoke-virtual {v0, p2}, Lmf/org/apache/xerces/dom/EntityImpl;->setXmlEncoding(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fCurrentEntityDecl:Lmf/org/apache/xerces/dom/EntityImpl;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/dom/EntityImpl;->setXmlVersion(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredEntityDecl:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    iget v1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredEntityDecl:I

    invoke-virtual {v0, v1, p1, p2}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->setEntityInfo(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public unparsedEntityDecl(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLResourceIdentifier;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    invoke-interface/range {p2 .. p2}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->getPublicId()Ljava/lang/String;

    move-result-object v3

    invoke-interface/range {p2 .. p2}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->getLiteralSystemId()Ljava/lang/String;

    move-result-object v4

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInDTDExternalSubset:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    const-string v2, "<!ENTITY "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    if-eqz v3, :cond_4

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    const-string v2, "PUBLIC \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eqz v4, :cond_0

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    const-string v2, "\' \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    :goto_0
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    const-string v2, "\' NDATA "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    move-object/from16 v0, p3

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    const-string v2, ">\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocumentType:Lmf/org/w3c/dom/DocumentType;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocumentType:Lmf/org/w3c/dom/DocumentType;

    invoke-interface {v1}, Lmf/org/w3c/dom/DocumentType;->getEntities()Lmf/org/w3c/dom/NamedNodeMap;

    move-result-object v7

    invoke-interface {v7, p1}, Lmf/org/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lmf/org/w3c/dom/Node;

    move-result-object v8

    check-cast v8, Lmf/org/apache/xerces/dom/EntityImpl;

    if-nez v8, :cond_2

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocumentImpl:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    invoke-virtual {v1, p1}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->createEntity(Ljava/lang/String;)Lmf/org/w3c/dom/Entity;

    move-result-object v8

    check-cast v8, Lmf/org/apache/xerces/dom/EntityImpl;

    invoke-virtual {v8, v3}, Lmf/org/apache/xerces/dom/EntityImpl;->setPublicId(Ljava/lang/String;)V

    invoke-virtual {v8, v4}, Lmf/org/apache/xerces/dom/EntityImpl;->setSystemId(Ljava/lang/String;)V

    move-object/from16 v0, p3

    invoke-virtual {v8, v0}, Lmf/org/apache/xerces/dom/EntityImpl;->setNotationName(Ljava/lang/String;)V

    invoke-interface/range {p2 .. p2}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->getBaseSystemId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Lmf/org/apache/xerces/dom/EntityImpl;->setBaseURI(Ljava/lang/String;)V

    invoke-interface {v7, v8}, Lmf/org/w3c/dom/NamedNodeMap;->setNamedItem(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    :cond_2
    iget v1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocumentTypeIndex:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3

    const/4 v10, 0x0

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    iget v2, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocumentTypeIndex:I

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v5}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getLastChild(IZ)I

    move-result v11

    :goto_1
    const/4 v1, -0x1

    if-ne v11, v1, :cond_5

    :goto_2
    if-nez v10, :cond_3

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    invoke-interface/range {p2 .. p2}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->getBaseSystemId()Ljava/lang/String;

    move-result-object v6

    move-object v2, p1

    move-object/from16 v5, p3

    invoke-virtual/range {v1 .. v6}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->createDeferredEntity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    iget v2, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocumentTypeIndex:I

    invoke-virtual {v1, v2, v9}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->appendChild(II)V

    :cond_3
    return-void

    :cond_4
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    const-string v2, "SYSTEM \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    const/4 v2, 0x0

    invoke-virtual {v1, v11, v2}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getNodeType(IZ)S

    move-result v13

    const/4 v1, 0x6

    if-ne v13, v1, :cond_6

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    const/4 v2, 0x0

    invoke-virtual {v1, v11, v2}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getNodeName(IZ)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v10, 0x1

    goto :goto_2

    :cond_6
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    const/4 v2, 0x0

    invoke-virtual {v1, v11, v2}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getRealPrevSibling(IZ)I

    move-result v11

    goto :goto_1
.end method

.method public xmlDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-boolean v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferNodeExpansion:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocumentImpl:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocumentImpl:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->setXmlVersion(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocumentImpl:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    invoke-virtual {v0, p2}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->setXmlEncoding(Ljava/lang/String;)V

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDocumentImpl:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    const-string/jumbo v1, "yes"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->setXmlStandalone(Z)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    if-eqz p1, :cond_3

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->setXmlVersion(Ljava/lang/String;)V

    :cond_3
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    invoke-virtual {v0, p2}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->setXmlEncoding(Ljava/lang/String;)V

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    const-string/jumbo v1, "yes"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->setXmlStandalone(Z)V

    goto :goto_0
.end method
