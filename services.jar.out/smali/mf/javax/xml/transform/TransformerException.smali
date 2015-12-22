.class public Lmf/javax/xml/transform/TransformerException;
.super Ljava/lang/Exception;
.source "TransformerException.java"


# instance fields
.field containedException:Ljava/lang/Throwable;

.field locator:Lmf/javax/xml/transform/SourceLocator;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lmf/javax/xml/transform/TransformerException;->containedException:Ljava/lang/Throwable;

    iput-object v0, p0, Lmf/javax/xml/transform/TransformerException;->locator:Lmf/javax/xml/transform/SourceLocator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_1
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lmf/javax/xml/transform/TransformerException;->containedException:Ljava/lang/Throwable;

    const/4 v0, 0x0

    iput-object v0, p0, Lmf/javax/xml/transform/TransformerException;->locator:Lmf/javax/xml/transform/SourceLocator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lmf/javax/xml/transform/SourceLocator;)V
    .locals 1

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lmf/javax/xml/transform/TransformerException;->containedException:Ljava/lang/Throwable;

    iput-object p2, p0, Lmf/javax/xml/transform/TransformerException;->locator:Lmf/javax/xml/transform/SourceLocator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lmf/javax/xml/transform/SourceLocator;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iput-object p3, p0, Lmf/javax/xml/transform/TransformerException;->containedException:Ljava/lang/Throwable;

    iput-object p2, p0, Lmf/javax/xml/transform/TransformerException;->locator:Lmf/javax/xml/transform/SourceLocator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lmf/javax/xml/transform/TransformerException;->containedException:Ljava/lang/Throwable;

    const/4 v0, 0x0

    iput-object v0, p0, Lmf/javax/xml/transform/TransformerException;->locator:Lmf/javax/xml/transform/SourceLocator;

    return-void
.end method


# virtual methods
.method public getCause()Ljava/lang/Throwable;
    .locals 1

    iget-object v0, p0, Lmf/javax/xml/transform/TransformerException;->containedException:Ljava/lang/Throwable;

    if-ne v0, p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lmf/javax/xml/transform/TransformerException;->containedException:Ljava/lang/Throwable;

    goto :goto_0
.end method

.method public getException()Ljava/lang/Throwable;
    .locals 1

    iget-object v0, p0, Lmf/javax/xml/transform/TransformerException;->containedException:Ljava/lang/Throwable;

    return-object v0
.end method

.method public getLocationAsString()Ljava/lang/String;
    .locals 5

    iget-object v4, p0, Lmf/javax/xml/transform/TransformerException;->locator:Lmf/javax/xml/transform/SourceLocator;

    if-eqz v4, :cond_3

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v4, p0, Lmf/javax/xml/transform/TransformerException;->locator:Lmf/javax/xml/transform/SourceLocator;

    invoke-interface {v4}, Lmf/javax/xml/transform/SourceLocator;->getSystemId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lmf/javax/xml/transform/TransformerException;->locator:Lmf/javax/xml/transform/SourceLocator;

    invoke-interface {v4}, Lmf/javax/xml/transform/SourceLocator;->getLineNumber()I

    move-result v1

    iget-object v4, p0, Lmf/javax/xml/transform/TransformerException;->locator:Lmf/javax/xml/transform/SourceLocator;

    invoke-interface {v4}, Lmf/javax/xml/transform/SourceLocator;->getColumnNumber()I

    move-result v0

    if-eqz v3, :cond_0

    const-string v4, "; SystemID: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    if-eqz v1, :cond_1

    const-string v4, "; Line#: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    :cond_1
    if-eqz v0, :cond_2

    const-string v4, "; Column#: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_0
    return-object v4

    :cond_3
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public getLocator()Lmf/javax/xml/transform/SourceLocator;
    .locals 1

    iget-object v0, p0, Lmf/javax/xml/transform/TransformerException;->locator:Lmf/javax/xml/transform/SourceLocator;

    return-object v0
.end method

