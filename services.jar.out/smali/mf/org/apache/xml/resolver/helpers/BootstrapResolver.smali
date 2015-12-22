.class public Lmf/org/apache/xml/resolver/helpers/BootstrapResolver;
.super Ljava/lang/Object;
.source "BootstrapResolver.java"

# interfaces
.implements Lorg/xml/sax/EntityResolver;
.implements Lmf/javax/xml/transform/URIResolver;


# static fields
.field public static final xCatalogPubId:Ljava/lang/String; = "-//DTD XCatalog//EN"

.field public static final xmlCatalogPubId:Ljava/lang/String; = "-//OASIS//DTD XML Catalogs V1.0//EN"

.field public static final xmlCatalogRNG:Ljava/lang/String; = "http://www.oasis-open.org/committees/entity/release/1.0/catalog.rng"

.field public static final xmlCatalogSysId:Ljava/lang/String; = "http://www.oasis-open.org/committees/entity/release/1.0/catalog.dtd"

.field public static final xmlCatalogXSD:Ljava/lang/String; = "http://www.oasis-open.org/committees/entity/release/1.0/catalog.xsd"


# instance fields
.field private publicMap:Ljava/util/Hashtable;

.field private systemMap:Ljava/util/Hashtable;

.field private uriMap:Ljava/util/Hashtable;


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lmf/org/apache/xml/resolver/helpers/BootstrapResolver;->publicMap:Ljava/util/Hashtable;

    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lmf/org/apache/xml/resolver/helpers/BootstrapResolver;->systemMap:Ljava/util/Hashtable;

    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lmf/org/apache/xml/resolver/helpers/BootstrapResolver;->uriMap:Ljava/util/Hashtable;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "/org/apache/xml/resolver/etc/catalog.dtd"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lmf/org/apache/xml/resolver/helpers/BootstrapResolver;->publicMap:Ljava/util/Hashtable;

    const-string v2, "-//OASIS//DTD XML Catalogs V1.0//EN"

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lmf/org/apache/xml/resolver/helpers/BootstrapResolver;->systemMap:Ljava/util/Hashtable;

    const-string/jumbo v2, "http://www.oasis-open.org/committees/entity/release/1.0/catalog.dtd"

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "/org/apache/xml/resolver/etc/catalog.rng"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lmf/org/apache/xml/resolver/helpers/BootstrapResolver;->uriMap:Ljava/util/Hashtable;

    const-string/jumbo v2, "http://www.oasis-open.org/committees/entity/release/1.0/catalog.rng"

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "/org/apache/xml/resolver/etc/catalog.xsd"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lmf/org/apache/xml/resolver/helpers/BootstrapResolver;->uriMap:Ljava/util/Hashtable;

    const-string/jumbo v2, "http://www.oasis-open.org/committees/entity/release/1.0/catalog.xsd"

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "/org/apache/xml/resolver/etc/xcatalog.dtd"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v1, p0, Lmf/org/apache/xml/resolver/helpers/BootstrapResolver;->publicMap:Ljava/util/Hashtable;

    const-string v2, "-//DTD XCatalog//EN"

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-void
.end method

