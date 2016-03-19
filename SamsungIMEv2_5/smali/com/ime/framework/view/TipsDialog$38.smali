.class Lcom/ime/framework/view/TipsDialog$38;
.super Ljava/lang/Object;
.source "TipsDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ime/framework/view/TipsDialog;->showTipsTraceGuideDialog(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ime/framework/view/TipsDialog;


# direct methods
.method constructor <init>(Lcom/ime/framework/view/TipsDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/ime/framework/view/TipsDialog$38;->this$0:Lcom/ime/framework/view/TipsDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 4

    const/4 v3, -0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/ime/framework/view/TipsDialog$38;->this$0:Lcom/ime/framework/view/TipsDialog;

    iget-object v0, v0, Lcom/ime/framework/view/TipsDialog;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0, v2}, Lcom/ime/framework/common/InputManager;->getPrevTipsDlg(I)I

    move-result v0

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lcom/ime/framework/view/TipsDialog$38;->this$0:Lcom/ime/framework/view/TipsDialog;

    # getter for: Lcom/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/ime/framework/view/TipsDialog;->access$800(Lcom/ime/framework/view/TipsDialog;)Landroid/app/AlertDialog;

    move-result-object v0

    const/4 v1, -0x3

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_0
    iget-object v0, p0, Lcom/ime/framework/view/TipsDialog$38;->this$0:Lcom/ime/framework/view/TipsDialog;

    iget-object v0, v0, Lcom/ime/framework/view/TipsDialog;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0, v2}, Lcom/ime/framework/common/InputManager;->getNextTipsDlg(I)I

    move-result v0

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lcom/ime/framework/view/TipsDialog$38;->this$0:Lcom/ime/framework/view/TipsDialog;

    # getter for: Lcom/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/ime/framework/view/TipsDialog;->access$800(Lcom/ime/framework/view/TipsDialog;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_1
    return-void
.end method
