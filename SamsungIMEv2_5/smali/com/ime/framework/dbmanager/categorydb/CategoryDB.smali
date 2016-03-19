.class public Lcom/ime/framework/dbmanager/categorydb/CategoryDB;
.super Ljava/lang/Object;
.source "CategoryDB.java"


# instance fields
.field private mAbsolutePath:Ljava/lang/String;

.field private mCatID:I

.field private mCatName:Ljava/lang/String;

.field private mCategory:Ljava/lang/String;

.field private mEnabled:Z

.field private mKey:Ljava/lang/String;

.field private mLanguageID:I

.field private mPreload:Z

.field private mPriority:I

.field private mVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>(IILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/ime/framework/dbmanager/categorydb/CategoryDB;->mCatID:I

    iput p2, p0, Lcom/ime/framework/dbmanager/categorydb/CategoryDB;->mLanguageID:I

    iput-object p3, p0, Lcom/ime/framework/dbmanager/categorydb/CategoryDB;->mAbsolutePath:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCatDBId()I
    .locals 1

    iget v0, p0, Lcom/ime/framework/dbmanager/categorydb/CategoryDB;->mCatID:I

    return v0
.end method

.method public getDBAbsolutePath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/dbmanager/categorydb/CategoryDB;->mAbsolutePath:Ljava/lang/String;

    return-object v0
.end method

.method public getDBCategory()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/dbmanager/categorydb/CategoryDB;->mCategory:Ljava/lang/String;

    return-object v0
.end method

.method public getDBKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/dbmanager/categorydb/CategoryDB;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method public getDBName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/dbmanager/categorydb/CategoryDB;->mCatName:Ljava/lang/String;

    return-object v0
.end method

.method public getDBPriority()I
    .locals 1

    iget v0, p0, Lcom/ime/framework/dbmanager/categorydb/CategoryDB;->mPriority:I

    return v0
.end method

.method public getDBVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/dbmanager/categorydb/CategoryDB;->mVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getLanguageId()I
    .locals 1

    iget v0, p0, Lcom/ime/framework/dbmanager/categorydb/CategoryDB;->mLanguageID:I

    return v0
.end method

.method public isDBEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ime/framework/dbmanager/categorydb/CategoryDB;->mEnabled:Z

    return v0
.end method

.method public isPreload()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ime/framework/dbmanager/categorydb/CategoryDB;->mPreload:Z

    return v0
.end method

.method public setDBAbsolutePath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ime/framework/dbmanager/categorydb/CategoryDB;->mAbsolutePath:Ljava/lang/String;

    return-void
.end method

.method public setDBCategory(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ime/framework/dbmanager/categorydb/CategoryDB;->mCategory:Ljava/lang/String;

    return-void
.end method

.method public setDBEnable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ime/framework/dbmanager/categorydb/CategoryDB;->mEnabled:Z

    return-void
.end method

.method public setDBKey(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ime/framework/dbmanager/categorydb/CategoryDB;->mKey:Ljava/lang/String;

    return-void
.end method

.method public setDBName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ime/framework/dbmanager/categorydb/CategoryDB;->mCatName:Ljava/lang/String;

    return-void
.end method

.method public setDBVersion(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ime/framework/dbmanager/categorydb/CategoryDB;->mVersion:Ljava/lang/String;

    return-void
.end method

.method public setPreload(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ime/framework/dbmanager/categorydb/CategoryDB;->mPreload:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/ime/framework/dbmanager/categorydb/CategoryDB;->mKey:Ljava/lang/String;

    invoke-static {v0}, Lcom/ime/framework/dbmanager/DbID;->isXT9POI(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/dbmanager/categorydb/CategoryDB;->mKey:Ljava/lang/String;

    invoke-static {v0}, Lcom/ime/framework/dbmanager/DbID;->isXT9Dialect(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/ime/framework/dbmanager/categorydb/CategoryDB;->mCatName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ime/framework/dbmanager/categorydb/CategoryDB;->mCategory:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/ime/framework/dbmanager/categorydb/CategoryDB;->mCatName:Ljava/lang/String;

    goto :goto_0
.end method
