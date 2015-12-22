.class public Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;
.super Ljava/lang/Object;
.source "CoreDOMImplementationImpl.java"

# interfaces
.implements Lmf/org/w3c/dom/DOMImplementation;
.implements Lmf/org/w3c/dom/ls/DOMImplementationLS;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl$RevalidationHandlerHolder;,
        Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl$XMLDTDLoaderHolder;
    }
.end annotation


# static fields
.field private static final SIZE:I = 0x2

.field static final singleton:Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;


# instance fields
.field private docAndDoctypeCounter:I

.field private freeSchemaValidatorIndex:I

.field private freeXML10DTDLoaderIndex:I

.field private freeXML10DTDValidatorIndex:I

.field private freeXML11DTDLoaderIndex:I

.field private freeXML11DTDValidatorIndex:I

.field private schemaValidators:[Ljava/lang/ref/SoftReference;

.field private schemaValidatorsCurrentSize:I

.field private xml10DTDLoaderCurrentSize:I

.field private xml10DTDLoaders:[Ljava/lang/ref/SoftReference;

.field private xml10DTDValidators:[Ljava/lang/ref/SoftReference;

.field private xml10DTDValidatorsCurrentSize:I

.field private xml11DTDLoaderCurrentSize:I

.field private xml11DTDLoaders:[Ljava/lang/ref/SoftReference;

.field private xml11DTDValidators:[Ljava/lang/ref/SoftReference;

.field private xml11DTDValidatorsCurrentSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;

    invoke-direct {v0}, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;-><init>()V

    sput-object v0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->singleton:Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, -0x1

    const/4 v1, 0x2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, v1, [Ljava/lang/ref/SoftReference;

    iput-object v0, p0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->schemaValidators:[Ljava/lang/ref/SoftReference;

    new-array v0, v1, [Ljava/lang/ref/SoftReference;

    iput-object v0, p0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->xml10DTDValidators:[Ljava/lang/ref/SoftReference;

    new-array v0, v1, [Ljava/lang/ref/SoftReference;

    iput-object v0, p0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->xml11DTDValidators:[Ljava/lang/ref/SoftReference;

    iput v2, p0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->freeSchemaValidatorIndex:I

    iput v2, p0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->freeXML10DTDValidatorIndex:I

    iput v2, p0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->freeXML11DTDValidatorIndex:I

    iput v1, p0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->schemaValidatorsCurrentSize:I

    iput v1, p0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->xml10DTDValidatorsCurrentSize:I

    iput v1, p0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->xml11DTDValidatorsCurrentSize:I

    new-array v0, v1, [Ljava/lang/ref/SoftReference;

    iput-object v0, p0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->xml10DTDLoaders:[Ljava/lang/ref/SoftReference;

    new-array v0, v1, [Ljava/lang/ref/SoftReference;

    iput-object v0, p0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->xml11DTDLoaders:[Ljava/lang/ref/SoftReference;

    iput v2, p0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->freeXML10DTDLoaderIndex:I

    iput v2, p0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->freeXML11DTDLoaderIndex:I

    iput v1, p0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->xml10DTDLoaderCurrentSize:I

    iput v1, p0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->xml11DTDLoaderCurrentSize:I

    const/4 v0, 0x0

    iput v0, p0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->docAndDoctypeCounter:I

    return-void
.end method

.method public static getDOMImplementation()Lmf/org/w3c/dom/DOMImplementation;
    .locals 1

    sget-object v0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->singleton:Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;

    return-object v0
.end method


# virtual methods
.method protected declared-synchronized assignDocTypeNumber()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->docAndDoctypeCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->docAndDoctypeCounter:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized assignDocumentNumber()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->docAndDoctypeCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->docAndDoctypeCounter:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final checkQName(Ljava/lang/String;)V
    .locals 10

    const/16 v6, 0x3a

    const/4 v9, 0x5

    const/4 v8, 0x0

    invoke-virtual {p1, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    invoke-virtual {p1, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v1, :cond_0

    add-int/lit8 v6, v3, -0x1

    if-eq v1, v6, :cond_0

    if-eq v2, v1, :cond_1

    :cond_0
    const-string/jumbo v6, "http://www.w3.org/dom/DOMTR"

    const-string v7, "NAMESPACE_ERR"

    invoke-static {v6, v7, v8}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-instance v6, Lmf/org/w3c/dom/DOMException;

    const/16 v7, 0xe

    invoke-direct {v6, v7, v4}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v6

    :cond_1
    const/4 v5, 0x0

    if-lez v1, :cond_3

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Lmf/org/apache/xerces/util/XMLChar;->isNCNameStart(I)Z

    move-result v6

    if-nez v6, :cond_2

    const-string/jumbo v6, "http://www.w3.org/dom/DOMTR"

    const-string v7, "INVALID_CHARACTER_ERR"

    invoke-static {v6, v7, v8}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-instance v6, Lmf/org/w3c/dom/DOMException;

    invoke-direct {v6, v9, v4}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v6

    :cond_2
    const/4 v0, 0x1

    :goto_0
    if-lt v0, v1, :cond_4

    add-int/lit8 v5, v1, 0x1

    :cond_3
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Lmf/org/apache/xerces/util/XMLChar;->isNCNameStart(I)Z

    move-result v6

    if-nez v6, :cond_6

    const-string/jumbo v6, "http://www.w3.org/dom/DOMTR"

    const-string v7, "INVALID_CHARACTER_ERR"

    invoke-static {v6, v7, v8}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-instance v6, Lmf/org/w3c/dom/DOMException;

    invoke-direct {v6, v9, v4}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v6

    :cond_4
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Lmf/org/apache/xerces/util/XMLChar;->isNCName(I)Z

    move-result v6

    if-nez v6, :cond_5

    const-string/jumbo v6, "http://www.w3.org/dom/DOMTR"

    const-string v7, "INVALID_CHARACTER_ERR"

    invoke-static {v6, v7, v8}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-instance v6, Lmf/org/w3c/dom/DOMException;

    invoke-direct {v6, v9, v4}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v6

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_6
    add-int/lit8 v0, v5, 0x1

    :goto_1
    if-lt v0, v3, :cond_7

    return-void

    :cond_7
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Lmf/org/apache/xerces/util/XMLChar;->isNCName(I)Z

    move-result v6

    if-nez v6, :cond_8

    const-string/jumbo v6, "http://www.w3.org/dom/DOMTR"

    const-string v7, "INVALID_CHARACTER_ERR"

    invoke-static {v6, v7, v8}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-instance v6, Lmf/org/w3c/dom/DOMException;

    invoke-direct {v6, v9, v4}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v6

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method protected createDocument(Lmf/org/w3c/dom/DocumentType;)Lmf/org/apache/xerces/dom/CoreDocumentImpl;
    .locals 1

    new-instance v0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    invoke-direct {v0, p1}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;-><init>(Lmf/org/w3c/dom/DocumentType;)V

    return-object v0
.end method

.method public createDocument(Ljava/lang/String;Ljava/lang/String;Lmf/org/w3c/dom/DocumentType;)Lmf/org/w3c/dom/Document;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    if-eqz p3, :cond_0

    invoke-interface {p3}, Lmf/org/w3c/dom/DocumentType;->getOwnerDocument()Lmf/org/w3c/dom/Document;

    move-result-object v3

    if-eqz v3, :cond_0

    const-string/jumbo v3, "http://www.w3.org/dom/DOMTR"

    const-string v4, "WRONG_DOCUMENT_ERR"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lmf/org/w3c/dom/DOMException;

    const/4 v4, 0x4

    invoke-direct {v3, v4, v2}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v3

    :cond_0
    invoke-virtual {p0, p3}, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->createDocument(Lmf/org/w3c/dom/DocumentType;)Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    move-result-object v0

    if-nez p2, :cond_1

    if-eqz p1, :cond_2

    :cond_1
    invoke-virtual {v0, p1, p2}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lmf/org/w3c/dom/Element;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->appendChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    :cond_2
    return-object v0
.end method

.method public createDocumentType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lmf/org/w3c/dom/DocumentType;
    .locals 2

    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->checkQName(Ljava/lang/String;)V

    new-instance v0, Lmf/org/apache/xerces/dom/DocumentTypeImpl;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1, p2, p3}, Lmf/org/apache/xerces/dom/DocumentTypeImpl;-><init>(Lmf/org/apache/xerces/dom/CoreDocumentImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public createLSInput()Lmf/org/w3c/dom/ls/LSInput;
    .locals 1

    new-instance v0, Lmf/org/apache/xerces/dom/DOMInputImpl;

    invoke-direct {v0}, Lmf/org/apache/xerces/dom/DOMInputImpl;-><init>()V

    return-object v0
.end method

.method public createLSOutput()Lmf/org/w3c/dom/ls/LSOutput;
    .locals 1

    new-instance v0, Lmf/org/apache/xerces/dom/DOMOutputImpl;

    invoke-direct {v0}, Lmf/org/apache/xerces/dom/DOMOutputImpl;-><init>()V

    return-object v0
.end method

.method public createLSParser(SLjava/lang/String;)Lmf/org/w3c/dom/ls/LSParser;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    if-eqz p2, :cond_1

    const-string/jumbo v1, "http://www.w3.org/2001/XMLSchema"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "http://www.w3.org/TR/REC-xml"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const-string/jumbo v1, "http://www.w3.org/dom/DOMTR"

    const-string v2, "NOT_SUPPORTED_ERR"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lmf/org/w3c/dom/DOMException;

    const/16 v2, 0x9

    invoke-direct {v1, v2, v0}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v1

    :cond_1
    if-eqz p2, :cond_2

    const-string/jumbo v1, "http://www.w3.org/TR/REC-xml"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Lmf/org/apache/xerces/parsers/DOMParserImpl;

    const-string/jumbo v2, "mf.org.apache.xerces.parsers.DTDConfiguration"

    invoke-direct {v1, v2, p2}, Lmf/org/apache/xerces/parsers/DOMParserImpl;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v1

    :cond_2
    new-instance v1, Lmf/org/apache/xerces/parsers/DOMParserImpl;

    const-string/jumbo v2, "mf.org.apache.xerces.parsers.XIncludeAwareParserConfiguration"

    invoke-direct {v1, v2, p2}, Lmf/org/apache/xerces/parsers/DOMParserImpl;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public createLSSerializer()Lmf/org/w3c/dom/ls/LSSerializer;
    .locals 4

    :try_start_0
    const-string/jumbo v1, "org.apache.xml.serializer.dom3.LSSerializerImpl"

    invoke-static {}, Lmf/org/apache/xerces/dom/ObjectFactory;->findClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lmf/org/apache/xerces/dom/ObjectFactory;->findProviderClass(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmf/org/w3c/dom/ls/LSSerializer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    :catch_0
    move-exception v1

    new-instance v1, Lmf/org/apache/xml/serialize/DOMSerializerImpl;

    invoke-direct {v1}, Lmf/org/apache/xml/serialize/DOMSerializerImpl;-><init>()V

    goto :goto_0
.end method

.method final declared-synchronized getDTDLoader(Ljava/lang/String;)Lmf/org/apache/xerces/impl/dtd/XMLDTDLoader;
    .locals 6

    monitor-enter p0

    :try_start_0
    const-string v3, "1.1"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :goto_0
    iget v3, p0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->freeXML11DTDLoaderIndex:I

    if-gez v3, :cond_0

    const-string/jumbo v3, "mf.org.apache.xerces.impl.dtd.XML11DTDProcessor"

    invoke-static {}, Lmf/org/apache/xerces/dom/ObjectFactory;->findClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Lmf/org/apache/xerces/dom/ObjectFactory;->newInstance(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmf/org/apache/xerces/impl/dtd/XMLDTDLoader;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    :goto_1
    monitor-exit p0

    return-object v2

    :cond_0
    :try_start_1
    iget-object v3, p0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->xml11DTDLoaders:[Ljava/lang/ref/SoftReference;

    iget v4, p0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->freeXML11DTDLoaderIndex:I

    aget-object v1, v3, v4

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl$XMLDTDLoaderHolder;

    if-eqz v0, :cond_1

    iget-object v3, v0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl$XMLDTDLoaderHolder;->loader:Lmf/org/apache/xerces/impl/dtd/XMLDTDLoader;

    if-eqz v3, :cond_1

    iget-object v2, v0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl$XMLDTDLoaderHolder;->loader:Lmf/org/apache/xerces/impl/dtd/XMLDTDLoader;

    const/4 v3, 0x0

    iput-object v3, v0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl$XMLDTDLoaderHolder;->loader:Lmf/org/apache/xerces/impl/dtd/XMLDTDLoader;

    iget v3, p0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->freeXML11DTDLoaderIndex:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->freeXML11DTDLoaderIndex:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    :cond_1
    :try_start_2
    iget-object v3, p0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->xml11DTDLoaders:[Ljava/lang/ref/SoftReference;

    iget v4, p0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->freeXML11DTDLoaderIndex:I

    add-int/lit8 v5, v4, -0x1

    iput v5, p0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->freeXML11DTDLoaderIndex:I

    const/4 v5, 0x0

    aput-object v5, v3, v4

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->xml10DTDLoaders:[Ljava/lang/ref/SoftReference;

    iget v4, p0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->freeXML10DTDLoaderIndex:I

    aget-object v1, v3, v4

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl$XMLDTDLoaderHolder;

    if-eqz v0, :cond_3

    iget-object v3, v0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl$XMLDTDLoaderHolder;->loader:Lmf/org/apache/xerces/impl/dtd/XMLDTDLoader;

    if-eqz v3, :cond_3

    iget-object v2, v0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl$XMLDTDLoaderHolder;->loader:Lmf/org/apache/xerces/impl/dtd/XMLDTDLoader;

    const/4 v3, 0x0

    iput-object v3, v0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl$XMLDTDLoaderHolder;->loader:Lmf/org/apache/xerces/impl/dtd/XMLDTDLoader;

    iget v3, p0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->freeXML10DTDLoaderIndex:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->freeXML10DTDLoaderIndex:I

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->xml10DTDLoaders:[Ljava/lang/ref/SoftReference;

    iget v4, p0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->freeXML10DTDLoaderIndex:I

    add-int/lit8 v5, v4, -0x1

    iput v5, p0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->freeXML10DTDLoaderIndex:I

    const/4 v5, 0x0

    aput-object v5, v3, v4

    :cond_4
    iget v3, p0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->freeXML10DTDLoaderIndex:I

    if-gez v3, :cond_2

    new-instance v2, Lmf/org/apache/xerces/impl/dtd/XMLDTDLoader;

    invoke-direct {v2}, Lmf/org/apache/xerces/impl/dtd/XMLDTDLoader;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public getFeature(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 8

    const/4 v4, 0x0

    sget-object v5, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->singleton:Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;

    invoke-virtual {v5, p1, p2}, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->hasFeature(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "+XPath"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    :try_start_0
    const-string/jumbo v5, "org.apache.xpath.domapi.XPathEvaluatorImpl"

    invoke-static {}, Lmf/org/apache/xerces/dom/ObjectFactory;->findClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    const/4 v7, 0x1

    invoke-static {v5, v6, v7}, Lmf/org/apache/xerces/dom/ObjectFactory;->findProviderClass(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v2

    const/4 v1, 0x0

    :goto_0
    array-length v5, v2

    if-lt v1, v5, :cond_1

    :cond_0
    :goto_1
    return-object v4

    :cond_1
    aget-object v5, v2, v1

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "org.w3c.dom.xpath.XPathEvaluator"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_3
    sget-object v4, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->singleton:Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;

    goto :goto_1
.end method

.method declared-synchronized getValidator(Ljava/lang/String;Ljava/lang/String;)Lmf/org/apache/xerces/impl/RevalidationHandler;
    .locals 6

    const/4 v2, 0x0

    monitor-enter p0

    :try_start_0
    const-string/jumbo v3, "http://www.w3.org/2001/XMLSchema"

    if-ne p1, v3, :cond_3

    :goto_0
    iget v3, p0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->freeSchemaValidatorIndex:I

    if-gez v3, :cond_1

    const-string/jumbo v3, "mf.org.apache.xerces.impl.xs.XMLSchemaValidator"

    invoke-static {}, Lmf/org/apache/xerces/dom/ObjectFactory;->findClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Lmf/org/apache/xerces/dom/ObjectFactory;->newInstance(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmf/org/apache/xerces/impl/RevalidationHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    :cond_0
    :goto_1
    monitor-exit p0

    return-object v2

    :cond_1
    :try_start_1
    iget-object v3, p0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->schemaValidators:[Ljava/lang/ref/SoftReference;

    iget v4, p0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->freeSchemaValidatorIndex:I

    aget-object v1, v3, v4

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl$RevalidationHandlerHolder;

    if-eqz v0, :cond_2

    iget-object v3, v0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl$RevalidationHandlerHolder;->handler:Lmf/org/apache/xerces/impl/RevalidationHandler;

    if-eqz v3, :cond_2

    iget-object v2, v0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl$RevalidationHandlerHolder;->handler:Lmf/org/apache/xerces/impl/RevalidationHandler;

    const/4 v3, 0x0

    iput-object v3, v0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl$RevalidationHandlerHolder;->handler:Lmf/org/apache/xerces/impl/RevalidationHandler;

    iget v3, p0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->freeSchemaValidatorIndex:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->freeSchemaValidatorIndex:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    :cond_2
    :try_start_2
    iget-object v3, p0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->schemaValidators:[Ljava/lang/ref/SoftReference;

    iget v4, p0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->freeSchemaValidatorIndex:I

    add-int/lit8 v5, v4, -0x1

    iput v5, p0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->freeSchemaValidatorIndex:I

    const/4 v5, 0x0

    aput-object v5, v3, v4

    goto :goto_0

    :cond_3
    const-string/jumbo v3, "http://www.w3.org/TR/REC-xml"

    if-ne p1, v3, :cond_0

    const-string v3, "1.1"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    :goto_2
    iget v3, p0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->freeXML11DTDValidatorIndex:I

    if-gez v3, :cond_4

    const-string/jumbo v3, "mf.org.apache.xerces.impl.dtd.XML11DTDValidator"

    invoke-static {}, Lmf/org/apache/xerces/dom/ObjectFactory;->findClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Lmf/org/apache/xerces/dom/ObjectFactory;->newInstance(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmf/org/apache/xerces/impl/RevalidationHandler;

    move-object v2, v3

    goto :goto_1

    :cond_4
    iget-object v3, p0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->xml11DTDValidators:[Ljava/lang/ref/SoftReference;

    iget v4, p0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->freeXML11DTDValidatorIndex:I

    aget-object v1, v3, v4

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl$RevalidationHandlerHolder;

    if-eqz v0, :cond_5

    iget-object v3, v0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl$RevalidationHandlerHolder;->handler:Lmf/org/apache/xerces/impl/RevalidationHandler;

    if-eqz v3, :cond_5

    iget-object v2, v0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl$RevalidationHandlerHolder;->handler:Lmf/org/apache/xerces/impl/RevalidationHandler;

    const/4 v3, 0x0

    iput-object v3, v0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl$RevalidationHandlerHolder;->handler:Lmf/org/apache/xerces/impl/RevalidationHandler;

    iget v3, p0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->freeXML11DTDValidatorIndex:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->freeXML11DTDValidatorIndex:I

    goto :goto_1

    :cond_5
    iget-object v3, p0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->xml11DTDValidators:[Ljava/lang/ref/SoftReference;

    iget v4, p0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->freeXML11DTDValidatorIndex:I

    add-int/lit8 v5, v4, -0x1

    iput v5, p0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->freeXML11DTDValidatorIndex:I

    const/4 v5, 0x0

    aput-object v5, v3, v4

    goto :goto_2

    :cond_6
    iget-object v3, p0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->xml10DTDValidators:[Ljava/lang/ref/SoftReference;

    iget v4, p0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->freeXML10DTDValidatorIndex:I

    aget-object v1, v3, v4

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl$RevalidationHandlerHolder;

    if-eqz v0, :cond_7

    iget-object v3, v0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl$RevalidationHandlerHolder;->handler:Lmf/org/apache/xerces/impl/RevalidationHandler;

    if-eqz v3, :cond_7

    iget-object v2, v0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl$RevalidationHandlerHolder;->handler:Lmf/org/apache/xerces/impl/RevalidationHandler;

    const/4 v3, 0x0

    iput-object v3, v0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl$RevalidationHandlerHolder;->handler:Lmf/org/apache/xerces/impl/RevalidationHandler;

    iget v3, p0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->freeXML10DTDValidatorIndex:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->freeXML10DTDValidatorIndex:I

    goto/16 :goto_1

    :cond_7
    iget-object v3, p0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->xml10DTDValidators:[Ljava/lang/ref/SoftReference;

    iget v4, p0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->freeXML10DTDValidatorIndex:I

    add-int/lit8 v5, v4, -0x1

    iput v5, p0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->freeXML10DTDValidatorIndex:I

    const/4 v5, 0x0

    aput-object v5, v3, v4

    :cond_8
    iget v3, p0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->freeXML10DTDValidatorIndex:I

    if-gez v3, :cond_6

    const-string/jumbo v3, "mf.org.apache.xerces.impl.dtd.XMLDTDValidator"

    invoke-static {}, Lmf/org/apache/xerces/dom/ObjectFactory;->findClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Lmf/org/apache/xerces/dom/ObjectFactory;->newInstance(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmf/org/apache/xerces/impl/RevalidationHandler;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v2, v3

    goto/16 :goto_1
.end method

.method public hasFeature(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_2

    move v0, v5

    :goto_0
    const-string v7, "+XPath"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    if-nez v0, :cond_0

    const-string v7, "3.0"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    :cond_0
    :try_start_0
    const-string/jumbo v7, "org.apache.xpath.domapi.XPathEvaluatorImpl"

    invoke-static {}, Lmf/org/apache/xerces/dom/ObjectFactory;->findClassLoader()Ljava/lang/ClassLoader;

    move-result-object v8

    const/4 v9, 0x1

    invoke-static {v7, v8, v9}, Lmf/org/apache/xerces/dom/ObjectFactory;->findProviderClass(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v3

    const/4 v2, 0x0

    :goto_1
    array-length v7, v3

    if-lt v2, v7, :cond_3

    :cond_1
    :goto_2
    return v6

    :cond_2
    move v0, v6

    goto :goto_0

    :cond_3
    aget-object v7, v3, v2

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "org.w3c.dom.xpath.XPathEvaluator"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    if-nez v7, :cond_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :catch_0
    move-exception v1

    move v6, v5

    goto :goto_2

    :cond_4
    const-string v7, "+"

    invoke-virtual {p1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :cond_5
    const-string v7, "Core"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    if-nez v0, :cond_1

    const-string v7, "1.0"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    const-string v7, "2.0"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    const-string v7, "3.0"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    :cond_6
    const-string v7, "XML"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    if-nez v0, :cond_1

    const-string v7, "1.0"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    const-string v7, "2.0"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    const-string v7, "3.0"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    :cond_7
    const-string v7, "XMLVersion"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    if-nez v0, :cond_1

    const-string v7, "1.0"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    const-string v7, "1.1"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    :cond_8
    const-string v7, "LS"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_9

    if-nez v0, :cond_1

    const-string v7, "3.0"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    :cond_9
    const-string v7, "ElementTraversal"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_a

    if-nez v0, :cond_1

    const-string v7, "1.0"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    :cond_a
    move v6, v5

    goto/16 :goto_2
.end method

.method final declared-synchronized releaseDTDLoader(Ljava/lang/String;Lmf/org/apache/xerces/impl/dtd/XMLDTDLoader;)V
    .locals 7

    monitor-enter p0

    :try_start_0
    const-string v3, "1.1"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->freeXML11DTDLoaderIndex:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->freeXML11DTDLoaderIndex:I

    iget-object v3, p0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->xml11DTDLoaders:[Ljava/lang/ref/SoftReference;

    array-length v3, v3

    iget v4, p0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->freeXML11DTDLoaderIndex:I

    if-ne v3, v4, :cond_0

    iget v3, p0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->xml11DTDLoaderCurrentSize:I

    add-int/lit8 v3, v3, 0x2

    iput v3, p0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->xml11DTDLoaderCurrentSize:I

    iget v3, p0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->xml11DTDLoaderCurrentSize:I

    new-array v1, v3, [Ljava/lang/ref/SoftReference;

    iget-object v3, p0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->xml11DTDLoaders:[Ljava/lang/ref/SoftReference;

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v6, p0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->xml11DTDLoaders:[Ljava/lang/ref/SoftReference;

    array-length v6, v6

    invoke-static {v3, v4, v1, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->xml11DTDLoaders:[Ljava/lang/ref/SoftReference;

    :cond_0
    iget-object v3, p0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->xml11DTDLoaders:[Ljava/lang/ref/SoftReference;

    iget v4, p0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->freeXML11DTDLoaderIndex:I

    aget-object v2, v3, v4

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl$XMLDTDLoaderHolder;

    if-eqz v0, :cond_1

    iput-object p2, v0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl$XMLDTDLoaderHolder;->loader:Lmf/org/apache/xerces/impl/dtd/XMLDTDLoader;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v3, p0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->xml11DTDLoaders:[Ljava/lang/ref/SoftReference;

    iget v4, p0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->freeXML11DTDLoaderIndex:I

    new-instance v5, Ljava/lang/ref/SoftReference;

    new-instance v6, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl$XMLDTDLoaderHolder;

    invoke-direct {v6, p2}, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl$XMLDTDLoaderHolder;-><init>(Lmf/org/apache/xerces/impl/dtd/XMLDTDLoader;)V

    invoke-direct {v5, v6}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    aput-object v5, v3, v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    :cond_2
    :try_start_2
    iget v3, p0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->freeXML10DTDLoaderIndex:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->freeXML10DTDLoaderIndex:I

    iget-object v3, p0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->xml10DTDLoaders:[Ljava/lang/ref/SoftReference;

    array-length v3, v3

    iget v4, p0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->freeXML10DTDLoaderIndex:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->xml10DTDLoaderCurrentSize:I

    add-int/lit8 v3, v3, 0x2

    iput v3, p0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->xml10DTDLoaderCurrentSize:I

    iget v3, p0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->xml10DTDLoaderCurrentSize:I

    new-array v1, v3, [Ljava/lang/ref/SoftReference;

    iget-object v3, p0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->xml10DTDLoaders:[Ljava/lang/ref/SoftReference;

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v6, p0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->xml10DTDLoaders:[Ljava/lang/ref/SoftReference;

    array-length v6, v6

    invoke-static {v3, v4, v1, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->xml10DTDLoaders:[Ljava/lang/ref/SoftReference;

    :cond_3
    iget-object v3, p0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->xml10DTDLoaders:[Ljava/lang/ref/SoftReference;

    iget v4, p0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->freeXML10DTDLoaderIndex:I

    aget-object v2, v3, v4

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl$XMLDTDLoaderHolder;

    if-eqz v0, :cond_4

    iput-object p2, v0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl$XMLDTDLoaderHolder;->loader:Lmf/org/apache/xerces/impl/dtd/XMLDTDLoader;

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->xml10DTDLoaders:[Ljava/lang/ref/SoftReference;

    iget v4, p0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->freeXML10DTDLoaderIndex:I

    new-instance v5, Ljava/lang/ref/SoftReference;

    new-instance v6, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl$XMLDTDLoaderHolder;

    invoke-direct {v6, p2}, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl$XMLDTDLoaderHolder;-><init>(Lmf/org/apache/xerces/impl/dtd/XMLDTDLoader;)V

    invoke-direct {v5, v6}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    aput-object v5, v3, v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method declared-synchronized releaseValidator(Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/impl/RevalidationHandler;)V
    .locals 7

    monitor-enter p0

    :try_start_0
    const-string/jumbo v3, "http://www.w3.org/2001/XMLSchema"

    if-ne p1, v3, :cond_3

    iget v3, p0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->freeSchemaValidatorIndex:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->freeSchemaValidatorIndex:I

    iget-object v3, p0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->schemaValidators:[Ljava/lang/ref/SoftReference;

    array-length v3, v3

    iget v4, p0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->freeSchemaValidatorIndex:I

    if-ne v3, v4, :cond_0

    iget v3, p0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->schemaValidatorsCurrentSize:I

    add-int/lit8 v3, v3, 0x2

    iput v3, p0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->schemaValidatorsCurrentSize:I

    iget v3, p0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->schemaValidatorsCurrentSize:I

    new-array v1, v3, [Ljava/lang/ref/SoftReference;

    iget-object v3, p0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->schemaValidators:[Ljava/lang/ref/SoftReference;

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v6, p0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->schemaValidators:[Ljava/lang/ref/SoftReference;

    array-length v6, v6

    invoke-static {v3, v4, v1, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->schemaValidators:[Ljava/lang/ref/SoftReference;

    :cond_0
    iget-object v3, p0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->schemaValidators:[Ljava/lang/ref/SoftReference;

    iget v4, p0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->freeSchemaValidatorIndex:I

    aget-object v2, v3, v4

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl$RevalidationHandlerHolder;

    if-eqz v0, :cond_2

    iput-object p3, v0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl$RevalidationHandlerHolder;->handler:Lmf/org/apache/xerces/impl/RevalidationHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :cond_2
    :try_start_1
    iget-object v3, p0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->schemaValidators:[Ljava/lang/ref/SoftReference;

    iget v4, p0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->freeSchemaValidatorIndex:I

    new-instance v5, Ljava/lang/ref/SoftReference;

    new-instance v6, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl$RevalidationHandlerHolder;

    invoke-direct {v6, p3}, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl$RevalidationHandlerHolder;-><init>(Lmf/org/apache/xerces/impl/RevalidationHandler;)V

    invoke-direct {v5, v6}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    aput-object v5, v3, v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    :cond_3
    :try_start_2
    const-string/jumbo v3, "http://www.w3.org/TR/REC-xml"

    if-ne p1, v3, :cond_1

    const-string v3, "1.1"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget v3, p0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->freeXML11DTDValidatorIndex:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->freeXML11DTDValidatorIndex:I

    iget-object v3, p0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->xml11DTDValidators:[Ljava/lang/ref/SoftReference;

    array-length v3, v3

    iget v4, p0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->freeXML11DTDValidatorIndex:I

    if-ne v3, v4, :cond_4

    iget v3, p0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->xml11DTDValidatorsCurrentSize:I

    add-int/lit8 v3, v3, 0x2

    iput v3, p0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->xml11DTDValidatorsCurrentSize:I

    iget v3, p0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->xml11DTDValidatorsCurrentSize:I

    new-array v1, v3, [Ljava/lang/ref/SoftReference;

    iget-object v3, p0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->xml11DTDValidators:[Ljava/lang/ref/SoftReference;

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v6, p0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->xml11DTDValidators:[Ljava/lang/ref/SoftReference;

    array-length v6, v6

    invoke-static {v3, v4, v1, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->xml11DTDValidators:[Ljava/lang/ref/SoftReference;

    :cond_4
    iget-object v3, p0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->xml11DTDValidators:[Ljava/lang/ref/SoftReference;

    iget v4, p0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->freeXML11DTDValidatorIndex:I

    aget-object v2, v3, v4

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl$RevalidationHandlerHolder;

    if-eqz v0, :cond_5

    iput-object p3, v0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl$RevalidationHandlerHolder;->handler:Lmf/org/apache/xerces/impl/RevalidationHandler;

    goto :goto_0

    :cond_5
    iget-object v3, p0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->xml11DTDValidators:[Ljava/lang/ref/SoftReference;

    iget v4, p0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->freeXML11DTDValidatorIndex:I

    new-instance v5, Ljava/lang/ref/SoftReference;

    new-instance v6, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl$RevalidationHandlerHolder;

    invoke-direct {v6, p3}, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl$RevalidationHandlerHolder;-><init>(Lmf/org/apache/xerces/impl/RevalidationHandler;)V

    invoke-direct {v5, v6}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    aput-object v5, v3, v4

    goto :goto_0

    :cond_6
    iget v3, p0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->freeXML10DTDValidatorIndex:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->freeXML10DTDValidatorIndex:I

    iget-object v3, p0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->xml10DTDValidators:[Ljava/lang/ref/SoftReference;

    array-length v3, v3

    iget v4, p0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->freeXML10DTDValidatorIndex:I

    if-ne v3, v4, :cond_7

    iget v3, p0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->xml10DTDValidatorsCurrentSize:I

    add-int/lit8 v3, v3, 0x2

    iput v3, p0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->xml10DTDValidatorsCurrentSize:I

    iget v3, p0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->xml10DTDValidatorsCurrentSize:I

    new-array v1, v3, [Ljava/lang/ref/SoftReference;

    iget-object v3, p0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->xml10DTDValidators:[Ljava/lang/ref/SoftReference;

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v6, p0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->xml10DTDValidators:[Ljava/lang/ref/SoftReference;

    array-length v6, v6

    invoke-static {v3, v4, v1, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->xml10DTDValidators:[Ljava/lang/ref/SoftReference;

    :cond_7
    iget-object v3, p0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->xml10DTDValidators:[Ljava/lang/ref/SoftReference;

    iget v4, p0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->freeXML10DTDValidatorIndex:I

    aget-object v2, v3, v4

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl$RevalidationHandlerHolder;

    if-eqz v0, :cond_8

    iput-object p3, v0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl$RevalidationHandlerHolder;->handler:Lmf/org/apache/xerces/impl/RevalidationHandler;

    goto/16 :goto_0

    :cond_8
    iget-object v3, p0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->xml10DTDValidators:[Ljava/lang/ref/SoftReference;

    iget v4, p0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->freeXML10DTDValidatorIndex:I

    new-instance v5, Ljava/lang/ref/SoftReference;

    new-instance v6, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl$RevalidationHandlerHolder;

    invoke-direct {v6, p3}, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl$RevalidationHandlerHolder;-><init>(Lmf/org/apache/xerces/impl/RevalidationHandler;)V

    invoke-direct {v5, v6}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    aput-object v5, v3, v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method
