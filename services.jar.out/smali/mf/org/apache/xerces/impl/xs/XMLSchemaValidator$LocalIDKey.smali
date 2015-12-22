.class public final Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$LocalIDKey;
.super Ljava/lang/Object;
.source "XMLSchemaValidator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "LocalIDKey"
.end annotation


# instance fields
.field public fDepth:I

.field public fId:Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$LocalIDKey;->fId:Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;

    iput p2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$LocalIDKey;->fDepth:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v1, 0x0

    instance-of v2, p1, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$LocalIDKey;

    if-eqz v2, :cond_0

    move-object v0, p1

    check-cast v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$LocalIDKey;

    iget-object v2, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$LocalIDKey;->fId:Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$LocalIDKey;->fId:Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;

    if-ne v2, v3, :cond_0

    iget v2, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$LocalIDKey;->fDepth:I

    iget v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$LocalIDKey;->fDepth:I

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$LocalIDKey;->fId:Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$LocalIDKey;->fDepth:I

    add-int/2addr v0, v1

    return v0
.end method
