.class public final Lmf/org/apache/xerces/dom/DeferredAttrNSImpl;
.super Lmf/org/apache/xerces/dom/AttrNSImpl;
.source "DeferredAttrNSImpl.java"

# interfaces
.implements Lmf/org/apache/xerces/dom/DeferredNode;


# static fields
.field static final serialVersionUID:J = 0x544e780ac09de522L


# instance fields
.field protected transient fNodeIndex:I


# direct methods
.method constructor <init>(Lmf/org/apache/xerces/dom/DeferredDocumentImpl;I)V
    .locals 2

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmf/org/apache/xerces/dom/AttrNSImpl;-><init>(Lmf/org/apache/xerces/dom/CoreDocumentImpl;Ljava/lang/String;)V

    iput p2, p0, Lmf/org/apache/xerces/dom/DeferredAttrNSImpl;->fNodeIndex:I

    invoke-virtual {p0, v1}, Lmf/org/apache/xerces/dom/DeferredAttrNSImpl;->needsSyncData(Z)V

    invoke-virtual {p0, v1}, Lmf/org/apache/xerces/dom/DeferredAttrNSImpl;->needsSyncChildren(Z)V

    return-void
.end method


# virtual methods
.method public getNodeIndex()I
    .locals 1

    iget v0, p0, Lmf/org/apache/xerces/dom/DeferredAttrNSImpl;->fNodeIndex:I

    return v0
.end method

.method protected synchronizeChildren()V
    .locals 2

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/DeferredAttrNSImpl;->ownerDocument()Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    iget v1, p0, Lmf/org/apache/xerces/dom/DeferredAttrNSImpl;->fNodeIndex:I

    invoke-virtual {v0, p0, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->synchronizeChildren(Lmf/org/apache/xerces/dom/AttrImpl;I)V

    return-void
.end method

.method protected synchronizeData()V
    .locals 8

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Lmf/org/apache/xerces/dom/DeferredAttrNSImpl;->needsSyncData(Z)V

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/DeferredAttrNSImpl;->ownerDocument()Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    move-result-object v3

    check-cast v3, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    iget v4, p0, Lmf/org/apache/xerces/dom/DeferredAttrNSImpl;->fNodeIndex:I

    invoke-virtual {v3, v4}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getNodeName(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lmf/org/apache/xerces/dom/DeferredAttrNSImpl;->name:Ljava/lang/String;

    iget-object v4, p0, Lmf/org/apache/xerces/dom/DeferredAttrNSImpl;->name:Ljava/lang/String;

    const/16 v7, 0x3a

    invoke-virtual {v4, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-gez v2, :cond_0

    iget-object v4, p0, Lmf/org/apache/xerces/dom/DeferredAttrNSImpl;->name:Ljava/lang/String;

    iput-object v4, p0, Lmf/org/apache/xerces/dom/DeferredAttrNSImpl;->localName:Ljava/lang/String;

    :goto_0
    iget v4, p0, Lmf/org/apache/xerces/dom/DeferredAttrNSImpl;->fNodeIndex:I

    invoke-virtual {v3, v4}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getNodeExtra(I)I

    move-result v0

    and-int/lit8 v4, v0, 0x20

    if-eqz v4, :cond_1

    move v4, v5

    :goto_1
    invoke-virtual {p0, v4}, Lmf/org/apache/xerces/dom/DeferredAttrNSImpl;->isSpecified(Z)V

    and-int/lit16 v4, v0, 0x200

    if-eqz v4, :cond_2

    :goto_2
    invoke-virtual {p0, v5}, Lmf/org/apache/xerces/dom/DeferredAttrNSImpl;->isIdAttribute(Z)V

    iget v4, p0, Lmf/org/apache/xerces/dom/DeferredAttrNSImpl;->fNodeIndex:I

    invoke-virtual {v3, v4}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getNodeURI(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lmf/org/apache/xerces/dom/DeferredAttrNSImpl;->namespaceURI:Ljava/lang/String;

    iget v4, p0, Lmf/org/apache/xerces/dom/DeferredAttrNSImpl;->fNodeIndex:I

    invoke-virtual {v3, v4}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getLastChild(I)I

    move-result v1

    invoke-virtual {v3, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getTypeInfo(I)Ljava/lang/Object;

    move-result-object v4

    iput-object v4, p0, Lmf/org/apache/xerces/dom/DeferredAttrNSImpl;->type:Ljava/lang/Object;

    return-void

    :cond_0
    iget-object v4, p0, Lmf/org/apache/xerces/dom/DeferredAttrNSImpl;->name:Ljava/lang/String;

    add-int/lit8 v7, v2, 0x1

    invoke-virtual {v4, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lmf/org/apache/xerces/dom/DeferredAttrNSImpl;->localName:Ljava/lang/String;

    goto :goto_0

    :cond_1
    move v4, v6

    goto :goto_1

    :cond_2
    move v5, v6

    goto :goto_2
.end method
