.class public Lcom/ime/framework/dbmanager/hotword/xt9/Xt9HotwordMgr;
.super Lcom/ime/framework/dbmanager/DbUpdateAbs;
.source "Xt9HotwordMgr.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "XT9HotwordMgr"

.field public static final XT9_CHN_HOTWORD_FILE_NAME:Ljava/lang/String; = "/Samsung_ZHsbUNps_hotword.mdb"

.field public static final XT9_HK_HOTWORD_FILE_NAME:Ljava/lang/String; = "/Samsung_ZHtbUNpsHK_hotword.mdb"

.field public static final XT9_TW_HOTWORD_FILE_NAME:Ljava/lang/String; = "/Samsung_ZHtbUNpsTW_hotword.mdb"

.field public static final _XT9_HOTWORD_DIR:Ljava/lang/String; = "/xt9"

.field private static mInstance:Lcom/ime/framework/dbmanager/hotword/xt9/Xt9HotwordMgr;


# instance fields
.field private mChnHotwordFileName:Ljava/lang/String;

.field private mHKHotwordFileName:Ljava/lang/String;

.field private mHotwordUpdate:Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;

.field private mInputManager:Lcom/ime/framework/common/InputManager;

.field private mTWHotwordFileName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/ime/framework/dbmanager/hotword/xt9/Xt9HotwordMgr;->mInstance:Lcom/ime/framework/dbmanager/hotword/xt9/Xt9HotwordMgr;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/ime/framework/dbmanager/DbUpdateAbs;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/ime/framework/dbmanager/hotword/xt9/Xt9HotwordMgr;->mHotwordUpdate:Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/xt9"

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
    iput-object p1, p0, Lcom/ime/framework/dbmanager/hotword/xt9/Xt9HotwordMgr;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/ime/framework/common/InputManagerImpl;->getInstance()Lcom/ime/framework/common/InputManager;

    move-result-object v1

    iput-object v1, p0, Lcom/ime/framework/dbmanager/hotword/xt9/Xt9HotwordMgr;->mInputManager:Lcom/ime/framework/common/InputManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/xt9"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/Samsung_ZHsbUNps_hotword.mdb"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ime/framework/dbmanager/hotword/xt9/Xt9HotwordMgr;->mChnHotwordFileName:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/xt9"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/Samsung_ZHtbUNpsHK_hotword.mdb"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ime/framework/dbmanager/hotword/xt9/Xt9HotwordMgr;->mHKHotwordFileName:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/xt9"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/Samsung_ZHtbUNpsTW_hotword.mdb"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ime/framework/dbmanager/hotword/xt9/Xt9HotwordMgr;->mTWHotwordFileName:Ljava/lang/String;

    iget-object v1, p0, Lcom/ime/framework/dbmanager/hotword/xt9/Xt9HotwordMgr;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->isXT9DBUpdateSupported()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/ime/framework/dbmanager/hotword/xt9/Xt9HotwordMgr;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;->getInstance(Landroid/content/Context;)Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;

    move-result-object v1

    iput-object v1, p0, Lcom/ime/framework/dbmanager/hotword/xt9/Xt9HotwordMgr;->mHotwordUpdate:Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;

    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcom/ime/framework/dbmanager/hotword/xt9/Xt9HotwordMgr;Ljava/lang/String;Ljava/io/File;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ime/framework/dbmanager/hotword/xt9/Xt9HotwordMgr;->updateFinish(Ljava/lang/String;Ljava/io/File;)V

    return-void
.end method

