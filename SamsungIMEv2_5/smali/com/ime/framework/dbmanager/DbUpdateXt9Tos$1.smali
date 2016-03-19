.class Lcom/ime/framework/dbmanager/DbUpdateXt9Tos$1;
.super Ljava/lang/Object;
.source "DbUpdateXt9Tos.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

    iput-object p1, p0, Lcom/ime/framework/dbmanager/DbUpdateXt9Tos$1;->this$0:Lcom/ime/framework/dbmanager/DbUpdateXt9Tos;

    iput-object p2, p0, Lcom/ime/framework/dbmanager/DbUpdateXt9Tos$1;->val$onClickNotifier:Lcom/ime/framework/dbmanager/DbUpdateXt9Tos$tosClickInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/ime/framework/dbmanager/DbUpdateXt9Tos$1;->this$0:Lcom/ime/framework/dbmanager/DbUpdateXt9Tos;

    invoke-virtual {v0}, Lcom/ime/framework/dbmanager/DbUpdateXt9Tos;->dismissXt9TosDialog()V

    iget-object v0, p0, Lcom/ime/framework/dbmanager/DbUpdateXt9Tos$1;->val$onClickNotifier:Lcom/ime/framework/dbmanager/DbUpdateXt9Tos$tosClickInterface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/dbmanager/DbUpdateXt9Tos$1;->val$onClickNotifier:Lcom/ime/framework/dbmanager/DbUpdateXt9Tos$tosClickInterface;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/ime/framework/dbmanager/DbUpdateXt9Tos$tosClickInterface;->onTosAccept(Z)V

    :cond_0
    return-void
.end method
