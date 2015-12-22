.class public Lmf/org/apache/xerces/util/DOMUtil;
.super Ljava/lang/Object;
.source "DOMUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmf/org/apache/xerces/util/DOMUtil$ThrowableMethods;
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static copyInto(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    invoke-interface/range {p1 .. p1}, Lmf/org/w3c/dom/Node;->getOwnerDocument()Lmf/org/w3c/dom/Document;

    move-result-object v8

    instance-of v6, v8, Lmf/org/apache/xerces/dom/DocumentImpl;

    move-object/from16 v13, p0

    move-object/from16 v11, p0

    move-object/from16 v12, p0

    :cond_0
    :goto_0
    if-nez v12, :cond_1

    return-void

    :cond_1
    const/4 v10, 0x0

    invoke-interface {v12}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v14

    packed-switch v14, :pswitch_data_0

    :pswitch_0
    new-instance v15, Ljava/lang/IllegalArgumentException;

    new-instance v16, Ljava/lang/StringBuilder;

    const-string v17, "can\'t copy node type, "

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " ("

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-interface {v12}, Lmf/org/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const/16 v17, 0x29

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v15

    :pswitch_1
    invoke-interface {v12}, Lmf/org/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v8, v15}, Lmf/org/w3c/dom/Document;->createCDATASection(Ljava/lang/String;)Lmf/org/w3c/dom/CDATASection;

    move-result-object v10

    :cond_2
    :goto_1
    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Lmf/org/w3c/dom/Node;->appendChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    invoke-interface {v12}, Lmf/org/w3c/dom/Node;->hasChildNodes()Z

    move-result v15

    if-eqz v15, :cond_4

    move-object v11, v12

    invoke-interface {v12}, Lmf/org/w3c/dom/Node;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object v12

    move-object/from16 p1, v10

    goto :goto_0

    :pswitch_2
    invoke-interface {v12}, Lmf/org/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v8, v15}, Lmf/org/w3c/dom/Document;->createComment(Ljava/lang/String;)Lmf/org/w3c/dom/Comment;

    move-result-object v10

    goto :goto_1

    :pswitch_3
    invoke-interface {v12}, Lmf/org/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v8, v15}, Lmf/org/w3c/dom/Document;->createElement(Ljava/lang/String;)Lmf/org/w3c/dom/Element;

    move-result-object v7

    move-object v10, v7

    invoke-interface {v12}, Lmf/org/w3c/dom/Node;->getAttributes()Lmf/org/w3c/dom/NamedNodeMap;

    move-result-object v5

    invoke-interface {v5}, Lmf/org/w3c/dom/NamedNodeMap;->getLength()I

    move-result v2

    const/4 v9, 0x0

    :goto_2
    if-ge v9, v2, :cond_2

    invoke-interface {v5, v9}, Lmf/org/w3c/dom/NamedNodeMap;->item(I)Lmf/org/w3c/dom/Node;

    move-result-object v1

    check-cast v1, Lmf/org/w3c/dom/Attr;

    invoke-interface {v1}, Lmf/org/w3c/dom/Attr;->getNodeName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1}, Lmf/org/w3c/dom/Attr;->getNodeValue()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v7, v3, v4}, Lmf/org/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v6, :cond_3

    invoke-interface {v1}, Lmf/org/w3c/dom/Attr;->getSpecified()Z

    move-result v15

    if-nez v15, :cond_3

    invoke-interface {v7, v3}, Lmf/org/w3c/dom/Element;->getAttributeNode(Ljava/lang/String;)Lmf/org/w3c/dom/Attr;

    move-result-object v15

    check-cast v15, Lmf/org/apache/xerces/dom/AttrImpl;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Lmf/org/apache/xerces/dom/AttrImpl;->setSpecified(Z)V

    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :pswitch_4
    invoke-interface {v12}, Lmf/org/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v8, v15}, Lmf/org/w3c/dom/Document;->createEntityReference(Ljava/lang/String;)Lmf/org/w3c/dom/EntityReference;

    move-result-object v10

    goto :goto_1

    :pswitch_5
    invoke-interface {v12}, Lmf/org/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v12}, Lmf/org/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v8, v15, v0}, Lmf/org/w3c/dom/Document;->createProcessingInstruction(Ljava/lang/String;Ljava/lang/String;)Lmf/org/w3c/dom/ProcessingInstruction;

    move-result-object v10

    goto :goto_1

    :pswitch_6
    invoke-interface {v12}, Lmf/org/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v8, v15}, Lmf/org/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lmf/org/w3c/dom/Text;

    move-result-object v10

    goto :goto_1

    :cond_4
    invoke-interface {v12}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v12

    :goto_3
    if-nez v12, :cond_0

    if-eq v11, v13, :cond_0

    invoke-interface {v11}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v12

    invoke-interface {v11}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v11

    invoke-interface/range {p1 .. p1}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object p1

    goto :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_0
        :pswitch_6
        :pswitch_1
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_2
    .end packed-switch
