.class Lcom/ime/framework/view/AbstractViewController$2;
.super Ljava/lang/Object;
.source "AbstractViewController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ime/framework/view/AbstractViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ime/framework/view/AbstractViewController;


# direct methods
.method constructor <init>(Lcom/ime/framework/view/AbstractViewController;)V
    .locals 0

    iput-object p1, p0, Lcom/ime/framework/view/AbstractViewController$2;->this$0:Lcom/ime/framework/view/AbstractViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/ime/framework/view/AbstractViewController$2;->this$0:Lcom/ime/framework/view/AbstractViewController;

    const/4 v3, 0x1

    # setter for: Lcom/ime/framework/view/AbstractViewController;->mOneHandViewClicked:Z
    invoke-static {v2, v3}, Lcom/ime/framework/view/AbstractViewController;->access$002(Lcom/ime/framework/view/AbstractViewController;Z)Z

    iget-object v2, p0, Lcom/ime/framework/view/AbstractViewController$2;->this$0:Lcom/ime/framework/view/AbstractViewController;

    iget-object v2, v2, Lcom/ime/framework/view/AbstractViewController;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2, v0}, Lcom/ime/framework/common/InputManager;->setOneHandKeypadRightSet(Z)V

    iget-object v2, p0, Lcom/ime/framework/view/AbstractViewController$2;->this$0:Lcom/ime/framework/view/AbstractViewController;

    iget-object v2, v2, Lcom/ime/framework/view/AbstractViewController;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/ime/framework/common/InputManager;->isChnMode()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/ime/framework/view/AbstractViewController$2;->this$0:Lcom/ime/framework/view/AbstractViewController;

    iget-object v2, v2, Lcom/ime/framework/view/AbstractViewController;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/ime/framework/common/InputManager;->isChineseLanguageMode()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/ime/framework/view/AbstractViewController$2;->this$0:Lcom/ime/framework/view/AbstractViewController;

    invoke-virtual {v2}, Lcom/ime/framework/view/AbstractViewController;->isSpellViewShown()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/ime/framework/engine/InputEngineManagerImpl;->getInstance()Lcom/ime/framework/engine/InputEngineManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/ime/framework/engine/InputEngineManager;->clearContext()I

    :cond_0
    iget-object v2, p0, Lcom/ime/framework/view/AbstractViewController$2;->this$0:Lcom/ime/framework/view/AbstractViewController;

    invoke-virtual {v2}, Lcom/ime/framework/view/AbstractViewController;->setOneHandLayoutShown()V

    iget-object v2, p0, Lcom/ime/framework/view/AbstractViewController$2;->this$0:Lcom/ime/framework/view/AbstractViewController;

    const/4 v3, 0x0

    # setter for: Lcom/ime/framework/view/AbstractViewController;->mOneHandViewClicked:Z
    invoke-static {v2, v3}, Lcom/ime/framework/view/AbstractViewController;->access$002(Lcom/ime/framework/view/AbstractViewController;Z)Z

    return-void
.end method
