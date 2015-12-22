.class public Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;
.super Ljava/lang/Object;
.source "SAXCatalogReader.java"

# interfaces
.implements Lmf/org/apache/xml/resolver/readers/CatalogReader;
.implements Lorg/xml/sax/ContentHandler;
.implements Lorg/xml/sax/DocumentHandler;


# instance fields
.field private abandonHope:Z

.field private catalog:Lmf/org/apache/xml/resolver/Catalog;

.field protected debug:Lmf/org/apache/xml/resolver/helpers/Debug;

.field private loader:Ljava/lang/ClassLoader;

.field protected namespaceMap:Ljava/util/Hashtable;

.field protected parserClass:Ljava/lang/String;

.field protected parserFactory:Lmf/javax/xml/parsers/SAXParserFactory;

.field private saxParser:Lmf/org/apache/xml/resolver/readers/SAXCatalogParser;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->parserFactory:Lmf/javax/xml/parsers/SAXParserFactory;

    iput-object v1, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->parserClass:Ljava/lang/String;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->namespaceMap:Ljava/util/Hashtable;

    iput-object v1, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->saxParser:Lmf/org/apache/xml/resolver/readers/SAXCatalogParser;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->abandonHope:Z

    iput-object v1, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->loader:Ljava/lang/ClassLoader;

    invoke-static {}, Lmf/org/apache/xml/resolver/CatalogManager;->getStaticManager()Lmf/org/apache/xml/resolver/CatalogManager;

    move-result-object v0

    iget-object v0, v0, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    iput-object v0, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    iput-object v1, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->parserFactory:Lmf/javax/xml/parsers/SAXParserFactory;

    iput-object v1, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->parserClass:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->parserFactory:Lmf/javax/xml/parsers/SAXParserFactory;

    iput-object v1, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->parserClass:Ljava/lang/String;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->namespaceMap:Ljava/util/Hashtable;

    iput-object v1, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->saxParser:Lmf/org/apache/xml/resolver/readers/SAXCatalogParser;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->abandonHope:Z

    iput-object v1, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->loader:Ljava/lang/ClassLoader;

    invoke-static {}, Lmf/org/apache/xml/resolver/CatalogManager;->getStaticManager()Lmf/org/apache/xml/resolver/CatalogManager;

    move-result-object v0

    iget-object v0, v0, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    iput-object v0, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    iput-object p1, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->parserClass:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lmf/javax/xml/parsers/SAXParserFactory;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->parserFactory:Lmf/javax/xml/parsers/SAXParserFactory;

    iput-object v1, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->parserClass:Ljava/lang/String;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->namespaceMap:Ljava/util/Hashtable;

    iput-object v1, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->saxParser:Lmf/org/apache/xml/resolver/readers/SAXCatalogParser;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->abandonHope:Z

    iput-object v1, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->loader:Ljava/lang/ClassLoader;

    invoke-static {}, Lmf/org/apache/xml/resolver/CatalogManager;->getStaticManager()Lmf/org/apache/xml/resolver/CatalogManager;

    move-result-object v0

    iget-object v0, v0, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    iput-object v0, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    iput-object p1, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->parserFactory:Lmf/javax/xml/parsers/SAXParserFactory;

    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v0, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->saxParser:Lmf/org/apache/xml/resolver/readers/SAXCatalogParser;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->saxParser:Lmf/org/apache/xml/resolver/readers/SAXCatalogParser;

    invoke-interface {v0, p1, p2, p3}, Lmf/org/apache/xml/resolver/readers/SAXCatalogParser;->characters([CII)V

    :cond_0
    return-void
.end method

.method public endDocument()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v0, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->saxParser:Lmf/org/apache/xml/resolver/readers/SAXCatalogParser;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->saxParser:Lmf/org/apache/xml/resolver/readers/SAXCatalogParser;

    invoke-interface {v0}, Lmf/org/apache/xml/resolver/readers/SAXCatalogParser;->endDocument()V

    :cond_0
    return-void
.end method

.method public endElement(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v0, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->saxParser:Lmf/org/apache/xml/resolver/readers/SAXCatalogParser;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->saxParser:Lmf/org/apache/xml/resolver/readers/SAXCatalogParser;

    invoke-interface {v0, p1}, Lmf/org/apache/xml/resolver/readers/SAXCatalogParser;->endElement(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v0, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->saxParser:Lmf/org/apache/xml/resolver/readers/SAXCatalogParser;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->saxParser:Lmf/org/apache/xml/resolver/readers/SAXCatalogParser;

    invoke-interface {v0, p1, p2, p3}, Lmf/org/apache/xml/resolver/readers/SAXCatalogParser;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public endPrefixMapping(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v0, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->saxParser:Lmf/org/apache/xml/resolver/readers/SAXCatalogParser;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->saxParser:Lmf/org/apache/xml/resolver/readers/SAXCatalogParser;

    invoke-interface {v0, p1}, Lmf/org/apache/xml/resolver/readers/SAXCatalogParser;->endPrefixMapping(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public getCatalogParser(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    :goto_0
    iget-object v0, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->namespaceMap:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "{"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    const-string p1, ""

    goto :goto_0
.end method

.method public getParserClass()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->parserClass:Ljava/lang/String;

    return-object v0
.end method

.method public getParserFactory()Lmf/javax/xml/parsers/SAXParserFactory;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->parserFactory:Lmf/javax/xml/parsers/SAXParserFactory;

    return-object v0
.end method

.method public ignorableWhitespace([CII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v0, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->saxParser:Lmf/org/apache/xml/resolver/readers/SAXCatalogParser;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->saxParser:Lmf/org/apache/xml/resolver/readers/SAXCatalogParser;

    invoke-interface {v0, p1, p2, p3}, Lmf/org/apache/xml/resolver/readers/SAXCatalogParser;->ignorableWhitespace([CII)V

    :cond_0
    return-void
.end method

.method public processingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v0, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->saxParser:Lmf/org/apache/xml/resolver/readers/SAXCatalogParser;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->saxParser:Lmf/org/apache/xml/resolver/readers/SAXCatalogParser;

    invoke-interface {v0, p1, p2}, Lmf/org/apache/xml/resolver/readers/SAXCatalogParser;->processingInstruction(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public readCatalog(Lmf/org/apache/xml/resolver/Catalog;Ljava/io/InputStream;)V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmf/org/apache/xml/resolver/CatalogException;
        }
    .end annotation

    iget-object v12, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->parserFactory:Lmf/javax/xml/parsers/SAXParserFactory;

    if-nez v12, :cond_0

    iget-object v12, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->parserClass:Ljava/lang/String;

    if-nez v12, :cond_0

    iget-object v12, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const/4 v13, 0x1

    const-string v14, "Cannot read SAX catalog without a parser"

    invoke-virtual {v12, v13, v14}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;)V

    new-instance v12, Lmf/org/apache/xml/resolver/CatalogException;

    const/4 v13, 0x6

    invoke-direct {v12, v13}, Lmf/org/apache/xml/resolver/CatalogException;-><init>(I)V

    throw v12

    :cond_0
    invoke-virtual/range {p1 .. p1}, Lmf/org/apache/xml/resolver/Catalog;->getCatalogManager()Lmf/org/apache/xml/resolver/CatalogManager;

    move-result-object v12

    iget-object v12, v12, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    iput-object v12, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    invoke-virtual/range {p1 .. p1}, Lmf/org/apache/xml/resolver/Catalog;->getCatalogManager()Lmf/org/apache/xml/resolver/CatalogManager;

    move-result-object v12

    invoke-virtual {v12}, Lmf/org/apache/xml/resolver/CatalogManager;->getBootstrapResolver()Lmf/org/apache/xml/resolver/helpers/BootstrapResolver;

    move-result-object v1

    move-object/from16 v0, p1

    iput-object v0, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->catalog:Lmf/org/apache/xml/resolver/Catalog;

    :try_start_0
    iget-object v12, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->parserFactory:Lmf/javax/xml/parsers/SAXParserFactory;

    if-eqz v12, :cond_2

    iget-object v12, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->parserFactory:Lmf/javax/xml/parsers/SAXParserFactory;

    invoke-virtual {v12}, Lmf/javax/xml/parsers/SAXParserFactory;->newSAXParser()Lmf/javax/xml/parsers/SAXParser;

    move-result-object v7

    new-instance v10, Lmf/org/apache/xml/resolver/readers/SAXParserHandler;

    invoke-direct {v10}, Lmf/org/apache/xml/resolver/readers/SAXParserHandler;-><init>()V

    invoke-virtual {v10, p0}, Lmf/org/apache/xml/resolver/readers/SAXParserHandler;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    if-eqz v1, :cond_1

    invoke-virtual {v10, v1}, Lmf/org/apache/xml/resolver/readers/SAXParserHandler;->setEntityResolver(Lorg/xml/sax/EntityResolver;)V

    :cond_1
    new-instance v12, Lorg/xml/sax/InputSource;

    move-object/from16 v0, p2

    invoke-direct {v12, v0}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v7, v12, v10}, Lmf/javax/xml/parsers/SAXParser;->parse(Lorg/xml/sax/InputSource;Lorg/xml/sax/helpers/DefaultHandler;)V

    :goto_0
    return-void

    :cond_2
    iget-object v13, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->parserClass:Ljava/lang/String;

    const/4 v14, 0x1

    iget-object v12, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->loader:Ljava/lang/ClassLoader;

    if-eqz v12, :cond_4

    iget-object v12, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->loader:Ljava/lang/ClassLoader;

    :goto_1
    invoke-static {v13, v14, v12}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/xml/sax/Parser;

    invoke-interface {v7, p0}, Lorg/xml/sax/Parser;->setDocumentHandler(Lorg/xml/sax/DocumentHandler;)V

    if-eqz v1, :cond_3

    invoke-interface {v7, v1}, Lorg/xml/sax/Parser;->setEntityResolver(Lorg/xml/sax/EntityResolver;)V

    :cond_3
    new-instance v12, Lorg/xml/sax/InputSource;

    move-object/from16 v0, p2

    invoke-direct {v12, v0}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v7, v12}, Lorg/xml/sax/Parser;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lmf/javax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_4

    goto :goto_0

    :catch_0
    move-exception v2

    new-instance v12, Lmf/org/apache/xml/resolver/CatalogException;

    const/4 v13, 0x6

    invoke-direct {v12, v13}, Lmf/org/apache/xml/resolver/CatalogException;-><init>(I)V

    throw v12

    :cond_4
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lmf/javax/xml/parsers/ParserConfigurationException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_4

    move-result-object v12

    goto :goto_1

    :catch_1
    move-exception v5

    new-instance v12, Lmf/org/apache/xml/resolver/CatalogException;

    const/4 v13, 0x6

    invoke-direct {v12, v13}, Lmf/org/apache/xml/resolver/CatalogException;-><init>(I)V

    throw v12

    :catch_2
    move-exception v6

    new-instance v12, Lmf/org/apache/xml/resolver/CatalogException;

    const/4 v13, 0x6

    invoke-direct {v12, v13}, Lmf/org/apache/xml/resolver/CatalogException;-><init>(I)V

    throw v12

    :catch_3
    move-exception v8

    new-instance v12, Lmf/org/apache/xml/resolver/CatalogException;

    const/4 v13, 0x5

    invoke-direct {v12, v13}, Lmf/org/apache/xml/resolver/CatalogException;-><init>(I)V

    throw v12

    :catch_4
    move-exception v9

    invoke-virtual {v9}, Lorg/xml/sax/SAXException;->getException()Ljava/lang/Exception;

    move-result-object v3

    new-instance v11, Ljava/net/UnknownHostException;

    invoke-direct {v11}, Ljava/net/UnknownHostException;-><init>()V

    new-instance v4, Ljava/io/FileNotFoundException;

    invoke-direct {v4}, Ljava/io/FileNotFoundException;-><init>()V

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    if-ne v12, v13, :cond_5

    new-instance v12, Lmf/org/apache/xml/resolver/CatalogException;

    const/4 v13, 0x7

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v12, v13, v14}, Lmf/org/apache/xml/resolver/CatalogException;-><init>(ILjava/lang/String;)V

    throw v12

    :cond_5
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    if-ne v12, v13, :cond_6

    new-instance v12, Lmf/org/apache/xml/resolver/CatalogException;

    const/4 v13, 0x7

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v12, v13, v14}, Lmf/org/apache/xml/resolver/CatalogException;-><init>(ILjava/lang/String;)V

    throw v12

    :cond_6
    new-instance v12, Lmf/org/apache/xml/resolver/CatalogException;

    invoke-direct {v12, v9}, Lmf/org/apache/xml/resolver/CatalogException;-><init>(Ljava/lang/Exception;)V

    throw v12
.end method

.method public readCatalog(Lmf/org/apache/xml/resolver/Catalog;Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;,
            Lmf/org/apache/xml/resolver/CatalogException;
        }
    .end annotation

    const/4 v1, 0x0

    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {p1}, Lmf/org/apache/xml/resolver/Catalog;->getCatalogManager()Lmf/org/apache/xml/resolver/CatalogManager;

    move-result-object v3

    iget-object v3, v3, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    iput-object v3, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    :try_start_1
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-virtual {p0, p1, v3}, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->readCatalog(Lmf/org/apache/xml/resolver/Catalog;Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/net/URL;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "file:///"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {p1}, Lmf/org/apache/xml/resolver/Catalog;->getCatalogManager()Lmf/org/apache/xml/resolver/CatalogManager;

    move-result-object v3

    iget-object v3, v3, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const/4 v4, 0x1

    const-string v5, "Failed to load catalog, file not found"

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public setCatalogParser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    :goto_0
    iget-object v0, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->namespaceMap:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "{"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    const-string p1, ""

    goto :goto_0
.end method

.method public setClassLoader(Ljava/lang/ClassLoader;)V
    .locals 0

    iput-object p1, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->loader:Ljava/lang/ClassLoader;

    return-void
.end method

.method public setDocumentLocator(Lorg/xml/sax/Locator;)V
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->saxParser:Lmf/org/apache/xml/resolver/readers/SAXCatalogParser;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->saxParser:Lmf/org/apache/xml/resolver/readers/SAXCatalogParser;

    invoke-interface {v0, p1}, Lmf/org/apache/xml/resolver/readers/SAXCatalogParser;->setDocumentLocator(Lorg/xml/sax/Locator;)V

    :cond_0
    return-void
.end method

.method public setParserClass(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->parserClass:Ljava/lang/String;

    return-void
.end method

.method public setParserFactory(Lmf/javax/xml/parsers/SAXParserFactory;)V
    .locals 0

    iput-object p1, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->parserFactory:Lmf/javax/xml/parsers/SAXParserFactory;

    return-void
.end method

.method public skippedEntity(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v0, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->saxParser:Lmf/org/apache/xml/resolver/readers/SAXCatalogParser;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->saxParser:Lmf/org/apache/xml/resolver/readers/SAXCatalogParser;

    invoke-interface {v0, p1}, Lmf/org/apache/xml/resolver/readers/SAXCatalogParser;->skippedEntity(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public startDocument()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v0, 0x0

    iput-object v0, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->saxParser:Lmf/org/apache/xml/resolver/readers/SAXCatalogParser;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->abandonHope:Z

    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v9, 0x0

    const/4 v8, 0x2

    const/4 v7, 0x1

    iget-boolean v5, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->abandonHope:Z

    if-eqz v5, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v5, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->saxParser:Lmf/org/apache/xml/resolver/readers/SAXCatalogParser;

    if-nez v5, :cond_4

    invoke-virtual {p0, p1, p2}, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->getCatalogParser(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2

    iput-boolean v7, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->abandonHope:Z

    if-nez p1, :cond_1

    iget-object v5, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "No Catalog parser for "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v8, v6}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v5, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "No Catalog parser for {"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "}"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v8, v6}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 v6, 0x1

    :try_start_0
    iget-object v5, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->loader:Ljava/lang/ClassLoader;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->loader:Ljava/lang/ClassLoader;

    :goto_1
    invoke-static {v4, v6, v5}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lmf/org/apache/xml/resolver/readers/SAXCatalogParser;

    iput-object v5, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->saxParser:Lmf/org/apache/xml/resolver/readers/SAXCatalogParser;

    iget-object v5, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->saxParser:Lmf/org/apache/xml/resolver/readers/SAXCatalogParser;

    iget-object v6, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->catalog:Lmf/org/apache/xml/resolver/Catalog;

    invoke-interface {v5, v6}, Lmf/org/apache/xml/resolver/readers/SAXCatalogParser;->setCatalog(Lmf/org/apache/xml/resolver/Catalog;)V

    iget-object v5, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->saxParser:Lmf/org/apache/xml/resolver/readers/SAXCatalogParser;

    invoke-interface {v5}, Lmf/org/apache/xml/resolver/readers/SAXCatalogParser;->startDocument()V

    iget-object v5, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->saxParser:Lmf/org/apache/xml/resolver/readers/SAXCatalogParser;

    invoke-interface {v5, p1, p2, p3, p4}, Lmf/org/apache/xml/resolver/readers/SAXCatalogParser;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_0

    :catch_0
    move-exception v1

    iput-object v9, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->saxParser:Lmf/org/apache/xml/resolver/readers/SAXCatalogParser;

    iput-boolean v7, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->abandonHope:Z

    iget-object v5, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v8, v6}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;)V

    goto :goto_0

    :cond_3
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v5

    goto :goto_1

    :catch_1
    move-exception v3

    iput-object v9, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->saxParser:Lmf/org/apache/xml/resolver/readers/SAXCatalogParser;

    iput-boolean v7, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->abandonHope:Z

    iget-object v5, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    invoke-virtual {v3}, Ljava/lang/InstantiationException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v8, v6}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;)V

    goto/16 :goto_0

    :catch_2
    move-exception v2

    iput-object v9, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->saxParser:Lmf/org/apache/xml/resolver/readers/SAXCatalogParser;

    iput-boolean v7, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->abandonHope:Z

    iget-object v5, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    invoke-virtual {v2}, Ljava/lang/IllegalAccessException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v8, v6}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;)V

    goto/16 :goto_0

    :catch_3
    move-exception v0

    iput-object v9, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->saxParser:Lmf/org/apache/xml/resolver/readers/SAXCatalogParser;

    iput-boolean v7, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->abandonHope:Z

    iget-object v5, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    invoke-virtual {v0}, Ljava/lang/ClassCastException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v8, v6}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    iget-object v5, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->saxParser:Lmf/org/apache/xml/resolver/readers/SAXCatalogParser;

    invoke-interface {v5, p1, p2, p3, p4}, Lmf/org/apache/xml/resolver/readers/SAXCatalogParser;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    goto/16 :goto_0
