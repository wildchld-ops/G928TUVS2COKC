.class final Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport$SchemaRootContext;
.super Ljava/lang/Object;
.source "SchemaNamespaceSupport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SchemaRootContext"
.end annotation


# instance fields
.field private final fAttributeQName:Lmf/org/apache/xerces/xni/QName;

.field fDOMContextBuilt:Z

.field fNamespace:[Ljava/lang/String;

.field fNamespaceSize:I

.field private final fSchemaRoot:Lmf/org/w3c/dom/Element;

.field private final fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;


# direct methods
.method constructor <init>(Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/util/SymbolTable;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x20

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport$SchemaRootContext;->fNamespace:[Ljava/lang/String;

    iput v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport$SchemaRootContext;->fNamespaceSize:I

    iput-boolean v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport$SchemaRootContext;->fDOMContextBuilt:Z

    new-instance v0, Lmf/org/apache/xerces/xni/QName;

    invoke-direct {v0}, Lmf/org/apache/xerces/xni/QName;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport$SchemaRootContext;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    iput-object p1, p0, Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport$SchemaRootContext;->fSchemaRoot:Lmf/org/w3c/dom/Element;

    iput-object p2, p0, Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport$SchemaRootContext;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    return-void
.end method

.method private declarePrefix(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x0

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport$SchemaRootContext;->fNamespaceSize:I

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport$SchemaRootContext;->fNamespace:[Ljava/lang/String;

    array-length v2, v2

    if-ne v1, v2, :cond_0

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport$SchemaRootContext;->fNamespaceSize:I

    mul-int/lit8 v1, v1, 0x2

    new-array v0, v1, [Ljava/lang/String;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport$SchemaRootContext;->fNamespace:[Ljava/lang/String;

    iget v2, p0, Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport$SchemaRootContext;->fNamespaceSize:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport$SchemaRootContext;->fNamespace:[Ljava/lang/String;

    :cond_0
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport$SchemaRootContext;->fNamespace:[Ljava/lang/String;

    iget v2, p0, Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport$SchemaRootContext;->fNamespaceSize:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport$SchemaRootContext;->fNamespaceSize:I

    aput-object p1, v1, v2

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport$SchemaRootContext;->fNamespace:[Ljava/lang/String;

    iget v2, p0, Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport$SchemaRootContext;->fNamespaceSize:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport$SchemaRootContext;->fNamespaceSize:I

    aput-object p2, v1, v2

    return-void
.end method

.method private fillQName(Lmf/org/apache/xerces/xni/QName;Lmf/org/w3c/dom/Node;)V
    .locals 5

    invoke-interface {p2}, Lmf/org/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2}, Lmf/org/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2}, Lmf/org/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2}, Lmf/org/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    if-eqz v2, :cond_0

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport$SchemaRootContext;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-virtual {v4, v2}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :goto_0
    iput-object v4, p1, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport$SchemaRootContext;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-virtual {v4, v0}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :goto_1
    iput-object v4, p1, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    if-eqz v3, :cond_2

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport$SchemaRootContext;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-virtual {v4, v3}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :goto_2
    iput-object v4, p1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_3

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport$SchemaRootContext;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-virtual {v4, v1}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :goto_3
    iput-object v4, p1, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    return-void

    :cond_0
    sget-object v4, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    goto :goto_0

    :cond_1
    sget-object v4, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    goto :goto_1

    :cond_2
    sget-object v4, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    goto :goto_2

    :cond_3
    const/4 v4, 0x0

    goto :goto_3
.end method


# virtual methods
.method fillNamespaceContext()V
    .locals 9

    const/4 v7, 0x0

    iget-object v6, p0, Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport$SchemaRootContext;->fSchemaRoot:Lmf/org/w3c/dom/Element;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport$SchemaRootContext;->fSchemaRoot:Lmf/org/w3c/dom/Element;

    invoke-interface {v6}, Lmf/org/w3c/dom/Element;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v3

    :goto_0
    if-nez v3, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v6, 0x1

    invoke-interface {v3}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v8

    if-ne v6, v8, :cond_2

    invoke-interface {v3}, Lmf/org/w3c/dom/Node;->getAttributes()Lmf/org/w3c/dom/NamedNodeMap;

    move-result-object v2

    invoke-interface {v2}, Lmf/org/w3c/dom/NamedNodeMap;->getLength()I

    move-result v1

    const/4 v4, 0x0

    :goto_1
    if-lt v4, v1, :cond_3

    :cond_2
    invoke-interface {v3}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v3

    goto :goto_0

    :cond_3
    invoke-interface {v2, v4}, Lmf/org/w3c/dom/NamedNodeMap;->item(I)Lmf/org/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lmf/org/w3c/dom/Attr;

    invoke-interface {v0}, Lmf/org/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_4

    sget-object v5, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    :cond_4
    iget-object v6, p0, Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport$SchemaRootContext;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    invoke-direct {p0, v6, v0}, Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport$SchemaRootContext;->fillQName(Lmf/org/apache/xerces/xni/QName;Lmf/org/w3c/dom/Node;)V

    iget-object v6, p0, Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport$SchemaRootContext;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v6, v6, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    sget-object v8, Lmf/org/apache/xerces/xni/NamespaceContext;->XMLNS_URI:Ljava/lang/String;

    if-ne v6, v8, :cond_5

    iget-object v6, p0, Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport$SchemaRootContext;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v6, v6, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    sget-object v8, Lmf/org/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    if-ne v6, v8, :cond_7

    iget-object v6, p0, Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport$SchemaRootContext;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v8, v6, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_6

    iget-object v6, p0, Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport$SchemaRootContext;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-virtual {v6, v5}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :goto_2
    invoke-direct {p0, v8, v6}, Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport$SchemaRootContext;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_6
    move-object v6, v7

    goto :goto_2

    :cond_7
    sget-object v8, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_8

    iget-object v6, p0, Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport$SchemaRootContext;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-virtual {v6, v5}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :goto_4
    invoke-direct {p0, v8, v6}, Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport$SchemaRootContext;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_8
    move-object v6, v7

    goto :goto_4
.end method

.method getURI(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport$SchemaRootContext;->fNamespaceSize:I

    if-lt v0, v1, :cond_0

    const/4 v1, 0x0

    :goto_1
    return-object v1

    :cond_0
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport$SchemaRootContext;->fNamespace:[Ljava/lang/String;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_1

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport$SchemaRootContext;->fNamespace:[Ljava/lang/String;

    add-int/lit8 v2, v0, 0x1

    aget-object v1, v1, v2

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x2

    goto :goto_0
.end method
