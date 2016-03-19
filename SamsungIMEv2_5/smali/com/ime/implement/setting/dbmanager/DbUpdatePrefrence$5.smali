.class Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence$5;
.super Ljava/lang/Object;
.source "DbUpdatePrefrence.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;->showAlertDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;


# direct methods
.method constructor <init>(Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;)V
    .locals 0

    iput-object p1, p0, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence$5;->this$0:Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence$5;->this$0:Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;

    const/4 v1, -0x1

    # setter for: Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;->mDialogId:I
    invoke-static {v0, v1}, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;->access$602(Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;I)I

    iget-object v0, p0, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence$5;->this$0:Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;

    invoke-virtual {v0}, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;->dbUpdatePrepare()V

    return-void
.end method
