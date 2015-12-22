.class abstract Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractParticleTraverser;
.super Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;
.source "XSDAbstractParticleTraverser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractParticleTraverser$ParticleArray;
    }
.end annotation


# instance fields
.field fPArray:Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractParticleTraverser$ParticleArray;


# direct methods
.method constructor <init>(Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;-><init>(Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;)V

    new-instance v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractParticleTraverser$ParticleArray;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractParticleTraverser$ParticleArray;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractParticleTraverser;->fPArray:Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractParticleTraverser$ParticleArray;

    return-void
.end method

.method private traverseSeqChoice(Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;IZLmf/org/apache/xerces/xs/XSObject;)Lmf/org/apache/xerces/impl/xs/XSParticleDecl;
    .locals 27

    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractParticleTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    const/4 v5, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v4, v0, v5, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->checkAttributes(Lmf/org/w3c/dom/Element;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)[Ljava/lang/Object;

    move-result-object v7

    invoke-static/range {p1 .. p1}, Lmf/org/apache/xerces/util/DOMUtil;->getFirstChildElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v21

    const/16 v18, 0x0

    if-eqz v21, :cond_0

    invoke-static/range {v21 .. v21}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ANNOTATION:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v7, v4, v2}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractParticleTraverser;->traverseAnnotationDecl(Lmf/org/w3c/dom/Element;[Ljava/lang/Object;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    move-result-object v18

    invoke-static/range {v21 .. v21}, Lmf/org/apache/xerces/util/DOMUtil;->getNextSiblingElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v9

    :goto_0
    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractParticleTraverser;->fPArray:Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractParticleTraverser$ParticleArray;

    invoke-virtual {v4}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractParticleTraverser$ParticleArray;->pushContext()V

    :goto_1
    if-nez v9, :cond_1

    const/4 v12, 0x0

    sget v4, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_MINOCCURS:I

    aget-object v26, v7, v4

    check-cast v26, Lmf/org/apache/xerces/impl/xs/util/XInt;

    sget v4, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_MAXOCCURS:I

    aget-object v25, v7, v4

    check-cast v25, Lmf/org/apache/xerces/impl/xs/util/XInt;

    sget v4, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_FROMDEFAULT:I

    aget-object v23, v7, v4

    check-cast v23, Ljava/lang/Long;

    new-instance v24, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;

    invoke-direct/range {v24 .. v24}, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;-><init>()V

    if-eqz p5, :cond_a

    const/16 v4, 0x65

    :goto_2
    move-object/from16 v0, v24

    iput-short v4, v0, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fCompositor:S

    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractParticleTraverser;->fPArray:Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractParticleTraverser$ParticleArray;

    invoke-virtual {v4}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractParticleTraverser$ParticleArray;->getParticleCount()I

    move-result v4

    move-object/from16 v0, v24

    iput v4, v0, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fParticleCount:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractParticleTraverser;->fPArray:Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractParticleTraverser$ParticleArray;

    invoke-virtual {v4}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractParticleTraverser$ParticleArray;->popContext()[Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    move-result-object v4

    move-object/from16 v0, v24

    iput-object v4, v0, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fParticles:[Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    if-eqz v18, :cond_b

    new-instance v19, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    invoke-direct/range {v19 .. v19}, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;-><init>()V

    move-object/from16 v4, v19

    check-cast v4, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->addXSObject(Lmf/org/apache/xerces/xs/XSObject;)V

    :goto_3
    move-object/from16 v0, v19

    move-object/from16 v1, v24

    iput-object v0, v1, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;

    new-instance v12, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    invoke-direct {v12}, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;-><init>()V

    const/4 v4, 0x3

    iput-short v4, v12, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fType:S

    invoke-virtual/range {v26 .. v26}, Lmf/org/apache/xerces/impl/xs/util/XInt;->intValue()I

    move-result v4

    iput v4, v12, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fMinOccurs:I

    invoke-virtual/range {v25 .. v25}, Lmf/org/apache/xerces/impl/xs/util/XInt;->intValue()I

    move-result v4

    iput v4, v12, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fMaxOccurs:I

    move-object/from16 v0, v24

    iput-object v0, v12, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fValue:Lmf/org/apache/xerces/xs/XSTerm;

    move-object/from16 v0, v19

    iput-object v0, v12, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;

    if-eqz p5, :cond_c

    sget-object v13, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_CHOICE:Ljava/lang/String;

    :goto_4
    invoke-interface/range {p1 .. p1}, Lmf/org/w3c/dom/Element;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v14

    check-cast v14, Lmf/org/w3c/dom/Element;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    move-object/from16 v11, p0

    move/from16 v15, p4

    invoke-virtual/range {v11 .. v17}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractParticleTraverser;->checkOccurrences(Lmf/org/apache/xerces/impl/xs/XSParticleDecl;Ljava/lang/String;Lmf/org/w3c/dom/Element;IJ)Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractParticleTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    move-object/from16 v0, p2

    invoke-virtual {v4, v7, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    return-object v12

    :cond_0
    invoke-static/range {p1 .. p1}, Lmf/org/apache/xerces/util/DOMUtil;->getSyntheticAnnotation(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_d

    const/4 v8, 0x0

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v9, p2

    invoke-virtual/range {v4 .. v9}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractParticleTraverser;->traverseSyntheticAnnotation(Lmf/org/w3c/dom/Element;Ljava/lang/String;[Ljava/lang/Object;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    move-result-object v18

    move-object/from16 v9, v21

    goto/16 :goto_0

    :cond_1
    const/4 v12, 0x0

    invoke-static {v9}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v22

    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ELEMENT:Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractParticleTraverser;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    iget-object v8, v4, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fElementTraverser:Lmf/org/apache/xerces/impl/xs/traversers/XSDElementTraverser;

    const/4 v12, 0x0

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move-object/from16 v13, p6

    invoke-virtual/range {v8 .. v13}, Lmf/org/apache/xerces/impl/xs/traversers/XSDElementTraverser;->traverseLocal(Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;ILmf/org/apache/xerces/xs/XSObject;)Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    move-result-object v12

    :cond_2
    :goto_5
    if-eqz v12, :cond_3

    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractParticleTraverser;->fPArray:Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractParticleTraverser$ParticleArray;

    invoke-virtual {v4, v12}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractParticleTraverser$ParticleArray;->addParticle(Lmf/org/apache/xerces/impl/xs/XSParticleDecl;)V

    :cond_3
    invoke-static {v9}, Lmf/org/apache/xerces/util/DOMUtil;->getNextSiblingElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v9

    goto/16 :goto_1

    :cond_4
    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_GROUP:Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractParticleTraverser;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    iget-object v4, v4, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fGroupTraverser:Lmf/org/apache/xerces/impl/xs/traversers/XSDGroupTraverser;

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v4, v9, v0, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDGroupTraverser;->traverseLocal(Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractParticleTraverser;->hasAllContent(Lmf/org/apache/xerces/impl/xs/XSParticleDecl;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v12, 0x0

    const-string v4, "cos-all-limited.1.2"

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v9}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractParticleTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    goto :goto_5

    :cond_5
    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_CHOICE:Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    const/4 v12, 0x0

    move-object/from16 v8, p0

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move-object/from16 v13, p6

    invoke-virtual/range {v8 .. v13}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractParticleTraverser;->traverseChoice(Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;ILmf/org/apache/xerces/xs/XSObject;)Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    move-result-object v12

    goto :goto_5

    :cond_6
    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_SEQUENCE:Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    const/4 v12, 0x0

    move-object/from16 v8, p0

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move-object/from16 v13, p6

    invoke-virtual/range {v8 .. v13}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractParticleTraverser;->traverseSequence(Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;ILmf/org/apache/xerces/xs/XSObject;)Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    move-result-object v12

    goto :goto_5

    :cond_7
    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ANY:Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractParticleTraverser;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    iget-object v4, v4, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fWildCardTraverser:Lmf/org/apache/xerces/impl/xs/traversers/XSDWildcardTraverser;

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v4, v9, v0, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDWildcardTraverser;->traverseAny(Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    move-result-object v12

    goto/16 :goto_5

    :cond_8
    if-eqz p5, :cond_9

    const/4 v4, 0x3

    new-array v0, v4, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/4 v4, 0x0

    const-string v5, "choice"

    aput-object v5, v20, v4

    const/4 v4, 0x1

    const-string v5, "(annotation?, (element | group | choice | sequence | any)*)"

    aput-object v5, v20, v4

    const/4 v4, 0x2

    invoke-static {v9}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v20, v4

    :goto_6
    const-string/jumbo v4, "s4s-elt-must-match.1"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v4, v1, v9}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractParticleTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    goto/16 :goto_5

    :cond_9
    const/4 v4, 0x3

    new-array v0, v4, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/4 v4, 0x0

    const-string/jumbo v5, "sequence"

    aput-object v5, v20, v4

    const/4 v4, 0x1

    const-string v5, "(annotation?, (element | group | choice | sequence | any)*)"

    aput-object v5, v20, v4

    const/4 v4, 0x2

    invoke-static {v9}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v20, v4

    goto :goto_6

    :cond_a
    const/16 v4, 0x66

    goto/16 :goto_2

    :cond_b
    sget-object v19, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->EMPTY_LIST:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    goto/16 :goto_3

    :cond_c
    sget-object v13, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_SEQUENCE:Ljava/lang/String;

    goto/16 :goto_4

    :cond_d
    move-object/from16 v9, v21

    goto/16 :goto_0
.end method


# virtual methods
.method protected hasAllContent(Lmf/org/apache/xerces/impl/xs/XSParticleDecl;)Z
    .locals 3

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    iget-short v0, p1, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fType:S

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    iget-object v0, p1, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fValue:Lmf/org/apache/xerces/xs/XSTerm;

    check-cast v0, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;

    iget-short v0, v0, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fCompositor:S

    const/16 v2, 0x67

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method traverseAll(Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;ILmf/org/apache/xerces/xs/XSObject;)Lmf/org/apache/xerces/impl/xs/XSParticleDecl;
    .locals 27

    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractParticleTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    const/4 v5, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v4, v0, v5, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->checkAttributes(Lmf/org/w3c/dom/Element;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)[Ljava/lang/Object;

    move-result-object v7

    invoke-static/range {p1 .. p1}, Lmf/org/apache/xerces/util/DOMUtil;->getFirstChildElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v21

    const/16 v18, 0x0

    if-eqz v21, :cond_0

    invoke-static/range {v21 .. v21}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ANNOTATION:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v7, v4, v2}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractParticleTraverser;->traverseAnnotationDecl(Lmf/org/w3c/dom/Element;[Ljava/lang/Object;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    move-result-object v18

    invoke-static/range {v21 .. v21}, Lmf/org/apache/xerces/util/DOMUtil;->getNextSiblingElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v9

    :goto_0
    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractParticleTraverser;->fPArray:Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractParticleTraverser$ParticleArray;

    invoke-virtual {v4}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractParticleTraverser$ParticleArray;->pushContext()V

    :goto_1
    if-nez v9, :cond_1

    const/4 v12, 0x0

    sget v4, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_MINOCCURS:I

    aget-object v26, v7, v4

    check-cast v26, Lmf/org/apache/xerces/impl/xs/util/XInt;

    sget v4, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_MAXOCCURS:I

    aget-object v25, v7, v4

    check-cast v25, Lmf/org/apache/xerces/impl/xs/util/XInt;

    sget v4, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_FROMDEFAULT:I

    aget-object v23, v7, v4

    check-cast v23, Ljava/lang/Long;

    new-instance v24, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;

    invoke-direct/range {v24 .. v24}, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;-><init>()V

    const/16 v4, 0x67

    move-object/from16 v0, v24

    iput-short v4, v0, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fCompositor:S

    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractParticleTraverser;->fPArray:Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractParticleTraverser$ParticleArray;

    invoke-virtual {v4}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractParticleTraverser$ParticleArray;->getParticleCount()I

    move-result v4

    move-object/from16 v0, v24

    iput v4, v0, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fParticleCount:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractParticleTraverser;->fPArray:Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractParticleTraverser$ParticleArray;

    invoke-virtual {v4}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractParticleTraverser$ParticleArray;->popContext()[Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    move-result-object v4

    move-object/from16 v0, v24

    iput-object v4, v0, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fParticles:[Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    if-eqz v18, :cond_4

    new-instance v19, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    invoke-direct/range {v19 .. v19}, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;-><init>()V

    move-object/from16 v4, v19

    check-cast v4, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->addXSObject(Lmf/org/apache/xerces/xs/XSObject;)V

    :goto_2
    move-object/from16 v0, v19

    move-object/from16 v1, v24

    iput-object v0, v1, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;

    new-instance v12, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    invoke-direct {v12}, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;-><init>()V

    const/4 v4, 0x3

    iput-short v4, v12, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fType:S

    invoke-virtual/range {v26 .. v26}, Lmf/org/apache/xerces/impl/xs/util/XInt;->intValue()I

    move-result v4

    iput v4, v12, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fMinOccurs:I

    invoke-virtual/range {v25 .. v25}, Lmf/org/apache/xerces/impl/xs/util/XInt;->intValue()I

    move-result v4

    iput v4, v12, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fMaxOccurs:I

    move-object/from16 v0, v24

    iput-object v0, v12, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fValue:Lmf/org/apache/xerces/xs/XSTerm;

    move-object/from16 v0, v19

    iput-object v0, v12, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;

    sget-object v13, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ALL:Ljava/lang/String;

    invoke-interface/range {p1 .. p1}, Lmf/org/w3c/dom/Element;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v14

    check-cast v14, Lmf/org/w3c/dom/Element;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    move-object/from16 v11, p0

    move/from16 v15, p4

    invoke-virtual/range {v11 .. v17}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractParticleTraverser;->checkOccurrences(Lmf/org/apache/xerces/impl/xs/XSParticleDecl;Ljava/lang/String;Lmf/org/w3c/dom/Element;IJ)Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractParticleTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    move-object/from16 v0, p2

    invoke-virtual {v4, v7, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    return-object v12

    :cond_0
    invoke-static/range {p1 .. p1}, Lmf/org/apache/xerces/util/DOMUtil;->getSyntheticAnnotation(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_5

    const/4 v8, 0x0

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v9, p2

    invoke-virtual/range {v4 .. v9}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractParticleTraverser;->traverseSyntheticAnnotation(Lmf/org/w3c/dom/Element;Ljava/lang/String;[Ljava/lang/Object;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    move-result-object v18

    move-object/from16 v9, v21

    goto/16 :goto_0

    :cond_1
    const/4 v12, 0x0

    invoke-static {v9}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v22

    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ELEMENT:Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractParticleTraverser;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    iget-object v8, v4, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fElementTraverser:Lmf/org/apache/xerces/impl/xs/traversers/XSDElementTraverser;

    const/4 v12, 0x1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move-object/from16 v13, p5

    invoke-virtual/range {v8 .. v13}, Lmf/org/apache/xerces/impl/xs/traversers/XSDElementTraverser;->traverseLocal(Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;ILmf/org/apache/xerces/xs/XSObject;)Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    move-result-object v12

    :goto_3
    if-eqz v12, :cond_2

    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractParticleTraverser;->fPArray:Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractParticleTraverser$ParticleArray;

    invoke-virtual {v4, v12}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractParticleTraverser$ParticleArray;->addParticle(Lmf/org/apache/xerces/impl/xs/XSParticleDecl;)V

    :cond_2
    invoke-static {v9}, Lmf/org/apache/xerces/util/DOMUtil;->getNextSiblingElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v9

    goto/16 :goto_1

    :cond_3
    const/4 v4, 0x3

    new-array v0, v4, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/4 v4, 0x0

    const-string v5, "all"

    aput-object v5, v20, v4

    const/4 v4, 0x1

    const-string v5, "(annotation?, element*)"

    aput-object v5, v20, v4

    const/4 v4, 0x2

    invoke-static {v9}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v20, v4

    const-string/jumbo v4, "s4s-elt-must-match.1"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v4, v1, v9}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractParticleTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    goto :goto_3

    :cond_4
    sget-object v19, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->EMPTY_LIST:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    goto/16 :goto_2

    :cond_5
    move-object/from16 v9, v21

    goto/16 :goto_0
.end method

.method traverseChoice(Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;ILmf/org/apache/xerces/xs/XSObject;)Lmf/org/apache/xerces/impl/xs/XSParticleDecl;
    .locals 7

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractParticleTraverser;->traverseSeqChoice(Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;IZLmf/org/apache/xerces/xs/XSObject;)Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    move-result-object v0

    return-object v0
.end method

.method traverseSequence(Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;ILmf/org/apache/xerces/xs/XSObject;)Lmf/org/apache/xerces/impl/xs/XSParticleDecl;
    .locals 7

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractParticleTraverser;->traverseSeqChoice(Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;IZLmf/org/apache/xerces/xs/XSObject;)Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    move-result-object v0

    return-object v0
.end method
