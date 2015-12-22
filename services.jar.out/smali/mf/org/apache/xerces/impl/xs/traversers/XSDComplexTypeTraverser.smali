.class Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;
.super Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractParticleTraverser;
.source "XSDComplexTypeTraverser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final GLOBAL_NUM:I = 0xb

.field private static fErrorContent:Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

.field private static fErrorWildcard:Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;


# instance fields
.field private fAnnotations:[Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

.field private fAttrGrp:Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;

.field private fBaseType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

.field private fBlock:S

.field private fComplexTypeDecl:Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

.field private fContentType:S

.field private fDerivedBy:S

.field private fFinal:S

.field private fGlobalStore:[Ljava/lang/Object;

.field private fGlobalStorePos:I

.field private fIsAbstract:Z

.field private fName:Ljava/lang/String;

.field private fParticle:Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

.field private fTargetNamespace:Ljava/lang/String;

.field private fXSSimpleType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fErrorContent:Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    sput-object v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fErrorWildcard:Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;

    return-void
.end method

.method constructor <init>(Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractParticleTraverser;-><init>(Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;)V

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fName:Ljava/lang/String;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fTargetNamespace:Ljava/lang/String;

    const/4 v0, 0x2

    iput-short v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fDerivedBy:S

    iput-short v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fFinal:S

    iput-short v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fBlock:S

    iput-short v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fContentType:S

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fBaseType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrGrp:Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fXSSimpleType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fParticle:Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    iput-boolean v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fIsAbstract:Z

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fComplexTypeDecl:Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAnnotations:[Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStore:[Ljava/lang/Object;

    iput v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStorePos:I

    return-void
.end method

.method private addAnnotation(Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;)V
    .locals 4

    const/4 v3, 0x0

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAnnotations:[Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    if-nez v1, :cond_1

    const/4 v1, 0x1

    new-array v1, v1, [Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAnnotations:[Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    :goto_1
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAnnotations:[Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAnnotations:[Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    aput-object p1, v1, v2

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAnnotations:[Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    array-length v1, v1

    add-int/lit8 v1, v1, 0x1

    new-array v0, v1, [Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAnnotations:[Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAnnotations:[Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAnnotations:[Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    goto :goto_1
.end method

.method private contentBackup()V
    .locals 6

    const/4 v3, 0x0

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStore:[Ljava/lang/Object;

    if-nez v1, :cond_0

    const/16 v1, 0xb

    new-array v1, v1, [Ljava/lang/Object;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStore:[Ljava/lang/Object;

    iput v3, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStorePos:I

    :cond_0
    iget v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStorePos:I

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStore:[Ljava/lang/Object;

    array-length v2, v2

    if-ne v1, v2, :cond_1

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStorePos:I

    add-int/lit8 v1, v1, 0xb

    new-array v0, v1, [Ljava/lang/Object;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStore:[Ljava/lang/Object;

    iget v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStorePos:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStore:[Ljava/lang/Object;

    :cond_1
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStore:[Ljava/lang/Object;

    iget v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStorePos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStorePos:I

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fComplexTypeDecl:Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    aput-object v3, v1, v2

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStore:[Ljava/lang/Object;

    iget v3, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStorePos:I

    add-int/lit8 v1, v3, 0x1

    iput v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStorePos:I

    iget-boolean v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fIsAbstract:Z

    if-eqz v1, :cond_2

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_0
    aput-object v1, v2, v3

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStore:[Ljava/lang/Object;

    iget v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStorePos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStorePos:I

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fName:Ljava/lang/String;

    aput-object v3, v1, v2

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStore:[Ljava/lang/Object;

    iget v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStorePos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStorePos:I

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fTargetNamespace:Ljava/lang/String;

    aput-object v3, v1, v2

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStore:[Ljava/lang/Object;

    iget v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStorePos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStorePos:I

    new-instance v3, Ljava/lang/Integer;

    iget-short v4, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fDerivedBy:S

    shl-int/lit8 v4, v4, 0x10

    iget-short v5, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fFinal:S

    add-int/2addr v4, v5

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStore:[Ljava/lang/Object;

    iget v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStorePos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStorePos:I

    new-instance v3, Ljava/lang/Integer;

    iget-short v4, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fBlock:S

    shl-int/lit8 v4, v4, 0x10

    iget-short v5, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fContentType:S

    add-int/2addr v4, v5

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStore:[Ljava/lang/Object;

    iget v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStorePos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStorePos:I

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fBaseType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    aput-object v3, v1, v2

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStore:[Ljava/lang/Object;

    iget v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStorePos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStorePos:I

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrGrp:Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;

    aput-object v3, v1, v2

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStore:[Ljava/lang/Object;

    iget v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStorePos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStorePos:I

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fParticle:Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    aput-object v3, v1, v2

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStore:[Ljava/lang/Object;

    iget v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStorePos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStorePos:I

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fXSSimpleType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    aput-object v3, v1, v2

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStore:[Ljava/lang/Object;

    iget v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStorePos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStorePos:I

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAnnotations:[Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    aput-object v3, v1, v2

    return-void

    :cond_2
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto/16 :goto_0
.end method

.method private contentRestore()V
    .locals 3

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStore:[Ljava/lang/Object;

    iget v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStorePos:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStorePos:I

    aget-object v1, v1, v2

    check-cast v1, [Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAnnotations:[Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStore:[Ljava/lang/Object;

    iget v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStorePos:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStorePos:I

    aget-object v1, v1, v2

    check-cast v1, Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fXSSimpleType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStore:[Ljava/lang/Object;

    iget v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStorePos:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStorePos:I

    aget-object v1, v1, v2

    check-cast v1, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fParticle:Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStore:[Ljava/lang/Object;

    iget v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStorePos:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStorePos:I

    aget-object v1, v1, v2

    check-cast v1, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrGrp:Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStore:[Ljava/lang/Object;

    iget v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStorePos:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStorePos:I

    aget-object v1, v1, v2

    check-cast v1, Lmf/org/apache/xerces/xs/XSTypeDefinition;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fBaseType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStore:[Ljava/lang/Object;

    iget v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStorePos:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStorePos:I

    aget-object v1, v1, v2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    shr-int/lit8 v1, v0, 0x10

    int-to-short v1, v1

    iput-short v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fBlock:S

    int-to-short v1, v0

    iput-short v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fContentType:S

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStore:[Ljava/lang/Object;

    iget v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStorePos:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStorePos:I

    aget-object v1, v1, v2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    shr-int/lit8 v1, v0, 0x10

    int-to-short v1, v1

    iput-short v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fDerivedBy:S

    int-to-short v1, v0

    iput-short v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fFinal:S

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStore:[Ljava/lang/Object;

    iget v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStorePos:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStorePos:I

    aget-object v1, v1, v2

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fTargetNamespace:Ljava/lang/String;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStore:[Ljava/lang/Object;

    iget v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStorePos:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStorePos:I

    aget-object v1, v1, v2

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fName:Ljava/lang/String;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStore:[Ljava/lang/Object;

    iget v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStorePos:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStorePos:I

    aget-object v1, v1, v2

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fIsAbstract:Z

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStore:[Ljava/lang/Object;

    iget v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStorePos:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fGlobalStorePos:I

    aget-object v1, v1, v2

    check-cast v1, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fComplexTypeDecl:Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    return-void
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

.method private static getErrorContent()Lmf/org/apache/xerces/impl/xs/XSParticleDecl;
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    sget-object v3, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fErrorContent:Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    if-nez v3, :cond_0

    new-instance v2, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    invoke-direct {v2}, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;-><init>()V

    const/4 v3, 0x2

    iput-short v3, v2, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fType:S

    invoke-static {}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->getErrorWildcard()Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;

    move-result-object v3

    iput-object v3, v2, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fValue:Lmf/org/apache/xerces/xs/XSTerm;

    iput v4, v2, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fMinOccurs:I

    const/4 v3, -0x1

    iput v3, v2, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fMaxOccurs:I

    new-instance v1, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;

    invoke-direct {v1}, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;-><init>()V

    const/16 v3, 0x66

    iput-short v3, v1, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fCompositor:S

    iput v5, v1, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fParticleCount:I

    new-array v3, v5, [Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    iput-object v3, v1, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fParticles:[Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    iget-object v3, v1, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fParticles:[Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    aput-object v2, v3, v4

    new-instance v0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;-><init>()V

    const/4 v3, 0x3

    iput-short v3, v0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fType:S

    iput-object v1, v0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fValue:Lmf/org/apache/xerces/xs/XSTerm;

    sput-object v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fErrorContent:Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    :cond_0
    sget-object v3, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fErrorContent:Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    return-object v3
.end method

.method private static getErrorWildcard()Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;
    .locals 2

    sget-object v1, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fErrorWildcard:Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;

    if-nez v1, :cond_0

    new-instance v0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;-><init>()V

    const/4 v1, 0x2

    iput-short v1, v0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fProcessContents:S

    sput-object v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fErrorWildcard:Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;

    :cond_0
    sget-object v1, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fErrorWildcard:Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;

    return-object v1
.end method

.method private handleComplexTypeError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    :cond_0
    sget-object v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fAnyType:Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fBaseType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    const/4 v0, 0x3

    iput-short v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fContentType:S

    const/4 v0, 0x0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fXSSimpleType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    invoke-static {}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->getErrorContent()Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fParticle:Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrGrp:Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;

    invoke-static {}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->getErrorWildcard()Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;

    move-result-object v1

    iput-object v1, v0, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAttributeWC:Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;

    return-void
.end method

.method private isAttrOrAttrGroup(Lmf/org/w3c/dom/Element;)Z
    .locals 2

    invoke-static {p1}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ATTRIBUTE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ATTRIBUTEGROUP:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ANYATTRIBUTE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private mergeAttributes(Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;Ljava/lang/String;ZLmf/org/w3c/dom/Element;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;
        }
    .end annotation

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->getAttributeUses()Lmf/org/apache/xerces/xs/XSObjectList;

    move-result-object v2

    const/4 v6, 0x0

    invoke-interface {v2}, Lmf/org/apache/xerces/xs/XSObjectList;->getLength()I

    move-result v1

    const/4 v4, 0x0

    :goto_0
    if-lt v4, v1, :cond_1

    if-eqz p4, :cond_0

    iget-object v7, p2, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAttributeWC:Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;

    if-nez v7, :cond_4

    iget-object v7, p1, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAttributeWC:Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;

    iput-object v7, p2, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAttributeWC:Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;

    :cond_0
    return-void

    :cond_1
    invoke-interface {v2, v4}, Lmf/org/apache/xerces/xs/XSObjectList;->item(I)Lmf/org/apache/xerces/xs/XSObject;

    move-result-object v6

    check-cast v6, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;

    iget-object v7, v6, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fAttrDecl:Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    invoke-virtual {v7}, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->getNamespace()Ljava/lang/String;

    move-result-object v7

    iget-object v8, v6, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fAttrDecl:Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    invoke-virtual {v8}, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v7, v8}, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->getAttributeUse(Ljava/lang/String;Ljava/lang/String;)Lmf/org/apache/xerces/xs/XSAttributeUse;

    move-result-object v3

    if-nez v3, :cond_2

    invoke-virtual {p2, v6}, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->addAttributeUse(Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3

    new-instance v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;

    const-string v8, "ct-props-correct.5"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object p3, v9, v10

    const/4 v10, 0x1

    aput-object v5, v9, v10

    const/4 v10, 0x2

    iget-object v11, v6, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fAttrDecl:Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    invoke-virtual {v11}, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->getName()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    move-object/from16 v0, p5

    invoke-direct {v7, v8, v9, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;-><init>(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    throw v7

    :cond_2
    if-eq v3, v6, :cond_3

    if-eqz p4, :cond_3

    const-string v7, "ct-props-correct.4"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p3, v8, v9

    const/4 v9, 0x1

    iget-object v10, v6, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fAttrDecl:Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    invoke-virtual {v10}, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->getName()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    move-object/from16 v0, p5

    invoke-virtual {p0, v7, v8, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    invoke-virtual {p2, v3, v6}, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->replaceAttributeUse(Lmf/org/apache/xerces/xs/XSAttributeUse;Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;)V

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    iget-object v7, p1, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAttributeWC:Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;

    if-eqz v7, :cond_0

    iget-object v7, p2, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAttributeWC:Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;

    iget-object v8, p1, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAttributeWC:Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;

    iget-object v9, p2, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAttributeWC:Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;

    iget-short v9, v9, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fProcessContents:S

    invoke-virtual {v7, v8, v9}, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->performUnionWith(Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;S)Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;

    move-result-object v7

    iput-object v7, p2, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAttributeWC:Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;

    iget-object v7, p2, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAttributeWC:Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;

    if-nez v7, :cond_0

    new-instance v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;

    const-string/jumbo v8, "src-ct.5"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object p3, v9, v10

    move-object/from16 v0, p5

    invoke-direct {v7, v8, v9, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;-><init>(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    throw v7
.end method

.method private processComplexContent(Lmf/org/w3c/dom/Element;ZZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v13, 0x0

    const/4 v10, 0x0

    if-eqz p1, :cond_0

    invoke-static {p1}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v9

    sget-object v2, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_GROUP:Ljava/lang/String;

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    iget-object v2, v2, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fGroupTraverser:Lmf/org/apache/xerces/impl/xs/traversers/XSDGroupTraverser;

    move-object/from16 v0, p4

    move-object/from16 v1, p5

    invoke-virtual {v2, p1, v0, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDGroupTraverser;->traverseLocal(Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    move-result-object v13

    invoke-static {p1}, Lmf/org/apache/xerces/util/DOMUtil;->getNextSiblingElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v3

    :cond_0
    :goto_0
    if-eqz v10, :cond_2

    invoke-static {p1}, Lmf/org/apache/xerces/util/DOMUtil;->getFirstChildElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v8

    if-eqz v8, :cond_1

    invoke-static {v8}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ANNOTATION:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v8}, Lmf/org/apache/xerces/util/DOMUtil;->getNextSiblingElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v8

    :cond_1
    if-nez v8, :cond_2

    const/4 v13, 0x0

    :cond_2
    if-nez v13, :cond_3

    if-eqz p2, :cond_3

    invoke-static {}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->getEmptySequence()Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    move-result-object v13

    :cond_3
    iput-object v13, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fParticle:Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fParticle:Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    if-nez v2, :cond_b

    const/4 v2, 0x0

    iput-short v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fContentType:S

    :goto_1
    if-eqz v3, :cond_f

    invoke-direct {p0, v3}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->isAttrOrAttrGroup(Lmf/org/w3c/dom/Element;)Z

    move-result v2

    if-nez v2, :cond_d

    new-instance v2, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;

    const-string/jumbo v4, "s4s-elt-invalid-content.1"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fName:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {v3}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-direct {v2, v4, v5, v3}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;-><init>(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    throw v2

    :cond_4
    sget-object v2, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_SEQUENCE:Ljava/lang/String;

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v6, 0x0

    iget-object v7, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fComplexTypeDecl:Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    move-object v2, p0

    move-object v3, p1

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    invoke-virtual/range {v2 .. v7}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->traverseSequence(Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;ILmf/org/apache/xerces/xs/XSObject;)Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    move-result-object v13

    if-eqz v13, :cond_5

    iget-object v11, v13, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fValue:Lmf/org/apache/xerces/xs/XSTerm;

    check-cast v11, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;

    iget v2, v11, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fParticleCount:I

    if-nez v2, :cond_5

    const/4 v10, 0x1

    :cond_5
    invoke-static {p1}, Lmf/org/apache/xerces/util/DOMUtil;->getNextSiblingElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v3

    goto :goto_0

    :cond_6
    sget-object v2, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_CHOICE:Ljava/lang/String;

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    const/4 v6, 0x0

    iget-object v7, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fComplexTypeDecl:Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    move-object v2, p0

    move-object v3, p1

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    invoke-virtual/range {v2 .. v7}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->traverseChoice(Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;ILmf/org/apache/xerces/xs/XSObject;)Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    move-result-object v13

    if-eqz v13, :cond_7

    iget v2, v13, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fMinOccurs:I

    if-nez v2, :cond_7

    iget-object v11, v13, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fValue:Lmf/org/apache/xerces/xs/XSTerm;

    check-cast v11, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;

    iget v2, v11, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fParticleCount:I

    if-nez v2, :cond_7

    const/4 v10, 0x1

    :cond_7
    invoke-static {p1}, Lmf/org/apache/xerces/util/DOMUtil;->getNextSiblingElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v3

    goto/16 :goto_0

    :cond_8
    sget-object v2, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ALL:Ljava/lang/String;

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    const/16 v6, 0x8

    iget-object v7, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fComplexTypeDecl:Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    move-object v2, p0

    move-object v3, p1

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    invoke-virtual/range {v2 .. v7}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->traverseAll(Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;ILmf/org/apache/xerces/xs/XSObject;)Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    move-result-object v13

    if-eqz v13, :cond_9

    iget-object v11, v13, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fValue:Lmf/org/apache/xerces/xs/XSTerm;

    check-cast v11, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;

    iget v2, v11, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fParticleCount:I

    if-nez v2, :cond_9

    const/4 v10, 0x1

    :cond_9
    invoke-static {p1}, Lmf/org/apache/xerces/util/DOMUtil;->getNextSiblingElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v3

    goto/16 :goto_0

    :cond_a
    move-object v3, p1

    goto/16 :goto_0

    :cond_b
    if-eqz p2, :cond_c

    const/4 v2, 0x3

    iput-short v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fContentType:S

    goto/16 :goto_1

    :cond_c
    const/4 v2, 0x2

    iput-short v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fContentType:S

    goto/16 :goto_1

    :cond_d
    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrGrp:Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;

    iget-object v7, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fComplexTypeDecl:Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    move-object v2, p0

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    invoke-virtual/range {v2 .. v7}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->traverseAttrsAndAttrGrps(Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;)Lmf/org/w3c/dom/Element;

    move-result-object v12

    if-eqz v12, :cond_e

    new-instance v2, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;

    const-string/jumbo v4, "s4s-elt-invalid-content.1"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fName:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {v12}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-direct {v2, v4, v5, v12}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;-><init>(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    throw v2

    :cond_e
    if-nez p3, :cond_f

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrGrp:Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;

    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->removeProhibitedAttrs()V

    :cond_f
    return-void
.end method

.method private traverseComplexContent(Lmf/org/w3c/dom/Element;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)V
    .locals 34
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    const/4 v4, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v3, v0, v4, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->checkAttributes(Lmf/org/w3c/dom/Element;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)[Ljava/lang/Object;

    move-result-object v6

    move/from16 v13, p2

    sget v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_MIXED:I

    aget-object v30, v6, v3

    check-cast v30, Ljava/lang/Boolean;

    if-eqz v30, :cond_0

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    :cond_0
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fXSSimpleType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    invoke-static/range {p1 .. p1}, Lmf/org/apache/xerces/util/DOMUtil;->getFirstChildElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v23

    if-eqz v23, :cond_1

    invoke-static/range {v23 .. v23}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ANNOTATION:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v6, v3, v2}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->traverseAnnotationDecl(Lmf/org/w3c/dom/Element;[Ljava/lang/Object;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->addAnnotation(Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;)V

    invoke-static/range {v23 .. v23}, Lmf/org/apache/xerces/util/DOMUtil;->getNextSiblingElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v8

    :goto_0
    if-nez v8, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    move-object/from16 v0, p3

    invoke-virtual {v3, v6, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    new-instance v3, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;

    const-string/jumbo v4, "s4s-elt-invalid-content.2"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v11, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fName:Ljava/lang/String;

    aput-object v11, v7, v9

    const/4 v9, 0x1

    sget-object v11, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_COMPLEXCONTENT:Ljava/lang/String;

    aput-object v11, v7, v9

    move-object/from16 v0, p1

    invoke-direct {v3, v4, v7, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;-><init>(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    throw v3

    :cond_1
    invoke-static/range {p1 .. p1}, Lmf/org/apache/xerces/util/DOMUtil;->getSyntheticAnnotation(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    const/4 v7, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v8, p3

    invoke-virtual/range {v3 .. v8}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->traverseSyntheticAnnotation(Lmf/org/w3c/dom/Element;Ljava/lang/String;[Ljava/lang/Object;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->addAnnotation(Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;)V

    :cond_2
    move-object/from16 v8, v23

    goto :goto_0

    :cond_3
    invoke-static {v8}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v24

    sget-object v3, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_RESTRICTION:Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v3, 0x2

    move-object/from16 v0, p0

    iput-short v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fDerivedBy:S

    :goto_1
    invoke-static {v8}, Lmf/org/apache/xerces/util/DOMUtil;->getNextSiblingElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v26

    if-eqz v26, :cond_6

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    move-object/from16 v0, p3

    invoke-virtual {v3, v6, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    invoke-static/range {v26 .. v26}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v32

    new-instance v3, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;

    const-string/jumbo v4, "s4s-elt-invalid-content.1"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v11, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fName:Ljava/lang/String;

    aput-object v11, v7, v9

    const/4 v9, 0x1

    aput-object v32, v7, v9

    move-object/from16 v0, v26

    invoke-direct {v3, v4, v7, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;-><init>(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    throw v3

    :cond_4
    sget-object v3, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_EXTENSION:Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-short v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fDerivedBy:S

    goto :goto_1

    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    move-object/from16 v0, p3

    invoke-virtual {v3, v6, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    new-instance v3, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;

    const-string/jumbo v4, "s4s-elt-invalid-content.1"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v11, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fName:Ljava/lang/String;

    aput-object v11, v7, v9

    const/4 v9, 0x1

    aput-object v24, v7, v9

    invoke-direct {v3, v4, v7, v8}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;-><init>(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    throw v3

    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v3, v8, v4, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->checkAttributes(Lmf/org/w3c/dom/Element;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)[Ljava/lang/Object;

    move-result-object v10

    sget v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_BASE:I

    aget-object v22, v10, v3

    check-cast v22, Lmf/org/apache/xerces/xni/QName;

    if-nez v22, :cond_7

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    move-object/from16 v0, p3

    invoke-virtual {v3, v6, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    move-object/from16 v0, p3

    invoke-virtual {v3, v10, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    new-instance v3, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;

    const-string/jumbo v4, "s4s-att-must-appear"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v24, v7, v9

    const/4 v9, 0x1

    const-string v11, "base"

    aput-object v11, v7, v9

    invoke-direct {v3, v4, v7, v8}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;-><init>(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    throw v3

    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    const/4 v4, 0x7

    move-object/from16 v0, p3

    move-object/from16 v1, v22

    invoke-virtual {v3, v0, v4, v1, v8}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->getGlobalDecl(Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;ILmf/org/apache/xerces/xni/QName;Lmf/org/w3c/dom/Element;)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Lmf/org/apache/xerces/xs/XSTypeDefinition;

    if-nez v33, :cond_8

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    move-object/from16 v0, p3

    invoke-virtual {v3, v6, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    move-object/from16 v0, p3

    invoke-virtual {v3, v10, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    new-instance v3, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;

    invoke-direct {v3}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;-><init>()V

    throw v3

    :cond_8
    move-object/from16 v0, v33

    instance-of v3, v0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    if-nez v3, :cond_9

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    move-object/from16 v0, p3

    invoke-virtual {v3, v6, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    move-object/from16 v0, p3

    invoke-virtual {v3, v10, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    new-instance v3, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;

    const-string/jumbo v4, "src-ct.1"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v11, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fName:Ljava/lang/String;

    aput-object v11, v7, v9

    const/4 v9, 0x1

    invoke-interface/range {v33 .. v33}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getName()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v7, v9

    invoke-direct {v3, v4, v7, v8}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;-><init>(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    throw v3

    :cond_9
    move-object/from16 v21, v33

    check-cast v21, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fBaseType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    invoke-virtual/range {v21 .. v21}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->getFinal()S

    move-result v3

    move-object/from16 v0, p0

    iget-short v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fDerivedBy:S

    and-int/2addr v3, v4

    if-eqz v3, :cond_b

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    move-object/from16 v0, p3

    invoke-virtual {v3, v6, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    move-object/from16 v0, p3

    invoke-virtual {v3, v10, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    move-object/from16 v0, p0

    iget-short v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fDerivedBy:S

    const/4 v4, 0x1

    if-ne v3, v4, :cond_a

    const-string v28, "cos-ct-extends.1.1"

    :goto_2
    new-instance v3, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fName:Ljava/lang/String;

    aput-object v9, v4, v7

    const/4 v7, 0x1

    move-object/from16 v0, p0

    iget-object v9, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fBaseType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    invoke-interface {v9}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getName()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v7

    move-object/from16 v0, v28

    invoke-direct {v3, v0, v4, v8}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;-><init>(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    throw v3

    :cond_a
    const-string v28, "derivation-ok-restriction.1"

    goto :goto_2

    :cond_b
    invoke-static {v8}, Lmf/org/apache/xerces/util/DOMUtil;->getFirstChildElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v8

    if-eqz v8, :cond_e

    invoke-static {v8}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ANNOTATION:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v8, v10, v3, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->traverseAnnotationDecl(Lmf/org/w3c/dom/Element;[Ljava/lang/Object;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->addAnnotation(Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;)V

    invoke-static {v8}, Lmf/org/apache/xerces/util/DOMUtil;->getNextSiblingElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v8

    :cond_c
    :goto_3
    if-eqz v8, :cond_f

    invoke-static {v8}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ANNOTATION:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    move-object/from16 v0, p3

    invoke-virtual {v3, v6, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    move-object/from16 v0, p3

    invoke-virtual {v3, v10, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    new-instance v3, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;

    const-string/jumbo v4, "s4s-elt-invalid-content.1"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v11, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fName:Ljava/lang/String;

    aput-object v11, v7, v9

    const/4 v9, 0x1

    sget-object v11, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ANNOTATION:Ljava/lang/String;

    aput-object v11, v7, v9

    invoke-direct {v3, v4, v7, v8}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;-><init>(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    throw v3

    :cond_d
    invoke-static {v8}, Lmf/org/apache/xerces/util/DOMUtil;->getSyntheticAnnotation(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_c

    const/4 v11, 0x0

    move-object/from16 v7, p0

    move-object v9, v5

    move-object/from16 v12, p3

    invoke-virtual/range {v7 .. v12}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->traverseSyntheticAnnotation(Lmf/org/w3c/dom/Element;Ljava/lang/String;[Ljava/lang/Object;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->addAnnotation(Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;)V

    goto :goto_3

    :cond_e
    invoke-static {v8}, Lmf/org/apache/xerces/util/DOMUtil;->getSyntheticAnnotation(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_f

    const/4 v11, 0x0

    move-object/from16 v7, p0

    move-object v9, v5

    move-object/from16 v12, p3

    invoke-virtual/range {v7 .. v12}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->traverseSyntheticAnnotation(Lmf/org/w3c/dom/Element;Ljava/lang/String;[Ljava/lang/Object;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->addAnnotation(Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;)V

    :cond_f
    const/4 v14, 0x1

    move-object/from16 v11, p0

    move-object v12, v8

    move-object/from16 v15, p3

    move-object/from16 v16, p4

    :try_start_0
    invoke-direct/range {v11 .. v16}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->processComplexContent(Lmf/org/w3c/dom/Element;ZZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)V
    :try_end_0
    .catch Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual/range {v21 .. v21}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->getParticle()Lmf/org/apache/xerces/xs/XSParticle;

    move-result-object v20

    check-cast v20, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    move-object/from16 v0, p0

    iget-short v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fDerivedBy:S

    const/4 v4, 0x2

    if-ne v3, v4, :cond_11

    move-object/from16 v0, p0

    iget-short v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fContentType:S

    const/4 v4, 0x3

    if-ne v3, v4, :cond_10

    invoke-virtual/range {v21 .. v21}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->getContentType()S

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_10

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    move-object/from16 v0, p3

    invoke-virtual {v3, v6, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    move-object/from16 v0, p3

    invoke-virtual {v3, v10, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    new-instance v3, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;

    const-string v4, "derivation-ok-restriction.5.4.1.2"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v11, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fName:Ljava/lang/String;

    aput-object v11, v7, v9

    const/4 v9, 0x1

    invoke-virtual/range {v21 .. v21}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->getName()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v7, v9

    invoke-direct {v3, v4, v7, v8}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;-><init>(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    throw v3

    :catch_0
    move-exception v25

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    move-object/from16 v0, p3

    invoke-virtual {v3, v6, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    move-object/from16 v0, p3

    invoke-virtual {v3, v10, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    throw v25

    :cond_10
    :try_start_1
    invoke-virtual/range {v21 .. v21}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->getAttrGrp()Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrGrp:Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fName:Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v14, p0

    move-object/from16 v19, v8

    invoke-direct/range {v14 .. v19}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->mergeAttributes(Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;Ljava/lang/String;ZLmf/org/w3c/dom/Element;)V
    :try_end_1
    .catch Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError; {:try_start_1 .. :try_end_1} :catch_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrGrp:Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->removeProhibitedAttrs()V

    sget-object v3, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fAnyType:Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    move-object/from16 v0, v21

    if-eq v0, v3, :cond_13

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrGrp:Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;

    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fName:Ljava/lang/String;

    invoke-virtual/range {v21 .. v21}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->getAttrGrp()Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;

    move-result-object v7

    invoke-virtual {v3, v4, v7}, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->validRestrictionOf(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;)[Ljava/lang/Object;

    move-result-object v27

    if-eqz v27, :cond_13

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    move-object/from16 v0, p3

    invoke-virtual {v3, v6, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    move-object/from16 v0, p3

    invoke-virtual {v3, v10, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    new-instance v4, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;

    move-object/from16 v0, v27

    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    aget-object v3, v27, v3

    check-cast v3, Ljava/lang/String;

    move-object/from16 v0, v27

    invoke-direct {v4, v3, v0, v8}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;-><init>(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    throw v4

    :catch_1
    move-exception v25

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    move-object/from16 v0, p3

    invoke-virtual {v3, v6, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    move-object/from16 v0, p3

    invoke-virtual {v3, v10, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    throw v25

    :cond_11
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fParticle:Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    if-nez v3, :cond_14

    invoke-virtual/range {v21 .. v21}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->getContentType()S

    move-result v3

    move-object/from16 v0, p0

    iput-short v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fContentType:S

    invoke-virtual/range {v21 .. v21}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->getSimpleType()Lmf/org/apache/xerces/xs/XSSimpleTypeDefinition;

    move-result-object v3

    check-cast v3, Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    move-object/from16 v0, p0

    iput-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fXSSimpleType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fParticle:Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    :cond_12
    :goto_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrGrp:Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->removeProhibitedAttrs()V

    :try_start_2
    invoke-virtual/range {v21 .. v21}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->getAttrGrp()Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrGrp:Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fName:Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    move-object/from16 v14, p0

    move-object/from16 v19, v8

    invoke-direct/range {v14 .. v19}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->mergeAttributes(Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;Ljava/lang/String;ZLmf/org/w3c/dom/Element;)V
    :try_end_2
    .catch Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError; {:try_start_2 .. :try_end_2} :catch_2

    :cond_13
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    move-object/from16 v0, p3

    invoke-virtual {v3, v6, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    move-object/from16 v0, p3

    invoke-virtual {v3, v10, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    return-void

    :cond_14
    invoke-virtual/range {v21 .. v21}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->getContentType()S

    move-result v3

    if-eqz v3, :cond_12

    move-object/from16 v0, p0

    iget-short v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fContentType:S

    const/4 v4, 0x2

    if-ne v3, v4, :cond_15

    invoke-virtual/range {v21 .. v21}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->getContentType()S

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_15

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    move-object/from16 v0, p3

    invoke-virtual {v3, v6, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    move-object/from16 v0, p3

    invoke-virtual {v3, v10, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    new-instance v3, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;

    const-string v4, "cos-ct-extends.1.4.3.2.2.1.a"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v11, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fName:Ljava/lang/String;

    aput-object v11, v7, v9

    invoke-direct {v3, v4, v7, v8}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;-><init>(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    throw v3

    :cond_15
    move-object/from16 v0, p0

    iget-short v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fContentType:S

    const/4 v4, 0x3

    if-ne v3, v4, :cond_16

    invoke-virtual/range {v21 .. v21}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->getContentType()S

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_16

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    move-object/from16 v0, p3

    invoke-virtual {v3, v6, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    move-object/from16 v0, p3

    invoke-virtual {v3, v10, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    new-instance v3, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;

    const-string v4, "cos-ct-extends.1.4.3.2.2.1.b"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v11, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fName:Ljava/lang/String;

    aput-object v11, v7, v9

    invoke-direct {v3, v4, v7, v8}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;-><init>(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    throw v3

    :cond_16
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fParticle:Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    iget-short v3, v3, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fType:S

    const/4 v4, 0x3

    if-ne v3, v4, :cond_17

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fParticle:Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    iget-object v3, v3, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fValue:Lmf/org/apache/xerces/xs/XSTerm;

    check-cast v3, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;

    iget-short v3, v3, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fCompositor:S

    const/16 v4, 0x67

    if-eq v3, v4, :cond_18

    :cond_17
    invoke-virtual/range {v21 .. v21}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->getParticle()Lmf/org/apache/xerces/xs/XSParticle;

    move-result-object v3

    check-cast v3, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    iget-short v3, v3, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fType:S

    const/4 v4, 0x3

    if-ne v3, v4, :cond_19

    invoke-virtual/range {v21 .. v21}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->getParticle()Lmf/org/apache/xerces/xs/XSParticle;

    move-result-object v3

    check-cast v3, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    iget-object v3, v3, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fValue:Lmf/org/apache/xerces/xs/XSTerm;

    check-cast v3, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;

    iget-short v3, v3, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fCompositor:S

    const/16 v4, 0x67

    if-ne v3, v4, :cond_19

    :cond_18
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    move-object/from16 v0, p3

    invoke-virtual {v3, v6, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    move-object/from16 v0, p3

    invoke-virtual {v3, v10, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    new-instance v3, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;

    const-string v4, "cos-all-limited.1.2"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-direct {v3, v4, v7, v8}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;-><init>(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    throw v3

    :cond_19
    new-instance v29, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;

    invoke-direct/range {v29 .. v29}, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;-><init>()V

    const/16 v3, 0x66

    move-object/from16 v0, v29

    iput-short v3, v0, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fCompositor:S

    const/4 v3, 0x2

    move-object/from16 v0, v29

    iput v3, v0, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fParticleCount:I

    const/4 v3, 0x2

    new-array v3, v3, [Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    move-object/from16 v0, v29

    iput-object v3, v0, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fParticles:[Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    move-object/from16 v0, v29

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fParticles:[Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    const/4 v7, 0x0

    invoke-virtual/range {v21 .. v21}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->getParticle()Lmf/org/apache/xerces/xs/XSParticle;

    move-result-object v3

    check-cast v3, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    aput-object v3, v4, v7

    move-object/from16 v0, v29

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fParticles:[Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget-object v7, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fParticle:Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    aput-object v7, v3, v4

    sget-object v3, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->EMPTY_LIST:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    move-object/from16 v0, v29

    iput-object v3, v0, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;

    new-instance v31, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    invoke-direct/range {v31 .. v31}, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;-><init>()V

    const/4 v3, 0x3

    move-object/from16 v0, v31

    iput-short v3, v0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fType:S

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    iput-object v0, v1, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fValue:Lmf/org/apache/xerces/xs/XSTerm;

    sget-object v3, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->EMPTY_LIST:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    move-object/from16 v0, v31

    iput-object v3, v0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fParticle:Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    goto/16 :goto_4

    :catch_2
    move-exception v25

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    move-object/from16 v0, p3

    invoke-virtual {v3, v6, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    move-object/from16 v0, p3

    invoke-virtual {v3, v10, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    throw v25
.end method

.method private traverseComplexContentDecl(Lmf/org/w3c/dom/Element;Z)V
    .locals 0

    return-void
.end method

.method private traverseComplexTypeDecl(Lmf/org/w3c/dom/Element;Ljava/lang/String;[Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;
    .locals 30

    new-instance v4, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    invoke-direct {v4}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;-><init>()V

    move-object/from16 v0, p0

    iput-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fComplexTypeDecl:Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    new-instance v4, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;

    invoke-direct {v4}, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;-><init>()V

    move-object/from16 v0, p0

    iput-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrGrp:Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;

    sget v4, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_ABSTRACT:I

    aget-object v22, p3, v4

    check-cast v22, Ljava/lang/Boolean;

    sget v4, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_BLOCK:I

    aget-object v23, p3, v4

    check-cast v23, Lmf/org/apache/xerces/impl/xs/util/XInt;

    sget v4, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_MIXED:I

    aget-object v28, p3, v4

    check-cast v28, Ljava/lang/Boolean;

    sget v4, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_FINAL:I

    aget-object v27, p3, v4

    check-cast v27, Lmf/org/apache/xerces/impl/xs/util/XInt;

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fComplexTypeDecl:Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    move-object/from16 v0, p0

    iget-object v5, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->setName(Ljava/lang/String;)V

    move-object/from16 v0, p4

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fTargetNamespace:Ljava/lang/String;

    if-nez v23, :cond_1

    move-object/from16 v0, p4

    iget-short v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fBlockDefault:S

    :goto_0
    move-object/from16 v0, p0

    iput-short v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fBlock:S

    if-nez v27, :cond_2

    move-object/from16 v0, p4

    iget-short v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fFinalDefault:S

    :goto_1
    move-object/from16 v0, p0

    iput-short v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fFinal:S

    move-object/from16 v0, p0

    iget-short v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fBlock:S

    and-int/lit8 v4, v4, 0x3

    int-to-short v4, v4

    move-object/from16 v0, p0

    iput-short v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fBlock:S

    move-object/from16 v0, p0

    iget-short v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fFinal:S

    and-int/lit8 v4, v4, 0x3

    int-to-short v4, v4

    move-object/from16 v0, p0

    iput-short v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fFinal:S

    if-eqz v22, :cond_3

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v4, 0x1

    :goto_2
    move-object/from16 v0, p0

    iput-boolean v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fIsAbstract:Z

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAnnotations:[Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    const/4 v8, 0x0

    :try_start_0
    invoke-static/range {p1 .. p1}, Lmf/org/apache/xerces/util/DOMUtil;->getFirstChildElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;
    :try_end_0
    .catch Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v24

    if-eqz v24, :cond_6

    :try_start_1
    invoke-static/range {v24 .. v24}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ANNOTATION:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-virtual {v0, v1, v2, v4, v3}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->traverseAnnotationDecl(Lmf/org/w3c/dom/Element;[Ljava/lang/Object;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->addAnnotation(Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;)V

    invoke-static/range {v24 .. v24}, Lmf/org/apache/xerces/util/DOMUtil;->getNextSiblingElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;
    :try_end_1
    .catch Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v8

    :goto_3
    if-eqz v8, :cond_8

    :try_start_2
    invoke-static {v8}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ANNOTATION:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    new-instance v4, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;

    const-string/jumbo v5, "s4s-elt-invalid-content.1"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v10, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fName:Ljava/lang/String;

    aput-object v10, v7, v9

    const/4 v9, 0x1

    sget-object v10, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ANNOTATION:Ljava/lang/String;

    aput-object v10, v7, v9

    invoke-direct {v4, v5, v7, v8}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;-><init>(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    throw v4
    :try_end_2
    .catch Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v25

    :goto_4
    invoke-virtual/range {v25 .. v25}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;->getMessage()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v25

    iget-object v5, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;->errorSubstText:[Ljava/lang/Object;

    move-object/from16 v0, v25

    iget-object v7, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;->errorElem:Lmf/org/w3c/dom/Element;

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5, v7}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->handleComplexTypeError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    :cond_0
    :goto_5
    move-object/from16 v0, p0

    iget-object v9, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fComplexTypeDecl:Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    move-object/from16 v0, p0

    iget-object v10, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v11, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fTargetNamespace:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fBaseType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    move-object/from16 v0, p0

    iget-short v13, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fDerivedBy:S

    move-object/from16 v0, p0

    iget-short v14, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fFinal:S

    move-object/from16 v0, p0

    iget-short v15, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fBlock:S

    move-object/from16 v0, p0

    iget-short v0, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fContentType:S

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fIsAbstract:Z

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrGrp:Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fXSSimpleType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fParticle:Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    move-object/from16 v20, v0

    new-instance v21, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    move-object/from16 v0, p0

    iget-object v5, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAnnotations:[Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAnnotations:[Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    if-nez v4, :cond_c

    const/4 v4, 0x0

    :goto_6
    move-object/from16 v0, v21

    invoke-direct {v0, v5, v4}, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;-><init>([Lmf/org/apache/xerces/xs/XSObject;I)V

    invoke-virtual/range {v9 .. v21}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->setValues(Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xs/XSTypeDefinition;SSSSZLmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;Lmf/org/apache/xerces/impl/dv/XSSimpleType;Lmf/org/apache/xerces/impl/xs/XSParticleDecl;Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fComplexTypeDecl:Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    return-object v4

    :cond_1
    invoke-virtual/range {v23 .. v23}, Lmf/org/apache/xerces/impl/xs/util/XInt;->shortValue()S

    move-result v4

    goto/16 :goto_0

    :cond_2
    invoke-virtual/range {v27 .. v27}, Lmf/org/apache/xerces/impl/xs/util/XInt;->shortValue()S

    move-result v4

    goto/16 :goto_1

    :cond_3
    const/4 v4, 0x0

    goto/16 :goto_2

    :cond_4
    :try_start_3
    invoke-static/range {p1 .. p1}, Lmf/org/apache/xerces/util/DOMUtil;->getSyntheticAnnotation(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_5

    const/4 v8, 0x0

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v7, p3

    move-object/from16 v9, p4

    invoke-virtual/range {v4 .. v9}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->traverseSyntheticAnnotation(Lmf/org/w3c/dom/Element;Ljava/lang/String;[Ljava/lang/Object;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->addAnnotation(Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;)V

    :cond_5
    move-object/from16 v8, v24

    goto/16 :goto_3

    :cond_6
    invoke-static/range {p1 .. p1}, Lmf/org/apache/xerces/util/DOMUtil;->getSyntheticAnnotation(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_7

    const/4 v8, 0x0

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v7, p3

    move-object/from16 v9, p4

    invoke-virtual/range {v4 .. v9}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->traverseSyntheticAnnotation(Lmf/org/w3c/dom/Element;Ljava/lang/String;[Ljava/lang/Object;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->addAnnotation(Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;)V
    :try_end_3
    .catch Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError; {:try_start_3 .. :try_end_3} :catch_1

    :cond_7
    move-object/from16 v8, v24

    :cond_8
    if-nez v8, :cond_9

    :try_start_4
    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fAnyType:Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    move-object/from16 v0, p0

    iput-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fBaseType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    const/4 v4, 0x2

    move-object/from16 v0, p0

    iput-short v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fDerivedBy:S

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    const/4 v10, 0x0

    move-object/from16 v7, p0

    move-object/from16 v11, p4

    move-object/from16 v12, p5

    invoke-direct/range {v7 .. v12}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->processComplexContent(Lmf/org/w3c/dom/Element;ZZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)V

    goto/16 :goto_5

    :cond_9
    invoke-static {v8}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_SIMPLECONTENT:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    invoke-direct {v0, v8, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->traverseSimpleContent(Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)V

    invoke-static {v8}, Lmf/org/apache/xerces/util/DOMUtil;->getNextSiblingElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v26

    if-eqz v26, :cond_0

    invoke-static/range {v26 .. v26}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v29

    new-instance v4, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;

    const-string/jumbo v5, "s4s-elt-invalid-content.1"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v10, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fName:Ljava/lang/String;

    aput-object v10, v7, v9

    const/4 v9, 0x1

    aput-object v29, v7, v9

    move-object/from16 v0, v26

    invoke-direct {v4, v5, v7, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;-><init>(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    throw v4

    :cond_a
    invoke-static {v8}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_COMPLEXCONTENT:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    invoke-direct {v0, v8, v4, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->traverseComplexContent(Lmf/org/w3c/dom/Element;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)V

    invoke-static {v8}, Lmf/org/apache/xerces/util/DOMUtil;->getNextSiblingElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v26

    if-eqz v26, :cond_0

    invoke-static/range {v26 .. v26}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v29

    new-instance v4, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;

    const-string/jumbo v5, "s4s-elt-invalid-content.1"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v10, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fName:Ljava/lang/String;

    aput-object v10, v7, v9

    const/4 v9, 0x1

    aput-object v29, v7, v9

    move-object/from16 v0, v26

    invoke-direct {v4, v5, v7, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;-><init>(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    throw v4

    :cond_b
    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fAnyType:Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    move-object/from16 v0, p0

    iput-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fBaseType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    const/4 v4, 0x2

    move-object/from16 v0, p0

    iput-short v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fDerivedBy:S

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    const/4 v10, 0x0

    move-object/from16 v7, p0

    move-object/from16 v11, p4

    move-object/from16 v12, p5

    invoke-direct/range {v7 .. v12}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->processComplexContent(Lmf/org/w3c/dom/Element;ZZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)V
    :try_end_4
    .catch Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_5

    :cond_c
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAnnotations:[Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    array-length v4, v4

    goto/16 :goto_6

    :catch_1
    move-exception v25

    move-object/from16 v8, v24

    goto/16 :goto_4
.end method

.method private traverseSimpleContent(Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)V
    .locals 42
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    const/4 v4, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v3, v0, v4, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->checkAttributes(Lmf/org/w3c/dom/Element;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)[Ljava/lang/Object;

    move-result-object v6

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-short v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fContentType:S

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fParticle:Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    invoke-static/range {p1 .. p1}, Lmf/org/apache/xerces/util/DOMUtil;->getFirstChildElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v39

    if-eqz v39, :cond_1

    invoke-static/range {v39 .. v39}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ANNOTATION:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v6, v3, v2}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->traverseAnnotationDecl(Lmf/org/w3c/dom/Element;[Ljava/lang/Object;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->addAnnotation(Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;)V

    invoke-static/range {v39 .. v39}, Lmf/org/apache/xerces/util/DOMUtil;->getNextSiblingElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v39

    :cond_0
    :goto_0
    if-nez v39, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    move-object/from16 v0, p2

    invoke-virtual {v3, v6, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    new-instance v3, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;

    const-string/jumbo v4, "s4s-elt-invalid-content.2"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v11, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fName:Ljava/lang/String;

    aput-object v11, v7, v9

    const/4 v9, 0x1

    sget-object v11, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_SIMPLECONTENT:Ljava/lang/String;

    aput-object v11, v7, v9

    move-object/from16 v0, p1

    invoke-direct {v3, v4, v7, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;-><init>(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    throw v3

    :cond_1
    invoke-static/range {p1 .. p1}, Lmf/org/apache/xerces/util/DOMUtil;->getSyntheticAnnotation(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    const/4 v7, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v8, p2

    invoke-virtual/range {v3 .. v8}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->traverseSyntheticAnnotation(Lmf/org/w3c/dom/Element;Ljava/lang/String;[Ljava/lang/Object;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->addAnnotation(Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;)V

    goto :goto_0

    :cond_2
    invoke-static/range {v39 .. v39}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v40

    sget-object v3, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_RESTRICTION:Ljava/lang/String;

    move-object/from16 v0, v40

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x2

    move-object/from16 v0, p0

    iput-short v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fDerivedBy:S

    :goto_1
    invoke-static/range {v39 .. v39}, Lmf/org/apache/xerces/util/DOMUtil;->getNextSiblingElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v29

    if-eqz v29, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    move-object/from16 v0, p2

    invoke-virtual {v3, v6, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    invoke-static/range {v29 .. v29}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v38

    new-instance v3, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;

    const-string/jumbo v4, "s4s-elt-invalid-content.1"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v11, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fName:Ljava/lang/String;

    aput-object v11, v7, v9

    const/4 v9, 0x1

    aput-object v38, v7, v9

    move-object/from16 v0, v29

    invoke-direct {v3, v4, v7, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;-><init>(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    throw v3

    :cond_3
    sget-object v3, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_EXTENSION:Ljava/lang/String;

    move-object/from16 v0, v40

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-short v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fDerivedBy:S

    goto :goto_1

    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    move-object/from16 v0, p2

    invoke-virtual {v3, v6, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    new-instance v3, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;

    const-string/jumbo v4, "s4s-elt-invalid-content.1"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v11, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fName:Ljava/lang/String;

    aput-object v11, v7, v9

    const/4 v9, 0x1

    aput-object v40, v7, v9

    move-object/from16 v0, v39

    invoke-direct {v3, v4, v7, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;-><init>(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    throw v3

    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    const/4 v4, 0x0

    move-object/from16 v0, v39

    move-object/from16 v1, p2

    invoke-virtual {v3, v0, v4, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->checkAttributes(Lmf/org/w3c/dom/Element;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)[Ljava/lang/Object;

    move-result-object v10

    sget v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_BASE:I

    aget-object v26, v10, v3

    check-cast v26, Lmf/org/apache/xerces/xni/QName;

    if-nez v26, :cond_6

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    move-object/from16 v0, p2

    invoke-virtual {v3, v6, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    move-object/from16 v0, p2

    invoke-virtual {v3, v10, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    new-instance v3, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;

    const-string/jumbo v4, "s4s-att-must-appear"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v40, v7, v9

    const/4 v9, 0x1

    const-string v11, "base"

    aput-object v11, v7, v9

    move-object/from16 v0, v39

    invoke-direct {v3, v4, v7, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;-><init>(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    throw v3

    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    const/4 v4, 0x7

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    move-object/from16 v2, v39

    invoke-virtual {v3, v0, v4, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->getGlobalDecl(Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;ILmf/org/apache/xerces/xni/QName;Lmf/org/w3c/dom/Element;)Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Lmf/org/apache/xerces/xs/XSTypeDefinition;

    if-nez v41, :cond_7

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    move-object/from16 v0, p2

    invoke-virtual {v3, v6, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    move-object/from16 v0, p2

    invoke-virtual {v3, v10, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    new-instance v3, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;

    invoke-direct {v3}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;-><init>()V

    throw v3

    :cond_7
    move-object/from16 v0, v41

    move-object/from16 v1, p0

    iput-object v0, v1, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fBaseType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    const/4 v15, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    invoke-interface/range {v41 .. v41}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getTypeCategory()S

    move-result v3

    const/16 v4, 0xf

    if-ne v3, v4, :cond_b

    move-object/from16 v24, v41

    check-cast v24, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    invoke-virtual/range {v24 .. v24}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->getFinal()S

    move-result v25

    invoke-virtual/range {v24 .. v24}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->getContentType()S

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_9

    invoke-virtual/range {v24 .. v24}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->getSimpleType()Lmf/org/apache/xerces/xs/XSSimpleTypeDefinition;

    move-result-object v15

    check-cast v15, Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    :cond_8
    :goto_2
    move-object/from16 v0, p0

    iget-short v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fDerivedBy:S

    and-int v3, v3, v25

    if-eqz v3, :cond_e

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    move-object/from16 v0, p2

    invoke-virtual {v3, v6, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    move-object/from16 v0, p2

    invoke-virtual {v3, v10, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    move-object/from16 v0, p0

    iget-short v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fDerivedBy:S

    const/4 v4, 0x1

    if-ne v3, v4, :cond_d

    const-string v31, "cos-ct-extends.1.1"

    :goto_3
    new-instance v3, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fName:Ljava/lang/String;

    aput-object v9, v4, v7

    const/4 v7, 0x1

    move-object/from16 v0, p0

    iget-object v9, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fBaseType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    invoke-interface {v9}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getName()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v7

    move-object/from16 v0, v31

    move-object/from16 v1, v39

    invoke-direct {v3, v0, v4, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;-><init>(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    throw v3

    :cond_9
    move-object/from16 v0, p0

    iget-short v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fDerivedBy:S

    const/4 v4, 0x2

    if-ne v3, v4, :cond_a

    invoke-virtual/range {v24 .. v24}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->getContentType()S

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_a

    invoke-virtual/range {v24 .. v24}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->getParticle()Lmf/org/apache/xerces/xs/XSParticle;

    move-result-object v3

    check-cast v3, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->emptiable()Z

    move-result v3

    if-nez v3, :cond_8

    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    move-object/from16 v0, p2

    invoke-virtual {v3, v6, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    move-object/from16 v0, p2

    invoke-virtual {v3, v10, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    new-instance v3, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;

    const-string/jumbo v4, "src-ct.2.1"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v11, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fName:Ljava/lang/String;

    aput-object v11, v7, v9

    const/4 v9, 0x1

    invoke-virtual/range {v24 .. v24}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->getName()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v7, v9

    move-object/from16 v0, v39

    invoke-direct {v3, v4, v7, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;-><init>(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    throw v3

    :cond_b
    move-object/from16 v15, v41

    check-cast v15, Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    move-object/from16 v0, p0

    iget-short v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fDerivedBy:S

    const/4 v4, 0x2

    if-ne v3, v4, :cond_c

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    move-object/from16 v0, p2

    invoke-virtual {v3, v6, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    move-object/from16 v0, p2

    invoke-virtual {v3, v10, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    new-instance v3, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;

    const-string/jumbo v4, "src-ct.2.1"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v11, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fName:Ljava/lang/String;

    aput-object v11, v7, v9

    const/4 v9, 0x1

    invoke-interface {v15}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->getName()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v7, v9

    move-object/from16 v0, v39

    invoke-direct {v3, v4, v7, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;-><init>(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    throw v3

    :cond_c
    invoke-interface {v15}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->getFinal()S

    move-result v25

    goto/16 :goto_2

    :cond_d
    const-string v31, "derivation-ok-restriction.1"

    goto/16 :goto_3

    :cond_e
    move-object/from16 v8, v39

    invoke-static/range {v39 .. v39}, Lmf/org/apache/xerces/util/DOMUtil;->getFirstChildElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v39

    if-eqz v39, :cond_11

    invoke-static/range {v39 .. v39}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ANNOTATION:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v10, v3, v2}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->traverseAnnotationDecl(Lmf/org/w3c/dom/Element;[Ljava/lang/Object;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->addAnnotation(Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;)V

    invoke-static/range {v39 .. v39}, Lmf/org/apache/xerces/util/DOMUtil;->getNextSiblingElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v39

    :cond_f
    :goto_4
    if-eqz v39, :cond_12

    invoke-static/range {v39 .. v39}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ANNOTATION:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    move-object/from16 v0, p2

    invoke-virtual {v3, v6, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    move-object/from16 v0, p2

    invoke-virtual {v3, v10, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    new-instance v3, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;

    const-string/jumbo v4, "s4s-elt-invalid-content.1"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v11, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fName:Ljava/lang/String;

    aput-object v11, v7, v9

    const/4 v9, 0x1

    sget-object v11, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ANNOTATION:Ljava/lang/String;

    aput-object v11, v7, v9

    move-object/from16 v0, v39

    invoke-direct {v3, v4, v7, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;-><init>(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    throw v3

    :cond_10
    invoke-static {v8}, Lmf/org/apache/xerces/util/DOMUtil;->getSyntheticAnnotation(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_f

    const/4 v11, 0x0

    move-object/from16 v7, p0

    move-object v9, v5

    move-object/from16 v12, p2

    invoke-virtual/range {v7 .. v12}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->traverseSyntheticAnnotation(Lmf/org/w3c/dom/Element;Ljava/lang/String;[Ljava/lang/Object;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->addAnnotation(Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;)V

    goto :goto_4

    :cond_11
    invoke-static {v8}, Lmf/org/apache/xerces/util/DOMUtil;->getSyntheticAnnotation(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_12

    const/4 v11, 0x0

    move-object/from16 v7, p0

    move-object v9, v5

    move-object/from16 v12, p2

    invoke-virtual/range {v7 .. v12}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->traverseSyntheticAnnotation(Lmf/org/w3c/dom/Element;Ljava/lang/String;[Ljava/lang/Object;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->addAnnotation(Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;)V

    :cond_12
    move-object/from16 v0, p0

    iget-short v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fDerivedBy:S

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1b

    if-eqz v39, :cond_15

    invoke-static/range {v39 .. v39}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_SIMPLETYPE:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    iget-object v3, v3, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fSimpleTypeTraverser:Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;

    move-object/from16 v0, v39

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v3, v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;->traverseLocal(Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    move-result-object v27

    if-nez v27, :cond_13

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    move-object/from16 v0, p2

    invoke-virtual {v3, v6, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    move-object/from16 v0, p2

    invoke-virtual {v3, v10, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    new-instance v3, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;

    invoke-direct {v3}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;-><init>()V

    throw v3

    :cond_13
    if-eqz v15, :cond_14

    invoke-interface {v15}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->getFinal()S

    move-result v3

    move-object/from16 v0, v27

    invoke-static {v0, v15, v3}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->checkSimpleDerivationOk(Lmf/org/apache/xerces/impl/dv/XSSimpleType;Lmf/org/apache/xerces/xs/XSTypeDefinition;S)Z

    move-result v3

    if-nez v3, :cond_14

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    move-object/from16 v0, p2

    invoke-virtual {v3, v6, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    move-object/from16 v0, p2

    invoke-virtual {v3, v10, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    new-instance v3, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;

    const-string v4, "derivation-ok-restriction.5.2.2.1"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v11, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fName:Ljava/lang/String;

    aput-object v11, v7, v9

    const/4 v9, 0x1

    invoke-interface/range {v27 .. v27}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->getName()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v7, v9

    const/4 v9, 0x2

    invoke-interface {v15}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->getName()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v7, v9

    move-object/from16 v0, v39

    invoke-direct {v3, v4, v7, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;-><init>(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    throw v3

    :cond_14
    move-object/from16 v15, v27

    invoke-static/range {v39 .. v39}, Lmf/org/apache/xerces/util/DOMUtil;->getNextSiblingElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v39

    :cond_15
    if-nez v15, :cond_16

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    move-object/from16 v0, p2

    invoke-virtual {v3, v6, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    move-object/from16 v0, p2

    invoke-virtual {v3, v10, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    new-instance v3, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;

    const-string/jumbo v4, "src-ct.2.2"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v11, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fName:Ljava/lang/String;

    aput-object v11, v7, v9

    move-object/from16 v0, v39

    invoke-direct {v3, v4, v7, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;-><init>(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    throw v3

    :cond_16
    const/16 v17, 0x0

    const/16 v33, 0x0

    const/16 v37, 0x0

    const/16 v35, 0x0

    if-eqz v39, :cond_17

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v15, v2}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->traverseFacets(Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/dv/XSSimpleType;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser$FacetInfo;

    move-result-object v34

    move-object/from16 v0, v34

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser$FacetInfo;->nodeAfterFacets:Lmf/org/w3c/dom/Element;

    move-object/from16 v17, v0

    move-object/from16 v0, v34

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser$FacetInfo;->facetdata:Lmf/org/apache/xerces/impl/dv/XSFacets;

    move-object/from16 v33, v0

    move-object/from16 v0, v34

    iget-short v0, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser$FacetInfo;->fPresentFacets:S

    move/from16 v37, v0

    move-object/from16 v0, v34

    iget-short v0, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser$FacetInfo;->fFixedFacets:S

    move/from16 v35, v0

    :cond_17
    invoke-direct/range {p0 .. p1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->genAnonTypeName(Lmf/org/w3c/dom/Element;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    iget-object v11, v3, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fDVFactory:Lmf/org/apache/xerces/impl/dv/SchemaDVFactory;

    move-object/from16 v0, p2

    iget-object v13, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    const/4 v14, 0x0

    const/16 v16, 0x0

    invoke-virtual/range {v11 .. v16}, Lmf/org/apache/xerces/impl/dv/SchemaDVFactory;->createTypeRestriction(Ljava/lang/String;Ljava/lang/String;SLmf/org/apache/xerces/impl/dv/XSSimpleType;Lmf/org/apache/xerces/xs/XSObjectList;)Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fXSSimpleType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fValidationState:Lmf/org/apache/xerces/impl/validation/ValidationState;

    move-object/from16 v0, p2

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fNamespaceSupport:Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport;

    invoke-virtual {v3, v4}, Lmf/org/apache/xerces/impl/validation/ValidationState;->setNamespaceSupport(Lmf/org/apache/xerces/xni/NamespaceContext;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fXSSimpleType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fValidationState:Lmf/org/apache/xerces/impl/validation/ValidationState;

    move-object/from16 v0, v33

    move/from16 v1, v37

    move/from16 v2, v35

    invoke-interface {v3, v0, v1, v2, v4}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->applyFacets(Lmf/org/apache/xerces/impl/dv/XSFacets;SSLmf/org/apache/xerces/impl/dv/ValidationContext;)V
    :try_end_0
    .catch Lmf/org/apache/xerces/impl/dv/InvalidDatatypeFacetException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fXSSimpleType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    instance-of v3, v3, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    if-eqz v3, :cond_18

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fXSSimpleType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    check-cast v3, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->setAnonymous(Z)V

    :cond_18
    if-eqz v17, :cond_1a

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->isAttrOrAttrGroup(Lmf/org/w3c/dom/Element;)Z

    move-result v3

    if-nez v3, :cond_19

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    move-object/from16 v0, p2

    invoke-virtual {v3, v6, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    move-object/from16 v0, p2

    invoke-virtual {v3, v10, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    new-instance v3, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;

    const-string/jumbo v4, "s4s-elt-invalid-content.1"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v11, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fName:Ljava/lang/String;

    aput-object v11, v7, v9

    const/4 v9, 0x1

    invoke-static/range {v17 .. v17}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v7, v9

    move-object/from16 v0, v17

    invoke-direct {v3, v4, v7, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;-><init>(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    throw v3

    :catch_0
    move-exception v32

    invoke-virtual/range {v32 .. v32}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeFacetException;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {v32 .. v32}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeFacetException;->getArgs()[Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v3, v4, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    iget-object v11, v3, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fDVFactory:Lmf/org/apache/xerces/impl/dv/SchemaDVFactory;

    move-object/from16 v0, p2

    iget-object v13, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    const/4 v14, 0x0

    const/16 v16, 0x0

    invoke-virtual/range {v11 .. v16}, Lmf/org/apache/xerces/impl/dv/SchemaDVFactory;->createTypeRestriction(Ljava/lang/String;Ljava/lang/String;SLmf/org/apache/xerces/impl/dv/XSSimpleType;Lmf/org/apache/xerces/xs/XSObjectList;)Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fXSSimpleType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    goto :goto_5

    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrGrp:Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fComplexTypeDecl:Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    move-object/from16 v21, v0

    move-object/from16 v16, p0

    move-object/from16 v19, p2

    move-object/from16 v20, p3

    invoke-virtual/range {v16 .. v21}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->traverseAttrsAndAttrGrps(Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;)Lmf/org/w3c/dom/Element;

    move-result-object v36

    if-eqz v36, :cond_1a

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    move-object/from16 v0, p2

    invoke-virtual {v3, v6, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    move-object/from16 v0, p2

    invoke-virtual {v3, v10, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    new-instance v3, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;

    const-string/jumbo v4, "s4s-elt-invalid-content.1"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v11, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fName:Ljava/lang/String;

    aput-object v11, v7, v9

    const/4 v9, 0x1

    invoke-static/range {v36 .. v36}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v7, v9

    move-object/from16 v0, v36

    invoke-direct {v3, v4, v7, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;-><init>(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    throw v3

    :cond_1a
    :try_start_1
    invoke-virtual/range {v24 .. v24}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->getAttrGrp()Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrGrp:Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fName:Ljava/lang/String;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v18, p0

    move-object/from16 v23, p1

    invoke-direct/range {v18 .. v23}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->mergeAttributes(Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;Ljava/lang/String;ZLmf/org/w3c/dom/Element;)V
    :try_end_1
    .catch Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError; {:try_start_1 .. :try_end_1} :catch_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrGrp:Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->removeProhibitedAttrs()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrGrp:Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;

    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fName:Ljava/lang/String;

    invoke-virtual/range {v24 .. v24}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->getAttrGrp()Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;

    move-result-object v7

    invoke-virtual {v3, v4, v7}, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->validRestrictionOf(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;)[Ljava/lang/Object;

    move-result-object v30

    if-eqz v30, :cond_1f

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    move-object/from16 v0, p2

    invoke-virtual {v3, v6, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    move-object/from16 v0, p2

    invoke-virtual {v3, v10, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    new-instance v4, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;

    move-object/from16 v0, v30

    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    aget-object v3, v30, v3

    check-cast v3, Ljava/lang/String;

    move-object/from16 v0, v30

    move-object/from16 v1, v17

    invoke-direct {v4, v3, v0, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;-><init>(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    throw v4

    :catch_1
    move-exception v28

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    move-object/from16 v0, p2

    invoke-virtual {v3, v6, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    move-object/from16 v0, p2

    invoke-virtual {v3, v10, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    throw v28

    :cond_1b
    move-object/from16 v0, p0

    iput-object v15, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fXSSimpleType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    if-eqz v39, :cond_1e

    move-object/from16 v17, v39

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->isAttrOrAttrGroup(Lmf/org/w3c/dom/Element;)Z

    move-result v3

    if-nez v3, :cond_1c

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    move-object/from16 v0, p2

    invoke-virtual {v3, v6, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    move-object/from16 v0, p2

    invoke-virtual {v3, v10, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    new-instance v3, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;

    const-string/jumbo v4, "s4s-elt-invalid-content.1"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v11, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fName:Ljava/lang/String;

    aput-object v11, v7, v9

    const/4 v9, 0x1

    invoke-static/range {v17 .. v17}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v7, v9

    move-object/from16 v0, v17

    invoke-direct {v3, v4, v7, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;-><init>(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    throw v3

    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrGrp:Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fComplexTypeDecl:Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    move-object/from16 v21, v0

    move-object/from16 v16, p0

    move-object/from16 v19, p2

    move-object/from16 v20, p3

    invoke-virtual/range {v16 .. v21}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->traverseAttrsAndAttrGrps(Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;)Lmf/org/w3c/dom/Element;

    move-result-object v36

    if-eqz v36, :cond_1d

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    move-object/from16 v0, p2

    invoke-virtual {v3, v6, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    move-object/from16 v0, p2

    invoke-virtual {v3, v10, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    new-instance v3, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;

    const-string/jumbo v4, "s4s-elt-invalid-content.1"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v11, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fName:Ljava/lang/String;

    aput-object v11, v7, v9

    const/4 v9, 0x1

    invoke-static/range {v36 .. v36}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v7, v9

    move-object/from16 v0, v36

    invoke-direct {v3, v4, v7, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError;-><init>(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    throw v3

    :cond_1d
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrGrp:Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->removeProhibitedAttrs()V

    :cond_1e
    if-eqz v24, :cond_1f

    :try_start_2
    invoke-virtual/range {v24 .. v24}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->getAttrGrp()Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrGrp:Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fName:Ljava/lang/String;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    move-object/from16 v18, p0

    move-object/from16 v23, p1

    invoke-direct/range {v18 .. v23}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->mergeAttributes(Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;Ljava/lang/String;ZLmf/org/w3c/dom/Element;)V
    :try_end_2
    .catch Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser$ComplexTypeRecoverableError; {:try_start_2 .. :try_end_2} :catch_2

    :cond_1f
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    move-object/from16 v0, p2

    invoke-virtual {v3, v6, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    move-object/from16 v0, p2

    invoke-virtual {v3, v10, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    return-void

    :catch_2
    move-exception v28

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    move-object/from16 v0, p2

    invoke-virtual {v3, v6, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    move-object/from16 v0, p2

    invoke-virtual {v3, v10, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    throw v28
.end method

.method private traverseSimpleContentDecl(Lmf/org/w3c/dom/Element;)V
    .locals 0

    return-void
.end method


# virtual methods
.method traverseGlobal(Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;
    .locals 10

    const/4 v9, 0x1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v0, p1, v9, p2}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->checkAttributes(Lmf/org/w3c/dom/Element;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)[Ljava/lang/Object;

    move-result-object v3

    sget v0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_NAME:I

    aget-object v2, v3, v0

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->contentBackup()V

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->traverseComplexTypeDecl(Lmf/org/w3c/dom/Element;Ljava/lang/String;[Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    move-result-object v7

    invoke-direct {p0}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->contentRestore()V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->element2Locator(Lmf/org/w3c/dom/Element;)Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;

    move-result-object v0

    invoke-virtual {p3, v7, v0}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->addComplexTypeDecl(Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;)V

    if-nez v2, :cond_1

    const-string/jumbo v0, "s4s-att-must-appear"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    sget-object v5, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_COMPLEXTYPE:Ljava/lang/String;

    aput-object v5, v1, v4

    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_NAME:Ljava/lang/String;

    aput-object v4, v1, v9

    invoke-virtual {p0, v0, v1, p1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    const/4 v7, 0x0

    :cond_0
    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v0, v3, p2}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    return-object v7

    :cond_1
    invoke-virtual {v7}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalTypeDecl(Ljava/lang/String;)Lmf/org/apache/xerces/xs/XSTypeDefinition;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-virtual {p3, v7}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->addGlobalComplexTypeDecl(Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;)V

    :cond_2
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    invoke-virtual {v0, p2}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->schemaDocument2SystemId(Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0, v6}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalTypeDecl(Ljava/lang/String;Ljava/lang/String;)Lmf/org/apache/xerces/xs/XSTypeDefinition;

    move-result-object v8

    if-nez v8, :cond_3

    invoke-virtual {p3, v7, v6}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->addGlobalComplexTypeDecl(Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;Ljava/lang/String;)V

    :cond_3
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    iget-boolean v0, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fTolerateDuplicates:Z

    if-eqz v0, :cond_0

    if-eqz v8, :cond_4

    instance-of v0, v8, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    if-eqz v0, :cond_4

    move-object v7, v8

    check-cast v7, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    :cond_4
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    invoke-virtual {v0, v7}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->addGlobalTypeDecl(Lmf/org/apache/xerces/xs/XSTypeDefinition;)V

    goto :goto_0
.end method

.method traverseLocal(Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;
    .locals 7

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->checkAttributes(Lmf/org/w3c/dom/Element;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)[Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, p1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->genAnonTypeName(Lmf/org/w3c/dom/Element;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->contentBackup()V

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->traverseComplexTypeDecl(Lmf/org/w3c/dom/Element;Ljava/lang/String;[Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    move-result-object v6

    invoke-direct {p0}, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->contentRestore()V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->element2Locator(Lmf/org/w3c/dom/Element;)Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;

    move-result-object v0

    invoke-virtual {p3, v6, v0}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->addComplexTypeDecl(Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;)V

    invoke-virtual {v6}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->setIsAnonymous()V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDComplexTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v0, v3, p2}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    return-object v6
.end method
