.class Lmf/org/apache/xerces/impl/xs/traversers/XSDAttributeGroupTraverser;
.super Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;
.source "XSDAttributeGroupTraverser.java"


# direct methods
.method constructor <init>(Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;-><init>(Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;)V

    return-void
.end method


# virtual methods
.method traverseGlobal(Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;
    .locals 23

    new-instance v9, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;

    invoke-direct {v9}, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;-><init>()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAttributeGroupTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    const/4 v4, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v3, v0, v4, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->checkAttributes(Lmf/org/w3c/dom/Element;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)[Ljava/lang/Object;

    move-result-object v6

    sget v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_NAME:I

    aget-object v20, v6, v3

    check-cast v20, Ljava/lang/String;

    if-nez v20, :cond_0

    const-string/jumbo v3, "s4s-att-must-appear"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v10, "attributeGroup (global)"

    aput-object v10, v4, v7

    const/4 v7, 0x1

    const-string/jumbo v10, "name"

    aput-object v10, v4, v7

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v3, v4, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAttributeGroupTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    const-string v20, "(no name)"

    :cond_0
    move-object/from16 v0, v20

    iput-object v0, v9, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fName:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    iput-object v3, v9, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fTargetNamespace:Ljava/lang/String;

    invoke-static/range {p1 .. p1}, Lmf/org/apache/xerces/util/DOMUtil;->getFirstChildElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v17

    const/4 v13, 0x0

    if-eqz v17, :cond_2

    invoke-static/range {v17 .. v17}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ANNOTATION:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v6, v3, v2}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAttributeGroupTraverser;->traverseAnnotationDecl(Lmf/org/w3c/dom/Element;[Ljava/lang/Object;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    move-result-object v13

    invoke-static/range {v17 .. v17}, Lmf/org/apache/xerces/util/DOMUtil;->getNextSiblingElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v8

    :goto_0
    const/4 v12, 0x0

    move-object/from16 v7, p0

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    invoke-virtual/range {v7 .. v12}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAttributeGroupTraverser;->traverseAttrsAndAttrGrps(Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;)Lmf/org/w3c/dom/Element;

    move-result-object v21

    if-eqz v21, :cond_1

    const/4 v3, 0x3

    new-array v15, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v20, v15, v3

    const/4 v3, 0x1

    const-string v4, "(annotation?, ((attribute | attributeGroup)*, anyAttribute?))"

    aput-object v4, v15, v3

    const/4 v3, 0x2

    invoke-static/range {v21 .. v21}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v15, v3

    const-string/jumbo v3, "s4s-elt-must-match.1"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v3, v15, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAttributeGroupTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    :cond_1
    const-string v3, "(no name)"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAttributeGroupTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    move-object/from16 v0, p2

    invoke-virtual {v3, v6, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    const/4 v3, 0x0

    :goto_1
    return-object v3

    :cond_2
    invoke-static/range {p1 .. p1}, Lmf/org/apache/xerces/util/DOMUtil;->getSyntheticAnnotation(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_a

    const/4 v7, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v8, p2

    invoke-virtual/range {v3 .. v8}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAttributeGroupTraverser;->traverseSyntheticAnnotation(Lmf/org/w3c/dom/Element;Ljava/lang/String;[Ljava/lang/Object;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    move-result-object v13

    move-object/from16 v8, v17

    goto :goto_0

    :cond_3
    invoke-virtual {v9}, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->removeProhibitedAttrs()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAttributeGroupTraverser;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    const/4 v4, 0x2

    new-instance v7, Lmf/org/apache/xerces/xni/QName;

    sget-object v10, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-object v11, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    move-object/from16 v0, v20

    move-object/from16 v1, v20

    invoke-direct {v7, v10, v0, v1, v11}, Lmf/org/apache/xerces/xni/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v3, v4, v7, v0, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->getGrpOrAttrGrpRedefinedByRestriction(ILmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/w3c/dom/Element;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;

    if-eqz v22, :cond_4

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v9, v0, v1}, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->validRestrictionOf(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;)[Ljava/lang/Object;

    move-result-object v18

    if-eqz v18, :cond_4

    move-object/from16 v0, v18

    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    aget-object v3, v18, v3

    check-cast v3, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v3, v1, v8}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAttributeGroupTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    const-string/jumbo v3, "src-redefine.7.2.2"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v20, v4, v7

    const/4 v7, 0x1

    move-object/from16 v0, v18

    array-length v10, v0

    add-int/lit8 v10, v10, -0x1

    aget-object v10, v18, v10

    aput-object v10, v4, v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v8}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAttributeGroupTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    :cond_4
    if-eqz v13, :cond_9

    new-instance v14, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    invoke-direct {v14}, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;-><init>()V

    move-object v3, v14

    check-cast v3, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    invoke-virtual {v3, v13}, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->addXSObject(Lmf/org/apache/xerces/xs/XSObject;)V

    :goto_2
    iput-object v14, v9, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;

    iget-object v3, v9, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fName:Ljava/lang/String;

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalAttributeGroupDecl(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;

    move-result-object v3

    if-nez v3, :cond_5

    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->addGlobalAttributeGroupDecl(Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;)V

    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAttributeGroupTraverser;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->schemaDocument2SystemId(Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)Ljava/lang/String;

    move-result-object v19

    iget-object v3, v9, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fName:Ljava/lang/String;

    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-virtual {v0, v3, v1}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalAttributeGroupDecl(Ljava/lang/String;Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;

    move-result-object v16

    if-nez v16, :cond_6

    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-virtual {v0, v9, v1}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->addGlobalAttributeGroupDecl(Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;Ljava/lang/String;)V

    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAttributeGroupTraverser;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    iget-boolean v3, v3, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fTolerateDuplicates:Z

    if-eqz v3, :cond_8

    if-eqz v16, :cond_7

    move-object/from16 v9, v16

    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAttributeGroupTraverser;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    invoke-virtual {v3, v9}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->addGlobalAttributeGroupDecl(Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;)V

    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAttributeGroupTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    move-object/from16 v0, p2

    invoke-virtual {v3, v6, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    move-object v3, v9

    goto/16 :goto_1

    :cond_9
    sget-object v14, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->EMPTY_LIST:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    goto :goto_2

    :cond_a
    move-object/from16 v8, v17

    goto/16 :goto_0
.end method

.method traverseLocal(Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;
    .locals 12

    const/4 v11, 0x1

    const/4 v10, 0x2

    const/4 v4, 0x0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAttributeGroupTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v0, p1, v4, p2}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->checkAttributes(Lmf/org/w3c/dom/Element;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)[Ljava/lang/Object;

    move-result-object v3

    sget v0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_REF:I

    aget-object v9, v3, v0

    check-cast v9, Lmf/org/apache/xerces/xni/QName;

    const/4 v7, 0x0

    if-nez v9, :cond_0

    const-string/jumbo v0, "s4s-att-must-appear"

    new-array v5, v10, [Ljava/lang/Object;

    const-string v10, "attributeGroup (local)"

    aput-object v10, v5, v4

    const-string/jumbo v4, "ref"

    aput-object v4, v5, v11

    invoke-virtual {p0, v0, v5, p1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAttributeGroupTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAttributeGroupTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v0, v3, p2}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAttributeGroupTraverser;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    invoke-virtual {v0, p2, v10, v9, p1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->getGlobalDecl(Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;ILmf/org/apache/xerces/xni/QName;Lmf/org/w3c/dom/Element;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;

    invoke-static {p1}, Lmf/org/apache/xerces/util/DOMUtil;->getFirstChildElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-static {v1}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v8

    sget-object v0, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ANNOTATION:Ljava/lang/String;

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, v1, v3, v4, p2}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAttributeGroupTraverser;->traverseAnnotationDecl(Lmf/org/w3c/dom/Element;[Ljava/lang/Object;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    invoke-static {v1}, Lmf/org/apache/xerces/util/DOMUtil;->getNextSiblingElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v1

    :cond_1
    :goto_1
    if-eqz v1, :cond_2

    const/4 v0, 0x3

    new-array v6, v0, [Ljava/lang/Object;

    iget-object v0, v9, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v0, v6, v4

    const-string v0, "(annotation?)"

    aput-object v0, v6, v11

    invoke-static {v1}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v10

    const-string/jumbo v0, "s4s-elt-must-match.1"

    invoke-virtual {p0, v0, v6, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAttributeGroupTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    :cond_2
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAttributeGroupTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v0, v3, p2}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    move-object v0, v7

    goto :goto_0

    :cond_3
    invoke-static {v1}, Lmf/org/apache/xerces/util/DOMUtil;->getSyntheticAnnotation(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    move-object v0, p0

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAttributeGroupTraverser;->traverseSyntheticAnnotation(Lmf/org/w3c/dom/Element;Ljava/lang/String;[Ljava/lang/Object;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    goto :goto_1
.end method
