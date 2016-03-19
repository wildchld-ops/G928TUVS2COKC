.class public Lcom/ime/framework/dbmanager/hotword/HotWordMgr;
.super Ljava/lang/Object;
.source "HotWordMgr.java"


# static fields
.field private static final DEBUG:Z = false

.field public static final HOT_WORD_PATH:Ljava/lang/String; = "/hotword"

.field private static final TAG:Ljava/lang/String; = "HotWordMgr"


# instance fields
.field private mHotwordEditor:Lcom/ime/framework/dbmanager/hotword/HotwordEditInterface;

.field private mPath:Ljava/lang/String;

.field private mSogouHotwordMgr:Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordMgr;

.field private mXT9HotwordMgr:Lcom/ime/framework/dbmanager/hotword/xt9/Xt9HotwordMgr;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/hotword"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/ime/framework/dbmanager/hotword/HotWordMgr;->mPath:Ljava/lang/String;

    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/ime/framework/dbmanager/hotword/HotWordMgr;->mPath:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-nez v2, :cond_0

    :cond_0
    iget-object v2, p0, Lcom/ime/framework/dbmanager/hotword/HotWordMgr;->mPath:Ljava/lang/String;

    invoke-static {p1, v2}, Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordMgr;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordMgr;

    move-result-object v2

    iput-object v2, p0, Lcom/ime/framework/dbmanager/hotword/HotWordMgr;->mSogouHotwordMgr:Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordMgr;

    iget-object v2, p0, Lcom/ime/framework/dbmanager/hotword/HotWordMgr;->mPath:Ljava/lang/String;

    invoke-static {p1, v2}, Lcom/ime/framework/dbmanager/hotword/xt9/Xt9HotwordMgr;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/ime/framework/dbmanager/hotword/xt9/Xt9HotwordMgr;

    move-result-object v2

    iput-object v2, p0, Lcom/ime/framework/dbmanager/hotword/HotWordMgr;->mXT9HotwordMgr:Lcom/ime/framework/dbmanager/hotword/xt9/Xt9HotwordMgr;

    return-void
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


# virtual methods
.method public getHotWordUpdate(Ljava/lang/String;)Lcom/ime/framework/dbmanager/DbUpdateInterface;
    .locals 2

    const/4 v0, 0x0

    invoke-static {p1}, Lcom/ime/framework/dbmanager/DbID;->isXT9Hotword(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/ime/framework/dbmanager/hotword/HotWordMgr;->mXT9HotwordMgr:Lcom/ime/framework/dbmanager/hotword/xt9/Xt9HotwordMgr;

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-static {p1}, Lcom/ime/framework/dbmanager/DbID;->isSogouHotword(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/ime/framework/dbmanager/hotword/HotWordMgr;->mSogouHotwordMgr:Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordMgr;

    goto :goto_0
.end method

.method public loadHotWord(Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    iget-object v3, p0, Lcom/ime/framework/dbmanager/hotword/HotWordMgr;->mHotwordEditor:Lcom/ime/framework/dbmanager/hotword/HotwordEditInterface;

    invoke-interface {v3}, Lcom/ime/framework/dbmanager/hotword/HotwordEditInterface;->resetHotwordsInEngin()I

    const/4 v2, 0x0

    const/4 v1, 0x0

    const-string v3, "zh_CN"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/ime/framework/dbmanager/hotword/HotWordMgr;->mXT9HotwordMgr:Lcom/ime/framework/dbmanager/hotword/xt9/Xt9HotwordMgr;

    const-string v4, "225-hotwords-HotwordsCN"

    invoke-virtual {v3, v4}, Lcom/ime/framework/dbmanager/hotword/xt9/Xt9HotwordMgr;->getHotwordFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/ime/framework/dbmanager/hotword/HotWordMgr;->mSogouHotwordMgr:Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordMgr;

    const-string v4, "225-hotwords-SogouCN"

    invoke-virtual {v3, v4}, Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordMgr;->getHotwordEnginFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/ime/framework/dbmanager/hotword/HotWordMgr;->mHotwordEditor:Lcom/ime/framework/dbmanager/hotword/HotwordEditInterface;

    invoke-interface {v3, v2}, Lcom/ime/framework/dbmanager/hotword/HotwordEditInterface;->importHotwords(Ljava/lang/String;)I

    :cond_1
    if-eqz v1, :cond_2

    invoke-direct {p0, v1}, Lcom/ime/framework/dbmanager/hotword/HotWordMgr;->isFileExist(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/ime/framework/dbmanager/hotword/HotWordMgr;->mHotwordEditor:Lcom/ime/framework/dbmanager/hotword/HotwordEditInterface;

    invoke-interface {v3, v1}, Lcom/ime/framework/dbmanager/hotword/HotwordEditInterface;->importHotwords(Ljava/lang/String;)I

    :cond_2
    return v0

    :cond_3
    const-string v3, "zh_HK"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/ime/framework/dbmanager/hotword/HotWordMgr;->mXT9HotwordMgr:Lcom/ime/framework/dbmanager/hotword/xt9/Xt9HotwordMgr;

    const-string v4, "226-hotwords-HotwordsHK"

    invoke-virtual {v3, v4}, Lcom/ime/framework/dbmanager/hotword/xt9/Xt9HotwordMgr;->getHotwordFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_4
    const-string v3, "zh_TW"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/ime/framework/dbmanager/hotword/HotWordMgr;->mXT9HotwordMgr:Lcom/ime/framework/dbmanager/hotword/xt9/Xt9HotwordMgr;

    const-string v4, "224-hotwords-HotwordsTW"

    invoke-virtual {v3, v4}, Lcom/ime/framework/dbmanager/hotword/xt9/Xt9HotwordMgr;->getHotwordFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public setHotWordEditor(Lcom/ime/framework/dbmanager/hotword/HotwordEditInterface;)V
    .locals 0

    iput-object p1, p0, Lcom/ime/framework/dbmanager/hotword/HotWordMgr;->mHotwordEditor:Lcom/ime/framework/dbmanager/hotword/HotwordEditInterface;

    return-void
.end method
