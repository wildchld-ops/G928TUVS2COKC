.class public Lmf/org/apache/xerces/impl/xs/models/CMBuilder;
.super Ljava/lang/Object;
.source "CMBuilder.java"


# static fields
.field private static final fEmptyCM:Lmf/org/apache/xerces/impl/xs/models/XSEmptyCM;


# instance fields
.field private fDeclPool:Lmf/org/apache/xerces/impl/xs/XSDeclarationPool;

.field private fLeafCount:I

.field private final fNodeFactory:Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;

.field private fParticleCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lmf/org/apache/xerces/impl/xs/models/XSEmptyCM;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/xs/models/XSEmptyCM;-><init>()V

    sput-object v0, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->fEmptyCM:Lmf/org/apache/xerces/impl/xs/models/XSEmptyCM;

    return-void
.end method

.method public constructor <init>(Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->fDeclPool:Lmf/org/apache/xerces/impl/xs/XSDeclarationPool;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->fDeclPool:Lmf/org/apache/xerces/impl/xs/XSDeclarationPool;

    iput-object p1, p0, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->fNodeFactory:Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;

    return-void
.end method

.method private buildCompactSyntaxTree(Lmf/org/apache/xerces/impl/xs/XSParticleDecl;)Lmf/org/apache/xerces/impl/dtd/models/CMNode;
    .locals 10

    const/4 v9, 0x1

    iget v3, p1, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fMaxOccurs:I

    iget v4, p1, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fMinOccurs:I

    iget-short v7, p1, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fType:S

    const/4 v5, 0x0

    const/4 v8, 0x2

    if-eq v7, v8, :cond_0

    if-ne v7, v9, :cond_1

    :cond_0
    invoke-direct {p0, p1, v4, v3}, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->buildCompactSyntaxTree2(Lmf/org/apache/xerces/impl/xs/XSParticleDecl;II)Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object v8

    :goto_0
    return-object v8

    :cond_1
    const/4 v8, 0x3

    if-ne v7, v8, :cond_4

    iget-object v1, p1, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fValue:Lmf/org/apache/xerces/xs/XSTerm;

    check-cast v1, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;

    iget v8, v1, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fParticleCount:I

    if-ne v8, v9, :cond_3

    if-ne v4, v9, :cond_2

    if-eq v3, v9, :cond_3

    :cond_2
    iget-object v8, v1, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fParticles:[Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    const/4 v9, 0x0

    aget-object v8, v8, v9

    invoke-direct {p0, v8, v4, v3}, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->buildCompactSyntaxTree2(Lmf/org/apache/xerces/impl/xs/XSParticleDecl;II)Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object v8

    goto :goto_0

    :cond_3
    const/4 v6, 0x0

    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_1
    iget v8, v1, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fParticleCount:I

    if-lt v2, v8, :cond_5

    if-eqz v5, :cond_4

    iget-short v8, v1, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fCompositor:S

    const/16 v9, 0x65

    if-ne v8, v9, :cond_4

    iget v8, v1, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fParticleCount:I

    if-ge v0, v8, :cond_4

    iget-object v8, p0, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->fNodeFactory:Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;

    const/4 v9, 0x5

    invoke-virtual {v8, v9, v5}, Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;->getCMUniOpNode(ILmf/org/apache/xerces/impl/dtd/models/CMNode;)Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object v5

    :cond_4
    move-object v8, v5

    goto :goto_0

    :cond_5
    iget-object v8, v1, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fParticles:[Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    aget-object v8, v8, v2

    invoke-direct {p0, v8}, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->buildCompactSyntaxTree(Lmf/org/apache/xerces/impl/xs/XSParticleDecl;)Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object v6

    if-eqz v6, :cond_6

    add-int/lit8 v0, v0, 0x1

    if-nez v5, :cond_7

    move-object v5, v6

    :cond_6
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_7
    iget-object v8, p0, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->fNodeFactory:Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;

    iget-short v9, v1, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fCompositor:S

    invoke-virtual {v8, v9, v5, v6}, Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;->getCMBinOpNode(ILmf/org/apache/xerces/impl/dtd/models/CMNode;Lmf/org/apache/xerces/impl/dtd/models/CMNode;)Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object v5

    goto :goto_2
.end method

.method private buildCompactSyntaxTree2(Lmf/org/apache/xerces/impl/xs/XSParticleDecl;II)Lmf/org/apache/xerces/impl/dtd/models/CMNode;
    .locals 10

    const/4 v9, 0x6

    const/4 v8, 0x4

    const/4 v1, -0x1

    const/4 v0, 0x1

    const/4 v7, 0x0

    if-ne p2, v0, :cond_0

    if-ne p3, v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->fNodeFactory:Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;

    iget-short v1, p1, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fType:S

    iget-object v2, p1, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fValue:Lmf/org/apache/xerces/xs/XSTerm;

    iget v3, p0, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->fParticleCount:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->fParticleCount:I

    iget v4, p0, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->fLeafCount:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->fLeafCount:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;->getCMLeafNode(ILjava/lang/Object;II)Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object v7

    :goto_0
    return-object v7

    :cond_0
    if-nez p2, :cond_1

    if-ne p3, v0, :cond_1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->fNodeFactory:Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;

    iget-short v1, p1, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fType:S

    iget-object v2, p1, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fValue:Lmf/org/apache/xerces/xs/XSTerm;

    iget v3, p0, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->fParticleCount:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->fParticleCount:I

    iget v4, p0, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->fLeafCount:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->fLeafCount:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;->getCMLeafNode(ILjava/lang/Object;II)Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object v7

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->fNodeFactory:Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, v7}, Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;->getCMUniOpNode(ILmf/org/apache/xerces/impl/dtd/models/CMNode;)Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object v7

    goto :goto_0

    :cond_1
    if-nez p2, :cond_2

    if-ne p3, v1, :cond_2

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->fNodeFactory:Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;

    iget-short v1, p1, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fType:S

    iget-object v2, p1, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fValue:Lmf/org/apache/xerces/xs/XSTerm;

    iget v3, p0, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->fParticleCount:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->fParticleCount:I

    iget v4, p0, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->fLeafCount:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->fLeafCount:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;->getCMLeafNode(ILjava/lang/Object;II)Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object v7

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->fNodeFactory:Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;

    invoke-virtual {v0, v8, v7}, Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;->getCMUniOpNode(ILmf/org/apache/xerces/impl/dtd/models/CMNode;)Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object v7

    goto :goto_0

    :cond_2
    if-ne p2, v0, :cond_3

    if-ne p3, v1, :cond_3

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->fNodeFactory:Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;

    iget-short v1, p1, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fType:S

    iget-object v2, p1, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fValue:Lmf/org/apache/xerces/xs/XSTerm;

    iget v3, p0, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->fParticleCount:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->fParticleCount:I

    iget v4, p0, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->fLeafCount:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->fLeafCount:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;->getCMLeafNode(ILjava/lang/Object;II)Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object v7

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->fNodeFactory:Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;

    invoke-virtual {v0, v9, v7}, Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;->getCMUniOpNode(ILmf/org/apache/xerces/impl/dtd/models/CMNode;)Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object v7

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->fNodeFactory:Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;

    iget-short v1, p1, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fType:S

    iget-object v2, p1, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fValue:Lmf/org/apache/xerces/xs/XSTerm;

    iget v5, p0, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->fParticleCount:I

    add-int/lit8 v3, v5, 0x1

    iput v3, p0, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->fParticleCount:I

    iget v6, p0, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->fLeafCount:I

    add-int/lit8 v3, v6, 0x1

    iput v3, p0, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->fLeafCount:I

    move v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v6}, Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;->getCMRepeatingLeafNode(ILjava/lang/Object;IIII)Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object v7

    if-nez p2, :cond_4

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->fNodeFactory:Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;

    invoke-virtual {v0, v8, v7}, Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;->getCMUniOpNode(ILmf/org/apache/xerces/impl/dtd/models/CMNode;)Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object v7

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->fNodeFactory:Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;

    invoke-virtual {v0, v9, v7}, Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;->getCMUniOpNode(ILmf/org/apache/xerces/impl/dtd/models/CMNode;)Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object v7

    goto/16 :goto_0
.end method

.method private buildSyntaxTree(Lmf/org/apache/xerces/impl/xs/XSParticleDecl;Z)Lmf/org/apache/xerces/impl/dtd/models/CMNode;
    .locals 17

    move-object/from16 v0, p1

    iget v6, v0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fMaxOccurs:I

    move-object/from16 v0, p1

    iget v7, v0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fMinOccurs:I

    const/4 v2, 0x0

    if-eqz p2, :cond_2

    const/4 v11, 0x1

    if-le v7, v11, :cond_1

    if-gt v6, v7, :cond_0

    invoke-virtual/range {p1 .. p1}, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->getMaxOccursUnbounded()Z

    move-result v11

    if-eqz v11, :cond_5

    :cond_0
    const/4 v7, 0x1

    const/4 v2, 0x1

    :cond_1
    :goto_0
    const/4 v11, 0x1

    if-le v6, v11, :cond_2

    const/4 v6, 0x2

    const/4 v2, 0x1

    :cond_2
    move-object/from16 v0, p1

    iget-short v10, v0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fType:S

    const/4 v8, 0x0

    const/4 v11, 0x2

    if-eq v10, v11, :cond_3

    const/4 v11, 0x1

    if-ne v10, v11, :cond_6

    :cond_3
    move-object/from16 v0, p0

    iget-object v11, v0, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->fNodeFactory:Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;

    move-object/from16 v0, p1

    iget-short v12, v0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fType:S

    move-object/from16 v0, p1

    iget-object v13, v0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fValue:Lmf/org/apache/xerces/xs/XSTerm;

    move-object/from16 v0, p0

    iget v14, v0, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->fParticleCount:I

    add-int/lit8 v15, v14, 0x1

    move-object/from16 v0, p0

    iput v15, v0, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->fParticleCount:I

    move-object/from16 v0, p0

    iget v15, v0, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->fLeafCount:I

    add-int/lit8 v16, v15, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->fLeafCount:I

    invoke-virtual {v11, v12, v13, v14, v15}, Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;->getCMLeafNode(ILjava/lang/Object;II)Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object v8

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v7, v6}, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->expandContentModel(Lmf/org/apache/xerces/impl/dtd/models/CMNode;II)Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object v8

    if-eqz v8, :cond_4

    invoke-virtual {v8, v2}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->setIsCompactUPAModel(Z)V

    :cond_4
    :goto_1
    return-object v8

    :cond_5
    const/4 v7, 0x2

    const/4 v2, 0x1

    goto :goto_0

    :cond_6
    const/4 v11, 0x3

    if-ne v10, v11, :cond_4

    move-object/from16 v0, p1

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fValue:Lmf/org/apache/xerces/xs/XSTerm;

    check-cast v4, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;

    const/4 v9, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    :goto_2
    iget v11, v4, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fParticleCount:I

    if-lt v5, v11, :cond_8

    if-eqz v8, :cond_4

    iget-short v11, v4, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fCompositor:S

    const/16 v12, 0x65

    if-ne v11, v12, :cond_7

    iget v11, v4, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fParticleCount:I

    if-ge v3, v11, :cond_7

    move-object/from16 v0, p0

    iget-object v11, v0, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->fNodeFactory:Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;

    const/4 v12, 0x5

    invoke-virtual {v11, v12, v8}, Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;->getCMUniOpNode(ILmf/org/apache/xerces/impl/dtd/models/CMNode;)Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object v8

    :cond_7
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v7, v6}, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->expandContentModel(Lmf/org/apache/xerces/impl/dtd/models/CMNode;II)Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object v8

    invoke-virtual {v8, v2}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->setIsCompactUPAModel(Z)V

    goto :goto_1

    :cond_8
    iget-object v11, v4, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fParticles:[Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    aget-object v11, v11, v5

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v11, v1}, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->buildSyntaxTree(Lmf/org/apache/xerces/impl/xs/XSParticleDecl;Z)Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object v9

    if-eqz v9, :cond_9

    invoke-virtual {v9}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->isCompactedForUPA()Z

    move-result v11

    or-int/2addr v2, v11

    add-int/lit8 v3, v3, 0x1

    if-nez v8, :cond_a

    move-object v8, v9

    :cond_9
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_a
    move-object/from16 v0, p0

    iget-object v11, v0, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->fNodeFactory:Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;

    iget-short v12, v4, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fCompositor:S

    invoke-virtual {v11, v12, v8, v9}, Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;->getCMBinOpNode(ILmf/org/apache/xerces/impl/dtd/models/CMNode;Lmf/org/apache/xerces/impl/dtd/models/CMNode;)Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object v8

    goto :goto_3
