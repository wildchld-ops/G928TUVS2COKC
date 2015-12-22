.class public Lmf/org/apache/xml/serialize/IndentPrinter;
.super Lmf/org/apache/xml/serialize/Printer;
.source "IndentPrinter.java"


# instance fields
.field private _line:Ljava/lang/StringBuffer;

.field private _nextIndent:I

.field private _spaces:I

.field private _text:Ljava/lang/StringBuffer;

.field private _thisIndent:I


# direct methods
.method public constructor <init>(Ljava/io/Writer;Lmf/org/apache/xml/serialize/OutputFormat;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2}, Lmf/org/apache/xml/serialize/Printer;-><init>(Ljava/io/Writer;Lmf/org/apache/xml/serialize/OutputFormat;)V

    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    iput-object v0, p0, Lmf/org/apache/xml/serialize/IndentPrinter;->_line:Ljava/lang/StringBuffer;

    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    iput-object v0, p0, Lmf/org/apache/xml/serialize/IndentPrinter;->_text:Ljava/lang/StringBuffer;

    iput v2, p0, Lmf/org/apache/xml/serialize/IndentPrinter;->_spaces:I

    iput v2, p0, Lmf/org/apache/xml/serialize/IndentPrinter;->_nextIndent:I

    iput v2, p0, Lmf/org/apache/xml/serialize/IndentPrinter;->_thisIndent:I

    return-void
.end method


# virtual methods
.method public breakLine()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmf/org/apache/xml/serialize/IndentPrinter;->breakLine(Z)V

    return-void
.end method

.method public breakLine(Z)V
    .locals 3

    iget-object v1, p0, Lmf/org/apache/xml/serialize/IndentPrinter;->_text:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-lez v1, :cond_0

    :goto_0
    iget v1, p0, Lmf/org/apache/xml/serialize/IndentPrinter;->_spaces:I

    if-gtz v1, :cond_2

    iget-object v1, p0, Lmf/org/apache/xml/serialize/IndentPrinter;->_line:Ljava/lang/StringBuffer;

    iget-object v2, p0, Lmf/org/apache/xml/serialize/IndentPrinter;->_text:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuffer;

    const/16 v2, 0x14

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    iput-object v1, p0, Lmf/org/apache/xml/serialize/IndentPrinter;->_text:Ljava/lang/StringBuffer;

    :cond_0
    invoke-virtual {p0, p1}, Lmf/org/apache/xml/serialize/IndentPrinter;->flushLine(Z)V

    :try_start_0
    iget-object v1, p0, Lmf/org/apache/xml/serialize/IndentPrinter;->_writer:Ljava/io/Writer;

    iget-object v2, p0, Lmf/org/apache/xml/serialize/IndentPrinter;->_format:Lmf/org/apache/xml/serialize/OutputFormat;

    invoke-virtual {v2}, Lmf/org/apache/xml/serialize/OutputFormat;->getLineSeparator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget-object v1, p0, Lmf/org/apache/xml/serialize/IndentPrinter;->_line:Ljava/lang/StringBuffer;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget v1, p0, Lmf/org/apache/xml/serialize/IndentPrinter;->_spaces:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lmf/org/apache/xml/serialize/IndentPrinter;->_spaces:I

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lmf/org/apache/xml/serialize/IndentPrinter;->_exception:Ljava/io/IOException;

    if-nez v1, :cond_1

    iput-object v0, p0, Lmf/org/apache/xml/serialize/IndentPrinter;->_exception:Ljava/io/IOException;

    goto :goto_1
.end method

