.class public Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordMgr;
.super Lcom/ime/framework/dbmanager/DbUpdateAbs;
.source "SogouHotwordMgr.java"


# static fields
.field public static final HOTWORD_IN_ENGIN_FILE_NAME:Ljava/lang/String; = "/hotlist.mdb"

.field public static final HOTWORD_IN_MDB_FILE_NAME:Ljava/lang/String; = "/hotlist.xml"

.field public static final HOTWORD_XML_FILE_NAME:Ljava/lang/String; = "/hotdict.xml"

.field public static final SOGOU_HOTWORD_NO_UPDATE:Ljava/lang/String; = "noupdate"

.field public static final SOGOU_HOTWORD_VERSION_CHECK:Ljava/lang/String; = "&ask=1"

.field public static final SOGOU_HOTWORD_XML_URI:Ljava/lang/String; = "http://input.shouji.sogou.com/jsp/openapi/reciapi.jsp?d="

.field private static final TAG:Ljava/lang/String; = "SogouHotwordMgr"

.field public static final TEMP_HOTWORD_XML_FILE_NAME:Ljava/lang/String; = "/temp_hotdict.xml"

.field public static final _SOGOU_HOTWORD_DIR:Ljava/lang/String; = "/sogou"

.field private static mInstance:Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordMgr;


# instance fields
.field private mDownloader:Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordDownload;

.field private mHotwordEditor:Lcom/ime/framework/dbmanager/hotword/HotwordEditInterface;

.field private mHotwordInEnginFileName:Ljava/lang/String;

.field private mHotwordInMdbFileName:Ljava/lang/String;

.field private mHotwordXMLFileName:Ljava/lang/String;

.field private mInputManager:Lcom/ime/framework/common/InputManager;

.field private mMdbHotwordList:Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordList;

.field private mTempHotwordXMLFileName:Ljava/lang/String;

.field private mXMLParser:Lcom/ime/framework/dbmanager/hotword/sogou/SogouListInterface;

.field private mXmlHotwordList:Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordMgr;->mInstance:Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordMgr;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/ime/framework/dbmanager/DbUpdateAbs;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordMgr;->mTempHotwordXMLFileName:Ljava/lang/String;

    iput-object v1, p0, Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordMgr;->mHotwordXMLFileName:Ljava/lang/String;

    iput-object v1, p0, Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordMgr;->mHotwordInMdbFileName:Ljava/lang/String;

    iput-object v1, p0, Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordMgr;->mHotwordInEnginFileName:Ljava/lang/String;

    iput-object v1, p0, Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordMgr;->mXMLParser:Lcom/ime/framework/dbmanager/hotword/sogou/SogouListInterface;

    iput-object v1, p0, Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordMgr;->mMdbHotwordList:Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordList;

    iput-object v1, p0, Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordMgr;->mXmlHotwordList:Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordList;

    iput-object v1, p0, Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordMgr;->mHotwordEditor:Lcom/ime/framework/dbmanager/hotword/HotwordEditInterface;

    iput-object v1, p0, Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordMgr;->mDownloader:Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordDownload;

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/sogou"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_0

    :cond_0
    iput-object p1, p0, Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordMgr;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/ime/framework/common/InputManagerImpl;->getInstance()Lcom/ime/framework/common/InputManager;

    move-result-object v1

    iput-object v1, p0, Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordMgr;->mInputManager:Lcom/ime/framework/common/InputManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/sogou"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/hotdict.xml"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordMgr;->mHotwordXMLFileName:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/sogou"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/hotlist.xml"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordMgr;->mHotwordInMdbFileName:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/sogou"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/temp_hotdict.xml"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordMgr;->mTempHotwordXMLFileName:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/sogou"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/hotlist.mdb"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordMgr;->mHotwordInEnginFileName:Ljava/lang/String;

    new-instance v1, Lcom/ime/framework/dbmanager/hotword/sogou/SogouXmlParser;

    invoke-direct {v1}, Lcom/ime/framework/dbmanager/hotword/sogou/SogouXmlParser;-><init>()V

    iput-object v1, p0, Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordMgr;->mXMLParser:Lcom/ime/framework/dbmanager/hotword/sogou/SogouListInterface;

    new-instance v1, Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordDownload;

    iget-object v2, p0, Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordMgr;->mTempHotwordXMLFileName:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordDownload;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordMgr;->mDownloader:Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordDownload;

    new-instance v1, Lcom/ime/framework/dbmanager/hotword/HotwordConvert;

    iget-object v2, p0, Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordMgr;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/ime/framework/dbmanager/hotword/HotwordConvert;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordMgr;->mHotwordEditor:Lcom/ime/framework/dbmanager/hotword/HotwordEditInterface;

    return-void