.end method

.method public static createDOMException(SLjava/lang/Throwable;)Lmf/org/w3c/dom/DOMException;
    .locals 4

    new-instance v0, Lmf/org/w3c/dom/DOMException;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-direct {v0, p0, v1}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    if-eqz p1, :cond_0

    # getter for: Lmf/org/apache/xerces/util/DOMUtil$ThrowableMethods;->fgThrowableMethodsAvailable:Z
    invoke-static {}, Lmf/org/apache/xerces/util/DOMUtil$ThrowableMethods;->access$0()Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    # getter for: Lmf/org/apache/xerces/util/DOMUtil$ThrowableMethods;->fgThrowableInitCauseMethod:Ljava/lang/reflect/Method;
    invoke-static {}, Lmf/org/apache/xerces/util/DOMUtil$ThrowableMethods;->access$1()Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    return-object v0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public static createLSException(SLjava/lang/Throwable;)Lmf/org/w3c/dom/ls/LSException;
    .locals 4

    new-instance v0, Lmf/org/w3c/dom/ls/LSException;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-direct {v0, p0, v1}, Lmf/org/w3c/dom/ls/LSException;-><init>(SLjava/lang/String;)V

    if-eqz p1, :cond_0

    # getter for: Lmf/org/apache/xerces/util/DOMUtil$ThrowableMethods;->fgThrowableMethodsAvailable:Z
    invoke-static {}, Lmf/org/apache/xerces/util/DOMUtil$ThrowableMethods;->access$0()Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    # getter for: Lmf/org/apache/xerces/util/DOMUtil$ThrowableMethods;->fgThrowableInitCauseMethod:Ljava/lang/reflect/Method;
    invoke-static {}, Lmf/org/apache/xerces/util/DOMUtil$ThrowableMethods;->access$1()Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    return-object v0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public static getAnnotation(Lmf/org/w3c/dom/Node;)Ljava/lang/String;
    .locals 1

    instance-of v0, p0, Lmf/org/apache/xerces/impl/xs/opti/ElementImpl;

    if-eqz v0, :cond_0

    check-cast p0, Lmf/org/apache/xerces/impl/xs/opti/ElementImpl;

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xs/opti/ElementImpl;->getAnnotation()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getAttr(Lmf/org/w3c/dom/Element;Ljava/lang/String;)Lmf/org/w3c/dom/Attr;
    .locals 1

    invoke-interface {p0, p1}, Lmf/org/w3c/dom/Element;->getAttributeNode(Ljava/lang/String;)Lmf/org/w3c/dom/Attr;

    move-result-object v0

    return-object v0
.end method

