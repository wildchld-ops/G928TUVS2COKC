.class public Lmf/org/apache/xerces/impl/xs/opti/DefaultText;
.super Lmf/org/apache/xerces/impl/xs/opti/NodeImpl;
.source "DefaultText.java"

# interfaces
.implements Lmf/org/w3c/dom/Text;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lmf/org/apache/xerces/impl/xs/opti/NodeImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public appendData(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    new-instance v0, Lmf/org/w3c/dom/DOMException;

    const/16 v1, 0x9

    const-string v2, "Method not supported"

    invoke-direct {v0, v1, v2}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0
.end method

.method public deleteData(II)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    new-instance v0, Lmf/org/w3c/dom/DOMException;

    const/16 v1, 0x9

    const-string v2, "Method not supported"

    invoke-direct {v0, v1, v2}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0
.end method

.method public getData()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getLength()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getWholeText()Ljava/lang/String;
    .locals 3

    new-instance v0, Lmf/org/w3c/dom/DOMException;

    const/16 v1, 0x9

    const-string v2, "Method not supported"

    invoke-direct {v0, v1, v2}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0
.end method

.method public insertData(ILjava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    new-instance v0, Lmf/org/w3c/dom/DOMException;

    const/16 v1, 0x9

    const-string v2, "Method not supported"

    invoke-direct {v0, v1, v2}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0
.end method

.method public isElementContentWhitespace()Z
    .locals 3

    new-instance v0, Lmf/org/w3c/dom/DOMException;

    const/16 v1, 0x9

    const-string v2, "Method not supported"

    invoke-direct {v0, v1, v2}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0
.end method

.method public replaceData(IILjava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    new-instance v0, Lmf/org/w3c/dom/DOMException;

    const/16 v1, 0x9

    const-string v2, "Method not supported"

    invoke-direct {v0, v1, v2}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0
.end method

.method public replaceWholeText(Ljava/lang/String;)Lmf/org/w3c/dom/Text;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    new-instance v0, Lmf/org/w3c/dom/DOMException;

    const/16 v1, 0x9

    const-string v2, "Method not supported"

    invoke-direct {v0, v1, v2}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0
.end method

.method public setData(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    new-instance v0, Lmf/org/w3c/dom/DOMException;

    const/16 v1, 0x9

    const-string v2, "Method not supported"

    invoke-direct {v0, v1, v2}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0
.end method

.method public splitText(I)Lmf/org/w3c/dom/Text;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    new-instance v0, Lmf/org/w3c/dom/DOMException;

    const/16 v1, 0x9

    const-string v2, "Method not supported"

    invoke-direct {v0, v1, v2}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0
.end method

.method public substringData(II)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    new-instance v0, Lmf/org/w3c/dom/DOMException;

    const/16 v1, 0x9

    const-string v2, "Method not supported"

    invoke-direct {v0, v1, v2}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0
.end method
