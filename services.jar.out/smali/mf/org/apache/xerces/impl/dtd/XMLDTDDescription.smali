.class public Lmf/org/apache/xerces/impl/dtd/XMLDTDDescription;
.super Lmf/org/apache/xerces/util/XMLResourceIdentifierImpl;
.source "XMLDTDDescription.java"

# interfaces
.implements Lmf/org/apache/xerces/xni/grammars/XMLDTDDescription;


# instance fields
.field protected fPossibleRoots:Ljava/util/ArrayList;

.field protected fRootName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lmf/org/apache/xerces/util/XMLResourceIdentifierImpl;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDDescription;->fRootName:Ljava/lang/String;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDDescription;->fPossibleRoots:Ljava/util/ArrayList;

    invoke-virtual {p0, p1, p2, p3, p4}, Lmf/org/apache/xerces/impl/dtd/XMLDTDDescription;->setValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p5, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDDescription;->fRootName:Ljava/lang/String;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDDescription;->fPossibleRoots:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Lmf/org/apache/xerces/xni/XMLResourceIdentifier;Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x0

    invoke-direct {p0}, Lmf/org/apache/xerces/util/XMLResourceIdentifierImpl;-><init>()V

    iput-object v4, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDDescription;->fRootName:Ljava/lang/String;

    iput-object v4, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDDescription;->fPossibleRoots:Ljava/util/ArrayList;

    invoke-interface {p1}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->getPublicId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->getLiteralSystemId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->getBaseSystemId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->getExpandedSystemId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lmf/org/apache/xerces/impl/dtd/XMLDTDDescription;->setValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p2, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDDescription;->fRootName:Ljava/lang/String;

    iput-object v4, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDDescription;->fPossibleRoots:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Lmf/org/apache/xerces/xni/parser/XMLInputSource;)V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0}, Lmf/org/apache/xerces/util/XMLResourceIdentifierImpl;-><init>()V

    iput-object v3, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDDescription;->fRootName:Ljava/lang/String;

    iput-object v3, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDDescription;->fPossibleRoots:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;->getPublicId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;->getBaseSystemId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;->getSystemId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v3, v1, v2}, Lmf/org/apache/xerces/impl/dtd/XMLDTDDescription;->setValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDDescription;->fRootName:Ljava/lang/String;

    iput-object v3, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDDescription;->fPossibleRoots:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 8

    const/4 v6, 0x0

    instance-of v5, p1, Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;

    if-nez v5, :cond_0

    move v5, v6

    :goto_0
    return v5

    :cond_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/dtd/XMLDTDDescription;->getGrammarType()Ljava/lang/String;

    move-result-object v7

    move-object v5, p1

    check-cast v5, Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;

    invoke-interface {v5}, Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;->getGrammarType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    move v5, v6

    goto :goto_0

    :cond_1
    move-object v0, p1

    check-cast v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDDescription;

    iget-object v5, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDDescription;->fRootName:Ljava/lang/String;

    if-eqz v5, :cond_3

    iget-object v5, v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDDescription;->fRootName:Ljava/lang/String;

    if-eqz v5, :cond_2

    iget-object v5, v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDDescription;->fRootName:Ljava/lang/String;

    iget-object v7, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDDescription;->fRootName:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    move v5, v6

    goto :goto_0

    :cond_2
    iget-object v5, v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDDescription;->fPossibleRoots:Ljava/util/ArrayList;

    if-eqz v5, :cond_8

    iget-object v5, v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDDescription;->fPossibleRoots:Ljava/util/ArrayList;

    iget-object v7, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDDescription;->fRootName:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    move v5, v6

    goto :goto_0

    :cond_3
    iget-object v5, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDDescription;->fPossibleRoots:Ljava/util/ArrayList;

    if-eqz v5, :cond_8

    iget-object v5, v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDDescription;->fRootName:Ljava/lang/String;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDDescription;->fPossibleRoots:Ljava/util/ArrayList;

    iget-object v7, v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDDescription;->fRootName:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    move v5, v6

    goto :goto_0

    :cond_4
    iget-object v5, v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDDescription;->fPossibleRoots:Ljava/util/ArrayList;

    if-nez v5, :cond_5

    move v5, v6

    goto :goto_0

    :cond_5
    const/4 v1, 0x0

    iget-object v5, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDDescription;->fPossibleRoots:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v2, 0x0

    :goto_1
    if-lt v2, v4, :cond_7

    :cond_6
    if-nez v1, :cond_8

    move v5, v6

    goto :goto_0

    :cond_7
    iget-object v5, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDDescription;->fPossibleRoots:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v5, v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDDescription;->fPossibleRoots:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_8
    iget-object v5, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDDescription;->fExpandedSystemId:Ljava/lang/String;

    if-eqz v5, :cond_9

    iget-object v5, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDDescription;->fExpandedSystemId:Ljava/lang/String;

    iget-object v7, v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDDescription;->fExpandedSystemId:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a

    move v5, v6

    goto/16 :goto_0

    :cond_9
    iget-object v5, v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDDescription;->fExpandedSystemId:Ljava/lang/String;

    if-eqz v5, :cond_a

    move v5, v6

    goto/16 :goto_0

    :cond_a
    iget-object v5, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDDescription;->fPublicId:Ljava/lang/String;

    if-eqz v5, :cond_b

    iget-object v5, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDDescription;->fPublicId:Ljava/lang/String;

    iget-object v7, v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDDescription;->fPublicId:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_c

    move v5, v6

    goto/16 :goto_0

    :cond_b
    iget-object v5, v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDDescription;->fPublicId:Ljava/lang/String;

    if-eqz v5, :cond_c

    move v5, v6

    goto/16 :goto_0

    :cond_c
    const/4 v5, 0x1

    goto/16 :goto_0
.end method

.method public getGrammarType()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "http://www.w3.org/TR/REC-xml"

    return-object v0
.end method

.method public getRootName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDDescription;->fRootName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDDescription;->fExpandedSystemId:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDDescription;->fExpandedSystemId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDDescription;->fPublicId:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDDescription;->fPublicId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setPossibleRoots(Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDDescription;->fPossibleRoots:Ljava/util/ArrayList;

    return-void
.end method

.method public setPossibleRoots(Ljava/util/Vector;)V
    .locals 1

    if-eqz p1, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :goto_0
    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDDescription;->fPossibleRoots:Ljava/util/ArrayList;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setRootName(Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDDescription;->fRootName:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDDescription;->fPossibleRoots:Ljava/util/ArrayList;

    return-void
.end method
