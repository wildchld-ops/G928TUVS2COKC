.class Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractParticleTraverser$ParticleArray;
.super Ljava/lang/Object;
.source "XSDAbstractParticleTraverser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractParticleTraverser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ParticleArray"
.end annotation


# instance fields
.field fContextCount:I

.field fParticles:[Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

.field fPos:[I


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    new-array v0, v0, [Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractParticleTraverser$ParticleArray;->fParticles:[Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    const/4 v0, 0x5

    new-array v0, v0, [I

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractParticleTraverser$ParticleArray;->fPos:[I

    const/4 v0, 0x0

    iput v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractParticleTraverser$ParticleArray;->fContextCount:I

    return-void
.end method


# virtual methods
.method addParticle(Lmf/org/apache/xerces/impl/xs/XSParticleDecl;)V
    .locals 7

    const/4 v5, 0x0

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractParticleTraverser$ParticleArray;->fPos:[I

    iget v3, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractParticleTraverser$ParticleArray;->fContextCount:I

    aget v2, v2, v3

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractParticleTraverser$ParticleArray;->fParticles:[Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    array-length v3, v3

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractParticleTraverser$ParticleArray;->fPos:[I

    iget v3, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractParticleTraverser$ParticleArray;->fContextCount:I

    aget v2, v2, v3

    mul-int/lit8 v1, v2, 0x2

    new-array v0, v1, [Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractParticleTraverser$ParticleArray;->fParticles:[Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractParticleTraverser$ParticleArray;->fPos:[I

    iget v4, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractParticleTraverser$ParticleArray;->fContextCount:I

    aget v3, v3, v4

    invoke-static {v2, v5, v0, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractParticleTraverser$ParticleArray;->fParticles:[Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    :cond_0
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractParticleTraverser$ParticleArray;->fParticles:[Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractParticleTraverser$ParticleArray;->fPos:[I

    iget v4, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractParticleTraverser$ParticleArray;->fContextCount:I

    aget v5, v3, v4

    add-int/lit8 v6, v5, 0x1

    aput v6, v3, v4

    aput-object p1, v2, v5

    return-void
.end method

.method getParticleCount()I
    .locals 3

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractParticleTraverser$ParticleArray;->fPos:[I

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractParticleTraverser$ParticleArray;->fContextCount:I

    aget v0, v0, v1

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractParticleTraverser$ParticleArray;->fPos:[I

    iget v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractParticleTraverser$ParticleArray;->fContextCount:I

    add-int/lit8 v2, v2, -0x1

    aget v1, v1, v2

    sub-int/2addr v0, v1

    return v0
.end method

.method popContext()[Lmf/org/apache/xerces/impl/xs/XSParticleDecl;
    .locals 6

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractParticleTraverser$ParticleArray;->fPos:[I

    iget v4, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractParticleTraverser$ParticleArray;->fContextCount:I

    aget v3, v3, v4

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractParticleTraverser$ParticleArray;->fPos:[I

    iget v5, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractParticleTraverser$ParticleArray;->fContextCount:I

    add-int/lit8 v5, v5, -0x1

    aget v4, v4, v5

    sub-int v1, v3, v4

    const/4 v0, 0x0

    if-eqz v1, :cond_0

    new-array v0, v1, [Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractParticleTraverser$ParticleArray;->fParticles:[Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractParticleTraverser$ParticleArray;->fPos:[I

    iget v5, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractParticleTraverser$ParticleArray;->fContextCount:I

    add-int/lit8 v5, v5, -0x1

    aget v4, v4, v5

    const/4 v5, 0x0

    invoke-static {v3, v4, v0, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractParticleTraverser$ParticleArray;->fPos:[I

    iget v4, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractParticleTraverser$ParticleArray;->fContextCount:I

    add-int/lit8 v4, v4, -0x1

    aget v2, v3, v4

    :goto_0
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractParticleTraverser$ParticleArray;->fPos:[I

    iget v4, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractParticleTraverser$ParticleArray;->fContextCount:I

    aget v3, v3, v4

    if-lt v2, v3, :cond_1

    :cond_0
    iget v3, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractParticleTraverser$ParticleArray;->fContextCount:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractParticleTraverser$ParticleArray;->fContextCount:I

    return-object v0

    :cond_1
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractParticleTraverser$ParticleArray;->fParticles:[Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    const/4 v4, 0x0

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method pushContext()V
    .locals 6

    const/4 v4, 0x0

    iget v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractParticleTraverser$ParticleArray;->fContextCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractParticleTraverser$ParticleArray;->fContextCount:I

    iget v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractParticleTraverser$ParticleArray;->fContextCount:I

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractParticleTraverser$ParticleArray;->fPos:[I

    array-length v3, v3

    if-ne v2, v3, :cond_0

    iget v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractParticleTraverser$ParticleArray;->fContextCount:I

    mul-int/lit8 v1, v2, 0x2

    new-array v0, v1, [I

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractParticleTraverser$ParticleArray;->fPos:[I

    iget v3, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractParticleTraverser$ParticleArray;->fContextCount:I

    invoke-static {v2, v4, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractParticleTraverser$ParticleArray;->fPos:[I

    :cond_0
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractParticleTraverser$ParticleArray;->fPos:[I

    iget v3, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractParticleTraverser$ParticleArray;->fContextCount:I

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractParticleTraverser$ParticleArray;->fPos:[I

    iget v5, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractParticleTraverser$ParticleArray;->fContextCount:I

    add-int/lit8 v5, v5, -0x1

    aget v4, v4, v5

    aput v4, v2, v3

    return-void
.end method
