.class Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper$cdbInstallor;
.super Ljava/lang/Object;
.source "Xt994Wrapper.java"

# interfaces
.implements Lcom/ime/framework/dbmanager/categorydb/CategoryDBInstallInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "cdbInstallor"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;


# direct methods
.method constructor <init>(Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;)V
    .locals 0

    iput-object p1, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper$cdbInstallor;->this$0:Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public install(Lcom/ime/framework/dbmanager/categorydb/CategoryDB;)I
    .locals 7

    const/4 v6, -0x1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper$cdbInstallor;->this$0:Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;

    # getter for: Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputManager:Lcom/ime/framework/common/InputManager;
    invoke-static {v0}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->access$000(Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;)Lcom/ime/framework/common/InputManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ime/framework/dbmanager/categorydb/CategoryDB;->getCatDBId()I

    move-result v1

    invoke-virtual {p1}, Lcom/ime/framework/dbmanager/categorydb/CategoryDB;->getLanguageId()I

    move-result v2

    invoke-virtual {p1}, Lcom/ime/framework/dbmanager/categorydb/CategoryDB;->getDBAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/ime/framework/dbmanager/categorydb/CategoryDB;->getDBVersion()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static/range {v0 .. v5}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9CPEnableCategoryDB(Landroid/content/res/AssetManager;IILjava/lang/String;Ljava/lang/String;Z)S

    move-result v6

    :cond_0
    return v6
.end method

.method public uninstall(Lcom/ime/framework/dbmanager/categorydb/CategoryDB;)I
    .locals 7

    const/4 v6, -0x1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper$cdbInstallor;->this$0:Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;

    # getter for: Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->mInputManager:Lcom/ime/framework/common/InputManager;
    invoke-static {v0}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;->access$100(Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;)Lcom/ime/framework/common/InputManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ime/framework/dbmanager/categorydb/CategoryDB;->getCatDBId()I

    move-result v1

    invoke-virtual {p1}, Lcom/ime/framework/dbmanager/categorydb/CategoryDB;->getLanguageId()I

    move-result v2

    invoke-virtual {p1}, Lcom/ime/framework/dbmanager/categorydb/CategoryDB;->getDBAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/ime/framework/dbmanager/categorydb/CategoryDB;->getDBVersion()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/ime/framework/engine/xt9/Xt9core;->ET9CPEnableCategoryDB(Landroid/content/res/AssetManager;IILjava/lang/String;Ljava/lang/String;Z)S

    move-result v6

    :cond_0
    return v6
.end method
