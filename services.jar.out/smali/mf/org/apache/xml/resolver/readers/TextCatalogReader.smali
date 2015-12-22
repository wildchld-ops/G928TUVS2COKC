.class public Lmf/org/apache/xml/resolver/readers/TextCatalogReader;
.super Ljava/lang/Object;
.source "TextCatalogReader.java"

# interfaces
.implements Lmf/org/apache/xml/resolver/readers/CatalogReader;


# instance fields
.field protected caseSensitive:Z

.field protected catfile:Ljava/io/InputStream;

.field protected stack:[I

.field protected tokenStack:Ljava/util/Stack;

.field protected top:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lmf/org/apache/xml/resolver/readers/TextCatalogReader;->catfile:Ljava/io/InputStream;

    const/4 v0, 0x3

    new-array v0, v0, [I

    iput-object v0, p0, Lmf/org/apache/xml/resolver/readers/TextCatalogReader;->stack:[I

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xml/resolver/readers/TextCatalogReader;->tokenStack:Ljava/util/Stack;

    const/4 v0, -0x1

    iput v0, p0, Lmf/org/apache/xml/resolver/readers/TextCatalogReader;->top:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmf/org/apache/xml/resolver/readers/TextCatalogReader;->caseSensitive:Z

    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xml/resolver/readers/TextCatalogReader;->catfile:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lmf/org/apache/xml/resolver/readers/TextCatalogReader;->catfile:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lmf/org/apache/xml/resolver/readers/TextCatalogReader;->catfile:Ljava/io/InputStream;

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getCaseSensitive()Z
    .locals 1

    iget-boolean v0, p0, Lmf/org/apache/xml/resolver/readers/TextCatalogReader;->caseSensitive:Z

    return v0
.end method

.method protected nextChar()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lmf/org/apache/xml/resolver/readers/TextCatalogReader;->top:I

    if-gez v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xml/resolver/readers/TextCatalogReader;->catfile:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xml/resolver/readers/TextCatalogReader;->stack:[I

    iget v1, p0, Lmf/org/apache/xml/resolver/readers/TextCatalogReader;->top:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lmf/org/apache/xml/resolver/readers/TextCatalogReader;->top:I

    aget v0, v0, v1

    goto :goto_0
.end method

.method protected nextToken()Ljava/lang/String;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmf/org/apache/xml/resolver/CatalogException;
        }
    .end annotation

    const/4 v6, 0x0

    const/16 v11, 0x20

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/16 v8, 0x2d

    const-string v5, ""

    iget-object v7, p0, Lmf/org/apache/xml/resolver/readers/TextCatalogReader;->tokenStack:Ljava/util/Stack;

    invoke-virtual {v7}, Ljava/util/Stack;->empty()Z

    move-result v7

    if-nez v7, :cond_1

    iget-object v6, p0, Lmf/org/apache/xml/resolver/readers/TextCatalogReader;->tokenStack:Ljava/util/Stack;

    invoke-virtual {v6}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    :cond_0
    :goto_0
    return-object v6

    :cond_1
    iget-object v7, p0, Lmf/org/apache/xml/resolver/readers/TextCatalogReader;->catfile:Ljava/io/InputStream;

    invoke-virtual {v7}, Ljava/io/InputStream;->read()I

    move-result v0

    :cond_2
    if-le v0, v11, :cond_5

    iget-object v7, p0, Lmf/org/apache/xml/resolver/readers/TextCatalogReader;->catfile:Ljava/io/InputStream;

    invoke-virtual {v7}, Ljava/io/InputStream;->read()I

    move-result v2

    if-ltz v2, :cond_0

    if-ne v0, v8, :cond_7

    if-ne v2, v8, :cond_7

    const/16 v0, 0x20

    invoke-virtual {p0}, Lmf/org/apache/xml/resolver/readers/TextCatalogReader;->nextChar()I

    move-result v2

    :goto_1
    if-ne v0, v8, :cond_3

    if-eq v2, v8, :cond_4

    :cond_3
    if-gtz v2, :cond_6

    :cond_4
    if-gez v2, :cond_1

    new-instance v6, Lmf/org/apache/xml/resolver/CatalogException;

    const/16 v7, 0x8

    const-string v8, "Unterminated comment in catalog file; EOF treated as end-of-comment."

    invoke-direct {v6, v7, v8}, Lmf/org/apache/xml/resolver/CatalogException;-><init>(ILjava/lang/String;)V

    throw v6

    :cond_5
    iget-object v7, p0, Lmf/org/apache/xml/resolver/readers/TextCatalogReader;->catfile:Ljava/io/InputStream;

    invoke-virtual {v7}, Ljava/io/InputStream;->read()I

    move-result v0

    if-gez v0, :cond_2

    goto :goto_0

    :cond_6
    move v0, v2

    invoke-virtual {p0}, Lmf/org/apache/xml/resolver/readers/TextCatalogReader;->nextChar()I

    move-result v2

    goto :goto_1

    :cond_7
    iget-object v6, p0, Lmf/org/apache/xml/resolver/readers/TextCatalogReader;->stack:[I

    iget v7, p0, Lmf/org/apache/xml/resolver/readers/TextCatalogReader;->top:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lmf/org/apache/xml/resolver/readers/TextCatalogReader;->top:I

    aput v2, v6, v7

    iget-object v6, p0, Lmf/org/apache/xml/resolver/readers/TextCatalogReader;->stack:[I

    iget v7, p0, Lmf/org/apache/xml/resolver/readers/TextCatalogReader;->top:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lmf/org/apache/xml/resolver/readers/TextCatalogReader;->top:I

    aput v0, v6, v7

    invoke-virtual {p0}, Lmf/org/apache/xml/resolver/readers/TextCatalogReader;->nextChar()I

    move-result v0

    const/16 v6, 0x22

    if-eq v0, v6, :cond_8

    const/16 v6, 0x27

    if-ne v0, v6, :cond_c

    :cond_8
    move v3, v0

    :goto_2
    invoke-virtual {p0}, Lmf/org/apache/xml/resolver/readers/TextCatalogReader;->nextChar()I

    move-result v0

    if-ne v0, v3, :cond_9

    move-object v6, v5

    goto :goto_0

    :cond_9
    new-array v1, v10, [C

    int-to-char v6, v0

    aput-char v6, v1, v9

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v1}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v5, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    :cond_a
    invoke-virtual {p0}, Lmf/org/apache/xml/resolver/readers/TextCatalogReader;->nextChar()I

    move-result v2

    if-ne v0, v8, :cond_b

    if-ne v2, v8, :cond_b

    iget-object v6, p0, Lmf/org/apache/xml/resolver/readers/TextCatalogReader;->stack:[I

    iget v7, p0, Lmf/org/apache/xml/resolver/readers/TextCatalogReader;->top:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lmf/org/apache/xml/resolver/readers/TextCatalogReader;->top:I

    aput v0, v6, v7

    iget-object v6, p0, Lmf/org/apache/xml/resolver/readers/TextCatalogReader;->stack:[I

    iget v7, p0, Lmf/org/apache/xml/resolver/readers/TextCatalogReader;->top:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lmf/org/apache/xml/resolver/readers/TextCatalogReader;->top:I

    aput v2, v6, v7

    move-object v6, v5

    goto/16 :goto_0

    :cond_b
    new-array v1, v10, [C

    int-to-char v6, v0

    aput-char v6, v1, v9

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v1}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v5, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move v0, v2

    :cond_c
    if-gt v0, v11, :cond_a

    move-object v6, v5

    goto/16 :goto_0
.end method

.method public readCatalog(Lmf/org/apache/xml/resolver/Catalog;Ljava/io/InputStream;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;
        }
    .end annotation

    iput-object p2, p0, Lmf/org/apache/xml/resolver/readers/TextCatalogReader;->catfile:Ljava/io/InputStream;

    iget-object v10, p0, Lmf/org/apache/xml/resolver/readers/TextCatalogReader;->catfile:Ljava/io/InputStream;

    if-nez v10, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v8, 0x0

    :goto_1
    :try_start_0
    invoke-virtual {p0}, Lmf/org/apache/xml/resolver/readers/TextCatalogReader;->nextToken()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_3

    if-eqz v8, :cond_2

    invoke-virtual {p1, v8}, Lmf/org/apache/xml/resolver/Catalog;->unknownEntry(Ljava/util/Vector;)V

    const/4 v8, 0x0

    :cond_2
    iget-object v10, p0, Lmf/org/apache/xml/resolver/readers/TextCatalogReader;->catfile:Ljava/io/InputStream;

    invoke-virtual {v10}, Ljava/io/InputStream;->close()V

    const/4 v10, 0x0

    iput-object v10, p0, Lmf/org/apache/xml/resolver/readers/TextCatalogReader;->catfile:Ljava/io/InputStream;
    :try_end_0
    .catch Lmf/org/apache/xml/resolver/CatalogException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    :goto_2
    invoke-virtual {v2}, Lmf/org/apache/xml/resolver/CatalogException;->getExceptionType()I

    move-result v10

    const/16 v11, 0x8

    if-ne v10, v11, :cond_0

    invoke-virtual {p1}, Lmf/org/apache/xml/resolver/Catalog;->getCatalogManager()Lmf/org/apache/xml/resolver/CatalogManager;

    move-result-object v10

    iget-object v10, v10, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const/4 v11, 0x1

    invoke-virtual {v2}, Lmf/org/apache/xml/resolver/CatalogException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;)V

    goto :goto_0

    :cond_3
    const/4 v4, 0x0

    :try_start_1
    iget-boolean v10, p0, Lmf/org/apache/xml/resolver/readers/TextCatalogReader;->caseSensitive:Z
    :try_end_1
    .catch Lmf/org/apache/xml/resolver/CatalogException; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v10, :cond_5

    move-object v4, v6

    :goto_3
    :try_start_2
    invoke-static {v4}, Lmf/org/apache/xml/resolver/CatalogEntry;->getEntryType(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Lmf/org/apache/xml/resolver/CatalogEntry;->getEntryArgCount(I)I

    move-result v5

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    if-eqz v8, :cond_4

    invoke-virtual {p1, v8}, Lmf/org/apache/xml/resolver/Catalog;->unknownEntry(Ljava/util/Vector;)V

    const/4 v8, 0x0

    :cond_4
    const/4 v3, 0x0

    :goto_4
    if-lt v3, v5, :cond_6

    new-instance v10, Lmf/org/apache/xml/resolver/CatalogEntry;

    invoke-direct {v10, v4, v0}, Lmf/org/apache/xml/resolver/CatalogEntry;-><init>(Ljava/lang/String;Ljava/util/Vector;)V

    invoke-virtual {p1, v10}, Lmf/org/apache/xml/resolver/Catalog;->addEntry(Lmf/org/apache/xml/resolver/CatalogEntry;)V
    :try_end_2
    .catch Lmf/org/apache/xml/resolver/CatalogException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    move-object v9, v8

    :try_start_3
    invoke-virtual {v1}, Lmf/org/apache/xml/resolver/CatalogException;->getExceptionType()I

    move-result v10

    const/4 v11, 0x3

    if-ne v10, v11, :cond_7

    if-nez v9, :cond_a

    new-instance v8, Ljava/util/Vector;

    invoke-direct {v8}, Ljava/util/Vector;-><init>()V
    :try_end_3
    .catch Lmf/org/apache/xml/resolver/CatalogException; {:try_start_3 .. :try_end_3} :catch_2

    :goto_5
    :try_start_4
    invoke-virtual {v8, v6}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_1

    :cond_5
    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;
    :try_end_4
    .catch Lmf/org/apache/xml/resolver/CatalogException; {:try_start_4 .. :try_end_4} :catch_0

    move-result-object v4

    goto :goto_3

    :cond_6
    :try_start_5
    invoke-virtual {p0}, Lmf/org/apache/xml/resolver/readers/TextCatalogReader;->nextToken()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_5
    .catch Lmf/org/apache/xml/resolver/CatalogException; {:try_start_5 .. :try_end_5} :catch_1

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_7
    :try_start_6
    invoke-virtual {v1}, Lmf/org/apache/xml/resolver/CatalogException;->getExceptionType()I

    move-result v10

    const/4 v11, 0x2

    if-ne v10, v11, :cond_8

    invoke-virtual {p1}, Lmf/org/apache/xml/resolver/Catalog;->getCatalogManager()Lmf/org/apache/xml/resolver/CatalogManager;

    move-result-object v10

    iget-object v10, v10, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const/4 v11, 0x1

    const-string v12, "Invalid catalog entry"

    invoke-virtual {v10, v11, v12, v6}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v8, 0x0

    goto/16 :goto_1

    :cond_8
    invoke-virtual {v1}, Lmf/org/apache/xml/resolver/CatalogException;->getExceptionType()I

    move-result v10

    const/16 v11, 0x8

    if-ne v10, v11, :cond_9

    invoke-virtual {p1}, Lmf/org/apache/xml/resolver/Catalog;->getCatalogManager()Lmf/org/apache/xml/resolver/CatalogManager;

    move-result-object v10

    iget-object v10, v10, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const/4 v11, 0x1

    invoke-virtual {v1}, Lmf/org/apache/xml/resolver/CatalogException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;)V
    :try_end_6
    .catch Lmf/org/apache/xml/resolver/CatalogException; {:try_start_6 .. :try_end_6} :catch_2

    move-object v8, v9

    goto/16 :goto_1

    :catch_2
    move-exception v2

    move-object v8, v9

    goto/16 :goto_2

    :cond_9
    move-object v8, v9

    goto/16 :goto_1

    :cond_a
    move-object v8, v9

    goto :goto_5
.end method

.method public readCatalog(Lmf/org/apache/xml/resolver/Catalog;Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    :try_start_1
    invoke-virtual {v2}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-virtual {p0, p1, v3}, Lmf/org/apache/xml/resolver/readers/TextCatalogReader;->readCatalog(Lmf/org/apache/xml/resolver/Catalog;Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    return-void

    :catch_0
    move-exception v1

    new-instance v0, Ljava/net/URL;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "file:///"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-virtual {p1}, Lmf/org/apache/xml/resolver/Catalog;->getCatalogManager()Lmf/org/apache/xml/resolver/CatalogManager;

    move-result-object v3

    iget-object v3, v3, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const/4 v4, 0x1

    const-string v5, "Failed to load catalog, file not found"

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public setCaseSensitive(Z)V
    .locals 0

    iput-boolean p1, p0, Lmf/org/apache/xml/resolver/readers/TextCatalogReader;->caseSensitive:Z

    return-void
.end method
