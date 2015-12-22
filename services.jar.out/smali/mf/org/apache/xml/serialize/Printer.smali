.class public Lmf/org/apache/xml/serialize/Printer;
.super Ljava/lang/Object;
.source "Printer.java"


# static fields
.field private static final BufferSize:I = 0x1000


# instance fields
.field private final _buffer:[C

.field protected _docWriter:Ljava/io/Writer;

.field protected _dtdWriter:Ljava/io/StringWriter;

.field protected _exception:Ljava/io/IOException;

.field protected final _format:Lmf/org/apache/xml/serialize/OutputFormat;

.field private _pos:I

.field protected _writer:Ljava/io/Writer;


# direct methods
.method public constructor <init>(Ljava/io/Writer;Lmf/org/apache/xml/serialize/OutputFormat;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1000

    new-array v0, v0, [C

    iput-object v0, p0, Lmf/org/apache/xml/serialize/Printer;->_buffer:[C

    iput v2, p0, Lmf/org/apache/xml/serialize/Printer;->_pos:I

    iput-object p1, p0, Lmf/org/apache/xml/serialize/Printer;->_writer:Ljava/io/Writer;

    iput-object p2, p0, Lmf/org/apache/xml/serialize/Printer;->_format:Lmf/org/apache/xml/serialize/OutputFormat;

    iput-object v1, p0, Lmf/org/apache/xml/serialize/Printer;->_exception:Ljava/io/IOException;

    iput-object v1, p0, Lmf/org/apache/xml/serialize/Printer;->_dtdWriter:Ljava/io/StringWriter;

    iput-object v1, p0, Lmf/org/apache/xml/serialize/Printer;->_docWriter:Ljava/io/Writer;

    iput v2, p0, Lmf/org/apache/xml/serialize/Printer;->_pos:I

    return-void
.end method


# virtual methods
.method public breakLine()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    iget v1, p0, Lmf/org/apache/xml/serialize/Printer;->_pos:I

    const/16 v2, 0x1000

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lmf/org/apache/xml/serialize/Printer;->_writer:Ljava/io/Writer;

    iget-object v2, p0, Lmf/org/apache/xml/serialize/Printer;->_buffer:[C

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write([C)V

    const/4 v1, 0x0

    iput v1, p0, Lmf/org/apache/xml/serialize/Printer;->_pos:I

    :cond_0
    iget-object v1, p0, Lmf/org/apache/xml/serialize/Printer;->_buffer:[C

    iget v2, p0, Lmf/org/apache/xml/serialize/Printer;->_pos:I

    const/16 v3, 0xa

    aput-char v3, v1, v2

    iget v1, p0, Lmf/org/apache/xml/serialize/Printer;->_pos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lmf/org/apache/xml/serialize/Printer;->_pos:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lmf/org/apache/xml/serialize/Printer;->_exception:Ljava/io/IOException;

    if-nez v1, :cond_1

    iput-object v0, p0, Lmf/org/apache/xml/serialize/Printer;->_exception:Ljava/io/IOException;

    :cond_1
    throw v0
.end method

.method public breakLine(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/Printer;->breakLine()V

    return-void
.end method

.method public enterDTD()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lmf/org/apache/xml/serialize/Printer;->_dtdWriter:Ljava/io/StringWriter;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmf/org/apache/xml/serialize/Printer;->flushLine(Z)V

    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xml/serialize/Printer;->_dtdWriter:Ljava/io/StringWriter;

    iget-object v0, p0, Lmf/org/apache/xml/serialize/Printer;->_writer:Ljava/io/Writer;

    iput-object v0, p0, Lmf/org/apache/xml/serialize/Printer;->_docWriter:Ljava/io/Writer;

    iget-object v0, p0, Lmf/org/apache/xml/serialize/Printer;->_dtdWriter:Ljava/io/StringWriter;

    iput-object v0, p0, Lmf/org/apache/xml/serialize/Printer;->_writer:Ljava/io/Writer;

    :cond_0
    return-void
.end method

.method public flush()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x0

    :try_start_0
    iget-object v1, p0, Lmf/org/apache/xml/serialize/Printer;->_writer:Ljava/io/Writer;

    iget-object v2, p0, Lmf/org/apache/xml/serialize/Printer;->_buffer:[C

    const/4 v3, 0x0

    iget v4, p0, Lmf/org/apache/xml/serialize/Printer;->_pos:I

    invoke-virtual {v1, v2, v3, v4}, Ljava/io/Writer;->write([CII)V

    iget-object v1, p0, Lmf/org/apache/xml/serialize/Printer;->_writer:Ljava/io/Writer;

    invoke-virtual {v1}, Ljava/io/Writer;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iput v5, p0, Lmf/org/apache/xml/serialize/Printer;->_pos:I

    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lmf/org/apache/xml/serialize/Printer;->_exception:Ljava/io/IOException;

    if-nez v1, :cond_0

    iput-object v0, p0, Lmf/org/apache/xml/serialize/Printer;->_exception:Ljava/io/IOException;

    :cond_0
    throw v0
.end method

.method public flushLine(Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x0

    :try_start_0
    iget-object v1, p0, Lmf/org/apache/xml/serialize/Printer;->_writer:Ljava/io/Writer;

    iget-object v2, p0, Lmf/org/apache/xml/serialize/Printer;->_buffer:[C

    const/4 v3, 0x0

    iget v4, p0, Lmf/org/apache/xml/serialize/Printer;->_pos:I

    invoke-virtual {v1, v2, v3, v4}, Ljava/io/Writer;->write([CII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iput v5, p0, Lmf/org/apache/xml/serialize/Printer;->_pos:I

    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lmf/org/apache/xml/serialize/Printer;->_exception:Ljava/io/IOException;

    if-nez v1, :cond_0

    iput-object v0, p0, Lmf/org/apache/xml/serialize/Printer;->_exception:Ljava/io/IOException;

    goto :goto_0
.end method

.method public getException()Ljava/io/IOException;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xml/serialize/Printer;->_exception:Ljava/io/IOException;

    return-object v0
.end method

.method public getNextIndent()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public indent()V
    .locals 0

    return-void
.end method

.method public leaveDTD()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lmf/org/apache/xml/serialize/Printer;->_writer:Ljava/io/Writer;

    iget-object v1, p0, Lmf/org/apache/xml/serialize/Printer;->_dtdWriter:Ljava/io/StringWriter;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmf/org/apache/xml/serialize/Printer;->flushLine(Z)V

    iget-object v0, p0, Lmf/org/apache/xml/serialize/Printer;->_docWriter:Ljava/io/Writer;

    iput-object v0, p0, Lmf/org/apache/xml/serialize/Printer;->_writer:Ljava/io/Writer;

    iget-object v0, p0, Lmf/org/apache/xml/serialize/Printer;->_dtdWriter:Ljava/io/StringWriter;

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public printSpace()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    iget v1, p0, Lmf/org/apache/xml/serialize/Printer;->_pos:I

    const/16 v2, 0x1000

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lmf/org/apache/xml/serialize/Printer;->_writer:Ljava/io/Writer;

    iget-object v2, p0, Lmf/org/apache/xml/serialize/Printer;->_buffer:[C

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write([C)V

    const/4 v1, 0x0

    iput v1, p0, Lmf/org/apache/xml/serialize/Printer;->_pos:I

    :cond_0
    iget-object v1, p0, Lmf/org/apache/xml/serialize/Printer;->_buffer:[C

    iget v2, p0, Lmf/org/apache/xml/serialize/Printer;->_pos:I

    const/16 v3, 0x20

    aput-char v3, v1, v2

    iget v1, p0, Lmf/org/apache/xml/serialize/Printer;->_pos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lmf/org/apache/xml/serialize/Printer;->_pos:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lmf/org/apache/xml/serialize/Printer;->_exception:Ljava/io/IOException;

    if-nez v1, :cond_1

    iput-object v0, p0, Lmf/org/apache/xml/serialize/Printer;->_exception:Ljava/io/IOException;

    :cond_1
    throw v0
.end method

.method public printText(C)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    iget v1, p0, Lmf/org/apache/xml/serialize/Printer;->_pos:I

    const/16 v2, 0x1000

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lmf/org/apache/xml/serialize/Printer;->_writer:Ljava/io/Writer;

    iget-object v2, p0, Lmf/org/apache/xml/serialize/Printer;->_buffer:[C

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write([C)V

    const/4 v1, 0x0

    iput v1, p0, Lmf/org/apache/xml/serialize/Printer;->_pos:I

    :cond_0
    iget-object v1, p0, Lmf/org/apache/xml/serialize/Printer;->_buffer:[C

    iget v2, p0, Lmf/org/apache/xml/serialize/Printer;->_pos:I

    aput-char p1, v1, v2

    iget v1, p0, Lmf/org/apache/xml/serialize/Printer;->_pos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lmf/org/apache/xml/serialize/Printer;->_pos:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lmf/org/apache/xml/serialize/Printer;->_exception:Ljava/io/IOException;

    if-nez v1, :cond_1

    iput-object v0, p0, Lmf/org/apache/xml/serialize/Printer;->_exception:Ljava/io/IOException;

    :cond_1
    throw v0
.end method

.method public printText(Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v2, :cond_0

    return-void

    :cond_0
    iget v3, p0, Lmf/org/apache/xml/serialize/Printer;->_pos:I

    const/16 v4, 0x1000

    if-ne v3, v4, :cond_1

    iget-object v3, p0, Lmf/org/apache/xml/serialize/Printer;->_writer:Ljava/io/Writer;

    iget-object v4, p0, Lmf/org/apache/xml/serialize/Printer;->_buffer:[C

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write([C)V

    const/4 v3, 0x0

    iput v3, p0, Lmf/org/apache/xml/serialize/Printer;->_pos:I

    :cond_1
    iget-object v3, p0, Lmf/org/apache/xml/serialize/Printer;->_buffer:[C

    iget v4, p0, Lmf/org/apache/xml/serialize/Printer;->_pos:I

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    aput-char v5, v3, v4

    iget v3, p0, Lmf/org/apache/xml/serialize/Printer;->_pos:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lmf/org/apache/xml/serialize/Printer;->_pos:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v3, p0, Lmf/org/apache/xml/serialize/Printer;->_exception:Ljava/io/IOException;

    if-nez v3, :cond_2

    iput-object v0, p0, Lmf/org/apache/xml/serialize/Printer;->_exception:Ljava/io/IOException;

    :cond_2
    throw v0
.end method

.method public printText(Ljava/lang/StringBuffer;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v2, :cond_0

    return-void

    :cond_0
    iget v3, p0, Lmf/org/apache/xml/serialize/Printer;->_pos:I

    const/16 v4, 0x1000

    if-ne v3, v4, :cond_1

    iget-object v3, p0, Lmf/org/apache/xml/serialize/Printer;->_writer:Ljava/io/Writer;

    iget-object v4, p0, Lmf/org/apache/xml/serialize/Printer;->_buffer:[C

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write([C)V

    const/4 v3, 0x0

    iput v3, p0, Lmf/org/apache/xml/serialize/Printer;->_pos:I

    :cond_1
    iget-object v3, p0, Lmf/org/apache/xml/serialize/Printer;->_buffer:[C

    iget v4, p0, Lmf/org/apache/xml/serialize/Printer;->_pos:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v5

    aput-char v5, v3, v4

    iget v3, p0, Lmf/org/apache/xml/serialize/Printer;->_pos:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lmf/org/apache/xml/serialize/Printer;->_pos:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v3, p0, Lmf/org/apache/xml/serialize/Printer;->_exception:Ljava/io/IOException;

    if-nez v3, :cond_2

    iput-object v0, p0, Lmf/org/apache/xml/serialize/Printer;->_exception:Ljava/io/IOException;

    :cond_2
    throw v0
.end method

.method public printText([CII)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move v1, p3

    :goto_0
    add-int/lit8 p3, v1, -0x1

    if-gtz v1, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget v2, p0, Lmf/org/apache/xml/serialize/Printer;->_pos:I

    const/16 v3, 0x1000

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lmf/org/apache/xml/serialize/Printer;->_writer:Ljava/io/Writer;

    iget-object v3, p0, Lmf/org/apache/xml/serialize/Printer;->_buffer:[C

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write([C)V

    const/4 v2, 0x0

    iput v2, p0, Lmf/org/apache/xml/serialize/Printer;->_pos:I

    :cond_1
    iget-object v2, p0, Lmf/org/apache/xml/serialize/Printer;->_buffer:[C

    iget v3, p0, Lmf/org/apache/xml/serialize/Printer;->_pos:I

    aget-char v4, p1, p2

    aput-char v4, v2, v3

    add-int/lit8 p2, p2, 0x1

    iget v2, p0, Lmf/org/apache/xml/serialize/Printer;->_pos:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lmf/org/apache/xml/serialize/Printer;->_pos:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, p3

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v2, p0, Lmf/org/apache/xml/serialize/Printer;->_exception:Ljava/io/IOException;

    if-nez v2, :cond_2

    iput-object v0, p0, Lmf/org/apache/xml/serialize/Printer;->_exception:Ljava/io/IOException;

    :cond_2
    throw v0
.end method

.method public setNextIndent(I)V
    .locals 0

    return-void
.end method

.method public setThisIndent(I)V
    .locals 0

    return-void
.end method

.method public unindent()V
    .locals 0

    return-void
.end method
