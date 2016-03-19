.class Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper$1;
.super Ljava/lang/Object;
.source "Xt994Wrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->initCDB()S
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;


# direct methods
.method constructor <init>(Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;)V
    .locals 0

    iput-object p1, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper$1;->this$0:Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper$1;->this$0:Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;

    # getter for: Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputManager:Lcom/ime/framework/common/InputManager;
    invoke-static {v0}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->access$200(Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;)Lcom/ime/framework/common/InputManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->isSogouHotwordUpdateSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper$1;->this$0:Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;

    new-instance v1, Lcom/ime/framework/dbmanager/hotword/HotWordMgr;

    iget-object v2, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper$1;->this$0:Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;

    # getter for: Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputManager:Lcom/ime/framework/common/InputManager;
    invoke-static {v2}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->access$400(Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;)Lcom/ime/framework/common/InputManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/ime/framework/dbmanager/hotword/HotWordMgr;-><init>(Landroid/content/Context;)V

    # setter for: Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mHotwordMgr:Lcom/ime/framework/dbmanager/hotword/HotWordMgr;
    invoke-static {v0, v1}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->access$302(Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;Lcom/ime/framework/dbmanager/hotword/HotWordMgr;)Lcom/ime/framework/dbmanager/hotword/HotWordMgr;

    iget-object v0, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper$1;->this$0:Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;

    # getter for: Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mHotwordMgr:Lcom/ime/framework/dbmanager/hotword/HotWordMgr;
    invoke-static {v0}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->access$300(Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;)Lcom/ime/framework/dbmanager/hotword/HotWordMgr;

    move-result-object v0

    new-instance v1, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper$hotWordEditor;

    invoke-direct {v1}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper$hotWordEditor;-><init>()V

    invoke-virtual {v0, v1}, Lcom/ime/framework/dbmanager/hotword/HotWordMgr;->setHotWordEditor(Lcom/ime/framework/dbmanager/hotword/HotwordEditInterface;)V

    :cond_0
    iget-object v0, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper$1;->this$0:Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;

    # getter for: Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputManager:Lcom/ime/framework/common/InputManager;
    invoke-static {v0}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->access$500(Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;)Lcom/ime/framework/common/InputManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->isXT9DBUpdateSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper$1;->this$0:Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;

    iget-object v1, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper$1;->this$0:Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;

    # getter for: Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputManager:Lcom/ime/framework/common/InputManager;
    invoke-static {v1}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->access$700(Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;)Lcom/ime/framework/common/InputManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBMgr;->getInstance(Landroid/content/Context;)Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBMgr;

    move-result-object v1

    # setter for: Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mCDBMgr:Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBMgr;
    invoke-static {v0, v1}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->access$602(Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBMgr;)Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBMgr;

    iget-object v0, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper$1;->this$0:Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;

    # getter for: Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mCDBMgr:Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBMgr;
    invoke-static {v0}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->access$600(Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;)Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBMgr;

    move-result-object v0

    new-instance v1, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper$cdbInstallor;

    iget-object v2, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper$1;->this$0:Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;

    invoke-direct {v1, v2}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper$cdbInstallor;-><init>(Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;)V

    invoke-virtual {v0, v1}, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBMgr;->setCDBInstaller(Lcom/ime/framework/dbmanager/categorydb/CategoryDBInstallInterface;)V

    :cond_1
    return-void
.end method
