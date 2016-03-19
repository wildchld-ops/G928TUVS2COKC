.class public Lcom/ime/framework/dbmanager/DbUpdateItem;
.super Ljava/lang/Object;
.source "DbUpdateItem.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDBId:Ljava/lang/String;

.field private mDBName:Ljava/lang/String;

.field private mDBSettings:Lcom/ime/framework/dbmanager/DbSettings;

.field private mUpdateInterface:Lcom/ime/framework/dbmanager/DbUpdateInterface;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ime/framework/dbmanager/DbUpdateItem;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/ime/framework/dbmanager/DbSettings;

    invoke-direct {v0, p1}, Lcom/ime/framework/dbmanager/DbSettings;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ime/framework/dbmanager/DbUpdateItem;->mDBSettings:Lcom/ime/framework/dbmanager/DbSettings;

    iget-object v0, p0, Lcom/ime/framework/dbmanager/DbUpdateItem;->mContext:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/ime/framework/dbmanager/DbUpdateFactory;->createUpdateInterface(Landroid/content/Context;Ljava/lang/String;)Lcom/ime/framework/dbmanager/DbUpdateInterface;

    move-result-object v0

    iput-object v0, p0, Lcom/ime/framework/dbmanager/DbUpdateItem;->mUpdateInterface:Lcom/ime/framework/dbmanager/DbUpdateInterface;

    invoke-direct {p0, p2}, Lcom/ime/framework/dbmanager/DbUpdateItem;->init(Ljava/lang/String;)V

    return-void
.end method

