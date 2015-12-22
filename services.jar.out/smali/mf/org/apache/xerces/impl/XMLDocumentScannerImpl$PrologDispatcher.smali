.class public final Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;
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
    name = "PrologDispatcher"
.end annotation


# instance fields
.field final synthetic this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;


# direct methods
.method protected constructor <init>(Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;)V
    .locals 0

    iput-object p1, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

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

    const/4 v7, 0x0

    const/4 v0, 0x1

    const/4 v3, 0x0

    :cond_0
    const/4 v6, 0x0

    :try_start_0
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget v1, v1, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fScannerState:I

    packed-switch v1, :pswitch_data_0

    :goto_0
    :pswitch_0
    if-nez p1, :cond_0

    if-nez v6, :cond_0

    if-eqz p1, :cond_2

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanChar()I

    move-result v1

    const/16 v2, 0x3c

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    const-string v2, "RootElementRequired"

    const/4 v8, 0x0

    invoke-virtual {v1, v2, v8}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->setScannerState(I)V

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v2, v2, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fContentDispatcher:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$Dispatcher;

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->setDispatcher(Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$Dispatcher;)V

    :cond_2
    :goto_1
    return v0

    :pswitch_1
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipSpaces()Z

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const/16 v2, 0x3c

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->setScannerState(I)V

    const/4 v6, 0x1

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const/16 v2, 0x26

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->setScannerState(I)V

    const/4 v6, 0x1

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->setScannerState(I)V

    const/4 v6, 0x1

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget v2, v1, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fMarkupDepth:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fMarkupDepth:I

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const/16 v2, 0x21

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const/16 v2, 0x2d

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const/16 v2, 0x2d

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    const-string v2, "InvalidCommentStart"

    const/4 v8, 0x0

    invoke-virtual {v1, v2, v8}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_5
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->setScannerState(I)V

    const/4 v6, 0x1

    goto/16 :goto_0

    :cond_6
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const-string v2, "DOCTYPE"

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipString(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->setScannerState(I)V

    const/4 v6, 0x1

    goto/16 :goto_0

    :cond_7
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    const-string v2, "MarkupNotRecognizedInProlog"

    const/4 v8, 0x0

    invoke-virtual {v1, v2, v8}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Lmf/org/apache/xerces/impl/io/MalformedByteSequenceException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/CharConversionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_2

    goto/16 :goto_0

    :catch_0
    move-exception v5

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    invoke-virtual {v5}, Lmf/org/apache/xerces/impl/io/MalformedByteSequenceException;->getDomain()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5}, Lmf/org/apache/xerces/impl/io/MalformedByteSequenceException;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5}, Lmf/org/apache/xerces/impl/io/MalformedByteSequenceException;->getArguments()[Ljava/lang/Object;

    move-result-object v3

    invoke-virtual/range {v0 .. v5}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;SLjava/lang/Exception;)Ljava/lang/String;

    move v0, v7

    goto/16 :goto_1

    :cond_8
    :try_start_1
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v2, v2, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->peekChar()I

    move-result v2

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->isValidNameStartChar(I)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->setScannerState(I)V

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v2, v2, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fContentDispatcher:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$Dispatcher;

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->setDispatcher(Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$Dispatcher;)V
    :try_end_1
    .catch Lmf/org/apache/xerces/impl/io/MalformedByteSequenceException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/CharConversionException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_2

    goto/16 :goto_1

    :catch_1
    move-exception v5

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v1, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string v2, "CharConversionFailure"

    invoke-virtual/range {v0 .. v5}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;SLjava/lang/Exception;)Ljava/lang/String;

    move v0, v7

    goto/16 :goto_1

    :cond_9
    :try_start_2
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const/16 v2, 0x3f

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->setScannerState(I)V

    const/4 v6, 0x1

    goto/16 :goto_0

    :cond_a
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v2, v2, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->peekChar()I

    move-result v2

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->isValidNameStartHighSurrogate(I)Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->setScannerState(I)V

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v2, v2, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fContentDispatcher:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$Dispatcher;

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->setDispatcher(Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$Dispatcher;)V
    :try_end_2
    .catch Lmf/org/apache/xerces/impl/io/MalformedByteSequenceException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/CharConversionException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/EOFException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_1

    :catch_2
    move-exception v5

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    const-string v1, "PrematureEOF"

    invoke-virtual {v0, v1, v3}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v7

    goto/16 :goto_1

    :cond_b
    :try_start_3
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    const-string v2, "MarkupNotRecognizedInProlog"

    const/4 v8, 0x0

    invoke-virtual {v1, v2, v8}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :pswitch_3
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->scanComment()V

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->setScannerState(I)V

    goto/16 :goto_0

    :pswitch_4
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->scanPI()V

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->setScannerState(I)V

    goto/16 :goto_0

    :pswitch_5
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-boolean v1, v1, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fDisallowDoctype:Z

    if-eqz v1, :cond_c

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    const-string v2, "DoctypeNotAllowed"

    const/4 v8, 0x0

    invoke-virtual {v1, v2, v8}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_c
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-boolean v1, v1, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fSeenDoctypeDecl:Z

    if-eqz v1, :cond_d

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    const-string v2, "AlreadySeenDoctype"

    const/4 v8, 0x0

    invoke-virtual {v1, v2, v8}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_d
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fSeenDoctypeDecl:Z

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->scanDoctypeDecl()Z

    move-result v1

    if-eqz v1, :cond_e

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->setScannerState(I)V

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v2, v2, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fDTDDispatcher:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$Dispatcher;

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->setDispatcher(Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$Dispatcher;)V

    goto/16 :goto_1

    :cond_e
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fDoctypeSystemId:Ljava/lang/String;

    if-eqz v1, :cond_12

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-boolean v1, v1, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fStandalone:Z

    if-eqz v1, :cond_11

    move v1, v7

    :goto_2
    iput-boolean v1, v2, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fIsEntityDeclaredVC:Z

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-boolean v1, v1, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fValidation:Z

    if-nez v1, :cond_f

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-boolean v1, v1, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fLoadExternalDTD:Z

    if-eqz v1, :cond_16

    :cond_f
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fValidationManager:Lmf/org/apache/xerces/impl/validation/ValidationManager;

    if-eqz v1, :cond_10

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fValidationManager:Lmf/org/apache/xerces/impl/validation/ValidationManager;

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/validation/ValidationManager;->isCachedDTD()Z

    move-result v1

    if-nez v1, :cond_16

    :cond_10
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    const/16 v2, 0x12

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->setScannerState(I)V

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v2, v2, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fDTDDispatcher:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$Dispatcher;

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->setDispatcher(Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$Dispatcher;)V

    goto/16 :goto_1

    :cond_11
    move v1, v0

    goto :goto_2

    :cond_12
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    # getter for: Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fExternalSubsetSource:Lmf/org/apache/xerces/xni/parser/XMLInputSource;
    invoke-static {v1}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->access$2(Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;)Lmf/org/apache/xerces/xni/parser/XMLInputSource;

    move-result-object v1

    if-eqz v1, :cond_16

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-boolean v1, v1, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fStandalone:Z

    if-eqz v1, :cond_15

    move v1, v7

    :goto_3
    iput-boolean v1, v2, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fIsEntityDeclaredVC:Z

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-boolean v1, v1, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fValidation:Z

    if-nez v1, :cond_13

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-boolean v1, v1, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fLoadExternalDTD:Z

    if-eqz v1, :cond_16

    :cond_13
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fValidationManager:Lmf/org/apache/xerces/impl/validation/ValidationManager;

    if-eqz v1, :cond_14

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fValidationManager:Lmf/org/apache/xerces/impl/validation/ValidationManager;

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/validation/ValidationManager;->isCachedDTD()Z

    move-result v1

    if-nez v1, :cond_16

    :cond_14
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fDTDScanner:Lmf/org/apache/xerces/xni/parser/XMLDTDScanner;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    # getter for: Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fExternalSubsetSource:Lmf/org/apache/xerces/xni/parser/XMLInputSource;
    invoke-static {v2}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->access$2(Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;)Lmf/org/apache/xerces/xni/parser/XMLInputSource;

    move-result-object v2

    invoke-interface {v1, v2}, Lmf/org/apache/xerces/xni/parser/XMLDTDScanner;->setInputSource(Lmf/org/apache/xerces/xni/parser/XMLInputSource;)V

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->access$3(Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;Lmf/org/apache/xerces/xni/parser/XMLInputSource;)V

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    const/16 v2, 0x13

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->setScannerState(I)V

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v2, v2, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fDTDDispatcher:Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$Dispatcher;

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->setDispatcher(Lmf/org/apache/xerces/impl/XMLDocumentFragmentScannerImpl$Dispatcher;)V

    goto/16 :goto_1

    :cond_15
    move v1, v0

    goto :goto_3

    :cond_16
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fDTDScanner:Lmf/org/apache/xerces/xni/parser/XMLDTDScanner;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lmf/org/apache/xerces/xni/parser/XMLDTDScanner;->setInputSource(Lmf/org/apache/xerces/xni/parser/XMLInputSource;)V

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->setScannerState(I)V

    goto/16 :goto_0

    :pswitch_6
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    const-string v2, "ContentIllegalInProlog"

    const/4 v8, 0x0

    invoke-virtual {v1, v2, v8}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanChar()I

    :pswitch_7
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->this$0:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    const-string v2, "ReferenceIllegalInProlog"

    const/4 v8, 0x0

    invoke-virtual {v1, v2, v8}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catch Lmf/org/apache/xerces/impl/io/MalformedByteSequenceException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/CharConversionException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/EOFException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_1
        :pswitch_0
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method
