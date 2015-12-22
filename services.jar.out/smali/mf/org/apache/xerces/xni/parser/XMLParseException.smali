.class public Lmf/org/apache/xerces/xni/parser/XMLParseException;
.super Lmf/org/apache/xerces/xni/XNIException;
.source "XMLParseException.java"


# static fields
.field static final serialVersionUID:J = 0x180cb55b161e8a4fL


# instance fields
.field protected fBaseSystemId:Ljava/lang/String;

.field protected fCharacterOffset:I

.field protected fColumnNumber:I

.field protected fExpandedSystemId:Ljava/lang/String;

.field protected fLineNumber:I

.field protected fLiteralSystemId:Ljava/lang/String;

.field protected fPublicId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lmf/org/apache/xerces/xni/XMLLocator;Ljava/lang/String;)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, p2}, Lmf/org/apache/xerces/xni/XNIException;-><init>(Ljava/lang/String;)V

    iput v0, p0, Lmf/org/apache/xerces/xni/parser/XMLParseException;->fLineNumber:I

    iput v0, p0, Lmf/org/apache/xerces/xni/parser/XMLParseException;->fColumnNumber:I

    iput v0, p0, Lmf/org/apache/xerces/xni/parser/XMLParseException;->fCharacterOffset:I

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lmf/org/apache/xerces/xni/XMLLocator;->getPublicId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/xni/parser/XMLParseException;->fPublicId:Ljava/lang/String;

    invoke-interface {p1}, Lmf/org/apache/xerces/xni/XMLLocator;->getLiteralSystemId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/xni/parser/XMLParseException;->fLiteralSystemId:Ljava/lang/String;

    invoke-interface {p1}, Lmf/org/apache/xerces/xni/XMLLocator;->getExpandedSystemId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/xni/parser/XMLParseException;->fExpandedSystemId:Ljava/lang/String;

    invoke-interface {p1}, Lmf/org/apache/xerces/xni/XMLLocator;->getBaseSystemId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/xni/parser/XMLParseException;->fBaseSystemId:Ljava/lang/String;

    invoke-interface {p1}, Lmf/org/apache/xerces/xni/XMLLocator;->getLineNumber()I

    move-result v0

    iput v0, p0, Lmf/org/apache/xerces/xni/parser/XMLParseException;->fLineNumber:I

    invoke-interface {p1}, Lmf/org/apache/xerces/xni/XMLLocator;->getColumnNumber()I

    move-result v0

    iput v0, p0, Lmf/org/apache/xerces/xni/parser/XMLParseException;->fColumnNumber:I

    invoke-interface {p1}, Lmf/org/apache/xerces/xni/XMLLocator;->getCharacterOffset()I

    move-result v0

    iput v0, p0, Lmf/org/apache/xerces/xni/parser/XMLParseException;->fCharacterOffset:I

    :cond_0
    return-void
.end method

.method public constructor <init>(Lmf/org/apache/xerces/xni/XMLLocator;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, p2, p3}, Lmf/org/apache/xerces/xni/XNIException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    iput v0, p0, Lmf/org/apache/xerces/xni/parser/XMLParseException;->fLineNumber:I

    iput v0, p0, Lmf/org/apache/xerces/xni/parser/XMLParseException;->fColumnNumber:I

    iput v0, p0, Lmf/org/apache/xerces/xni/parser/XMLParseException;->fCharacterOffset:I

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lmf/org/apache/xerces/xni/XMLLocator;->getPublicId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/xni/parser/XMLParseException;->fPublicId:Ljava/lang/String;

    invoke-interface {p1}, Lmf/org/apache/xerces/xni/XMLLocator;->getLiteralSystemId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/xni/parser/XMLParseException;->fLiteralSystemId:Ljava/lang/String;

    invoke-interface {p1}, Lmf/org/apache/xerces/xni/XMLLocator;->getExpandedSystemId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/xni/parser/XMLParseException;->fExpandedSystemId:Ljava/lang/String;

    invoke-interface {p1}, Lmf/org/apache/xerces/xni/XMLLocator;->getBaseSystemId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/xni/parser/XMLParseException;->fBaseSystemId:Ljava/lang/String;

    invoke-interface {p1}, Lmf/org/apache/xerces/xni/XMLLocator;->getLineNumber()I

    move-result v0

    iput v0, p0, Lmf/org/apache/xerces/xni/parser/XMLParseException;->fLineNumber:I

    invoke-interface {p1}, Lmf/org/apache/xerces/xni/XMLLocator;->getColumnNumber()I

    move-result v0

    iput v0, p0, Lmf/org/apache/xerces/xni/parser/XMLParseException;->fColumnNumber:I

    invoke-interface {p1}, Lmf/org/apache/xerces/xni/XMLLocator;->getCharacterOffset()I

    move-result v0

    iput v0, p0, Lmf/org/apache/xerces/xni/parser/XMLParseException;->fCharacterOffset:I

    :cond_0
    return-void
.end method


# virtual methods
.method public getBaseSystemId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/xni/parser/XMLParseException;->fBaseSystemId:Ljava/lang/String;

    return-object v0
.end method

.method public getCharacterOffset()I
    .locals 1

    iget v0, p0, Lmf/org/apache/xerces/xni/parser/XMLParseException;->fCharacterOffset:I

    return v0
.end method

.method public getColumnNumber()I
    .locals 1

    iget v0, p0, Lmf/org/apache/xerces/xni/parser/XMLParseException;->fColumnNumber:I

    return v0
.end method

.method public getExpandedSystemId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/xni/parser/XMLParseException;->fExpandedSystemId:Ljava/lang/String;

    return-object v0
.end method

.method public getLineNumber()I
    .locals 1

    iget v0, p0, Lmf/org/apache/xerces/xni/parser/XMLParseException;->fLineNumber:I

    return v0
.end method

.method public getLiteralSystemId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/xni/parser/XMLParseException;->fLiteralSystemId:Ljava/lang/String;

    return-object v0
.end method

.method public getPublicId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/xni/parser/XMLParseException;->fPublicId:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    const/16 v4, 0x3a

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v3, p0, Lmf/org/apache/xerces/xni/parser/XMLParseException;->fPublicId:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lmf/org/apache/xerces/xni/parser/XMLParseException;->fPublicId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v3, p0, Lmf/org/apache/xerces/xni/parser/XMLParseException;->fLiteralSystemId:Ljava/lang/String;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lmf/org/apache/xerces/xni/parser/XMLParseException;->fLiteralSystemId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v3, p0, Lmf/org/apache/xerces/xni/parser/XMLParseException;->fExpandedSystemId:Ljava/lang/String;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lmf/org/apache/xerces/xni/parser/XMLParseException;->fExpandedSystemId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v3, p0, Lmf/org/apache/xerces/xni/parser/XMLParseException;->fBaseSystemId:Ljava/lang/String;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lmf/org/apache/xerces/xni/parser/XMLParseException;->fBaseSystemId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_3
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget v3, p0, Lmf/org/apache/xerces/xni/parser/XMLParseException;->fLineNumber:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget v3, p0, Lmf/org/apache/xerces/xni/parser/XMLParseException;->fColumnNumber:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget v3, p0, Lmf/org/apache/xerces/xni/parser/XMLParseException;->fCharacterOffset:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lmf/org/apache/xerces/xni/parser/XMLParseException;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    invoke-virtual {p0}, Lmf/org/apache/xerces/xni/parser/XMLParseException;->getException()Ljava/lang/Exception;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    :cond_4
    if-eqz v1, :cond_5

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_5
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
