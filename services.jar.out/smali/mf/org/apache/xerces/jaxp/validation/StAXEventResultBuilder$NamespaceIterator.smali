.class final Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder$NamespaceIterator;
.super Ljava/lang/Object;
.source "StAXEventResultBuilder.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "NamespaceIterator"
.end annotation


# instance fields
.field fEnd:I

.field fIndex:I

.field fNC:Lmf/javax/xml/namespace/NamespaceContext;

.field final synthetic this$0:Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder;


# direct methods
.method constructor <init>(Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder;I)V
    .locals 1

    iput-object p1, p0, Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder$NamespaceIterator;->this$0:Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    # getter for: Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder;->fNamespaceContext:Lmf/org/apache/xerces/util/JAXPNamespaceContextWrapper;
    invoke-static {p1}, Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder;->access$2(Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder;)Lmf/org/apache/xerces/util/JAXPNamespaceContextWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lmf/org/apache/xerces/util/JAXPNamespaceContextWrapper;->getNamespaceContext()Lmf/javax/xml/namespace/NamespaceContext;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder$NamespaceIterator;->fNC:Lmf/javax/xml/namespace/NamespaceContext;

    const/4 v0, 0x0

    iput v0, p0, Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder$NamespaceIterator;->fIndex:I

    iput p2, p0, Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder$NamespaceIterator;->fEnd:I

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    iget v0, p0, Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder$NamespaceIterator;->fIndex:I

    iget v1, p0, Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder$NamespaceIterator;->fEnd:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder$NamespaceIterator;->fNC:Lmf/javax/xml/namespace/NamespaceContext;

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 5

    invoke-virtual {p0}, Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder$NamespaceIterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/util/NoSuchElementException;

    invoke-direct {v2}, Ljava/util/NoSuchElementException;-><init>()V

    throw v2

    :cond_0
    iget-object v2, p0, Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder$NamespaceIterator;->this$0:Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder;

    # getter for: Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder;->fNamespaceContext:Lmf/org/apache/xerces/util/JAXPNamespaceContextWrapper;
    invoke-static {v2}, Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder;->access$2(Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder;)Lmf/org/apache/xerces/util/JAXPNamespaceContextWrapper;

    move-result-object v2

    iget v3, p0, Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder$NamespaceIterator;->fIndex:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder$NamespaceIterator;->fIndex:I

    invoke-virtual {v2, v3}, Lmf/org/apache/xerces/util/JAXPNamespaceContextWrapper;->getDeclaredPrefixAt(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder$NamespaceIterator;->fNC:Lmf/javax/xml/namespace/NamespaceContext;

    invoke-interface {v2, v0}, Lmf/javax/xml/namespace/NamespaceContext;->getNamespaceURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder$NamespaceIterator;->this$0:Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder;

    # getter for: Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder;->fEventFactory:Lmf/javax/xml/stream/XMLEventFactory;
    invoke-static {v2}, Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder;->access$1(Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder;)Lmf/javax/xml/stream/XMLEventFactory;

    move-result-object v2

    if-eqz v1, :cond_1

    :goto_0
    invoke-virtual {v2, v1}, Lmf/javax/xml/stream/XMLEventFactory;->createNamespace(Ljava/lang/String;)Lmf/javax/xml/stream/events/Namespace;

    move-result-object v2

    :goto_1
    return-object v2

    :cond_1
    const-string v1, ""

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder$NamespaceIterator;->this$0:Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder;

    # getter for: Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder;->fEventFactory:Lmf/javax/xml/stream/XMLEventFactory;
    invoke-static {v2}, Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder;->access$1(Lmf/org/apache/xerces/jaxp/validation/StAXEventResultBuilder;)Lmf/javax/xml/stream/XMLEventFactory;

    move-result-object v2

    if-eqz v1, :cond_3

    :goto_2
    invoke-virtual {v2, v0, v1}, Lmf/javax/xml/stream/XMLEventFactory;->createNamespace(Ljava/lang/String;Ljava/lang/String;)Lmf/javax/xml/stream/events/Namespace;

    move-result-object v2

    goto :goto_1

    :cond_3
    const-string v1, ""

    goto :goto_2
.end method

.method public remove()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