.method static synthetic access$100(Lcom/ime/framework/dbmanager/hotword/xt9/Xt9HotwordMgr;ILjava/lang/Object;)Z
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/ime/framework/dbmanager/hotword/xt9/Xt9HotwordMgr;->handleDownloadCallBack(ILjava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static getInstance()Lcom/ime/framework/dbmanager/hotword/xt9/Xt9HotwordMgr;
    .locals 1

    sget-object v0, Lcom/ime/framework/dbmanager/hotword/xt9/Xt9HotwordMgr;->mInstance:Lcom/ime/framework/dbmanager/hotword/xt9/Xt9HotwordMgr;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/ime/framework/dbmanager/hotword/xt9/Xt9HotwordMgr;
    .locals 1

    sget-object v0, Lcom/ime/framework/dbmanager/hotword/xt9/Xt9HotwordMgr;->mInstance:Lcom/ime/framework/dbmanager/hotword/xt9/Xt9HotwordMgr;

    if-nez v0, :cond_0

    new-instance v0, Lcom/ime/framework/dbmanager/hotword/xt9/Xt9HotwordMgr;

    invoke-direct {v0, p0, p1}, Lcom/ime/framework/dbmanager/hotword/xt9/Xt9HotwordMgr;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v0, Lcom/ime/framework/dbmanager/hotword/xt9/Xt9HotwordMgr;->mInstance:Lcom/ime/framework/dbmanager/hotword/xt9/Xt9HotwordMgr;

    :cond_0
    sget-object v0, Lcom/ime/framework/dbmanager/hotword/xt9/Xt9HotwordMgr;->mInstance:Lcom/ime/framework/dbmanager/hotword/xt9/Xt9HotwordMgr;

    return-object v0
.end method

.method private updateFinish(Ljava/lang/String;Ljava/io/File;)V
    .locals 4

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v2, Ljava/io/File;

    invoke-virtual {p0, p1}, Lcom/ime/framework/dbmanager/hotword/xt9/Xt9HotwordMgr;->getHotwordFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :cond_0
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    invoke-static {p2, v2}, Lcom/ime/framework/util/Utils;->uncompressGZipFile(Ljava/io/File;Ljava/io/File;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_1

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public cancelUpdate(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/ime/framework/dbmanager/hotword/xt9/Xt9HotwordMgr;->isUpdating(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Lcom/ime/framework/dbmanager/DbUpdateAbs;->cancelUpdate(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ime/framework/dbmanager/hotword/xt9/Xt9HotwordMgr;->mHotwordUpdate:Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/dbmanager/hotword/xt9/Xt9HotwordMgr;->mHotwordUpdate:Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;

    invoke-virtual {p0, p1}, Lcom/ime/framework/dbmanager/hotword/xt9/Xt9HotwordMgr;->getDownloadCallBack(Ljava/lang/String;)Lcom/ime/framework/dbmanager/DbUpdateInterface$DbDownloadNotifier;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;->cancelUpdate(Ljava/lang/String;Lcom/ime/framework/dbmanager/DbUpdateInterface$DbDownloadNotifier;)V

    :cond_0
    return-void
.end method

.method public checkUpdatable(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/ime/framework/dbmanager/hotword/xt9/Xt9HotwordMgr;->mHotwordUpdate:Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/dbmanager/hotword/xt9/Xt9HotwordMgr;->mHotwordUpdate:Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;

    invoke-virtual {p0, p1}, Lcom/ime/framework/dbmanager/hotword/xt9/Xt9HotwordMgr;->getDownloadCallBack(Ljava/lang/String;)Lcom/ime/framework/dbmanager/DbUpdateInterface$DbDownloadNotifier;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;->checkUpdatable(Ljava/lang/String;Lcom/ime/framework/dbmanager/DbUpdateInterface$DbDownloadNotifier;)V

    :cond_0
    return-void
.end method

.method public getDBName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/ime/framework/dbmanager/hotword/xt9/Xt9HotwordMgr;->mContext:Landroid/content/Context;

    const v1, 0x7f0d0376

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHotwordFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const-string v1, "225-hotwords-HotwordsCN"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/ime/framework/dbmanager/hotword/xt9/Xt9HotwordMgr;->mChnHotwordFileName:Ljava/lang/String;

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const-string v1, "226-hotwords-HotwordsHK"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/ime/framework/dbmanager/hotword/xt9/Xt9HotwordMgr;->mHKHotwordFileName:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string v1, "224-hotwords-HotwordsTW"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/ime/framework/dbmanager/hotword/xt9/Xt9HotwordMgr;->mTWHotwordFileName:Ljava/lang/String;

    goto :goto_0
.end method

.method public setUpdateBackground(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/ime/framework/dbmanager/hotword/xt9/Xt9HotwordMgr;->setUpdateCallBack(Ljava/lang/String;Lcom/ime/framework/dbmanager/DbUpdateInterface$DbDownloadNotifier;)V

    iget-object v0, p0, Lcom/ime/framework/dbmanager/hotword/xt9/Xt9HotwordMgr;->mHotwordUpdate:Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/dbmanager/hotword/xt9/Xt9HotwordMgr;->mHotwordUpdate:Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;

    invoke-virtual {v0}, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;->setDownloadBackgoundStatus()V

    :cond_0
    return-void
.end method

.method public startAutoUpdate()V
    .locals 2

    iget-object v0, p0, Lcom/ime/framework/dbmanager/hotword/xt9/Xt9HotwordMgr;->mHotwordUpdate:Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/dbmanager/hotword/xt9/Xt9HotwordMgr;->mHotwordUpdate:Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;

    const-string v1, "225-hotwords-HotwordsCN"

    invoke-virtual {v0, v1}, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;->isDictDownloadable(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "225-hotwords-HotwordsCN"

    invoke-virtual {p0, v0}, Lcom/ime/framework/dbmanager/hotword/xt9/Xt9HotwordMgr;->isUpdating(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "225-hotwords-HotwordsCN"

    invoke-virtual {p0, v0}, Lcom/ime/framework/dbmanager/hotword/xt9/Xt9HotwordMgr;->update(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public stopAllDownload()V
    .locals 3

    iget-object v0, p0, Lcom/ime/framework/dbmanager/hotword/xt9/Xt9HotwordMgr;->mHotwordUpdate:Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/dbmanager/hotword/xt9/Xt9HotwordMgr;->mHotwordUpdate:Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;

    const-string v1, "225-hotwords-HotwordsCN"

    const-string v2, "225-hotwords-HotwordsCN"

    invoke-virtual {p0, v2}, Lcom/ime/framework/dbmanager/hotword/xt9/Xt9HotwordMgr;->getDownloadCallBack(Ljava/lang/String;)Lcom/ime/framework/dbmanager/DbUpdateInterface$DbDownloadNotifier;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;->cancelUpdate(Ljava/lang/String;Lcom/ime/framework/dbmanager/DbUpdateInterface$DbDownloadNotifier;)V

    iget-object v0, p0, Lcom/ime/framework/dbmanager/hotword/xt9/Xt9HotwordMgr;->mHotwordUpdate:Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;

    const-string v1, "226-hotwords-HotwordsHK"

    const-string v2, "226-hotwords-HotwordsHK"

    invoke-virtual {p0, v2}, Lcom/ime/framework/dbmanager/hotword/xt9/Xt9HotwordMgr;->getDownloadCallBack(Ljava/lang/String;)Lcom/ime/framework/dbmanager/DbUpdateInterface$DbDownloadNotifier;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;->cancelUpdate(Ljava/lang/String;Lcom/ime/framework/dbmanager/DbUpdateInterface$DbDownloadNotifier;)V

    iget-object v0, p0, Lcom/ime/framework/dbmanager/hotword/xt9/Xt9HotwordMgr;->mHotwordUpdate:Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;

    const-string v1, "224-hotwords-HotwordsTW"

    const-string v2, "224-hotwords-HotwordsTW"

    invoke-virtual {p0, v2}, Lcom/ime/framework/dbmanager/hotword/xt9/Xt9HotwordMgr;->getDownloadCallBack(Ljava/lang/String;)Lcom/ime/framework/dbmanager/DbUpdateInterface$DbDownloadNotifier;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;->cancelUpdate(Ljava/lang/String;Lcom/ime/framework/dbmanager/DbUpdateInterface$DbDownloadNotifier;)V

    :cond_0
    return-void
.end method

.method public update(Ljava/lang/String;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/ime/framework/dbmanager/DbUpdateAbs;->update(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ime/framework/dbmanager/hotword/xt9/Xt9HotwordMgr;->mHotwordUpdate:Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/dbmanager/hotword/xt9/Xt9HotwordMgr;->mHotwordUpdate:Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;

    new-instance v1, Lcom/ime/framework/dbmanager/hotword/xt9/Xt9HotwordMgr$1;

    invoke-direct {v1, p0}, Lcom/ime/framework/dbmanager/hotword/xt9/Xt9HotwordMgr$1;-><init>(Lcom/ime/framework/dbmanager/hotword/xt9/Xt9HotwordMgr;)V

    invoke-virtual {v0, p1, v1}, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;->update(Ljava/lang/String;Lcom/ime/framework/dbmanager/DbUpdateInterface$DbDownloadNotifier;)V

    :cond_0
    return-void
.end method
