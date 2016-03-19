.class public Lcom/ime/framework/dbmanager/hotword/HotwordConvert;
.super Ljava/lang/Object;
.source "HotwordConvert.java"

# interfaces
.implements Lcom/ime/framework/dbmanager/hotword/HotwordEditInterface;


# instance fields
.field private mAssetMgr:Landroid/content/res/AssetManager;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ime/framework/dbmanager/hotword/HotwordConvert;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/ime/framework/dbmanager/hotword/HotwordConvert;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    iput-object v0, p0, Lcom/ime/framework/dbmanager/hotword/HotwordConvert;->mAssetMgr:Landroid/content/res/AssetManager;

    return-void
.end method

.method private initDBFileInfo()V
    .locals 5

    const/16 v4, 0xe2

    const/16 v3, 0xe1

    const/16 v2, 0xe0

    invoke-static {}, Lcom/ime/framework/dbmanager/DbFileInfo;->getInstance()Lcom/ime/framework/dbmanager/DbFileInfo;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/ime/framework/dbmanager/DbFileInfo;->getInstalledDbNameWithDefaultPath(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9CPHotwordSetLDBFileName(ILjava/lang/String;)I

    invoke-virtual {v0, v4}, Lcom/ime/framework/dbmanager/DbFileInfo;->getInstalledDbNameWithDefaultPath(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9CPHotwordSetLDBFileName(ILjava/lang/String;)I

    invoke-virtual {v0, v2}, Lcom/ime/framework/dbmanager/DbFileInfo;->getInstalledDbNameWithDefaultPath(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9CPHotwordSetLDBFileName(ILjava/lang/String;)I

    return-void
.end method


# virtual methods
.method public addHotWordToEngin(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    invoke-static {p1, p2}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9CPHotwordAddMdbPhrase(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public deleteHotwordFromEngin(Ljava/lang/String;)I
    .locals 1

    invoke-static {p1}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9CPHotwordDeletePhrase(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public exit()V
    .locals 0

    invoke-static {}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9CPHotwordExit()V

    return-void
.end method

.method public exportHotwords(Ljava/lang/String;)I
    .locals 1

    invoke-static {p1}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9CPHotwordExport(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public importHotwords(Ljava/lang/String;)I
    .locals 1

    invoke-static {p1}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9CPHotwordImport(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public init()I
    .locals 1

    invoke-direct {p0}, Lcom/ime/framework/dbmanager/hotword/HotwordConvert;->initDBFileInfo()V

    iget-object v0, p0, Lcom/ime/framework/dbmanager/hotword/HotwordConvert;->mAssetMgr:Landroid/content/res/AssetManager;

    invoke-static {v0}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9CPHotwordInit(Landroid/content/res/AssetManager;)I

    move-result v0

    return v0
.end method

.method public resetHotwordsInEngin()I
    .locals 1

    invoke-static {}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9CPHotwordReset()I

    move-result v0

    return v0
.end method

.method public setLanguage(Ljava/lang/String;)I
    .locals 1

    invoke-static {p1}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9CPHotwordSetLanguage(Ljava/lang/String;)I

    move-result v0

    return v0
.end method
