.class public Lmf/org/apache/xerces/impl/xs/identity/Field$Matcher;
.super Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;
.source "Field.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmf/org/apache/xerces/impl/xs/identity/Field;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "Matcher"
.end annotation


# instance fields
.field protected fMayMatch:Z

.field protected final fStore:Lmf/org/apache/xerces/impl/xs/identity/ValueStore;

.field final synthetic this$0:Lmf/org/apache/xerces/impl/xs/identity/Field;


# direct methods
.method public constructor <init>(Lmf/org/apache/xerces/impl/xs/identity/Field;Lmf/org/apache/xerces/impl/xs/identity/Field$XPath;Lmf/org/apache/xerces/impl/xs/identity/ValueStore;)V
    .locals 1

    iput-object p1, p0, Lmf/org/apache/xerces/impl/xs/identity/Field$Matcher;->this$0:Lmf/org/apache/xerces/impl/xs/identity/Field;

    invoke-direct {p0, p2}, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;-><init>(Lmf/org/apache/xerces/impl/xpath/XPath;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/identity/Field$Matcher;->fMayMatch:Z

    iput-object p3, p0, Lmf/org/apache/xerces/impl/xs/identity/Field$Matcher;->fStore:Lmf/org/apache/xerces/impl/xs/identity/ValueStore;

    return-void
.end method

.method private convertToPrimitiveKind(Lmf/org/apache/xerces/xs/ShortList;)Lmf/org/apache/xerces/xs/ShortList;
    .locals 6

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lmf/org/apache/xerces/xs/ShortList;->getLength()I

    move-result v3

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v3, :cond_2

    :cond_0
    if-eq v1, v3, :cond_1

    new-array v0, v3, [S

    const/4 v2, 0x0

    :goto_1
    if-lt v2, v1, :cond_3

    :goto_2
    if-lt v1, v3, :cond_4

    new-instance p1, Lmf/org/apache/xerces/impl/xs/util/ShortListImpl;

    array-length v5, v0

    invoke-direct {p1, v0, v5}, Lmf/org/apache/xerces/impl/xs/util/ShortListImpl;-><init>([SI)V

    :cond_1
    return-object p1

    :cond_2
    invoke-interface {p1, v1}, Lmf/org/apache/xerces/xs/ShortList;->item(I)S

    move-result v4

    invoke-direct {p0, v4}, Lmf/org/apache/xerces/impl/xs/identity/Field$Matcher;->convertToPrimitiveKind(S)S

    move-result v5

    if-ne v4, v5, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    invoke-interface {p1, v2}, Lmf/org/apache/xerces/xs/ShortList;->item(I)S

    move-result v5

    aput-short v5, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    invoke-interface {p1, v1}, Lmf/org/apache/xerces/xs/ShortList;->item(I)S

    move-result v5

    invoke-direct {p0, v5}, Lmf/org/apache/xerces/impl/xs/identity/Field$Matcher;->convertToPrimitiveKind(S)S

    move-result v5

    aput-short v5, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method private convertToPrimitiveKind(S)S
    .locals 1

    const/16 v0, 0x14

    if-gt p1, v0, :cond_1

    :cond_0
    :goto_0
    return p1

    :cond_1
    const/16 v0, 0x1d

    if-gt p1, v0, :cond_2

    const/4 p1, 0x2

    goto :goto_0

    :cond_2
    const/16 v0, 0x2a

    if-gt p1, v0, :cond_0

    const/4 p1, 0x4

    goto :goto_0
.end method


# virtual methods
.method protected handleContent(Lmf/org/apache/xerces/xs/XSTypeDefinition;ZLjava/lang/Object;SLmf/org/apache/xerces/xs/ShortList;)V
    .locals 6

    const/4 v5, 0x1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getTypeCategory()S

    move-result v0

    const/16 v1, 0xf

    if-ne v0, v1, :cond_1

    check-cast p1, Lmf/org/apache/xerces/xs/XSComplexTypeDefinition;

    invoke-interface {p1}, Lmf/org/apache/xerces/xs/XSComplexTypeDefinition;->getContentType()S

    move-result v0

    if-eq v0, v5, :cond_1

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/identity/Field$Matcher;->fStore:Lmf/org/apache/xerces/impl/xs/identity/ValueStore;

    const-string v1, "cvc-id.3"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/identity/Field$Matcher;->this$0:Lmf/org/apache/xerces/impl/xs/identity/Field;

    iget-object v4, v4, Lmf/org/apache/xerces/impl/xs/identity/Field;->fIdentityConstraint:Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;

    invoke-virtual {v4}, Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/identity/Field$Matcher;->this$0:Lmf/org/apache/xerces/impl/xs/identity/Field;

    iget-object v3, v3, Lmf/org/apache/xerces/impl/xs/identity/Field;->fIdentityConstraint:Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;->getElementName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-interface {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/identity/ValueStore;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    iput-object p3, p0, Lmf/org/apache/xerces/impl/xs/identity/Field$Matcher;->fMatchedString:Ljava/lang/Object;

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/identity/Field$Matcher;->fMatchedString:Ljava/lang/Object;

    invoke-virtual {p0, v0, p4, p5, p2}, Lmf/org/apache/xerces/impl/xs/identity/Field$Matcher;->matched(Ljava/lang/Object;SLmf/org/apache/xerces/xs/ShortList;Z)V

    return-void
.end method

.method protected matched(Ljava/lang/Object;SLmf/org/apache/xerces/xs/ShortList;Z)V
    .locals 8

    const/4 v3, 0x1

    const/4 v7, 0x0

    invoke-super {p0, p1, p2, p3, p4}, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->matched(Ljava/lang/Object;SLmf/org/apache/xerces/xs/ShortList;Z)V

    if-eqz p4, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/identity/Field$Matcher;->this$0:Lmf/org/apache/xerces/impl/xs/identity/Field;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/identity/Field;->fIdentityConstraint:Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;->getCategory()S

    move-result v0

    if-ne v0, v3, :cond_0

    const-string v6, "KeyMatchesNillable"

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/identity/Field$Matcher;->fStore:Lmf/org/apache/xerces/impl/xs/identity/ValueStore;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/identity/Field$Matcher;->this$0:Lmf/org/apache/xerces/impl/xs/identity/Field;

    iget-object v2, v2, Lmf/org/apache/xerces/impl/xs/identity/Field;->fIdentityConstraint:Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;

    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;->getElementName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v7

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/identity/Field$Matcher;->this$0:Lmf/org/apache/xerces/impl/xs/identity/Field;

    iget-object v2, v2, Lmf/org/apache/xerces/impl/xs/identity/Field;->fIdentityConstraint:Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;

    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;->getIdentityConstraintName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-interface {v0, v6, v1}, Lmf/org/apache/xerces/impl/xs/identity/ValueStore;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/identity/Field$Matcher;->fStore:Lmf/org/apache/xerces/impl/xs/identity/ValueStore;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/identity/Field$Matcher;->this$0:Lmf/org/apache/xerces/impl/xs/identity/Field;

    iget-boolean v2, p0, Lmf/org/apache/xerces/impl/xs/identity/Field$Matcher;->fMayMatch:Z

    invoke-direct {p0, p2}, Lmf/org/apache/xerces/impl/xs/identity/Field$Matcher;->convertToPrimitiveKind(S)S

    move-result v4

    invoke-direct {p0, p3}, Lmf/org/apache/xerces/impl/xs/identity/Field$Matcher;->convertToPrimitiveKind(Lmf/org/apache/xerces/xs/ShortList;)Lmf/org/apache/xerces/xs/ShortList;

    move-result-object v5

    move-object v3, p1

    invoke-interface/range {v0 .. v5}, Lmf/org/apache/xerces/impl/xs/identity/ValueStore;->addValue(Lmf/org/apache/xerces/impl/xs/identity/Field;ZLjava/lang/Object;SLmf/org/apache/xerces/xs/ShortList;)V

    iput-boolean v7, p0, Lmf/org/apache/xerces/impl/xs/identity/Field$Matcher;->fMayMatch:Z

    return-void
.end method