.end method

.method static synthetic access$000(Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordMgr;)Ljava/util/List;
    .locals 1

    invoke-direct {p0}, Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordMgr;->getDownloadHotWords()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordMgr;)V
    .locals 0

    invoke-direct {p0}, Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordMgr;->removeTempFile()V

    return-void
.end method

.method static synthetic access$200(Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordMgr;)V
    .locals 0

    invoke-direct {p0}, Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordMgr;->replaceXmlFile()V

    return-void
.end method

.method static synthetic access$300(Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordMgr;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordMgr;->convertXmlToEngin(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordMgr;ILjava/lang/Object;)Z
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordMgr;->handleDownloadCallBack(ILjava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordMgr;)Z
    .locals 1

    invoke-direct {p0}, Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordMgr;->isUpdatable()Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordMgr;ILjava/lang/Object;)Z
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordMgr;->handleDownloadCallBack(ILjava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private addUpdatedWords()V
    .locals 4

    iget-object v2, p0, Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordMgr;->mHotwordInMdbFileName:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordMgr;->getHotwordList(Ljava/lang/String;)Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordList;

    move-result-object v2

    iput-object v2, p0, Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordMgr;->mMdbHotwordList:Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordList;

    iget-object v2, p0, Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordMgr;->mHotwordXMLFileName:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordMgr;->getHotwordList(Ljava/lang/String;)Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordList;

    move-result-object v2

    iput-object v2, p0, Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordMgr;->mXmlHotwordList:Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordList;

    iget-object v2, p0, Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordMgr;->mXmlHotwordList:Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordList;

    invoke-virtual {v2}, Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordList;->getList()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordMgr;->addwordListToEngin(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordMgr;->mMdbHotwordList:Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordList;

    iget-object v3, p0, Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordMgr;->mXmlHotwordList:Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordList;

    invoke-virtual {v3}, Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordList;->getTimeStamp()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordList;->insertList(Ljava/util/List;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordMgr;->mMdbHotwordList:Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordList;

    invoke-direct {p0, v2}, Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordMgr;->writeHotwordListToXML(Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordList;)V

    :cond_0
    return-void
.end method

.method private addwordListToEngin(Ljava/util/List;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/ime/framework/dbmanager/hotword/HotWordPhraseInfo;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/ime/framework/dbmanager/hotword/HotWordPhraseInfo;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    if-eqz p1, :cond_2

    const/4 v6, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    if-ge v2, v7, :cond_2

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ime/framework/dbmanager/hotword/HotWordPhraseInfo;

    iget-object v7, p0, Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordMgr;->mMdbHotwordList:Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordList;

    invoke-virtual {v7}, Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordList;->getListSize()I

    move-result v7

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    add-int/2addr v7, v8

    add-int/lit8 v7, v7, 0x1

    const/16 v8, 0x3e8

    if-le v7, v8, :cond_0

    iget-object v7, p0, Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordMgr;->mMdbHotwordList:Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordList;

    invoke-virtual {v7}, Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordList;->getLastItem()Lcom/ime/framework/dbmanager/hotword/HotWordPhraseInfo;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v7, p0, Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordMgr;->mHotwordEditor:Lcom/ime/framework/dbmanager/hotword/HotwordEditInterface;

    invoke-virtual {v4}, Lcom/ime/framework/dbmanager/hotword/HotWordPhraseInfo;->getPhrase()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/ime/framework/dbmanager/hotword/HotwordEditInterface;->deleteHotwordFromEngin(Ljava/lang/String;)I

    iget-object v7, p0, Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordMgr;->mMdbHotwordList:Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordList;

    invoke-virtual {v7}, Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordList;->deleteLastItem()V

    :cond_0
    iget-object v7, p0, Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordMgr;->mMdbHotwordList:Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordList;

    invoke-virtual {v7}, Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordList;->getListSize()I

    move-result v7

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    add-int/2addr v7, v8

    add-int/lit8 v0, v7, 0x1

    iget-object v7, p0, Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordMgr;->mHotwordEditor:Lcom/ime/framework/dbmanager/hotword/HotwordEditInterface;

    invoke-virtual {v3}, Lcom/ime/framework/dbmanager/hotword/HotWordPhraseInfo;->getPhrase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3}, Lcom/ime/framework/dbmanager/hotword/HotWordPhraseInfo;->getSpell()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Lcom/ime/framework/dbmanager/hotword/HotwordEditInterface;->addHotWordToEngin(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Lcom/ime/framework/dbmanager/hotword/HotWordPhraseInfo;->getPhrase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method private convertXmlToEngin(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordMgr;->mHotwordEditor:Lcom/ime/framework/dbmanager/hotword/HotwordEditInterface;

    invoke-interface {v0}, Lcom/ime/framework/dbmanager/hotword/HotwordEditInterface;->init()I

    iget-object v0, p0, Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordMgr;->mHotwordEditor:Lcom/ime/framework/dbmanager/hotword/HotwordEditInterface;

    invoke-interface {v0, p1}, Lcom/ime/framework/dbmanager/hotword/HotwordEditInterface;->setLanguage(Ljava/lang/String;)I

    iget-object v0, p0, Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordMgr;->mHotwordInEnginFileName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordMgr;->isFileExist(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordMgr;->mHotwordEditor:Lcom/ime/framework/dbmanager/hotword/HotwordEditInterface;

    invoke-interface {v0}, Lcom/ime/framework/dbmanager/hotword/HotwordEditInterface;->resetHotwordsInEngin()I

    iget-object v0, p0, Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordMgr;->mHotwordEditor:Lcom/ime/framework/dbmanager/hotword/HotwordEditInterface;

    iget-object v1, p0, Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordMgr;->mHotwordInEnginFileName:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/ime/framework/dbmanager/hotword/HotwordEditInterface;->importHotwords(Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0}, Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordMgr;->addUpdatedWords()V

    iget-object v0, p0, Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordMgr;->mHotwordEditor:Lcom/ime/framework/dbmanager/hotword/HotwordEditInterface;

    iget-object v1, p0, Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordMgr;->mHotwordInEnginFileName:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/ime/framework/dbmanager/hotword/HotwordEditInterface;->exportHotwords(Ljava/lang/String;)I

    iget-object v0, p0, Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordMgr;->mHotwordEditor:Lcom/ime/framework/dbmanager/hotword/HotwordEditInterface;

    invoke-interface {v0}, Lcom/ime/framework/dbmanager/hotword/HotwordEditInterface;->exit()V

    return-void
.end method

.method private createListFile()Ljava/io/File;
    .locals 3

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordMgr;->mHotwordInMdbFileName:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v2

    if-nez v2, :cond_0

    :cond_0
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private deleteFile(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_0

    :cond_0
    return-void
.end method

.method private getDownloadHotWords()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/ime/framework/dbmanager/hotword/HotWordPhraseInfo;",
            ">;"
        }
    .end annotation

    iget-object v1, p0, Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordMgr;->mXMLParser:Lcom/ime/framework/dbmanager/hotword/sogou/SogouListInterface;

    iget-object v2, p0, Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordMgr;->mTempHotwordXMLFileName:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/ime/framework/dbmanager/hotword/sogou/SogouListInterface;->parseXML(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private getHotwordList(Ljava/lang/String;)Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordList;
    .locals 3

    new-instance v0, Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordList;

    invoke-direct {v0}, Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordList;-><init>()V

    invoke-direct {p0, p1}, Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordMgr;->isFileExist(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordMgr;->mXMLParser:Lcom/ime/framework/dbmanager/hotword/sogou/SogouListInterface;

    invoke-interface {v2, p1}, Lcom/ime/framework/dbmanager/hotword/sogou/SogouListInterface;->parseXML(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordMgr;->mXMLParser:Lcom/ime/framework/dbmanager/hotword/sogou/SogouListInterface;

    invoke-interface {v2}, Lcom/ime/framework/dbmanager/hotword/sogou/SogouListInterface;->getTimeStamp()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordList;->setList(Ljava/util/List;Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public static getInstance()Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordMgr;
    .locals 1

    sget-object v0, Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordMgr;->mInstance:Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordMgr;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordMgr;
    .locals 1

    sget-object v0, Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordMgr;->mInstance:Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordMgr;

    if-nez v0, :cond_0

    new-instance v0, Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordMgr;

    invoke-direct {v0, p0, p1}, Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordMgr;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v0, Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordMgr;->mInstance:Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordMgr;

    :cond_0
    sget-object v0, Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordMgr;->mInstance:Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordMgr;

    return-object v0
.end method

.method private isFileExist(Ljava/lang/String;)Z
    .locals 2

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isHotWordListFileExist()Z
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordMgr;->mHotwordInMdbFileName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordMgr;->isFileExist(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private isHotWordXmlFileExist()Z
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordMgr;->mHotwordXMLFileName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordMgr;->isFileExist(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private isSameVsersion()Z
    .locals 4

    const/4 v0, 0x0

    const-string v1, ""

    const-string v2, ""

    iget-object v3, p0, Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordMgr;->mMdbHotwordList:Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordList;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordMgr;->mXmlHotwordList:Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordList;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordMgr;->mXmlHotwordList:Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordList;

    invoke-virtual {v3}, Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordList;->getTimeStamp()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordMgr;->mMdbHotwordList:Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordList;

    invoke-virtual {v3}, Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordList;->getTimeStamp()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isUpdatable()Z
    .locals 12

    const/4 v0, 0x0

    new-instance v1, Ljava/io/File;

    iget-object v10, p0, Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordMgr;->mTempHotwordXMLFileName:Ljava/lang/String;

    invoke-direct {v1, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_2

    const/4 v6, 0x0

    const/4 v4, 0x0

    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v10

    long-to-int v9, v10

    if-eqz v9, :cond_0

    new-array v6, v9, [B

    invoke-virtual {v5, v6}, Ljava/io/FileInputStream;->read([B)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v8

    const/4 v10, -0x1

    if-ne v8, v10, :cond_0

    :cond_0
    if-eqz v5, :cond_1

    :try_start_2
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    move-object v4, v5

    :goto_1
    if-eqz v6, :cond_2

    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v6}, Ljava/lang/String;-><init>([B)V

    const-string v10, "noupdate"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    const/4 v0, 0x0

    :cond_2
    :goto_2
    return v0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v3

    :goto_3
    :try_start_3
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v4, :cond_3

    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    :cond_3
    :goto_4
    const/4 v0, 0x0

    goto :goto_1

    :catch_2
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    :catchall_0
    move-exception v10

    :goto_5
    if-eqz v4, :cond_4

    :try_start_5
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :cond_4
    :goto_6
    const/4 v0, 0x0

    throw v10

    :catch_3
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    :cond_5
    const/4 v0, 0x1

    goto :goto_2

    :catchall_1
    move-exception v10

    move-object v4, v5

    goto :goto_5

    :catch_4
    move-exception v3

    move-object v4, v5

    goto :goto_3
.end method

.method private removeTempFile()V
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordMgr;->mTempHotwordXMLFileName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordMgr;->deleteFile(Ljava/lang/String;)V

    return-void
.end method

.method private replaceXmlFile()V
    .locals 3

    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordMgr;->mHotwordXMLFileName:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordMgr;->mTempHotwordXMLFileName:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_0
    return-void
.end method

.method private writeHotwordListToXML(Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordList;)V
    .locals 19

    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v4

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v4}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljavax/xml/parsers/DocumentBuilder;->newDocument()Lorg/w3c/dom/Document;

    move-result-object v5

    const-string v18, "root"

    move-object/from16 v0, v18

    invoke-interface {v5, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v12

    invoke-interface {v5, v12}, Lorg/w3c/dom/Document;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    const-string v18, "datetime"

    move-object/from16 v0, v18

    invoke-interface {v5, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordList;->getTimeStamp()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-interface {v2, v0}, Lorg/w3c/dom/Element;->setTextContent(Ljava/lang/String;)V

    invoke-interface {v12, v2}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    invoke-virtual/range {p1 .. p1}, Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordList;->getList()Ljava/util/List;

    move-result-object v13

    const-string v18, "wordCount"

    move-object/from16 v0, v18

    invoke-interface {v5, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v8

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-interface {v8, v0}, Lorg/w3c/dom/Element;->setTextContent(Ljava/lang/String;)V

    invoke-interface {v12, v8}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    const/4 v7, 0x0

    :goto_0
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v18

    move/from16 v0, v18

    if-ge v7, v0, :cond_1

    invoke-interface {v13, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/ime/framework/dbmanager/hotword/HotWordPhraseInfo;

    invoke-virtual/range {v18 .. v18}, Lcom/ime/framework/dbmanager/hotword/HotWordPhraseInfo;->getPhrase()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v13, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/ime/framework/dbmanager/hotword/HotWordPhraseInfo;

    invoke-virtual/range {v18 .. v18}, Lcom/ime/framework/dbmanager/hotword/HotWordPhraseInfo;->getSpell()Ljava/lang/String;

    move-result-object v10

    if-eqz v9, :cond_0

    const-string v18, "word"

    move-object/from16 v0, v18

    invoke-interface {v5, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v17

    const-string v18, "pinyin"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v0, v1, v10}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-interface {v0, v9}, Lorg/w3c/dom/Element;->setTextContent(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-interface {v12, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_1
    :try_start_1
    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v15

    invoke-virtual {v15}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v16

    new-instance v14, Ljavax/xml/transform/dom/DOMSource;

    invoke-direct {v14, v5}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    new-instance v11, Ljavax/xml/transform/stream/StreamResult;

    invoke-direct/range {p0 .. p0}, Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordMgr;->createListFile()Ljava/io/File;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v11, v0}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/File;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v14, v11}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V
    :try_end_1
    .catch Ljavax/xml/transform/TransformerFactoryConfigurationError; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljavax/xml/transform/TransformerConfigurationException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljavax/xml/transform/TransformerException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    return-void

    :catch_0
    move-exception v6

    :try_start_2
    invoke-virtual {v6}, Ljavax/xml/transform/TransformerFactoryConfigurationError;->printStackTrace()V
    :try_end_2
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v6

    invoke-virtual {v6}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V

    goto :goto_1

    :catch_2
    move-exception v6

    :try_start_3
    invoke-virtual {v6}, Ljavax/xml/transform/TransformerConfigurationException;->printStackTrace()V

    goto :goto_1

    :catch_3
    move-exception v6

    invoke-virtual {v6}, Ljavax/xml/transform/TransformerException;->printStackTrace()V
    :try_end_3
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1
.end method


# virtual methods
.method public cancelUpdate(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordMgr;->isUpdating(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Lcom/ime/framework/dbmanager/DbUpdateAbs;->cancelUpdate(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordMgr;->mDownloader:Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordDownload;

    invoke-virtual {v0}, Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordDownload;->stopDownload()V

    :cond_0
    return-void
.end method

.method public checkUpdatable(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordMgr;->checkUpdatable(Ljava/lang/String;Lcom/ime/framework/dbmanager/DbUpdateInterface$DbDownloadNotifier;)V

    return-void
.end method

.method public checkUpdatable(Ljava/lang/String;Lcom/ime/framework/dbmanager/DbUpdateInterface$DbDownloadNotifier;)V
    .locals 4

    invoke-virtual {p0}, Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordMgr;->getCurrentHotwordtimeStamp()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http://input.shouji.sogou.com/jsp/openapi/reciapi.jsp?d="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&ask=1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordMgr;->mDownloader:Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordDownload;

    new-instance v3, Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordMgr$2;

    invoke-direct {v3, p0, p2}, Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordMgr$2;-><init>(Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordMgr;Lcom/ime/framework/dbmanager/DbUpdateInterface$DbDownloadNotifier;)V

    invoke-virtual {v2, v1, v3}, Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordDownload;->download(Ljava/lang/String;Lcom/ime/framework/dbmanager/DbUpdateInterface$DbDownloadNotifier;)V

    return-void
.end method

.method public checkandAddHotWords()Z
    .locals 5

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordMgr;->isHotWordXmlFileExist()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordMgr;->mHotwordInMdbFileName:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordMgr;->getHotwordList(Ljava/lang/String;)Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordList;

    move-result-object v3

    iput-object v3, p0, Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordMgr;->mMdbHotwordList:Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordList;

    iget-object v3, p0, Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordMgr;->mHotwordXMLFileName:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordMgr;->getHotwordList(Ljava/lang/String;)Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordList;

    move-result-object v3

    iput-object v3, p0, Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordMgr;->mXmlHotwordList:Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordList;

    invoke-direct {p0}, Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordMgr;->isSameVsersion()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordMgr;->mHotwordEditor:Lcom/ime/framework/dbmanager/hotword/HotwordEditInterface;

    invoke-interface {v3}, Lcom/ime/framework/dbmanager/hotword/HotwordEditInterface;->init()I

    iget-object v3, p0, Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordMgr;->mHotwordEditor:Lcom/ime/framework/dbmanager/hotword/HotwordEditInterface;

    const-string v4, "zh_CN"

    invoke-interface {v3, v4}, Lcom/ime/framework/dbmanager/hotword/HotwordEditInterface;->setLanguage(Ljava/lang/String;)I

    iget-object v3, p0, Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordMgr;->mHotwordInEnginFileName:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordMgr;->isFileExist(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordMgr;->mHotwordEditor:Lcom/ime/framework/dbmanager/hotword/HotwordEditInterface;

    invoke-interface {v3}, Lcom/ime/framework/dbmanager/hotword/HotwordEditInterface;->resetHotwordsInEngin()I

    iget-object v3, p0, Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordMgr;->mHotwordEditor:Lcom/ime/framework/dbmanager/hotword/HotwordEditInterface;

    iget-object v4, p0, Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordMgr;->mHotwordInEnginFileName:Ljava/lang/String;

    invoke-interface {v3, v4}, Lcom/ime/framework/dbmanager/hotword/HotwordEditInterface;->importHotwords(Ljava/lang/String;)I

    :cond_0
    iget-object v3, p0, Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordMgr;->mXmlHotwordList:Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordList;

    invoke-virtual {v3}, Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordList;->getList()Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordMgr;->addwordListToEngin(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    iget-object v3, p0, Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordMgr;->mMdbHotwordList:Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordList;

    iget-object v4, p0, Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordMgr;->mXmlHotwordList:Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordList;

    invoke-virtual {v4}, Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordList;->getTimeStamp()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordList;->insertList(Ljava/util/List;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordMgr;->mHotwordEditor:Lcom/ime/framework/dbmanager/hotword/HotwordEditInterface;

    iget-object v4, p0, Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordMgr;->mHotwordInEnginFileName:Ljava/lang/String;

    invoke-interface {v3, v4}, Lcom/ime/framework/dbmanager/hotword/HotwordEditInterface;->exportHotwords(Ljava/lang/String;)I

    iget-object v3, p0, Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordMgr;->mMdbHotwordList:Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordList;

    invoke-direct {p0, v3}, Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordMgr;->writeHotwordListToXML(Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordList;)V

    :cond_1
    iget-object v3, p0, Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordMgr;->mHotwordEditor:Lcom/ime/framework/dbmanager/hotword/HotwordEditInterface;

    invoke-interface {v3}, Lcom/ime/framework/dbmanager/hotword/HotwordEditInterface;->exit()V

    const/4 v1, 0x1

    :cond_2
    :goto_0
    return v1

    :cond_3
    invoke-direct {p0}, Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordMgr;->isHotWordListFileExist()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordMgr;->mHotwordInMdbFileName:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordMgr;->deleteFile(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getCurrentHotwordtimeStamp()Ljava/lang/String;
    .locals 3

    const-string v0, ""

    iget-object v1, p0, Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordMgr;->mHotwordInMdbFileName:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordMgr;->isFileExist(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordMgr;->mXMLParser:Lcom/ime/framework/dbmanager/hotword/sogou/SogouListInterface;

    iget-object v2, p0, Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordMgr;->mHotwordInMdbFileName:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/ime/framework/dbmanager/hotword/sogou/SogouListInterface;->parseXML(Ljava/lang/String;)Ljava/util/List;

    iget-object v1, p0, Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordMgr;->mXMLParser:Lcom/ime/framework/dbmanager/hotword/sogou/SogouListInterface;

    invoke-interface {v1}, Lcom/ime/framework/dbmanager/hotword/sogou/SogouListInterface;->getTimeStamp()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getDBName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordMgr;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->isXT9DBUpdateSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordMgr;->mContext:Landroid/content/Context;

    const v2, 0x7f0d037a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordMgr;->mContext:Landroid/content/Context;

    const v2, 0x7f0d0381

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getHotwordEnginFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    iget-object v0, p0, Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordMgr;->mHotwordInEnginFileName:Ljava/lang/String;

    return-object v0
.end method

.method public setUpdateBackground(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordMgr;->setUpdateCallBack(Ljava/lang/String;Lcom/ime/framework/dbmanager/DbUpdateInterface$DbDownloadNotifier;)V

    return-void
.end method

.method public startAutoUpdate(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordMgr;->update(Ljava/lang/String;)V

    return-void
.end method

.method public stopDownload()V
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordMgr;->mDownloader:Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordDownload;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordMgr;->mDownloader:Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordDownload;

    invoke-virtual {v0}, Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordDownload;->stopDownload()V

    :cond_0
    return-void
.end method

.method public update(Ljava/lang/String;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/ime/framework/dbmanager/DbUpdateAbs;->update(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordMgr;->mHotwordInEnginFileName:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordMgr;->isFileExist(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordMgr;->mHotwordInMdbFileName:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordMgr;->deleteFile(Ljava/lang/String;)V

    :cond_0
    const-string v0, ""

    iget-object v2, p0, Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordMgr;->mHotwordInMdbFileName:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordMgr;->isFileExist(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordMgr;->mXMLParser:Lcom/ime/framework/dbmanager/hotword/sogou/SogouListInterface;

    iget-object v3, p0, Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordMgr;->mHotwordInMdbFileName:Ljava/lang/String;

    invoke-interface {v2, v3}, Lcom/ime/framework/dbmanager/hotword/sogou/SogouListInterface;->parseXML(Ljava/lang/String;)Ljava/util/List;

    iget-object v2, p0, Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordMgr;->mXMLParser:Lcom/ime/framework/dbmanager/hotword/sogou/SogouListInterface;

    invoke-interface {v2}, Lcom/ime/framework/dbmanager/hotword/sogou/SogouListInterface;->getTimeStamp()Ljava/lang/String;

    move-result-object v0

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http://input.shouji.sogou.com/jsp/openapi/reciapi.jsp?d="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordMgr;->mDownloader:Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordDownload;

    new-instance v3, Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordMgr$1;

    invoke-direct {v3, p0}, Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordMgr$1;-><init>(Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordMgr;)V

    invoke-virtual {v2, v1, v3}, Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordDownload;->download(Ljava/lang/String;Lcom/ime/framework/dbmanager/DbUpdateInterface$DbDownloadNotifier;)V

    return-void
.end method
