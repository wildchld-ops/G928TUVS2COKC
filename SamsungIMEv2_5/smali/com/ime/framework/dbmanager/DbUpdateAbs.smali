.class public abstract Lcom/ime/framework/dbmanager/DbUpdateAbs;
.super Ljava/lang/Object;
.source "DbUpdateAbs.java"

# interfaces
.implements Lcom/ime/framework/dbmanager/DbUpdateInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ime/framework/dbmanager/DbUpdateAbs$DbStatus;
    }
.end annotation


# static fields
.field public static final DEBUG:Z


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mDbSettings:Lcom/ime/framework/dbmanager/DbSettings;

.field private mDownloadDb:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/ime/framework/dbmanager/DbUpdateAbs$DbStatus;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ime/framework/dbmanager/DbUpdateAbs;->mDownloadDb:Ljava/util/HashMap;

    iput-object p1, p0, Lcom/ime/framework/dbmanager/DbUpdateAbs;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/ime/framework/dbmanager/DbSettings;

    iget-object v1, p0, Lcom/ime/framework/dbmanager/DbUpdateAbs;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/ime/framework/dbmanager/DbSettings;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ime/framework/dbmanager/DbUpdateAbs;->mDbSettings:Lcom/ime/framework/dbmanager/DbSettings;

    return-void
.end method


# virtual methods
.method public cancelUpdate(Ljava/lang/String;)V
    .locals 2

    iget-object v1, p0, Lcom/ime/framework/dbmanager/DbUpdateAbs;->mDownloadDb:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ime/framework/dbmanager/DbUpdateAbs$DbStatus;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/ime/framework/dbmanager/DbUpdateAbs$DbStatus;->mUpdating:Z

    const/4 v1, -0x1

    iput v1, v0, Lcom/ime/framework/dbmanager/DbUpdateAbs$DbStatus;->downloadPrecent:I

    :cond_0
    return-void
.end method

.method protected getDownloadCallBack(Ljava/lang/String;)Lcom/ime/framework/dbmanager/DbUpdateInterface$DbDownloadNotifier;
    .locals 3

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/ime/framework/dbmanager/DbUpdateAbs;->mDownloadDb:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ime/framework/dbmanager/DbUpdateAbs$DbStatus;

    if-eqz v1, :cond_0

    iget-object v0, v1, Lcom/ime/framework/dbmanager/DbUpdateAbs$DbStatus;->mCb:Lcom/ime/framework/dbmanager/DbUpdateInterface$DbDownloadNotifier;

    :cond_0
    return-object v0
.end method

.method public getUpdatePercent(Ljava/lang/String;)I
    .locals 3

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/ime/framework/dbmanager/DbUpdateAbs;->mDownloadDb:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ime/framework/dbmanager/DbUpdateAbs$DbStatus;

    if-eqz v0, :cond_0

    iget v1, v0, Lcom/ime/framework/dbmanager/DbUpdateAbs$DbStatus;->downloadPrecent:I

    :cond_0
    return v1
.end method

