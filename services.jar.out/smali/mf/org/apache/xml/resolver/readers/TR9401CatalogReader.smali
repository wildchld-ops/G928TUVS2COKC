.class public Lmf/org/apache/xml/resolver/readers/TR9401CatalogReader;
.super Lmf/org/apache/xml/resolver/readers/TextCatalogReader;
.source "TR9401CatalogReader.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lmf/org/apache/xml/resolver/readers/TextCatalogReader;-><init>()V

    return-void
.end method


# virtual methods
.method public readCatalog(Lmf/org/apache/xml/resolver/Catalog;Ljava/io/InputStream;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;
        }
    .end annotation

    iput-object p2, p0, Lmf/org/apache/xml/resolver/readers/TR9401CatalogReader;->catfile:Ljava/io/InputStream;

    iget-object v10, p0, Lmf/org/apache/xml/resolver/readers/TR9401CatalogReader;->catfile:Ljava/io/InputStream;

    if-nez v10, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v8, 0x0

    :goto_1
    :try_start_0
    invoke-virtual {p0}, Lmf/org/apache/xml/resolver/readers/TR9401CatalogReader;->nextToken()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_3

    if-eqz v8, :cond_2

    invoke-virtual {p1, v8}, Lmf/org/apache/xml/resolver/Catalog;->unknownEntry(Ljava/util/Vector;)V

    const/4 v8, 0x0

    :cond_2
    iget-object v10, p0, Lmf/org/apache/xml/resolver/readers/TR9401CatalogReader;->catfile:Ljava/io/InputStream;

    invoke-virtual {v10}, Ljava/io/InputStream;->close()V

    const/4 v10, 0x0

    iput-object v10, p0, Lmf/org/apache/xml/resolver/readers/TR9401CatalogReader;->catfile:Ljava/io/InputStream;
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
    iget-boolean v10, p0, Lmf/org/apache/xml/resolver/readers/TR9401CatalogReader;->caseSensitive:Z

    if-eqz v10, :cond_6

    move-object v4, v6

    :goto_3
    const-string v10, "DELEGATE"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    const-string v4, "DELEGATE_PUBLIC"
    :try_end_1
    .catch Lmf/org/apache/xml/resolver/CatalogException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_4
    :try_start_2
    invoke-static {v4}, Lmf/org/apache/xml/resolver/CatalogEntry;->getEntryType(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Lmf/org/apache/xml/resolver/CatalogEntry;->getEntryArgCount(I)I

    move-result v5

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    if-eqz v8, :cond_5

    invoke-virtual {p1, v8}, Lmf/org/apache/xml/resolver/Catalog;->unknownEntry(Ljava/util/Vector;)V

    const/4 v8, 0x0

    :cond_5
    const/4 v3, 0x0

    :goto_4
    if-lt v3, v5, :cond_7

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

    if-ne v10, v11, :cond_8

    if-nez v9, :cond_b

    new-instance v8, Ljava/util/Vector;

    invoke-direct {v8}, Ljava/util/Vector;-><init>()V
    :try_end_3
    .catch Lmf/org/apache/xml/resolver/CatalogException; {:try_start_3 .. :try_end_3} :catch_2

    :goto_5
    :try_start_4
    invoke-virtual {v8, v6}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_1

    :cond_6
    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;
    :try_end_4
    .catch Lmf/org/apache/xml/resolver/CatalogException; {:try_start_4 .. :try_end_4} :catch_0

    move-result-object v4

    goto :goto_3

    :cond_7
    :try_start_5
    invoke-virtual {p0}, Lmf/org/apache/xml/resolver/readers/TR9401CatalogReader;->nextToken()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_5
    .catch Lmf/org/apache/xml/resolver/CatalogException; {:try_start_5 .. :try_end_5} :catch_1

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_8
    :try_start_6
    invoke-virtual {v1}, Lmf/org/apache/xml/resolver/CatalogException;->getExceptionType()I

    move-result v10

    const/4 v11, 0x2

    if-ne v10, v11, :cond_9

    invoke-virtual {p1}, Lmf/org/apache/xml/resolver/Catalog;->getCatalogManager()Lmf/org/apache/xml/resolver/CatalogManager;

    move-result-object v10

    iget-object v10, v10, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const/4 v11, 0x1

    const-string v12, "Invalid catalog entry"

    invoke-virtual {v10, v11, v12, v6}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v8, 0x0

    goto/16 :goto_1

    :cond_9
    invoke-virtual {v1}, Lmf/org/apache/xml/resolver/CatalogException;->getExceptionType()I

    move-result v10

    const/16 v11, 0x8

    if-ne v10, v11, :cond_a

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

    :cond_a
    move-object v8, v9

    goto/16 :goto_1

    :cond_b
    move-object v8, v9

    goto :goto_5
.end method
