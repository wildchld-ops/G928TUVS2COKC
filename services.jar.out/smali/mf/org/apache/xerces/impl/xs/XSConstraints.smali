.class public Lmf/org/apache/xerces/impl/xs/XSConstraints;
.super Ljava/lang/Object;
.source "XSConstraints.java"


# static fields
.field private static final ELEMENT_PARTICLE_COMPARATOR:Ljava/util/Comparator;

.field static final OCCURRENCE_UNKNOWN:I = -0x2

.field static final STRING_TYPE:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

.field private static fEmptyParticle:Lmf/org/apache/xerces/impl/xs/XSParticleDecl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->SG_SchemaNS:Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;

    const-string/jumbo v1, "string"

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalTypeDecl(Ljava/lang/String;)Lmf/org/apache/xerces/xs/XSTypeDefinition;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    sput-object v0, Lmf/org/apache/xerces/impl/xs/XSConstraints;->STRING_TYPE:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    const/4 v0, 0x0

    sput-object v0, Lmf/org/apache/xerces/impl/xs/XSConstraints;->fEmptyParticle:Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    new-instance v0, Lmf/org/apache/xerces/impl/xs/XSConstraints$1;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/xs/XSConstraints$1;-><init>()V

    sput-object v0, Lmf/org/apache/xerces/impl/xs/XSConstraints;->ELEMENT_PARTICLE_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ElementDefaultValidImmediate(Lmf/org/apache/xerces/xs/XSTypeDefinition;Ljava/lang/String;Lmf/org/apache/xerces/impl/dv/ValidationContext;Lmf/org/apache/xerces/impl/dv/ValidatedInfo;)Ljava/lang/Object;
    .locals 7

    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-interface {p0}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getTypeCategory()S

    move-result v4

    const/16 v6, 0x10

    if-ne v4, v6, :cond_3

    move-object v2, p0

    check-cast v2, Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    :cond_0
    :goto_0
    const/4 v0, 0x0

    if-nez v2, :cond_1

    sget-object v2, Lmf/org/apache/xerces/impl/xs/XSConstraints;->STRING_TYPE:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    :cond_1
    :try_start_0
    invoke-interface {v2, p1, p2, p3}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->validate(Ljava/lang/String;Lmf/org/apache/xerces/impl/dv/ValidationContext;Lmf/org/apache/xerces/impl/dv/ValidatedInfo;)Ljava/lang/Object;

    move-result-object v0

    if-eqz p3, :cond_2

    invoke-virtual {p3}, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->stringValue()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4, p2, p3}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->validate(Ljava/lang/String;Lmf/org/apache/xerces/impl/dv/ValidationContext;Lmf/org/apache/xerces/impl/dv/ValidatedInfo;)Ljava/lang/Object;
    :try_end_0
    .catch Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_2
    :goto_1
    return-object v0

    :cond_3
    move-object v1, p0

    check-cast v1, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    iget-short v4, v1, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fContentType:S

    const/4 v6, 0x1

    if-ne v4, v6, :cond_4

    iget-object v2, v1, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fXSSimpleType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    goto :goto_0

    :cond_4
    iget-short v4, v1, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fContentType:S

    const/4 v6, 0x3

    if-ne v4, v6, :cond_5

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->getParticle()Lmf/org/apache/xerces/xs/XSParticle;

    move-result-object v4

    check-cast v4, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    invoke-virtual {v4}, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->emptiable()Z

    move-result v4

    if-nez v4, :cond_0

    move-object v0, v5

    goto :goto_1

    :cond_5
    move-object v0, v5

    goto :goto_1

    :catch_0
    move-exception v3

    move-object v0, v5

    goto :goto_1
.end method