.end method

.method private copyNode(Lmf/org/apache/xerces/impl/dtd/models/CMNode;)Lmf/org/apache/xerces/impl/dtd/models/CMNode;
    .locals 10

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->type()I

    move-result v2

    const/16 v4, 0x65

    if-eq v2, v4, :cond_0

    const/16 v4, 0x66

    if-ne v2, v4, :cond_2

    :cond_0
    move-object v0, p1

    check-cast v0, Lmf/org/apache/xerces/impl/xs/models/XSCMBinOp;

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->fNodeFactory:Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/models/XSCMBinOp;->getLeft()Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object v5

    invoke-direct {p0, v5}, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->copyNode(Lmf/org/apache/xerces/impl/dtd/models/CMNode;)Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object v5

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/models/XSCMBinOp;->getRight()Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object v6

    invoke-direct {p0, v6}, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->copyNode(Lmf/org/apache/xerces/impl/dtd/models/CMNode;)Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object v6

    invoke-virtual {v4, v2, v5, v6}, Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;->getCMBinOpNode(ILmf/org/apache/xerces/impl/dtd/models/CMNode;Lmf/org/apache/xerces/impl/dtd/models/CMNode;)Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object p1

    :cond_1
    :goto_0
    return-object p1

    :cond_2
    const/4 v4, 0x4

    if-eq v2, v4, :cond_3

    const/4 v4, 0x6

    if-eq v2, v4, :cond_3

    const/4 v4, 0x5

    if-ne v2, v4, :cond_4

    :cond_3
    move-object v3, p1

    check-cast v3, Lmf/org/apache/xerces/impl/xs/models/XSCMUniOp;

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->fNodeFactory:Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/xs/models/XSCMUniOp;->getChild()Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object v5

    invoke-direct {p0, v5}, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->copyNode(Lmf/org/apache/xerces/impl/dtd/models/CMNode;)Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;->getCMUniOpNode(ILmf/org/apache/xerces/impl/dtd/models/CMNode;)Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object p1

    goto :goto_0

    :cond_4
    const/4 v4, 0x1

    if-eq v2, v4, :cond_5

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    :cond_5
    move-object v1, p1

    check-cast v1, Lmf/org/apache/xerces/impl/xs/models/XSCMLeaf;

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->fNodeFactory:Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/xs/models/XSCMLeaf;->type()I

    move-result v5

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/xs/models/XSCMLeaf;->getLeaf()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/xs/models/XSCMLeaf;->getParticleId()I

    move-result v7

    iget v8, p0, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->fLeafCount:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->fLeafCount:I

    invoke-virtual {v4, v5, v6, v7, v8}, Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;->getCMLeafNode(ILjava/lang/Object;II)Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object p1

    goto :goto_0
