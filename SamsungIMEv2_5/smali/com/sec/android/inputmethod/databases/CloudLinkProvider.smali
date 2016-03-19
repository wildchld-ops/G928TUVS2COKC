.class public Lcom/sec/android/inputmethod/databases/CloudLinkProvider;
.super Ljava/lang/Object;
.source "CloudLinkProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/inputmethod/databases/CloudLinkProvider$1;,
        Lcom/sec/android/inputmethod/databases/CloudLinkProvider$DownloadThread;,
        Lcom/sec/android/inputmethod/databases/CloudLinkProvider$CloudTimer;,
        Lcom/sec/android/inputmethod/databases/CloudLinkProvider$CloudInfoItem;
    }
.end annotation


# static fields
.field public static final CLOUD_NETWORK_DISABLE:I = 0x2

.field public static final CLOUD_ONLY_USE_WLAN:I = 0x0

.field public static final CLOUD_USE_ALL_NETWORK:I = 0x1

.field private static final DEBUG:Z = false

.field private static final DEFULT_LOCAL_FRIST_PAGE_COUNT:I = 0xa

.field private static final MAX_CLOUD_QUEUE_SIZE:I = 0x14

.field private static final MIN_SYLLABLE_LEN:I = 0x2

.field public static final SERVER_ADDRESS:Ljava/lang/String; = "http://shouji.sogou.com/web_ime/mobile.php?oem=samsung&acc=342c2&input="

.field public static final SOGOU_CONTENT_TYPE:Ljava/lang/String; = "application/octet-stream"

.field private static final TAG:Ljava/lang/String; = "CloudLinkProvider"


# instance fields
.field mCandidate:Ljava/lang/String;

.field private mCloudQueue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/sec/android/inputmethod/databases/CloudLinkProvider$CloudInfoItem;",
            ">;"
        }
    .end annotation
.end field

.field private mComposingStr:Ljava/lang/String;

.field mContext:Landroid/content/Context;

.field private mDownloadThread:Lcom/sec/android/inputmethod/databases/CloudLinkProvider$DownloadThread;

.field mInputManger:Lcom/ime/framework/common/InputManager;

.field private mTimer:Lcom/sec/android/inputmethod/databases/CloudLinkProvider$CloudTimer;

