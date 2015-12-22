.class public Lmf/org/apache/xerces/impl/xs/identity/Field$XPath;
.super Lmf/org/apache/xerces/impl/xpath/XPath;
.source "Field.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmf/org/apache/xerces/impl/xs/identity/Field;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "XPath"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/xni/NamespaceContext;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xpath/XPathException;
        }
    .end annotation

    invoke-static {p1}, Lmf/org/apache/xerces/impl/xs/identity/Field$XPath;->fixupXPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, p2, p3}, Lmf/org/apache/xerces/impl/xpath/XPath;-><init>(Ljava/lang/String;Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/xni/NamespaceContext;)V

    const/4 v1, 0x0

    :goto_0
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/identity/Field$XPath;->fLocationPaths:[Lmf/org/apache/xerces/impl/xpath/XPath$LocationPath;

    array-length v3, v3

    if-lt v1, v3, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x0

    :goto_1
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/identity/Field$XPath;->fLocationPaths:[Lmf/org/apache/xerces/impl/xpath/XPath$LocationPath;

    aget-object v3, v3, v1

    iget-object v3, v3, Lmf/org/apache/xerces/impl/xpath/XPath$LocationPath;->steps:[Lmf/org/apache/xerces/impl/xpath/XPath$Step;

    array-length v3, v3

    if-lt v2, v3, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/identity/Field$XPath;->fLocationPaths:[Lmf/org/apache/xerces/impl/xpath/XPath$LocationPath;

    aget-object v3, v3, v1

    iget-object v3, v3, Lmf/org/apache/xerces/impl/xpath/XPath$LocationPath;->steps:[Lmf/org/apache/xerces/impl/xpath/XPath$Step;

    aget-object v3, v3, v2

    iget-object v0, v3, Lmf/org/apache/xerces/impl/xpath/XPath$Step;->axis:Lmf/org/apache/xerces/impl/xpath/XPath$Axis;

    iget-short v3, v0, Lmf/org/apache/xerces/impl/xpath/XPath$Axis;->type:S

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/identity/Field$XPath;->fLocationPaths:[Lmf/org/apache/xerces/impl/xpath/XPath$LocationPath;

    aget-object v3, v3, v1

    iget-object v3, v3, Lmf/org/apache/xerces/impl/xpath/XPath$LocationPath;->steps:[Lmf/org/apache/xerces/impl/xpath/XPath$Step;

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_2

    new-instance v3, Lmf/org/apache/xerces/impl/xpath/XPathException;

    const-string v4, "c-fields-xpaths"

    invoke-direct {v3, v4}, Lmf/org/apache/xerces/impl/xpath/XPathException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private static fixupXPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/16 v5, 0x7c

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    :goto_0
    if-lt v2, v1, :cond_0

    :goto_1
    return-object p0

    :cond_0
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eqz v3, :cond_4

    invoke-static {v0}, Lmf/org/apache/xerces/util/XMLChar;->isSpace(I)Z

    move-result v4

    if-nez v4, :cond_2

    const/16 v4, 0x2e

    if-eq v0, v4, :cond_1

    const/16 v4, 0x2f

    if-ne v0, v4, :cond_3

    :cond_1
    const/4 v3, 0x0

    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    if-eq v0, v5, :cond_2

    invoke-static {p0, v2, v1}, Lmf/org/apache/xerces/impl/xs/identity/Field$XPath;->fixupXPath2(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_4
    if-ne v0, v5, :cond_2

    const/4 v3, 0x1

    goto :goto_2
.end method

.method private static fixupXPath2(Ljava/lang/String;II)Ljava/lang/String;
    .locals 6

    const/16 v5, 0x7c

    new-instance v0, Ljava/lang/StringBuffer;

    add-int/lit8 v4, p2, 0x2

    invoke-direct {v0, v4}, Ljava/lang/StringBuffer;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-lt v2, p1, :cond_0

    const-string v4, "./"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v3, 0x0

    :goto_1
    if-lt p1, p2, :cond_1

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    :cond_0
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eqz v3, :cond_5

    invoke-static {v1}, Lmf/org/apache/xerces/util/XMLChar;->isSpace(I)Z

    move-result v4

    if-nez v4, :cond_3

    const/16 v4, 0x2e

    if-eq v1, v4, :cond_2

    const/16 v4, 0x2f

    if-ne v1, v4, :cond_4

    :cond_2
    const/4 v3, 0x0

    :cond_3
    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_4
    if-eq v1, v5, :cond_3

    const-string v4, "./"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v3, 0x0

    goto :goto_2

    :cond_5
    if-ne v1, v5, :cond_3

    const/4 v3, 0x1

    goto :goto_2
.end method
