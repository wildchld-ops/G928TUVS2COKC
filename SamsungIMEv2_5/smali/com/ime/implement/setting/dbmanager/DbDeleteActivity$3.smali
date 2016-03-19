.class Lcom/ime/implement/setting/dbmanager/DbDeleteActivity$3;
.super Ljava/lang/Object;
.source "DbDeleteActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ime/implement/setting/dbmanager/DbDeleteActivity;->showAlertDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ime/implement/setting/dbmanager/DbDeleteActivity;


# direct methods
.method constructor <init>(Lcom/ime/implement/setting/dbmanager/DbDeleteActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/ime/implement/setting/dbmanager/DbDeleteActivity$3;->this$0:Lcom/ime/implement/setting/dbmanager/DbDeleteActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/ime/implement/setting/dbmanager/DbDeleteActivity$3;->this$0:Lcom/ime/implement/setting/dbmanager/DbDeleteActivity;

    iget-object v0, v0, Lcom/ime/implement/setting/dbmanager/DbDeleteActivity;->mCDBMgr:Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBMgr;

    iget-object v1, p0, Lcom/ime/implement/setting/dbmanager/DbDeleteActivity$3;->this$0:Lcom/ime/implement/setting/dbmanager/DbDeleteActivity;

    # getter for: Lcom/ime/implement/setting/dbmanager/DbDeleteActivity;->mDeleteDBList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/ime/implement/setting/dbmanager/DbDeleteActivity;->access$400(Lcom/ime/implement/setting/dbmanager/DbDeleteActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBMgr;->deleteCatDB(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/ime/implement/setting/dbmanager/DbDeleteActivity$3;->this$0:Lcom/ime/implement/setting/dbmanager/DbDeleteActivity;

    invoke-virtual {v0}, Lcom/ime/implement/setting/dbmanager/DbDeleteActivity;->finish()V

    return-void
.end method
