.class Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;
.super Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;
.source "XSDSimpleTypeTraverser.java"


# instance fields
.field private fIsBuiltIn:Z


# direct methods
.method constructor <init>(Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;-><init>(Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;->fIsBuiltIn:Z

    return-void
.end method

.method private final checkBuiltIn(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->URI_SCHEMAFORSCHEMA:Ljava/lang/String;

    if-eq p2, v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    sget-object v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->SG_SchemaNS:Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;->getGlobalTypeDecl(Ljava/lang/String;)Lmf/org/apache/xerces/xs/XSTypeDefinition;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;->fIsBuiltIn:Z

    :cond_1
    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;->fIsBuiltIn:Z

    goto :goto_0
.end method

.method private errorType(Ljava/lang/String;Ljava/lang/String;S)Lmf/org/apache/xerces/impl/dv/XSSimpleType;
    .locals 12

    const/4 v5, 0x0

    const/4 v3, 0x0

    sget-object v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->SG_SchemaNS:Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;

    const-string/jumbo v1, "string"

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;->getTypeDefinition(Ljava/lang/String;)Lmf/org/apache/xerces/xs/XSTypeDefinition;

    move-result-object v4

    check-cast v4, Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    sparse-switch p3, :sswitch_data_0

    :goto_0
    return-object v5

    :sswitch_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fDVFactory:Lmf/org/apache/xerces/impl/dv/SchemaDVFactory;

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lmf/org/apache/xerces/impl/dv/SchemaDVFactory;->createTypeRestriction(Ljava/lang/String;Ljava/lang/String;SLmf/org/apache/xerces/impl/dv/XSSimpleType;Lmf/org/apache/xerces/xs/XSObjectList;)Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    move-result-object v5

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fDVFactory:Lmf/org/apache/xerces/impl/dv/SchemaDVFactory;

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lmf/org/apache/xerces/impl/dv/SchemaDVFactory;->createTypeList(Ljava/lang/String;Ljava/lang/String;SLmf/org/apache/xerces/impl/dv/XSSimpleType;Lmf/org/apache/xerces/xs/XSObjectList;)Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    move-result-object v5

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    iget-object v6, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fDVFactory:Lmf/org/apache/xerces/impl/dv/SchemaDVFactory;

    const/4 v0, 0x1

    new-array v10, v0, [Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    aput-object v4, v10, v3

    move-object v7, p1

    move-object v8, p2

    move v9, v3

    move-object v11, v5

    invoke-virtual/range {v6 .. v11}, Lmf/org/apache/xerces/impl/dv/SchemaDVFactory;->createTypeUnion(Ljava/lang/String;Ljava/lang/String;S[Lmf/org/apache/xerces/impl/dv/XSSimpleType;Lmf/org/apache/xerces/xs/XSObjectList;)Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    move-result-object v5

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x8 -> :sswitch_2
        0x10 -> :sswitch_1
    .end sparse-switch
.end method

.method private findDTValidator(Lmf/org/w3c/dom/Element;Ljava/lang/String;Lmf/org/apache/xerces/xni/QName;SLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)Lmf/org/apache/xerces/impl/dv/XSSimpleType;
    .locals 8

    const/16 v7, 0x10

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v4, 0x2

    if-nez p3, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    const/4 v3, 0x7

    invoke-virtual {v2, p5, v3, p3, p1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->getGlobalDecl(Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;ILmf/org/apache/xerces/xni/QName;Lmf/org/w3c/dom/Element;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/xs/XSTypeDefinition;

    if-nez v0, :cond_1

    move-object v0, v1

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getTypeCategory()S

    move-result v2

    if-eq v2, v7, :cond_2

    const-string v2, "cos-st-restricts.1.1"

    new-array v3, v4, [Ljava/lang/Object;

    iget-object v4, p3, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v4, v3, v5

    aput-object p2, v3, v6

    invoke-virtual {p0, v2, v3, p1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    move-object v0, v1

    goto :goto_0

    :cond_2
    sget-object v2, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fAnySimpleType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    if-ne v0, v2, :cond_4

    if-ne p4, v4, :cond_4

    iget-object v2, p5, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    invoke-direct {p0, p2, v2}, Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;->checkBuiltIn(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    move-object v0, v1

    goto :goto_0

    :cond_3
    const-string v2, "cos-st-restricts.1.1"

    new-array v3, v4, [Ljava/lang/Object;

    iget-object v4, p3, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v4, v3, v5

    aput-object p2, v3, v6

    invoke-virtual {p0, v2, v3, p1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    move-object v0, v1

    goto :goto_0

    :cond_4
    invoke-interface {v0}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getFinal()S

    move-result v2

    and-int/2addr v2, p4

    if-eqz v2, :cond_8

    if-ne p4, v4, :cond_6

    const-string/jumbo v2, "st-props-correct.3"

    new-array v3, v4, [Ljava/lang/Object;

    aput-object p2, v3, v5

    iget-object v4, p3, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v4, v3, v6

    invoke-virtual {p0, v2, v3, p1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    :cond_5
    :goto_1
    move-object v0, v1

    goto :goto_0

    :cond_6
    if-ne p4, v7, :cond_7

    const-string v2, "cos-st-restricts.2.3.1.1"

    new-array v3, v4, [Ljava/lang/Object;

    iget-object v4, p3, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v4, v3, v5

    aput-object p2, v3, v6

    invoke-virtual {p0, v2, v3, p1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    goto :goto_1

    :cond_7
    const/16 v2, 0x8

    if-ne p4, v2, :cond_5

    const-string v2, "cos-st-restricts.3.3.1.1"

    new-array v3, v4, [Ljava/lang/Object;

    iget-object v4, p3, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v4, v3, v5

    aput-object p2, v3, v6

    invoke-virtual {p0, v2, v3, p1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    goto :goto_1

    :cond_8
    check-cast v0, Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    goto :goto_0
.end method

.method private genAnonTypeName(Lmf/org/w3c/dom/Element;)Ljava/lang/String;
    .locals 3

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "#AnonType_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lmf/org/apache/xerces/util/DOMUtil;->getParent(Lmf/org/w3c/dom/Element;)Lmf/org/w3c/dom/Element;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    invoke-static {v0}, Lmf/org/apache/xerces/util/DOMUtil;->getDocument(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Document;

    move-result-object v2

    invoke-static {v2}, Lmf/org/apache/xerces/util/DOMUtil;->getRoot(Lmf/org/w3c/dom/Document;)Lmf/org/w3c/dom/Element;

    move-result-object v2

    if-ne v0, v2, :cond_1

    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_1
    sget-object v2, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_NAME:Ljava/lang/String;

    invoke-interface {v0, v2}, Lmf/org/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {v0}, Lmf/org/apache/xerces/util/DOMUtil;->getParent(Lmf/org/w3c/dom/Element;)Lmf/org/w3c/dom/Element;

    move-result-object v0

    goto :goto_0
.end method

.method private getSimpleType(Ljava/lang/String;Lmf/org/w3c/dom/Element;[Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)Lmf/org/apache/xerces/impl/dv/XSSimpleType;
    .locals 47

    sget v4, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_FINAL:I

    aget-object v34, p3, v4

    check-cast v34, Lmf/org/apache/xerces/impl/xs/util/XInt;

    if-nez v34, :cond_1

    move-object/from16 v0, p4

    iget-short v0, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fFinalDefault:S

    move/from16 v35, v0

    :goto_0
    invoke-static/range {p2 .. p2}, Lmf/org/apache/xerces/util/DOMUtil;->getFirstChildElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v27

    const/16 v25, 0x0

    if-eqz v27, :cond_2

    invoke-static/range {v27 .. v27}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v4

    sget-object v8, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ANNOTATION:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-virtual {v0, v1, v2, v4, v3}, Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;->traverseAnnotationDecl(Lmf/org/w3c/dom/Element;[Ljava/lang/Object;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    move-result-object v24

    if-eqz v24, :cond_0

    const/4 v4, 0x1

    new-array v0, v4, [Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    move-object/from16 v25, v0

    const/4 v4, 0x0

    aput-object v24, v25, v4

    :cond_0
    invoke-static/range {v27 .. v27}, Lmf/org/apache/xerces/util/DOMUtil;->getNextSiblingElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v5

    :goto_1
    if-nez v5, :cond_3

    const-string/jumbo v4, "s4s-elt-must-match.2"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    sget-object v10, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_SIMPLETYPE:Ljava/lang/String;

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const-string v10, "(annotation?, (restriction | list | union))"

    aput-object v10, v8, v9

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v4, v8, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    move-object/from16 v0, p4

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    const/4 v8, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4, v8}, Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;->errorType(Ljava/lang/String;Ljava/lang/String;S)Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    move-result-object v40

    :goto_2
    return-object v40

    :cond_1
    invoke-virtual/range {v34 .. v34}, Lmf/org/apache/xerces/impl/xs/util/XInt;->intValue()I

    move-result v35

    goto :goto_0

    :cond_2
    invoke-static/range {p2 .. p2}, Lmf/org/apache/xerces/util/DOMUtil;->getSyntheticAnnotation(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_35

    const/4 v8, 0x0

    move-object/from16 v4, p0

    move-object/from16 v5, p2

    move-object/from16 v7, p3

    move-object/from16 v9, p4

    invoke-virtual/range {v4 .. v9}, Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;->traverseSyntheticAnnotation(Lmf/org/w3c/dom/Element;Ljava/lang/String;[Ljava/lang/Object;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    move-result-object v24

    const/4 v4, 0x1

    new-array v0, v4, [Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    move-object/from16 v25, v0

    const/4 v4, 0x0

    aput-object v24, v25, v4

    move-object/from16 v5, v27

    goto :goto_1

    :cond_3
    invoke-static {v5}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v46

    const/4 v12, 0x2

    const/16 v42, 0x0

    const/16 v38, 0x0

    const/16 v45, 0x0

    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_RESTRICTION:Ljava/lang/String;

    move-object/from16 v0, v46

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    const/4 v12, 0x2

    const/16 v42, 0x1

    :goto_3
    invoke-static {v5}, Lmf/org/apache/xerces/util/DOMUtil;->getNextSiblingElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v41

    if-eqz v41, :cond_4

    const-string/jumbo v4, "s4s-elt-must-match.1"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    sget-object v10, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_SIMPLETYPE:Ljava/lang/String;

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const-string v10, "(annotation?, (restriction | list | union))"

    aput-object v10, v8, v9

    const/4 v9, 0x2

    invoke-static/range {v41 .. v41}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-virtual {v0, v4, v8, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    const/4 v8, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v4, v5, v8, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->checkAttributes(Lmf/org/w3c/dom/Element;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)[Ljava/lang/Object;

    move-result-object v7

    if-eqz v42, :cond_b

    sget v4, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_BASE:I

    :goto_4
    aget-object v11, v7, v4

    check-cast v11, Lmf/org/apache/xerces/xni/QName;

    sget v4, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_MEMBERTYPES:I

    aget-object v39, v7, v4

    check-cast v39, Ljava/util/Vector;

    invoke-static {v5}, Lmf/org/apache/xerces/util/DOMUtil;->getFirstChildElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v28

    if-eqz v28, :cond_d

    invoke-static/range {v28 .. v28}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v4

    sget-object v8, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ANNOTATION:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, p4

    invoke-virtual {v0, v1, v7, v4, v2}, Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;->traverseAnnotationDecl(Lmf/org/w3c/dom/Element;[Ljava/lang/Object;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    move-result-object v24

    if-eqz v24, :cond_5

    if-nez v25, :cond_c

    const/4 v4, 0x1

    new-array v0, v4, [Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    move-object/from16 v25, v0

    const/4 v4, 0x0

    aput-object v24, v25, v4

    :cond_5
    :goto_5
    invoke-static/range {v28 .. v28}, Lmf/org/apache/xerces/util/DOMUtil;->getNextSiblingElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v28

    :cond_6
    :goto_6
    const/16 v17, 0x0

    if-nez v42, :cond_7

    if-eqz v38, :cond_f

    :cond_7
    if-eqz v11, :cond_f

    move-object/from16 v8, p0

    move-object v9, v5

    move-object/from16 v10, p1

    move-object/from16 v13, p4

    invoke-direct/range {v8 .. v13}, Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;->findDTValidator(Lmf/org/w3c/dom/Element;Ljava/lang/String;Lmf/org/apache/xerces/xni/QName;SLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    move-result-object v17

    if-nez v17, :cond_f

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;->fIsBuiltIn:Z

    if-eqz v4, :cond_f

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;->fIsBuiltIn:Z

    const/16 v40, 0x0

    goto/16 :goto_2

    :cond_8
    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_LIST:Ljava/lang/String;

    move-object/from16 v0, v46

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    const/16 v12, 0x10

    const/16 v38, 0x1

    goto/16 :goto_3

    :cond_9
    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_UNION:Ljava/lang/String;

    move-object/from16 v0, v46

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    const/16 v12, 0x8

    const/16 v45, 0x1

    goto/16 :goto_3

    :cond_a
    const-string/jumbo v4, "s4s-elt-must-match.1"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    sget-object v10, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_SIMPLETYPE:Ljava/lang/String;

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const-string v10, "(annotation?, (restriction | list | union))"

    aput-object v10, v8, v9

    const/4 v9, 0x2

    aput-object v46, v8, v9

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v4, v8, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    move-object/from16 v0, p4

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    const/4 v8, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4, v8}, Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;->errorType(Ljava/lang/String;Ljava/lang/String;S)Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    move-result-object v40

    goto/16 :goto_2

    :cond_b
    sget v4, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_ITEMTYPE:I

    goto/16 :goto_4

    :cond_c
    const/4 v4, 0x2

    new-array v0, v4, [Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    move-object/from16 v44, v0

    const/4 v4, 0x0

    const/4 v8, 0x0

    aget-object v8, v25, v8

    aput-object v8, v44, v4

    move-object/from16 v25, v44

    const/4 v4, 0x1

    aput-object v24, v25, v4

    goto/16 :goto_5

    :cond_d
    invoke-static {v5}, Lmf/org/apache/xerces/util/DOMUtil;->getSyntheticAnnotation(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_6

    const/4 v8, 0x0

    move-object/from16 v4, p0

    move-object/from16 v9, p4

    invoke-virtual/range {v4 .. v9}, Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;->traverseSyntheticAnnotation(Lmf/org/w3c/dom/Element;Ljava/lang/String;[Ljava/lang/Object;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    move-result-object v24

    if-nez v25, :cond_e

    const/4 v4, 0x1

    new-array v0, v4, [Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    move-object/from16 v25, v0

    const/4 v4, 0x0

    aput-object v24, v25, v4

    goto/16 :goto_6

    :cond_e
    const/4 v4, 0x2

    new-array v0, v4, [Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    move-object/from16 v44, v0

    const/4 v4, 0x0

    const/4 v8, 0x0

    aget-object v8, v25, v8

    aput-object v8, v44, v4

    move-object/from16 v25, v44

    const/4 v4, 0x1

    aput-object v24, v25, v4

    goto/16 :goto_6

    :cond_f
    move-object/from16 v26, v17

    const/16 v29, 0x0

    const/16 v30, 0x0

    if-eqz v45, :cond_10

    if-eqz v39, :cond_10

    invoke-virtual/range {v39 .. v39}, Ljava/util/Vector;->size()I

    move-result v4

    if-lez v4, :cond_10

    invoke-virtual/range {v39 .. v39}, Ljava/util/Vector;->size()I

    move-result v43

    new-instance v29, Ljava/util/ArrayList;

    move-object/from16 v0, v29

    move/from16 v1, v43

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/16 v36, 0x0

    :goto_7
    move/from16 v0, v36

    move/from16 v1, v43

    if-lt v0, v1, :cond_14

    :cond_10
    if-eqz v28, :cond_1e

    invoke-static/range {v28 .. v28}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v4

    sget-object v8, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_SIMPLETYPE:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1e

    if-nez v42, :cond_11

    if-eqz v38, :cond_19

    :cond_11
    if-eqz v11, :cond_12

    if-eqz v38, :cond_18

    const-string/jumbo v4, "src-simple-type.3.a"

    :goto_8
    const/4 v8, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v4, v8, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    :cond_12
    if-nez v26, :cond_34

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    invoke-virtual {v0, v1, v2, v3}, Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;->traverseLocal(Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    move-result-object v17

    :goto_9
    invoke-static/range {v28 .. v28}, Lmf/org/apache/xerces/util/DOMUtil;->getNextSiblingElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v28

    :goto_a
    if-nez v42, :cond_13

    if-eqz v38, :cond_25

    :cond_13
    if-nez v17, :cond_25

    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    move-object/from16 v0, p4

    invoke-virtual {v4, v7, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    move-object/from16 v0, p4

    iget-object v8, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    if-eqz v42, :cond_24

    const/4 v4, 0x2

    :goto_b
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v8, v4}, Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;->errorType(Ljava/lang/String;Ljava/lang/String;S)Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    move-result-object v40

    goto/16 :goto_2

    :cond_14
    move-object/from16 v0, v39

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lmf/org/apache/xerces/xni/QName;

    const/16 v17, 0x8

    move-object/from16 v13, p0

    move-object v14, v5

    move-object/from16 v15, p1

    move-object/from16 v18, p4

    invoke-direct/range {v13 .. v18}, Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;->findDTValidator(Lmf/org/w3c/dom/Element;Ljava/lang/String;Lmf/org/apache/xerces/xni/QName;SLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    move-result-object v30

    if-eqz v30, :cond_15

    invoke-interface/range {v30 .. v30}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->getVariety()S

    move-result v4

    const/4 v8, 0x3

    if-ne v4, v8, :cond_17

    invoke-interface/range {v30 .. v30}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->getMemberTypes()Lmf/org/apache/xerces/xs/XSObjectList;

    move-result-object v31

    const/16 v37, 0x0

    :goto_c
    invoke-interface/range {v31 .. v31}, Lmf/org/apache/xerces/xs/XSObjectList;->getLength()I

    move-result v4

    move/from16 v0, v37

    if-lt v0, v4, :cond_16

    :cond_15
    :goto_d
    add-int/lit8 v36, v36, 0x1

    goto/16 :goto_7

    :cond_16
    move-object/from16 v0, v31

    move/from16 v1, v37

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/xs/XSObjectList;->item(I)Lmf/org/apache/xerces/xs/XSObject;

    move-result-object v4

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v37, v37, 0x1

    goto :goto_c

    :cond_17
    invoke-virtual/range {v29 .. v30}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_18
    const-string/jumbo v4, "src-simple-type.2.a"

    goto/16 :goto_8

    :cond_19
    if-eqz v45, :cond_23

    if-nez v29, :cond_1a

    new-instance v29, Ljava/util/ArrayList;

    const/4 v4, 0x2

    move-object/from16 v0, v29

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    :cond_1a
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    invoke-virtual {v0, v1, v2, v3}, Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;->traverseLocal(Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    move-result-object v30

    if-eqz v30, :cond_1b

    invoke-interface/range {v30 .. v30}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->getVariety()S

    move-result v4

    const/4 v8, 0x3

    if-ne v4, v8, :cond_1d

    invoke-interface/range {v30 .. v30}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->getMemberTypes()Lmf/org/apache/xerces/xs/XSObjectList;

    move-result-object v31

    const/16 v37, 0x0

    :goto_e
    invoke-interface/range {v31 .. v31}, Lmf/org/apache/xerces/xs/XSObjectList;->getLength()I

    move-result v4

    move/from16 v0, v37

    if-lt v0, v4, :cond_1c

    :cond_1b
    :goto_f
    invoke-static/range {v28 .. v28}, Lmf/org/apache/xerces/util/DOMUtil;->getNextSiblingElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v28

    if-eqz v28, :cond_23

    invoke-static/range {v28 .. v28}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v4

    sget-object v8, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_SIMPLETYPE:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1a

    move-object/from16 v17, v26

    goto/16 :goto_a

    :cond_1c
    move-object/from16 v0, v31

    move/from16 v1, v37

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/xs/XSObjectList;->item(I)Lmf/org/apache/xerces/xs/XSObject;

    move-result-object v4

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v37, v37, 0x1

    goto :goto_e

    :cond_1d
    invoke-virtual/range {v29 .. v30}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_f

    :cond_1e
    if-nez v42, :cond_1f

    if-eqz v38, :cond_21

    :cond_1f
    if-nez v11, :cond_21

    if-eqz v38, :cond_20

    const-string/jumbo v4, "src-simple-type.3.b"

    :goto_10
    const/4 v8, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v8, v5}, Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    move-object/from16 v17, v26

    goto/16 :goto_a

    :cond_20
    const-string/jumbo v4, "src-simple-type.2.b"

    goto :goto_10

    :cond_21
    if-eqz v45, :cond_23

    if-eqz v39, :cond_22

    invoke-virtual/range {v39 .. v39}, Ljava/util/Vector;->size()I

    move-result v4

    if-nez v4, :cond_23

    :cond_22
    const-string/jumbo v4, "src-union-memberTypes-or-simpleTypes"

    const/4 v8, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v8, v5}, Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    :cond_23
    move-object/from16 v17, v26

    goto/16 :goto_a

    :cond_24
    const/16 v4, 0x10

    goto/16 :goto_b

    :cond_25
    if-eqz v45, :cond_27

    if-eqz v29, :cond_26

    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_27

    :cond_26
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    move-object/from16 v0, p4

    invoke-virtual {v4, v7, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    move-object/from16 v0, p4

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    const/16 v8, 0x8

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4, v8}, Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;->errorType(Ljava/lang/String;Ljava/lang/String;S)Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    move-result-object v40

    goto/16 :goto_2

    :cond_27
    if-eqz v38, :cond_28

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;->isListDatatype(Lmf/org/apache/xerces/impl/dv/XSSimpleType;)Z

    move-result v4

    if-eqz v4, :cond_28

    const-string v4, "cos-st-restricts.2.1"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p1, v8, v9

    const/4 v9, 0x1

    invoke-interface/range {v17 .. v17}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->getName()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v8, v5}, Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    move-object/from16 v0, p4

    invoke-virtual {v4, v7, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    move-object/from16 v0, p4

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    const/16 v8, 0x10

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4, v8}, Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;->errorType(Ljava/lang/String;Ljava/lang/String;S)Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    move-result-object v40

    goto/16 :goto_2

    :cond_28
    const/16 v40, 0x0

    if-eqz v42, :cond_2d

    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    iget-object v13, v4, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fDVFactory:Lmf/org/apache/xerces/impl/dv/SchemaDVFactory;

    move-object/from16 v0, p4

    iget-object v15, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    move/from16 v0, v35

    int-to-short v0, v0

    move/from16 v16, v0

    if-nez v25, :cond_2c

    const/16 v18, 0x0

    :goto_11
    move-object/from16 v14, p1

    invoke-virtual/range {v13 .. v18}, Lmf/org/apache/xerces/impl/dv/SchemaDVFactory;->createTypeRestriction(Ljava/lang/String;Ljava/lang/String;SLmf/org/apache/xerces/impl/dv/XSSimpleType;Lmf/org/apache/xerces/xs/XSObjectList;)Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    move-result-object v40

    :cond_29
    :goto_12
    if-eqz v42, :cond_2a

    if-eqz v28, :cond_2a

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v17

    move-object/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3}, Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;->traverseFacets(Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/dv/XSSimpleType;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser$FacetInfo;

    move-result-object v33

    move-object/from16 v0, v33

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser$FacetInfo;->nodeAfterFacets:Lmf/org/w3c/dom/Element;

    move-object/from16 v28, v0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;->fValidationState:Lmf/org/apache/xerces/impl/validation/ValidationState;

    move-object/from16 v0, p4

    iget-object v8, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fNamespaceSupport:Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport;

    invoke-virtual {v4, v8}, Lmf/org/apache/xerces/impl/validation/ValidationState;->setNamespaceSupport(Lmf/org/apache/xerces/xni/NamespaceContext;)V

    move-object/from16 v0, v33

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser$FacetInfo;->facetdata:Lmf/org/apache/xerces/impl/dv/XSFacets;

    move-object/from16 v0, v33

    iget-short v8, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser$FacetInfo;->fPresentFacets:S

    move-object/from16 v0, v33

    iget-short v9, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser$FacetInfo;->fFixedFacets:S

    move-object/from16 v0, p0

    iget-object v10, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;->fValidationState:Lmf/org/apache/xerces/impl/validation/ValidationState;

    move-object/from16 v0, v40

    invoke-interface {v0, v4, v8, v9, v10}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->applyFacets(Lmf/org/apache/xerces/impl/dv/XSFacets;SSLmf/org/apache/xerces/impl/dv/ValidationContext;)V
    :try_end_0
    .catch Lmf/org/apache/xerces/impl/dv/InvalidDatatypeFacetException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2a
    :goto_13
    if-eqz v28, :cond_2b

    if-eqz v42, :cond_32

    const-string/jumbo v4, "s4s-elt-must-match.1"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    sget-object v10, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_RESTRICTION:Ljava/lang/String;

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const-string v10, "(annotation?, (simpleType?, (minExclusive | minInclusive | maxExclusive | maxInclusive | totalDigits | fractionDigits | length | minLength | maxLength | enumeration | whiteSpace | pattern)*))"

    aput-object v10, v8, v9

    const/4 v9, 0x2

    invoke-static/range {v28 .. v28}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v4, v8, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    :cond_2b
    :goto_14
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    move-object/from16 v0, p4

    invoke-virtual {v4, v7, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    goto/16 :goto_2

    :cond_2c
    new-instance v18, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    move-object/from16 v0, v25

    array-length v4, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-direct {v0, v1, v4}, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;-><init>([Lmf/org/apache/xerces/xs/XSObject;I)V

    goto :goto_11

    :cond_2d
    if-eqz v38, :cond_2f

    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    iget-object v13, v4, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fDVFactory:Lmf/org/apache/xerces/impl/dv/SchemaDVFactory;

    move-object/from16 v0, p4

    iget-object v15, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    move/from16 v0, v35

    int-to-short v0, v0

    move/from16 v16, v0

    if-nez v25, :cond_2e

    const/16 v18, 0x0

    :goto_15
    move-object/from16 v14, p1

    invoke-virtual/range {v13 .. v18}, Lmf/org/apache/xerces/impl/dv/SchemaDVFactory;->createTypeList(Ljava/lang/String;Ljava/lang/String;SLmf/org/apache/xerces/impl/dv/XSSimpleType;Lmf/org/apache/xerces/xs/XSObjectList;)Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    move-result-object v40

    goto/16 :goto_12

    :cond_2e
    new-instance v18, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    move-object/from16 v0, v25

    array-length v4, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-direct {v0, v1, v4}, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;-><init>([Lmf/org/apache/xerces/xs/XSObject;I)V

    goto :goto_15

    :cond_2f
    if-eqz v45, :cond_29

    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v22

    check-cast v22, [Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    iget-object v0, v4, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fDVFactory:Lmf/org/apache/xerces/impl/dv/SchemaDVFactory;

    move-object/from16 v18, v0

    move-object/from16 v0, p4

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    move-object/from16 v20, v0

    move/from16 v0, v35

    int-to-short v0, v0

    move/from16 v21, v0

    if-nez v25, :cond_30

    const/16 v23, 0x0

    :goto_16
    move-object/from16 v19, p1

    invoke-virtual/range {v18 .. v23}, Lmf/org/apache/xerces/impl/dv/SchemaDVFactory;->createTypeUnion(Ljava/lang/String;Ljava/lang/String;S[Lmf/org/apache/xerces/impl/dv/XSSimpleType;Lmf/org/apache/xerces/xs/XSObjectList;)Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    move-result-object v40

    goto/16 :goto_12

    :cond_30
    new-instance v23, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    move-object/from16 v0, v25

    array-length v4, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-direct {v0, v1, v4}, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;-><init>([Lmf/org/apache/xerces/xs/XSObject;I)V

    goto :goto_16

    :catch_0
    move-exception v32

    invoke-virtual/range {v32 .. v32}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeFacetException;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v32 .. v32}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeFacetException;->getArgs()[Ljava/lang/Object;

    move-result-object v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v8, v5}, Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    iget-object v13, v4, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fDVFactory:Lmf/org/apache/xerces/impl/dv/SchemaDVFactory;

    move-object/from16 v0, p4

    iget-object v15, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    move/from16 v0, v35

    int-to-short v0, v0

    move/from16 v16, v0

    if-nez v25, :cond_31

    const/16 v18, 0x0

    :goto_17
    move-object/from16 v14, p1

    invoke-virtual/range {v13 .. v18}, Lmf/org/apache/xerces/impl/dv/SchemaDVFactory;->createTypeRestriction(Ljava/lang/String;Ljava/lang/String;SLmf/org/apache/xerces/impl/dv/XSSimpleType;Lmf/org/apache/xerces/xs/XSObjectList;)Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    move-result-object v40

    goto/16 :goto_13

    :cond_31
    new-instance v18, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    move-object/from16 v0, v25

    array-length v4, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-direct {v0, v1, v4}, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;-><init>([Lmf/org/apache/xerces/xs/XSObject;I)V

    goto :goto_17

    :cond_32
    if-eqz v38, :cond_33

    const-string/jumbo v4, "s4s-elt-must-match.1"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    sget-object v10, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_LIST:Ljava/lang/String;

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const-string v10, "(annotation?, (simpleType?))"

    aput-object v10, v8, v9

    const/4 v9, 0x2

    invoke-static/range {v28 .. v28}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v4, v8, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    goto/16 :goto_14

    :cond_33
    if-eqz v45, :cond_2b

    const-string/jumbo v4, "s4s-elt-must-match.1"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    sget-object v10, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_UNION:Ljava/lang/String;

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const-string v10, "(annotation?, (simpleType*))"

    aput-object v10, v8, v9

    const/4 v9, 0x2

    invoke-static/range {v28 .. v28}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v4, v8, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    goto/16 :goto_14

    :cond_34
    move-object/from16 v17, v26

    goto/16 :goto_9

    :cond_35
    move-object/from16 v5, v27

    goto/16 :goto_1
.end method

.method private isListDatatype(Lmf/org/apache/xerces/impl/dv/XSSimpleType;)Z
    .locals 6

    const/4 v5, 0x2

    const/4 v3, 0x1

    invoke-interface {p1}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->getVariety()S

    move-result v2

    if-ne v2, v5, :cond_0

    move v2, v3

    :goto_0
    return v2

    :cond_0
    invoke-interface {p1}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->getVariety()S

    move-result v2

    const/4 v4, 0x3

    if-ne v2, v4, :cond_1

    invoke-interface {p1}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->getMemberTypes()Lmf/org/apache/xerces/xs/XSObjectList;

    move-result-object v1

    const/4 v0, 0x0

    :goto_1
    invoke-interface {v1}, Lmf/org/apache/xerces/xs/XSObjectList;->getLength()I

    move-result v2

    if-lt v0, v2, :cond_2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    invoke-interface {v1, v0}, Lmf/org/apache/xerces/xs/XSObjectList;->item(I)Lmf/org/apache/xerces/xs/XSObject;

    move-result-object v2

    check-cast v2, Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    invoke-interface {v2}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->getVariety()S

    move-result v2

    if-ne v2, v5, :cond_3

    move v2, v3

    goto :goto_0

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private traverseSimpleTypeDecl(Lmf/org/w3c/dom/Element;[Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)Lmf/org/apache/xerces/impl/dv/XSSimpleType;
    .locals 6

    sget v0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_NAME:I

    aget-object v1, p2, v0

    check-cast v1, Ljava/lang/String;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;->getSimpleType(Ljava/lang/String;Lmf/org/w3c/dom/Element;[Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method traverseGlobal(Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)Lmf/org/apache/xerces/impl/dv/XSSimpleType;
    .locals 10

    const/4 v9, 0x1

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v5, p1, v9, p2}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->checkAttributes(Lmf/org/w3c/dom/Element;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)[Ljava/lang/Object;

    move-result-object v0

    sget v5, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_NAME:I

    aget-object v2, v0, v5

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_0

    sget v5, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_NAME:I

    const-string v6, "(no name)"

    aput-object v6, v0, v5

    :cond_0
    invoke-direct {p0, p1, v0, p2, p3}, Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;->traverseSimpleTypeDecl(Lmf/org/w3c/dom/Element;[Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    move-result-object v3

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v5, v0, p2}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    if-nez v2, :cond_1

    const-string/jumbo v5, "s4s-att-must-appear"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    sget-object v8, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_SIMPLETYPE:Ljava/lang/String;

    aput-object v8, v6, v7

    sget-object v7, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_NAME:Ljava/lang/String;

    aput-object v7, v6, v9

    invoke-virtual {p0, v5, v6, p1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    const/4 v3, 0x0

    :cond_1
    if-eqz v3, :cond_5

    invoke-interface {v3}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p3, v5}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalTypeDecl(Ljava/lang/String;)Lmf/org/apache/xerces/xs/XSTypeDefinition;

    move-result-object v5

    if-nez v5, :cond_2

    invoke-virtual {p3, v3}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->addGlobalSimpleTypeDecl(Lmf/org/apache/xerces/impl/dv/XSSimpleType;)V

    :cond_2
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    invoke-virtual {v5, p2}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->schemaDocument2SystemId(Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p3, v5, v1}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalTypeDecl(Ljava/lang/String;Ljava/lang/String;)Lmf/org/apache/xerces/xs/XSTypeDefinition;

    move-result-object v4

    if-nez v4, :cond_3

    invoke-virtual {p3, v3, v1}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->addGlobalSimpleTypeDecl(Lmf/org/apache/xerces/impl/dv/XSSimpleType;Ljava/lang/String;)V

    :cond_3
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    iget-boolean v5, v5, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fTolerateDuplicates:Z

    if-eqz v5, :cond_5

    if-eqz v4, :cond_4

    instance-of v5, v4, Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    if-eqz v5, :cond_4

    move-object v3, v4

    check-cast v3, Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    :cond_4
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    invoke-virtual {v5, v3}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->addGlobalTypeDecl(Lmf/org/apache/xerces/xs/XSTypeDefinition;)V

    :cond_5
    return-object v3
.end method

.method traverseLocal(Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)Lmf/org/apache/xerces/impl/dv/XSSimpleType;
    .locals 7

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, p2}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->checkAttributes(Lmf/org/w3c/dom/Element;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)[Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, p1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;->genAnonTypeName(Lmf/org/w3c/dom/Element;)Ljava/lang/String;

    move-result-object v1

    move-object v0, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;->getSimpleType(Ljava/lang/String;Lmf/org/w3c/dom/Element;[Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    move-result-object v6

    instance-of v0, v6, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    if-eqz v0, :cond_0

    move-object v0, v6

    check-cast v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->setAnonymous(Z)V

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v0, v3, p2}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    return-object v6
.end method