.method public static getAttrNS(Lmf/org/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Lmf/org/w3c/dom/Attr;
    .locals 1

    invoke-interface {p0, p1, p2}, Lmf/org/w3c/dom/Element;->getAttributeNodeNS(Ljava/lang/String;Ljava/lang/String;)Lmf/org/w3c/dom/Attr;

    move-result-object v0

    return-object v0
.end method

.method public static getAttrValue(Lmf/org/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-interface {p0, p1}, Lmf/org/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getAttrValueNS(Lmf/org/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-interface {p0, p1, p2}, Lmf/org/w3c/dom/Element;->getAttributeNS(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getAttrs(Lmf/org/w3c/dom/Element;)[Lmf/org/w3c/dom/Attr;
    .locals 4

    invoke-interface {p0}, Lmf/org/w3c/dom/Element;->getAttributes()Lmf/org/w3c/dom/NamedNodeMap;

    move-result-object v1

    invoke-interface {v1}, Lmf/org/w3c/dom/NamedNodeMap;->getLength()I

    move-result v3

    new-array v0, v3, [Lmf/org/w3c/dom/Attr;

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Lmf/org/w3c/dom/NamedNodeMap;->getLength()I

    move-result v3

    if-lt v2, v3, :cond_0

    return-object v0

    :cond_0
    invoke-interface {v1, v2}, Lmf/org/w3c/dom/NamedNodeMap;->item(I)Lmf/org/w3c/dom/Node;

    move-result-object v3

    check-cast v3, Lmf/org/w3c/dom/Attr;

    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static getChildText(Lmf/org/w3c/dom/Node;)Ljava/lang/String;
    .locals 4

    if-nez p0, :cond_0

    const/4 v3, 0x0

    :goto_0
    return-object v3

    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-interface {p0}, Lmf/org/w3c/dom/Node;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object v0

    :goto_1
    if-nez v0, :cond_1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_3

    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    :goto_2
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v0

    goto :goto_1

    :cond_3
    const/4 v3, 0x4

    if-ne v2, v3, :cond_2

    invoke-static {v0}, Lmf/org/apache/xerces/util/DOMUtil;->getChildText(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2
.end method

.method public static getDocument(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Document;
    .locals 1

    invoke-interface {p0}, Lmf/org/w3c/dom/Node;->getOwnerDocument()Lmf/org/w3c/dom/Document;

    move-result-object v0

    return-object v0
.end method

.method public static getFirstChildElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;
    .locals 3

    invoke-interface {p0}, Lmf/org/w3c/dom/Node;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_1
    return-object v0

    :cond_0
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    check-cast v0, Lmf/org/w3c/dom/Element;

    goto :goto_1

    :cond_1
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v0

    goto :goto_0
.end method

.method public static getFirstChildElement(Lmf/org/w3c/dom/Node;Ljava/lang/String;)Lmf/org/w3c/dom/Element;
    .locals 3

    invoke-interface {p0}, Lmf/org/w3c/dom/Node;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_1
    return-object v0

    :cond_0
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    check-cast v0, Lmf/org/w3c/dom/Element;

    goto :goto_1

    :cond_1
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v0

    goto :goto_0
.end method

.method public static getFirstChildElement(Lmf/org/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lmf/org/w3c/dom/Element;
    .locals 4

    invoke-interface {p0}, Lmf/org/w3c/dom/Node;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_1

    const/4 v1, 0x0

    :cond_0
    return-object v1

    :cond_1
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    move-object v1, v0

    check-cast v1, Lmf/org/w3c/dom/Element;

    invoke-interface {v1}, Lmf/org/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1, p2}, Lmf/org/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v0

    goto :goto_0
.end method

.method public static getFirstChildElement(Lmf/org/w3c/dom/Node;[Ljava/lang/String;)Lmf/org/w3c/dom/Element;
    .locals 4

    invoke-interface {p0}, Lmf/org/w3c/dom/Node;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_1
    return-object v0

    :cond_0
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    const/4 v1, 0x0

    :goto_2
    array-length v2, p1

    if-lt v1, v2, :cond_2

    :cond_1
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v2

    aget-object v3, p1, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    check-cast v0, Lmf/org/w3c/dom/Element;

    goto :goto_1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method public static getFirstChildElementNS(Lmf/org/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)Lmf/org/w3c/dom/Element;
    .locals 4

    invoke-interface {p0}, Lmf/org/w3c/dom/Node;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_1
    return-object v0

    :cond_0
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    check-cast v0, Lmf/org/w3c/dom/Element;

    goto :goto_1

    :cond_1
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v0

    goto :goto_0
.end method

.method public static getFirstChildElementNS(Lmf/org/w3c/dom/Node;[[Ljava/lang/String;)Lmf/org/w3c/dom/Element;
    .locals 6

    const/4 v5, 0x1

    invoke-interface {p0}, Lmf/org/w3c/dom/Node;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_1
    return-object v0

    :cond_0
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v3

    if-ne v3, v5, :cond_1

    const/4 v1, 0x0

    :goto_2
    array-length v3, p1

    if-lt v1, v3, :cond_2

    :cond_1
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    aget-object v3, p1, v1

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v3

    aget-object v4, p1, v1

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    check-cast v0, Lmf/org/w3c/dom/Element;

    goto :goto_1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method public static getFirstVisibleChildElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;
    .locals 3

    invoke-interface {p0}, Lmf/org/w3c/dom/Node;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_1
    return-object v0

    :cond_0
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    invoke-static {v0}, Lmf/org/apache/xerces/util/DOMUtil;->isHidden(Lmf/org/w3c/dom/Node;)Z

    move-result v1

    if-nez v1, :cond_1

    check-cast v0, Lmf/org/w3c/dom/Element;

    goto :goto_1

    :cond_1
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v0

    goto :goto_0
.end method

.method public static getFirstVisibleChildElement(Lmf/org/w3c/dom/Node;Ljava/util/Hashtable;)Lmf/org/w3c/dom/Element;
    .locals 3

    invoke-interface {p0}, Lmf/org/w3c/dom/Node;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_1
    return-object v0

    :cond_0
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    invoke-static {v0, p1}, Lmf/org/apache/xerces/util/DOMUtil;->isHidden(Lmf/org/w3c/dom/Node;Ljava/util/Hashtable;)Z

    move-result v1

    if-nez v1, :cond_1

    check-cast v0, Lmf/org/w3c/dom/Element;

    goto :goto_1

    :cond_1
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v0

    goto :goto_0
.end method

.method public static getLastChildElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;
    .locals 3

    invoke-interface {p0}, Lmf/org/w3c/dom/Node;->getLastChild()Lmf/org/w3c/dom/Node;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_1
    return-object v0

    :cond_0
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    check-cast v0, Lmf/org/w3c/dom/Element;

    goto :goto_1

    :cond_1
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getPreviousSibling()Lmf/org/w3c/dom/Node;

    move-result-object v0

    goto :goto_0
.end method

.method public static getLastChildElement(Lmf/org/w3c/dom/Node;Ljava/lang/String;)Lmf/org/w3c/dom/Element;
    .locals 3

    invoke-interface {p0}, Lmf/org/w3c/dom/Node;->getLastChild()Lmf/org/w3c/dom/Node;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_1
    return-object v0

    :cond_0
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    check-cast v0, Lmf/org/w3c/dom/Element;

    goto :goto_1

    :cond_1
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getPreviousSibling()Lmf/org/w3c/dom/Node;

    move-result-object v0

    goto :goto_0
.end method

.method public static getLastChildElement(Lmf/org/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lmf/org/w3c/dom/Element;
    .locals 4

    invoke-interface {p0}, Lmf/org/w3c/dom/Node;->getLastChild()Lmf/org/w3c/dom/Node;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_1

    const/4 v1, 0x0

    :cond_0
    return-object v1

    :cond_1
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    move-object v1, v0

    check-cast v1, Lmf/org/w3c/dom/Element;

    invoke-interface {v1}, Lmf/org/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1, p2}, Lmf/org/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getPreviousSibling()Lmf/org/w3c/dom/Node;

    move-result-object v0

    goto :goto_0
.end method

.method public static getLastChildElement(Lmf/org/w3c/dom/Node;[Ljava/lang/String;)Lmf/org/w3c/dom/Element;
    .locals 4

    invoke-interface {p0}, Lmf/org/w3c/dom/Node;->getLastChild()Lmf/org/w3c/dom/Node;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_1
    return-object v0

    :cond_0
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    const/4 v1, 0x0

    :goto_2
    array-length v2, p1

    if-lt v1, v2, :cond_2

    :cond_1
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getPreviousSibling()Lmf/org/w3c/dom/Node;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v2

    aget-object v3, p1, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    check-cast v0, Lmf/org/w3c/dom/Element;

    goto :goto_1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method public static getLastChildElementNS(Lmf/org/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)Lmf/org/w3c/dom/Element;
    .locals 4

    invoke-interface {p0}, Lmf/org/w3c/dom/Node;->getLastChild()Lmf/org/w3c/dom/Node;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_1
    return-object v0

    :cond_0
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    check-cast v0, Lmf/org/w3c/dom/Element;

    goto :goto_1

    :cond_1
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getPreviousSibling()Lmf/org/w3c/dom/Node;

    move-result-object v0

    goto :goto_0
.end method

.method public static getLastChildElementNS(Lmf/org/w3c/dom/Node;[[Ljava/lang/String;)Lmf/org/w3c/dom/Element;
    .locals 6

    const/4 v5, 0x1

    invoke-interface {p0}, Lmf/org/w3c/dom/Node;->getLastChild()Lmf/org/w3c/dom/Node;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_1
    return-object v0

    :cond_0
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v3

    if-ne v3, v5, :cond_1

    const/4 v1, 0x0

    :goto_2
    array-length v3, p1

    if-lt v1, v3, :cond_2

    :cond_1
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getPreviousSibling()Lmf/org/w3c/dom/Node;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    aget-object v3, p1, v1

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v3

    aget-object v4, p1, v1

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    check-cast v0, Lmf/org/w3c/dom/Element;

    goto :goto_1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method public static getLastVisibleChildElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;
    .locals 3

    invoke-interface {p0}, Lmf/org/w3c/dom/Node;->getLastChild()Lmf/org/w3c/dom/Node;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_1
    return-object v0

    :cond_0
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    invoke-static {v0}, Lmf/org/apache/xerces/util/DOMUtil;->isHidden(Lmf/org/w3c/dom/Node;)Z

    move-result v1

    if-nez v1, :cond_1

    check-cast v0, Lmf/org/w3c/dom/Element;

    goto :goto_1

    :cond_1
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getPreviousSibling()Lmf/org/w3c/dom/Node;

    move-result-object v0

    goto :goto_0
.end method

.method public static getLastVisibleChildElement(Lmf/org/w3c/dom/Node;Ljava/util/Hashtable;)Lmf/org/w3c/dom/Element;
    .locals 3

    invoke-interface {p0}, Lmf/org/w3c/dom/Node;->getLastChild()Lmf/org/w3c/dom/Node;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_1
    return-object v0

    :cond_0
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    invoke-static {v0, p1}, Lmf/org/apache/xerces/util/DOMUtil;->isHidden(Lmf/org/w3c/dom/Node;Ljava/util/Hashtable;)Z

    move-result v1

    if-nez v1, :cond_1

    check-cast v0, Lmf/org/w3c/dom/Element;

    goto :goto_1

    :cond_1
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getPreviousSibling()Lmf/org/w3c/dom/Node;

    move-result-object v0

    goto :goto_0
.end method

.method public static getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;
    .locals 1

    invoke-interface {p0}, Lmf/org/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p0}, Lmf/org/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;
    .locals 1

    invoke-interface {p0}, Lmf/org/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getNamespaceURI(Lmf/org/w3c/dom/Node;)Ljava/lang/String;
    .locals 1

    invoke-interface {p0}, Lmf/org/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getNextSiblingElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;
    .locals 3

    invoke-interface {p0}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_1
    return-object v0

    :cond_0
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    check-cast v0, Lmf/org/w3c/dom/Element;

    goto :goto_1

    :cond_1
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v0

    goto :goto_0
.end method

.method public static getNextSiblingElement(Lmf/org/w3c/dom/Node;Ljava/lang/String;)Lmf/org/w3c/dom/Element;
    .locals 3

    invoke-interface {p0}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_1
    return-object v0

    :cond_0
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    check-cast v0, Lmf/org/w3c/dom/Element;

    goto :goto_1

    :cond_1
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v0

    goto :goto_0
.end method

.method public static getNextSiblingElement(Lmf/org/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lmf/org/w3c/dom/Element;
    .locals 4

    invoke-interface {p0}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v1

    :goto_0
    if-nez v1, :cond_1

    const/4 v0, 0x0

    :cond_0
    return-object v0

    :cond_1
    invoke-interface {v1}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    move-object v0, v1

    check-cast v0, Lmf/org/w3c/dom/Element;

    invoke-interface {v0}, Lmf/org/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0, p2}, Lmf/org/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    invoke-interface {v1}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v1

    goto :goto_0
.end method

.method public static getNextSiblingElement(Lmf/org/w3c/dom/Node;[Ljava/lang/String;)Lmf/org/w3c/dom/Element;
    .locals 4

    invoke-interface {p0}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v1

    :goto_0
    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_1
    return-object v1

    :cond_0
    invoke-interface {v1}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    const/4 v0, 0x0

    :goto_2
    array-length v2, p1

    if-lt v0, v2, :cond_2

    :cond_1
    invoke-interface {v1}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v1

    goto :goto_0

    :cond_2
    invoke-interface {v1}, Lmf/org/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v2

    aget-object v3, p1, v0

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    check-cast v1, Lmf/org/w3c/dom/Element;

    goto :goto_1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public static getNextSiblingElementNS(Lmf/org/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)Lmf/org/w3c/dom/Element;
    .locals 4

    invoke-interface {p0}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_1
    return-object v0

    :cond_0
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    check-cast v0, Lmf/org/w3c/dom/Element;

    goto :goto_1

    :cond_1
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v0

    goto :goto_0
.end method

.method public static getNextSiblingElementNS(Lmf/org/w3c/dom/Node;[[Ljava/lang/String;)Lmf/org/w3c/dom/Element;
    .locals 6

    const/4 v5, 0x1

    invoke-interface {p0}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v1

    :goto_0
    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_1
    return-object v1

    :cond_0
    invoke-interface {v1}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v3

    if-ne v3, v5, :cond_1

    const/4 v0, 0x0

    :goto_2
    array-length v3, p1

    if-lt v0, v3, :cond_2

    :cond_1
    invoke-interface {v1}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v1

    goto :goto_0

    :cond_2
    invoke-interface {v1}, Lmf/org/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    aget-object v3, p1, v0

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Lmf/org/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v3

    aget-object v4, p1, v0

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    check-cast v1, Lmf/org/w3c/dom/Element;

    goto :goto_1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public static getNextVisibleSiblingElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;
    .locals 3

    invoke-interface {p0}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_1
    return-object v0

    :cond_0
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    invoke-static {v0}, Lmf/org/apache/xerces/util/DOMUtil;->isHidden(Lmf/org/w3c/dom/Node;)Z

    move-result v1

    if-nez v1, :cond_1

    check-cast v0, Lmf/org/w3c/dom/Element;

    goto :goto_1

    :cond_1
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v0

    goto :goto_0
.end method

.method public static getNextVisibleSiblingElement(Lmf/org/w3c/dom/Node;Ljava/util/Hashtable;)Lmf/org/w3c/dom/Element;
    .locals 3

    invoke-interface {p0}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_1
    return-object v0

    :cond_0
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    invoke-static {v0, p1}, Lmf/org/apache/xerces/util/DOMUtil;->isHidden(Lmf/org/w3c/dom/Node;Ljava/util/Hashtable;)Z

    move-result v1

    if-nez v1, :cond_1

    check-cast v0, Lmf/org/w3c/dom/Element;

    goto :goto_1

    :cond_1
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v0

    goto :goto_0
.end method

.method public static getParent(Lmf/org/w3c/dom/Element;)Lmf/org/w3c/dom/Element;
    .locals 2

    invoke-interface {p0}, Lmf/org/w3c/dom/Element;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v0

    instance-of v1, v0, Lmf/org/w3c/dom/Element;

    if-eqz v1, :cond_0

    check-cast v0, Lmf/org/w3c/dom/Element;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getPrefix(Lmf/org/w3c/dom/Node;)Ljava/lang/String;
    .locals 1

    invoke-interface {p0}, Lmf/org/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getRoot(Lmf/org/w3c/dom/Document;)Lmf/org/w3c/dom/Element;
    .locals 1

    invoke-interface {p0}, Lmf/org/w3c/dom/Document;->getDocumentElement()Lmf/org/w3c/dom/Element;

    move-result-object v0

    return-object v0
.end method

.method public static getSyntheticAnnotation(Lmf/org/w3c/dom/Node;)Ljava/lang/String;
    .locals 1

    instance-of v0, p0, Lmf/org/apache/xerces/impl/xs/opti/ElementImpl;

    if-eqz v0, :cond_0

    check-cast p0, Lmf/org/apache/xerces/impl/xs/opti/ElementImpl;

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xs/opti/ElementImpl;->getSyntheticAnnotation()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getValue(Lmf/org/w3c/dom/Attr;)Ljava/lang/String;
    .locals 1

    invoke-interface {p0}, Lmf/org/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isHidden(Lmf/org/w3c/dom/Node;)Z
    .locals 1

    instance-of v0, p0, Lmf/org/apache/xerces/impl/xs/opti/NodeImpl;

    if-eqz v0, :cond_0

    check-cast p0, Lmf/org/apache/xerces/impl/xs/opti/NodeImpl;

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xs/opti/NodeImpl;->getReadOnly()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    instance-of v0, p0, Lmf/org/apache/xerces/dom/NodeImpl;

    if-eqz v0, :cond_1

    check-cast p0, Lmf/org/apache/xerces/dom/NodeImpl;

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/NodeImpl;->getReadOnly()Z

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isHidden(Lmf/org/w3c/dom/Node;Ljava/util/Hashtable;)Z
    .locals 1

    instance-of v0, p0, Lmf/org/apache/xerces/impl/xs/opti/NodeImpl;

    if-eqz v0, :cond_0

    check-cast p0, Lmf/org/apache/xerces/impl/xs/opti/NodeImpl;

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xs/opti/NodeImpl;->getReadOnly()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1, p0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public static setHidden(Lmf/org/w3c/dom/Node;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    instance-of v0, p0, Lmf/org/apache/xerces/impl/xs/opti/NodeImpl;

    if-eqz v0, :cond_1

    check-cast p0, Lmf/org/apache/xerces/impl/xs/opti/NodeImpl;

    invoke-virtual {p0, v2, v1}, Lmf/org/apache/xerces/impl/xs/opti/NodeImpl;->setReadOnly(ZZ)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    instance-of v0, p0, Lmf/org/apache/xerces/dom/NodeImpl;

    if-eqz v0, :cond_0

    check-cast p0, Lmf/org/apache/xerces/dom/NodeImpl;

    invoke-virtual {p0, v2, v1}, Lmf/org/apache/xerces/dom/NodeImpl;->setReadOnly(ZZ)V

    goto :goto_0
.end method

.method public static setHidden(Lmf/org/w3c/dom/Node;Ljava/util/Hashtable;)V
    .locals 2

    instance-of v0, p0, Lmf/org/apache/xerces/impl/xs/opti/NodeImpl;

    if-eqz v0, :cond_0

    check-cast p0, Lmf/org/apache/xerces/impl/xs/opti/NodeImpl;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lmf/org/apache/xerces/impl/xs/opti/NodeImpl;->setReadOnly(ZZ)V

    :goto_0
    return-void

    :cond_0
    const-string v0, ""

    invoke-virtual {p1, p0, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static setVisible(Lmf/org/w3c/dom/Node;)V
    .locals 2

    const/4 v1, 0x0

    instance-of v0, p0, Lmf/org/apache/xerces/impl/xs/opti/NodeImpl;

    if-eqz v0, :cond_1

    check-cast p0, Lmf/org/apache/xerces/impl/xs/opti/NodeImpl;

    invoke-virtual {p0, v1, v1}, Lmf/org/apache/xerces/impl/xs/opti/NodeImpl;->setReadOnly(ZZ)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    instance-of v0, p0, Lmf/org/apache/xerces/dom/NodeImpl;

    if-eqz v0, :cond_0

    check-cast p0, Lmf/org/apache/xerces/dom/NodeImpl;

    invoke-virtual {p0, v1, v1}, Lmf/org/apache/xerces/dom/NodeImpl;->setReadOnly(ZZ)V

    goto :goto_0
.end method

.method public static setVisible(Lmf/org/w3c/dom/Node;Ljava/util/Hashtable;)V
    .locals 2

    const/4 v1, 0x0

    instance-of v0, p0, Lmf/org/apache/xerces/impl/xs/opti/NodeImpl;

    if-eqz v0, :cond_0

    check-cast p0, Lmf/org/apache/xerces/impl/xs/opti/NodeImpl;

    invoke-virtual {p0, v1, v1}, Lmf/org/apache/xerces/impl/xs/opti/NodeImpl;->setReadOnly(ZZ)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1, p0}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
