.class public Lmf/org/apache/xerces/jaxp/SAXParserFactoryImpl;
.super Lmf/javax/xml/parsers/SAXParserFactory;
.source "SAXParserFactoryImpl.java"


# static fields
.field private static final NAMESPACES_FEATURE:Ljava/lang/String; = "http://xml.org/sax/features/namespaces"

.field private static final VALIDATION_FEATURE:Ljava/lang/String; = "http://xml.org/sax/features/validation"

.field private static final XINCLUDE_FEATURE:Ljava/lang/String; = "http://apache.org/xml/features/xinclude"


# instance fields
.field private fSecureProcess:Z

.field private features:Ljava/util/Hashtable;

.field private grammar:Lmf/javax/xml/validation/Schema;

.field private isXIncludeAware:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lmf/javax/xml/parsers/SAXParserFactory;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmf/org/apache/xerces/jaxp/SAXParserFactoryImpl;->fSecureProcess:Z

    return-void
.end method

.method private newSAXParserImpl()Lmf/org/apache/xerces/jaxp/SAXParserImpl;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/javax/xml/parsers/ParserConfigurationException;,
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    :try_start_0
    new-instance v1, Lmf/org/apache/xerces/jaxp/SAXParserImpl;

    iget-object v3, p0, Lmf/org/apache/xerces/jaxp/SAXParserFactoryImpl;->features:Ljava/util/Hashtable;

    invoke-direct {v1, p0, v3}, Lmf/org/apache/xerces/jaxp/SAXParserImpl;-><init>(Lmf/org/apache/xerces/jaxp/SAXParserFactoryImpl;Ljava/util/Hashtable;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXNotRecognizedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_2

    return-object v1

    :catch_0
    move-exception v0

    throw v0

    :catch_1
    move-exception v0

    throw v0

    :catch_2
    move-exception v2

    new-instance v3, Lmf/javax/xml/parsers/ParserConfigurationException;

    invoke-virtual {v2}, Lorg/xml/sax/SAXException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lmf/javax/xml/parsers/ParserConfigurationException;-><init>(Ljava/lang/String;)V

    throw v3
.end method


# virtual methods
.method public getFeature(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/javax/xml/parsers/ParserConfigurationException;,
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    const-string/jumbo v0, "http://javax.xml.XMLConstants/feature/secure-processing"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lmf/org/apache/xerces/jaxp/SAXParserFactoryImpl;->fSecureProcess:Z

    :goto_0
    return v0

    :cond_1
    const-string/jumbo v0, "http://xml.org/sax/features/namespaces"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lmf/org/apache/xerces/jaxp/SAXParserFactoryImpl;->isNamespaceAware()Z

    move-result v0

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "http://xml.org/sax/features/validation"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lmf/org/apache/xerces/jaxp/SAXParserFactoryImpl;->isValidating()Z

    move-result v0

    goto :goto_0

    :cond_3
    const-string/jumbo v0, "http://apache.org/xml/features/xinclude"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lmf/org/apache/xerces/jaxp/SAXParserFactoryImpl;->isXIncludeAware()Z

    move-result v0

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Lmf/org/apache/xerces/jaxp/SAXParserFactoryImpl;->newSAXParserImpl()Lmf/org/apache/xerces/jaxp/SAXParserImpl;

    move-result-object v0

    invoke-virtual {v0}, Lmf/org/apache/xerces/jaxp/SAXParserImpl;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/xml/sax/XMLReader;->getFeature(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public getSchema()Lmf/javax/xml/validation/Schema;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/SAXParserFactoryImpl;->grammar:Lmf/javax/xml/validation/Schema;

    return-object v0
.end method

.method public isXIncludeAware()Z
    .locals 1

    iget-boolean v0, p0, Lmf/org/apache/xerces/jaxp/SAXParserFactoryImpl;->isXIncludeAware:Z

    return v0
.end method

.method public newSAXParser()Lmf/javax/xml/parsers/SAXParser;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/javax/xml/parsers/ParserConfigurationException;
        }
    .end annotation

    :try_start_0
    new-instance v0, Lmf/org/apache/xerces/jaxp/SAXParserImpl;

    iget-object v2, p0, Lmf/org/apache/xerces/jaxp/SAXParserFactoryImpl;->features:Ljava/util/Hashtable;

    iget-boolean v3, p0, Lmf/org/apache/xerces/jaxp/SAXParserFactoryImpl;->fSecureProcess:Z

    invoke-direct {v0, p0, v2, v3}, Lmf/org/apache/xerces/jaxp/SAXParserImpl;-><init>(Lmf/org/apache/xerces/jaxp/SAXParserFactoryImpl;Ljava/util/Hashtable;Z)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v1

    new-instance v2, Lmf/javax/xml/parsers/ParserConfigurationException;

    invoke-virtual {v1}, Lorg/xml/sax/SAXException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lmf/javax/xml/parsers/ParserConfigurationException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/javax/xml/parsers/ParserConfigurationException;,
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    :cond_0
    const-string/jumbo v1, "http://javax.xml.XMLConstants/feature/secure-processing"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iput-boolean p2, p0, Lmf/org/apache/xerces/jaxp/SAXParserFactoryImpl;->fSecureProcess:Z

    :goto_0
    return-void

    :cond_1
    const-string/jumbo v1, "http://xml.org/sax/features/namespaces"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, p2}, Lmf/org/apache/xerces/jaxp/SAXParserFactoryImpl;->setNamespaceAware(Z)V

    goto :goto_0

    :cond_2
    const-string/jumbo v1, "http://xml.org/sax/features/validation"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0, p2}, Lmf/org/apache/xerces/jaxp/SAXParserFactoryImpl;->setValidating(Z)V

    goto :goto_0

    :cond_3
    const-string/jumbo v1, "http://apache.org/xml/features/xinclude"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0, p2}, Lmf/org/apache/xerces/jaxp/SAXParserFactoryImpl;->setXIncludeAware(Z)V

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/SAXParserFactoryImpl;->features:Ljava/util/Hashtable;

    if-nez v1, :cond_5

    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lmf/org/apache/xerces/jaxp/SAXParserFactoryImpl;->features:Ljava/util/Hashtable;

    :cond_5
    iget-object v2, p0, Lmf/org/apache/xerces/jaxp/SAXParserFactoryImpl;->features:Ljava/util/Hashtable;

    if-eqz p2, :cond_6

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_1
    invoke-virtual {v2, p1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    invoke-direct {p0}, Lmf/org/apache/xerces/jaxp/SAXParserFactoryImpl;->newSAXParserImpl()Lmf/org/apache/xerces/jaxp/SAXParserImpl;
    :try_end_0
    .catch Lorg/xml/sax/SAXNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXNotRecognizedException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/SAXParserFactoryImpl;->features:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    throw v0

    :cond_6
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_1

    :catch_1
    move-exception v0

    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/SAXParserFactoryImpl;->features:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    throw v0
.end method

.method public setSchema(Lmf/javax/xml/validation/Schema;)V
    .locals 0

    iput-object p1, p0, Lmf/org/apache/xerces/jaxp/SAXParserFactoryImpl;->grammar:Lmf/javax/xml/validation/Schema;

    return-void
.end method

.method public setXIncludeAware(Z)V
    .locals 0

    iput-boolean p1, p0, Lmf/org/apache/xerces/jaxp/SAXParserFactoryImpl;->isXIncludeAware:Z

    return-void
.end method
