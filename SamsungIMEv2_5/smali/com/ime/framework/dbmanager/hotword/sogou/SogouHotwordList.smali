.class public Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordList;
.super Ljava/lang/Object;
.source "SogouHotwordList.java"


# static fields
.field public static final MAX_SOGOU_LIST_SIZE:I = 0x3e8


# instance fields
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

    const-string v0, ""

    iput-object v0, p0, Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordList;->mTimeStamp:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordList;->mSogouList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public deleteLastItem()V
    .locals 2

    iget-object v1, p0, Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordList;->mSogouList:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordList;->mSogouList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordList;->mSogouList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    iget-object v1, p0, Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordList;->mSogouList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public getLastItem()Lcom/ime/framework/dbmanager/hotword/HotWordPhraseInfo;
    .locals 3

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordList;->mSogouList:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordList;->mSogouList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordList;->mSogouList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    iget-object v2, p0, Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordList;->mSogouList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ime/framework/dbmanager/hotword/HotWordPhraseInfo;

    :cond_0
    return-object v1
.end method

.method public getList()Ljava/util/List;
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

    iget-object v0, p0, Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordList;->mSogouList:Ljava/util/List;

    return-object v0
.end method

.method public getListSize()I
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordList;->mSogouList:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordList;->mSogouList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    :cond_0
    return v0
.end method

.method public getTimeStamp()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordList;->mTimeStamp:Ljava/lang/String;

    return-object v0
.end method

.method public insertList(Ljava/util/List;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/ime/framework/dbmanager/hotword/HotWordPhraseInfo;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordList;->mSogouList:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordList;->mSogouList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    :goto_0
    iput-object p2, p0, Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordList;->mTimeStamp:Ljava/lang/String;

    :cond_0
    return-void

    :cond_1
    iput-object p1, p0, Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordList;->mSogouList:Ljava/util/List;

    goto :goto_0
.end method

.method public setList(Ljava/util/List;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/ime/framework/dbmanager/hotword/HotWordPhraseInfo;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordList;->mSogouList:Ljava/util/List;

    iput-object p2, p0, Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordList;->mTimeStamp:Ljava/lang/String;

    return-void
.end method
