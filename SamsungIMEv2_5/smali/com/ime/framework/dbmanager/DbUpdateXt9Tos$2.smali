.class Lcom/ime/framework/dbmanager/DbUpdateXt9Tos$2;
.super Ljava/lang/Object;
.source "DbUpdateXt9Tos.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ime/framework/dbmanager/DbUpdateXt9Tos;->getTosDialog(Landroid/content/Context;Lcom/ime/framework/dbmanager/DbUpdateXt9Tos$tosClickInterface;Z)Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ime/framework/dbmanager/DbUpdateXt9Tos;

.field final synthetic val$onClickNotifier:Lcom/ime/framework/dbmanager/DbUpdateXt9Tos$tosClickInterface;


# direct methods
.method constructor <init>(Lcom/ime/framework/dbmanager/DbUpdateXt9Tos;Lcom/ime/framework/dbmanager/DbUpdateXt9Tos$tosClickInterface;)V
    .locals 0

    iput-object p1, p0, Lcom/ime/framework/dbmanager/DbUpdateXt9Tos$2;->this$0:Lcom/ime/framework/dbmanager/DbUpdateXt9Tos;

    iput-object p2, p0, Lcom/ime/framework/dbmanager/DbUpdateXt9Tos$2;->val$onClickNotifier:Lcom/ime/framework/dbmanager/DbUpdateXt9Tos$tosClickInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object v0, p0, Lcom/ime/framework/dbmanager/DbUpdateXt9Tos$2;->this$0:Lcom/ime/framework/dbmanager/DbUpdateXt9Tos;

    const/4 v1, 0x0

    # setter for: Lcom/ime/framework/dbmanager/DbUpdateXt9Tos;->mXt9TosDialog:Landroid/app/AlertDialog;
    invoke-static {v0, v1}, Lcom/ime/framework/dbmanager/DbUpdateXt9Tos;->access$002(Lcom/ime/framework/dbmanager/DbUpdateXt9Tos;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/ime/framework/dbmanager/DbUpdateXt9Tos$2;->val$onClickNotifier:Lcom/ime/framework/dbmanager/DbUpdateXt9Tos$tosClickInterface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/dbmanager/DbUpdateXt9Tos$2;->val$onClickNotifier:Lcom/ime/framework/dbmanager/DbUpdateXt9Tos$tosClickInterface;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/ime/framework/dbmanager/DbUpdateXt9Tos$tosClickInterface;->onTosAccept(Z)V

    :cond_0
    return-void
.end method
