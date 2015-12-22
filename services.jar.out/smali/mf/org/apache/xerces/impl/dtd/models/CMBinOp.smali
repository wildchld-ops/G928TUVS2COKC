.class public Lmf/org/apache/xerces/impl/dtd/models/CMBinOp;
.super Lmf/org/apache/xerces/impl/dtd/models/CMNode;
.source "CMBinOp.java"


# instance fields
.field private final fLeftChild:Lmf/org/apache/xerces/impl/dtd/models/CMNode;

.field private final fRightChild:Lmf/org/apache/xerces/impl/dtd/models/CMNode;


# direct methods
.method public constructor <init>(ILmf/org/apache/xerces/impl/dtd/models/CMNode;Lmf/org/apache/xerces/impl/dtd/models/CMNode;)V
    .locals 2

    invoke-direct {p0, p1}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;-><init>(I)V

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/dtd/models/CMBinOp;->type()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/dtd/models/CMBinOp;->type()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ImplementationMessages.VAL_BST"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p2, p0, Lmf/org/apache/xerces/impl/dtd/models/CMBinOp;->fLeftChild:Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    iput-object p3, p0, Lmf/org/apache/xerces/impl/dtd/models/CMBinOp;->fRightChild:Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    return-void
.end method


# virtual methods
.method protected calcFirstPos(Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;)V
    .locals 2

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/dtd/models/CMBinOp;->type()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/models/CMBinOp;->fLeftChild:Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->firstPos()Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->setTo(Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;)V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/models/CMBinOp;->fRightChild:Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->firstPos()Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->union(Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/dtd/models/CMBinOp;->type()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/models/CMBinOp;->fLeftChild:Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->firstPos()Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->setTo(Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;)V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/models/CMBinOp;->fLeftChild:Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->isNullable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/models/CMBinOp;->fRightChild:Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->firstPos()Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->union(Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;)V

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ImplementationMessages.VAL_BST"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected calcLastPos(Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;)V
    .locals 2

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/dtd/models/CMBinOp;->type()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/models/CMBinOp;->fLeftChild:Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->lastPos()Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->setTo(Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;)V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/models/CMBinOp;->fRightChild:Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->lastPos()Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->union(Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/dtd/models/CMBinOp;->type()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/models/CMBinOp;->fRightChild:Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->lastPos()Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->setTo(Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;)V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/models/CMBinOp;->fRightChild:Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->isNullable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/models/CMBinOp;->fLeftChild:Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->lastPos()Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->union(Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;)V

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ImplementationMessages.VAL_BST"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final getLeft()Lmf/org/apache/xerces/impl/dtd/models/CMNode;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/models/CMBinOp;->fLeftChild:Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    return-object v0
.end method

.method final getRight()Lmf/org/apache/xerces/impl/dtd/models/CMNode;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/models/CMBinOp;->fRightChild:Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    return-object v0
.end method

.method public isNullable()Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/dtd/models/CMBinOp;->type()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/models/CMBinOp;->fLeftChild:Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->isNullable()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/models/CMBinOp;->fRightChild:Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->isNullable()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/dtd/models/CMBinOp;->type()I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/models/CMBinOp;->fLeftChild:Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->isNullable()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/models/CMBinOp;->fRightChild:Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->isNullable()Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ImplementationMessages.VAL_BST"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
