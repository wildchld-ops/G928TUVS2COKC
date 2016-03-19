.class public Lcom/ime/framework/dbmanager/categorydb/CategoryDBParser;
.super Ljava/lang/Object;
.source "CategoryDBParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ime/framework/dbmanager/categorydb/CategoryDBParser$getPhraseHandler;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "CategoryDBParser"

.field public static XML_ATTRIBUTE_CATEGORY:Ljava/lang/String;

.field public static XML_ATTRIBUTE_ID:Ljava/lang/String;

.field public static XML_ATTRIBUTE_LANG_ID:Ljava/lang/String;

.field public static XML_ATTRIBUTE_NAME:Ljava/lang/String;

.field public static XML_ATTRIBUTE_PATH:Ljava/lang/String;

.field public static XML_ATTRIBUTE_PRELOAD:Ljava/lang/String;

.field public static XML_ATTRIBUTE_PRIORITY:Ljava/lang/String;

.field public static XML_ATTRIBUTE_STATUS:Ljava/lang/String;

.field public static XML_ATTRIBUTE_VERSION:Ljava/lang/String;

.field public static XML_ELEMENT_DB:Ljava/lang/String;


# instance fields
.field private mCurrentDB:Lcom/ime/framework/dbmanager/categorydb/CategoryDB;

.field private mDbList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ime/framework/dbmanager/categorydb/CategoryDB;",
            ">;"
        }
    .end annotation
.end field

.field private mDocBuilder:Ljavax/xml/parsers/DocumentBuilder;

.field private mDocBuilderFactory:Ljavax/xml/parsers/DocumentBuilderFactory;

.field private mDocument:Lorg/w3c/dom/Document;

.field private mDocumentMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/w3c/dom/Document;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "CatDB"

    sput-object v0, Lcom/ime/framework/dbmanager/categorydb/CategoryDBParser;->XML_ELEMENT_DB:Ljava/lang/String;

    const-string v0, "id"

    sput-object v0, Lcom/ime/framework/dbmanager/categorydb/CategoryDBParser;->XML_ATTRIBUTE_ID:Ljava/lang/String;

    const-string v0, "lang_id"

    sput-object v0, Lcom/ime/framework/dbmanager/categorydb/CategoryDBParser;->XML_ATTRIBUTE_LANG_ID:Ljava/lang/String;

    const-string v0, "path"

    sput-object v0, Lcom/ime/framework/dbmanager/categorydb/CategoryDBParser;->XML_ATTRIBUTE_PATH:Ljava/lang/String;

    const-string v0, "name"

    sput-object v0, Lcom/ime/framework/dbmanager/categorydb/CategoryDBParser;->XML_ATTRIBUTE_NAME:Ljava/lang/String;

    const-string v0, "category"

    sput-object v0, Lcom/ime/framework/dbmanager/categorydb/CategoryDBParser;->XML_ATTRIBUTE_CATEGORY:Ljava/lang/String;

    const-string v0, "version"

    sput-object v0, Lcom/ime/framework/dbmanager/categorydb/CategoryDBParser;->XML_ATTRIBUTE_VERSION:Ljava/lang/String;

    const-string v0, "status"

    sput-object v0, Lcom/ime/framework/dbmanager/categorydb/CategoryDBParser;->XML_ATTRIBUTE_STATUS:Ljava/lang/String;

    const-string v0, "priority"

    sput-object v0, Lcom/ime/framework/dbmanager/categorydb/CategoryDBParser;->XML_ATTRIBUTE_PRIORITY:Ljava/lang/String;

    const-string v0, "preload"

    sput-object v0, Lcom/ime/framework/dbmanager/categorydb/CategoryDBParser;->XML_ATTRIBUTE_PRELOAD:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/ime/framework/dbmanager/categorydb/CategoryDBParser;->mDbList:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/ime/framework/dbmanager/categorydb/CategoryDBParser;->mDocumentMap:Ljava/util/HashMap;

    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v1

    iput-object v1, p0, Lcom/ime/framework/dbmanager/categorydb/CategoryDBParser;->mDocBuilderFactory:Ljavax/xml/parsers/DocumentBuilderFactory;

    :try_start_0
    iget-object v1, p0, Lcom/ime/framework/dbmanager/categorydb/CategoryDBParser;->mDocBuilderFactory:Ljavax/xml/parsers/DocumentBuilderFactory;

    invoke-virtual {v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v1

    iput-object v1, p0, Lcom/ime/framework/dbmanager/categorydb/CategoryDBParser;->mDocBuilder:Ljavax/xml/parsers/DocumentBuilder;
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/ime/framework/dbmanager/categorydb/CategoryDBParser;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/dbmanager/categorydb/CategoryDBParser;->mDbList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/ime/framework/dbmanager/categorydb/CategoryDBParser;)Lcom/ime/framework/dbmanager/categorydb/CategoryDB;
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/dbmanager/categorydb/CategoryDBParser;->mCurrentDB:Lcom/ime/framework/dbmanager/categorydb/CategoryDB;

    return-object v0
