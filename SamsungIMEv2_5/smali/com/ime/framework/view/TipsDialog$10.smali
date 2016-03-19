.class Lcom/ime/framework/view/TipsDialog$10;
.super Ljava/lang/Object;
.source "TipsDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ime/framework/view/TipsDialog;->showAllowAppPermissionDialog(Landroid/view/View;)V
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

    iput-object p1, p0, Lcom/ime/framework/view/TipsDialog$10;->this$0:Lcom/ime/framework/view/TipsDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object v0, p0, Lcom/ime/framework/view/TipsDialog$10;->this$0:Lcom/ime/framework/view/TipsDialog;

    iget-object v0, v0, Lcom/ime/framework/view/TipsDialog;->mInputManager:Lcom/ime/framework/common/InputManager;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/ime/framework/common/InputManager;->setDontShowAllowAppPermissionGuideConsecutively(Z)V

    iget-object v0, p0, Lcom/ime/framework/view/TipsDialog$10;->this$0:Lcom/ime/framework/view/TipsDialog;

    iget-object v0, v0, Lcom/ime/framework/view/TipsDialog;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->showDlgMsgBoxOriginal()V

    return-void
.end method