.method private makeAbsolute(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    :try_start_0
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/net/URL;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    :goto_0
    return-object p1

    :catch_0
    move-exception v1

    :try_start_1
    invoke-static {p1}, Lmf/org/apache/xml/resolver/helpers/FileURL;->makeURL(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object p1

    goto :goto_0

    :catch_1
    move-exception v2

    goto :goto_0
.end method


# virtual methods
.method public resolve(Ljava/lang/String;Ljava/lang/String;)Lmf/javax/xml/transform/Source;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/javax/xml/transform/TransformerException;
        }
    .end annotation

    move-object v7, p1

    const/4 v2, 0x0

    const-string v10, "#"

    invoke-virtual {p1, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_0

    const/4 v10, 0x0

    invoke-virtual {p1, v10, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    add-int/lit8 v10, v3, 0x1

    invoke-virtual {p1, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    :cond_0
    const/4 v5, 0x0

    if-eqz p1, :cond_1

    iget-object v10, p0, Lmf/org/apache/xml/resolver/helpers/BootstrapResolver;->uriMap:Ljava/util/Hashtable;

    invoke-virtual {v10, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    iget-object v10, p0, Lmf/org/apache/xml/resolver/helpers/BootstrapResolver;->uriMap:Ljava/util/Hashtable;

    invoke-virtual {v10, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    :cond_1
    if-nez v5, :cond_2

    const/4 v8, 0x0

    if-nez p2, :cond_3

    :try_start_0
    new-instance v9, Ljava/net/URL;

    invoke-direct {v9, v7}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v9}, Ljava/net/URL;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v5

    :cond_2
    :goto_0
    new-instance v6, Lmf/javax/xml/transform/sax/SAXSource;

    invoke-direct {v6}, Lmf/javax/xml/transform/sax/SAXSource;-><init>()V

    new-instance v10, Lorg/xml/sax/InputSource;

    invoke-direct {v10, v5}, Lorg/xml/sax/InputSource;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v10}, Lmf/javax/xml/transform/sax/SAXSource;->setInputSource(Lorg/xml/sax/InputSource;)V

    :goto_1
    return-object v6

    :cond_3
    :try_start_2
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v10

    if-nez v10, :cond_4

    move-object v8, v1

    :goto_2
    invoke-virtual {v8}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_4
    new-instance v10, Ljava/net/URL;

    invoke-direct {v10, v1, v7}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v8, v10

    goto :goto_2

    :catch_0
    move-exception v4

    :goto_3
    invoke-direct {p0, p2}, Lmf/org/apache/xml/resolver/helpers/BootstrapResolver;->makeAbsolute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_5

    invoke-virtual {p0, p1, v0}, Lmf/org/apache/xml/resolver/helpers/BootstrapResolver;->resolve(Ljava/lang/String;Ljava/lang/String;)Lmf/javax/xml/transform/Source;

    move-result-object v6

    goto :goto_1

    :cond_5
    new-instance v10, Lmf/javax/xml/transform/TransformerException;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Malformed URL "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "(base "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11, v4}, Lmf/javax/xml/transform/TransformerException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v10

    :catch_1
    move-exception v4

    move-object v8, v9

    goto :goto_3
.end method

.method public resolveEntity(Ljava/lang/String;Ljava/lang/String;)Lorg/xml/sax/InputSource;
    .locals 7

    const/4 v5, 0x0

    const/4 v3, 0x0

    if-eqz p2, :cond_1

    iget-object v6, p0, Lmf/org/apache/xml/resolver/helpers/BootstrapResolver;->systemMap:Ljava/util/Hashtable;

    invoke-virtual {v6, p2}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lmf/org/apache/xml/resolver/helpers/BootstrapResolver;->systemMap:Ljava/util/Hashtable;

    invoke-virtual {v6, p2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    :cond_0
    :goto_0
    if-eqz v3, :cond_2

    :try_start_0
    new-instance v1, Lorg/xml/sax/InputSource;

    invoke-direct {v1, v3}, Lorg/xml/sax/InputSource;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Lorg/xml/sax/InputSource;->setPublicId(Ljava/lang/String;)V

    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/xml/sax/InputSource;->setByteStream(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-object v1

    :cond_1
    if-eqz p1, :cond_0

    iget-object v6, p0, Lmf/org/apache/xml/resolver/helpers/BootstrapResolver;->publicMap:Ljava/util/Hashtable;

    invoke-virtual {v6, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lmf/org/apache/xml/resolver/helpers/BootstrapResolver;->publicMap:Ljava/util/Hashtable;

    invoke-virtual {v6, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v1, v5

    goto :goto_1

    :cond_2
    move-object v1, v5

    goto :goto_1
.end method