.end method

.method public startElement(Ljava/lang/String;Lorg/xml/sax/AttributeList;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-boolean v8, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->abandonHope:Z

    if-eqz v8, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v8, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->saxParser:Lmf/org/apache/xml/resolver/readers/SAXCatalogParser;

    if-nez v8, :cond_7

    const-string v6, ""

    const/16 v8, 0x3a

    invoke-virtual {p1, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    if-lez v8, :cond_1

    const/4 v8, 0x0

    const/16 v9, 0x3a

    invoke-virtual {p1, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    invoke-virtual {p1, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    :cond_1
    move-object v4, p1

    const/16 v8, 0x3a

    invoke-virtual {v4, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    if-lez v8, :cond_2

    const/16 v8, 0x3a

    invoke-virtual {v4, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v4, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    :cond_2
    const/4 v5, 0x0

    const-string v8, ""

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    const-string/jumbo v8, "xmlns"

    invoke-interface {p2, v8}, Lorg/xml/sax/AttributeList;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :goto_1
    invoke-virtual {p0, v5, v4}, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->getCatalogParser(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_5

    const/4 v8, 0x1

    iput-boolean v8, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->abandonHope:Z

    if-nez v5, :cond_4

    iget-object v8, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const/4 v9, 0x2

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "No Catalog parser for "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;)V

    goto :goto_0

    :cond_3
    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "xmlns:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {p2, v8}, Lorg/xml/sax/AttributeList;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_4
    iget-object v8, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const/4 v9, 0x2

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "No Catalog parser for {"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "}"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    const/4 v9, 0x1

    :try_start_0
    iget-object v8, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->loader:Ljava/lang/ClassLoader;

    if-eqz v8, :cond_6

    iget-object v8, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->loader:Ljava/lang/ClassLoader;

    :goto_2
    invoke-static {v7, v9, v8}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lmf/org/apache/xml/resolver/readers/SAXCatalogParser;

    iput-object v8, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->saxParser:Lmf/org/apache/xml/resolver/readers/SAXCatalogParser;

    iget-object v8, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->saxParser:Lmf/org/apache/xml/resolver/readers/SAXCatalogParser;

    iget-object v9, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->catalog:Lmf/org/apache/xml/resolver/Catalog;

    invoke-interface {v8, v9}, Lmf/org/apache/xml/resolver/readers/SAXCatalogParser;->setCatalog(Lmf/org/apache/xml/resolver/Catalog;)V

    iget-object v8, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->saxParser:Lmf/org/apache/xml/resolver/readers/SAXCatalogParser;

    invoke-interface {v8}, Lmf/org/apache/xml/resolver/readers/SAXCatalogParser;->startDocument()V

    iget-object v8, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->saxParser:Lmf/org/apache/xml/resolver/readers/SAXCatalogParser;

    invoke-interface {v8, p1, p2}, Lmf/org/apache/xml/resolver/readers/SAXCatalogParser;->startElement(Ljava/lang/String;Lorg/xml/sax/AttributeList;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_3

    goto/16 :goto_0

    :catch_0
    move-exception v1

    const/4 v8, 0x0

    iput-object v8, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->saxParser:Lmf/org/apache/xml/resolver/readers/SAXCatalogParser;

    const/4 v8, 0x1

    iput-boolean v8, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->abandonHope:Z

    iget-object v8, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const/4 v9, 0x2

    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v8

    goto :goto_2

    :catch_1
    move-exception v3

    const/4 v8, 0x0

    iput-object v8, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->saxParser:Lmf/org/apache/xml/resolver/readers/SAXCatalogParser;

    const/4 v8, 0x1

    iput-boolean v8, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->abandonHope:Z

    iget-object v8, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const/4 v9, 0x2

    invoke-virtual {v3}, Ljava/lang/InstantiationException;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;)V

    goto/16 :goto_0

    :catch_2
    move-exception v2

    const/4 v8, 0x0

    iput-object v8, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->saxParser:Lmf/org/apache/xml/resolver/readers/SAXCatalogParser;

    const/4 v8, 0x1

    iput-boolean v8, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->abandonHope:Z

    iget-object v8, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const/4 v9, 0x2

    invoke-virtual {v2}, Ljava/lang/IllegalAccessException;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;)V

    goto/16 :goto_0

    :catch_3
    move-exception v0

    const/4 v8, 0x0

    iput-object v8, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->saxParser:Lmf/org/apache/xml/resolver/readers/SAXCatalogParser;

    const/4 v8, 0x1

    iput-boolean v8, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->abandonHope:Z

    iget-object v8, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const/4 v9, 0x2

    invoke-virtual {v0}, Ljava/lang/ClassCastException;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    iget-object v8, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->saxParser:Lmf/org/apache/xml/resolver/readers/SAXCatalogParser;

    invoke-interface {v8, p1, p2}, Lmf/org/apache/xml/resolver/readers/SAXCatalogParser;->startElement(Ljava/lang/String;Lorg/xml/sax/AttributeList;)V

    goto/16 :goto_0
.end method

.method public startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v0, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->saxParser:Lmf/org/apache/xml/resolver/readers/SAXCatalogParser;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->saxParser:Lmf/org/apache/xml/resolver/readers/SAXCatalogParser;

    invoke-interface {v0, p1, p2}, Lmf/org/apache/xml/resolver/readers/SAXCatalogParser;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