.field private mUIhandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/ime/framework/common/InputManager;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/sec/android/inputmethod/databases/CloudLinkProvider;->mComposingStr:Ljava/lang/String;

    iput-object v1, p0, Lcom/sec/android/inputmethod/databases/CloudLinkProvider;->mCandidate:Ljava/lang/String;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/inputmethod/databases/CloudLinkProvider;->mCloudQueue:Ljava/util/LinkedList;

    iput-object p1, p0, Lcom/sec/android/inputmethod/databases/CloudLinkProvider;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/sec/android/inputmethod/databases/CloudLinkProvider;->mInputManger:Lcom/ime/framework/common/InputManager;

    new-instance v0, Lcom/sec/android/inputmethod/databases/CloudLinkProvider$CloudTimer;

    invoke-direct {v0, p0, v1}, Lcom/sec/android/inputmethod/databases/CloudLinkProvider$CloudTimer;-><init>(Lcom/sec/android/inputmethod/databases/CloudLinkProvider;Lcom/sec/android/inputmethod/databases/CloudLinkProvider$1;)V

    iput-object v0, p0, Lcom/sec/android/inputmethod/databases/CloudLinkProvider;->mTimer:Lcom/sec/android/inputmethod/databases/CloudLinkProvider$CloudTimer;

    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/inputmethod/databases/CloudLinkProvider;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/inputmethod/databases/CloudLinkProvider;->mUIhandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/inputmethod/databases/CloudLinkProvider;)Lcom/sec/android/inputmethod/databases/CloudLinkProvider$DownloadThread;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/inputmethod/databases/CloudLinkProvider;->mDownloadThread:Lcom/sec/android/inputmethod/databases/CloudLinkProvider$DownloadThread;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/inputmethod/databases/CloudLinkProvider;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/inputmethod/databases/CloudLinkProvider;->mergeWithLocal(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/sec/android/inputmethod/databases/CloudLinkProvider;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/inputmethod/databases/CloudLinkProvider;->addToCloudQueue(Ljava/lang/String;)V

    return-void
.end method

.method private addToCloudQueue(Ljava/lang/String;)V
    .locals 3

    iget-object v1, p0, Lcom/sec/android/inputmethod/databases/CloudLinkProvider;->mCloudQueue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    const/16 v2, 0x14

    if-lt v1, v2, :cond_0

    iget-object v1, p0, Lcom/sec/android/inputmethod/databases/CloudLinkProvider;->mCloudQueue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    :cond_0
    new-instance v0, Lcom/sec/android/inputmethod/databases/CloudLinkProvider$CloudInfoItem;

    invoke-direct {v0}, Lcom/sec/android/inputmethod/databases/CloudLinkProvider$CloudInfoItem;-><init>()V

    iget-object v1, p0, Lcom/sec/android/inputmethod/databases/CloudLinkProvider;->mComposingStr:Ljava/lang/String;

    iput-object v1, v0, Lcom/sec/android/inputmethod/databases/CloudLinkProvider$CloudInfoItem;->pinyin:Ljava/lang/String;

    iput-object p1, v0, Lcom/sec/android/inputmethod/databases/CloudLinkProvider$CloudInfoItem;->result:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/android/inputmethod/databases/CloudLinkProvider;->mCloudQueue:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    return-void
.end method

.method private checkInputMode()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method private getRecordPosition()I
    .locals 5

    const/4 v1, -0x1

    iget-object v3, p0, Lcom/sec/android/inputmethod/databases/CloudLinkProvider;->mComposingStr:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/inputmethod/databases/CloudLinkProvider;->mComposingStr:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    const/4 v1, -0x1

    move v2, v1

    :goto_0
    return v2

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iget-object v3, p0, Lcom/sec/android/inputmethod/databases/CloudLinkProvider;->mCloudQueue:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    iget-object v3, p0, Lcom/sec/android/inputmethod/databases/CloudLinkProvider;->mCloudQueue:Ljava/util/LinkedList;

    invoke-virtual {v3, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/inputmethod/databases/CloudLinkProvider$CloudInfoItem;

    iget-object v3, v3, Lcom/sec/android/inputmethod/databases/CloudLinkProvider$CloudInfoItem;->pinyin:Ljava/lang/String;

    iget-object v4, p0, Lcom/sec/android/inputmethod/databases/CloudLinkProvider;->mComposingStr:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    move v1, v0

    :cond_2
    move v2, v1

    goto :goto_0

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private getSyllableLength()I
    .locals 5

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sec/android/inputmethod/databases/CloudLinkProvider;->mInputManger:Lcom/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/ime/framework/common/InputManager;->getInputLanguage()I

    move-result v3

    const v4, 0x7a68434e

    if-ne v3, v4, :cond_1

    const/4 v1, 0x0

    :goto_0
    iget-object v3, p0, Lcom/sec/android/inputmethod/databases/CloudLinkProvider;->mComposingStr:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/inputmethod/databases/CloudLinkProvider;->mComposingStr:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v3, 0x41

    if-lt v0, v3, :cond_0

    const/16 v3, 0x5a

    if-gt v0, v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method private isCloudNetworkEnable()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sec/android/inputmethod/databases/CloudLinkProvider;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/touchtype_fluency/service/util/NetworkUtil;->isWLANConnected(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/inputmethod/databases/CloudLinkProvider;->mInputManger:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->getCloudLinkFeatureStatus()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/sec/android/inputmethod/databases/CloudLinkProvider;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/touchtype_fluency/service/util/NetworkUtil;->isWLANConnected(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/inputmethod/databases/CloudLinkProvider;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/touchtype_fluency/service/util/NetworkUtil;->isMobileNetWorkConnected(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    iget-object v1, p0, Lcom/sec/android/inputmethod/databases/CloudLinkProvider;->mInputManger:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->getCloudLinkFeatureStatus()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private mergeWithLocal(Ljava/lang/String;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public checkCloudPolicy(Z)Z
    .locals 9

    const/16 v8, 0xa

    const/4 v3, 0x0

    iget-object v6, p0, Lcom/sec/android/inputmethod/databases/CloudLinkProvider;->mInputManger:Lcom/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/ime/framework/common/InputManager;->getInputLanguage()I

    move-result v6

    const v7, 0x7a68434e

    if-ne v6, v7, :cond_2

    iget-object v6, p0, Lcom/sec/android/inputmethod/databases/CloudLinkProvider;->mInputManger:Lcom/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/ime/framework/common/InputManager;->getSuggestionActiveIndex()I

    move-result v2

    iget-object v6, p0, Lcom/sec/android/inputmethod/databases/CloudLinkProvider;->mInputManger:Lcom/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/ime/framework/common/InputManager;->getWordCandidateData()Ljava/util/ArrayList;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/inputmethod/databases/CloudLinkProvider;->mInputManger:Lcom/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/ime/framework/common/InputManager;->getCandidates()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    const-string v6, ""

    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    if-lez v2, :cond_0

    add-int/lit8 v6, v2, -0x1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Byte;

    invoke-virtual {v6}, Ljava/lang/Byte;->intValue()I

    move-result v1

    :goto_0
    if-nez v1, :cond_1

    move v4, v3

    :goto_1
    return v4

    :cond_0
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Byte;

    invoke-virtual {v6}, Ljava/lang/Byte;->intValue()I

    move-result v1

    goto :goto_0

    :cond_1
    if-ne v1, v8, :cond_3

    if-nez p1, :cond_3

    const/4 v3, 0x1

    :cond_2
    :goto_2
    move v4, v3

    goto :goto_1

    :cond_3
    if-eq v1, v8, :cond_2

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/sec/android/inputmethod/databases/CloudLinkProvider;->getSyllableLength()I

    move-result v6

    const/4 v7, 0x2

    if-lt v6, v7, :cond_2

    const/4 v3, 0x1

    goto :goto_2
.end method

.method public decoding(Ljava/lang/String;)I
    .locals 6

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/databases/CloudLinkProvider;->reset()V

    invoke-direct {p0}, Lcom/sec/android/inputmethod/databases/CloudLinkProvider;->checkInputMode()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p0, v4}, Lcom/sec/android/inputmethod/databases/CloudLinkProvider;->checkCloudPolicy(Z)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-direct {p0}, Lcom/sec/android/inputmethod/databases/CloudLinkProvider;->isCloudNetworkEnable()Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v1, ""

    move-object v1, p1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    invoke-virtual {p0, v1}, Lcom/sec/android/inputmethod/databases/CloudLinkProvider;->setComposingStr(Ljava/lang/String;)V

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v3, 0x4c

    iput v3, v0, Landroid/os/Message;->what:I

    iget-object v3, p0, Lcom/sec/android/inputmethod/databases/CloudLinkProvider;->mUIhandler:Landroid/os/Handler;

    invoke-virtual {v3, v0}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    invoke-direct {p0}, Lcom/sec/android/inputmethod/databases/CloudLinkProvider;->getRecordPosition()I

    move-result v2

    if-gez v2, :cond_2

    iget-object v3, p0, Lcom/sec/android/inputmethod/databases/CloudLinkProvider;->mTimer:Lcom/sec/android/inputmethod/databases/CloudLinkProvider$CloudTimer;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/databases/CloudLinkProvider$CloudTimer;->start()V

    :goto_1
    move v3, v4

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/sec/android/inputmethod/databases/CloudLinkProvider;->mCloudQueue:Ljava/util/LinkedList;

    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/inputmethod/databases/CloudLinkProvider$CloudInfoItem;

    iget-object v3, v3, Lcom/sec/android/inputmethod/databases/CloudLinkProvider$CloudInfoItem;->result:Ljava/lang/String;

    iput-object v3, p0, Lcom/sec/android/inputmethod/databases/CloudLinkProvider;->mCandidate:Ljava/lang/String;

    const/16 v3, 0x4a

    iput v3, v0, Landroid/os/Message;->what:I

    iget-object v3, p0, Lcom/sec/android/inputmethod/databases/CloudLinkProvider;->mUIhandler:Landroid/os/Handler;

    invoke-virtual {v3, v0}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto :goto_1
.end method

.method public delUdbPhrase(I)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getActiveCandIdx()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAllCandidates()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCandidateType(I)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCloudWord()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/inputmethod/databases/CloudLinkProvider;->mCandidate:Ljava/lang/String;

    return-object v0
.end method

.method public getPartCandidates(IZ)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public init()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public reset()V
    .locals 2

    iget-object v1, p0, Lcom/sec/android/inputmethod/databases/CloudLinkProvider;->mTimer:Lcom/sec/android/inputmethod/databases/CloudLinkProvider$CloudTimer;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/databases/CloudLinkProvider$CloudTimer;->stop()V

    iget-object v1, p0, Lcom/sec/android/inputmethod/databases/CloudLinkProvider;->mDownloadThread:Lcom/sec/android/inputmethod/databases/CloudLinkProvider$DownloadThread;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/inputmethod/databases/CloudLinkProvider;->mDownloadThread:Lcom/sec/android/inputmethod/databases/CloudLinkProvider$DownloadThread;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/databases/CloudLinkProvider$DownloadThread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/inputmethod/databases/CloudLinkProvider;->mDownloadThread:Lcom/sec/android/inputmethod/databases/CloudLinkProvider$DownloadThread;

    :cond_0
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v1, 0x48

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/sec/android/inputmethod/databases/CloudLinkProvider;->mUIhandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void
.end method

.method public setComposingStr(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/inputmethod/databases/CloudLinkProvider;->mComposingStr:Ljava/lang/String;

    return-void
.end method

.method public setDecoderService(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public setUIHandler(Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/inputmethod/databases/CloudLinkProvider;->mUIhandler:Landroid/os/Handler;

    return-void
.end method

.method public startDownload()V
    .locals 4

    iget-object v2, p0, Lcom/sec/android/inputmethod/databases/CloudLinkProvider;->mComposingStr:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/inputmethod/databases/CloudLinkProvider;->mComposingStr:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    const/16 v2, 0x47

    iput v2, v1, Landroid/os/Message;->what:I

    iget-object v2, p0, Lcom/sec/android/inputmethod/databases/CloudLinkProvider;->mUIhandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http://shouji.sogou.com/web_ime/mobile.php?oem=samsung&acc=342c2&input="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/inputmethod/databases/CloudLinkProvider;->mComposingStr:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/sec/android/inputmethod/databases/CloudLinkProvider$DownloadThread;

    invoke-direct {v2, p0, v0}, Lcom/sec/android/inputmethod/databases/CloudLinkProvider$DownloadThread;-><init>(Lcom/sec/android/inputmethod/databases/CloudLinkProvider;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/sec/android/inputmethod/databases/CloudLinkProvider;->mDownloadThread:Lcom/sec/android/inputmethod/databases/CloudLinkProvider$DownloadThread;

    iget-object v2, p0, Lcom/sec/android/inputmethod/databases/CloudLinkProvider;->mDownloadThread:Lcom/sec/android/inputmethod/databases/CloudLinkProvider$DownloadThread;

    invoke-virtual {v2}, Lcom/sec/android/inputmethod/databases/CloudLinkProvider$DownloadThread;->start()V

    goto :goto_0
.end method

.method public stopGetCandidates()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