.end method

.method private expandContentModel(Lmf/org/apache/xerces/impl/dtd/models/CMNode;II)Lmf/org/apache/xerces/impl/dtd/models/CMNode;
    .locals 6

    const/4 v5, 0x6

    const/4 v3, 0x5

    const/4 v2, 0x0

    const/4 v1, -0x1

    const/4 v4, 0x1

    const/4 v0, 0x0

    if-ne p2, v4, :cond_1

    if-ne p3, v4, :cond_1

    move-object v0, p1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    if-nez p2, :cond_2

    if-ne p3, v4, :cond_2

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->fNodeFactory:Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;

    invoke-virtual {v1, v3, p1}, Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;->getCMUniOpNode(ILmf/org/apache/xerces/impl/dtd/models/CMNode;)Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object v0

    goto :goto_0

    :cond_2
    if-nez p2, :cond_3

    if-ne p3, v1, :cond_3

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->fNodeFactory:Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;

    const/4 v2, 0x4

    invoke-virtual {v1, v2, p1}, Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;->getCMUniOpNode(ILmf/org/apache/xerces/impl/dtd/models/CMNode;)Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object v0

    goto :goto_0

    :cond_3
    if-ne p2, v4, :cond_4

    if-ne p3, v1, :cond_4

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->fNodeFactory:Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;

    invoke-virtual {v1, v5, p1}, Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;->getCMUniOpNode(ILmf/org/apache/xerces/impl/dtd/models/CMNode;)Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object v0

    goto :goto_0

    :cond_4
    if-ne p3, v1, :cond_5

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->fNodeFactory:Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;

    invoke-virtual {v1, v5, p1}, Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;->getCMUniOpNode(ILmf/org/apache/xerces/impl/dtd/models/CMNode;)Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object v0

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->fNodeFactory:Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;

    const/16 v2, 0x66

    add-int/lit8 v3, p2, -0x1

    invoke-direct {p0, p1, v3, v4}, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->multiNodes(Lmf/org/apache/xerces/impl/dtd/models/CMNode;IZ)Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;->getCMBinOpNode(ILmf/org/apache/xerces/impl/dtd/models/CMNode;Lmf/org/apache/xerces/impl/dtd/models/CMNode;)Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object v0

    goto :goto_0

    :cond_5
    if-lez p2, :cond_6

    invoke-direct {p0, p1, p2, v2}, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->multiNodes(Lmf/org/apache/xerces/impl/dtd/models/CMNode;IZ)Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object v0

    :cond_6
    if-le p3, p2, :cond_0

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->fNodeFactory:Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;

    invoke-virtual {v1, v3, p1}, Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;->getCMUniOpNode(ILmf/org/apache/xerces/impl/dtd/models/CMNode;)Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object p1

    if-nez v0, :cond_7

    sub-int v1, p3, p2

    invoke-direct {p0, p1, v1, v2}, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->multiNodes(Lmf/org/apache/xerces/impl/dtd/models/CMNode;IZ)Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object v0

    goto :goto_0

    :cond_7
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->fNodeFactory:Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;

    const/16 v2, 0x66

    sub-int v3, p3, p2

    invoke-direct {p0, p1, v3, v4}, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->multiNodes(Lmf/org/apache/xerces/impl/dtd/models/CMNode;IZ)Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object v3

    invoke-virtual {v1, v2, v0, v3}, Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;->getCMBinOpNode(ILmf/org/apache/xerces/impl/dtd/models/CMNode;Lmf/org/apache/xerces/impl/dtd/models/CMNode;)Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object v0

    goto :goto_0