.method protected handleDownloadCallBack(ILjava/lang/Object;)Z
    .locals 10

    const/16 v9, 0xd

    const/16 v8, 0x8

    const/4 v7, 0x0

    const/4 v0, 0x0

    move-object v2, p2

    check-cast v2, Lcom/ime/framework/dbmanager/DbDownloadInfo;

    if-eqz v2, :cond_4

    iget-object v4, p0, Lcom/ime/framework/dbmanager/DbUpdateAbs;->mDownloadDb:Ljava/util/HashMap;

    iget-object v5, v2, Lcom/ime/framework/dbmanager/DbDownloadInfo;->dbId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ime/framework/dbmanager/DbUpdateAbs$DbStatus;

    if-ne p1, v9, :cond_0

    iget-object v4, p0, Lcom/ime/framework/dbmanager/DbUpdateAbs;->mDbSettings:Lcom/ime/framework/dbmanager/DbSettings;

    iget-object v5, v2, Lcom/ime/framework/dbmanager/DbDownloadInfo;->dbId:Ljava/lang/String;

    iget-boolean v6, v2, Lcom/ime/framework/dbmanager/DbDownloadInfo;->bAvailable:Z

    invoke-virtual {v4, v5, v6}, Lcom/ime/framework/dbmanager/DbSettings;->setUpdatable(Ljava/lang/String;Z)V

    :cond_0
    if-eqz v1, :cond_4

    if-eq p1, v8, :cond_1

    const/16 v4, 0xa

    if-eq p1, v4, :cond_1

    if-eq p1, v9, :cond_1

    iput-boolean v7, v1, Lcom/ime/framework/dbmanager/DbUpdateAbs$DbStatus;->mUpdating:Z

    const/4 v4, -0x1

    iput v4, v1, Lcom/ime/framework/dbmanager/DbUpdateAbs$DbStatus;->downloadPrecent:I

    :cond_1
    if-ne p1, v8, :cond_5

    iget v4, v2, Lcom/ime/framework/dbmanager/DbDownloadInfo;->percent:I

    iput v4, v1, Lcom/ime/framework/dbmanager/DbUpdateAbs$DbStatus;->downloadPrecent:I

    :cond_2
    :goto_0
    iget-object v4, v1, Lcom/ime/framework/dbmanager/DbUpdateAbs$DbStatus;->mCb:Lcom/ime/framework/dbmanager/DbUpdateInterface$DbDownloadNotifier;

    if-eqz v4, :cond_3

    iget-object v4, v1, Lcom/ime/framework/dbmanager/DbUpdateAbs$DbStatus;->mCb:Lcom/ime/framework/dbmanager/DbUpdateInterface$DbDownloadNotifier;

    invoke-interface {v4, p1, p2}, Lcom/ime/framework/dbmanager/DbUpdateInterface$DbDownloadNotifier;->handleDownloadEvent(ILjava/lang/Object;)Z

    :cond_3
    const/4 v0, 0x1

    :cond_4
    return v0

    :cond_5
    const/4 v4, 0x1

    if-ne p1, v4, :cond_2

    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v5, "yyyy.MM.dd"

    sget-object v6, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-direct {v4, v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/ime/framework/dbmanager/DbUpdateAbs;->mDbSettings:Lcom/ime/framework/dbmanager/DbSettings;

    iget-object v5, v2, Lcom/ime/framework/dbmanager/DbDownloadInfo;->dbId:Ljava/lang/String;

    invoke-virtual {v4, v5, v3}, Lcom/ime/framework/dbmanager/DbSettings;->setDbUpdateDate(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, v2, Lcom/ime/framework/dbmanager/DbDownloadInfo;->dbId:Ljava/lang/String;

    const-string v5, "225-hotwords-SogouCN"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/ime/framework/dbmanager/DbUpdateAbs;->mDbSettings:Lcom/ime/framework/dbmanager/DbSettings;

    iget-object v5, v2, Lcom/ime/framework/dbmanager/DbDownloadInfo;->dbId:Ljava/lang/String;

    iget-object v6, v2, Lcom/ime/framework/dbmanager/DbDownloadInfo;->version:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lcom/ime/framework/dbmanager/DbSettings;->setDbVersion(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    iget-object v4, p0, Lcom/ime/framework/dbmanager/DbUpdateAbs;->mDbSettings:Lcom/ime/framework/dbmanager/DbSettings;

    iget-object v5, v2, Lcom/ime/framework/dbmanager/DbDownloadInfo;->dbId:Ljava/lang/String;

    invoke-virtual {v4, v5, v7}, Lcom/ime/framework/dbmanager/DbSettings;->setUpdatable(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public hasNewVersion(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/dbmanager/DbUpdateAbs;->mDbSettings:Lcom/ime/framework/dbmanager/DbSettings;

    invoke-virtual {v0, p1}, Lcom/ime/framework/dbmanager/DbSettings;->getUpdatable(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isUpdating(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/ime/framework/dbmanager/DbUpdateAbs;->mDownloadDb:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ime/framework/dbmanager/DbUpdateAbs$DbStatus;

    if-eqz v1, :cond_0

    iget-boolean v0, v1, Lcom/ime/framework/dbmanager/DbUpdateAbs$DbStatus;->mUpdating:Z

    :cond_0
    return v0
.end method

.method public setUpdateCallBack(Ljava/lang/String;Lcom/ime/framework/dbmanager/DbUpdateInterface$DbDownloadNotifier;)V
    .locals 2

    iget-object v1, p0, Lcom/ime/framework/dbmanager/DbUpdateAbs;->mDownloadDb:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ime/framework/dbmanager/DbUpdateAbs$DbStatus;

    if-nez v0, :cond_0

    new-instance v0, Lcom/ime/framework/dbmanager/DbUpdateAbs$DbStatus;

    invoke-direct {v0, p2}, Lcom/ime/framework/dbmanager/DbUpdateAbs$DbStatus;-><init>(Lcom/ime/framework/dbmanager/DbUpdateInterface$DbDownloadNotifier;)V

    iget-object v1, p0, Lcom/ime/framework/dbmanager/DbUpdateAbs;->mDownloadDb:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void

    :cond_0
    iput-object p2, v0, Lcom/ime/framework/dbmanager/DbUpdateAbs$DbStatus;->mCb:Lcom/ime/framework/dbmanager/DbUpdateInterface$DbDownloadNotifier;

    goto :goto_0
.end method

.method public update(Ljava/lang/String;)V
    .locals 4

    iget-object v1, p0, Lcom/ime/framework/dbmanager/DbUpdateAbs;->mDownloadDb:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ime/framework/dbmanager/DbUpdateAbs$DbStatus;

    if-nez v0, :cond_0

    new-instance v0, Lcom/ime/framework/dbmanager/DbUpdateAbs$DbStatus;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ime/framework/dbmanager/DbUpdateAbs$DbStatus;-><init>(Lcom/ime/framework/dbmanager/DbUpdateInterface$DbDownloadNotifier;)V

    iget-object v1, p0, Lcom/ime/framework/dbmanager/DbUpdateAbs;->mDownloadDb:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/ime/framework/dbmanager/DbUpdateAbs$DbStatus;->mUpdating:Z

    iget-object v1, v0, Lcom/ime/framework/dbmanager/DbUpdateAbs$DbStatus;->mCb:Lcom/ime/framework/dbmanager/DbUpdateInterface$DbDownloadNotifier;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/ime/framework/dbmanager/DbUpdateAbs$DbStatus;->mCb:Lcom/ime/framework/dbmanager/DbUpdateInterface$DbDownloadNotifier;

    const/16 v2, 0xe

    new-instance v3, Lcom/ime/framework/dbmanager/DbDownloadInfo;

    invoke-direct {v3, p1}, Lcom/ime/framework/dbmanager/DbDownloadInfo;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2, v3}, Lcom/ime/framework/dbmanager/DbUpdateInterface$DbDownloadNotifier;->handleDownloadEvent(ILjava/lang/Object;)Z

    :cond_1
    return-void
.end method