.method public enterDTD()V
    .locals 2

    iget-object v0, p0, Lmf/org/apache/xml/serialize/IndentPrinter;->_dtdWriter:Ljava/io/StringWriter;

    if-nez v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xml/serialize/IndentPrinter;->_line:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lmf/org/apache/xml/serialize/IndentPrinter;->_text:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    iput-object v0, p0, Lmf/org/apache/xml/serialize/IndentPrinter;->_text:Ljava/lang/StringBuffer;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmf/org/apache/xml/serialize/IndentPrinter;->flushLine(Z)V

    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xml/serialize/IndentPrinter;->_dtdWriter:Ljava/io/StringWriter;

    iget-object v0, p0, Lmf/org/apache/xml/serialize/IndentPrinter;->_writer:Ljava/io/Writer;

    iput-object v0, p0, Lmf/org/apache/xml/serialize/IndentPrinter;->_docWriter:Ljava/io/Writer;

    iget-object v0, p0, Lmf/org/apache/xml/serialize/IndentPrinter;->_dtdWriter:Ljava/io/StringWriter;

    iput-object v0, p0, Lmf/org/apache/xml/serialize/IndentPrinter;->_writer:Ljava/io/Writer;

    :cond_0
    return-void
.end method

.method public flush()V
    .locals 2

    iget-object v1, p0, Lmf/org/apache/xml/serialize/IndentPrinter;->_line:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-gtz v1, :cond_0

    iget-object v1, p0, Lmf/org/apache/xml/serialize/IndentPrinter;->_text:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-lez v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/IndentPrinter;->breakLine()V

    :cond_1
    :try_start_0
    iget-object v1, p0, Lmf/org/apache/xml/serialize/IndentPrinter;->_writer:Ljava/io/Writer;

    invoke-virtual {v1}, Ljava/io/Writer;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lmf/org/apache/xml/serialize/IndentPrinter;->_exception:Ljava/io/IOException;

    if-nez v1, :cond_2

    iput-object v0, p0, Lmf/org/apache/xml/serialize/IndentPrinter;->_exception:Ljava/io/IOException;

    goto :goto_0
.end method

.method public flushLine(Z)V
    .locals 4

    iget-object v2, p0, Lmf/org/apache/xml/serialize/IndentPrinter;->_line:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    if-lez v2, :cond_2

    :try_start_0
    iget-object v2, p0, Lmf/org/apache/xml/serialize/IndentPrinter;->_format:Lmf/org/apache/xml/serialize/OutputFormat;

    invoke-virtual {v2}, Lmf/org/apache/xml/serialize/OutputFormat;->getIndenting()Z

    move-result v2

    if-eqz v2, :cond_1

    if-nez p1, :cond_1

    iget v1, p0, Lmf/org/apache/xml/serialize/IndentPrinter;->_thisIndent:I

    mul-int/lit8 v2, v1, 0x2

    iget-object v3, p0, Lmf/org/apache/xml/serialize/IndentPrinter;->_format:Lmf/org/apache/xml/serialize/OutputFormat;

    invoke-virtual {v3}, Lmf/org/apache/xml/serialize/OutputFormat;->getLineWidth()I

    move-result v3

    if-le v2, v3, :cond_0

    iget-object v2, p0, Lmf/org/apache/xml/serialize/IndentPrinter;->_format:Lmf/org/apache/xml/serialize/OutputFormat;

    invoke-virtual {v2}, Lmf/org/apache/xml/serialize/OutputFormat;->getLineWidth()I

    move-result v2

    if-lez v2, :cond_0

    iget-object v2, p0, Lmf/org/apache/xml/serialize/IndentPrinter;->_format:Lmf/org/apache/xml/serialize/OutputFormat;

    invoke-virtual {v2}, Lmf/org/apache/xml/serialize/OutputFormat;->getLineWidth()I

    move-result v2

    div-int/lit8 v1, v2, 0x2

    :cond_0
    :goto_0
    if-gtz v1, :cond_3

    :cond_1
    iget v2, p0, Lmf/org/apache/xml/serialize/IndentPrinter;->_nextIndent:I

    iput v2, p0, Lmf/org/apache/xml/serialize/IndentPrinter;->_thisIndent:I

    const/4 v2, 0x0

    iput v2, p0, Lmf/org/apache/xml/serialize/IndentPrinter;->_spaces:I

    iget-object v2, p0, Lmf/org/apache/xml/serialize/IndentPrinter;->_writer:Ljava/io/Writer;

    iget-object v3, p0, Lmf/org/apache/xml/serialize/IndentPrinter;->_line:Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuffer;

    const/16 v3, 0x28

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    iput-object v2, p0, Lmf/org/apache/xml/serialize/IndentPrinter;->_line:Ljava/lang/StringBuffer;

    :cond_2
    :goto_1
    return-void

    :cond_3
    iget-object v2, p0, Lmf/org/apache/xml/serialize/IndentPrinter;->_writer:Ljava/io/Writer;

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v2, p0, Lmf/org/apache/xml/serialize/IndentPrinter;->_exception:Ljava/io/IOException;

    if-nez v2, :cond_2

    iput-object v0, p0, Lmf/org/apache/xml/serialize/IndentPrinter;->_exception:Ljava/io/IOException;

    goto :goto_1