.method private static addElementToParticleVector(Ljava/util/Vector;Lmf/org/apache/xerces/impl/xs/XSElementDecl;)V
    .locals 2

    new-instance v0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;-><init>()V

    iput-object p1, v0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fValue:Lmf/org/apache/xerces/xs/XSTerm;

    const/4 v1, 0x1

    iput-short v1, v0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fType:S

    invoke-virtual {p0, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method private static checkComplexDerivation(Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;Lmf/org/apache/xerces/xs/XSTypeDefinition;S)Z
    .locals 5

    const/16 v4, 0xf

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-short v3, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fDerivedBy:S

    and-int/2addr v3, p2

    if-eqz v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fBaseType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    if-eq v0, p1, :cond_0

    sget-object v1, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fAnyType:Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    if-eq v0, v1, :cond_3

    sget-object v1, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fAnySimpleType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    if-ne v0, v1, :cond_4

    :cond_3
    move v1, v2

    goto :goto_0

    :cond_4
    invoke-interface {v0}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getTypeCategory()S

    move-result v1

    if-ne v1, v4, :cond_5

    check-cast v0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    invoke-static {v0, p1, p2}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->checkComplexDerivation(Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;Lmf/org/apache/xerces/xs/XSTypeDefinition;S)Z

    move-result v1

    goto :goto_0

    :cond_5
    invoke-interface {v0}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getTypeCategory()S

    move-result v1

    const/16 v3, 0x10

    if-ne v1, v3, :cond_8

    invoke-interface {p1}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getTypeCategory()S

    move-result v1

    if-ne v1, v4, :cond_6

    sget-object v1, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fAnyType:Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    if-ne p1, v1, :cond_7

    sget-object p1, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fAnySimpleType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    :cond_6
    check-cast v0, Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    move-object v1, p1

    check-cast v1, Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    invoke-static {v0, v1, p2}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->checkSimpleDerivation(Lmf/org/apache/xerces/impl/dv/XSSimpleType;Lmf/org/apache/xerces/impl/dv/XSSimpleType;S)Z

    move-result v1

    goto :goto_0

    :cond_7
    move v1, v2

    goto :goto_0

    :cond_8
    move v1, v2

    goto :goto_0
.end method

.method public static checkComplexDerivationOk(Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;Lmf/org/apache/xerces/xs/XSTypeDefinition;S)Z
    .locals 1

    sget-object v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fAnyType:Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    if-ne p0, v0, :cond_1

    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-static {p0, p1, p2}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->checkComplexDerivation(Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;Lmf/org/apache/xerces/xs/XSTypeDefinition;S)Z

    move-result v0

    goto :goto_0
.end method

.method public static checkElementDeclsConsistent(Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;Lmf/org/apache/xerces/impl/xs/XSParticleDecl;Lmf/org/apache/xerces/util/SymbolHash;Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xs/XMLSchemaException;
        }
    .end annotation

    const/4 v6, 0x1

    iget-short v3, p1, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fType:S

    const/4 v5, 0x2

    if-ne v3, v5, :cond_1

    :cond_0
    return-void

    :cond_1
    if-ne v3, v6, :cond_2

    iget-object v0, p1, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fValue:Lmf/org/apache/xerces/xs/XSTerm;

    check-cast v0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    invoke-static {p0, v0, p2}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->findElemInTable(Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;Lmf/org/apache/xerces/impl/xs/XSElementDecl;Lmf/org/apache/xerces/util/SymbolHash;)V

    iget-short v5, v0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fScope:S

    if-ne v5, v6, :cond_0

    invoke-virtual {p3, v0}, Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;->getSubstitutionGroup(Lmf/org/apache/xerces/impl/xs/XSElementDecl;)[Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    move-result-object v4

    const/4 v2, 0x0

    :goto_0
    array-length v5, v4

    if-ge v2, v5, :cond_0

    aget-object v5, v4, v2

    invoke-static {p0, v5, p2}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->findElemInTable(Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;Lmf/org/apache/xerces/impl/xs/XSElementDecl;Lmf/org/apache/xerces/util/SymbolHash;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget-object v1, p1, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fValue:Lmf/org/apache/xerces/xs/XSTerm;

    check-cast v1, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;

    const/4 v2, 0x0

    :goto_1
    iget v5, v1, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fParticleCount:I

    if-ge v2, v5, :cond_0

    iget-object v5, v1, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fParticles:[Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    aget-object v5, v5, v2

    invoke-static {p0, v5, p2, p3}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->checkElementDeclsConsistent(Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;Lmf/org/apache/xerces/impl/xs/XSParticleDecl;Lmf/org/apache/xerces/util/SymbolHash;Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private static checkIDConstraintRestriction(Lmf/org/apache/xerces/impl/xs/XSElementDecl;Lmf/org/apache/xerces/impl/xs/XSElementDecl;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xs/XMLSchemaException;
        }
    .end annotation

    return-void
.end method

.method private static checkMapAndSum(Ljava/util/Vector;IILmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;Ljava/util/Vector;IILmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xs/XMLSchemaException;
        }
    .end annotation

    move/from16 v0, p5

    move/from16 v1, p6

    invoke-static {p1, p2, v0, v1}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->checkOccurrenceRange(IIII)Z

    move-result v8

    if-nez v8, :cond_2

    new-instance v9, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;

    const-string/jumbo v10, "rcase-MapAndSum.2"

    const/4 v8, 0x4

    new-array v11, v8, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v8

    const/4 v12, 0x1

    const/4 v8, -0x1

    if-ne p2, v8, :cond_0

    const-string/jumbo v8, "unbounded"

    :goto_0
    aput-object v8, v11, v12

    const/4 v8, 0x2

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v8

    const/4 v12, 0x3

    const/4 v8, -0x1

    move/from16 v0, p6

    if-ne v0, v8, :cond_1

    const-string/jumbo v8, "unbounded"

    :goto_1
    aput-object v8, v11, v12

    invoke-direct {v9, v10, v11}, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v9

    :cond_0
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    :cond_1
    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v2

    invoke-virtual/range {p4 .. p4}, Ljava/util/Vector;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_2
    if-lt v4, v2, :cond_3

    return-void

    :cond_3
    invoke-virtual {p0, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    const/4 v5, 0x0

    :goto_3
    if-lt v5, v3, :cond_4

    new-instance v8, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;

    const-string/jumbo v9, "rcase-MapAndSum.1"

    const/4 v10, 0x0

    invoke-direct {v8, v9, v10}, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v8

    :cond_4
    move-object/from16 v0, p4

    invoke-virtual {v0, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    :try_start_0
    move-object/from16 v0, p3

    move-object/from16 v1, p7

    invoke-static {v6, v0, v7, v1}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->particleValidRestriction(Lmf/org/apache/xerces/impl/xs/XSParticleDecl;Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;Lmf/org/apache/xerces/impl/xs/XSParticleDecl;Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;)Z
    :try_end_0
    .catch Lmf/org/apache/xerces/impl/xs/XMLSchemaException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :catch_0
    move-exception v8

    add-int/lit8 v5, v5, 0x1

    goto :goto_3
.end method

.method private static checkNSCompat(Lmf/org/apache/xerces/impl/xs/XSElementDecl;IILmf/org/apache/xerces/impl/xs/XSWildcardDecl;IIZ)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xs/XMLSchemaException;
        }
    .end annotation

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v4, 0x0

    const/4 v5, -0x1

    if-eqz p6, :cond_2

    invoke-static {p1, p2, p4, p5}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->checkOccurrenceRange(IIII)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v1, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;

    const-string/jumbo v2, "rcase-NSCompat.2"

    const/4 v0, 0x5

    new-array v3, v0, [Ljava/lang/Object;

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fName:Ljava/lang/String;

    aput-object v0, v3, v4

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v6

    if-ne p2, v5, :cond_0

    const-string/jumbo v0, "unbounded"

    :goto_0
    aput-object v0, v3, v7

    const/4 v0, 0x3

    invoke-static {p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v4, 0x4

    if-ne p5, v5, :cond_1

    const-string/jumbo v0, "unbounded"

    :goto_1
    aput-object v0, v3, v4

    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1

    :cond_0
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-static {p5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fTargetNamespace:Ljava/lang/String;

    invoke-virtual {p3, v0}, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->allowNamespace(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;

    const-string/jumbo v1, "rcase-NSCompat.1"

    new-array v2, v7, [Ljava/lang/Object;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fName:Ljava/lang/String;

    aput-object v3, v2, v4

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fTargetNamespace:Ljava/lang/String;

    aput-object v3, v2, v6

    invoke-direct {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :cond_3
    return-void
.end method

.method private static checkNSRecurseCheckCardinality(Ljava/util/Vector;IILmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;Lmf/org/apache/xerces/impl/xs/XSParticleDecl;IIZ)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xs/XMLSchemaException;
        }
    .end annotation

    if-eqz p7, :cond_2

    invoke-static {p1, p2, p5, p6}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->checkOccurrenceRange(IIII)Z

    move-result v4

    if-nez v4, :cond_2

    new-instance v5, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;

    const-string/jumbo v6, "rcase-NSRecurseCheckCardinality.2"

    const/4 v4, 0x4

    new-array v7, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v4

    const/4 v8, 0x1

    const/4 v4, -0x1

    if-ne p2, v4, :cond_0

    const-string/jumbo v4, "unbounded"

    :goto_0
    aput-object v4, v7, v8

    const/4 v4, 0x2

    invoke-static {p5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v4

    const/4 v8, 0x3

    const/4 v4, -0x1

    if-ne p6, v4, :cond_1

    const-string/jumbo v4, "unbounded"

    :goto_1
    aput-object v4, v7, v8

    invoke-direct {v5, v6, v7}, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v5

    :cond_0
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_1
    invoke-static {p6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_2
    if-lt v2, v0, :cond_3

    return-void

    :cond_3
    :try_start_0
    invoke-virtual {p0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v3, p3, p4, v4, v5}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->particleValidRestriction(Lmf/org/apache/xerces/impl/xs/XSParticleDecl;Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;Lmf/org/apache/xerces/impl/xs/XSParticleDecl;Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;Z)Z
    :try_end_0
    .catch Lmf/org/apache/xerces/impl/xs/XMLSchemaException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :catch_0
    move-exception v1

    new-instance v4, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;

    const-string/jumbo v5, "rcase-NSRecurseCheckCardinality.1"

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v4
.end method

.method private static checkNSSubset(Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;IILmf/org/apache/xerces/impl/xs/XSWildcardDecl;II)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xs/XMLSchemaException;
        }
    .end annotation

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v4, 0x0

    const/4 v5, -0x1

    invoke-static {p1, p2, p4, p5}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->checkOccurrenceRange(IIII)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v1, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;

    const-string/jumbo v2, "rcase-NSSubset.2"

    const/4 v0, 0x4

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    if-ne p2, v5, :cond_0

    const-string/jumbo v0, "unbounded"

    :goto_0
    aput-object v0, v3, v6

    invoke-static {p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v7

    const/4 v4, 0x3

    if-ne p5, v5, :cond_1

    const-string/jumbo v0, "unbounded"

    :goto_1
    aput-object v0, v3, v4

    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1

    :cond_0
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-static {p5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    invoke-virtual {p0, p3}, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->isSubsetOf(Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;)Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;

    const-string/jumbo v1, "rcase-NSSubset.1"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :cond_3
    invoke-virtual {p0, p3}, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->weakerProcessContents(Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;

    const-string/jumbo v1, "rcase-NSSubset.3"

    new-array v2, v7, [Ljava/lang/Object;

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->getProcessContentsAsString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p3}, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->getProcessContentsAsString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-direct {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :cond_4
    return-void
.end method

.method private static checkNameAndTypeOK(Lmf/org/apache/xerces/impl/xs/XSElementDecl;IILmf/org/apache/xerces/impl/xs/XSElementDecl;II)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xs/XMLSchemaException;
        }
    .end annotation

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fName:Ljava/lang/String;

    iget-object v4, p3, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fName:Ljava/lang/String;

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fTargetNamespace:Ljava/lang/String;

    iget-object v4, p3, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fTargetNamespace:Ljava/lang/String;

    if-eq v3, v4, :cond_1

    :cond_0
    new-instance v3, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;

    const-string/jumbo v4, "rcase-NameAndTypeOK.1"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fName:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    iget-object v7, p0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fTargetNamespace:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    iget-object v7, p3, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fName:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x3

    iget-object v7, p3, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fTargetNamespace:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-direct {v3, v4, v5}, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v3

    :cond_1
    invoke-virtual {p3}, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->getNillable()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->getNillable()Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance v3, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;

    const-string/jumbo v4, "rcase-NameAndTypeOK.2"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fName:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-direct {v3, v4, v5}, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v3

    :cond_2
    invoke-static {p1, p2, p4, p5}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->checkOccurrenceRange(IIII)Z

    move-result v3

    if-nez v3, :cond_5

    new-instance v4, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;

    const-string/jumbo v5, "rcase-NameAndTypeOK.3"

    const/4 v3, 0x5

    new-array v6, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v7, p0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fName:Ljava/lang/String;

    aput-object v7, v6, v3

    const/4 v3, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v3

    const/4 v7, 0x2

    const/4 v3, -0x1

    if-ne p2, v3, :cond_3

    const-string/jumbo v3, "unbounded"

    :goto_0
    aput-object v3, v6, v7

    const/4 v3, 0x3

    invoke-static {p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v3

    const/4 v7, 0x4

    const/4 v3, -0x1

    if-ne p5, v3, :cond_4

    const-string/jumbo v3, "unbounded"

    :goto_1
    aput-object v3, v6, v7

    invoke-direct {v4, v5, v6}, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v4

    :cond_3
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_4
    invoke-static {p5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_5
    invoke-virtual {p3}, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->getConstraintType()S

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_b

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->getConstraintType()S

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_6

    new-instance v3, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;

    const-string/jumbo v4, "rcase-NameAndTypeOK.4.a"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fName:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    iget-object v7, p3, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fDefault:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    invoke-virtual {v7}, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->stringValue()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-direct {v3, v4, v5}, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v3

    :cond_6
    const/4 v2, 0x0

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    invoke-interface {v3}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getTypeCategory()S

    move-result v3

    const/16 v4, 0x10

    if-eq v3, v4, :cond_7

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    check-cast v3, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    iget-short v3, v3, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fContentType:S

    const/4 v4, 0x1

    if-ne v3, v4, :cond_8

    :cond_7
    const/4 v2, 0x1

    :cond_8
    if-nez v2, :cond_9

    iget-object v3, p3, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fDefault:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    iget-object v3, v3, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->normalizedValue:Ljava/lang/String;

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fDefault:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    iget-object v4, v4, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->normalizedValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    :cond_9
    if-eqz v2, :cond_b

    iget-object v3, p3, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fDefault:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    iget-object v3, v3, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->actualValue:Ljava/lang/Object;

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fDefault:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    iget-object v4, v4, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->actualValue:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    :cond_a
    new-instance v3, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;

    const-string/jumbo v4, "rcase-NameAndTypeOK.4.b"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fName:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    iget-object v7, p0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fDefault:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    invoke-virtual {v7}, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->stringValue()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    iget-object v7, p3, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fDefault:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    invoke-virtual {v7}, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->stringValue()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-direct {v3, v4, v5}, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v3

    :cond_b
    invoke-static {p0, p3}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->checkIDConstraintRestriction(Lmf/org/apache/xerces/impl/xs/XSElementDecl;Lmf/org/apache/xerces/impl/xs/XSElementDecl;)V

    iget-short v0, p0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fBlock:S

    iget-short v1, p3, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fBlock:S

    and-int v3, v0, v1

    if-ne v3, v1, :cond_c

    if-nez v0, :cond_d

    if-eqz v1, :cond_d

    :cond_c
    new-instance v3, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;

    const-string/jumbo v4, "rcase-NameAndTypeOK.6"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fName:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-direct {v3, v4, v5}, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v3

    :cond_d
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    iget-object v4, p3, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    const/16 v5, 0x19

    invoke-static {v3, v4, v5}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->checkTypeDerivationOk(Lmf/org/apache/xerces/xs/XSTypeDefinition;Lmf/org/apache/xerces/xs/XSTypeDefinition;S)Z

    move-result v3

    if-nez v3, :cond_e

    new-instance v3, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;

    const-string/jumbo v4, "rcase-NameAndTypeOK.7"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fName:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    iget-object v7, p0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    invoke-interface {v7}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    iget-object v7, p3, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    invoke-interface {v7}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-direct {v3, v4, v5}, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v3

    :cond_e
    return-void
.end method

.method private static checkOccurrenceRange(IIII)Z
    .locals 1

    const/4 v0, -0x1

    if-lt p0, p2, :cond_1

    if-eq p3, v0, :cond_0

    if-eq p1, v0, :cond_1

    if-gt p1, p3, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static checkRecurse(Ljava/util/Vector;IILmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;Ljava/util/Vector;IILmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;)V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xs/XMLSchemaException;
        }
    .end annotation

    move/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p5

    move/from16 v3, p6

    invoke-static {v0, v1, v2, v3}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->checkOccurrenceRange(IIII)Z

    move-result v12

    if-nez v12, :cond_2

    new-instance v13, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;

    const-string/jumbo v14, "rcase-Recurse.1"

    const/4 v12, 0x4

    new-array v15, v12, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v15, v12

    const/16 v16, 0x1

    const/4 v12, -0x1

    move/from16 v0, p2

    if-ne v0, v12, :cond_0

    const-string/jumbo v12, "unbounded"

    :goto_0
    aput-object v12, v15, v16

    const/4 v12, 0x2

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v15, v12

    const/16 v16, 0x3

    const/4 v12, -0x1

    move/from16 v0, p6

    if-ne v0, v12, :cond_1

    const-string/jumbo v12, "unbounded"

    :goto_1
    aput-object v12, v15, v16

    invoke-direct {v13, v14, v15}, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v13

    :cond_0
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    goto :goto_0

    :cond_1
    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    goto :goto_1

    :cond_2
    invoke-virtual/range {p0 .. p0}, Ljava/util/Vector;->size()I

    move-result v4

    invoke-virtual/range {p4 .. p4}, Ljava/util/Vector;->size()I

    move-result v5

    const/4 v6, 0x0

    const/4 v8, 0x0

    :goto_2
    if-lt v8, v4, :cond_3

    move v9, v6

    :goto_3
    if-lt v9, v5, :cond_6

    return-void

    :cond_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    move v9, v6

    :goto_4
    if-lt v9, v5, :cond_4

    new-instance v12, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;

    const-string/jumbo v13, "rcase-Recurse.2"

    const/4 v14, 0x0

    invoke-direct {v12, v13, v14}, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v12

    :cond_4
    move-object/from16 v0, p4

    invoke-virtual {v0, v9}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    add-int/lit8 v6, v6, 0x1

    :try_start_0
    move-object/from16 v0, p3

    move-object/from16 v1, p7

    invoke-static {v10, v0, v11, v1}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->particleValidRestriction(Lmf/org/apache/xerces/impl/xs/XSParticleDecl;Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;Lmf/org/apache/xerces/impl/xs/XSParticleDecl;Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;)Z
    :try_end_0
    .catch Lmf/org/apache/xerces/impl/xs/XMLSchemaException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :catch_0
    move-exception v7

    invoke-virtual {v11}, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->emptiable()Z

    move-result v12

    if-nez v12, :cond_5

    new-instance v12, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;

    const-string/jumbo v13, "rcase-Recurse.2"

    const/4 v14, 0x0

    invoke-direct {v12, v13, v14}, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v12

    :cond_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    :cond_6
    move-object/from16 v0, p4

    invoke-virtual {v0, v9}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    invoke-virtual {v11}, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->emptiable()Z

    move-result v12

    if-nez v12, :cond_7

    new-instance v12, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;

    const-string/jumbo v13, "rcase-Recurse.2"

    const/4 v14, 0x0

    invoke-direct {v12, v13, v14}, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v12

    :cond_7
    add-int/lit8 v9, v9, 0x1

    goto :goto_3
.end method

.method private static checkRecurseLax(Ljava/util/Vector;IILmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;Ljava/util/Vector;IILmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xs/XMLSchemaException;
        }
    .end annotation

    move/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p5

    move/from16 v3, p6

    invoke-static {v0, v1, v2, v3}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->checkOccurrenceRange(IIII)Z

    move-result v11

    if-nez v11, :cond_2

    new-instance v12, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;

    const-string/jumbo v13, "rcase-RecurseLax.1"

    const/4 v11, 0x4

    new-array v14, v11, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v14, v11

    const/4 v15, 0x1

    const/4 v11, -0x1

    move/from16 v0, p2

    if-ne v0, v11, :cond_0

    const-string/jumbo v11, "unbounded"

    :goto_0
    aput-object v11, v14, v15

    const/4 v11, 0x2

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v14, v11

    const/4 v15, 0x3

    const/4 v11, -0x1

    move/from16 v0, p6

    if-ne v0, v11, :cond_1

    const-string/jumbo v11, "unbounded"

    :goto_1
    aput-object v11, v14, v15

    invoke-direct {v12, v13, v14}, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v12

    :cond_0
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    goto :goto_0

    :cond_1
    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    goto :goto_1

    :cond_2
    invoke-virtual/range {p0 .. p0}, Ljava/util/Vector;->size()I

    move-result v4

    invoke-virtual/range {p4 .. p4}, Ljava/util/Vector;->size()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_2
    if-lt v7, v4, :cond_3

    return-void

    :cond_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    move v8, v6

    :goto_3
    if-lt v8, v5, :cond_4

    new-instance v11, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;

    const-string/jumbo v12, "rcase-RecurseLax.2"

    const/4 v13, 0x0

    invoke-direct {v11, v12, v13}, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v11

    :cond_4
    move-object/from16 v0, p4

    invoke-virtual {v0, v8}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    add-int/lit8 v6, v6, 0x1

    :try_start_0
    move-object/from16 v0, p3

    move-object/from16 v1, p7

    invoke-static {v9, v0, v10, v1}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->particleValidRestriction(Lmf/org/apache/xerces/impl/xs/XSParticleDecl;Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;Lmf/org/apache/xerces/impl/xs/XSParticleDecl;Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;)Z
    :try_end_0
    .catch Lmf/org/apache/xerces/impl/xs/XMLSchemaException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v11

    if-eqz v11, :cond_5

    add-int/lit8 v6, v6, -0x1

    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :catch_0
    move-exception v11

    add-int/lit8 v8, v8, 0x1

    goto :goto_3
.end method

.method private static checkRecurseUnordered(Ljava/util/Vector;IILmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;Ljava/util/Vector;IILmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xs/XMLSchemaException;
        }
    .end annotation

    move/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p5

    move/from16 v3, p6

    invoke-static {v0, v1, v2, v3}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->checkOccurrenceRange(IIII)Z

    move-result v11

    if-nez v11, :cond_2

    new-instance v12, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;

    const-string/jumbo v13, "rcase-RecurseUnordered.1"

    const/4 v11, 0x4

    new-array v14, v11, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v14, v11

    const/4 v15, 0x1

    const/4 v11, -0x1

    move/from16 v0, p2

    if-ne v0, v11, :cond_0

    const-string/jumbo v11, "unbounded"

    :goto_0
    aput-object v11, v14, v15

    const/4 v11, 0x2

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v14, v11

    const/4 v15, 0x3

    const/4 v11, -0x1

    move/from16 v0, p6

    if-ne v0, v11, :cond_1

    const-string/jumbo v11, "unbounded"

    :goto_1
    aput-object v11, v14, v15

    invoke-direct {v12, v13, v14}, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v12

    :cond_0
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    goto :goto_0

    :cond_1
    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    goto :goto_1

    :cond_2
    invoke-virtual/range {p0 .. p0}, Ljava/util/Vector;->size()I

    move-result v4

    invoke-virtual/range {p4 .. p4}, Ljava/util/Vector;->size()I

    move-result v5

    new-array v6, v5, [Z

    const/4 v7, 0x0

    :goto_2
    if-lt v7, v4, :cond_3

    const/4 v8, 0x0

    :goto_3
    if-lt v8, v5, :cond_6

    return-void

    :cond_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    const/4 v8, 0x0

    :goto_4
    if-lt v8, v5, :cond_4

    new-instance v11, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;

    const-string/jumbo v12, "rcase-RecurseUnordered.2"

    const/4 v13, 0x0

    invoke-direct {v11, v12, v13}, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v11

    :cond_4
    move-object/from16 v0, p4

    invoke-virtual {v0, v8}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    :try_start_0
    move-object/from16 v0, p3

    move-object/from16 v1, p7

    invoke-static {v9, v0, v10, v1}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->particleValidRestriction(Lmf/org/apache/xerces/impl/xs/XSParticleDecl;Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;Lmf/org/apache/xerces/impl/xs/XSParticleDecl;Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;)Z

    aget-boolean v11, v6, v8

    if-eqz v11, :cond_5

    new-instance v11, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;

    const-string/jumbo v12, "rcase-RecurseUnordered.2"

    const/4 v13, 0x0

    invoke-direct {v11, v12, v13}, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v11

    :catch_0
    move-exception v11

    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_5
    const/4 v11, 0x1

    aput-boolean v11, v6, v8
    :try_end_0
    .catch Lmf/org/apache/xerces/impl/xs/XMLSchemaException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_6
    move-object/from16 v0, p4

    invoke-virtual {v0, v8}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    aget-boolean v11, v6, v8

    if-nez v11, :cond_7

    invoke-virtual {v10}, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->emptiable()Z

    move-result v11

    if-nez v11, :cond_7

    new-instance v11, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;

    const-string/jumbo v12, "rcase-RecurseUnordered.2"

    const/4 v13, 0x0

    invoke-direct {v11, v12, v13}, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v11

    :cond_7
    add-int/lit8 v8, v8, 0x1

    goto :goto_3
.end method

.method private static checkSimpleDerivation(Lmf/org/apache/xerces/impl/dv/XSSimpleType;Lmf/org/apache/xerces/impl/dv/XSSimpleType;S)Z
    .locals 9

    const/4 v8, 0x3

    const/4 v5, 0x0

    const/4 v4, 0x1

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v4

    :cond_1
    and-int/lit8 v6, p2, 0x2

    if-nez v6, :cond_2

    invoke-interface {p0}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->getBaseType()Lmf/org/apache/xerces/xs/XSTypeDefinition;

    move-result-object v6

    invoke-interface {v6}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getFinal()S

    move-result v6

    and-int/lit8 v6, v6, 0x2

    if-eqz v6, :cond_3

    :cond_2
    move v4, v5

    goto :goto_0

    :cond_3
    invoke-interface {p0}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->getBaseType()Lmf/org/apache/xerces/xs/XSTypeDefinition;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    if-eq v0, p1, :cond_0

    sget-object v6, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fAnySimpleType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    if-eq v0, v6, :cond_4

    invoke-static {v0, p1, p2}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->checkSimpleDerivation(Lmf/org/apache/xerces/impl/dv/XSSimpleType;Lmf/org/apache/xerces/impl/dv/XSSimpleType;S)Z

    move-result v6

    if-nez v6, :cond_0

    :cond_4
    invoke-interface {p0}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->getVariety()S

    move-result v6

    const/4 v7, 0x2

    if-eq v6, v7, :cond_5

    invoke-interface {p0}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->getVariety()S

    move-result v6

    if-ne v6, v8, :cond_6

    :cond_5
    sget-object v6, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fAnySimpleType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    if-eq p1, v6, :cond_0

    :cond_6
    invoke-interface {p1}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->getVariety()S

    move-result v6

    if-ne v6, v8, :cond_7

    invoke-interface {p1}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->getMemberTypes()Lmf/org/apache/xerces/xs/XSObjectList;

    move-result-object v2

    invoke-interface {v2}, Lmf/org/apache/xerces/xs/XSObjectList;->getLength()I

    move-result v3

    const/4 v1, 0x0

    :goto_1
    if-lt v1, v3, :cond_8

    :cond_7
    move v4, v5

    goto :goto_0

    :cond_8
    invoke-interface {v2, v1}, Lmf/org/apache/xerces/xs/XSObjectList;->item(I)Lmf/org/apache/xerces/xs/XSObject;

    move-result-object p1

    check-cast p1, Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    invoke-static {p0, p1, p2}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->checkSimpleDerivation(Lmf/org/apache/xerces/impl/dv/XSSimpleType;Lmf/org/apache/xerces/impl/dv/XSSimpleType;S)Z

    move-result v6

    if-nez v6, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static checkSimpleDerivationOk(Lmf/org/apache/xerces/impl/dv/XSSimpleType;Lmf/org/apache/xerces/xs/XSTypeDefinition;S)Z
    .locals 3

    const/4 v0, 0x0

    sget-object v1, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fAnySimpleType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    if-ne p0, v1, :cond_2

    sget-object v1, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fAnyType:Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    if-eq p1, v1, :cond_1

    sget-object v1, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fAnySimpleType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    if-eq p1, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    invoke-interface {p1}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getTypeCategory()S

    move-result v1

    const/16 v2, 0xf

    if-ne v1, v2, :cond_3

    sget-object v1, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fAnyType:Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    if-ne p1, v1, :cond_0

    sget-object p1, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fAnySimpleType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    :cond_3
    move-object v0, p1

    check-cast v0, Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    invoke-static {p0, v0, p2}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->checkSimpleDerivation(Lmf/org/apache/xerces/impl/dv/XSSimpleType;Lmf/org/apache/xerces/impl/dv/XSSimpleType;S)Z

    move-result v0

    goto :goto_0
.end method

.method public static checkTypeDerivationOk(Lmf/org/apache/xerces/xs/XSTypeDefinition;Lmf/org/apache/xerces/xs/XSTypeDefinition;S)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    sget-object v2, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fAnyType:Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    if-ne p0, v2, :cond_2

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    sget-object v2, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fAnySimpleType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    if-ne p0, v2, :cond_3

    sget-object v2, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fAnyType:Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    if-eq p1, v2, :cond_0

    sget-object v2, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fAnySimpleType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    if-eq p1, v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_3
    invoke-interface {p0}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getTypeCategory()S

    move-result v0

    const/16 v2, 0x10

    if-ne v0, v2, :cond_6

    invoke-interface {p1}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getTypeCategory()S

    move-result v0

    const/16 v2, 0xf

    if-ne v0, v2, :cond_4

    sget-object v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fAnyType:Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    if-ne p1, v0, :cond_5

    sget-object p1, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fAnySimpleType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    :cond_4
    check-cast p0, Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    move-object v0, p1

    check-cast v0, Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    invoke-static {p0, v0, p2}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->checkSimpleDerivation(Lmf/org/apache/xerces/impl/dv/XSSimpleType;Lmf/org/apache/xerces/impl/dv/XSSimpleType;S)Z

    move-result v0

    goto :goto_0

    :cond_5
    move v0, v1

    goto :goto_0

    :cond_6
    check-cast p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    invoke-static {p0, p1, p2}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->checkComplexDerivation(Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;Lmf/org/apache/xerces/xs/XSTypeDefinition;S)Z

    move-result v0

    goto :goto_0
.end method

.method public static findElemInTable(Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;Lmf/org/apache/xerces/impl/xs/XSElementDecl;Lmf/org/apache/xerces/util/SymbolHash;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xs/XMLSchemaException;
        }
    .end annotation

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p1, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fName:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fTargetNamespace:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    invoke-virtual {p2, v1}, Lmf/org/apache/xerces/util/SymbolHash;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    if-nez v0, :cond_1

    invoke-virtual {p2, v1, p1}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-void

    :cond_1
    if-eq p1, v0, :cond_0

    iget-object v2, p1, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    if-eq v2, v3, :cond_0

    new-instance v2, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;

    const-string v3, "cos-element-consistent"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fName:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, p1, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fName:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-direct {v2, v3, v4}, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v2
.end method

.method public static fullSchemaChecking(Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;Lmf/org/apache/xerces/impl/xs/models/CMBuilder;Lmf/org/apache/xerces/impl/XMLErrorReporter;)V
    .locals 34

    invoke-virtual/range {p0 .. p0}, Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;->getGrammars()[Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object v19

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v29, v0

    add-int/lit8 v20, v29, -0x1

    :goto_0
    if-gez v20, :cond_0

    new-instance v15, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    invoke-direct {v15}, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;-><init>()V

    new-instance v14, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    invoke-direct {v14}, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;-><init>()V

    const/16 v29, 0x3

    move/from16 v0, v29

    iput-short v0, v15, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fType:S

    const/16 v29, 0x3

    move/from16 v0, v29

    iput-short v0, v14, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fType:S

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v29, v0

    add-int/lit8 v18, v29, -0x1

    :goto_1
    if-gez v18, :cond_1

    new-instance v13, Lmf/org/apache/xerces/util/SymbolHash;

    invoke-direct {v13}, Lmf/org/apache/xerces/util/SymbolHash;-><init>()V

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v29, v0

    add-int/lit8 v20, v29, -0x1

    :goto_2
    if-gez v20, :cond_6

    return-void

    :cond_0
    aget-object v29, v19, v20

    invoke-virtual/range {v29 .. v29}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getSubstitutionGroups()[Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    move-result-object v29

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;->addSubstitutionGroup([Lmf/org/apache/xerces/impl/xs/XSElementDecl;)V

    add-int/lit8 v20, v20, -0x1

    goto :goto_0

    :cond_1
    aget-object v29, v19, v18

    invoke-virtual/range {v29 .. v29}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getRedefinedGroupDecls()[Lmf/org/apache/xerces/impl/xs/XSGroupDecl;

    move-result-object v26

    aget-object v29, v19, v18

    invoke-virtual/range {v29 .. v29}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getRGLocators()[Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;

    move-result-object v27

    const/16 v20, 0x0

    :cond_2
    :goto_3
    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v29, v0

    move/from16 v0, v20

    move/from16 v1, v29

    if-lt v0, v1, :cond_3

    add-int/lit8 v18, v18, -0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v21, v20, 0x1

    aget-object v9, v26, v20

    iget-object v10, v9, Lmf/org/apache/xerces/impl/xs/XSGroupDecl;->fModelGroup:Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;

    add-int/lit8 v20, v21, 0x1

    aget-object v4, v26, v21

    iget-object v5, v4, Lmf/org/apache/xerces/impl/xs/XSGroupDecl;->fModelGroup:Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;

    iput-object v10, v15, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fValue:Lmf/org/apache/xerces/xs/XSTerm;

    iput-object v5, v14, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fValue:Lmf/org/apache/xerces/xs/XSTerm;

    if-nez v5, :cond_4

    if-eqz v10, :cond_2

    div-int/lit8 v29, v20, 0x2

    add-int/lit8 v29, v29, -0x1

    aget-object v29, v27, v29

    const-string/jumbo v30, "src-redefine.6.2.2"

    const/16 v31, 0x2

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    iget-object v0, v9, Lmf/org/apache/xerces/impl/xs/XSGroupDecl;->fName:Ljava/lang/String;

    move-object/from16 v33, v0

    aput-object v33, v31, v32

    const/16 v32, 0x1

    const-string/jumbo v33, "rcase-Recurse.2"

    aput-object v33, v31, v32

    move-object/from16 v0, p3

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-static {v0, v1, v2, v3}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->reportSchemaError(Lmf/org/apache/xerces/impl/XMLErrorReporter;Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    :cond_4
    if-nez v10, :cond_5

    invoke-virtual {v14}, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->emptiable()Z

    move-result v29

    if-nez v29, :cond_2

    div-int/lit8 v29, v20, 0x2

    add-int/lit8 v29, v29, -0x1

    aget-object v29, v27, v29

    const-string/jumbo v30, "src-redefine.6.2.2"

    const/16 v31, 0x2

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    iget-object v0, v9, Lmf/org/apache/xerces/impl/xs/XSGroupDecl;->fName:Ljava/lang/String;

    move-object/from16 v33, v0

    aput-object v33, v31, v32

    const/16 v32, 0x1

    const-string/jumbo v33, "rcase-Recurse.2"

    aput-object v33, v31, v32

    move-object/from16 v0, p3

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-static {v0, v1, v2, v3}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->reportSchemaError(Lmf/org/apache/xerces/impl/XMLErrorReporter;Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_5
    :try_start_0
    move-object/from16 v0, p1

    move-object/from16 v1, p1

    invoke-static {v15, v0, v14, v1}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->particleValidRestriction(Lmf/org/apache/xerces/impl/xs/XSParticleDecl;Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;Lmf/org/apache/xerces/impl/xs/XSParticleDecl;Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;)Z
    :try_end_0
    .catch Lmf/org/apache/xerces/impl/xs/XMLSchemaException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_3

    :catch_0
    move-exception v12

    invoke-virtual {v12}, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;->getKey()Ljava/lang/String;

    move-result-object v25

    div-int/lit8 v29, v20, 0x2

    add-int/lit8 v29, v29, -0x1

    aget-object v29, v27, v29

    invoke-virtual {v12}, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;->getArgs()[Ljava/lang/Object;

    move-result-object v30

    move-object/from16 v0, p3

    move-object/from16 v1, v29

    move-object/from16 v2, v25

    move-object/from16 v3, v30

    invoke-static {v0, v1, v2, v3}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->reportSchemaError(Lmf/org/apache/xerces/impl/XMLErrorReporter;Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;Ljava/lang/String;[Ljava/lang/Object;)V

    div-int/lit8 v29, v20, 0x2

    add-int/lit8 v29, v29, -0x1

    aget-object v29, v27, v29

    const-string/jumbo v30, "src-redefine.6.2.2"

    const/16 v31, 0x2

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    iget-object v0, v9, Lmf/org/apache/xerces/impl/xs/XSGroupDecl;->fName:Ljava/lang/String;

    move-object/from16 v33, v0

    aput-object v33, v31, v32

    const/16 v32, 0x1

    aput-object v25, v31, v32

    move-object/from16 v0, p3

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-static {v0, v1, v2, v3}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->reportSchemaError(Lmf/org/apache/xerces/impl/XMLErrorReporter;Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_6
    const/16 v23, 0x0

    aget-object v29, v19, v20

    move-object/from16 v0, v29

    iget-boolean v0, v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fFullChecked:Z

    move/from16 v16, v0

    aget-object v29, v19, v20

    invoke-virtual/range {v29 .. v29}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getUncheckedComplexTypeDecls()[Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    move-result-object v28

    aget-object v29, v19, v20

    invoke-virtual/range {v29 .. v29}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getUncheckedCTLocators()[Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;

    move-result-object v8

    const/16 v22, 0x0

    :goto_4
    move-object/from16 v0, v28

    array-length v0, v0

    move/from16 v29, v0

    move/from16 v0, v22

    move/from16 v1, v29

    if-lt v0, v1, :cond_8

    if-nez v16, :cond_7

    aget-object v29, v19, v20

    move-object/from16 v0, v29

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->setUncheckedTypeNum(I)V

    aget-object v29, v19, v20

    const/16 v30, 0x1

    move/from16 v0, v30

    move-object/from16 v1, v29

    iput-boolean v0, v1, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fFullChecked:Z

    :cond_7
    add-int/lit8 v20, v20, -0x1

    goto/16 :goto_2

    :cond_8
    if-nez v16, :cond_9

    aget-object v29, v28, v22

    move-object/from16 v0, v29

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fParticle:Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    move-object/from16 v29, v0

    if-eqz v29, :cond_9

    invoke-virtual {v13}, Lmf/org/apache/xerces/util/SymbolHash;->clear()V

    :try_start_1
    aget-object v29, v28, v22

    aget-object v30, v28, v22

    move-object/from16 v0, v30

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fParticle:Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    move-object/from16 v30, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move-object/from16 v2, p1

    invoke-static {v0, v1, v13, v2}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->checkElementDeclsConsistent(Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;Lmf/org/apache/xerces/impl/xs/XSParticleDecl;Lmf/org/apache/xerces/util/SymbolHash;Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;)V
    :try_end_1
    .catch Lmf/org/apache/xerces/impl/xs/XMLSchemaException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_9
    :goto_5
    aget-object v29, v28, v22

    move-object/from16 v0, v29

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fBaseType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    move-object/from16 v29, v0

    if-eqz v29, :cond_a

    aget-object v29, v28, v22

    move-object/from16 v0, v29

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fBaseType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    move-object/from16 v29, v0

    sget-object v30, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fAnyType:Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    if-eq v0, v1, :cond_a

    aget-object v29, v28, v22

    move-object/from16 v0, v29

    iget-short v0, v0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fDerivedBy:S

    move/from16 v29, v0

    const/16 v30, 0x2

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_a

    aget-object v29, v28, v22

    move-object/from16 v0, v29

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fBaseType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    instance-of v0, v0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    move/from16 v29, v0

    if-eqz v29, :cond_a

    aget-object v29, v28, v22

    move-object/from16 v0, v29

    iget-object v11, v0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fParticle:Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    aget-object v29, v28, v22

    move-object/from16 v0, v29

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fBaseType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    move-object/from16 v29, v0

    check-cast v29, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    move-object/from16 v0, v29

    iget-object v6, v0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fParticle:Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    if-nez v11, :cond_d

    if-eqz v6, :cond_a

    invoke-virtual {v6}, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->emptiable()Z

    move-result v29

    if-nez v29, :cond_a

    aget-object v29, v8, v22

    const-string v30, "derivation-ok-restriction.5.3.2"

    const/16 v31, 0x2

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    aget-object v33, v28, v22

    move-object/from16 v0, v33

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fName:Ljava/lang/String;

    move-object/from16 v33, v0

    aput-object v33, v31, v32

    const/16 v32, 0x1

    aget-object v33, v28, v22

    move-object/from16 v0, v33

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fBaseType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    move-object/from16 v33, v0

    invoke-interface/range {v33 .. v33}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getName()Ljava/lang/String;

    move-result-object v33

    aput-object v33, v31, v32

    move-object/from16 v0, p3

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-static {v0, v1, v2, v3}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->reportSchemaError(Lmf/org/apache/xerces/impl/XMLErrorReporter;Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_a
    :goto_6
    aget-object v29, v28, v22

    const/16 v30, 0x1

    move-object/from16 v0, v29

    move-object/from16 v1, p2

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->getContentModel(Lmf/org/apache/xerces/impl/xs/models/CMBuilder;Z)Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;

    move-result-object v7

    const/16 v17, 0x0

    if-eqz v7, :cond_b

    :try_start_2
    move-object/from16 v0, p1

    invoke-interface {v7, v0}, Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;->checkUniqueParticleAttribution(Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;)Z
    :try_end_2
    .catch Lmf/org/apache/xerces/impl/xs/XMLSchemaException; {:try_start_2 .. :try_end_2} :catch_3

    move-result v17

    :cond_b
    :goto_7
    if-nez v16, :cond_c

    if-eqz v17, :cond_c

    add-int/lit8 v24, v23, 0x1

    aget-object v29, v28, v22

    aput-object v29, v28, v23

    move/from16 v23, v24

    :cond_c
    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_4

    :catch_1
    move-exception v12

    aget-object v29, v8, v22

    invoke-virtual {v12}, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;->getKey()Ljava/lang/String;

    move-result-object v30

    invoke-virtual {v12}, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;->getArgs()[Ljava/lang/Object;

    move-result-object v31

    move-object/from16 v0, p3

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-static {v0, v1, v2, v3}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->reportSchemaError(Lmf/org/apache/xerces/impl/XMLErrorReporter;Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_5

    :cond_d
    if-eqz v6, :cond_e

    :try_start_3
    aget-object v29, v28, v22

    move-object/from16 v0, v29

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fParticle:Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    move-object/from16 v30, v0

    aget-object v29, v28, v22

    move-object/from16 v0, v29

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fBaseType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    move-object/from16 v29, v0

    check-cast v29, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    move-object/from16 v0, v29

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fParticle:Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    move-object/from16 v29, v0

    move-object/from16 v0, v30

    move-object/from16 v1, p1

    move-object/from16 v2, v29

    move-object/from16 v3, p1

    invoke-static {v0, v1, v2, v3}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->particleValidRestriction(Lmf/org/apache/xerces/impl/xs/XSParticleDecl;Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;Lmf/org/apache/xerces/impl/xs/XSParticleDecl;Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;)Z
    :try_end_3
    .catch Lmf/org/apache/xerces/impl/xs/XMLSchemaException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_6

    :catch_2
    move-exception v12

    aget-object v29, v8, v22

    invoke-virtual {v12}, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;->getKey()Ljava/lang/String;

    move-result-object v30

    invoke-virtual {v12}, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;->getArgs()[Ljava/lang/Object;

    move-result-object v31

    move-object/from16 v0, p3

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-static {v0, v1, v2, v3}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->reportSchemaError(Lmf/org/apache/xerces/impl/XMLErrorReporter;Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;Ljava/lang/String;[Ljava/lang/Object;)V

    aget-object v29, v8, v22

    const-string v30, "derivation-ok-restriction.5.4.2"

    const/16 v31, 0x1

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    aget-object v33, v28, v22

    move-object/from16 v0, v33

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fName:Ljava/lang/String;

    move-object/from16 v33, v0

    aput-object v33, v31, v32

    move-object/from16 v0, p3

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-static {v0, v1, v2, v3}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->reportSchemaError(Lmf/org/apache/xerces/impl/XMLErrorReporter;Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_6

    :cond_e
    aget-object v29, v8, v22

    const-string v30, "derivation-ok-restriction.5.4.2"

    const/16 v31, 0x1

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    aget-object v33, v28, v22

    move-object/from16 v0, v33

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fName:Ljava/lang/String;

    move-object/from16 v33, v0

    aput-object v33, v31, v32

    move-object/from16 v0, p3

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-static {v0, v1, v2, v3}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->reportSchemaError(Lmf/org/apache/xerces/impl/XMLErrorReporter;Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_6

    :catch_3
    move-exception v12

    aget-object v29, v8, v22

    invoke-virtual {v12}, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;->getKey()Ljava/lang/String;

    move-result-object v30

    invoke-virtual {v12}, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;->getArgs()[Ljava/lang/Object;

    move-result-object v31

    move-object/from16 v0, p3

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-static {v0, v1, v2, v3}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->reportSchemaError(Lmf/org/apache/xerces/impl/XMLErrorReporter;Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_7
.end method

.method private static gatherChildren(ILmf/org/apache/xerces/impl/xs/XSParticleDecl;Ljava/util/Vector;)V
    .locals 7

    const/4 v6, 0x1

    iget v3, p1, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fMinOccurs:I

    iget v2, p1, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fMaxOccurs:I

    iget-short v4, p1, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fType:S

    const/4 v5, 0x3

    if-ne v4, v5, :cond_0

    iget-object v5, p1, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fValue:Lmf/org/apache/xerces/xs/XSTerm;

    check-cast v5, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;

    iget-short v4, v5, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fCompositor:S

    :cond_0
    if-eq v4, v6, :cond_1

    const/4 v5, 0x2

    if-ne v4, v5, :cond_3

    :cond_1
    invoke-virtual {p2, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    if-ne v3, v6, :cond_4

    if-eq v2, v6, :cond_5

    :cond_4
    invoke-virtual {p2, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    :cond_5
    if-ne p0, v4, :cond_6

    iget-object v0, p1, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fValue:Lmf/org/apache/xerces/xs/XSTerm;

    check-cast v0, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;

    const/4 v1, 0x0

    :goto_1
    iget v5, v0, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fParticleCount:I

    if-ge v1, v5, :cond_2

    iget-object v5, v0, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fParticles:[Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    aget-object v5, v5, v1

    invoke-static {v4, v5, p2}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->gatherChildren(ILmf/org/apache/xerces/impl/xs/XSParticleDecl;Ljava/util/Vector;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_6
    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {p2, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static getEmptySequence()Lmf/org/apache/xerces/impl/xs/XSParticleDecl;
    .locals 3

    sget-object v2, Lmf/org/apache/xerces/impl/xs/XSConstraints;->fEmptyParticle:Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    if-nez v2, :cond_0

    new-instance v0, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;-><init>()V

    const/16 v2, 0x66

    iput-short v2, v0, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fCompositor:S

    const/4 v2, 0x0

    iput v2, v0, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fParticleCount:I

    const/4 v2, 0x0

    iput-object v2, v0, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fParticles:[Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    sget-object v2, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->EMPTY_LIST:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    iput-object v2, v0, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;

    new-instance v1, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    invoke-direct {v1}, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;-><init>()V

    const/4 v2, 0x3

    iput-short v2, v1, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fType:S

    iput-object v0, v1, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fValue:Lmf/org/apache/xerces/xs/XSTerm;

    sget-object v2, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->EMPTY_LIST:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    iput-object v2, v1, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;

    sput-object v1, Lmf/org/apache/xerces/impl/xs/XSConstraints;->fEmptyParticle:Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    :cond_0
    sget-object v2, Lmf/org/apache/xerces/impl/xs/XSConstraints;->fEmptyParticle:Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    return-object v2
.end method

.method private static getNonUnaryGroup(Lmf/org/apache/xerces/impl/xs/XSParticleDecl;)Lmf/org/apache/xerces/impl/xs/XSParticleDecl;
    .locals 3

    const/4 v2, 0x1

    iget-short v0, p0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fType:S

    if-eq v0, v2, :cond_0

    iget-short v0, p0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fType:S

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    iget v0, p0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fMinOccurs:I

    if-ne v0, v2, :cond_0

    iget v0, p0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fMaxOccurs:I

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fValue:Lmf/org/apache/xerces/xs/XSTerm;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fValue:Lmf/org/apache/xerces/xs/XSTerm;

    check-cast v0, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;

    iget v0, v0, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fParticleCount:I

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fValue:Lmf/org/apache/xerces/xs/XSTerm;

    check-cast v0, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fParticles:[Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->getNonUnaryGroup(Lmf/org/apache/xerces/impl/xs/XSParticleDecl;)Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    move-result-object p0

    goto :goto_0
.end method

.method public static overlapUPA(Ljava/lang/Object;Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;)Z
    .locals 1

    instance-of v0, p0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    if-eqz v0, :cond_1

    instance-of v0, p1, Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    if-eqz v0, :cond_0

    check-cast p0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    check-cast p1, Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    invoke-static {p0, p1, p2}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->overlapUPA(Lmf/org/apache/xerces/impl/xs/XSElementDecl;Lmf/org/apache/xerces/impl/xs/XSElementDecl;Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    check-cast p0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    check-cast p1, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;

    invoke-static {p0, p1, p2}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->overlapUPA(Lmf/org/apache/xerces/impl/xs/XSElementDecl;Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;)Z

    move-result v0

    goto :goto_0

    :cond_1
    instance-of v0, p1, Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    if-eqz v0, :cond_2

    check-cast p1, Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    check-cast p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;

    invoke-static {p1, p0, p2}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->overlapUPA(Lmf/org/apache/xerces/impl/xs/XSElementDecl;Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;)Z

    move-result v0

    goto :goto_0

    :cond_2
    check-cast p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;

    check-cast p1, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;

    invoke-static {p0, p1}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->overlapUPA(Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;)Z

    move-result v0

    goto :goto_0
.end method

.method public static overlapUPA(Lmf/org/apache/xerces/impl/xs/XSElementDecl;Lmf/org/apache/xerces/impl/xs/XSElementDecl;Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;)Z
    .locals 5

    const/4 v2, 0x1

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fName:Ljava/lang/String;

    iget-object v4, p1, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fName:Ljava/lang/String;

    if-ne v3, v4, :cond_1

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fTargetNamespace:Ljava/lang/String;

    iget-object v4, p1, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fTargetNamespace:Ljava/lang/String;

    if-ne v3, v4, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-virtual {p2, p0}, Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;->getSubstitutionGroup(Lmf/org/apache/xerces/impl/xs/XSElementDecl;)[Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    move-result-object v1

    array-length v3, v1

    add-int/lit8 v0, v3, -0x1

    :goto_1
    if-gez v0, :cond_2

    invoke-virtual {p2, p1}, Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;->getSubstitutionGroup(Lmf/org/apache/xerces/impl/xs/XSElementDecl;)[Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    move-result-object v1

    array-length v3, v1

    add-int/lit8 v0, v3, -0x1

    :goto_2
    if-gez v0, :cond_4

    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    aget-object v3, v1, v0

    iget-object v3, v3, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fName:Ljava/lang/String;

    iget-object v4, p1, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fName:Ljava/lang/String;

    if-ne v3, v4, :cond_3

    aget-object v3, v1, v0

    iget-object v3, v3, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fTargetNamespace:Ljava/lang/String;

    iget-object v4, p1, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fTargetNamespace:Ljava/lang/String;

    if-eq v3, v4, :cond_0

    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_4
    aget-object v3, v1, v0

    iget-object v3, v3, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fName:Ljava/lang/String;

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fName:Ljava/lang/String;

    if-ne v3, v4, :cond_5

    aget-object v3, v1, v0

    iget-object v3, v3, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fTargetNamespace:Ljava/lang/String;

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fTargetNamespace:Ljava/lang/String;

    if-eq v3, v4, :cond_0

    :cond_5
    add-int/lit8 v0, v0, -0x1

    goto :goto_2
.end method

.method public static overlapUPA(Lmf/org/apache/xerces/impl/xs/XSElementDecl;Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;)Z
    .locals 4

    const/4 v2, 0x1

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fTargetNamespace:Ljava/lang/String;

    invoke-virtual {p1, v3}, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->allowNamespace(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-virtual {p2, p0}, Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;->getSubstitutionGroup(Lmf/org/apache/xerces/impl/xs/XSElementDecl;)[Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    move-result-object v1

    array-length v3, v1

    add-int/lit8 v0, v3, -0x1

    :goto_1
    if-gez v0, :cond_2

    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    aget-object v3, v1, v0

    iget-object v3, v3, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fTargetNamespace:Ljava/lang/String;

    invoke-virtual {p1, v3}, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->allowNamespace(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method public static overlapUPA(Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;)Z
    .locals 3

    iget-short v1, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fProcessContents:S

    invoke-virtual {p0, p1, v1}, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->performIntersectionWith(Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;S)Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-short v1, v0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fType:S

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    iget-object v1, v0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    array-length v1, v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static particleValidRestriction(Lmf/org/apache/xerces/impl/xs/XSParticleDecl;Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;Lmf/org/apache/xerces/impl/xs/XSParticleDecl;Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xs/XMLSchemaException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-static {p0, p1, p2, p3, v0}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->particleValidRestriction(Lmf/org/apache/xerces/impl/xs/XSParticleDecl;Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;Lmf/org/apache/xerces/impl/xs/XSParticleDecl;Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;Z)Z

    move-result v0

    return v0
.end method

.method private static particleValidRestriction(Lmf/org/apache/xerces/impl/xs/XSParticleDecl;Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;Lmf/org/apache/xerces/impl/xs/XSParticleDecl;Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;Z)Z
    .locals 36
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xs/XMLSchemaException;
        }
    .end annotation

    const/4 v8, 0x0

    const/4 v12, 0x0

    const/4 v14, -0x2

    const/4 v15, -0x2

    const/16 v25, 0x0

    invoke-virtual/range {p0 .. p0}, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual/range {p2 .. p2}, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->emptiable()Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;

    const-string v5, "cos-particle-restrict.a"

    const/4 v9, 0x0

    invoke-direct {v2, v5, v9}, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v2

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual/range {p2 .. p2}, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;

    const-string v5, "cos-particle-restrict.b"

    const/4 v9, 0x0

    invoke-direct {v2, v5, v9}, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v2

    :cond_1
    move-object/from16 v0, p0

    iget-short v0, v0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fType:S

    move/from16 v32, v0

    const/4 v2, 0x3

    move/from16 v0, v32

    if-ne v0, v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fValue:Lmf/org/apache/xerces/xs/XSTerm;

    check-cast v2, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;

    iget-short v0, v2, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fCompositor:S

    move/from16 v32, v0

    invoke-static/range {p0 .. p0}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->getNonUnaryGroup(Lmf/org/apache/xerces/impl/xs/XSParticleDecl;)Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    if-eq v0, v1, :cond_2

    move-object/from16 p0, v33

    move-object/from16 v0, p0

    iget-short v0, v0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fType:S

    move/from16 v32, v0

    const/4 v2, 0x3

    move/from16 v0, v32

    if-ne v0, v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fValue:Lmf/org/apache/xerces/xs/XSTerm;

    check-cast v2, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;

    iget-short v0, v2, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fCompositor:S

    move/from16 v32, v0

    :cond_2
    invoke-static/range {p0 .. p0}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->removePointlessChildren(Lmf/org/apache/xerces/impl/xs/XSParticleDecl;)Ljava/util/Vector;

    move-result-object v8

    :cond_3
    move-object/from16 v0, p0

    iget v3, v0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fMinOccurs:I

    move-object/from16 v0, p0

    iget v4, v0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fMaxOccurs:I

    if-eqz p1, :cond_10

    const/4 v2, 0x1

    move/from16 v0, v32

    if-ne v0, v2, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fValue:Lmf/org/apache/xerces/xs/XSTerm;

    move-object/from16 v29, v0

    check-cast v29, Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    move-object/from16 v0, v29

    iget-short v2, v0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fScope:S

    const/4 v5, 0x1

    if-ne v2, v5, :cond_10

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;->getSubstitutionGroup(Lmf/org/apache/xerces/impl/xs/XSElementDecl;)[Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    move-result-object v35

    move-object/from16 v0, v35

    array-length v2, v0

    if-lez v2, :cond_10

    const/16 v32, 0x65

    move v14, v3

    move v15, v4

    new-instance v8, Ljava/util/Vector;

    move-object/from16 v0, v35

    array-length v2, v0

    add-int/lit8 v2, v2, 0x1

    invoke-direct {v8, v2}, Ljava/util/Vector;-><init>(I)V

    const/16 v34, 0x0

    :goto_0
    move-object/from16 v0, v35

    array-length v2, v0

    move/from16 v0, v34

    if-lt v0, v2, :cond_7

    move-object/from16 v0, v29

    invoke-static {v8, v0}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->addElementToParticleVector(Ljava/util/Vector;Lmf/org/apache/xerces/impl/xs/XSElementDecl;)V

    sget-object v2, Lmf/org/apache/xerces/impl/xs/XSConstraints;->ELEMENT_PARTICLE_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v8, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/16 p1, 0x0

    move/from16 v30, v15

    move/from16 v31, v14

    move-object v13, v8

    :goto_1
    move-object/from16 v0, p2

    iget-short v0, v0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fType:S

    move/from16 v26, v0

    const/4 v2, 0x3

    move/from16 v0, v26

    if-ne v0, v2, :cond_5

    move-object/from16 v0, p2

    iget-object v2, v0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fValue:Lmf/org/apache/xerces/xs/XSTerm;

    check-cast v2, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;

    iget-short v0, v2, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fCompositor:S

    move/from16 v26, v0

    invoke-static/range {p2 .. p2}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->getNonUnaryGroup(Lmf/org/apache/xerces/impl/xs/XSParticleDecl;)Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p2

    if-eq v0, v1, :cond_4

    move-object/from16 p2, v28

    move-object/from16 v0, p2

    iget-short v0, v0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fType:S

    move/from16 v26, v0

    const/4 v2, 0x3

    move/from16 v0, v26

    if-ne v0, v2, :cond_4

    move-object/from16 v0, p2

    iget-object v2, v0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fValue:Lmf/org/apache/xerces/xs/XSTerm;

    check-cast v2, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;

    iget-short v0, v2, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fCompositor:S

    move/from16 v26, v0

    :cond_4
    invoke-static/range {p2 .. p2}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->removePointlessChildren(Lmf/org/apache/xerces/impl/xs/XSParticleDecl;)Ljava/util/Vector;

    move-result-object v12

    :cond_5
    move-object/from16 v0, p2

    iget v6, v0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fMinOccurs:I

    move-object/from16 v0, p2

    iget v7, v0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fMaxOccurs:I

    if-eqz p3, :cond_6

    const/4 v2, 0x1

    move/from16 v0, v26

    if-ne v0, v2, :cond_6

    move-object/from16 v0, p2

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fValue:Lmf/org/apache/xerces/xs/XSTerm;

    move-object/from16 v24, v0

    check-cast v24, Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    move-object/from16 v0, v24

    iget-short v2, v0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fScope:S

    const/4 v5, 0x1

    if-ne v2, v5, :cond_6

    move-object/from16 v0, p3

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;->getSubstitutionGroup(Lmf/org/apache/xerces/impl/xs/XSElementDecl;)[Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    move-result-object v27

    move-object/from16 v0, v27

    array-length v2, v0

    if-lez v2, :cond_6

    const/16 v26, 0x65

    new-instance v12, Ljava/util/Vector;

    move-object/from16 v0, v27

    array-length v2, v0

    add-int/lit8 v2, v2, 0x1

    invoke-direct {v12, v2}, Ljava/util/Vector;-><init>(I)V

    const/16 v34, 0x0

    :goto_2
    move-object/from16 v0, v27

    array-length v2, v0

    move/from16 v0, v34

    if-lt v0, v2, :cond_8

    move-object/from16 v0, v24

    invoke-static {v12, v0}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->addElementToParticleVector(Ljava/util/Vector;Lmf/org/apache/xerces/impl/xs/XSElementDecl;)V

    sget-object v2, Lmf/org/apache/xerces/impl/xs/XSConstraints;->ELEMENT_PARTICLE_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v12, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/16 p3, 0x0

    const/16 v25, 0x1

    :cond_6
    sparse-switch v32, :sswitch_data_0

    move/from16 v15, v30

    move/from16 v14, v31

    move-object v8, v13

    :goto_3
    return v25

    :cond_7
    aget-object v2, v35, v34

    invoke-static {v8, v2}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->addElementToParticleVector(Ljava/util/Vector;Lmf/org/apache/xerces/impl/xs/XSElementDecl;)V

    add-int/lit8 v34, v34, 0x1

    goto/16 :goto_0

    :cond_8
    aget-object v2, v27, v34

    invoke-static {v12, v2}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->addElementToParticleVector(Ljava/util/Vector;Lmf/org/apache/xerces/impl/xs/XSElementDecl;)V

    add-int/lit8 v34, v34, 0x1

    goto :goto_2

    :sswitch_0
    sparse-switch v26, :sswitch_data_1

    new-instance v2, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;

    const-string v5, "Internal-Error"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string/jumbo v11, "in particleValidRestriction"

    aput-object v11, v9, v10

    invoke-direct {v2, v5, v9}, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v2

    :sswitch_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fValue:Lmf/org/apache/xerces/xs/XSTerm;

    check-cast v2, Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    move-object/from16 v0, p2

    iget-object v5, v0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fValue:Lmf/org/apache/xerces/xs/XSTerm;

    check-cast v5, Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    invoke-static/range {v2 .. v7}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->checkNameAndTypeOK(Lmf/org/apache/xerces/impl/xs/XSElementDecl;IILmf/org/apache/xerces/impl/xs/XSElementDecl;II)V

    move/from16 v15, v30

    move/from16 v14, v31

    move-object v8, v13

    goto :goto_3

    :sswitch_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fValue:Lmf/org/apache/xerces/xs/XSTerm;

    check-cast v2, Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    move-object/from16 v0, p2

    iget-object v5, v0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fValue:Lmf/org/apache/xerces/xs/XSTerm;

    check-cast v5, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;

    move/from16 v8, p4

    invoke-static/range {v2 .. v8}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->checkNSCompat(Lmf/org/apache/xerces/impl/xs/XSElementDecl;IILmf/org/apache/xerces/impl/xs/XSWildcardDecl;IIZ)V

    move/from16 v15, v30

    move/from16 v14, v31

    move-object v8, v13

    goto :goto_3

    :sswitch_3
    new-instance v8, Ljava/util/Vector;

    invoke-direct {v8}, Ljava/util/Vector;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v8, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    const/4 v9, 0x1

    const/4 v10, 0x1

    move-object/from16 v11, p1

    move v13, v6

    move v14, v7

    move-object/from16 v15, p3

    invoke-static/range {v8 .. v15}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->checkRecurseLax(Ljava/util/Vector;IILmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;Ljava/util/Vector;IILmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;)V

    move/from16 v15, v30

    move/from16 v14, v31

    goto :goto_3

    :sswitch_4
    new-instance v8, Ljava/util/Vector;

    invoke-direct {v8}, Ljava/util/Vector;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v8, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    const/4 v9, 0x1

    const/4 v10, 0x1

    move-object/from16 v11, p1

    move v13, v6

    move v14, v7

    move-object/from16 v15, p3

    invoke-static/range {v8 .. v15}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->checkRecurse(Ljava/util/Vector;IILmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;Ljava/util/Vector;IILmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;)V

    move/from16 v15, v30

    move/from16 v14, v31

    goto/16 :goto_3

    :sswitch_5
    sparse-switch v26, :sswitch_data_2

    new-instance v2, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;

    const-string v5, "Internal-Error"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string/jumbo v11, "in particleValidRestriction"

    aput-object v11, v9, v10

    invoke-direct {v2, v5, v9}, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v2

    :sswitch_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fValue:Lmf/org/apache/xerces/xs/XSTerm;

    check-cast v2, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;

    move-object/from16 v0, p2

    iget-object v5, v0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fValue:Lmf/org/apache/xerces/xs/XSTerm;

    check-cast v5, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;

    invoke-static/range {v2 .. v7}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->checkNSSubset(Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;IILmf/org/apache/xerces/impl/xs/XSWildcardDecl;II)V

    move/from16 v15, v30

    move/from16 v14, v31

    move-object v8, v13

    goto/16 :goto_3

    :sswitch_7
    new-instance v2, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;

    const-string v5, "cos-particle-restrict.2"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string v11, "any:choice,sequence,all,elt"

    aput-object v11, v9, v10

    invoke-direct {v2, v5, v9}, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v2

    :sswitch_8
    sparse-switch v26, :sswitch_data_3

    new-instance v2, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;

    const-string v5, "Internal-Error"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string/jumbo v11, "in particleValidRestriction"

    aput-object v11, v9, v10

    invoke-direct {v2, v5, v9}, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v2

    :sswitch_9
    const/4 v2, -0x2

    move/from16 v0, v31

    if-ne v0, v2, :cond_f

    invoke-virtual/range {p0 .. p0}, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->minEffectiveTotalRange()I

    move-result v14

    :goto_4
    const/4 v2, -0x2

    move/from16 v0, v30

    if-ne v0, v2, :cond_e

    invoke-virtual/range {p0 .. p0}, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->maxEffectiveTotalRange()I

    move-result v15

    :goto_5
    move-object/from16 v16, p1

    move-object/from16 v17, p2

    move/from16 v18, v6

    move/from16 v19, v7

    move/from16 v20, p4

    invoke-static/range {v13 .. v20}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->checkNSRecurseCheckCardinality(Ljava/util/Vector;IILmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;Lmf/org/apache/xerces/impl/xs/XSParticleDecl;IIZ)V

    move-object v8, v13

    goto/16 :goto_3

    :sswitch_a
    move-object/from16 v16, v13

    move/from16 v17, v3

    move/from16 v18, v4

    move-object/from16 v19, p1

    move-object/from16 v20, v12

    move/from16 v21, v6

    move/from16 v22, v7

    move-object/from16 v23, p3

    invoke-static/range {v16 .. v23}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->checkRecurse(Ljava/util/Vector;IILmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;Ljava/util/Vector;IILmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;)V

    move/from16 v15, v30

    move/from16 v14, v31

    move-object v8, v13

    goto/16 :goto_3

    :sswitch_b
    new-instance v2, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;

    const-string v5, "cos-particle-restrict.2"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string v11, "all:choice,sequence,elt"

    aput-object v11, v9, v10

    invoke-direct {v2, v5, v9}, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v2

    :sswitch_c
    sparse-switch v26, :sswitch_data_4

    new-instance v2, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;

    const-string v5, "Internal-Error"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string/jumbo v11, "in particleValidRestriction"

    aput-object v11, v9, v10

    invoke-direct {v2, v5, v9}, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v2

    :sswitch_d
    const/4 v2, -0x2

    move/from16 v0, v31

    if-ne v0, v2, :cond_d

    invoke-virtual/range {p0 .. p0}, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->minEffectiveTotalRange()I

    move-result v14

    :goto_6
    const/4 v2, -0x2

    move/from16 v0, v30

    if-ne v0, v2, :cond_c

    invoke-virtual/range {p0 .. p0}, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->maxEffectiveTotalRange()I

    move-result v15

    :goto_7
    move-object/from16 v16, p1

    move-object/from16 v17, p2

    move/from16 v18, v6

    move/from16 v19, v7

    move/from16 v20, p4

    invoke-static/range {v13 .. v20}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->checkNSRecurseCheckCardinality(Ljava/util/Vector;IILmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;Lmf/org/apache/xerces/impl/xs/XSParticleDecl;IIZ)V

    move-object v8, v13

    goto/16 :goto_3

    :sswitch_e
    move-object/from16 v16, v13

    move/from16 v17, v3

    move/from16 v18, v4

    move-object/from16 v19, p1

    move-object/from16 v20, v12

    move/from16 v21, v6

    move/from16 v22, v7

    move-object/from16 v23, p3

    invoke-static/range {v16 .. v23}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->checkRecurseLax(Ljava/util/Vector;IILmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;Ljava/util/Vector;IILmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;)V

    move/from16 v15, v30

    move/from16 v14, v31

    move-object v8, v13

    goto/16 :goto_3

    :sswitch_f
    new-instance v2, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;

    const-string v5, "cos-particle-restrict.2"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string v11, "choice:all,sequence,elt"

    aput-object v11, v9, v10

    invoke-direct {v2, v5, v9}, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v2

    :sswitch_10
    sparse-switch v26, :sswitch_data_5

    new-instance v2, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;

    const-string v5, "Internal-Error"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string/jumbo v11, "in particleValidRestriction"

    aput-object v11, v9, v10

    invoke-direct {v2, v5, v9}, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v2

    :sswitch_11
    const/4 v2, -0x2

    move/from16 v0, v31

    if-ne v0, v2, :cond_b

    invoke-virtual/range {p0 .. p0}, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->minEffectiveTotalRange()I

    move-result v14

    :goto_8
    const/4 v2, -0x2

    move/from16 v0, v30

    if-ne v0, v2, :cond_a

    invoke-virtual/range {p0 .. p0}, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->maxEffectiveTotalRange()I

    move-result v15

    :goto_9
    move-object/from16 v16, p1

    move-object/from16 v17, p2

    move/from16 v18, v6

    move/from16 v19, v7

    move/from16 v20, p4

    invoke-static/range {v13 .. v20}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->checkNSRecurseCheckCardinality(Ljava/util/Vector;IILmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;Lmf/org/apache/xerces/impl/xs/XSParticleDecl;IIZ)V

    move-object v8, v13

    goto/16 :goto_3

    :sswitch_12
    move-object/from16 v16, v13

    move/from16 v17, v3

    move/from16 v18, v4

    move-object/from16 v19, p1

    move-object/from16 v20, v12

    move/from16 v21, v6

    move/from16 v22, v7

    move-object/from16 v23, p3

    invoke-static/range {v16 .. v23}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->checkRecurseUnordered(Ljava/util/Vector;IILmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;Ljava/util/Vector;IILmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;)V

    move/from16 v15, v30

    move/from16 v14, v31

    move-object v8, v13

    goto/16 :goto_3

    :sswitch_13
    move-object/from16 v16, v13

    move/from16 v17, v3

    move/from16 v18, v4

    move-object/from16 v19, p1

    move-object/from16 v20, v12

    move/from16 v21, v6

    move/from16 v22, v7

    move-object/from16 v23, p3

    invoke-static/range {v16 .. v23}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->checkRecurse(Ljava/util/Vector;IILmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;Ljava/util/Vector;IILmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;)V

    move/from16 v15, v30

    move/from16 v14, v31

    move-object v8, v13

    goto/16 :goto_3

    :sswitch_14
    invoke-virtual {v13}, Ljava/util/Vector;->size()I

    move-result v2

    mul-int v17, v3, v2

    const/4 v2, -0x1

    if-ne v4, v2, :cond_9

    move/from16 v18, v4

    :goto_a
    move-object/from16 v16, v13

    move-object/from16 v19, p1

    move-object/from16 v20, v12

    move/from16 v21, v6

    move/from16 v22, v7

    move-object/from16 v23, p3

    invoke-static/range {v16 .. v23}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->checkMapAndSum(Ljava/util/Vector;IILmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;Ljava/util/Vector;IILmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;)V

    move/from16 v15, v30

    move/from16 v14, v31

    move-object v8, v13

    goto/16 :goto_3

    :cond_9
    invoke-virtual {v13}, Ljava/util/Vector;->size()I

    move-result v2

    mul-int v18, v4, v2

    goto :goto_a

    :sswitch_15
    new-instance v2, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;

    const-string v5, "cos-particle-restrict.2"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string/jumbo v11, "seq:elt"

    aput-object v11, v9, v10

    invoke-direct {v2, v5, v9}, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v2

    :cond_a
    move/from16 v15, v30

    goto :goto_9

    :cond_b
    move/from16 v14, v31

    goto/16 :goto_8

    :cond_c
    move/from16 v15, v30

    goto/16 :goto_7

    :cond_d
    move/from16 v14, v31

    goto/16 :goto_6

    :cond_e
    move/from16 v15, v30

    goto/16 :goto_5

    :cond_f
    move/from16 v14, v31

    goto/16 :goto_4

    :cond_10
    move/from16 v30, v15

    move/from16 v31, v14

    move-object v13, v8

    goto/16 :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_5
        0x65 -> :sswitch_c
        0x66 -> :sswitch_10
        0x67 -> :sswitch_8
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x65 -> :sswitch_3
        0x66 -> :sswitch_4
        0x67 -> :sswitch_4
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        0x1 -> :sswitch_7
        0x2 -> :sswitch_6
        0x65 -> :sswitch_7
        0x66 -> :sswitch_7
        0x67 -> :sswitch_7
    .end sparse-switch

    :sswitch_data_3
    .sparse-switch
        0x1 -> :sswitch_b
        0x2 -> :sswitch_9
        0x65 -> :sswitch_b
        0x66 -> :sswitch_b
        0x67 -> :sswitch_a
    .end sparse-switch

    :sswitch_data_4
    .sparse-switch
        0x1 -> :sswitch_f
        0x2 -> :sswitch_d
        0x65 -> :sswitch_e
        0x66 -> :sswitch_f
        0x67 -> :sswitch_f
    .end sparse-switch

    :sswitch_data_5
    .sparse-switch
        0x1 -> :sswitch_15
        0x2 -> :sswitch_11
        0x65 -> :sswitch_14
        0x66 -> :sswitch_13
        0x67 -> :sswitch_12
    .end sparse-switch
.end method

.method private static removePointlessChildren(Lmf/org/apache/xerces/impl/xs/XSParticleDecl;)Ljava/util/Vector;
    .locals 5

    iget-short v3, p0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fType:S

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    iget-short v3, p0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fType:S

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    :cond_0
    const/4 v0, 0x0

    :cond_1
    return-object v0

    :cond_2
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fValue:Lmf/org/apache/xerces/xs/XSTerm;

    check-cast v1, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;

    const/4 v2, 0x0

    :goto_0
    iget v3, v1, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fParticleCount:I

    if-ge v2, v3, :cond_1

    iget-short v3, v1, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fCompositor:S

    iget-object v4, v1, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fParticles:[Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    aget-object v4, v4, v2

    invoke-static {v3, v4, v0}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->gatherChildren(ILmf/org/apache/xerces/impl/xs/XSParticleDecl;Ljava/util/Vector;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method static reportSchemaError(Lmf/org/apache/xerces/impl/XMLErrorReporter;Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 6

    const/4 v5, 0x1

    if-eqz p1, :cond_0

    const-string/jumbo v2, "http://www.w3.org/TR/xml-schema-1"

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Lmf/org/apache/xerces/xni/XMLLocator;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "http://www.w3.org/TR/xml-schema-1"

    invoke-virtual {p0, v0, p2, p3, v5}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    goto :goto_0
.end method
