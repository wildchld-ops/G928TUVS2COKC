.class public final Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$XMLDeclDispatcher;
.super Ljava/lang/Object;
.source "XMLDocumentScannerImpl.java"

# interfaces
.implements Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$Dispatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x14
    name = "XMLDeclDispatcher"
.end annotation


# instance fields
.field final synthetic this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;


# direct methods
.method protected constructor <init>(Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;)V
    .locals 0

    iput-object p1, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$XMLDeclDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatch(Z)Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v0, 0x1

    const/4 v7, 0x0

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$XMLDeclDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->setScannerState(I)V

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$XMLDeclDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$XMLDeclDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v2, v2, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fPrologDispatcher:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$Dispatcher;

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->setDispatcher(Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$Dispatcher;)V

    :try_start_0
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$XMLDeclDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const-string v2, "<?xml"

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipString(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$XMLDeclDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget v2, v1, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fMarkupDepth:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fMarkupDepth:I

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$XMLDeclDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->peekChar()I

    move-result v1

    invoke-static {v1}, Lmf/org/apache/xerces/util/XMLChar;->isName(I)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$XMLDeclDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    # getter for: Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;
    invoke-static {v1}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->access$0(Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;)Lmf/org/apache/xerces/util/XMLStringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Lmf/org/apache/xerces/util/XMLStringBuffer;->clear()V

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$XMLDeclDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    # getter for: Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;
    invoke-static {v1}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->access$0(Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;)Lmf/org/apache/xerces/util/XMLStringBuffer;

    move-result-object v1

    const-string/jumbo v2, "xml"

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(Ljava/lang/String;)V

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$XMLDeclDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-boolean v1, v1, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fNamespaces:Z

    if-eqz v1, :cond_3

    :goto_0
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$XMLDeclDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->peekChar()I

    move-result v1

    invoke-static {v1}, Lmf/org/apache/xerces/util/XMLChar;->isNCName(I)Z

    move-result v1

    if-nez v1, :cond_1

    :goto_1
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$XMLDeclDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$XMLDeclDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    # getter for: Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;
    invoke-static {v2}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->access$0(Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;)Lmf/org/apache/xerces/util/XMLStringBuffer;

    move-result-object v2

    iget-object v2, v2, Lmf/org/apache/xerces/util/XMLStringBuffer;->ch:[C

    iget-object v8, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$XMLDeclDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    # getter for: Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;
    invoke-static {v8}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->access$0(Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;)Lmf/org/apache/xerces/util/XMLStringBuffer;

    move-result-object v8

    iget v8, v8, Lmf/org/apache/xerces/util/XMLStringBuffer;->offset:I

    iget-object v9, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$XMLDeclDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    # getter for: Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;
    invoke-static {v9}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->access$0(Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;)Lmf/org/apache/xerces/util/XMLStringBuffer;

    move-result-object v9

    iget v9, v9, Lmf/org/apache/xerces/util/XMLStringBuffer;->length:I

    invoke-virtual {v1, v2, v8, v9}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol([CII)Ljava/lang/String;

    move-result-object v6

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$XMLDeclDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$XMLDeclDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    # getter for: Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fString:Lmf/org/apache/xerces/xni/XMLString;
    invoke-static {v2}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->access$1(Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;)Lmf/org/apache/xerces/xni/XMLString;

    move-result-object v2

    invoke-virtual {v1, v6, v2}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->scanPIData(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLString;)V

    :cond_0
    :goto_2
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$XMLDeclDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/XMLEntityManager;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->mayReadChunks:Z

    :goto_3
    return v0

    :cond_1
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$XMLDeclDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    # getter for: Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;
    invoke-static {v1}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->access$0(Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;)Lmf/org/apache/xerces/util/XMLStringBuffer;

    move-result-object v1

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$XMLDeclDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v2, v2, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanChar()I

    move-result v2

    int-to-char v2, v2

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(C)V
    :try_end_0
    .catch Lmf/org/apache/xerces/impl/io/MalformedByteSequenceException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/CharConversionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    :catch_0
    move-exception v5

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$XMLDeclDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    invoke-virtual {v5}, Lmf/org/apache/xerces/impl/io/MalformedByteSequenceException;->getDomain()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5}, Lmf/org/apache/xerces/impl/io/MalformedByteSequenceException;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5}, Lmf/org/apache/xerces/impl/io/MalformedByteSequenceException;->getArguments()[Ljava/lang/Object;

    move-result-object v3

    invoke-virtual/range {v0 .. v5}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;SLjava/lang/Exception;)Ljava/lang/String;

    move v0, v7

    goto :goto_3

    :cond_2
    :try_start_1
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$XMLDeclDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    # getter for: Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;
    invoke-static {v1}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->access$0(Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;)Lmf/org/apache/xerces/util/XMLStringBuffer;

    move-result-object v1

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$XMLDeclDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v2, v2, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanChar()I

    move-result v2

    int-to-char v2, v2

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(C)V

    :cond_3
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$XMLDeclDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->peekChar()I

    move-result v1

    invoke-static {v1}, Lmf/org/apache/xerces/util/XMLChar;->isName(I)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$XMLDeclDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->scanXMLDeclOrTextDecl(Z)V
    :try_end_1
    .catch Lmf/org/apache/xerces/impl/io/MalformedByteSequenceException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/CharConversionException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_2

    :catch_1
    move-exception v5

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$XMLDeclDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v1, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string v2, "CharConversionFailure"

    invoke-virtual/range {v0 .. v5}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;SLjava/lang/Exception;)Ljava/lang/String;

    move v0, v7

    goto :goto_3

    :catch_2
    move-exception v5

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$XMLDeclDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    const-string v1, "PrematureEOF"

    invoke-virtual {v0, v1, v3}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v7

    goto :goto_3
.end method
