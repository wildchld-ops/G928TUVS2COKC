.class public Lmf/org/apache/xerces/dom/CoreDocumentImpl;
.super Lmf/org/apache/xerces/dom/ParentNode;
.source "CoreDocumentImpl.java"

# interfaces
.implements Lmf/org/w3c/dom/Document;


# static fields
.field private static final kidOK:[I

.field static final serialVersionUID:J


# instance fields
.field protected actualEncoding:Ljava/lang/String;

.field protected allowGrammarAccess:Z

.field protected changes:I

.field protected docElement:Lmf/org/apache/xerces/dom/ElementImpl;

.field protected docType:Lmf/org/apache/xerces/dom/DocumentTypeImpl;

.field private documentNumber:I

.field transient domNormalizer:Lmf/org/apache/xerces/dom/DOMNormalizer;

.field protected encoding:Ljava/lang/String;

.field protected errorChecking:Z

.field transient fConfiguration:Lmf/org/apache/xerces/dom/DOMConfigurationImpl;

.field protected fDocumentURI:Ljava/lang/String;

.field transient fFreeNLCache:Lmf/org/apache/xerces/dom/NodeListCache;

.field transient fXPathEvaluator:Ljava/lang/Object;

.field protected identifiers:Ljava/util/Hashtable;

.field private nodeCounter:I

.field private nodeTable:Ljava/util/Map;

.field protected standalone:Z

.field protected userData:Ljava/util/Map;

.field protected version:Ljava/lang/String;

.field private xml11Version:Z

.field protected xmlVersionChanged:Z


# direct methods
.method static constructor <clinit>()V
    .locals 13

    const/16 v0, 0xd

    new-array v0, v0, [I

    sput-object v0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->kidOK:[I

    sget-object v0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->kidOK:[I

    const/16 v1, 0x9

    const/16 v2, 0x582

    aput v2, v0, v1

    sget-object v0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->kidOK:[I

    const/16 v1, 0xb

    sget-object v2, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->kidOK:[I

    const/4 v3, 0x6

    sget-object v4, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->kidOK:[I

    const/4 v5, 0x5

    sget-object v6, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->kidOK:[I

    const/4 v7, 0x1

    const/16 v8, 0x1ba

    aput v8, v6, v7

    aput v8, v4, v5

    aput v8, v2, v3

    aput v8, v0, v1

    sget-object v0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->kidOK:[I

    const/4 v1, 0x2

    const/16 v2, 0x28

    aput v2, v0, v1

    sget-object v0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->kidOK:[I

    const/16 v1, 0xa

    sget-object v2, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->kidOK:[I

    const/4 v3, 0x7

    sget-object v4, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->kidOK:[I

    const/16 v5, 0x8

    sget-object v6, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->kidOK:[I

    const/4 v7, 0x3

    sget-object v8, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->kidOK:[I

    const/4 v9, 0x4

    sget-object v10, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->kidOK:[I

    const/16 v11, 0xc

    const/4 v12, 0x0

    aput v12, v10, v11

    aput v12, v8, v9

    aput v12, v6, v7

    aput v12, v4, v5

    aput v12, v2, v3

    aput v12, v0, v1

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Lmf/org/w3c/dom/DocumentType;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;-><init>(Lmf/org/w3c/dom/DocumentType;Z)V

    return-void
.end method

.method public constructor <init>(Lmf/org/w3c/dom/DocumentType;Z)V
    .locals 7

    invoke-direct {p0, p2}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;-><init>(Z)V

    if-eqz p1, :cond_0

    :try_start_0
    move-object v0, p1

    check-cast v0, Lmf/org/apache/xerces/dom/DocumentTypeImpl;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    iput-object p0, v1, Lmf/org/apache/xerces/dom/DocumentTypeImpl;->ownerDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->appendChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    :cond_0
    return-void

    :catch_0
    move-exception v2

    const-string/jumbo v4, "http://www.w3.org/dom/DOMTR"

    const-string v5, "WRONG_DOCUMENT_ERR"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lmf/org/w3c/dom/DOMException;

    const/4 v5, 0x4

    invoke-direct {v4, v5, v3}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v4
.end method

.method public constructor <init>(Z)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0}, Lmf/org/apache/xerces/dom/ParentNode;-><init>(Lmf/org/apache/xerces/dom/CoreDocumentImpl;)V

    iput-object v0, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->domNormalizer:Lmf/org/apache/xerces/dom/DOMNormalizer;

    iput-object v0, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->fConfiguration:Lmf/org/apache/xerces/dom/DOMConfigurationImpl;

    iput-object v0, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->fXPathEvaluator:Ljava/lang/Object;

    iput v1, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->changes:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->errorChecking:Z

    iput-boolean v1, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->xmlVersionChanged:Z

    iput v1, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->documentNumber:I

    iput v1, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->nodeCounter:I

    iput-boolean v1, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->xml11Version:Z

    iput-object p0, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->ownerDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    iput-boolean p1, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->allowGrammarAccess:Z

    return-void
.end method

.method private importNode(Lmf/org/w3c/dom/Node;ZZLjava/util/HashMap;)Lmf/org/w3c/dom/Node;
    .locals 31
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    const/16 v17, 0x0

    const/16 v27, 0x0

    move-object/from16 v0, p1

    instance-of v0, v0, Lmf/org/apache/xerces/dom/NodeImpl;

    move/from16 v28, v0

    if-eqz v28, :cond_0

    move-object/from16 v28, p1

    check-cast v28, Lmf/org/apache/xerces/dom/NodeImpl;

    invoke-virtual/range {v28 .. v28}, Lmf/org/apache/xerces/dom/NodeImpl;->getUserDataRecord()Ljava/util/Hashtable;

    move-result-object v27

    :cond_0
    invoke-interface/range {p1 .. p1}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v26

    packed-switch v26, :pswitch_data_0

    :pswitch_0
    const-string/jumbo v28, "http://www.w3.org/dom/DOMTR"

    const-string v29, "NOT_SUPPORTED_ERR"

    const/16 v30, 0x0

    invoke-static/range {v28 .. v30}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    new-instance v28, Lmf/org/w3c/dom/DOMException;

    const/16 v29, 0x9

    move-object/from16 v0, v28

    move/from16 v1, v29

    invoke-direct {v0, v1, v11}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v28

    :pswitch_1
    invoke-interface/range {p1 .. p1}, Lmf/org/w3c/dom/Node;->getOwnerDocument()Lmf/org/w3c/dom/Document;

    move-result-object v28

    invoke-interface/range {v28 .. v28}, Lmf/org/w3c/dom/Document;->getImplementation()Lmf/org/w3c/dom/DOMImplementation;

    move-result-object v28

    const-string v29, "XML"

    const-string v30, "2.0"

    invoke-interface/range {v28 .. v30}, Lmf/org/w3c/dom/DOMImplementation;->hasFeature(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface/range {p1 .. p1}, Lmf/org/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v28

    if-nez v28, :cond_8

    :cond_1
    invoke-interface/range {p1 .. p1}, Lmf/org/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->createElement(Ljava/lang/String;)Lmf/org/w3c/dom/Element;

    move-result-object v13

    :goto_0
    invoke-interface/range {p1 .. p1}, Lmf/org/w3c/dom/Node;->getAttributes()Lmf/org/w3c/dom/NamedNodeMap;

    move-result-object v20

    if-eqz v20, :cond_2

    invoke-interface/range {v20 .. v20}, Lmf/org/w3c/dom/NamedNodeMap;->getLength()I

    move-result v10

    const/4 v9, 0x0

    :goto_1
    if-lt v9, v10, :cond_9

    :cond_2
    if-eqz p4, :cond_4

    move-object/from16 v0, p4

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->identifiers:Ljava/util/Hashtable;

    move-object/from16 v28, v0

    if-nez v28, :cond_3

    new-instance v28, Ljava/util/Hashtable;

    invoke-direct/range {v28 .. v28}, Ljava/util/Hashtable;-><init>()V

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->identifiers:Ljava/util/Hashtable;

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->identifiers:Ljava/util/Hashtable;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v7, v13}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    move-object/from16 v17, v13

    :goto_2
    if-eqz v27, :cond_5

    const/16 v28, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    move/from16 v3, v28

    move-object/from16 v4, v27

    invoke-virtual {v0, v1, v2, v3, v4}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->callUserDataHandlers(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;SLjava/util/Hashtable;)V

    :cond_5
    if-eqz p2, :cond_6

    invoke-interface/range {p1 .. p1}, Lmf/org/w3c/dom/Node;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object v23

    :goto_3
    if-nez v23, :cond_18

    :cond_6
    invoke-interface/range {v17 .. v17}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v28

    const/16 v29, 0x6

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_7

    move-object/from16 v28, v17

    check-cast v28, Lmf/org/apache/xerces/dom/NodeImpl;

    const/16 v29, 0x1

    const/16 v30, 0x1

    invoke-virtual/range {v28 .. v30}, Lmf/org/apache/xerces/dom/NodeImpl;->setReadOnly(ZZ)V

    :cond_7
    return-object v17

    :cond_8
    invoke-interface/range {p1 .. p1}, Lmf/org/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v28

    invoke-interface/range {p1 .. p1}, Lmf/org/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lmf/org/w3c/dom/Element;

    move-result-object v13

    goto :goto_0

    :cond_9
    move-object/from16 v0, v20

    invoke-interface {v0, v9}, Lmf/org/w3c/dom/NamedNodeMap;->item(I)Lmf/org/w3c/dom/Node;

    move-result-object v5

    check-cast v5, Lmf/org/w3c/dom/Attr;

    invoke-interface {v5}, Lmf/org/w3c/dom/Attr;->getSpecified()Z

    move-result v28

    if-nez v28, :cond_a

    if-eqz p3, :cond_c

    :cond_a
    const/16 v28, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v28

    move/from16 v2, p3

    move-object/from16 v3, p4

    invoke-direct {v0, v5, v1, v2, v3}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->importNode(Lmf/org/w3c/dom/Node;ZZLjava/util/HashMap;)Lmf/org/w3c/dom/Node;

    move-result-object v12

    check-cast v12, Lmf/org/w3c/dom/Attr;

    if-eqz v6, :cond_b

    invoke-interface {v5}, Lmf/org/w3c/dom/Attr;->getLocalName()Ljava/lang/String;

    move-result-object v28

    if-nez v28, :cond_d

    :cond_b
    invoke-interface {v13, v12}, Lmf/org/w3c/dom/Element;->setAttributeNode(Lmf/org/w3c/dom/Attr;)Lmf/org/w3c/dom/Attr;

    :cond_c
    :goto_4
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1

    :cond_d
    invoke-interface {v13, v12}, Lmf/org/w3c/dom/Element;->setAttributeNodeNS(Lmf/org/w3c/dom/Attr;)Lmf/org/w3c/dom/Attr;

    goto :goto_4

    :pswitch_2
    invoke-interface/range {p1 .. p1}, Lmf/org/w3c/dom/Node;->getOwnerDocument()Lmf/org/w3c/dom/Document;

    move-result-object v28

    invoke-interface/range {v28 .. v28}, Lmf/org/w3c/dom/Document;->getImplementation()Lmf/org/w3c/dom/DOMImplementation;

    move-result-object v28

    const-string v29, "XML"

    const-string v30, "2.0"

    invoke-interface/range {v28 .. v30}, Lmf/org/w3c/dom/DOMImplementation;->hasFeature(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_f

    invoke-interface/range {p1 .. p1}, Lmf/org/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v28

    if-nez v28, :cond_e

    invoke-interface/range {p1 .. p1}, Lmf/org/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->createAttribute(Ljava/lang/String;)Lmf/org/w3c/dom/Attr;

    move-result-object v17

    :goto_5
    move-object/from16 v0, p1

    instance-of v0, v0, Lmf/org/apache/xerces/dom/AttrImpl;

    move/from16 v28, v0

    if-eqz v28, :cond_11

    move-object/from16 v5, p1

    check-cast v5, Lmf/org/apache/xerces/dom/AttrImpl;

    invoke-virtual {v5}, Lmf/org/apache/xerces/dom/AttrImpl;->hasStringValue()Z

    move-result v28

    if-eqz v28, :cond_10

    move-object/from16 v14, v17

    check-cast v14, Lmf/org/apache/xerces/dom/AttrImpl;

    invoke-virtual {v5}, Lmf/org/apache/xerces/dom/AttrImpl;->getValue()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v14, v0}, Lmf/org/apache/xerces/dom/AttrImpl;->setValue(Ljava/lang/String;)V

    const/16 p2, 0x0

    goto/16 :goto_2

    :cond_e
    invoke-interface/range {p1 .. p1}, Lmf/org/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v28

    invoke-interface/range {p1 .. p1}, Lmf/org/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->createAttributeNS(Ljava/lang/String;Ljava/lang/String;)Lmf/org/w3c/dom/Attr;

    move-result-object v17

    goto :goto_5

    :cond_f
    invoke-interface/range {p1 .. p1}, Lmf/org/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->createAttribute(Ljava/lang/String;)Lmf/org/w3c/dom/Attr;

    move-result-object v17

    goto :goto_5

    :cond_10
    const/16 p2, 0x1

    goto/16 :goto_2

    :cond_11
    invoke-interface/range {p1 .. p1}, Lmf/org/w3c/dom/Node;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object v28

    if-nez v28, :cond_12

    invoke-interface/range {p1 .. p1}, Lmf/org/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v17

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Lmf/org/w3c/dom/Node;->setNodeValue(Ljava/lang/String;)V

    const/16 p2, 0x0

    goto/16 :goto_2

    :cond_12
    const/16 p2, 0x1

    goto/16 :goto_2

    :pswitch_3
    invoke-interface/range {p1 .. p1}, Lmf/org/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->createTextNode(Ljava/lang/String;)Lmf/org/w3c/dom/Text;

    move-result-object v17

    goto/16 :goto_2

    :pswitch_4
    invoke-interface/range {p1 .. p1}, Lmf/org/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->createCDATASection(Ljava/lang/String;)Lmf/org/w3c/dom/CDATASection;

    move-result-object v17

    goto/16 :goto_2

    :pswitch_5
    invoke-interface/range {p1 .. p1}, Lmf/org/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->createEntityReference(Ljava/lang/String;)Lmf/org/w3c/dom/EntityReference;

    move-result-object v17

    const/16 p2, 0x0

    goto/16 :goto_2

    :pswitch_6
    move-object/from16 v22, p1

    check-cast v22, Lmf/org/w3c/dom/Entity;

    invoke-interface/range {p1 .. p1}, Lmf/org/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->createEntity(Ljava/lang/String;)Lmf/org/w3c/dom/Entity;

    move-result-object v16

    check-cast v16, Lmf/org/apache/xerces/dom/EntityImpl;

    invoke-interface/range {v22 .. v22}, Lmf/org/w3c/dom/Entity;->getPublicId()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v16

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/dom/EntityImpl;->setPublicId(Ljava/lang/String;)V

    invoke-interface/range {v22 .. v22}, Lmf/org/w3c/dom/Entity;->getSystemId()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v16

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/dom/EntityImpl;->setSystemId(Ljava/lang/String;)V

    invoke-interface/range {v22 .. v22}, Lmf/org/w3c/dom/Entity;->getNotationName()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v16

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/dom/EntityImpl;->setNotationName(Ljava/lang/String;)V

    const/16 v28, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/dom/EntityImpl;->isReadOnly(Z)V

    move-object/from16 v17, v16

    goto/16 :goto_2

    :pswitch_7
    invoke-interface/range {p1 .. p1}, Lmf/org/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v28

    invoke-interface/range {p1 .. p1}, Lmf/org/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->createProcessingInstruction(Ljava/lang/String;Ljava/lang/String;)Lmf/org/w3c/dom/ProcessingInstruction;

    move-result-object v17

    goto/16 :goto_2

    :pswitch_8
    invoke-interface/range {p1 .. p1}, Lmf/org/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->createComment(Ljava/lang/String;)Lmf/org/w3c/dom/Comment;

    move-result-object v17

    goto/16 :goto_2

    :pswitch_9
    if-nez p3, :cond_13

    const-string/jumbo v28, "http://www.w3.org/dom/DOMTR"

    const-string v29, "NOT_SUPPORTED_ERR"

    const/16 v30, 0x0

    invoke-static/range {v28 .. v30}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    new-instance v28, Lmf/org/w3c/dom/DOMException;

    const/16 v29, 0x9

    move-object/from16 v0, v28

    move/from16 v1, v29

    invoke-direct {v0, v1, v11}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v28

    :cond_13
    move-object/from16 v21, p1

    check-cast v21, Lmf/org/w3c/dom/DocumentType;

    invoke-interface/range {v21 .. v21}, Lmf/org/w3c/dom/DocumentType;->getNodeName()Ljava/lang/String;

    move-result-object v28

    invoke-interface/range {v21 .. v21}, Lmf/org/w3c/dom/DocumentType;->getPublicId()Ljava/lang/String;

    move-result-object v29

    invoke-interface/range {v21 .. v21}, Lmf/org/w3c/dom/DocumentType;->getSystemId()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    move-object/from16 v3, v30

    invoke-virtual {v0, v1, v2, v3}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->createDocumentType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lmf/org/w3c/dom/DocumentType;

    move-result-object v15

    check-cast v15, Lmf/org/apache/xerces/dom/DocumentTypeImpl;

    invoke-interface/range {v21 .. v21}, Lmf/org/w3c/dom/DocumentType;->getInternalSubset()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v15, v0}, Lmf/org/apache/xerces/dom/DocumentTypeImpl;->setInternalSubset(Ljava/lang/String;)V

    invoke-interface/range {v21 .. v21}, Lmf/org/w3c/dom/DocumentType;->getEntities()Lmf/org/w3c/dom/NamedNodeMap;

    move-result-object v19

    invoke-virtual {v15}, Lmf/org/apache/xerces/dom/DocumentTypeImpl;->getEntities()Lmf/org/w3c/dom/NamedNodeMap;

    move-result-object v25

    if-eqz v19, :cond_14

    const/4 v8, 0x0

    :goto_6
    invoke-interface/range {v19 .. v19}, Lmf/org/w3c/dom/NamedNodeMap;->getLength()I

    move-result v28

    move/from16 v0, v28

    if-lt v8, v0, :cond_16

    :cond_14
    invoke-interface/range {v21 .. v21}, Lmf/org/w3c/dom/DocumentType;->getNotations()Lmf/org/w3c/dom/NamedNodeMap;

    move-result-object v19

    invoke-virtual {v15}, Lmf/org/apache/xerces/dom/DocumentTypeImpl;->getNotations()Lmf/org/w3c/dom/NamedNodeMap;

    move-result-object v25

    if-eqz v19, :cond_15

    const/4 v8, 0x0

    :goto_7
    invoke-interface/range {v19 .. v19}, Lmf/org/w3c/dom/NamedNodeMap;->getLength()I

    move-result v28

    move/from16 v0, v28

    if-lt v8, v0, :cond_17

    :cond_15
    move-object/from16 v17, v15

    goto/16 :goto_2

    :cond_16
    move-object/from16 v0, v19

    invoke-interface {v0, v8}, Lmf/org/w3c/dom/NamedNodeMap;->item(I)Lmf/org/w3c/dom/Node;

    move-result-object v28

    const/16 v29, 0x1

    const/16 v30, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move/from16 v2, v29

    move/from16 v3, v30

    move-object/from16 v4, p4

    invoke-direct {v0, v1, v2, v3, v4}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->importNode(Lmf/org/w3c/dom/Node;ZZLjava/util/HashMap;)Lmf/org/w3c/dom/Node;

    move-result-object v28

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Lmf/org/w3c/dom/NamedNodeMap;->setNamedItem(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    :cond_17
    move-object/from16 v0, v19

    invoke-interface {v0, v8}, Lmf/org/w3c/dom/NamedNodeMap;->item(I)Lmf/org/w3c/dom/Node;

    move-result-object v28

    const/16 v29, 0x1

    const/16 v30, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move/from16 v2, v29

    move/from16 v3, v30

    move-object/from16 v4, p4

    invoke-direct {v0, v1, v2, v3, v4}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->importNode(Lmf/org/w3c/dom/Node;ZZLjava/util/HashMap;)Lmf/org/w3c/dom/Node;

    move-result-object v28

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Lmf/org/w3c/dom/NamedNodeMap;->setNamedItem(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    :pswitch_a
    invoke-virtual/range {p0 .. p0}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->createDocumentFragment()Lmf/org/w3c/dom/DocumentFragment;

    move-result-object v17

    goto/16 :goto_2

    :pswitch_b
    move-object/from16 v24, p1

    check-cast v24, Lmf/org/w3c/dom/Notation;

    invoke-interface/range {p1 .. p1}, Lmf/org/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->createNotation(Ljava/lang/String;)Lmf/org/w3c/dom/Notation;

    move-result-object v18

    check-cast v18, Lmf/org/apache/xerces/dom/NotationImpl;

    invoke-interface/range {v24 .. v24}, Lmf/org/w3c/dom/Notation;->getPublicId()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v18

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/dom/NotationImpl;->setPublicId(Ljava/lang/String;)V

    invoke-interface/range {v24 .. v24}, Lmf/org/w3c/dom/Notation;->getSystemId()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v18

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/dom/NotationImpl;->setSystemId(Ljava/lang/String;)V

    move-object/from16 v17, v18

    goto/16 :goto_2

    :cond_18
    const/16 v28, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, v28

    move/from16 v3, p3

    move-object/from16 v4, p4

    invoke-direct {v0, v1, v2, v3, v4}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->importNode(Lmf/org/w3c/dom/Node;ZZLjava/util/HashMap;)Lmf/org/w3c/dom/Node;

    move-result-object v28

    move-object/from16 v0, v17

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Lmf/org/w3c/dom/Node;->appendChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    invoke-interface/range {v23 .. v23}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v23

    goto/16 :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method public static final isValidQName(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_0

    :goto_0
    return v2

    :cond_0
    const/4 v0, 0x0

    if-nez p2, :cond_3

    if-eqz p0, :cond_1

    invoke-static {p0}, Lmf/org/apache/xerces/util/XMLChar;->isValidNCName(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    invoke-static {p1}, Lmf/org/apache/xerces/util/XMLChar;->isValidNCName(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v0, v1

    :goto_1
    move v2, v0

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    if-eqz p0, :cond_4

    invoke-static {p0}, Lmf/org/apache/xerces/util/XML11Char;->isXML11ValidNCName(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_4
    invoke-static {p1}, Lmf/org/apache/xerces/util/XML11Char;->isXML11ValidNCName(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    move v0, v1

    :goto_2
    goto :goto_1

    :cond_5
    move v0, v2

    goto :goto_2
.end method

.method public static final isXMLName(Ljava/lang/String;Z)Z
    .locals 1

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    if-nez p1, :cond_1

    invoke-static {p0}, Lmf/org/apache/xerces/util/XMLChar;->isValidName(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lmf/org/apache/xerces/util/XML11Char;->isXML11ValidName(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    iget-object v0, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->userData:Ljava/util/Map;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/WeakHashMap;

    iget-object v1, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->userData:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/WeakHashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->userData:Ljava/util/Map;

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->nodeTable:Ljava/util/Map;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/util/WeakHashMap;

    iget-object v1, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->nodeTable:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/WeakHashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->nodeTable:Ljava/util/Map;

    :cond_1
    return-void
.end method

.method private replaceRenameElement(Lmf/org/apache/xerces/dom/ElementImpl;Ljava/lang/String;Ljava/lang/String;)Lmf/org/apache/xerces/dom/ElementImpl;
    .locals 6

    invoke-virtual {p0, p2, p3}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lmf/org/w3c/dom/Element;

    move-result-object v2

    check-cast v2, Lmf/org/apache/xerces/dom/ElementNSImpl;

    invoke-virtual {p0, p1, v2}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->copyEventListeners(Lmf/org/apache/xerces/dom/NodeImpl;Lmf/org/apache/xerces/dom/NodeImpl;)V

    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->removeUserDataTable(Lmf/org/w3c/dom/Node;)Ljava/util/Hashtable;

    move-result-object v1

    invoke-virtual {p1}, Lmf/org/apache/xerces/dom/ElementImpl;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v4

    invoke-virtual {p1}, Lmf/org/apache/xerces/dom/ElementImpl;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v3

    if-eqz v4, :cond_0

    invoke-interface {v4, p1}, Lmf/org/w3c/dom/Node;->removeChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    :cond_0
    invoke-virtual {p1}, Lmf/org/apache/xerces/dom/ElementImpl;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_2

    invoke-virtual {v2, p1}, Lmf/org/apache/xerces/dom/ElementNSImpl;->moveSpecifiedAttributes(Lmf/org/apache/xerces/dom/ElementImpl;)V

    invoke-virtual {p0, v2, v1}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->setUserDataTable(Lmf/org/w3c/dom/Node;Ljava/util/Hashtable;)V

    const/4 v5, 0x4

    invoke-virtual {p0, p1, v2, v5}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->callUserDataHandlers(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;S)V

    if-eqz v4, :cond_1

    invoke-interface {v4, v2, v3}, Lmf/org/w3c/dom/Node;->insertBefore(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    :cond_1
    return-object v2

    :cond_2
    invoke-virtual {p1, v0}, Lmf/org/apache/xerces/dom/ElementImpl;->removeChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    invoke-virtual {v2, v0}, Lmf/org/apache/xerces/dom/ElementNSImpl;->appendChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    invoke-virtual {p1}, Lmf/org/apache/xerces/dom/ElementImpl;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object v0

    goto :goto_0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v1, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->userData:Ljava/util/Map;

    iget-object v0, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->nodeTable:Ljava/util/Map;

    if-eqz v1, :cond_0

    :try_start_0
    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2, v1}, Ljava/util/Hashtable;-><init>(Ljava/util/Map;)V

    iput-object v2, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->userData:Ljava/util/Map;

    :cond_0
    if-eqz v0, :cond_1

    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2, v0}, Ljava/util/Hashtable;-><init>(Ljava/util/Map;)V

    iput-object v2, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->nodeTable:Ljava/util/Map;

    :cond_1
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v1, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->userData:Ljava/util/Map;

    iput-object v0, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->nodeTable:Ljava/util/Map;

    return-void

    :catchall_0
    move-exception v2

    iput-object v1, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->userData:Ljava/util/Map;

    iput-object v0, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->nodeTable:Ljava/util/Map;

    throw v2
.end method


# virtual methods
.method public abort()V
    .locals 0

    return-void
.end method

.method protected addEventListener(Lmf/org/apache/xerces/dom/NodeImpl;Ljava/lang/String;Lmf/org/w3c/dom/events/EventListener;Z)V
    .locals 0

    return-void
.end method

.method public adoptNode(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;
    .locals 17

    const/4 v13, 0x0

    :try_start_0
    move-object/from16 v0, p1

    check-cast v0, Lmf/org/apache/xerces/dom/NodeImpl;

    move-object v9, v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p1, :cond_1

    const/4 v9, 0x0

    :cond_0
    :goto_0
    return-object v9

    :catch_0
    move-exception v5

    const/4 v9, 0x0

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    invoke-interface/range {p1 .. p1}, Lmf/org/w3c/dom/Node;->getOwnerDocument()Lmf/org/w3c/dom/Document;

    move-result-object v14

    if-eqz v14, :cond_2

    invoke-virtual/range {p0 .. p0}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->getImplementation()Lmf/org/w3c/dom/DOMImplementation;

    move-result-object v12

    invoke-interface/range {p1 .. p1}, Lmf/org/w3c/dom/Node;->getOwnerDocument()Lmf/org/w3c/dom/Document;

    move-result-object v14

    invoke-interface {v14}, Lmf/org/w3c/dom/Document;->getImplementation()Lmf/org/w3c/dom/DOMImplementation;

    move-result-object v10

    if-eq v12, v10, :cond_7

    instance-of v14, v12, Lmf/org/apache/xerces/dom/DOMImplementationImpl;

    if-eqz v14, :cond_5

    instance-of v14, v10, Lmf/org/apache/xerces/dom/DeferredDOMImplementationImpl;

    if-eqz v14, :cond_5

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->undeferChildren(Lmf/org/w3c/dom/Node;)V

    :cond_2
    :goto_1
    invoke-virtual {v9}, Lmf/org/apache/xerces/dom/NodeImpl;->getNodeType()S

    move-result v14

    packed-switch v14, :pswitch_data_0

    :pswitch_0
    invoke-virtual {v9}, Lmf/org/apache/xerces/dom/NodeImpl;->getUserDataRecord()Ljava/util/Hashtable;

    move-result-object v13

    invoke-virtual {v9}, Lmf/org/apache/xerces/dom/NodeImpl;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v11

    if-eqz v11, :cond_3

    move-object/from16 v0, p1

    invoke-interface {v11, v0}, Lmf/org/w3c/dom/Node;->removeChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    :cond_3
    move-object/from16 v0, p0

    invoke-virtual {v9, v0}, Lmf/org/apache/xerces/dom/NodeImpl;->setOwnerDocument(Lmf/org/apache/xerces/dom/CoreDocumentImpl;)V

    if-eqz v13, :cond_4

    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v13}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->setUserDataTable(Lmf/org/w3c/dom/Node;Ljava/util/Hashtable;)V

    :cond_4
    :goto_2
    if-eqz v13, :cond_0

    const/4 v14, 0x0

    const/4 v15, 0x5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v14, v15, v13}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->callUserDataHandlers(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;SLjava/util/Hashtable;)V

    goto :goto_0

    :cond_5
    instance-of v14, v12, Lmf/org/apache/xerces/dom/DeferredDOMImplementationImpl;

    if-eqz v14, :cond_6

    instance-of v14, v10, Lmf/org/apache/xerces/dom/DOMImplementationImpl;

    if-nez v14, :cond_2

    :cond_6
    const/4 v9, 0x0

    goto :goto_0

    :cond_7
    instance-of v14, v10, Lmf/org/apache/xerces/dom/DeferredDOMImplementationImpl;

    if-eqz v14, :cond_2

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->undeferChildren(Lmf/org/w3c/dom/Node;)V

    goto :goto_1

    :pswitch_1
    move-object v2, v9

    check-cast v2, Lmf/org/apache/xerces/dom/AttrImpl;

    invoke-virtual {v2}, Lmf/org/apache/xerces/dom/AttrImpl;->getOwnerElement()Lmf/org/w3c/dom/Element;

    move-result-object v14

    if-eqz v14, :cond_8

    invoke-virtual {v2}, Lmf/org/apache/xerces/dom/AttrImpl;->getOwnerElement()Lmf/org/w3c/dom/Element;

    move-result-object v14

    invoke-interface {v14, v2}, Lmf/org/w3c/dom/Element;->removeAttributeNode(Lmf/org/w3c/dom/Attr;)Lmf/org/w3c/dom/Attr;

    :cond_8
    const/4 v14, 0x1

    invoke-virtual {v2, v14}, Lmf/org/apache/xerces/dom/AttrImpl;->isSpecified(Z)V

    invoke-virtual {v9}, Lmf/org/apache/xerces/dom/NodeImpl;->getUserDataRecord()Ljava/util/Hashtable;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lmf/org/apache/xerces/dom/AttrImpl;->setOwnerDocument(Lmf/org/apache/xerces/dom/CoreDocumentImpl;)V

    if-eqz v13, :cond_4

    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v13}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->setUserDataTable(Lmf/org/w3c/dom/Node;Ljava/util/Hashtable;)V

    goto :goto_2

    :pswitch_2
    const-string/jumbo v14, "http://www.w3.org/dom/DOMTR"

    const-string v15, "NO_MODIFICATION_ALLOWED_ERR"

    const/16 v16, 0x0

    invoke-static/range {v14 .. v16}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    new-instance v14, Lmf/org/w3c/dom/DOMException;

    const/4 v15, 0x7

    invoke-direct {v14, v15, v8}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v14

    :pswitch_3
    const-string/jumbo v14, "http://www.w3.org/dom/DOMTR"

    const-string v15, "NOT_SUPPORTED_ERR"

    const/16 v16, 0x0

    invoke-static/range {v14 .. v16}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    new-instance v14, Lmf/org/w3c/dom/DOMException;

    const/16 v15, 0x9

    invoke-direct {v14, v15, v8}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v14

    :pswitch_4
    invoke-virtual {v9}, Lmf/org/apache/xerces/dom/NodeImpl;->getUserDataRecord()Ljava/util/Hashtable;

    move-result-object v13

    invoke-virtual {v9}, Lmf/org/apache/xerces/dom/NodeImpl;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v11

    if-eqz v11, :cond_9

    move-object/from16 v0, p1

    invoke-interface {v11, v0}, Lmf/org/w3c/dom/Node;->removeChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    :cond_9
    :goto_3
    invoke-virtual {v9}, Lmf/org/apache/xerces/dom/NodeImpl;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object v3

    if-nez v3, :cond_b

    move-object/from16 v0, p0

    invoke-virtual {v9, v0}, Lmf/org/apache/xerces/dom/NodeImpl;->setOwnerDocument(Lmf/org/apache/xerces/dom/CoreDocumentImpl;)V

    if-eqz v13, :cond_a

    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v13}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->setUserDataTable(Lmf/org/w3c/dom/Node;Ljava/util/Hashtable;)V

    :cond_a
    move-object/from16 v0, p0

    iget-object v14, v0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->docType:Lmf/org/apache/xerces/dom/DocumentTypeImpl;

    if-eqz v14, :cond_4

    move-object/from16 v0, p0

    iget-object v14, v0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->docType:Lmf/org/apache/xerces/dom/DocumentTypeImpl;

    invoke-virtual {v14}, Lmf/org/apache/xerces/dom/DocumentTypeImpl;->getEntities()Lmf/org/w3c/dom/NamedNodeMap;

    move-result-object v6

    invoke-virtual {v9}, Lmf/org/apache/xerces/dom/NodeImpl;->getNodeName()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v6, v14}, Lmf/org/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lmf/org/w3c/dom/Node;

    move-result-object v7

    if-eqz v7, :cond_4

    invoke-interface {v7}, Lmf/org/w3c/dom/Node;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object v3

    :goto_4
    if-eqz v3, :cond_4

    const/4 v14, 0x1

    invoke-interface {v3, v14}, Lmf/org/w3c/dom/Node;->cloneNode(Z)Lmf/org/w3c/dom/Node;

    move-result-object v4

    invoke-virtual {v9, v4}, Lmf/org/apache/xerces/dom/NodeImpl;->appendChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    invoke-interface {v3}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v3

    goto :goto_4

    :cond_b
    invoke-virtual {v9, v3}, Lmf/org/apache/xerces/dom/NodeImpl;->removeChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    goto :goto_3

    :pswitch_5
    invoke-virtual {v9}, Lmf/org/apache/xerces/dom/NodeImpl;->getUserDataRecord()Ljava/util/Hashtable;

    move-result-object v13

    invoke-virtual {v9}, Lmf/org/apache/xerces/dom/NodeImpl;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v11

    if-eqz v11, :cond_c

    move-object/from16 v0, p1

    invoke-interface {v11, v0}, Lmf/org/w3c/dom/Node;->removeChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    :cond_c
    move-object/from16 v0, p0

    invoke-virtual {v9, v0}, Lmf/org/apache/xerces/dom/NodeImpl;->setOwnerDocument(Lmf/org/apache/xerces/dom/CoreDocumentImpl;)V

    if-eqz v13, :cond_d

    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v13}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->setUserDataTable(Lmf/org/w3c/dom/Node;Ljava/util/Hashtable;)V

    :cond_d
    move-object v14, v9

    check-cast v14, Lmf/org/apache/xerces/dom/ElementImpl;

    invoke-virtual {v14}, Lmf/org/apache/xerces/dom/ElementImpl;->reconcileDefaultAttributes()V

    goto/16 :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected callUserDataHandlers(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;S)V
    .locals 2

    iget-object v1, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->userData:Ljava/util/Map;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    instance-of v1, p1, Lmf/org/apache/xerces/dom/NodeImpl;

    if-eqz v1, :cond_0

    move-object v1, p1

    check-cast v1, Lmf/org/apache/xerces/dom/NodeImpl;

    invoke-virtual {v1}, Lmf/org/apache/xerces/dom/NodeImpl;->getUserDataRecord()Ljava/util/Hashtable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/Hashtable;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, p1, p2, p3, v0}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->callUserDataHandlers(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;SLjava/util/Hashtable;)V

    goto :goto_0
.end method

.method callUserDataHandlers(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;SLjava/util/Hashtable;)V
    .locals 9

    if-eqz p4, :cond_0

    invoke-virtual {p4}, Ljava/util/Hashtable;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p4}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lmf/org/apache/xerces/dom/ParentNode$UserDataRecord;

    iget-object v0, v8, Lmf/org/apache/xerces/dom/ParentNode$UserDataRecord;->fHandler:Lmf/org/w3c/dom/UserDataHandler;

    if-eqz v0, :cond_2

    iget-object v0, v8, Lmf/org/apache/xerces/dom/ParentNode$UserDataRecord;->fHandler:Lmf/org/w3c/dom/UserDataHandler;

    iget-object v3, v8, Lmf/org/apache/xerces/dom/ParentNode$UserDataRecord;->fData:Ljava/lang/Object;

    move v1, p3

    move-object v4, p1

    move-object v5, p2

    invoke-interface/range {v0 .. v5}, Lmf/org/w3c/dom/UserDataHandler;->handle(SLjava/lang/String;Ljava/lang/Object;Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)V

    goto :goto_0
.end method

.method protected canRenameElements(Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/dom/ElementImpl;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected changed()V
    .locals 1

    iget v0, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->changes:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->changes:I

    return-void
.end method

.method protected changes()I
    .locals 1

    iget v0, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->changes:I

    return v0
.end method

.method protected final checkDOMNSErr(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x0

    const/16 v3, 0xe

    iget-boolean v1, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->errorChecking:Z

    if-eqz v1, :cond_4

    if-nez p2, :cond_0

    const-string/jumbo v1, "http://www.w3.org/dom/DOMTR"

    const-string v2, "NAMESPACE_ERR"

    invoke-static {v1, v2, v4}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lmf/org/w3c/dom/DOMException;

    invoke-direct {v1, v3, v0}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v1

    :cond_0
    const-string/jumbo v1, "xml"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lmf/org/apache/xerces/xni/NamespaceContext;->XML_URI:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "http://www.w3.org/dom/DOMTR"

    const-string v2, "NAMESPACE_ERR"

    invoke-static {v1, v2, v4}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lmf/org/w3c/dom/DOMException;

    invoke-direct {v1, v3, v0}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v1

    :cond_1
    const-string/jumbo v1, "xmlns"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lmf/org/apache/xerces/xni/NamespaceContext;->XMLNS_URI:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    const-string/jumbo v1, "xmlns"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    sget-object v1, Lmf/org/apache/xerces/xni/NamespaceContext;->XMLNS_URI:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    const-string/jumbo v1, "http://www.w3.org/dom/DOMTR"

    const-string v2, "NAMESPACE_ERR"

    invoke-static {v1, v2, v4}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lmf/org/w3c/dom/DOMException;

    invoke-direct {v1, v3, v0}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v1

    :cond_4
    return-void
.end method

.method protected final checkNamespaceWF(Ljava/lang/String;II)V
    .locals 4

    iget-boolean v1, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->errorChecking:Z

    if-nez v1, :cond_1

    :cond_0
    return-void

    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-eq p2, v1, :cond_2

    if-eq p3, p2, :cond_0

    :cond_2
    const-string/jumbo v1, "http://www.w3.org/dom/DOMTR"

    const-string v2, "NAMESPACE_ERR"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lmf/org/w3c/dom/DOMException;

    const/16 v2, 0xe

    invoke-direct {v1, v2, v0}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v1
.end method

.method protected final checkQName(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-boolean v4, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->errorChecking:Z

    if-nez v4, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v1, 0x0

    iget-boolean v4, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->xml11Version:Z

    if-nez v4, :cond_4

    if-eqz p1, :cond_2

    invoke-static {p1}, Lmf/org/apache/xerces/util/XMLChar;->isValidNCName(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    invoke-static {p2}, Lmf/org/apache/xerces/util/XMLChar;->isValidNCName(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    move v1, v2

    :goto_0
    if-nez v1, :cond_0

    const-string/jumbo v2, "http://www.w3.org/dom/DOMTR"

    const-string v3, "INVALID_CHARACTER_ERR"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lmf/org/w3c/dom/DOMException;

    const/4 v3, 0x5

    invoke-direct {v2, v3, v0}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v2

    :cond_3
    move v1, v3

    goto :goto_0

    :cond_4
    if-eqz p1, :cond_5

    invoke-static {p1}, Lmf/org/apache/xerces/util/XML11Char;->isXML11ValidNCName(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    :cond_5
    invoke-static {p2}, Lmf/org/apache/xerces/util/XML11Char;->isXML11ValidNCName(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    move v1, v2

    :goto_1
    goto :goto_0

    :cond_6
    move v1, v3

    goto :goto_1
.end method

.method protected final clearIdentifiers()V
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->identifiers:Ljava/util/Hashtable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->identifiers:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    :cond_0
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    const/4 v1, 0x0

    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    iput-object v1, v0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->docType:Lmf/org/apache/xerces/dom/DocumentTypeImpl;

    iput-object v1, v0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->docElement:Lmf/org/apache/xerces/dom/ElementImpl;

    return-object v0
.end method

.method public cloneNode(Z)Lmf/org/w3c/dom/Node;
    .locals 2

    new-instance v0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    invoke-direct {v0}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {p0, p0, v0, v1}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->callUserDataHandlers(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;S)V

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->cloneNode(Lmf/org/apache/xerces/dom/CoreDocumentImpl;Z)V

    return-object v0
.end method

.method protected cloneNode(Lmf/org/apache/xerces/dom/CoreDocumentImpl;Z)V
    .locals 8

    const/4 v7, 0x1

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->needsSyncChildren()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->synchronizeChildren()V

    :cond_0
    if-eqz p2, :cond_2

    const/4 v5, 0x0

    iget-object v6, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->identifiers:Ljava/util/Hashtable;

    if-eqz v6, :cond_1

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iget-object v6, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->identifiers:Ljava/util/Hashtable;

    invoke-virtual {v6}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_3

    :cond_1
    iget-object v4, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->firstChild:Lmf/org/apache/xerces/dom/ChildNode;

    :goto_1
    if-nez v4, :cond_4

    :cond_2
    iget-boolean v6, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->allowGrammarAccess:Z

    iput-boolean v6, p1, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->allowGrammarAccess:Z

    iget-boolean v6, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->errorChecking:Z

    iput-boolean v6, p1, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->errorChecking:Z

    return-void

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v5, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_4
    invoke-direct {p1, v4, v7, v7, v5}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->importNode(Lmf/org/w3c/dom/Node;ZZLjava/util/HashMap;)Lmf/org/w3c/dom/Node;

    move-result-object v6

    invoke-virtual {p1, v6}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->appendChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    iget-object v4, v4, Lmf/org/apache/xerces/dom/ChildNode;->nextSibling:Lmf/org/apache/xerces/dom/ChildNode;

    goto :goto_1
.end method

.method protected copyEventListeners(Lmf/org/apache/xerces/dom/NodeImpl;Lmf/org/apache/xerces/dom/NodeImpl;)V
    .locals 0

    return-void
.end method

.method public createAttribute(Ljava/lang/String;)Lmf/org/w3c/dom/Attr;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    iget-boolean v1, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->errorChecking:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->xml11Version:Z

    invoke-static {p1, v1}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->isXMLName(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "http://www.w3.org/dom/DOMTR"

    const-string v2, "INVALID_CHARACTER_ERR"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lmf/org/w3c/dom/DOMException;

    const/4 v2, 0x5

    invoke-direct {v1, v2, v0}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v1

    :cond_0
    new-instance v1, Lmf/org/apache/xerces/dom/AttrImpl;

    invoke-direct {v1, p0, p1}, Lmf/org/apache/xerces/dom/AttrImpl;-><init>(Lmf/org/apache/xerces/dom/CoreDocumentImpl;Ljava/lang/String;)V

    return-object v1
.end method

.method public createAttributeNS(Ljava/lang/String;Ljava/lang/String;)Lmf/org/w3c/dom/Attr;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    new-instance v0, Lmf/org/apache/xerces/dom/AttrNSImpl;

    invoke-direct {v0, p0, p1, p2}, Lmf/org/apache/xerces/dom/AttrNSImpl;-><init>(Lmf/org/apache/xerces/dom/CoreDocumentImpl;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public createAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lmf/org/w3c/dom/Attr;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    new-instance v0, Lmf/org/apache/xerces/dom/AttrNSImpl;

    invoke-direct {v0, p0, p1, p2, p3}, Lmf/org/apache/xerces/dom/AttrNSImpl;-><init>(Lmf/org/apache/xerces/dom/CoreDocumentImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public createCDATASection(Ljava/lang/String;)Lmf/org/w3c/dom/CDATASection;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    new-instance v0, Lmf/org/apache/xerces/dom/CDATASectionImpl;

    invoke-direct {v0, p0, p1}, Lmf/org/apache/xerces/dom/CDATASectionImpl;-><init>(Lmf/org/apache/xerces/dom/CoreDocumentImpl;Ljava/lang/String;)V

    return-object v0
.end method

.method public createComment(Ljava/lang/String;)Lmf/org/w3c/dom/Comment;
    .locals 1

    new-instance v0, Lmf/org/apache/xerces/dom/CommentImpl;

    invoke-direct {v0, p0, p1}, Lmf/org/apache/xerces/dom/CommentImpl;-><init>(Lmf/org/apache/xerces/dom/CoreDocumentImpl;Ljava/lang/String;)V

    return-object v0
.end method

.method public createDocumentFragment()Lmf/org/w3c/dom/DocumentFragment;
    .locals 1

    new-instance v0, Lmf/org/apache/xerces/dom/DocumentFragmentImpl;

    invoke-direct {v0, p0}, Lmf/org/apache/xerces/dom/DocumentFragmentImpl;-><init>(Lmf/org/apache/xerces/dom/CoreDocumentImpl;)V

    return-object v0
.end method

.method public createDocumentType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lmf/org/w3c/dom/DocumentType;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    new-instance v0, Lmf/org/apache/xerces/dom/DocumentTypeImpl;

    invoke-direct {v0, p0, p1, p2, p3}, Lmf/org/apache/xerces/dom/DocumentTypeImpl;-><init>(Lmf/org/apache/xerces/dom/CoreDocumentImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public createElement(Ljava/lang/String;)Lmf/org/w3c/dom/Element;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    iget-boolean v1, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->errorChecking:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->xml11Version:Z

    invoke-static {p1, v1}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->isXMLName(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "http://www.w3.org/dom/DOMTR"

    const-string v2, "INVALID_CHARACTER_ERR"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lmf/org/w3c/dom/DOMException;

    const/4 v2, 0x5

    invoke-direct {v1, v2, v0}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v1

    :cond_0
    new-instance v1, Lmf/org/apache/xerces/dom/ElementImpl;

    invoke-direct {v1, p0, p1}, Lmf/org/apache/xerces/dom/ElementImpl;-><init>(Lmf/org/apache/xerces/dom/CoreDocumentImpl;Ljava/lang/String;)V

    return-object v1
.end method

.method public createElementDefinition(Ljava/lang/String;)Lmf/org/apache/xerces/dom/ElementDefinitionImpl;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    iget-boolean v1, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->errorChecking:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->xml11Version:Z

    invoke-static {p1, v1}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->isXMLName(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "http://www.w3.org/dom/DOMTR"

    const-string v2, "INVALID_CHARACTER_ERR"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lmf/org/w3c/dom/DOMException;

    const/4 v2, 0x5

    invoke-direct {v1, v2, v0}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v1

    :cond_0
    new-instance v1, Lmf/org/apache/xerces/dom/ElementDefinitionImpl;

    invoke-direct {v1, p0, p1}, Lmf/org/apache/xerces/dom/ElementDefinitionImpl;-><init>(Lmf/org/apache/xerces/dom/CoreDocumentImpl;Ljava/lang/String;)V

    return-object v1
.end method

.method public createElementNS(Ljava/lang/String;Ljava/lang/String;)Lmf/org/w3c/dom/Element;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    new-instance v0, Lmf/org/apache/xerces/dom/ElementNSImpl;

    invoke-direct {v0, p0, p1, p2}, Lmf/org/apache/xerces/dom/ElementNSImpl;-><init>(Lmf/org/apache/xerces/dom/CoreDocumentImpl;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public createElementNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lmf/org/w3c/dom/Element;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    new-instance v0, Lmf/org/apache/xerces/dom/ElementNSImpl;

    invoke-direct {v0, p0, p1, p2, p3}, Lmf/org/apache/xerces/dom/ElementNSImpl;-><init>(Lmf/org/apache/xerces/dom/CoreDocumentImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public createEntity(Ljava/lang/String;)Lmf/org/w3c/dom/Entity;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    iget-boolean v1, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->errorChecking:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->xml11Version:Z

    invoke-static {p1, v1}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->isXMLName(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "http://www.w3.org/dom/DOMTR"

    const-string v2, "INVALID_CHARACTER_ERR"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lmf/org/w3c/dom/DOMException;

    const/4 v2, 0x5

    invoke-direct {v1, v2, v0}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v1

    :cond_0
    new-instance v1, Lmf/org/apache/xerces/dom/EntityImpl;

    invoke-direct {v1, p0, p1}, Lmf/org/apache/xerces/dom/EntityImpl;-><init>(Lmf/org/apache/xerces/dom/CoreDocumentImpl;Ljava/lang/String;)V

    return-object v1
.end method

.method public createEntityReference(Ljava/lang/String;)Lmf/org/w3c/dom/EntityReference;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    iget-boolean v1, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->errorChecking:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->xml11Version:Z

    invoke-static {p1, v1}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->isXMLName(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "http://www.w3.org/dom/DOMTR"

    const-string v2, "INVALID_CHARACTER_ERR"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lmf/org/w3c/dom/DOMException;

    const/4 v2, 0x5

    invoke-direct {v1, v2, v0}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v1

    :cond_0
    new-instance v1, Lmf/org/apache/xerces/dom/EntityReferenceImpl;

    invoke-direct {v1, p0, p1}, Lmf/org/apache/xerces/dom/EntityReferenceImpl;-><init>(Lmf/org/apache/xerces/dom/CoreDocumentImpl;Ljava/lang/String;)V

    return-object v1
.end method

.method public createNotation(Ljava/lang/String;)Lmf/org/w3c/dom/Notation;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    iget-boolean v1, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->errorChecking:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->xml11Version:Z

    invoke-static {p1, v1}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->isXMLName(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "http://www.w3.org/dom/DOMTR"

    const-string v2, "INVALID_CHARACTER_ERR"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lmf/org/w3c/dom/DOMException;

    const/4 v2, 0x5

    invoke-direct {v1, v2, v0}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v1

    :cond_0
    new-instance v1, Lmf/org/apache/xerces/dom/NotationImpl;

    invoke-direct {v1, p0, p1}, Lmf/org/apache/xerces/dom/NotationImpl;-><init>(Lmf/org/apache/xerces/dom/CoreDocumentImpl;Ljava/lang/String;)V

    return-object v1
.end method

.method public createProcessingInstruction(Ljava/lang/String;Ljava/lang/String;)Lmf/org/w3c/dom/ProcessingInstruction;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    iget-boolean v1, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->errorChecking:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->xml11Version:Z

    invoke-static {p1, v1}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->isXMLName(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "http://www.w3.org/dom/DOMTR"

    const-string v2, "INVALID_CHARACTER_ERR"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lmf/org/w3c/dom/DOMException;

    const/4 v2, 0x5

    invoke-direct {v1, v2, v0}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v1

    :cond_0
    new-instance v1, Lmf/org/apache/xerces/dom/ProcessingInstructionImpl;

    invoke-direct {v1, p0, p1, p2}, Lmf/org/apache/xerces/dom/ProcessingInstructionImpl;-><init>(Lmf/org/apache/xerces/dom/CoreDocumentImpl;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public createTextNode(Ljava/lang/String;)Lmf/org/w3c/dom/Text;
    .locals 1

    new-instance v0, Lmf/org/apache/xerces/dom/TextImpl;

    invoke-direct {v0, p0, p1}, Lmf/org/apache/xerces/dom/TextImpl;-><init>(Lmf/org/apache/xerces/dom/CoreDocumentImpl;Ljava/lang/String;)V

    return-object v0
.end method

.method deletedText(Lmf/org/apache/xerces/dom/CharacterDataImpl;II)V
    .locals 0

    return-void
.end method

.method protected dispatchEvent(Lmf/org/apache/xerces/dom/NodeImpl;Lmf/org/w3c/dom/events/Event;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method freeNodeListCache(Lmf/org/apache/xerces/dom/NodeListCache;)V
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->fFreeNLCache:Lmf/org/apache/xerces/dom/NodeListCache;

    iput-object v0, p1, Lmf/org/apache/xerces/dom/NodeListCache;->next:Lmf/org/apache/xerces/dom/NodeListCache;

    iput-object p1, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->fFreeNLCache:Lmf/org/apache/xerces/dom/NodeListCache;

    return-void
.end method

.method public getAsync()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getBaseURI()Ljava/lang/String;
    .locals 3

    iget-object v1, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->fDocumentURI:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->fDocumentURI:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    new-instance v1, Lmf/org/apache/xerces/util/URI;

    iget-object v2, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->fDocumentURI:Ljava/lang/String;

    invoke-direct {v1, v2}, Lmf/org/apache/xerces/util/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lmf/org/apache/xerces/util/URI;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lmf/org/apache/xerces/util/URI$MalformedURIException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->fDocumentURI:Ljava/lang/String;

    goto :goto_0
.end method

.method public getDoctype()Lmf/org/w3c/dom/DocumentType;
    .locals 1

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->needsSyncChildren()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->synchronizeChildren()V

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->docType:Lmf/org/apache/xerces/dom/DocumentTypeImpl;

    return-object v0
.end method

.method public getDocumentElement()Lmf/org/w3c/dom/Element;
    .locals 1

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->needsSyncChildren()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->synchronizeChildren()V

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->docElement:Lmf/org/apache/xerces/dom/ElementImpl;

    return-object v0
.end method

.method public getDocumentURI()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->fDocumentURI:Ljava/lang/String;

    return-object v0
.end method

.method public getDomConfig()Lmf/org/w3c/dom/DOMConfiguration;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->fConfiguration:Lmf/org/apache/xerces/dom/DOMConfigurationImpl;

    if-nez v0, :cond_0

    new-instance v0, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;

    invoke-direct {v0}, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->fConfiguration:Lmf/org/apache/xerces/dom/DOMConfigurationImpl;

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->fConfiguration:Lmf/org/apache/xerces/dom/DOMConfigurationImpl;

    return-object v0
.end method

.method public getElementById(Ljava/lang/String;)Lmf/org/w3c/dom/Element;
    .locals 1

    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->getIdentifier(Ljava/lang/String;)Lmf/org/w3c/dom/Element;

    move-result-object v0

    return-object v0
.end method

.method public getElementsByTagName(Ljava/lang/String;)Lmf/org/w3c/dom/NodeList;
    .locals 1

    new-instance v0, Lmf/org/apache/xerces/dom/DeepNodeListImpl;

    invoke-direct {v0, p0, p1}, Lmf/org/apache/xerces/dom/DeepNodeListImpl;-><init>(Lmf/org/apache/xerces/dom/NodeImpl;Ljava/lang/String;)V

    return-object v0
.end method

.method public getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lmf/org/w3c/dom/NodeList;
    .locals 1

    new-instance v0, Lmf/org/apache/xerces/dom/DeepNodeListImpl;

    invoke-direct {v0, p0, p1, p2}, Lmf/org/apache/xerces/dom/DeepNodeListImpl;-><init>(Lmf/org/apache/xerces/dom/NodeImpl;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->getXmlEncoding()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getErrorChecking()Z
    .locals 1

    iget-boolean v0, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->errorChecking:Z

    return v0
.end method

.method public getFeature(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 10

    const/4 v7, 0x0

    const/4 v0, 0x0

    const/4 v6, 0x1

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_1

    :goto_0
    const-string v6, "+XPath"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    if-nez v0, :cond_0

    const-string v6, "3.0"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    :cond_0
    iget-object v6, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->fXPathEvaluator:Ljava/lang/Object;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->fXPathEvaluator:Ljava/lang/Object;

    :goto_1
    return-object v6

    :cond_1
    move v0, v6

    goto :goto_0

    :cond_2
    :try_start_0
    const-string/jumbo v6, "org.apache.xpath.domapi.XPathEvaluatorImpl"

    invoke-static {}, Lmf/org/apache/xerces/dom/ObjectFactory;->findClassLoader()Ljava/lang/ClassLoader;

    move-result-object v8

    const/4 v9, 0x1

    invoke-static {v6, v8, v9}, Lmf/org/apache/xerces/dom/ObjectFactory;->findProviderClass(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Class;

    move-result-object v4

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v8, 0x0

    const-class v9, Lmf/org/w3c/dom/Document;

    aput-object v9, v6, v8

    invoke-virtual {v4, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v3

    const/4 v2, 0x0

    :goto_2
    array-length v6, v3

    if-lt v2, v6, :cond_3

    move-object v6, v7

    goto :goto_1

    :cond_3
    aget-object v6, v3, v2

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v8, "org.w3c.dom.xpath.XPathEvaluator"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p0, v6, v8

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    iput-object v6, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->fXPathEvaluator:Ljava/lang/Object;

    iget-object v6, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->fXPathEvaluator:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :catch_0
    move-exception v1

    move-object v6, v7

    goto :goto_1

    :cond_5
    invoke-super {p0, p1, p2}, Lmf/org/apache/xerces/dom/ParentNode;->getFeature(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    goto :goto_1
.end method

.method public getIdentifier(Ljava/lang/String;)Lmf/org/w3c/dom/Element;
    .locals 4

    const/4 v2, 0x0

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->needsSyncData()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->synchronizeData()V

    :cond_0
    iget-object v3, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->identifiers:Ljava/util/Hashtable;

    if-nez v3, :cond_2

    move-object v0, v2

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    iget-object v3, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->identifiers:Ljava/util/Hashtable;

    invoke-virtual {v3, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/w3c/dom/Element;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lmf/org/w3c/dom/Element;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v1

    :goto_1
    if-nez v1, :cond_4

    :cond_3
    move-object v0, v2

    goto :goto_0

    :cond_4
    if-eq v1, p0, :cond_1

    invoke-interface {v1}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v1

    goto :goto_1
.end method

.method public getIdentifiers()Ljava/util/Enumeration;
    .locals 1

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->needsSyncData()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->synchronizeData()V

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->identifiers:Ljava/util/Hashtable;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->identifiers:Ljava/util/Hashtable;

    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->identifiers:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getImplementation()Lmf/org/w3c/dom/DOMImplementation;
    .locals 1

    invoke-static {}, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->getDOMImplementation()Lmf/org/w3c/dom/DOMImplementation;

    move-result-object v0

    return-object v0
.end method

.method public getInputEncoding()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->actualEncoding:Ljava/lang/String;

    return-object v0
.end method

.method getMutationEvents()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method getNodeListCache(Lmf/org/apache/xerces/dom/ParentNode;)Lmf/org/apache/xerces/dom/NodeListCache;
    .locals 4

    const/4 v3, 0x0

    const/4 v2, -0x1

    iget-object v1, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->fFreeNLCache:Lmf/org/apache/xerces/dom/NodeListCache;

    if-nez v1, :cond_0

    new-instance v0, Lmf/org/apache/xerces/dom/NodeListCache;

    invoke-direct {v0, p1}, Lmf/org/apache/xerces/dom/NodeListCache;-><init>(Lmf/org/apache/xerces/dom/ParentNode;)V

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->fFreeNLCache:Lmf/org/apache/xerces/dom/NodeListCache;

    iget-object v1, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->fFreeNLCache:Lmf/org/apache/xerces/dom/NodeListCache;

    iget-object v1, v1, Lmf/org/apache/xerces/dom/NodeListCache;->next:Lmf/org/apache/xerces/dom/NodeListCache;

    iput-object v1, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->fFreeNLCache:Lmf/org/apache/xerces/dom/NodeListCache;

    iput-object v3, v0, Lmf/org/apache/xerces/dom/NodeListCache;->fChild:Lmf/org/apache/xerces/dom/ChildNode;

    iput v2, v0, Lmf/org/apache/xerces/dom/NodeListCache;->fChildIndex:I

    iput v2, v0, Lmf/org/apache/xerces/dom/NodeListCache;->fLength:I

    iget-object v1, v0, Lmf/org/apache/xerces/dom/NodeListCache;->fOwner:Lmf/org/apache/xerces/dom/ParentNode;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lmf/org/apache/xerces/dom/NodeListCache;->fOwner:Lmf/org/apache/xerces/dom/ParentNode;

    iput-object v3, v1, Lmf/org/apache/xerces/dom/ParentNode;->fNodeListCache:Lmf/org/apache/xerces/dom/NodeListCache;

    :cond_1
    iput-object p1, v0, Lmf/org/apache/xerces/dom/NodeListCache;->fOwner:Lmf/org/apache/xerces/dom/ParentNode;

    goto :goto_0
.end method

.method public getNodeName()Ljava/lang/String;
    .locals 1

    const-string v0, "#document"

    return-object v0
.end method

.method protected getNodeNumber()I
    .locals 2

    iget v1, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->documentNumber:I

    if-nez v1, :cond_0

    invoke-static {}, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->getDOMImplementation()Lmf/org/w3c/dom/DOMImplementation;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;

    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->assignDocumentNumber()I

    move-result v1

    iput v1, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->documentNumber:I

    :cond_0
    iget v1, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->documentNumber:I

    return v1
.end method

.method protected getNodeNumber(Lmf/org/w3c/dom/Node;)I
    .locals 4

    iget-object v2, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->nodeTable:Ljava/util/Map;

    if-nez v2, :cond_0

    new-instance v2, Ljava/util/WeakHashMap;

    invoke-direct {v2}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v2, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->nodeTable:Ljava/util/Map;

    iget v2, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->nodeCounter:I

    add-int/lit8 v1, v2, -0x1

    iput v1, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->nodeCounter:I

    iget-object v2, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->nodeTable:Ljava/util/Map;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v2, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return v1

    :cond_0
    iget-object v2, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->nodeTable:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_1

    iget v2, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->nodeCounter:I

    add-int/lit8 v1, v2, -0x1

    iput v1, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->nodeCounter:I

    iget-object v2, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->nodeTable:Ljava/util/Map;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v2, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0
.end method

.method public getNodeType()S
    .locals 1

    const/16 v0, 0x9

    return v0
.end method

.method public final getOwnerDocument()Lmf/org/w3c/dom/Document;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getStandalone()Z
    .locals 1

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->getXmlStandalone()Z

    move-result v0

    return v0
.end method

.method public getStrictErrorChecking()Z
    .locals 1

    iget-boolean v0, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->errorChecking:Z

    return v0
.end method

.method public getTextContent()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method protected getUserData(Lmf/org/apache/xerces/dom/NodeImpl;)Ljava/lang/Object;
    .locals 1

    const-string v0, "XERCES1DOMUSERDATA"

    invoke-virtual {p0, p1, v0}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->getUserData(Lmf/org/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getUserData(Lmf/org/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/Object;
    .locals 5

    const/4 v3, 0x0

    iget-object v4, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->userData:Ljava/util/Map;

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return-object v3

    :cond_1
    iget-object v4, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->userData:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Hashtable;

    if-eqz v2, :cond_0

    invoke-virtual {v2, p2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object v1, v0

    check-cast v1, Lmf/org/apache/xerces/dom/ParentNode$UserDataRecord;

    iget-object v3, v1, Lmf/org/apache/xerces/dom/ParentNode$UserDataRecord;->fData:Ljava/lang/Object;

    goto :goto_0
.end method

.method protected getUserDataRecord(Lmf/org/w3c/dom/Node;)Ljava/util/Hashtable;
    .locals 3

    const/4 v1, 0x0

    iget-object v2, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->userData:Ljava/util/Map;

    if-nez v2, :cond_1

    move-object v0, v1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v2, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->userData:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Hashtable;

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->getXmlVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getXmlEncoding()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->encoding:Ljava/lang/String;

    return-object v0
.end method

.method public getXmlStandalone()Z
    .locals 1

    iget-boolean v0, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->standalone:Z

    return v0
.end method

.method public getXmlVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->version:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "1.0"

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->version:Ljava/lang/String;

    goto :goto_0
.end method

.method public importNode(Lmf/org/w3c/dom/Node;Z)Lmf/org/w3c/dom/Node;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->importNode(Lmf/org/w3c/dom/Node;ZZLjava/util/HashMap;)Lmf/org/w3c/dom/Node;

    move-result-object v0

    return-object v0
.end method

.method public insertBefore(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    const/16 v4, 0xa

    const/4 v3, 0x1

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v1

    iget-boolean v2, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->errorChecking:Z

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->needsSyncChildren()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->synchronizeChildren()V

    :cond_0
    if-ne v1, v3, :cond_1

    iget-object v2, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->docElement:Lmf/org/apache/xerces/dom/ElementImpl;

    if-nez v2, :cond_2

    :cond_1
    if-ne v1, v4, :cond_3

    iget-object v2, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->docType:Lmf/org/apache/xerces/dom/DocumentTypeImpl;

    if-eqz v2, :cond_3

    :cond_2
    const-string/jumbo v2, "http://www.w3.org/dom/DOMTR"

    const-string v3, "HIERARCHY_REQUEST_ERR"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lmf/org/w3c/dom/DOMException;

    const/4 v3, 0x3

    invoke-direct {v2, v3, v0}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v2

    :cond_3
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getOwnerDocument()Lmf/org/w3c/dom/Document;

    move-result-object v2

    if-nez v2, :cond_4

    instance-of v2, p1, Lmf/org/apache/xerces/dom/DocumentTypeImpl;

    if-eqz v2, :cond_4

    move-object v2, p1

    check-cast v2, Lmf/org/apache/xerces/dom/DocumentTypeImpl;

    iput-object p0, v2, Lmf/org/apache/xerces/dom/DocumentTypeImpl;->ownerDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    :cond_4
    invoke-super {p0, p1, p2}, Lmf/org/apache/xerces/dom/ParentNode;->insertBefore(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    if-ne v1, v3, :cond_6

    move-object v2, p1

    check-cast v2, Lmf/org/apache/xerces/dom/ElementImpl;

    iput-object v2, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->docElement:Lmf/org/apache/xerces/dom/ElementImpl;

    :cond_5
    :goto_0
    return-object p1

    :cond_6
    if-ne v1, v4, :cond_5

    move-object v2, p1

    check-cast v2, Lmf/org/apache/xerces/dom/DocumentTypeImpl;

    iput-object v2, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->docType:Lmf/org/apache/xerces/dom/DocumentTypeImpl;

    goto :goto_0
.end method

.method insertedNode(Lmf/org/apache/xerces/dom/NodeImpl;Lmf/org/apache/xerces/dom/NodeImpl;Z)V
    .locals 0

    return-void
.end method

.method insertedText(Lmf/org/apache/xerces/dom/CharacterDataImpl;II)V
    .locals 0

    return-void
.end method

.method insertingNode(Lmf/org/apache/xerces/dom/NodeImpl;Z)V
    .locals 0

    return-void
.end method

.method protected isKidOK(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)Z
    .locals 4

    const/4 v1, 0x0

    const/4 v0, 0x1

    iget-boolean v2, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->allowGrammarAccess:Z

    if-eqz v2, :cond_2

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_2

    invoke-interface {p2}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v2

    if-ne v2, v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    sget-object v2, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->kidOK:[I

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v3

    aget v2, v2, v3

    invoke-interface {p2}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v3

    shl-int v3, v0, v3

    and-int/2addr v2, v3

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method isNormalizeDocRequired()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method isXML11Version()Z
    .locals 1

    iget-boolean v0, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->xml11Version:Z

    return v0
.end method

.method isXMLVersionChanged()Z
    .locals 1

    iget-boolean v0, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->xmlVersionChanged:Z

    return v0
.end method

.method public load(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public loadXML(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method modifiedAttrValue(Lmf/org/apache/xerces/dom/AttrImpl;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method modifiedCharacterData(Lmf/org/apache/xerces/dom/NodeImpl;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    return-void
.end method

.method modifyingCharacterData(Lmf/org/apache/xerces/dom/NodeImpl;Z)V
    .locals 0

    return-void
.end method

.method public normalizeDocument()V
    .locals 2

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->isNormalized()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->isNormalizeDocRequired()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->needsSyncChildren()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->synchronizeChildren()V

    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->domNormalizer:Lmf/org/apache/xerces/dom/DOMNormalizer;

    if-nez v0, :cond_2

    new-instance v0, Lmf/org/apache/xerces/dom/DOMNormalizer;

    invoke-direct {v0}, Lmf/org/apache/xerces/dom/DOMNormalizer;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->domNormalizer:Lmf/org/apache/xerces/dom/DOMNormalizer;

    :cond_2
    iget-object v0, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->fConfiguration:Lmf/org/apache/xerces/dom/DOMConfigurationImpl;

    if-nez v0, :cond_3

    new-instance v0, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;

    invoke-direct {v0}, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->fConfiguration:Lmf/org/apache/xerces/dom/DOMConfigurationImpl;

    :goto_1
    iget-object v0, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->domNormalizer:Lmf/org/apache/xerces/dom/DOMNormalizer;

    iget-object v1, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->fConfiguration:Lmf/org/apache/xerces/dom/DOMConfigurationImpl;

    invoke-virtual {v0, p0, v1}, Lmf/org/apache/xerces/dom/DOMNormalizer;->normalizeDocument(Lmf/org/apache/xerces/dom/CoreDocumentImpl;Lmf/org/apache/xerces/dom/DOMConfigurationImpl;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->isNormalized(Z)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->xmlVersionChanged:Z

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->fConfiguration:Lmf/org/apache/xerces/dom/DOMConfigurationImpl;

    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->reset()V

    goto :goto_1
.end method

.method public putIdentifier(Ljava/lang/String;Lmf/org/w3c/dom/Element;)V
    .locals 1

    if-nez p2, :cond_0

    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->removeIdentifier(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->needsSyncData()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->synchronizeData()V

    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->identifiers:Ljava/util/Hashtable;

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->identifiers:Ljava/util/Hashtable;

    :cond_2
    iget-object v0, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->identifiers:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public removeChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lmf/org/apache/xerces/dom/ParentNode;->removeChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iput-object v2, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->docElement:Lmf/org/apache/xerces/dom/ElementImpl;

    :cond_0
    :goto_0
    return-object p1

    :cond_1
    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    iput-object v2, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->docType:Lmf/org/apache/xerces/dom/DocumentTypeImpl;

    goto :goto_0
.end method

.method protected removeEventListener(Lmf/org/apache/xerces/dom/NodeImpl;Ljava/lang/String;Lmf/org/w3c/dom/events/EventListener;Z)V
    .locals 0

    return-void
.end method

.method public removeIdentifier(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->needsSyncData()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->synchronizeData()V

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->identifiers:Ljava/util/Hashtable;

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->identifiers:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method removeUserDataTable(Lmf/org/w3c/dom/Node;)Ljava/util/Hashtable;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->userData:Ljava/util/Map;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->userData:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Hashtable;

    goto :goto_0
.end method

.method removedAttrNode(Lmf/org/apache/xerces/dom/AttrImpl;Lmf/org/apache/xerces/dom/NodeImpl;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method removedNode(Lmf/org/apache/xerces/dom/NodeImpl;Z)V
    .locals 0

    return-void
.end method

.method removingNode(Lmf/org/apache/xerces/dom/NodeImpl;Lmf/org/apache/xerces/dom/NodeImpl;Z)V
    .locals 0

    return-void
.end method

.method public renameNode(Lmf/org/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)Lmf/org/w3c/dom/Node;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    const/4 v9, 0x4

    const/4 v8, 0x0

    iget-boolean v6, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->errorChecking:Z

    if-eqz v6, :cond_0

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getOwnerDocument()Lmf/org/w3c/dom/Document;

    move-result-object v6

    if-eq v6, p0, :cond_0

    if-eq p1, p0, :cond_0

    const-string/jumbo v6, "http://www.w3.org/dom/DOMTR"

    const-string v7, "WRONG_DOCUMENT_ERR"

    invoke-static {v6, v7, v8}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-instance v6, Lmf/org/w3c/dom/DOMException;

    invoke-direct {v6, v9, v4}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v6

    :cond_0
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v6

    packed-switch v6, :pswitch_data_0

    const-string/jumbo v6, "http://www.w3.org/dom/DOMTR"

    const-string v7, "NOT_SUPPORTED_ERR"

    invoke-static {v6, v7, v8}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-instance v6, Lmf/org/w3c/dom/DOMException;

    const/16 v7, 0x9

    invoke-direct {v6, v7, v4}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v6

    :pswitch_0
    move-object v3, p1

    check-cast v3, Lmf/org/apache/xerces/dom/ElementImpl;

    instance-of v6, v3, Lmf/org/apache/xerces/dom/ElementNSImpl;

    if-eqz v6, :cond_2

    invoke-virtual {p0, p2, p3, v3}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->canRenameElements(Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/dom/ElementImpl;)Z

    move-result v6

    if-eqz v6, :cond_1

    move-object v6, v3

    check-cast v6, Lmf/org/apache/xerces/dom/ElementNSImpl;

    invoke-virtual {v6, p2, p3}, Lmf/org/apache/xerces/dom/ElementNSImpl;->rename(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v3, v8, v9}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->callUserDataHandlers(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;S)V

    :goto_0
    check-cast p1, Lmf/org/w3c/dom/Element;

    invoke-virtual {p0, p1, v3}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->renamedElement(Lmf/org/w3c/dom/Element;Lmf/org/w3c/dom/Element;)V

    :goto_1
    return-object v3

    :cond_1
    invoke-direct {p0, v3, p2, p3}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->replaceRenameElement(Lmf/org/apache/xerces/dom/ElementImpl;Ljava/lang/String;Ljava/lang/String;)Lmf/org/apache/xerces/dom/ElementImpl;

    move-result-object v3

    goto :goto_0

    :cond_2
    if-nez p2, :cond_3

    invoke-virtual {p0, v8, p3, v3}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->canRenameElements(Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/dom/ElementImpl;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v3, p3}, Lmf/org/apache/xerces/dom/ElementImpl;->rename(Ljava/lang/String;)V

    invoke-virtual {p0, v3, v8, v9}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->callUserDataHandlers(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;S)V

    goto :goto_0

    :cond_3
    invoke-direct {p0, v3, p2, p3}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->replaceRenameElement(Lmf/org/apache/xerces/dom/ElementImpl;Ljava/lang/String;Ljava/lang/String;)Lmf/org/apache/xerces/dom/ElementImpl;

    move-result-object v3

    goto :goto_0

    :pswitch_1
    move-object v0, p1

    check-cast v0, Lmf/org/apache/xerces/dom/AttrImpl;

    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/AttrImpl;->getOwnerElement()Lmf/org/w3c/dom/Element;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-interface {v3, v0}, Lmf/org/w3c/dom/Element;->removeAttributeNode(Lmf/org/w3c/dom/Attr;)Lmf/org/w3c/dom/Attr;

    :cond_4
    instance-of v6, p1, Lmf/org/apache/xerces/dom/AttrNSImpl;

    if-eqz v6, :cond_6

    move-object v6, v0

    check-cast v6, Lmf/org/apache/xerces/dom/AttrNSImpl;

    invoke-virtual {v6, p2, p3}, Lmf/org/apache/xerces/dom/AttrNSImpl;->rename(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v3, :cond_5

    invoke-interface {v3, v0}, Lmf/org/w3c/dom/Element;->setAttributeNodeNS(Lmf/org/w3c/dom/Attr;)Lmf/org/w3c/dom/Attr;

    :cond_5
    invoke-virtual {p0, v0, v8, v9}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->callUserDataHandlers(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;S)V

    :goto_2
    check-cast p1, Lmf/org/w3c/dom/Attr;

    invoke-virtual {p0, p1, v0}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->renamedAttrNode(Lmf/org/w3c/dom/Attr;Lmf/org/w3c/dom/Attr;)V

    move-object v3, v0

    goto :goto_1

    :cond_6
    if-nez p2, :cond_8

    invoke-virtual {v0, p3}, Lmf/org/apache/xerces/dom/AttrImpl;->rename(Ljava/lang/String;)V

    if-eqz v3, :cond_7

    invoke-interface {v3, v0}, Lmf/org/w3c/dom/Element;->setAttributeNode(Lmf/org/w3c/dom/Attr;)Lmf/org/w3c/dom/Attr;

    :cond_7
    invoke-virtual {p0, v0, v8, v9}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->callUserDataHandlers(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;S)V

    goto :goto_2

    :cond_8
    invoke-virtual {p0, p2, p3}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->createAttributeNS(Ljava/lang/String;Ljava/lang/String;)Lmf/org/w3c/dom/Attr;

    move-result-object v5

    check-cast v5, Lmf/org/apache/xerces/dom/AttrNSImpl;

    invoke-virtual {p0, v0, v5}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->copyEventListeners(Lmf/org/apache/xerces/dom/NodeImpl;Lmf/org/apache/xerces/dom/NodeImpl;)V

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->removeUserDataTable(Lmf/org/w3c/dom/Node;)Ljava/util/Hashtable;

    move-result-object v2

    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/AttrImpl;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object v1

    :goto_3
    if-nez v1, :cond_a

    invoke-virtual {p0, v5, v2}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->setUserDataTable(Lmf/org/w3c/dom/Node;Ljava/util/Hashtable;)V

    invoke-virtual {p0, v0, v5, v9}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->callUserDataHandlers(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;S)V

    if-eqz v3, :cond_9

    invoke-interface {v3, v5}, Lmf/org/w3c/dom/Element;->setAttributeNode(Lmf/org/w3c/dom/Attr;)Lmf/org/w3c/dom/Attr;

    :cond_9
    move-object v0, v5

    goto :goto_2

    :cond_a
    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/dom/AttrImpl;->removeChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    invoke-virtual {v5, v1}, Lmf/org/apache/xerces/dom/AttrNSImpl;->appendChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/AttrImpl;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object v1

    goto :goto_3

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method renamedAttrNode(Lmf/org/w3c/dom/Attr;Lmf/org/w3c/dom/Attr;)V
    .locals 0

    return-void
.end method

.method renamedElement(Lmf/org/w3c/dom/Element;Lmf/org/w3c/dom/Element;)V
    .locals 0

    return-void
.end method

.method public replaceChild(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    const/16 v3, 0xa

    const/4 v2, 0x1

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getOwnerDocument()Lmf/org/w3c/dom/Document;

    move-result-object v1

    if-nez v1, :cond_0

    instance-of v1, p1, Lmf/org/apache/xerces/dom/DocumentTypeImpl;

    if-eqz v1, :cond_0

    move-object v1, p1

    check-cast v1, Lmf/org/apache/xerces/dom/DocumentTypeImpl;

    iput-object p0, v1, Lmf/org/apache/xerces/dom/DocumentTypeImpl;->ownerDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    :cond_0
    iget-boolean v1, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->errorChecking:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->docType:Lmf/org/apache/xerces/dom/DocumentTypeImpl;

    if-eqz v1, :cond_1

    invoke-interface {p2}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v1

    if-eq v1, v3, :cond_1

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v1

    if-eq v1, v3, :cond_2

    :cond_1
    iget-object v1, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->docElement:Lmf/org/apache/xerces/dom/ElementImpl;

    if-eqz v1, :cond_3

    invoke-interface {p2}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v1

    if-eq v1, v2, :cond_3

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v1

    if-ne v1, v2, :cond_3

    :cond_2
    new-instance v1, Lmf/org/w3c/dom/DOMException;

    const/4 v2, 0x3

    const-string/jumbo v3, "http://www.w3.org/dom/DOMTR"

    const-string v4, "HIERARCHY_REQUEST_ERR"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v1

    :cond_3
    invoke-super {p0, p1, p2}, Lmf/org/apache/xerces/dom/ParentNode;->replaceChild(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    invoke-interface {p2}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v0

    if-ne v0, v2, :cond_5

    check-cast p1, Lmf/org/apache/xerces/dom/ElementImpl;

    iput-object p1, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->docElement:Lmf/org/apache/xerces/dom/ElementImpl;

    :cond_4
    :goto_0
    return-object p2

    :cond_5
    if-ne v0, v3, :cond_4

    check-cast p1, Lmf/org/apache/xerces/dom/DocumentTypeImpl;

    iput-object p1, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->docType:Lmf/org/apache/xerces/dom/DocumentTypeImpl;

    goto :goto_0
.end method

.method replacedCharacterData(Lmf/org/apache/xerces/dom/NodeImpl;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method replacedNode(Lmf/org/apache/xerces/dom/NodeImpl;)V
    .locals 0

    return-void
.end method

.method replacedText(Lmf/org/apache/xerces/dom/CharacterDataImpl;)V
    .locals 0

    return-void
.end method

.method replacingData(Lmf/org/apache/xerces/dom/NodeImpl;)V
    .locals 0

    return-void
.end method

.method replacingNode(Lmf/org/apache/xerces/dom/NodeImpl;)V
    .locals 0

    return-void
.end method

.method public saveXML(Lmf/org/w3c/dom/Node;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    iget-boolean v3, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->errorChecking:Z

    if-eqz v3, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getOwnerDocument()Lmf/org/w3c/dom/Document;

    move-result-object v3

    if-eq p0, v3, :cond_0

    const-string/jumbo v3, "http://www.w3.org/dom/DOMTR"

    const-string v4, "WRONG_DOCUMENT_ERR"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lmf/org/w3c/dom/DOMException;

    const/4 v4, 0x4

    invoke-direct {v3, v4, v1}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v3

    :cond_0
    invoke-static {}, Lmf/org/apache/xerces/dom/DOMImplementationImpl;->getDOMImplementation()Lmf/org/w3c/dom/DOMImplementation;

    move-result-object v0

    check-cast v0, Lmf/org/w3c/dom/ls/DOMImplementationLS;

    invoke-interface {v0}, Lmf/org/w3c/dom/ls/DOMImplementationLS;->createLSSerializer()Lmf/org/w3c/dom/ls/LSSerializer;

    move-result-object v2

    if-nez p1, :cond_1

    move-object p1, p0

    :cond_1
    invoke-interface {v2, p1}, Lmf/org/w3c/dom/ls/LSSerializer;->writeToString(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public setAsync(Z)V
    .locals 4

    if-eqz p1, :cond_0

    const-string/jumbo v1, "http://www.w3.org/dom/DOMTR"

    const-string v2, "NOT_SUPPORTED_ERR"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lmf/org/w3c/dom/DOMException;

    const/16 v2, 0x9

    invoke-direct {v1, v2, v0}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v1

    :cond_0
    return-void
.end method

.method setAttrNode(Lmf/org/apache/xerces/dom/AttrImpl;Lmf/org/apache/xerces/dom/AttrImpl;)V
    .locals 0

    return-void
.end method

.method public setDocumentURI(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->fDocumentURI:Ljava/lang/String;

    return-void
.end method

.method public setEncoding(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->setXmlEncoding(Ljava/lang/String;)V

    return-void
.end method

.method public setErrorChecking(Z)V
    .locals 0

    iput-boolean p1, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->errorChecking:Z

    return-void
.end method

.method public setInputEncoding(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->actualEncoding:Ljava/lang/String;

    return-void
.end method

.method setMutationEvents(Z)V
    .locals 0

    return-void
.end method

.method public setStandalone(Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->setXmlStandalone(Z)V

    return-void
.end method

.method public setStrictErrorChecking(Z)V
    .locals 0

    iput-boolean p1, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->errorChecking:Z

    return-void
.end method

.method public setTextContent(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    return-void
.end method

.method public setUserData(Lmf/org/w3c/dom/Node;Ljava/lang/String;Ljava/lang/Object;Lmf/org/w3c/dom/UserDataHandler;)Ljava/lang/Object;
    .locals 5

    const/4 v3, 0x0

    if-nez p3, :cond_1

    iget-object v4, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->userData:Ljava/util/Map;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->userData:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Hashtable;

    if-eqz v2, :cond_0

    invoke-virtual {v2, p2}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object v1, v0

    check-cast v1, Lmf/org/apache/xerces/dom/ParentNode$UserDataRecord;

    iget-object v3, v1, Lmf/org/apache/xerces/dom/ParentNode$UserDataRecord;->fData:Ljava/lang/Object;

    :cond_0
    :goto_0
    return-object v3

    :cond_1
    iget-object v4, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->userData:Ljava/util/Map;

    if-nez v4, :cond_3

    new-instance v4, Ljava/util/WeakHashMap;

    invoke-direct {v4}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v4, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->userData:Ljava/util/Map;

    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    iget-object v4, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->userData:Ljava/util/Map;

    invoke-interface {v4, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_1
    new-instance v4, Lmf/org/apache/xerces/dom/ParentNode$UserDataRecord;

    invoke-direct {v4, p0, p3, p4}, Lmf/org/apache/xerces/dom/ParentNode$UserDataRecord;-><init>(Lmf/org/apache/xerces/dom/ParentNode;Ljava/lang/Object;Lmf/org/w3c/dom/UserDataHandler;)V

    invoke-virtual {v2, p2, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object v1, v0

    check-cast v1, Lmf/org/apache/xerces/dom/ParentNode$UserDataRecord;

    iget-object v3, v1, Lmf/org/apache/xerces/dom/ParentNode$UserDataRecord;->fData:Ljava/lang/Object;

    goto :goto_0

    :cond_3
    iget-object v4, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->userData:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Hashtable;

    if-nez v2, :cond_2

    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    iget-object v4, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->userData:Ljava/util/Map;

    invoke-interface {v4, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method protected setUserData(Lmf/org/apache/xerces/dom/NodeImpl;Ljava/lang/Object;)V
    .locals 2

    const-string v0, "XERCES1DOMUSERDATA"

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, p2, v1}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->setUserData(Lmf/org/w3c/dom/Node;Ljava/lang/String;Ljava/lang/Object;Lmf/org/w3c/dom/UserDataHandler;)Ljava/lang/Object;

    return-void
.end method

.method setUserDataTable(Lmf/org/w3c/dom/Node;Ljava/util/Hashtable;)V
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->userData:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->userData:Ljava/util/Map;

    :cond_0
    if-eqz p2, :cond_1

    iget-object v0, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->userData:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->setXmlVersion(Ljava/lang/String;)V

    return-void
.end method

.method public setXmlEncoding(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->encoding:Ljava/lang/String;

    return-void
.end method

.method public setXmlStandalone(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    iput-boolean p1, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->standalone:Z

    return-void
.end method

.method public setXmlVersion(Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v1, "1.0"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "1.1"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->getXmlVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iput-boolean v4, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->xmlVersionChanged:Z

    invoke-virtual {p0, v3}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->isNormalized(Z)V

    iput-object p1, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->version:Ljava/lang/String;

    :cond_1
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->getXmlVersion()Ljava/lang/String;

    move-result-object v1

    const-string v2, "1.1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iput-boolean v4, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->xml11Version:Z

    :goto_0
    return-void

    :cond_2
    const-string/jumbo v1, "http://www.w3.org/dom/DOMTR"

    const-string v2, "NOT_SUPPORTED_ERR"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lmf/org/w3c/dom/DOMException;

    const/16 v2, 0x9

    invoke-direct {v1, v2, v0}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v1

    :cond_3
    iput-boolean v3, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->xml11Version:Z

    goto :goto_0
.end method

.method protected undeferChildren(Lmf/org/w3c/dom/Node;)V
    .locals 6

    move-object v4, p1

    :goto_0
    if-nez p1, :cond_0

    return-void

    :cond_0
    move-object v5, p1

    check-cast v5, Lmf/org/apache/xerces/dom/NodeImpl;

    invoke-virtual {v5}, Lmf/org/apache/xerces/dom/NodeImpl;->needsSyncData()Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v5, p1

    check-cast v5, Lmf/org/apache/xerces/dom/NodeImpl;

    invoke-virtual {v5}, Lmf/org/apache/xerces/dom/NodeImpl;->synchronizeData()V

    :cond_1
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getAttributes()Lmf/org/w3c/dom/NamedNodeMap;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lmf/org/w3c/dom/NamedNodeMap;->getLength()I

    move-result v2

    const/4 v1, 0x0

    :goto_1
    if-lt v1, v2, :cond_5

    :cond_2
    const/4 v3, 0x0

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object v3

    :cond_3
    if-eqz v3, :cond_6

    :cond_4
    :goto_2
    move-object p1, v3

    goto :goto_0

    :cond_5
    invoke-interface {v0, v1}, Lmf/org/w3c/dom/NamedNodeMap;->item(I)Lmf/org/w3c/dom/Node;

    move-result-object v5

    invoke-virtual {p0, v5}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->undeferChildren(Lmf/org/w3c/dom/Node;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_6
    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v3

    if-nez v3, :cond_3

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object p1

    if-eqz p1, :cond_7

    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_7
    const/4 v3, 0x0

    goto :goto_2
.end method