.end method

.method private multiNodes(Lmf/org/apache/xerces/impl/dtd/models/CMNode;IZ)Lmf/org/apache/xerces/impl/dtd/models/CMNode;
    .locals 6

    const/4 v5, 0x1

    if-nez p2, :cond_1

    const/4 p1, 0x0

    :cond_0
    :goto_0
    return-object p1

    :cond_1
    if-ne p2, v5, :cond_2

    if-eqz p3, :cond_0

    invoke-direct {p0, p1}, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->copyNode(Lmf/org/apache/xerces/impl/dtd/models/CMNode;)Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object p1

    goto :goto_0

    :cond_2
    div-int/lit8 v0, p2, 0x2

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->fNodeFactory:Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;

    const/16 v2, 0x66

    invoke-direct {p0, p1, v0, p3}, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->multiNodes(Lmf/org/apache/xerces/impl/dtd/models/CMNode;IZ)Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object v3

    sub-int v4, p2, v0

    invoke-direct {p0, p1, v4, v5}, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->multiNodes(Lmf/org/apache/xerces/impl/dtd/models/CMNode;IZ)Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;->getCMBinOpNode(ILmf/org/apache/xerces/impl/dtd/models/CMNode;Lmf/org/apache/xerces/impl/dtd/models/CMNode;)Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object p1

    goto :goto_0
