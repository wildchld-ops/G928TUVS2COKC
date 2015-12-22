.class Lmf/org/apache/xerces/impl/xs/XSConstraints$1;
.super Ljava/lang/Object;
.source "XSConstraints.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmf/org/apache/xerces/impl/xs/XSConstraints;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 10

    move-object v7, p1

    check-cast v7, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    move-object v8, p2

    check-cast v8, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    iget-object v0, v7, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fValue:Lmf/org/apache/xerces/xs/XSTerm;

    check-cast v0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    iget-object v1, v8, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fValue:Lmf/org/apache/xerces/xs/XSTerm;

    check-cast v1, Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->getNamespace()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->getNamespace()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->getName()Ljava/lang/String;

    move-result-object v3

    if-ne v4, v5, :cond_1

    const/4 v9, 0x1

    :goto_0
    const/4 v6, 0x0

    if-nez v9, :cond_0

    if-eqz v4, :cond_3

    if-eqz v5, :cond_2

    invoke-virtual {v4, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    :cond_0
    :goto_1
    if-eqz v6, :cond_4

    :goto_2
    return v6

    :cond_1
    const/4 v9, 0x0

    goto :goto_0

    :cond_2
    const/4 v6, 0x1

    goto :goto_1

    :cond_3
    const/4 v6, -0x1

    goto :goto_1

    :cond_4
    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    goto :goto_2
.end method
