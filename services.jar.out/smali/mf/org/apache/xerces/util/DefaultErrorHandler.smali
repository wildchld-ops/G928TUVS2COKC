.class public Lmf/org/apache/xerces/util/DefaultErrorHandler;
.super Ljava/lang/Object;
.source "DefaultErrorHandler.java"

# interfaces
.implements Lmf/org/apache/xerces/xni/parser/XMLErrorHandler;


# instance fields
.field protected fOut:Ljava/io/PrintWriter;


# direct methods
.method public constructor <init>()V
    .locals 2

    new-instance v0, Ljava/io/PrintWriter;

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {p0, v0}, Lmf/org/apache/xerces/util/DefaultErrorHandler;-><init>(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/PrintWriter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmf/org/apache/xerces/util/DefaultErrorHandler;->fOut:Ljava/io/PrintWriter;

    return-void
.end method

.method private printError(Ljava/lang/String;Lmf/org/apache/xerces/xni/parser/XMLParseException;)V
    .locals 5

    const/16 v4, 0x3a

    iget-object v2, p0, Lmf/org/apache/xerces/util/DefaultErrorHandler;->fOut:Ljava/io/PrintWriter;

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lmf/org/apache/xerces/util/DefaultErrorHandler;->fOut:Ljava/io/PrintWriter;

    invoke-virtual {v2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lmf/org/apache/xerces/util/DefaultErrorHandler;->fOut:Ljava/io/PrintWriter;

    const-string v3, "] "

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2}, Lmf/org/apache/xerces/xni/parser/XMLParseException;->getExpandedSystemId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    :cond_0
    iget-object v2, p0, Lmf/org/apache/xerces/util/DefaultErrorHandler;->fOut:Ljava/io/PrintWriter;

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_1
    iget-object v2, p0, Lmf/org/apache/xerces/util/DefaultErrorHandler;->fOut:Ljava/io/PrintWriter;

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(C)V

    iget-object v2, p0, Lmf/org/apache/xerces/util/DefaultErrorHandler;->fOut:Ljava/io/PrintWriter;

    invoke-virtual {p2}, Lmf/org/apache/xerces/xni/parser/XMLParseException;->getLineNumber()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(I)V

    iget-object v2, p0, Lmf/org/apache/xerces/util/DefaultErrorHandler;->fOut:Ljava/io/PrintWriter;

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(C)V

    iget-object v2, p0, Lmf/org/apache/xerces/util/DefaultErrorHandler;->fOut:Ljava/io/PrintWriter;

    invoke-virtual {p2}, Lmf/org/apache/xerces/xni/parser/XMLParseException;->getColumnNumber()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(I)V

    iget-object v2, p0, Lmf/org/apache/xerces/util/DefaultErrorHandler;->fOut:Ljava/io/PrintWriter;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lmf/org/apache/xerces/util/DefaultErrorHandler;->fOut:Ljava/io/PrintWriter;

    invoke-virtual {p2}, Lmf/org/apache/xerces/xni/parser/XMLParseException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lmf/org/apache/xerces/util/DefaultErrorHandler;->fOut:Ljava/io/PrintWriter;

    invoke-virtual {v2}, Ljava/io/PrintWriter;->println()V

    iget-object v2, p0, Lmf/org/apache/xerces/util/DefaultErrorHandler;->fOut:Ljava/io/PrintWriter;

    invoke-virtual {v2}, Ljava/io/PrintWriter;->flush()V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xni/parser/XMLParseException;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    const-string v0, "Error"

    invoke-direct {p0, v0, p3}, Lmf/org/apache/xerces/util/DefaultErrorHandler;->printError(Ljava/lang/String;Lmf/org/apache/xerces/xni/parser/XMLParseException;)V

    return-void
.end method

.method public fatalError(Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xni/parser/XMLParseException;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    const-string v0, "Fatal Error"

    invoke-direct {p0, v0, p3}, Lmf/org/apache/xerces/util/DefaultErrorHandler;->printError(Ljava/lang/String;Lmf/org/apache/xerces/xni/parser/XMLParseException;)V

    throw p3
.end method

.method public warning(Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xni/parser/XMLParseException;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    const-string v0, "Warning"

    invoke-direct {p0, v0, p3}, Lmf/org/apache/xerces/util/DefaultErrorHandler;->printError(Ljava/lang/String;Lmf/org/apache/xerces/xni/parser/XMLParseException;)V

    return-void
.end method
