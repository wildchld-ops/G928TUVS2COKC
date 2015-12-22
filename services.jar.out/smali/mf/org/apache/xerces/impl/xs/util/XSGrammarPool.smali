.class public Lmf/org/apache/xerces/impl/xs/util/XSGrammarPool;
.super Lmf/org/apache/xerces/util/XMLGrammarPoolImpl;
.source "XSGrammarPool.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public toXSModel()Lmf/org/apache/xerces/xs/XSModel;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/impl/xs/util/XSGrammarPool;->toXSModel(S)Lmf/org/apache/xerces/xs/XSModel;

    move-result-object v0

    return-object v0
.end method

.method public toXSModel(S)Lmf/org/apache/xerces/xs/XSModel;
    .locals 7

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_0
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/util/XSGrammarPool;->fGrammars:[Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;

    array-length v5, v5

    if-lt v2, v5, :cond_0

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_3

    const/4 v5, 0x0

    new-array v5, v5, [Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    invoke-virtual {p0, v5, p1}, Lmf/org/apache/xerces/impl/xs/util/XSGrammarPool;->toXSModel([Lmf/org/apache/xerces/impl/xs/SchemaGrammar;S)Lmf/org/apache/xerces/xs/XSModel;

    move-result-object v5

    :goto_1
    return-object v5

    :cond_0
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/util/XSGrammarPool;->fGrammars:[Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;

    aget-object v0, v5, v2

    :goto_2
    if-nez v0, :cond_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v5, v0, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;->desc:Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;

    invoke-interface {v5}, Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;->getGrammarType()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "http://www.w3.org/2001/XMLSchema"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, v0, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;->grammar:Lmf/org/apache/xerces/xni/grammars/Grammar;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-object v0, v0, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;->next:Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;

    goto :goto_2

    :cond_3
    new-array v5, v4, [Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    invoke-virtual {p0, v1, p1}, Lmf/org/apache/xerces/impl/xs/util/XSGrammarPool;->toXSModel([Lmf/org/apache/xerces/impl/xs/SchemaGrammar;S)Lmf/org/apache/xerces/xs/XSModel;

    move-result-object v5

    goto :goto_1
.end method

.method protected toXSModel([Lmf/org/apache/xerces/impl/xs/SchemaGrammar;S)Lmf/org/apache/xerces/xs/XSModel;
    .locals 1

    new-instance v0, Lmf/org/apache/xerces/impl/xs/XSModelImpl;

    invoke-direct {v0, p1, p2}, Lmf/org/apache/xerces/impl/xs/XSModelImpl;-><init>([Lmf/org/apache/xerces/impl/xs/SchemaGrammar;S)V

    return-object v0
.end method
