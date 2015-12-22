.class Lmf/org/apache/xerces/impl/xs/traversers/XSDKeyrefTraverser;
.super Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractIDConstraintTraverser;
.source "XSDKeyrefTraverser.java"


# direct methods
.method public constructor <init>(Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractIDConstraintTraverser;-><init>(Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;)V

    return-void
.end method


# virtual methods
.method traverse(Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/XSElementDecl;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)V
    .locals 13

    iget-object v9, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDKeyrefTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    const/4 v10, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v9, p1, v10, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->checkAttributes(Lmf/org/w3c/dom/Element;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)[Ljava/lang/Object;

    move-result-object v1

    sget v9, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_NAME:I

    aget-object v6, v1, v9

    check-cast v6, Ljava/lang/String;

    if-nez v6, :cond_0

    const-string/jumbo v9, "s4s-att-must-appear"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    sget-object v12, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_KEYREF:Ljava/lang/String;

    aput-object v12, v10, v11

    const/4 v11, 0x1

    sget-object v12, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_NAME:Ljava/lang/String;

    aput-object v12, v10, v11

    invoke-virtual {p0, v9, v10, p1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDKeyrefTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    iget-object v9, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDKeyrefTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    move-object/from16 v0, p3

    invoke-virtual {v9, v1, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    :goto_0
    return-void

    :cond_0
    sget v9, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_REFER:I

    aget-object v3, v1, v9

    check-cast v3, Lmf/org/apache/xerces/xni/QName;

    if-nez v3, :cond_1

    const-string/jumbo v9, "s4s-att-must-appear"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    sget-object v12, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_KEYREF:Ljava/lang/String;

    aput-object v12, v10, v11

    const/4 v11, 0x1

    sget-object v12, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_REFER:Ljava/lang/String;

    aput-object v12, v10, v11

    invoke-virtual {p0, v9, v10, p1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDKeyrefTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    iget-object v9, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDKeyrefTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    move-object/from16 v0, p3

    invoke-virtual {v9, v1, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    iget-object v9, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDKeyrefTraverser;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    const/4 v10, 0x5

    move-object/from16 v0, p3

    invoke-virtual {v9, v0, v10, v3, p1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->getGlobalDecl(Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;ILmf/org/apache/xerces/xni/QName;Lmf/org/w3c/dom/Element;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;

    if-eqz v8, :cond_3

    invoke-virtual {v8}, Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;->getCategory()S

    move-result v9

    const/4 v10, 0x1

    if-eq v9, v10, :cond_2

    invoke-virtual {v8}, Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;->getCategory()S

    move-result v9

    const/4 v10, 0x3

    if-ne v9, v10, :cond_4

    :cond_2
    move-object v4, v8

    check-cast v4, Lmf/org/apache/xerces/impl/xs/identity/UniqueOrKey;

    :cond_3
    :goto_1
    if-nez v4, :cond_5

    iget-object v9, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDKeyrefTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    move-object/from16 v0, p3

    invoke-virtual {v9, v1, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    goto :goto_0

    :cond_4
    const-string/jumbo v9, "src-resolve"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget-object v12, v3, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-string/jumbo v12, "identity constraint key/unique"

    aput-object v12, v10, v11

    invoke-virtual {p0, v9, v10, p1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDKeyrefTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    goto :goto_1

    :cond_5
    new-instance v5, Lmf/org/apache/xerces/impl/xs/identity/KeyRef;

    move-object/from16 v0, p3

    iget-object v9, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    iget-object v10, p2, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fName:Ljava/lang/String;

    invoke-direct {v5, v9, v6, v10, v4}, Lmf/org/apache/xerces/impl/xs/identity/KeyRef;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/identity/UniqueOrKey;)V

    move-object/from16 v0, p3

    invoke-virtual {p0, v5, p1, v0, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDKeyrefTraverser;->traverseIdentityConstraint(Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;[Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-virtual {v4}, Lmf/org/apache/xerces/impl/xs/identity/UniqueOrKey;->getFieldCount()I

    move-result v9

    invoke-virtual {v5}, Lmf/org/apache/xerces/impl/xs/identity/KeyRef;->getFieldCount()I

    move-result v10

    if-eq v9, v10, :cond_7

    const-string v9, "c-props-correct.2"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v6, v10, v11

    const/4 v11, 0x1

    invoke-virtual {v4}, Lmf/org/apache/xerces/impl/xs/identity/UniqueOrKey;->getIdentityConstraintName()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {p0, v9, v10, p1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDKeyrefTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    :cond_6
    :goto_2
    iget-object v9, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDKeyrefTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    move-object/from16 v0, p3

    invoke-virtual {v9, v1, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    goto/16 :goto_0

    :cond_7
    invoke-virtual {v5}, Lmf/org/apache/xerces/impl/xs/identity/KeyRef;->getIdentityConstraintName()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p4

    invoke-virtual {v0, v9}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getIDConstraintDecl(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;

    move-result-object v9

    if-nez v9, :cond_8

    move-object/from16 v0, p4

    invoke-virtual {v0, p2, v5}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->addIDConstraintDecl(Lmf/org/apache/xerces/impl/xs/XSElementDecl;Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;)V

    :cond_8
    iget-object v9, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDKeyrefTraverser;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    move-object/from16 v0, p3

    invoke-virtual {v9, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->schemaDocument2SystemId(Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5}, Lmf/org/apache/xerces/impl/xs/identity/KeyRef;->getIdentityConstraintName()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p4

    invoke-virtual {v0, v9, v7}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getIDConstraintDecl(Ljava/lang/String;Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;

    move-result-object v2

    if-nez v2, :cond_9

    move-object/from16 v0, p4

    invoke-virtual {v0, p2, v5, v7}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->addIDConstraintDecl(Lmf/org/apache/xerces/impl/xs/XSElementDecl;Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;Ljava/lang/String;)V

    :cond_9
    iget-object v9, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDKeyrefTraverser;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    iget-boolean v9, v9, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fTolerateDuplicates:Z

    if-eqz v9, :cond_6

    if-eqz v2, :cond_a

    instance-of v9, v2, Lmf/org/apache/xerces/impl/xs/identity/KeyRef;

    if-eqz v9, :cond_a

    move-object v5, v2

    check-cast v5, Lmf/org/apache/xerces/impl/xs/identity/KeyRef;

    :cond_a
    iget-object v9, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDKeyrefTraverser;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    invoke-virtual {v9, v5}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->addIDConstraintDecl(Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;)V

    goto :goto_2
.end method
