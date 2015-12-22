.class public Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;
.super Ljava/lang/Object;
.source "XMLDocumentFragmentScannerImpl.java"

# interfaces
.implements Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$Dispatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "FragmentContentDispatcher"
.end annotation


# instance fields
.field final synthetic this$0:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;


# direct methods
.method protected constructor <init>(Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;)V
    .locals 0

    iput-object p1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;

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

    const/4 v4, 0x2

    const/4 v9, 0x0

    const/4 v3, 0x0

    const/4 v0, 0x1

    :cond_0
    const/4 v6, 0x0

    :try_start_0
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;

    iget v1, v1, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fScannerState:I

    packed-switch v1, :pswitch_data_0

    :cond_1
    :goto_0
    :pswitch_0
    if-nez p1, :cond_0

    if-nez v6, :cond_0

    :cond_2
    :goto_1
    return v0

    :pswitch_1
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const/16 v2, 0x3c

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->setScannerState(I)V

    const/4 v6, 0x1

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const/16 v2, 0x26

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->setScannerState(I)V

    const/4 v6, 0x1

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->scanContent()I

    move-result v7

    const/16 v1, 0x3c

    if-ne v7, v1, :cond_5

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanChar()I

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->setScannerState(I)V
    :try_end_0
    .catch Lmf/org/apache/xerces/impl/io/MalformedByteSequenceException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/CharConversionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    :catch_0
    move-exception v5

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    invoke-virtual {v5}, Lmf/org/apache/xerces/impl/io/MalformedByteSequenceException;->getDomain()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5}, Lmf/org/apache/xerces/impl/io/MalformedByteSequenceException;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5}, Lmf/org/apache/xerces/impl/io/MalformedByteSequenceException;->getArguments()[Ljava/lang/Object;

    move-result-object v3

    invoke-virtual/range {v0 .. v5}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;SLjava/lang/Exception;)Ljava/lang/String;

    move v0, v9

    goto :goto_1

    :cond_5
    const/16 v1, 0x26

    if-ne v7, v1, :cond_6

    :try_start_1
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanChar()I

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->setScannerState(I)V
    :try_end_1
    .catch Lmf/org/apache/xerces/impl/io/MalformedByteSequenceException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/CharConversionException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    :catch_1
    move-exception v5

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v1, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string v2, "CharConversionFailure"

    invoke-virtual/range {v0 .. v5}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;SLjava/lang/Exception;)Ljava/lang/String;

    move v0, v9

    goto :goto_1

    :cond_6
    const/4 v1, -0x1

    if-eq v7, v1, :cond_7

    :try_start_2
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;

    invoke-virtual {v1, v7}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->isInvalidLiteral(I)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-static {v7}, Lmf/org/apache/xerces/util/XMLChar;->isHighSurrogate(I)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;

    # getter for: Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;
    invoke-static {v1}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->access$0(Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;)Lmf/org/apache/xerces/util/XMLStringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Lmf/org/apache/xerces/util/XMLStringBuffer;->clear()V

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;

    # getter for: Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;
    invoke-static {v2}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->access$0(Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;)Lmf/org/apache/xerces/util/XMLStringBuffer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->scanSurrogates(Lmf/org/apache/xerces/util/XMLStringBuffer;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;

    # getter for: Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;
    invoke-static {v2}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->access$0(Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;)Lmf/org/apache/xerces/util/XMLStringBuffer;

    move-result-object v2

    const/4 v10, 0x0

    invoke-interface {v1, v2, v10}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->characters(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V

    :cond_7
    :goto_2
    if-nez p1, :cond_4

    goto/16 :goto_0

    :cond_8
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;

    const-string v2, "InvalidCharInContent"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const/16 v12, 0x10

    invoke-static {v7, v12}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v1, v2, v10}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanChar()I
    :try_end_2
    .catch Lmf/org/apache/xerces/impl/io/MalformedByteSequenceException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/CharConversionException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/EOFException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v5

    invoke-virtual {p0, v5}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;->endOfFileHook(Ljava/io/EOFException;)V

    move v0, v9

    goto/16 :goto_1

    :pswitch_2
    :try_start_3
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;

    iget v2, v1, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fMarkupDepth:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fMarkupDepth:I

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->scanEndElement()I

    move-result v1

    if-nez v1, :cond_9

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;->elementDepthIsZeroHook()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_9
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->setScannerState(I)V

    goto/16 :goto_0

    :cond_a
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;

    iget-object v2, v2, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->peekChar()I

    move-result v2

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->isValidNameStartChar(I)Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->scanStartElement()Z

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->setScannerState(I)V

    goto/16 :goto_0

    :cond_b
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const/16 v2, 0x21

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v1

    if-eqz v1, :cond_f

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const/16 v2, 0x2d

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v1

    if-eqz v1, :cond_d

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const/16 v2, 0x2d

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v1

    if-nez v1, :cond_c

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;

    const-string v2, "InvalidCommentStart"

    const/4 v10, 0x0

    invoke-virtual {v1, v2, v10}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_c
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->setScannerState(I)V

    const/4 v6, 0x1

    goto/16 :goto_0

    :cond_d
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const-string v2, "[CDATA["

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipString(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;

    const/16 v2, 0xf

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->setScannerState(I)V

    const/4 v6, 0x1

    goto/16 :goto_0

    :cond_e
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;->scanForDoctypeHook()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;

    const-string v2, "MarkupNotRecognizedInContent"

    const/4 v10, 0x0

    invoke-virtual {v1, v2, v10}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_f
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const/16 v2, 0x3f

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v1

    if-eqz v1, :cond_10

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->setScannerState(I)V

    const/4 v6, 0x1

    goto/16 :goto_0

    :cond_10
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;

    iget-object v2, v2, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->peekChar()I

    move-result v2

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->isValidNameStartHighSurrogate(I)Z

    move-result v1

    if-eqz v1, :cond_11

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->scanStartElement()Z

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->setScannerState(I)V

    goto/16 :goto_0

    :cond_11
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;

    const-string v2, "MarkupNotRecognizedInContent"

    const/4 v10, 0x0

    invoke-virtual {v1, v2, v10}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->setScannerState(I)V

    goto/16 :goto_0

    :pswitch_3
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->scanComment()V

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->setScannerState(I)V

    goto/16 :goto_0

    :pswitch_4
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->scanPI()V

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->setScannerState(I)V

    goto/16 :goto_0

    :pswitch_5
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;

    invoke-virtual {v1, p1}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->scanCDATASection(Z)Z

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->setScannerState(I)V

    goto/16 :goto_0

    :pswitch_6
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;

    iget v2, v1, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fMarkupDepth:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fMarkupDepth:I

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->setScannerState(I)V

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const/16 v2, 0x23

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v1

    if-eqz v1, :cond_12

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->scanCharReference()V

    goto/16 :goto_0

    :cond_12
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->scanEntityReference()V

    goto/16 :goto_0

    :pswitch_7
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const-string v2, "<?xml"

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipString(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;

    iget v2, v1, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fMarkupDepth:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fMarkupDepth:I

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;

    iget-object v2, v2, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->peekChar()I

    move-result v2

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->isValidNameChar(I)Z

    move-result v1

    if-eqz v1, :cond_17

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;

    # getter for: Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;
    invoke-static {v1}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->access$0(Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;)Lmf/org/apache/xerces/util/XMLStringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Lmf/org/apache/xerces/util/XMLStringBuffer;->clear()V

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;

    # getter for: Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;
    invoke-static {v1}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->access$0(Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;)Lmf/org/apache/xerces/util/XMLStringBuffer;

    move-result-object v1

    const-string/jumbo v2, "xml"

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(Ljava/lang/String;)V

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;

    iget-boolean v1, v1, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fNamespaces:Z

    if-eqz v1, :cond_16

    :goto_3
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;

    iget-object v2, v2, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->peekChar()I

    move-result v2

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->isValidNCName(I)Z

    move-result v1

    if-nez v1, :cond_14

    :goto_4
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;

    # getter for: Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;
    invoke-static {v2}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->access$0(Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;)Lmf/org/apache/xerces/util/XMLStringBuffer;

    move-result-object v2

    iget-object v2, v2, Lmf/org/apache/xerces/util/XMLStringBuffer;->ch:[C

    iget-object v10, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;

    # getter for: Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;
    invoke-static {v10}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->access$0(Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;)Lmf/org/apache/xerces/util/XMLStringBuffer;

    move-result-object v10

    iget v10, v10, Lmf/org/apache/xerces/util/XMLStringBuffer;->offset:I

    iget-object v11, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;

    # getter for: Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;
    invoke-static {v11}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->access$0(Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;)Lmf/org/apache/xerces/util/XMLStringBuffer;

    move-result-object v11

    iget v11, v11, Lmf/org/apache/xerces/util/XMLStringBuffer;->length:I

    invoke-virtual {v1, v2, v10, v11}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol([CII)Ljava/lang/String;

    move-result-object v8

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;

    iget-object v2, v2, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fTempString:Lmf/org/apache/xerces/xni/XMLString;

    invoke-virtual {v1, v8, v2}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->scanPIData(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLString;)V

    :cond_13
    :goto_5
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/XMLEntityManager;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->mayReadChunks:Z

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->setScannerState(I)V

    goto/16 :goto_0

    :cond_14
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;

    # getter for: Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;
    invoke-static {v1}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->access$0(Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;)Lmf/org/apache/xerces/util/XMLStringBuffer;

    move-result-object v1

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;

    iget-object v2, v2, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanChar()I

    move-result v2

    int-to-char v2, v2

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(C)V

    goto :goto_3

    :cond_15
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;

    # getter for: Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;
    invoke-static {v1}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->access$0(Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;)Lmf/org/apache/xerces/util/XMLStringBuffer;

    move-result-object v1

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;

    iget-object v2, v2, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanChar()I

    move-result v2

    int-to-char v2, v2

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(C)V

    :cond_16
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;

    iget-object v2, v2, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->peekChar()I

    move-result v2

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->isValidNameChar(I)Z

    move-result v1

    if-nez v1, :cond_15

    goto :goto_4

    :cond_17
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->scanXMLDeclOrTextDecl(Z)V

    goto :goto_5

    :pswitch_8
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;->scanRootElementHook()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->setScannerState(I)V

    goto/16 :goto_0

    :pswitch_9
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;

    const-string v2, "DoctypeIllegalInContent"

    const/4 v10, 0x0

    invoke-virtual {v1, v2, v10}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->setScannerState(I)V
    :try_end_3
    .catch Lmf/org/apache/xerces/impl/io/MalformedByteSequenceException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/CharConversionException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/EOFException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_9
        :pswitch_0
        :pswitch_8
        :pswitch_1
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_7
    .end packed-switch
.end method

.method protected elementDepthIsZeroHook()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method protected endOfFileHook(Ljava/io/EOFException;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;

    iget v0, v0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fMarkupDepth:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;

    const-string v1, "PrematureEOF"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method protected scanForDoctypeHook()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method protected scanRootElementHook()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method
