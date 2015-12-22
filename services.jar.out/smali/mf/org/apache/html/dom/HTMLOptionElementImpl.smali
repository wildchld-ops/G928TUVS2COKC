.class public Lmf/org/apache/html/dom/HTMLOptionElementImpl;
.super Lmf/org/apache/html/dom/HTMLElementImpl;
.source "HTMLOptionElementImpl.java"

# interfaces
.implements Lmf/org/w3c/dom/html/HTMLOptionElement;


# static fields
.field private static final serialVersionUID:J = -0x3e4439af5ea1121bL


# direct methods
.method public constructor <init>(Lmf/org/apache/html/dom/HTMLDocumentImpl;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lmf/org/apache/html/dom/HTMLElementImpl;-><init>(Lmf/org/apache/html/dom/HTMLDocumentImpl;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getDefaultSelected()Z
    .locals 1

    const-string v0, "default-selected"

    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLOptionElementImpl;->getBinary(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getDisabled()Z
    .locals 1

    const-string v0, "disabled"

    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLOptionElementImpl;->getBinary(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getIndex()I
    .locals 4

    invoke-virtual {p0}, Lmf/org/apache/html/dom/HTMLOptionElementImpl;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v2

    :goto_0
    if-eqz v2, :cond_0

    instance-of v3, v2, Lmf/org/w3c/dom/html/HTMLSelectElement;

    if-eqz v3, :cond_3

    :cond_0
    if-eqz v2, :cond_1

    check-cast v2, Lmf/org/w3c/dom/html/HTMLElement;

    const-string v3, "OPTION"

    invoke-interface {v2, v3}, Lmf/org/w3c/dom/html/HTMLElement;->getElementsByTagName(Ljava/lang/String;)Lmf/org/w3c/dom/NodeList;

    move-result-object v1

    const/4 v0, 0x0

    :goto_1
    invoke-interface {v1}, Lmf/org/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-lt v0, v3, :cond_4

    :cond_1
    const/4 v0, -0x1

    :cond_2
    return v0

    :cond_3
    invoke-interface {v2}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v2

    goto :goto_0

    :cond_4
    invoke-interface {v1, v0}, Lmf/org/w3c/dom/NodeList;->item(I)Lmf/org/w3c/dom/Node;

    move-result-object v3

    if-eq v3, p0, :cond_2

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "label"

    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLOptionElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLOptionElementImpl;->capitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSelected()Z
    .locals 1

    const-string/jumbo v0, "selected"

    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLOptionElementImpl;->getBinary(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 3

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Lmf/org/apache/html/dom/HTMLOptionElementImpl;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_0

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_0
    instance-of v2, v0, Lmf/org/w3c/dom/Text;

    if-eqz v2, :cond_1

    move-object v2, v0

    check-cast v2, Lmf/org/w3c/dom/Text;

    invoke-interface {v2}, Lmf/org/w3c/dom/Text;->getData()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v0

    goto :goto_0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "value"

    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLOptionElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setDefaultSelected(Z)V
    .locals 1

    const-string v0, "default-selected"

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLOptionElementImpl;->setAttribute(Ljava/lang/String;Z)V

    return-void
.end method

.method public setDisabled(Z)V
    .locals 1

    const-string v0, "disabled"

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLOptionElementImpl;->setAttribute(Ljava/lang/String;Z)V

    return-void
.end method

.method public setIndex(I)V
    .locals 4

    invoke-virtual {p0}, Lmf/org/apache/html/dom/HTMLOptionElementImpl;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v2

    :goto_0
    if-eqz v2, :cond_0

    instance-of v3, v2, Lmf/org/w3c/dom/html/HTMLSelectElement;

    if-eqz v3, :cond_2

    :cond_0
    if-eqz v2, :cond_1

    check-cast v2, Lmf/org/w3c/dom/html/HTMLElement;

    const-string v3, "OPTION"

    invoke-interface {v2, v3}, Lmf/org/w3c/dom/html/HTMLElement;->getElementsByTagName(Ljava/lang/String;)Lmf/org/w3c/dom/NodeList;

    move-result-object v1

    invoke-interface {v1, p1}, Lmf/org/w3c/dom/NodeList;->item(I)Lmf/org/w3c/dom/Node;

    move-result-object v3

    if-eq v3, p0, :cond_1

    invoke-virtual {p0}, Lmf/org/apache/html/dom/HTMLOptionElementImpl;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v3

    invoke-interface {v3, p0}, Lmf/org/w3c/dom/Node;->removeChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    invoke-interface {v1, p1}, Lmf/org/w3c/dom/NodeList;->item(I)Lmf/org/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v3

    invoke-interface {v3, p0, v0}, Lmf/org/w3c/dom/Node;->insertBefore(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    :cond_1
    return-void

    :cond_2
    invoke-interface {v2}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v2

    goto :goto_0
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "label"

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLOptionElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setSelected(Z)V
    .locals 1

    const-string/jumbo v0, "selected"

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLOptionElementImpl;->setAttribute(Ljava/lang/String;Z)V

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 4

    invoke-virtual {p0}, Lmf/org/apache/html/dom/HTMLOptionElementImpl;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_0

    invoke-virtual {p0}, Lmf/org/apache/html/dom/HTMLOptionElementImpl;->getOwnerDocument()Lmf/org/w3c/dom/Document;

    move-result-object v2

    invoke-interface {v2, p1}, Lmf/org/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lmf/org/w3c/dom/Text;

    move-result-object v2

    invoke-virtual {p0}, Lmf/org/apache/html/dom/HTMLOptionElementImpl;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lmf/org/apache/html/dom/HTMLOptionElementImpl;->insertBefore(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    return-void

    :cond_0
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v1

    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLOptionElementImpl;->removeChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    move-object v0, v1

    goto :goto_0
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "value"

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLOptionElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