.end method

.method static synthetic access$102(Lcom/ime/framework/dbmanager/categorydb/CategoryDBParser;Lcom/ime/framework/dbmanager/categorydb/CategoryDB;)Lcom/ime/framework/dbmanager/categorydb/CategoryDB;
    .locals 0

    iput-object p1, p0, Lcom/ime/framework/dbmanager/categorydb/CategoryDBParser;->mCurrentDB:Lcom/ime/framework/dbmanager/categorydb/CategoryDB;

    return-object p1
.end method

.method private fillDBElement(Lorg/w3c/dom/Element;Lcom/ime/framework/dbmanager/categorydb/CategoryDB;)V
    .locals 2

    sget-object v0, Lcom/ime/framework/dbmanager/categorydb/CategoryDBParser;->XML_ATTRIBUTE_PATH:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/ime/framework/dbmanager/categorydb/CategoryDB;->getDBAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/ime/framework/dbmanager/categorydb/CategoryDBParser;->XML_ATTRIBUTE_VERSION:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/ime/framework/dbmanager/categorydb/CategoryDB;->getDBVersion()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/ime/framework/dbmanager/categorydb/CategoryDBParser;->XML_ATTRIBUTE_PRELOAD:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/ime/framework/dbmanager/categorydb/CategoryDB;->isPreload()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/ime/framework/dbmanager/categorydb/CategoryDBParser;->XML_ATTRIBUTE_STATUS:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/ime/framework/dbmanager/categorydb/CategoryDB;->isDBEnabled()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/ime/framework/dbmanager/categorydb/CategoryDBParser;->XML_ATTRIBUTE_PRIORITY:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/ime/framework/dbmanager/categorydb/CategoryDB;->getDBPriority()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/ime/framework/dbmanager/categorydb/CategoryDBParser;->XML_ATTRIBUTE_CATEGORY:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/ime/framework/dbmanager/categorydb/CategoryDB;->getDBCategory()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/ime/framework/dbmanager/categorydb/CategoryDBParser;->XML_ATTRIBUTE_NAME:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/ime/framework/dbmanager/categorydb/CategoryDB;->getDBName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/ime/framework/dbmanager/categorydb/CategoryDBParser;->XML_ATTRIBUTE_LANG_ID:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/ime/framework/dbmanager/categorydb/CategoryDB;->getLanguageId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/ime/framework/dbmanager/categorydb/CategoryDBParser;->XML_ATTRIBUTE_ID:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/ime/framework/dbmanager/categorydb/CategoryDB;->getCatDBId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/ime/framework/dbmanager/categorydb/CategoryDB;->getDBKey()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->setTextContent(Ljava/lang/String;)V

    return-void
.end method

