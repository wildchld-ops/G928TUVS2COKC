.class public final Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl$NSContentDispatcher;
.super Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$ContentDispatcher;
.source "XMLNSDocumentScannerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x14
    name = "NSContentDispatcher"
.end annotation


# instance fields
.field final synthetic this$0:Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;


# direct methods
.method protected constructor <init>(Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;)V
    .locals 0

    iput-object p1, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl$NSContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;

    invoke-direct {p0, p1}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$ContentDispatcher;-><init>(Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;)V

    return-void
.end method

.method private reconfigurePipeline()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl$NSContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;

    # getter for: Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fDTDValidator:Lmf/org/apache/xerces/impl/dtd/XMLDTDValidatorFilter;
    invoke-static {v2}, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->access$0(Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;)Lmf/org/apache/xerces/impl/dtd/XMLDTDValidatorFilter;

    move-result-object v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl$NSContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;

    iput-boolean v3, v2, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fBindNamespaces:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl$NSContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;

    # getter for: Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fDTDValidator:Lmf/org/apache/xerces/impl/dtd/XMLDTDValidatorFilter;
    invoke-static {v2}, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->access$0(Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;)Lmf/org/apache/xerces/impl/dtd/XMLDTDValidatorFilter;

    move-result-object v2

    invoke-interface {v2}, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidatorFilter;->hasGrammar()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl$NSContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;

    iput-boolean v3, v2, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fBindNamespaces:Z

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl$NSContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl$NSContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;

    # getter for: Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fDTDValidator:Lmf/org/apache/xerces/impl/dtd/XMLDTDValidatorFilter;
    invoke-static {v3}, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->access$0(Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;)Lmf/org/apache/xerces/impl/dtd/XMLDTDValidatorFilter;

    move-result-object v3

    invoke-interface {v3}, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidatorFilter;->validate()Z

    move-result v3

    iput-boolean v3, v2, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fPerformValidation:Z

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl$NSContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;

    # getter for: Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fDTDValidator:Lmf/org/apache/xerces/impl/dtd/XMLDTDValidatorFilter;
    invoke-static {v2}, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->access$0(Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;)Lmf/org/apache/xerces/impl/dtd/XMLDTDValidatorFilter;

    move-result-object v2

    invoke-interface {v2}, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidatorFilter;->getDocumentSource()Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;

    move-result-object v1

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl$NSContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;

    # getter for: Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fDTDValidator:Lmf/org/apache/xerces/impl/dtd/XMLDTDValidatorFilter;
    invoke-static {v2}, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->access$0(Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;)Lmf/org/apache/xerces/impl/dtd/XMLDTDValidatorFilter;

    move-result-object v2

    invoke-interface {v2}, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidatorFilter;->getDocumentHandler()Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    move-result-object v0

    invoke-interface {v1, v0}, Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;->setDocumentHandler(Lmf/org/apache/xerces/xni/XMLDocumentHandler;)V

    if-eqz v0, :cond_2

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->setDocumentSource(Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;)V

    :cond_2
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl$NSContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;

    # getter for: Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fDTDValidator:Lmf/org/apache/xerces/impl/dtd/XMLDTDValidatorFilter;
    invoke-static {v2}, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->access$0(Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;)Lmf/org/apache/xerces/impl/dtd/XMLDTDValidatorFilter;

    move-result-object v2

    invoke-interface {v2, v4}, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidatorFilter;->setDocumentSource(Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;)V

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl$NSContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;

    # getter for: Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fDTDValidator:Lmf/org/apache/xerces/impl/dtd/XMLDTDValidatorFilter;
    invoke-static {v2}, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->access$0(Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;)Lmf/org/apache/xerces/impl/dtd/XMLDTDValidatorFilter;

    move-result-object v2

    invoke-interface {v2, v4}, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidatorFilter;->setDocumentHandler(Lmf/org/apache/xerces/xni/XMLDocumentHandler;)V

    goto :goto_0
.end method


# virtual methods
.method protected scanRootElementHook()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    const/16 v2, 0xc

    const/4 v0, 0x1

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl$NSContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fExternalSubsetResolver:Lmf/org/apache/xerces/impl/ExternalSubsetResolver;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl$NSContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;

    iget-boolean v1, v1, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fSeenDoctypeDecl:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl$NSContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;

    iget-boolean v1, v1, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fDisallowDoctype:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl$NSContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;

    iget-boolean v1, v1, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fValidation:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl$NSContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;

    iget-boolean v1, v1, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fLoadExternalDTD:Z

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl$NSContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->scanStartElementName()V

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl$NSContentDispatcher;->resolveExternalSubsetAndRead()V

    invoke-direct {p0}, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl$NSContentDispatcher;->reconfigurePipeline()V

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl$NSContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->scanStartElementAfterName()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl$NSContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->setScannerState(I)V

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl$NSContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl$NSContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;

    iget-object v2, v2, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fTrailingMiscDispatcher:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$Dispatcher;

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->setDispatcher(Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$Dispatcher;)V

    :goto_0
    return v0

    :cond_1
    invoke-direct {p0}, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl$NSContentDispatcher;->reconfigurePipeline()V

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl$NSContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->scanStartElement()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl$NSContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->setScannerState(I)V

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl$NSContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl$NSContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;

    iget-object v2, v2, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->fTrailingMiscDispatcher:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$Dispatcher;

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->setDispatcher(Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$Dispatcher;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
