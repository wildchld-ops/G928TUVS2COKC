.class Lcom/ime/framework/dbmanager/autoupdate/DbAutoUpdateService$1;
.super Ljava/lang/Object;
.source "DbAutoUpdateService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ime/framework/dbmanager/autoupdate/DbAutoUpdateService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ime/framework/dbmanager/autoupdate/DbAutoUpdateService;


# direct methods
.method constructor <init>(Lcom/ime/framework/dbmanager/autoupdate/DbAutoUpdateService;)V
    .locals 0

    iput-object p1, p0, Lcom/ime/framework/dbmanager/autoupdate/DbAutoUpdateService$1;->this$0:Lcom/ime/framework/dbmanager/autoupdate/DbAutoUpdateService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const-wide/32 v2, 0x36ee80

    iget-object v5, p0, Lcom/ime/framework/dbmanager/autoupdate/DbAutoUpdateService$1;->this$0:Lcom/ime/framework/dbmanager/autoupdate/DbAutoUpdateService;

    # getter for: Lcom/ime/framework/dbmanager/autoupdate/DbAutoUpdateService;->mDbSettings:Lcom/ime/framework/dbmanager/DbSettings;
    invoke-static {v5}, Lcom/ime/framework/dbmanager/autoupdate/DbAutoUpdateService;->access$100(Lcom/ime/framework/dbmanager/autoupdate/DbAutoUpdateService;)Lcom/ime/framework/dbmanager/DbSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ime/framework/dbmanager/DbSettings;->getAutoUpdateWlanOnly()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {}, Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordMgr;->getInstance()Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordMgr;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v5, "225-hotwords-SogouCN"

    invoke-virtual {v1, v5}, Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordMgr;->hasNewVersion(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    const-string v5, "225-hotwords-SogouCN"

    invoke-virtual {v1, v5}, Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordMgr;->startAutoUpdate(Ljava/lang/String;)V

    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/ime/framework/dbmanager/autoupdate/DbAutoUpdateService$1;->this$0:Lcom/ime/framework/dbmanager/autoupdate/DbAutoUpdateService;

    # getter for: Lcom/ime/framework/dbmanager/autoupdate/DbAutoUpdateService;->mInputManager:Lcom/ime/framework/common/InputManager;
    invoke-static {v5}, Lcom/ime/framework/dbmanager/autoupdate/DbAutoUpdateService;->access$300(Lcom/ime/framework/dbmanager/autoupdate/DbAutoUpdateService;)Lcom/ime/framework/common/InputManager;

    move-result-object v5

    invoke-interface {v5}, Lcom/ime/framework/common/InputManager;->isXT9DBUpdateSupported()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {}, Lcom/ime/framework/dbmanager/hotword/xt9/Xt9HotwordMgr;->getInstance()Lcom/ime/framework/dbmanager/hotword/xt9/Xt9HotwordMgr;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/ime/framework/dbmanager/hotword/xt9/Xt9HotwordMgr;->startAutoUpdate()V

    :cond_1
    invoke-static {}, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBMgr;->getInstance()Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBMgr;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBMgr;->startAutoUpdate()V

    :cond_2
    iget-object v5, p0, Lcom/ime/framework/dbmanager/autoupdate/DbAutoUpdateService$1;->this$0:Lcom/ime/framework/dbmanager/autoupdate/DbAutoUpdateService;

    # getter for: Lcom/ime/framework/dbmanager/autoupdate/DbAutoUpdateService;->DEBUG:Z
    invoke-static {v5}, Lcom/ime/framework/dbmanager/autoupdate/DbAutoUpdateService;->access$000(Lcom/ime/framework/dbmanager/autoupdate/DbAutoUpdateService;)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v5, "DbAutoUpdateService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "autoUpdate delayTime = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v5, p0, Lcom/ime/framework/dbmanager/autoupdate/DbAutoUpdateService$1;->this$0:Lcom/ime/framework/dbmanager/autoupdate/DbAutoUpdateService;

    # getter for: Lcom/ime/framework/dbmanager/autoupdate/DbAutoUpdateService;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/ime/framework/dbmanager/autoupdate/DbAutoUpdateService;->access$500(Lcom/ime/framework/dbmanager/autoupdate/DbAutoUpdateService;)Landroid/os/Handler;

    move-result-object v5

    iget-object v6, p0, Lcom/ime/framework/dbmanager/autoupdate/DbAutoUpdateService$1;->this$0:Lcom/ime/framework/dbmanager/autoupdate/DbAutoUpdateService;

    # getter for: Lcom/ime/framework/dbmanager/autoupdate/DbAutoUpdateService;->mUpdateTimeTask:Ljava/lang/Runnable;
    invoke-static {v6}, Lcom/ime/framework/dbmanager/autoupdate/DbAutoUpdateService;->access$400(Lcom/ime/framework/dbmanager/autoupdate/DbAutoUpdateService;)Ljava/lang/Runnable;

    move-result-object v6

    invoke-virtual {v5, v6, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_4
    iget-object v5, p0, Lcom/ime/framework/dbmanager/autoupdate/DbAutoUpdateService$1;->this$0:Lcom/ime/framework/dbmanager/autoupdate/DbAutoUpdateService;

    # invokes: Lcom/ime/framework/dbmanager/autoupdate/DbAutoUpdateService;->bNeedCheckNewVersion(Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordMgr;)Z
    invoke-static {v5, v1}, Lcom/ime/framework/dbmanager/autoupdate/DbAutoUpdateService;->access$200(Lcom/ime/framework/dbmanager/autoupdate/DbAutoUpdateService;Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordMgr;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "225-hotwords-SogouCN"

    new-instance v6, Lcom/ime/framework/dbmanager/autoupdate/DbAutoUpdateService$1$1;

    invoke-direct {v6, p0}, Lcom/ime/framework/dbmanager/autoupdate/DbAutoUpdateService$1$1;-><init>(Lcom/ime/framework/dbmanager/autoupdate/DbAutoUpdateService$1;)V

    invoke-virtual {v1, v5, v6}, Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordMgr;->checkUpdatable(Ljava/lang/String;Lcom/ime/framework/dbmanager/DbUpdateInterface$DbDownloadNotifier;)V

    goto :goto_0
.end method
