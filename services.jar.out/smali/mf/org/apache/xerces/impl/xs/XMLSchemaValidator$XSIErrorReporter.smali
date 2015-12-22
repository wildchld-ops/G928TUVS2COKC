.class public final Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XSIErrorReporter;
.super Ljava/lang/Object;
.source "XMLSchemaValidator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x14
    name = "XSIErrorReporter"
.end annotation


# instance fields
.field fContext:[I

.field fContextCount:I

.field fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

.field fErrors:Ljava/util/Vector;

.field final synthetic this$0:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;


# direct methods
.method protected constructor <init>(Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;)V
    .locals 1

    iput-object p1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XSIErrorReporter;->this$0:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XSIErrorReporter;->fErrors:Ljava/util/Vector;

    const/16 v0, 0x8

    new-array v0, v0, [I

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XSIErrorReporter;->fContext:[I

    return-void
.end method


# virtual methods
.method public mergeContext()[Ljava/lang/String;
    .locals 6

    const/4 v1, 0x0

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XSIErrorReporter;->this$0:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;

    iget-boolean v4, v4, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fAugPSVI:Z

    if-nez v4, :cond_1

    :cond_0
    return-object v1

    :cond_1
    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XSIErrorReporter;->fContext:[I

    iget v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XSIErrorReporter;->fContextCount:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XSIErrorReporter;->fContextCount:I

    aget v0, v4, v5

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XSIErrorReporter;->fErrors:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    sub-int v3, v4, v0

    if-eqz v3, :cond_0

    new-array v1, v3, [Ljava/lang/String;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XSIErrorReporter;->fErrors:Ljava/util/Vector;

    add-int v5, v0, v2

    invoke-virtual {v4, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    aput-object v4, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public popContext()[Ljava/lang/String;
    .locals 6

    const/4 v1, 0x0

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XSIErrorReporter;->this$0:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;

    iget-boolean v4, v4, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fAugPSVI:Z

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XSIErrorReporter;->fContext:[I

    iget v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XSIErrorReporter;->fContextCount:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XSIErrorReporter;->fContextCount:I

    aget v0, v4, v5

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XSIErrorReporter;->fErrors:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    sub-int v3, v4, v0

    if-eqz v3, :cond_0

    new-array v1, v3, [Ljava/lang/String;

    const/4 v2, 0x0

    :goto_1
    if-lt v2, v3, :cond_2

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XSIErrorReporter;->fErrors:Ljava/util/Vector;

    invoke-virtual {v4, v0}, Ljava/util/Vector;->setSize(I)V

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XSIErrorReporter;->fErrors:Ljava/util/Vector;

    add-int v5, v0, v2

    invoke-virtual {v4, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    aput-object v4, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public pushContext()V
    .locals 5

    const/4 v4, 0x0

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XSIErrorReporter;->this$0:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;

    iget-boolean v2, v2, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fAugPSVI:Z

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XSIErrorReporter;->fContextCount:I

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XSIErrorReporter;->fContext:[I

    array-length v3, v3

    if-ne v2, v3, :cond_1

    iget v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XSIErrorReporter;->fContextCount:I

    add-int/lit8 v1, v2, 0x8

    new-array v0, v1, [I

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XSIErrorReporter;->fContext:[I

    iget v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XSIErrorReporter;->fContextCount:I

    invoke-static {v2, v4, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XSIErrorReporter;->fContext:[I

    :cond_1
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XSIErrorReporter;->fContext:[I

    iget v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XSIErrorReporter;->fContextCount:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XSIErrorReporter;->fContextCount:I

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XSIErrorReporter;->fErrors:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    aput v4, v2, v3

    goto :goto_0
.end method

.method public reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XSIErrorReporter;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    invoke-virtual {v1, p1, p2, p3, p4}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XSIErrorReporter;->this$0:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;

    iget-boolean v1, v1, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fAugPSVI:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XSIErrorReporter;->fErrors:Ljava/util/Vector;

    invoke-virtual {v1, p2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XSIErrorReporter;->fErrors:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public reportError(Lmf/org/apache/xerces/xni/XMLLocator;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XSIErrorReporter;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Lmf/org/apache/xerces/xni/XMLLocator;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XSIErrorReporter;->this$0:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;

    iget-boolean v0, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fAugPSVI:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XSIErrorReporter;->fErrors:Ljava/util/Vector;

    invoke-virtual {v0, p3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XSIErrorReporter;->fErrors:Ljava/util/Vector;

    invoke-virtual {v0, v6}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public reset(Lmf/org/apache/xerces/impl/XMLErrorReporter;)V
    .locals 1

    iput-object p1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XSIErrorReporter;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XSIErrorReporter;->fErrors:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    const/4 v0, 0x0

    iput v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XSIErrorReporter;->fContextCount:I

    return-void
.end method
