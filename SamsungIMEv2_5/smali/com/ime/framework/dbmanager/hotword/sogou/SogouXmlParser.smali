.class public Lcom/ime/framework/dbmanager/hotword/sogou/SogouXmlParser;
.super Ljava/lang/Object;
.source "SogouXmlParser.java"

# interfaces
.implements Lcom/ime/framework/dbmanager/hotword/sogou/SogouListInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ime/framework/dbmanager/hotword/sogou/SogouXmlParser$getPhraseHandler;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "SogouXmlParser"


# instance fields
.field private currentTag:Ljava/lang/String;

.field private mCurrentPhrase:Lcom/ime/framework/dbmanager/hotword/HotWordPhraseInfo;

.field private mSogouList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ime/framework/dbmanager/hotword/HotWordPhraseInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mTimeStamp:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/ime/framework/dbmanager/hotword/sogou/SogouXmlParser;->mSogouList:Ljava/util/List;

    const-string v0, ""

    iput-object v0, p0, Lcom/ime/framework/dbmanager/hotword/sogou/SogouXmlParser;->currentTag:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ime/framework/dbmanager/hotword/sogou/SogouXmlParser;->mCurrentPhrase:Lcom/ime/framework/dbmanager/hotword/HotWordPhraseInfo;

    const-string v0, ""

    iput-object v0, p0, Lcom/ime/framework/dbmanager/hotword/sogou/SogouXmlParser;->mTimeStamp:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/ime/framework/dbmanager/hotword/sogou/SogouXmlParser;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/dbmanager/hotword/sogou/SogouXmlParser;->mSogouList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$102(Lcom/ime/framework/dbmanager/hotword/sogou/SogouXmlParser;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/ime/framework/dbmanager/hotword/sogou/SogouXmlParser;->mTimeStamp:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/ime/framework/dbmanager/hotword/sogou/SogouXmlParser;)Lcom/ime/framework/dbmanager/hotword/HotWordPhraseInfo;
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/dbmanager/hotword/sogou/SogouXmlParser;->mCurrentPhrase:Lcom/ime/framework/dbmanager/hotword/HotWordPhraseInfo;

    return-object v0
.end method

.method static synthetic access$202(Lcom/ime/framework/dbmanager/hotword/sogou/SogouXmlParser;Lcom/ime/framework/dbmanager/hotword/HotWordPhraseInfo;)Lcom/ime/framework/dbmanager/hotword/HotWordPhraseInfo;
    .locals 0

    iput-object p1, p0, Lcom/ime/framework/dbmanager/hotword/sogou/SogouXmlParser;->mCurrentPhrase:Lcom/ime/framework/dbmanager/hotword/HotWordPhraseInfo;

    return-object p1
.end method

.method static synthetic access$300(Lcom/ime/framework/dbmanager/hotword/sogou/SogouXmlParser;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/dbmanager/hotword/sogou/SogouXmlParser;->currentTag:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Lcom/ime/framework/dbmanager/hotword/sogou/SogouXmlParser;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/ime/framework/dbmanager/hotword/sogou/SogouXmlParser;->currentTag:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public getParseList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/ime/framework/dbmanager/hotword/HotWordPhraseInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ime/framework/dbmanager/hotword/sogou/SogouXmlParser;->mSogouList:Ljava/util/List;

    return-object v0
.end method

.method public getTimeStamp()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/dbmanager/hotword/sogou/SogouXmlParser;->mTimeStamp:Ljava/lang/String;

    return-object v0
.end method

.method public parseXML(Ljava/lang/String;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/ime/framework/dbmanager/hotword/HotWordPhraseInfo;",
            ">;"
        }
    .end annotation

    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v8

    invoke-virtual {v8}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v6

    new-instance v7, Lcom/ime/framework/dbmanager/hotword/sogou/SogouXmlParser$getPhraseHandler;

    invoke-direct {v7, p0}, Lcom/ime/framework/dbmanager/hotword/sogou/SogouXmlParser$getPhraseHandler;-><init>(Lcom/ime/framework/dbmanager/hotword/sogou/SogouXmlParser;)V

    invoke-interface {v6, v7}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    const/4 v4, 0x0

    new-instance v9, Ljava/util/Vector;

    invoke-direct {v9}, Ljava/util/Vector;-><init>()V

    iput-object v9, p0, Lcom/ime/framework/dbmanager/hotword/sogou/SogouXmlParser;->mSogouList:Ljava/util/List;

    const-string v9, ""

    iput-object v9, p0, Lcom/ime/framework/dbmanager/hotword/sogou/SogouXmlParser;->mTimeStamp:Ljava/lang/String;
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4

    :try_start_1
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    new-instance v9, Lorg/xml/sax/InputSource;

    invoke-direct {v9, v5}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v6, v9}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v5, :cond_2

    :try_start_3
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lorg/xml/sax/SAXException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    move-object v4, v5

    :cond_0
    :goto_0
    iget-object v9, p0, Lcom/ime/framework/dbmanager/hotword/sogou/SogouXmlParser;->mSogouList:Ljava/util/List;

    return-object v9

    :catch_0
    move-exception v2

    :goto_1
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v4, :cond_0

    :try_start_5
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Lorg/xml/sax/SAXException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_0

    :catch_1
    move-exception v3

    invoke-virtual {v3}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v1

    :goto_2
    :try_start_6
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v4, :cond_0

    :try_start_7
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Lorg/xml/sax/SAXException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_0

    :catch_3
    move-exception v3

    invoke-virtual {v3}, Lorg/xml/sax/SAXException;->printStackTrace()V

    goto :goto_0

    :catchall_0
    move-exception v9

    :goto_3
    if-eqz v4, :cond_1

    :try_start_8
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    :cond_1
    throw v9
    :try_end_8
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Lorg/xml/sax/SAXException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    :catch_4
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catchall_1
    move-exception v9

    move-object v4, v5

    goto :goto_3

    :catch_5
    move-exception v1

    move-object v4, v5

    goto :goto_2

    :catch_6
    move-exception v2

    move-object v4, v5

    goto :goto_1

    :cond_2
    move-object v4, v5

    goto :goto_0
.end method
