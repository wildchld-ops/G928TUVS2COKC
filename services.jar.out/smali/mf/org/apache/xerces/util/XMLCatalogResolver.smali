.class public Lmf/org/apache/xerces/util/XMLCatalogResolver;
.super Ljava/lang/Object;
.source "XMLCatalogResolver.java"

# interfaces
.implements Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;
.implements Lorg/xml/sax/ext/EntityResolver2;
.implements Lmf/org/w3c/dom/ls/LSResourceResolver;


# instance fields
.field private fCatalog:Lmf/org/apache/xml/resolver/Catalog;

.field private fCatalogsChanged:Z

.field private fCatalogsList:[Ljava/lang/String;

.field private fPreferPublic:Z

.field private fResolverCatalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

.field private fUseLiteralSystemId:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lmf/org/apache/xerces/util/XMLCatalogResolver;-><init>([Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lmf/org/apache/xerces/util/XMLCatalogResolver;-><init>([Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;Z)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lmf/org/apache/xerces/util/XMLCatalogResolver;->fResolverCatalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    iput-object v1, p0, Lmf/org/apache/xerces/util/XMLCatalogResolver;->fCatalog:Lmf/org/apache/xml/resolver/Catalog;

    iput-object v1, p0, Lmf/org/apache/xerces/util/XMLCatalogResolver;->fCatalogsList:[Ljava/lang/String;

    iput-boolean v0, p0, Lmf/org/apache/xerces/util/XMLCatalogResolver;->fCatalogsChanged:Z

    iput-boolean v0, p0, Lmf/org/apache/xerces/util/XMLCatalogResolver;->fPreferPublic:Z

    iput-boolean v0, p0, Lmf/org/apache/xerces/util/XMLCatalogResolver;->fUseLiteralSystemId:Z

    invoke-direct {p0, p1, p2}, Lmf/org/apache/xerces/util/XMLCatalogResolver;->init([Ljava/lang/String;Z)V

    return-void
.end method

.method private attachReaderToCatalog(Lmf/org/apache/xml/resolver/Catalog;)V
    .locals 5

    new-instance v1, Lmf/org/apache/xerces/jaxp/SAXParserFactoryImpl;

    invoke-direct {v1}, Lmf/org/apache/xerces/jaxp/SAXParserFactoryImpl;-><init>()V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lmf/javax/xml/parsers/SAXParserFactory;->setNamespaceAware(Z)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lmf/javax/xml/parsers/SAXParserFactory;->setValidating(Z)V

    new-instance v0, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;

    invoke-direct {v0, v1}, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;-><init>(Lmf/javax/xml/parsers/SAXParserFactory;)V

    const-string/jumbo v2, "urn:oasis:names:tc:entity:xmlns:xml:catalog"

    const-string v3, "catalog"

    const-string/jumbo v4, "org.apache.xml.resolver.readers.OASISXMLCatalogReader"

    invoke-virtual {v0, v2, v3, v4}, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;->setCatalogParser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "application/xml"

    invoke-virtual {p1, v2, v0}, Lmf/org/apache/xml/resolver/Catalog;->addReader(Ljava/lang/String;Lmf/org/apache/xml/resolver/readers/CatalogReader;)V

    return-void
.end method

.method private init([Ljava/lang/String;Z)V
    .locals 3

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    :goto_0
    iput-object v0, p0, Lmf/org/apache/xerces/util/XMLCatalogResolver;->fCatalogsList:[Ljava/lang/String;

    iput-boolean p2, p0, Lmf/org/apache/xerces/util/XMLCatalogResolver;->fPreferPublic:Z

    new-instance v0, Lmf/org/apache/xml/resolver/CatalogManager;

    invoke-direct {v0}, Lmf/org/apache/xml/resolver/CatalogManager;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/util/XMLCatalogResolver;->fResolverCatalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    iget-object v0, p0, Lmf/org/apache/xerces/util/XMLCatalogResolver;->fResolverCatalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    invoke-virtual {v0, v2}, Lmf/org/apache/xml/resolver/CatalogManager;->setAllowOasisXMLCatalogPI(Z)V

    iget-object v0, p0, Lmf/org/apache/xerces/util/XMLCatalogResolver;->fResolverCatalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    const-string/jumbo v1, "org.apache.xml.resolver.Catalog"

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/resolver/CatalogManager;->setCatalogClassName(Ljava/lang/String;)V

    iget-object v0, p0, Lmf/org/apache/xerces/util/XMLCatalogResolver;->fResolverCatalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/resolver/CatalogManager;->setCatalogFiles(Ljava/lang/String;)V

    iget-object v0, p0, Lmf/org/apache/xerces/util/XMLCatalogResolver;->fResolverCatalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/resolver/CatalogManager;->setIgnoreMissingProperties(Z)V

    iget-object v0, p0, Lmf/org/apache/xerces/util/XMLCatalogResolver;->fResolverCatalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    iget-boolean v1, p0, Lmf/org/apache/xerces/util/XMLCatalogResolver;->fPreferPublic:Z

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/resolver/CatalogManager;->setPreferPublic(Z)V

    iget-object v0, p0, Lmf/org/apache/xerces/util/XMLCatalogResolver;->fResolverCatalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    invoke-virtual {v0, v2}, Lmf/org/apache/xml/resolver/CatalogManager;->setRelativeCatalogs(Z)V

    iget-object v0, p0, Lmf/org/apache/xerces/util/XMLCatalogResolver;->fResolverCatalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    invoke-virtual {v0, v2}, Lmf/org/apache/xml/resolver/CatalogManager;->setUseStaticCatalog(Z)V

    iget-object v0, p0, Lmf/org/apache/xerces/util/XMLCatalogResolver;->fResolverCatalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    invoke-virtual {v0, v2}, Lmf/org/apache/xml/resolver/CatalogManager;->setVerbosity(I)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private parseCatalogs()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v2, p0, Lmf/org/apache/xerces/util/XMLCatalogResolver;->fCatalogsList:[Ljava/lang/String;

    if-eqz v2, :cond_2

    new-instance v2, Lmf/org/apache/xml/resolver/Catalog;

    iget-object v3, p0, Lmf/org/apache/xerces/util/XMLCatalogResolver;->fResolverCatalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    invoke-direct {v2, v3}, Lmf/org/apache/xml/resolver/Catalog;-><init>(Lmf/org/apache/xml/resolver/CatalogManager;)V

    iput-object v2, p0, Lmf/org/apache/xerces/util/XMLCatalogResolver;->fCatalog:Lmf/org/apache/xml/resolver/Catalog;

    iget-object v2, p0, Lmf/org/apache/xerces/util/XMLCatalogResolver;->fCatalog:Lmf/org/apache/xml/resolver/Catalog;

    invoke-direct {p0, v2}, Lmf/org/apache/xerces/util/XMLCatalogResolver;->attachReaderToCatalog(Lmf/org/apache/xml/resolver/Catalog;)V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lmf/org/apache/xerces/util/XMLCatalogResolver;->fCatalogsList:[Ljava/lang/String;

    array-length v2, v2

    if-lt v1, v2, :cond_0

    :goto_1
    return-void

    :cond_0
    iget-object v2, p0, Lmf/org/apache/xerces/util/XMLCatalogResolver;->fCatalogsList:[Ljava/lang/String;

    aget-object v0, v2, v1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    iget-object v2, p0, Lmf/org/apache/xerces/util/XMLCatalogResolver;->fCatalog:Lmf/org/apache/xml/resolver/Catalog;

    invoke-virtual {v2, v0}, Lmf/org/apache/xml/resolver/Catalog;->parseCatalog(Ljava/lang/String;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    iput-object v2, p0, Lmf/org/apache/xerces/util/XMLCatalogResolver;->fCatalog:Lmf/org/apache/xml/resolver/Catalog;

    goto :goto_1
.end method


# virtual methods
.method public final declared-synchronized clear()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lmf/org/apache/xerces/util/XMLCatalogResolver;->fCatalog:Lmf/org/apache/xml/resolver/Catalog;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getCatalogList()[Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lmf/org/apache/xerces/util/XMLCatalogResolver;->fCatalogsList:[Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/util/XMLCatalogResolver;->fCatalogsList:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getExternalSubset(Ljava/lang/String;Ljava/lang/String;)Lorg/xml/sax/InputSource;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getPreferPublic()Z
    .locals 1

    iget-boolean v0, p0, Lmf/org/apache/xerces/util/XMLCatalogResolver;->fPreferPublic:Z

    return v0
.end method

.method public final getUseLiteralSystemId()Z
    .locals 1

    iget-boolean v0, p0, Lmf/org/apache/xerces/util/XMLCatalogResolver;->fUseLiteralSystemId:Z

    return v0
.end method

.method public resolveEntity(Lmf/org/apache/xerces/xni/XMLResourceIdentifier;)Lmf/org/apache/xerces/xni/parser/XMLInputSource;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/util/XMLCatalogResolver;->resolveIdentifier(Lmf/org/apache/xerces/xni/XMLResourceIdentifier;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lmf/org/apache/xerces/xni/parser/XMLInputSource;

    invoke-interface {p1}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->getPublicId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->getBaseSystemId()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v0, v3}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public resolveEntity(Ljava/lang/String;Ljava/lang/String;)Lorg/xml/sax/InputSource;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    invoke-virtual {p0, p1, p2}, Lmf/org/apache/xerces/util/XMLCatalogResolver;->resolvePublic(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_0
    if-eqz v0, :cond_2

    new-instance v1, Lorg/xml/sax/InputSource;

    invoke-direct {v1, v0}, Lorg/xml/sax/InputSource;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Lorg/xml/sax/InputSource;->setPublicId(Ljava/lang/String;)V

    :goto_1
    return-object v1

    :cond_1
    if-eqz p2, :cond_0

    invoke-virtual {p0, p2}, Lmf/org/apache/xerces/util/XMLCatalogResolver;->resolveSystem(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public resolveEntity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xml/sax/InputSource;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0}, Lmf/org/apache/xerces/util/XMLCatalogResolver;->getUseLiteralSystemId()Z

    move-result v3

    if-nez v3, :cond_0

    if-eqz p3, :cond_0

    :try_start_0
    new-instance v2, Lmf/org/apache/xerces/util/URI;

    new-instance v3, Lmf/org/apache/xerces/util/URI;

    invoke-direct {v3, p3}, Lmf/org/apache/xerces/util/URI;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3, p4}, Lmf/org/apache/xerces/util/URI;-><init>(Lmf/org/apache/xerces/util/URI;Ljava/lang/String;)V

    invoke-virtual {v2}, Lmf/org/apache/xerces/util/URI;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lmf/org/apache/xerces/util/URI$MalformedURIException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p4

    :cond_0
    :goto_0
    if-eqz p2, :cond_2

    if-eqz p4, :cond_2

    invoke-virtual {p0, p2, p4}, Lmf/org/apache/xerces/util/XMLCatalogResolver;->resolvePublic(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    :goto_1
    if-eqz v0, :cond_3

    new-instance v1, Lorg/xml/sax/InputSource;

    invoke-direct {v1, v0}, Lorg/xml/sax/InputSource;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Lorg/xml/sax/InputSource;->setPublicId(Ljava/lang/String;)V

    :goto_2
    return-object v1

    :cond_2
    if-eqz p4, :cond_1

    invoke-virtual {p0, p4}, Lmf/org/apache/xerces/util/XMLCatalogResolver;->resolveSystem(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    goto :goto_2

    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public resolveIdentifier(Lmf/org/apache/xerces/xni/XMLResourceIdentifier;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    const/4 v2, 0x0

    invoke-interface {p1}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->getNamespace()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/util/XMLCatalogResolver;->resolveURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_0
    if-nez v2, :cond_1

    invoke-interface {p1}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->getPublicId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lmf/org/apache/xerces/util/XMLCatalogResolver;->getUseLiteralSystemId()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {p1}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->getLiteralSystemId()Ljava/lang/String;

    move-result-object v3

    :goto_0
    if-eqz v1, :cond_3

    if-eqz v3, :cond_3

    invoke-virtual {p0, v1, v3}, Lmf/org/apache/xerces/util/XMLCatalogResolver;->resolvePublic(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_1
    :goto_1
    return-object v2

    :cond_2
    invoke-interface {p1}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->getExpandedSystemId()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_3
    if-eqz v3, :cond_1

    invoke-virtual {p0, v3}, Lmf/org/apache/xerces/util/XMLCatalogResolver;->resolveSystem(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method public final declared-synchronized resolvePublic(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lmf/org/apache/xerces/util/XMLCatalogResolver;->fCatalogsChanged:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lmf/org/apache/xerces/util/XMLCatalogResolver;->parseCatalogs()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmf/org/apache/xerces/util/XMLCatalogResolver;->fCatalogsChanged:Z

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/util/XMLCatalogResolver;->fCatalog:Lmf/org/apache/xml/resolver/Catalog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmf/org/apache/xerces/util/XMLCatalogResolver;->fCatalog:Lmf/org/apache/xml/resolver/Catalog;

    invoke-virtual {v0, p1, p2}, Lmf/org/apache/xml/resolver/Catalog;->resolvePublic(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public resolveResource(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lmf/org/w3c/dom/ls/LSInput;
    .locals 3

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    :try_start_0
    invoke-virtual {p0, p2}, Lmf/org/apache/xerces/util/XMLCatalogResolver;->resolveURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/util/XMLCatalogResolver;->getUseLiteralSystemId()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_1

    if-eqz p5, :cond_1

    :try_start_1
    new-instance v1, Lmf/org/apache/xerces/util/URI;

    new-instance v2, Lmf/org/apache/xerces/util/URI;

    invoke-direct {v2, p5}, Lmf/org/apache/xerces/util/URI;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2, p4}, Lmf/org/apache/xerces/util/URI;-><init>(Lmf/org/apache/xerces/util/URI;Ljava/lang/String;)V

    invoke-virtual {v1}, Lmf/org/apache/xerces/util/URI;->toString()Ljava/lang/String;
    :try_end_1
    .catch Lmf/org/apache/xerces/util/URI$MalformedURIException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object p4

    :cond_1
    :goto_0
    if-nez v0, :cond_2

    if-eqz p3, :cond_3

    if-eqz p4, :cond_3

    :try_start_2
    invoke-virtual {p0, p3, p4}, Lmf/org/apache/xerces/util/XMLCatalogResolver;->resolvePublic(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v0

    :cond_2
    :goto_1
    if-eqz v0, :cond_4

    new-instance v2, Lmf/org/apache/xerces/dom/DOMInputImpl;

    invoke-direct {v2, p3, v0, p5}, Lmf/org/apache/xerces/dom/DOMInputImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-object v2

    :cond_3
    if-eqz p4, :cond_2

    :try_start_3
    invoke-virtual {p0, p4}, Lmf/org/apache/xerces/util/XMLCatalogResolver;->resolveSystem(Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v0

    goto :goto_1

    :cond_4
    const/4 v2, 0x0

    goto :goto_2

    :catch_0
    move-exception v2

    goto :goto_1

    :catch_1
    move-exception v2

    goto :goto_0
.end method

.method public final declared-synchronized resolveSystem(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lmf/org/apache/xerces/util/XMLCatalogResolver;->fCatalogsChanged:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lmf/org/apache/xerces/util/XMLCatalogResolver;->parseCatalogs()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmf/org/apache/xerces/util/XMLCatalogResolver;->fCatalogsChanged:Z

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/util/XMLCatalogResolver;->fCatalog:Lmf/org/apache/xml/resolver/Catalog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmf/org/apache/xerces/util/XMLCatalogResolver;->fCatalog:Lmf/org/apache/xml/resolver/Catalog;

    invoke-virtual {v0, p1}, Lmf/org/apache/xml/resolver/Catalog;->resolveSystem(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized resolveURI(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lmf/org/apache/xerces/util/XMLCatalogResolver;->fCatalogsChanged:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lmf/org/apache/xerces/util/XMLCatalogResolver;->parseCatalogs()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmf/org/apache/xerces/util/XMLCatalogResolver;->fCatalogsChanged:Z

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/util/XMLCatalogResolver;->fCatalog:Lmf/org/apache/xml/resolver/Catalog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmf/org/apache/xerces/util/XMLCatalogResolver;->fCatalog:Lmf/org/apache/xml/resolver/Catalog;

    invoke-virtual {v0, p1}, Lmf/org/apache/xml/resolver/Catalog;->resolveURI(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized setCatalogList([Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lmf/org/apache/xerces/util/XMLCatalogResolver;->fCatalogsChanged:Z

    if-eqz p1, :cond_0

    invoke-virtual {p1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    :goto_0
    iput-object v0, p0, Lmf/org/apache/xerces/util/XMLCatalogResolver;->fCatalogsList:[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final setPreferPublic(Z)V
    .locals 1

    iput-boolean p1, p0, Lmf/org/apache/xerces/util/XMLCatalogResolver;->fPreferPublic:Z

    iget-object v0, p0, Lmf/org/apache/xerces/util/XMLCatalogResolver;->fResolverCatalogManager:Lmf/org/apache/xml/resolver/CatalogManager;

    invoke-virtual {v0, p1}, Lmf/org/apache/xml/resolver/CatalogManager;->setPreferPublic(Z)V

    return-void
.end method

.method public final setUseLiteralSystemId(Z)V
    .locals 0

    iput-boolean p1, p0, Lmf/org/apache/xerces/util/XMLCatalogResolver;->fUseLiteralSystemId:Z

    return-void
.end method