.method private getDocument(Ljava/io/File;)Lorg/w3c/dom/Document;
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/ime/framework/dbmanager/categorydb/CategoryDBParser;->mDocBuilder:Ljavax/xml/parsers/DocumentBuilder;

    invoke-virtual {v2, p1}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    const-string v2, "CategoryDBParser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "parse failed:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lorg/xml/sax/SAXException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v1

    const-string v2, "CategoryDBParser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "read failed:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private saveToXml(Lorg/w3c/dom/Document;Ljava/io/File;)V
    .locals 5

    :try_start_0
    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v3

    invoke-virtual {v3}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v4

    new-instance v2, Ljavax/xml/transform/dom/DOMSource;

    invoke-direct {v2, p1}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    new-instance v1, Ljavax/xml/transform/stream/StreamResult;

    invoke-direct {v1, p2}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/File;)V

    invoke-virtual {v4, v2, v1}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V
    :try_end_0
    .catch Ljavax/xml/transform/TransformerFactoryConfigurationError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/xml/transform/TransformerConfigurationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljavax/xml/transform/TransformerFactoryConfigurationError;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljavax/xml/transform/TransformerConfigurationException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljavax/xml/transform/TransformerException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public deleteCatDB(Lcom/ime/framework/dbmanager/categorydb/CategoryDB;Ljava/lang/String;)V
    .locals 4

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ime/framework/dbmanager/categorydb/CategoryDBParser;->mDocumentMap:Ljava/util/HashMap;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Document;

    iput-object v2, p0, Lcom/ime/framework/dbmanager/categorydb/CategoryDBParser;->mDocument:Lorg/w3c/dom/Document;

    iget-object v2, p0, Lcom/ime/framework/dbmanager/categorydb/CategoryDBParser;->mDocument:Lorg/w3c/dom/Document;

    if-nez v2, :cond_0

    invoke-direct {p0, v1}, Lcom/ime/framework/dbmanager/categorydb/CategoryDBParser;->getDocument(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v2

    iput-object v2, p0, Lcom/ime/framework/dbmanager/categorydb/CategoryDBParser;->mDocument:Lorg/w3c/dom/Document;

    :cond_0
    iget-object v2, p0, Lcom/ime/framework/dbmanager/categorydb/CategoryDBParser;->mDocument:Lorg/w3c/dom/Document;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/ime/framework/dbmanager/categorydb/CategoryDBParser;->mDocumentMap:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/ime/framework/dbmanager/categorydb/CategoryDBParser;->mDocument:Lorg/w3c/dom/Document;

    invoke-virtual {v2, p2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/ime/framework/dbmanager/categorydb/CategoryDBParser;->mDocument:Lorg/w3c/dom/Document;

    invoke-virtual {p1}, Lcom/ime/framework/dbmanager/categorydb/CategoryDB;->getCatDBId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/w3c/dom/Document;->getElementById(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-interface {v0}, Lorg/w3c/dom/Element;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2, v0}, Lorg/w3c/dom/Node;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    iget-object v2, p0, Lcom/ime/framework/dbmanager/categorydb/CategoryDBParser;->mDocument:Lorg/w3c/dom/Document;

    invoke-direct {p0, v2, v1}, Lcom/ime/framework/dbmanager/categorydb/CategoryDBParser;->saveToXml(Lorg/w3c/dom/Document;Ljava/io/File;)V

    goto :goto_0
.end method

.method public getDBList(Ljava/io/InputStream;)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ime/framework/dbmanager/categorydb/CategoryDB;",
            ">;"
        }
    .end annotation

    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v5

    invoke-virtual {v5}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v3

    new-instance v4, Lcom/ime/framework/dbmanager/categorydb/CategoryDBParser$getPhraseHandler;

    invoke-direct {v4, p0}, Lcom/ime/framework/dbmanager/categorydb/CategoryDBParser$getPhraseHandler;-><init>(Lcom/ime/framework/dbmanager/categorydb/CategoryDBParser;)V

    invoke-interface {v3, v4}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    :try_start_1
    new-instance v6, Lorg/xml/sax/InputSource;

    invoke-direct {v6, p1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v3, v6}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    :goto_0
    if-eqz p1, :cond_0

    :try_start_2
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/xml/sax/SAXException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    :cond_0
    :goto_1
    iget-object v6, p0, Lcom/ime/framework/dbmanager/categorydb/CategoryDBParser;->mDbList:Ljava/util/ArrayList;

    return-object v6

    :catch_0
    move-exception v1

    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_3
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lorg/xml/sax/SAXException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_0

    :catch_1
    move-exception v2

    invoke-virtual {v2}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V

    goto :goto_1

    :catch_2
    move-exception v2

    invoke-virtual {v2}, Lorg/xml/sax/SAXException;->printStackTrace()V

    goto :goto_1

    :catch_3
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public updateCatDB(Lcom/ime/framework/dbmanager/categorydb/CategoryDB;Ljava/lang/String;)V
    .locals 8

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_3

    :cond_2
    :try_start_0
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    iget-object v5, p0, Lcom/ime/framework/dbmanager/categorydb/CategoryDBParser;->mDocumentMap:Ljava/util/HashMap;

    invoke-virtual {v5, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/w3c/dom/Document;

    iput-object v5, p0, Lcom/ime/framework/dbmanager/categorydb/CategoryDBParser;->mDocument:Lorg/w3c/dom/Document;

    iget-object v5, p0, Lcom/ime/framework/dbmanager/categorydb/CategoryDBParser;->mDocument:Lorg/w3c/dom/Document;

    if-nez v5, :cond_4

    invoke-direct {p0, v3}, Lcom/ime/framework/dbmanager/categorydb/CategoryDBParser;->getDocument(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v5

    iput-object v5, p0, Lcom/ime/framework/dbmanager/categorydb/CategoryDBParser;->mDocument:Lorg/w3c/dom/Document;

    :cond_4
    iget-object v5, p0, Lcom/ime/framework/dbmanager/categorydb/CategoryDBParser;->mDocument:Lorg/w3c/dom/Document;

    if-nez v5, :cond_5

    iget-object v5, p0, Lcom/ime/framework/dbmanager/categorydb/CategoryDBParser;->mDocBuilder:Ljavax/xml/parsers/DocumentBuilder;

    invoke-virtual {v5}, Ljavax/xml/parsers/DocumentBuilder;->newDocument()Lorg/w3c/dom/Document;

    move-result-object v5

    iput-object v5, p0, Lcom/ime/framework/dbmanager/categorydb/CategoryDBParser;->mDocument:Lorg/w3c/dom/Document;

    iget-object v5, p0, Lcom/ime/framework/dbmanager/categorydb/CategoryDBParser;->mDocument:Lorg/w3c/dom/Document;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/ime/framework/dbmanager/categorydb/CategoryDBParser;->mDocument:Lorg/w3c/dom/Document;

    iget-object v6, p0, Lcom/ime/framework/dbmanager/categorydb/CategoryDBParser;->mDocument:Lorg/w3c/dom/Document;

    const-string v7, "root"

    invoke-interface {v6, v7}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/w3c/dom/Document;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_5
    iget-object v5, p0, Lcom/ime/framework/dbmanager/categorydb/CategoryDBParser;->mDocument:Lorg/w3c/dom/Document;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/ime/framework/dbmanager/categorydb/CategoryDBParser;->mDocument:Lorg/w3c/dom/Document;

    invoke-interface {v5}, Lorg/w3c/dom/Document;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v4

    check-cast v4, Lorg/w3c/dom/Element;

    iget-object v5, p0, Lcom/ime/framework/dbmanager/categorydb/CategoryDBParser;->mDocument:Lorg/w3c/dom/Document;

    invoke-virtual {p1}, Lcom/ime/framework/dbmanager/categorydb/CategoryDB;->getCatDBId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/w3c/dom/Document;->getElementById(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    const/4 v0, 0x0

    if-nez v1, :cond_6

    iget-object v5, p0, Lcom/ime/framework/dbmanager/categorydb/CategoryDBParser;->mDocument:Lorg/w3c/dom/Document;

    sget-object v6, Lcom/ime/framework/dbmanager/categorydb/CategoryDBParser;->XML_ELEMENT_DB:Ljava/lang/String;

    invoke-interface {v5, v6}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    const/4 v0, 0x1

    :cond_6
    invoke-direct {p0, v1, p1}, Lcom/ime/framework/dbmanager/categorydb/CategoryDBParser;->fillDBElement(Lorg/w3c/dom/Element;Lcom/ime/framework/dbmanager/categorydb/CategoryDB;)V

    if-eqz v0, :cond_7

    :try_start_1
    invoke-interface {v4, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    :try_end_1
    .catch Lorg/w3c/dom/DOMException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_7
    iget-object v5, p0, Lcom/ime/framework/dbmanager/categorydb/CategoryDBParser;->mDocumentMap:Ljava/util/HashMap;

    iget-object v6, p0, Lcom/ime/framework/dbmanager/categorydb/CategoryDBParser;->mDocument:Lorg/w3c/dom/Document;

    invoke-virtual {v5, p2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, p0, Lcom/ime/framework/dbmanager/categorydb/CategoryDBParser;->mDocument:Lorg/w3c/dom/Document;

    invoke-direct {p0, v5, v3}, Lcom/ime/framework/dbmanager/categorydb/CategoryDBParser;->saveToXml(Lorg/w3c/dom/Document;Ljava/io/File;)V

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    :catch_1
    move-exception v2

    invoke-virtual {v2}, Lorg/w3c/dom/DOMException;->printStackTrace()V

    goto/16 :goto_0
.end method
