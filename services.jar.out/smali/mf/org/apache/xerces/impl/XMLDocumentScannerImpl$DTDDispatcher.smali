.class public final Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$DTDDispatcher;
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
    name = "DTDDispatcher"
.end annotation


# instance fields
.field final synthetic this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;


# direct methods
.method protected constructor <init>(Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;)V
    .locals 0

    iput-object p1, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$DTDDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatch(Z)Z
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v0, 0x1

    const/4 v11, 0x0

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$DTDDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/XMLEntityManager;->setEntityHandler(Lmf/org/apache/xerces/impl/XMLEntityHandler;)V

    :cond_0
    const/4 v6, 0x0

    :try_start_0
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$DTDDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget v1, v1, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fScannerState:I

    packed-switch v1, :pswitch_data_0

    new-instance v0, Lmf/org/apache/xerces/xni/XNIException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DTDDispatcher#dispatch: scanner state="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$DTDDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget v2, v2, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fScannerState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$DTDDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$DTDDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget v3, v3, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fScannerState:I

    invoke-virtual {v2, v3}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->getScannerStateName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lmf/org/apache/xerces/xni/XNIException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lmf/org/apache/xerces/impl/io/MalformedByteSequenceException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/CharConversionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catch_0
    move-exception v5

    :try_start_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$DTDDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    invoke-virtual {v5}, Lmf/org/apache/xerces/impl/io/MalformedByteSequenceException;->getDomain()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5}, Lmf/org/apache/xerces/impl/io/MalformedByteSequenceException;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5}, Lmf/org/apache/xerces/impl/io/MalformedByteSequenceException;->getArguments()[Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual/range {v0 .. v5}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;SLjava/lang/Exception;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$DTDDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$DTDDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/XMLEntityManager;->setEntityHandler(Lmf/org/apache/xerces/impl/XMLEntityHandler;)V

    move v0, v11

    :goto_0
    return v0

    :pswitch_0
    const/4 v7, 0x1

    :try_start_2
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$DTDDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-boolean v1, v1, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fValidation:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$DTDDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-boolean v1, v1, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fLoadExternalDTD:Z

    if-eqz v1, :cond_6

    :cond_1
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$DTDDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fValidationManager:Lmf/org/apache/xerces/impl/validation/ValidationManager;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$DTDDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fValidationManager:Lmf/org/apache/xerces/impl/validation/ValidationManager;

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/validation/ValidationManager;->isCachedDTD()Z

    move-result v1

    if-nez v1, :cond_6

    :cond_2
    move v9, v0

    :goto_1
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$DTDDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v2, v1, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fDTDScanner:Lmf/org/apache/xerces/xni/parser/XMLDTDScanner;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$DTDDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-boolean v3, v1, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fStandalone:Z

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$DTDDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-boolean v1, v1, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fHasExternalDTD:Z

    if-eqz v1, :cond_7

    if-eqz v9, :cond_7

    move v1, v0

    :goto_2
    invoke-interface {v2, v7, v3, v1}, Lmf/org/apache/xerces/xni/parser/XMLDTDScanner;->scanDTDInternalSubset(ZZZ)Z

    move-result v8

    if-nez v8, :cond_5

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$DTDDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$DTDDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    const-string v2, "EXPECTED_SQUARE_BRACKET_TO_CLOSE_INTERNAL_SUBSET"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$DTDDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipSpaces()Z

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$DTDDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const/16 v2, 0x3e

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$DTDDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    const-string v2, "DoctypedeclUnterminated"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v12, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$DTDDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v12, v12, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fDoctypeName:Ljava/lang/String;

    aput-object v12, v3, v4

    invoke-virtual {v1, v2, v3}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$DTDDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget v2, v1, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fMarkupDepth:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fMarkupDepth:I

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$DTDDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fDoctypeSystemId:Ljava/lang/String;

    if-eqz v1, :cond_9

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$DTDDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$DTDDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-boolean v1, v1, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fStandalone:Z

    if-eqz v1, :cond_8

    move v1, v11

    :goto_3
    iput-boolean v1, v2, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fIsEntityDeclaredVC:Z

    if-eqz v9, :cond_c

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$DTDDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    const/16 v2, 0x12

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->setScannerState(I)V
    :try_end_2
    .catch Lmf/org/apache/xerces/impl/io/MalformedByteSequenceException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/CharConversionException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/EOFException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_5
    :goto_4
    if-nez p1, :cond_0

    if-nez v6, :cond_0

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$DTDDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$DTDDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/XMLEntityManager;->setEntityHandler(Lmf/org/apache/xerces/impl/XMLEntityHandler;)V

    goto/16 :goto_0

    :cond_6
    move v9, v11

    goto/16 :goto_1

    :cond_7
    move v1, v11

    goto :goto_2

    :cond_8
    move v1, v0

    goto :goto_3

    :cond_9
    :try_start_3
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$DTDDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    # getter for: Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fExternalSubsetSource:Lmf/org/apache/xerces/xni/parser/XMLInputSource;
    invoke-static {v1}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->access$2(Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;)Lmf/org/apache/xerces/xni/parser/XMLInputSource;

    move-result-object v1

    if-eqz v1, :cond_b

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$DTDDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$DTDDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-boolean v1, v1, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fStandalone:Z

    if-eqz v1, :cond_a

    move v1, v11

    :goto_5
    iput-boolean v1, v2, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fIsEntityDeclaredVC:Z

    if-eqz v9, :cond_c

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$DTDDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fDTDScanner:Lmf/org/apache/xerces/xni/parser/XMLDTDScanner;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$DTDDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    # getter for: Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fExternalSubsetSource:Lmf/org/apache/xerces/xni/parser/XMLInputSource;
    invoke-static {v2}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->access$2(Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;)Lmf/org/apache/xerces/xni/parser/XMLInputSource;

    move-result-object v2

    invoke-interface {v1, v2}, Lmf/org/apache/xerces/xni/parser/XMLDTDScanner;->setInputSource(Lmf/org/apache/xerces/xni/parser/XMLInputSource;)V

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$DTDDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->access$3(Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;Lmf/org/apache/xerces/xni/parser/XMLInputSource;)V

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$DTDDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    const/16 v2, 0x13

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->setScannerState(I)V
    :try_end_3
    .catch Lmf/org/apache/xerces/impl/io/MalformedByteSequenceException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/CharConversionException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/EOFException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_4

    :catch_1
    move-exception v5

    :try_start_4
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$DTDDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v1, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string v2, "CharConversionFailure"

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-virtual/range {v0 .. v5}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;SLjava/lang/Exception;)Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$DTDDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$DTDDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/XMLEntityManager;->setEntityHandler(Lmf/org/apache/xerces/impl/XMLEntityHandler;)V

    move v0, v11

    goto/16 :goto_0

    :cond_a
    move v1, v0

    goto :goto_5

    :cond_b
    :try_start_5
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$DTDDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$DTDDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/XMLEntityManager;->hasPEReferences()Z

    move-result v1

    if-eqz v1, :cond_d

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$DTDDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-boolean v1, v1, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fStandalone:Z

    if-nez v1, :cond_d

    move v1, v0

    :goto_6
    iput-boolean v1, v2, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fIsEntityDeclaredVC:Z

    :cond_c
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$DTDDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->setScannerState(I)V

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$DTDDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$DTDDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v2, v2, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fPrologDispatcher:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$Dispatcher;

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->setDispatcher(Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$Dispatcher;)V

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$DTDDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$DTDDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/XMLEntityManager;->setEntityHandler(Lmf/org/apache/xerces/impl/XMLEntityHandler;)V
    :try_end_5
    .catch Lmf/org/apache/xerces/impl/io/MalformedByteSequenceException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/CharConversionException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/EOFException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$DTDDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$DTDDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/XMLEntityManager;->setEntityHandler(Lmf/org/apache/xerces/impl/XMLEntityHandler;)V

    goto/16 :goto_0

    :cond_d
    move v1, v11

    goto :goto_6

    :pswitch_1
    :try_start_6
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$DTDDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    # getter for: Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fDTDDescription:Lmf/org/apache/xerces/impl/dtd/XMLDTDDescription;
    invoke-static {v1}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->access$4(Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;)Lmf/org/apache/xerces/impl/dtd/XMLDTDDescription;

    move-result-object v1

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$DTDDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v2, v2, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fDoctypePublicId:Ljava/lang/String;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$DTDDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v3, v3, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fDoctypeSystemId:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v12, 0x0

    invoke-virtual {v1, v2, v3, v4, v12}, Lmf/org/apache/xerces/impl/dtd/XMLDTDDescription;->setValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$DTDDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    # getter for: Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fDTDDescription:Lmf/org/apache/xerces/impl/dtd/XMLDTDDescription;
    invoke-static {v1}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->access$4(Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;)Lmf/org/apache/xerces/impl/dtd/XMLDTDDescription;

    move-result-object v1

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$DTDDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v2, v2, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fDoctypeName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/dtd/XMLDTDDescription;->setRootName(Ljava/lang/String;)V

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$DTDDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$DTDDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    # getter for: Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fDTDDescription:Lmf/org/apache/xerces/impl/dtd/XMLDTDDescription;
    invoke-static {v2}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->access$4(Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;)Lmf/org/apache/xerces/impl/dtd/XMLDTDDescription;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/XMLEntityManager;->resolveEntity(Lmf/org/apache/xerces/xni/XMLResourceIdentifier;)Lmf/org/apache/xerces/xni/parser/XMLInputSource;

    move-result-object v10

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$DTDDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fDTDScanner:Lmf/org/apache/xerces/xni/parser/XMLDTDScanner;

    invoke-interface {v1, v10}, Lmf/org/apache/xerces/xni/parser/XMLDTDScanner;->setInputSource(Lmf/org/apache/xerces/xni/parser/XMLInputSource;)V

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$DTDDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    const/16 v2, 0x13

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->setScannerState(I)V

    const/4 v6, 0x1

    goto/16 :goto_4

    :pswitch_2
    const/4 v7, 0x1

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$DTDDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fDTDScanner:Lmf/org/apache/xerces/xni/parser/XMLDTDScanner;

    invoke-interface {v1, v7}, Lmf/org/apache/xerces/xni/parser/XMLDTDScanner;->scanDTDExternalSubset(Z)Z

    move-result v8

    if-nez v8, :cond_5

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$DTDDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->setScannerState(I)V

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$DTDDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$DTDDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v2, v2, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fPrologDispatcher:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$Dispatcher;

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->setDispatcher(Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$Dispatcher;)V

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$DTDDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$DTDDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/XMLEntityManager;->setEntityHandler(Lmf/org/apache/xerces/impl/XMLEntityHandler;)V
    :try_end_6
    .catch Lmf/org/apache/xerces/impl/io/MalformedByteSequenceException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/CharConversionException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/io/EOFException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$DTDDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$DTDDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/XMLEntityManager;->setEntityHandler(Lmf/org/apache/xerces/impl/XMLEntityHandler;)V

    goto/16 :goto_0

    :catch_2
    move-exception v5

    :try_start_7
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$DTDDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    const-string v1, "PrematureEOF"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$DTDDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$DTDDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/XMLEntityManager;->setEntityHandler(Lmf/org/apache/xerces/impl/XMLEntityHandler;)V

    move v0, v11

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$DTDDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$DTDDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/XMLEntityManager;->setEntityHandler(Lmf/org/apache/xerces/impl/XMLEntityHandler;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