.method public getMessageAndLocation()Ljava/lang/String;
    .locals 6

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-super {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    iget-object v5, p0, Lmf/javax/xml/transform/TransformerException;->locator:Lmf/javax/xml/transform/SourceLocator;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lmf/javax/xml/transform/TransformerException;->locator:Lmf/javax/xml/transform/SourceLocator;

    invoke-interface {v5}, Lmf/javax/xml/transform/SourceLocator;->getSystemId()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lmf/javax/xml/transform/TransformerException;->locator:Lmf/javax/xml/transform/SourceLocator;

    invoke-interface {v5}, Lmf/javax/xml/transform/SourceLocator;->getLineNumber()I

    move-result v1

    iget-object v5, p0, Lmf/javax/xml/transform/TransformerException;->locator:Lmf/javax/xml/transform/SourceLocator;

    invoke-interface {v5}, Lmf/javax/xml/transform/SourceLocator;->getColumnNumber()I

    move-result v0

    if-eqz v4, :cond_1

    const-string v5, "; SystemID: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    if-eqz v1, :cond_2

    const-string v5, "; Line#: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    :cond_2
    if-eqz v0, :cond_3

    const-string v5, "; Column#: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public declared-synchronized initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lmf/javax/xml/transform/TransformerException;->containedException:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t overwrite cause"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    if-ne p1, p0, :cond_1

    :try_start_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Self-causation not permitted"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-object p1, p0, Lmf/javax/xml/transform/TransformerException;->containedException:Ljava/lang/Throwable;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p0
.end method

.method public printStackTrace()V
    .locals 3

    new-instance v0, Ljava/io/PrintWriter;

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;Z)V

    invoke-virtual {p0, v0}, Lmf/javax/xml/transform/TransformerException;->printStackTrace(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public printStackTrace(Ljava/io/PrintStream;)V
    .locals 1

    new-instance v0, Ljava/io/PrintWriter;

    invoke-direct {v0, p1}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {p0, v0}, Lmf/javax/xml/transform/TransformerException;->printStackTrace(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public printStackTrace(Ljava/io/PrintWriter;)V
    .locals 13

    if-nez p1, :cond_0

    new-instance p1, Ljava/io/PrintWriter;

    sget-object v10, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const/4 v11, 0x1

    invoke-direct {p1, v10, v11}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;Z)V

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lmf/javax/xml/transform/TransformerException;->getLocationAsString()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_1
    invoke-super {p0, p1}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_4

    :goto_0
    invoke-virtual {p0}, Lmf/javax/xml/transform/TransformerException;->getException()Ljava/lang/Throwable;

    move-result-object v2

    const/4 v3, 0x0

    :goto_1
    const/16 v10, 0xa

    if-ge v3, v10, :cond_2

    if-nez v2, :cond_3

    :cond_2
    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V

    return-void

    :cond_3
    const-string v10, "---------"

    invoke-virtual {p1, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :try_start_1
    instance-of v10, v2, Lmf/javax/xml/transform/TransformerException;

    if-eqz v10, :cond_4

    move-object v0, v2

    check-cast v0, Lmf/javax/xml/transform/TransformerException;

    move-object v10, v0

    invoke-virtual {v10}, Lmf/javax/xml/transform/TransformerException;->getLocationAsString()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_4

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {v2, p1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :goto_2
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    const-string/jumbo v11, "getException"

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    if-eqz v7, :cond_5

    move-object v9, v2

    const/4 v10, 0x0

    invoke-virtual {v7, v2, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Throwable;
    :try_end_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_3

    if-eq v9, v2, :cond_2

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :catch_0
    move-exception v1

    const-string v10, "Could not print stack trace..."

    invoke-virtual {p1, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    const/4 v2, 0x0

    goto :goto_3

    :catch_1
    move-exception v5

    const/4 v2, 0x0

    goto :goto_3

    :catch_2
    move-exception v4

    const/4 v2, 0x0

    goto :goto_3

    :catch_3
    move-exception v8

    const/4 v2, 0x0

    goto :goto_3

    :catch_4
    move-exception v10

    goto :goto_0
.end method

.method public setLocator(Lmf/javax/xml/transform/SourceLocator;)V
    .locals 0

    iput-object p1, p0, Lmf/javax/xml/transform/TransformerException;->locator:Lmf/javax/xml/transform/SourceLocator;

    return-void
.end method
