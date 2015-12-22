.class public final Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$TrailingMiscDispatcher;
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
    name = "TrailingMiscDispatcher"
.end annotation


# instance fields
.field final synthetic this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;


# direct methods
.method protected constructor <init>(Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;)V
    .locals 0

    iput-object p1, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$TrailingMiscDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatch(Z)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    const/4 v4, 0x2

    const/4 v8, 0x0

    const/4 v3, 0x0

    :cond_0
    const/4 v6, 0x0

    :try_start_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$TrailingMiscDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget v0, v0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fScannerState:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    if-nez p1, :cond_0

    if-nez v6, :cond_0

    const/4 v0, 0x1

    :goto_1
    return v0

    :pswitch_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$TrailingMiscDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipSpaces()Z

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$TrailingMiscDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$TrailingMiscDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->setScannerState(I)V

    const/4 v6, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$TrailingMiscDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->setScannerState(I)V

    const/4 v6, 0x1

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$TrailingMiscDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget v1, v0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fMarkupDepth:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fMarkupDepth:I

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$TrailingMiscDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$TrailingMiscDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->setScannerState(I)V

    const/4 v6, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$TrailingMiscDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const/16 v1, 0x21

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$TrailingMiscDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->setScannerState(I)V

    const/4 v6, 0x1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$TrailingMiscDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$TrailingMiscDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    const-string v1, "MarkupNotRecognizedInMisc"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v6, 0x1

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$TrailingMiscDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$TrailingMiscDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->peekChar()I

    move-result v1

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->isValidNameStartChar(I)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$TrailingMiscDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    const-string v1, "MarkupNotRecognizedInMisc"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$TrailingMiscDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->scanStartElement()Z

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$TrailingMiscDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->setScannerState(I)V
    :try_end_0
    .catch Lmf/org/apache/xerces/impl/io/MalformedByteSequenceException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/CharConversionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_2

    goto/16 :goto_0

    :catch_0
    move-exception v5

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$TrailingMiscDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    invoke-virtual {v5}, Lmf/org/apache/xerces/impl/io/MalformedByteSequenceException;->getDomain()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5}, Lmf/org/apache/xerces/impl/io/MalformedByteSequenceException;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5}, Lmf/org/apache/xerces/impl/io/MalformedByteSequenceException;->getArguments()[Ljava/lang/Object;

    move-result-object v3

    invoke-virtual/range {v0 .. v5}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;SLjava/lang/Exception;)Ljava/lang/String;

    move v0, v8

    goto/16 :goto_1

    :cond_5
    :try_start_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$TrailingMiscDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$TrailingMiscDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->peekChar()I

    move-result v1

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->isValidNameStartHighSurrogate(I)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$TrailingMiscDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    const-string v1, "MarkupNotRecognizedInMisc"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$TrailingMiscDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->scanStartElement()Z

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$TrailingMiscDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->setScannerState(I)V
    :try_end_1
    .catch Lmf/org/apache/xerces/impl/io/MalformedByteSequenceException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/CharConversionException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_2

    goto/16 :goto_0

    :catch_1
    move-exception v5

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$TrailingMiscDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v1, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string v2, "CharConversionFailure"

    invoke-virtual/range {v0 .. v5}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;SLjava/lang/Exception;)Ljava/lang/String;

    move v0, v8

    goto/16 :goto_1

    :cond_6
    :try_start_2
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$TrailingMiscDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    const-string v1, "MarkupNotRecognizedInMisc"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catch Lmf/org/apache/xerces/impl/io/MalformedByteSequenceException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/CharConversionException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/EOFException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception v5

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$TrailingMiscDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget v0, v0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fMarkupDepth:I

    if-eqz v0, :cond_9

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$TrailingMiscDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    const-string v1, "PrematureEOF"

    invoke-virtual {v0, v1, v3}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v8

    goto/16 :goto_1

    :pswitch_3
    :try_start_3
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$TrailingMiscDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->scanPI()V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$TrailingMiscDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->setScannerState(I)V

    goto/16 :goto_0

    :pswitch_4
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$TrailingMiscDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const-string v1, "--"

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$TrailingMiscDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    const-string v1, "InvalidCommentStart"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_7
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$TrailingMiscDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->scanComment()V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$TrailingMiscDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->setScannerState(I)V

    goto/16 :goto_0

    :pswitch_5
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$TrailingMiscDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->peekChar()I

    move-result v7

    const/4 v0, -0x1

    if-ne v7, v0, :cond_8

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$TrailingMiscDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->setScannerState(I)V

    move v0, v8

    goto/16 :goto_1

    :cond_8
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$TrailingMiscDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    const-string v1, "ContentIllegalInTrailingMisc"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$TrailingMiscDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanChar()I

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$TrailingMiscDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->setScannerState(I)V

    goto/16 :goto_0

    :pswitch_6
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$TrailingMiscDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    const-string v1, "ReferenceIllegalInTrailingMisc"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$TrailingMiscDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->setScannerState(I)V
    :try_end_3
    .catch Lmf/org/apache/xerces/impl/io/MalformedByteSequenceException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/CharConversionException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/EOFException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_0

    :pswitch_7
    move v0, v8

    goto/16 :goto_1

    :cond_9
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$TrailingMiscDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->setScannerState(I)V

    move v0, v8

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_7
    .end packed-switch
.end method