.end method

.method public getNextIndent()I
    .locals 1

    iget v0, p0, Lmf/org/apache/xml/serialize/IndentPrinter;->_nextIndent:I

    return v0
.end method

.method public indent()V
    .locals 2

    iget v0, p0, Lmf/org/apache/xml/serialize/IndentPrinter;->_nextIndent:I

    iget-object v1, p0, Lmf/org/apache/xml/serialize/IndentPrinter;->_format:Lmf/org/apache/xml/serialize/OutputFormat;

    invoke-virtual {v1}, Lmf/org/apache/xml/serialize/OutputFormat;->getIndent()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lmf/org/apache/xml/serialize/IndentPrinter;->_nextIndent:I

    return-void
.end method

.method public leaveDTD()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lmf/org/apache/xml/serialize/IndentPrinter;->_writer:Ljava/io/Writer;

    iget-object v1, p0, Lmf/org/apache/xml/serialize/IndentPrinter;->_dtdWriter:Ljava/io/StringWriter;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lmf/org/apache/xml/serialize/IndentPrinter;->_line:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lmf/org/apache/xml/serialize/IndentPrinter;->_text:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    iput-object v0, p0, Lmf/org/apache/xml/serialize/IndentPrinter;->_text:Ljava/lang/StringBuffer;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmf/org/apache/xml/serialize/IndentPrinter;->flushLine(Z)V

    iget-object v0, p0, Lmf/org/apache/xml/serialize/IndentPrinter;->_docWriter:Ljava/io/Writer;

    iput-object v0, p0, Lmf/org/apache/xml/serialize/IndentPrinter;->_writer:Ljava/io/Writer;

    iget-object v0, p0, Lmf/org/apache/xml/serialize/IndentPrinter;->_dtdWriter:Ljava/io/StringWriter;

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public printSpace()V
    .locals 3

    iget-object v1, p0, Lmf/org/apache/xml/serialize/IndentPrinter;->_text:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lmf/org/apache/xml/serialize/IndentPrinter;->_format:Lmf/org/apache/xml/serialize/OutputFormat;

    invoke-virtual {v1}, Lmf/org/apache/xml/serialize/OutputFormat;->getLineWidth()I

    move-result v1

    if-lez v1, :cond_0

    iget v1, p0, Lmf/org/apache/xml/serialize/IndentPrinter;->_thisIndent:I

    iget-object v2, p0, Lmf/org/apache/xml/serialize/IndentPrinter;->_line:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, p0, Lmf/org/apache/xml/serialize/IndentPrinter;->_spaces:I

    add-int/2addr v1, v2

    iget-object v2, p0, Lmf/org/apache/xml/serialize/IndentPrinter;->_text:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lmf/org/apache/xml/serialize/IndentPrinter;->_format:Lmf/org/apache/xml/serialize/OutputFormat;

    invoke-virtual {v2}, Lmf/org/apache/xml/serialize/OutputFormat;->getLineWidth()I

    move-result v2

    if-le v1, v2, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lmf/org/apache/xml/serialize/IndentPrinter;->flushLine(Z)V

    :try_start_0
    iget-object v1, p0, Lmf/org/apache/xml/serialize/IndentPrinter;->_writer:Ljava/io/Writer;

    iget-object v2, p0, Lmf/org/apache/xml/serialize/IndentPrinter;->_format:Lmf/org/apache/xml/serialize/OutputFormat;

    invoke-virtual {v2}, Lmf/org/apache/xml/serialize/OutputFormat;->getLineSeparator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget v1, p0, Lmf/org/apache/xml/serialize/IndentPrinter;->_spaces:I

    if-gtz v1, :cond_2

    iget-object v1, p0, Lmf/org/apache/xml/serialize/IndentPrinter;->_line:Ljava/lang/StringBuffer;

    iget-object v2, p0, Lmf/org/apache/xml/serialize/IndentPrinter;->_text:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuffer;

    const/16 v2, 0x14

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    iput-object v1, p0, Lmf/org/apache/xml/serialize/IndentPrinter;->_text:Ljava/lang/StringBuffer;

    :cond_1
    iget v1, p0, Lmf/org/apache/xml/serialize/IndentPrinter;->_spaces:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lmf/org/apache/xml/serialize/IndentPrinter;->_spaces:I

    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lmf/org/apache/xml/serialize/IndentPrinter;->_exception:Ljava/io/IOException;

    if-nez v1, :cond_0

    iput-object v0, p0, Lmf/org/apache/xml/serialize/IndentPrinter;->_exception:Ljava/io/IOException;

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lmf/org/apache/xml/serialize/IndentPrinter;->_line:Ljava/lang/StringBuffer;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget v1, p0, Lmf/org/apache/xml/serialize/IndentPrinter;->_spaces:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lmf/org/apache/xml/serialize/IndentPrinter;->_spaces:I

    goto :goto_0
