.class Lcom/ime/framework/view/TipsDialog$64;
.super Ljava/lang/Object;
.source "TipsDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ime/framework/view/TipsDialog;->showXt9_9RemoveTermDialog(Ljava/lang/String;ILandroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ime/framework/view/TipsDialog;

.field final synthetic val$term:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ime/framework/view/TipsDialog;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ime/framework/view/TipsDialog$64;->this$0:Lcom/ime/framework/view/TipsDialog;

    iput-object p2, p0, Lcom/ime/framework/view/TipsDialog$64;->val$term:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/ime/framework/view/TipsDialog$64;->this$0:Lcom/ime/framework/view/TipsDialog;

    iget-object v1, v1, Lcom/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/ime/framework/view/AbstractKeyboardView;

    iget-object v1, v1, Lcom/ime/framework/view/AbstractKeyboardView;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    iget-object v2, p0, Lcom/ime/framework/view/TipsDialog$64;->val$term:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    iget-object v3, p0, Lcom/ime/framework/view/TipsDialog$64;->val$term:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    int-to-short v3, v3

    invoke-interface {v1, v2, v3}, Lcom/ime/framework/engine/InputEngineManager;->deleteWordFromLDB([CS)S

    iget-object v1, p0, Lcom/ime/framework/view/TipsDialog$64;->this$0:Lcom/ime/framework/view/TipsDialog;

    iget-object v1, v1, Lcom/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/ime/framework/view/AbstractKeyboardView;

    iget-object v1, v1, Lcom/ime/framework/view/AbstractKeyboardView;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v1}, Lcom/ime/framework/engine/InputEngineManager;->updateSelectList()I

    iget-object v1, p0, Lcom/ime/framework/view/TipsDialog$64;->this$0:Lcom/ime/framework/view/TipsDialog;

    iget-object v1, v1, Lcom/ime/framework/view/TipsDialog;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->isCandidateExpanded()Z

    move-result v0

    iget-object v1, p0, Lcom/ime/framework/view/TipsDialog$64;->this$0:Lcom/ime/framework/view/TipsDialog;

    iget-object v1, v1, Lcom/ime/framework/view/TipsDialog;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1, v4}, Lcom/ime/framework/common/InputManager;->updateCandidates(I)V

    iget-object v1, p0, Lcom/ime/framework/view/TipsDialog$64;->this$0:Lcom/ime/framework/view/TipsDialog;

    iget-object v1, v1, Lcom/ime/framework/view/TipsDialog;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/ime/framework/view/TipsDialog$64;->this$0:Lcom/ime/framework/view/TipsDialog;

    iget-object v2, v2, Lcom/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v2}, Lcom/ime/framework/view/AbstractKeyboardView;->getXt9_9RemoveTermToastMsg()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v1, p0, Lcom/ime/framework/view/TipsDialog$64;->this$0:Lcom/ime/framework/view/TipsDialog;

    iget-object v1, v1, Lcom/ime/framework/view/TipsDialog;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1, v6}, Lcom/ime/framework/common/InputManager;->setPopupDialog(Landroid/app/Dialog;)V

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/ime/framework/view/TipsDialog$64;->this$0:Lcom/ime/framework/view/TipsDialog;

    iget-object v1, v1, Lcom/ime/framework/view/TipsDialog;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1, v5}, Lcom/ime/framework/common/InputManager;->setCandidateExpandedFlag(Z)V

    iget-object v1, p0, Lcom/ime/framework/view/TipsDialog$64;->this$0:Lcom/ime/framework/view/TipsDialog;

    iget-object v1, v1, Lcom/ime/framework/view/TipsDialog;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1, v4}, Lcom/ime/framework/common/InputManager;->getCandidateView(Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/ime/framework/view/candidate/AbstractCandidateView;

    invoke-virtual {v1}, Lcom/ime/framework/view/candidate/AbstractCandidateView;->showExpandPopup()V

    :cond_0
    iget-object v1, p0, Lcom/ime/framework/view/TipsDialog$64;->this$0:Lcom/ime/framework/view/TipsDialog;

    iget-object v1, v1, Lcom/ime/framework/view/TipsDialog;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->isChnMode()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/ime/framework/view/TipsDialog$64;->this$0:Lcom/ime/framework/view/TipsDialog;

    iget-object v1, v1, Lcom/ime/framework/view/TipsDialog;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->isChineseLanguageMode()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/ime/framework/view/TipsDialog$64;->this$0:Lcom/ime/framework/view/TipsDialog;

    iget-object v1, v1, Lcom/ime/framework/view/TipsDialog;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1, v5}, Lcom/ime/framework/common/InputManager;->setToolbarVisibility(Z)V

    iget-object v1, p0, Lcom/ime/framework/view/TipsDialog$64;->this$0:Lcom/ime/framework/view/TipsDialog;

    iget-object v1, v1, Lcom/ime/framework/view/TipsDialog;->mInputManager:Lcom/ime/framework/common/InputManager;

    const-string v2, ""

    invoke-interface {v1, v2, v4}, Lcom/ime/framework/common/InputManager;->updateSpellView(Ljava/lang/CharSequence;Z)V

    iget-object v1, p0, Lcom/ime/framework/view/TipsDialog$64;->this$0:Lcom/ime/framework/view/TipsDialog;

    iget-object v1, v1, Lcom/ime/framework/view/TipsDialog;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1, v5}, Lcom/ime/framework/common/InputManager;->setToolbarVisibility(Z)V

    iget-object v1, p0, Lcom/ime/framework/view/TipsDialog$64;->this$0:Lcom/ime/framework/view/TipsDialog;

    iget-object v1, v1, Lcom/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/ime/framework/view/AbstractKeyboardView;

    iget-object v1, v1, Lcom/ime/framework/view/AbstractKeyboardView;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v1}, Lcom/ime/framework/engine/InputEngineManager;->clearContext()I

    iget-object v1, p0, Lcom/ime/framework/view/TipsDialog$64;->this$0:Lcom/ime/framework/view/TipsDialog;

    iget-object v1, v1, Lcom/ime/framework/view/TipsDialog;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1, v6, v4}, Lcom/ime/framework/common/InputManager;->setPhoneticSpellLayout(Ljava/util/ArrayList;Z)V

    :cond_1
    return-void
.end method
