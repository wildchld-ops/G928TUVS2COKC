.class public Lmf/org/apache/xerces/impl/dv/xs/DoubleDV;
.super Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;
.source "DoubleDV.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmf/org/apache/xerces/impl/dv/xs/DoubleDV$XDouble;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;-><init>()V

    return-void
.end method

.method static isPossibleFP(Ljava/lang/String;)Z
    .locals 4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v2, :cond_0

    const/4 v3, 0x1

    :goto_1
    return v3

    :cond_0
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v3, 0x30

    if-lt v0, v3, :cond_1

    const/16 v3, 0x39

    if-le v0, v3, :cond_2

    :cond_1
    const/16 v3, 0x2e

    if-eq v0, v3, :cond_2

    const/16 v3, 0x2d

    if-eq v0, v3, :cond_2

    const/16 v3, 0x2b

    if-eq v0, v3, :cond_2

    const/16 v3, 0x45

    if-eq v0, v3, :cond_2

    const/16 v3, 0x65

    if-eq v0, v3, :cond_2

    const/4 v3, 0x0

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lmf/org/apache/xerces/impl/dv/xs/DoubleDV$XDouble;

    check-cast p2, Lmf/org/apache/xerces/impl/dv/xs/DoubleDV$XDouble;

    # invokes: Lmf/org/apache/xerces/impl/dv/xs/DoubleDV$XDouble;->compareTo(Lmf/org/apache/xerces/impl/dv/xs/DoubleDV$XDouble;)I
    invoke-static {p1, p2}, Lmf/org/apache/xerces/impl/dv/xs/DoubleDV$XDouble;->access$0(Lmf/org/apache/xerces/impl/dv/xs/DoubleDV$XDouble;Lmf/org/apache/xerces/impl/dv/xs/DoubleDV$XDouble;)I

    move-result v0

    return v0
.end method

.method public getActualValue(Ljava/lang/String;Lmf/org/apache/xerces/impl/dv/ValidationContext;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;
        }
    .end annotation

    :try_start_0
    new-instance v1, Lmf/org/apache/xerces/impl/dv/xs/DoubleDV$XDouble;

    invoke-direct {v1, p1}, Lmf/org/apache/xerces/impl/dv/xs/DoubleDV$XDouble;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    new-instance v1, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;

    const-string v2, "cvc-datatype-valid.1.2.1"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    const-string v5, "double"

    aput-object v5, v3, v4

    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1
.end method

.method public getAllowedFacets()S
    .locals 1

    const/16 v0, 0x9f8

    return v0
.end method

.method public isIdentical(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p2, Lmf/org/apache/xerces/impl/dv/xs/DoubleDV$XDouble;

    if-eqz v0, :cond_0

    check-cast p1, Lmf/org/apache/xerces/impl/dv/xs/DoubleDV$XDouble;

    check-cast p2, Lmf/org/apache/xerces/impl/dv/xs/DoubleDV$XDouble;

    invoke-virtual {p1, p2}, Lmf/org/apache/xerces/impl/dv/xs/DoubleDV$XDouble;->isIdentical(Lmf/org/apache/xerces/impl/dv/xs/DoubleDV$XDouble;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