.end method

.method public printText(C)V
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xml/serialize/IndentPrinter;->_text:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    return-void
.end method

.method public printText(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xml/serialize/IndentPrinter;->_text:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method public printText(Ljava/lang/StringBuffer;)V
    .locals 2

    iget-object v0, p0, Lmf/org/apache/xml/serialize/IndentPrinter;->_text:Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method public printText([CII)V
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xml/serialize/IndentPrinter;->_text:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    return-void
.end method

.method public setNextIndent(I)V
    .locals 0

    iput p1, p0, Lmf/org/apache/xml/serialize/IndentPrinter;->_nextIndent:I

    return-void
.end method

.method public setThisIndent(I)V
    .locals 0

    iput p1, p0, Lmf/org/apache/xml/serialize/IndentPrinter;->_thisIndent:I

    return-void
.end method

.method public unindent()V
    .locals 2

    iget v0, p0, Lmf/org/apache/xml/serialize/IndentPrinter;->_nextIndent:I

    iget-object v1, p0, Lmf/org/apache/xml/serialize/IndentPrinter;->_format:Lmf/org/apache/xml/serialize/OutputFormat;

    invoke-virtual {v1}, Lmf/org/apache/xml/serialize/OutputFormat;->getIndent()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lmf/org/apache/xml/serialize/IndentPrinter;->_nextIndent:I

    iget v0, p0, Lmf/org/apache/xml/serialize/IndentPrinter;->_nextIndent:I

    if-gez v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lmf/org/apache/xml/serialize/IndentPrinter;->_nextIndent:I

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xml/serialize/IndentPrinter;->_line:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    iget v1, p0, Lmf/org/apache/xml/serialize/IndentPrinter;->_spaces:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lmf/org/apache/xml/serialize/IndentPrinter;->_text:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    add-int/2addr v0, v1

    if-nez v0, :cond_1

    iget v0, p0, Lmf/org/apache/xml/serialize/IndentPrinter;->_nextIndent:I

    iput v0, p0, Lmf/org/apache/xml/serialize/IndentPrinter;->_thisIndent:I

    :cond_1
    return-void
.end method
