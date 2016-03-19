.class public Lcom/ime/framework/dbmanager/DbUpdateFactory;
.super Ljava/lang/Object;
.source "DbUpdateFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createUpdateInterface(Landroid/content/Context;Ljava/lang/String;)Lcom/ime/framework/dbmanager/DbUpdateInterface;
    .locals 3

    const/4 v1, 0x0

    invoke-static {p1}, Lcom/ime/framework/dbmanager/DbID;->isHotwordDB(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v0, Lcom/ime/framework/dbmanager/hotword/HotWordMgr;

    invoke-direct {v0, p0}, Lcom/ime/framework/dbmanager/hotword/HotWordMgr;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/ime/framework/dbmanager/hotword/HotWordMgr;->getHotWordUpdate(Ljava/lang/String;)Lcom/ime/framework/dbmanager/DbUpdateInterface;

    move-result-object v1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    invoke-static {p1}, Lcom/ime/framework/dbmanager/DbID;->isXT9CDB(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p0}, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBMgr;->getInstance(Landroid/content/Context;)Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBMgr;

    move-result-object v1

    goto :goto_0
.end method