.end method

.method private useRepeatingLeafNodes(Lmf/org/apache/xerces/impl/xs/XSParticleDecl;)Z
    .locals 10

    const/4 v7, 0x0

    const/4 v8, 0x1

    iget v2, p1, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fMaxOccurs:I

    iget v3, p1, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fMinOccurs:I

    iget-short v5, p1, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fType:S

    const/4 v9, 0x3

    if-ne v5, v9, :cond_5

    iget-object v0, p1, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fValue:Lmf/org/apache/xerces/xs/XSTerm;

    check-cast v0, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;

    if-ne v3, v8, :cond_0

    if-eq v2, v8, :cond_4

    :cond_0
    iget v9, v0, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fParticleCount:I

    if-ne v9, v8, :cond_3

    iget-object v9, v0, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fParticles:[Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    aget-object v4, v9, v7

    iget-short v6, v4, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fType:S

    if-eq v6, v8, :cond_1

    const/4 v9, 0x2

    if-ne v6, v9, :cond_2

    :cond_1
    iget v9, v4, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fMinOccurs:I

    if-ne v9, v8, :cond_2

    iget v9, v4, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fMaxOccurs:I

    if-ne v9, v8, :cond_2

    move v7, v8

    :cond_2
    :goto_0
    return v7

    :cond_3
    iget v9, v0, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fParticleCount:I

    if-nez v9, :cond_2

    move v7, v8

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    :goto_1
    iget v9, v0, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fParticleCount:I

    if-lt v1, v9, :cond_6

    :cond_5
    move v7, v8

    goto :goto_0

    :cond_6
    iget-object v9, v0, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fParticles:[Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    aget-object v9, v9, v1

    invoke-direct {p0, v9}, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->useRepeatingLeafNodes(Lmf/org/apache/xerces/impl/xs/XSParticleDecl;)Z

    move-result v9

    if-eqz v9, :cond_2

    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method


# virtual methods
.method createAllCM(Lmf/org/apache/xerces/impl/xs/XSParticleDecl;)Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;
    .locals 7

    const/4 v4, 0x1

    const/4 v5, 0x0

    iget v3, p1, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fMaxOccurs:I

    if-nez v3, :cond_1

    const/4 v0, 0x0

    :cond_0
    return-object v0

    :cond_1
    iget-object v1, p1, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fValue:Lmf/org/apache/xerces/xs/XSTerm;

    check-cast v1, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;

    new-instance v0, Lmf/org/apache/xerces/impl/xs/models/XSAllCM;

    iget v3, p1, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fMinOccurs:I

    if-nez v3, :cond_2

    move v3, v4

    :goto_0
    iget v6, v1, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fParticleCount:I

    invoke-direct {v0, v3, v6}, Lmf/org/apache/xerces/impl/xs/models/XSAllCM;-><init>(ZI)V

    const/4 v2, 0x0

    :goto_1
    iget v3, v1, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fParticleCount:I

    if-ge v2, v3, :cond_0

    iget-object v3, v1, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fParticles:[Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    aget-object v3, v3, v2

    iget-object v3, v3, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fValue:Lmf/org/apache/xerces/xs/XSTerm;

    check-cast v3, Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    iget-object v6, v1, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fParticles:[Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    aget-object v6, v6, v2

    iget v6, v6, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fMinOccurs:I

    if-nez v6, :cond_3

    move v6, v4

    :goto_2
    invoke-virtual {v0, v3, v6}, Lmf/org/apache/xerces/impl/xs/models/XSAllCM;->addElement(Lmf/org/apache/xerces/impl/xs/XSElementDecl;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    move v3, v5

    goto :goto_0

    :cond_3
    move v6, v5

    goto :goto_2
.end method

.method createDFACM(Lmf/org/apache/xerces/impl/xs/XSParticleDecl;Z)Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;
    .locals 3

    const/4 v1, 0x0

    iput v1, p0, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->fLeafCount:I

    iput v1, p0, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->fParticleCount:I

    invoke-direct {p0, p1}, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->useRepeatingLeafNodes(Lmf/org/apache/xerces/impl/xs/XSParticleDecl;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p1}, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->buildCompactSyntaxTree(Lmf/org/apache/xerces/impl/xs/XSParticleDecl;)Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_1

    const/4 v1, 0x0

    :goto_1
    return-object v1

    :cond_0
    invoke-direct {p0, p1, p2}, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->buildSyntaxTree(Lmf/org/apache/xerces/impl/xs/XSParticleDecl;Z)Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v1, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;

    iget v2, p0, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->fLeafCount:I

    invoke-direct {v1, v0, v2}, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;-><init>(Lmf/org/apache/xerces/impl/dtd/models/CMNode;I)V

    goto :goto_1
.end method

.method public getContentModel(Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;Z)Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;
    .locals 5

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->getContentType()S

    move-result v1

    const/4 v3, 0x1

    if-eq v1, v3, :cond_0

    if-nez v1, :cond_2

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->getParticle()Lmf/org/apache/xerces/xs/XSParticle;

    move-result-object v2

    check-cast v2, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    if-nez v2, :cond_3

    sget-object v0, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->fEmptyCM:Lmf/org/apache/xerces/impl/xs/models/XSEmptyCM;

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    iget-short v3, v2, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fType:S

    const/4 v4, 0x3

    if-ne v3, v4, :cond_4

    iget-object v3, v2, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fValue:Lmf/org/apache/xerces/xs/XSTerm;

    check-cast v3, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;

    iget-short v3, v3, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fCompositor:S

    const/16 v4, 0x67

    if-ne v3, v4, :cond_4

    invoke-virtual {p0, v2}, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->createAllCM(Lmf/org/apache/xerces/impl/xs/XSParticleDecl;)Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;

    move-result-object v0

    :goto_1
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->fNodeFactory:Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;->resetNodeCount()V

    if-nez v0, :cond_1

    sget-object v0, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->fEmptyCM:Lmf/org/apache/xerces/impl/xs/models/XSEmptyCM;

    goto :goto_0

    :cond_4
    invoke-virtual {p0, v2, p2}, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->createDFACM(Lmf/org/apache/xerces/impl/xs/XSParticleDecl;Z)Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;

    move-result-object v0

    goto :goto_1
.end method

.method public setDeclPool(Lmf/org/apache/xerces/impl/xs/XSDeclarationPool;)V
    .locals 0

    iput-object p1, p0, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->fDeclPool:Lmf/org/apache/xerces/impl/xs/XSDeclarationPool;

    return-void
.end method