.method private getDBString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/dbmanager/DbUpdateItem;->mUpdateInterface:Lcom/ime/framework/dbmanager/DbUpdateInterface;

    if-nez v0, :cond_0

    :goto_0
    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/ime/framework/dbmanager/DbUpdateItem;->mUpdateInterface:Lcom/ime/framework/dbmanager/DbUpdateInterface;

    invoke-interface {v0, p1}, Lcom/ime/framework/dbmanager/DbUpdateInterface;->getDBName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method private getDBUpdateDate(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/ime/framework/dbmanager/DbUpdateItem;->mDBSettings:Lcom/ime/framework/dbmanager/DbSettings;

    invoke-virtual {v1, p1}, Lcom/ime/framework/dbmanager/DbSettings;->getDbUpdateDate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private init(Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/ime/framework/dbmanager/DbUpdateItem;->mDBId:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/ime/framework/dbmanager/DbUpdateItem;->getDBString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ime/framework/dbmanager/DbUpdateItem;->mDBName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    iget-object v0, p0, Lcom/ime/framework/dbmanager/DbUpdateItem;->mUpdateInterface:Lcom/ime/framework/dbmanager/DbUpdateInterface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/dbmanager/DbUpdateItem;->mUpdateInterface:Lcom/ime/framework/dbmanager/DbUpdateInterface;

    iget-object v1, p0, Lcom/ime/framework/dbmanager/DbUpdateItem;->mDBId:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/ime/framework/dbmanager/DbUpdateInterface;->cancelUpdate(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public checkUpdatable()V
    .locals 2

    iget-object v0, p0, Lcom/ime/framework/dbmanager/DbUpdateItem;->mUpdateInterface:Lcom/ime/framework/dbmanager/DbUpdateInterface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/dbmanager/DbUpdateItem;->mUpdateInterface:Lcom/ime/framework/dbmanager/DbUpdateInterface;

    iget-object v1, p0, Lcom/ime/framework/dbmanager/DbUpdateItem;->mDBId:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/ime/framework/dbmanager/DbUpdateInterface;->checkUpdatable(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public getDBName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/dbmanager/DbUpdateItem;->mDBName:Ljava/lang/String;

    return-object v0
.end method

.method public getDBUpdateDate()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/dbmanager/DbUpdateItem;->mDBId:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/ime/framework/dbmanager/DbUpdateItem;->getDBUpdateDate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDbId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/dbmanager/DbUpdateItem;->mDBId:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdatePercent()I
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/ime/framework/dbmanager/DbUpdateItem;->mUpdateInterface:Lcom/ime/framework/dbmanager/DbUpdateInterface;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ime/framework/dbmanager/DbUpdateItem;->mUpdateInterface:Lcom/ime/framework/dbmanager/DbUpdateInterface;

    iget-object v2, p0, Lcom/ime/framework/dbmanager/DbUpdateItem;->mDBId:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/ime/framework/dbmanager/DbUpdateInterface;->getUpdatePercent(Ljava/lang/String;)I

    move-result v0

    :cond_0
    return v0
.end method

.method public hasNewVersion()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/ime/framework/dbmanager/DbUpdateItem;->mUpdateInterface:Lcom/ime/framework/dbmanager/DbUpdateInterface;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ime/framework/dbmanager/DbUpdateItem;->mUpdateInterface:Lcom/ime/framework/dbmanager/DbUpdateInterface;

    iget-object v2, p0, Lcom/ime/framework/dbmanager/DbUpdateItem;->mDBId:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/ime/framework/dbmanager/DbUpdateInterface;->hasNewVersion(Ljava/lang/String;)Z

    move-result v0

    :cond_0
    return v0
.end method

.method public isUpdating()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/ime/framework/dbmanager/DbUpdateItem;->mUpdateInterface:Lcom/ime/framework/dbmanager/DbUpdateInterface;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ime/framework/dbmanager/DbUpdateItem;->mUpdateInterface:Lcom/ime/framework/dbmanager/DbUpdateInterface;

    iget-object v2, p0, Lcom/ime/framework/dbmanager/DbUpdateItem;->mDBId:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/ime/framework/dbmanager/DbUpdateInterface;->isUpdating(Ljava/lang/String;)Z

    move-result v0

    :cond_0
    return v0
.end method

.method public setBackground()V
    .locals 2

    iget-object v0, p0, Lcom/ime/framework/dbmanager/DbUpdateItem;->mUpdateInterface:Lcom/ime/framework/dbmanager/DbUpdateInterface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/dbmanager/DbUpdateItem;->mUpdateInterface:Lcom/ime/framework/dbmanager/DbUpdateInterface;

    iget-object v1, p0, Lcom/ime/framework/dbmanager/DbUpdateItem;->mDBId:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/ime/framework/dbmanager/DbUpdateInterface;->setUpdateBackground(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setUpdateCallBack(Lcom/ime/framework/dbmanager/DbUpdateInterface$DbDownloadNotifier;)V
    .locals 2

    iget-object v0, p0, Lcom/ime/framework/dbmanager/DbUpdateItem;->mUpdateInterface:Lcom/ime/framework/dbmanager/DbUpdateInterface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/dbmanager/DbUpdateItem;->mUpdateInterface:Lcom/ime/framework/dbmanager/DbUpdateInterface;

    iget-object v1, p0, Lcom/ime/framework/dbmanager/DbUpdateItem;->mDBId:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/ime/framework/dbmanager/DbUpdateInterface;->setUpdateCallBack(Ljava/lang/String;Lcom/ime/framework/dbmanager/DbUpdateInterface$DbDownloadNotifier;)V

    :cond_0
    return-void
.end method

.method public update()V
    .locals 2

    iget-object v0, p0, Lcom/ime/framework/dbmanager/DbUpdateItem;->mUpdateInterface:Lcom/ime/framework/dbmanager/DbUpdateInterface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/dbmanager/DbUpdateItem;->mUpdateInterface:Lcom/ime/framework/dbmanager/DbUpdateInterface;

    iget-object v1, p0, Lcom/ime/framework/dbmanager/DbUpdateItem;->mDBId:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/ime/framework/dbmanager/DbUpdateInterface;->update(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
