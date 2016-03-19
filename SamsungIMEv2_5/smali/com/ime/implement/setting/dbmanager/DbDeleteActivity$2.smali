.class Lcom/ime/implement/setting/dbmanager/DbDeleteActivity$2;
.super Ljava/lang/Object;
.source "DbDeleteActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ime/implement/setting/dbmanager/DbDeleteActivity;->initLayout()V
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

    iput-object p1, p0, Lcom/ime/implement/setting/dbmanager/DbDeleteActivity$2;->this$0:Lcom/ime/implement/setting/dbmanager/DbDeleteActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    instance-of v2, p2, Landroid/widget/CheckedTextView;

    if-eqz v2, :cond_0

    move-object v1, p2

    check-cast v1, Landroid/widget/CheckedTextView;

    invoke-virtual {v1}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result v0

    iget-object v3, p0, Lcom/ime/implement/setting/dbmanager/DbDeleteActivity$2;->this$0:Lcom/ime/implement/setting/dbmanager/DbDeleteActivity;

    iget-object v2, p0, Lcom/ime/implement/setting/dbmanager/DbDeleteActivity$2;->this$0:Lcom/ime/implement/setting/dbmanager/DbDeleteActivity;

    # getter for: Lcom/ime/implement/setting/dbmanager/DbDeleteActivity;->mCatDBList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/ime/implement/setting/dbmanager/DbDeleteActivity;->access$200(Lcom/ime/implement/setting/dbmanager/DbDeleteActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ime/framework/dbmanager/categorydb/CategoryDB;

    # invokes: Lcom/ime/implement/setting/dbmanager/DbDeleteActivity;->updateDeleteItem(Lcom/ime/framework/dbmanager/categorydb/CategoryDB;Z)V
    invoke-static {v3, v2, v0}, Lcom/ime/implement/setting/dbmanager/DbDeleteActivity;->access$300(Lcom/ime/implement/setting/dbmanager/DbDeleteActivity;Lcom/ime/framework/dbmanager/categorydb/CategoryDB;Z)V

    iget-object v2, p0, Lcom/ime/implement/setting/dbmanager/DbDeleteActivity$2;->this$0:Lcom/ime/implement/setting/dbmanager/DbDeleteActivity;

    # getter for: Lcom/ime/implement/setting/dbmanager/DbDeleteActivity;->mSelectAllCheckBox:Landroid/widget/CheckedTextView;
    invoke-static {v2}, Lcom/ime/implement/setting/dbmanager/DbDeleteActivity;->access$000(Lcom/ime/implement/setting/dbmanager/DbDeleteActivity;)Landroid/widget/CheckedTextView;

    move-result-object v3

    iget-object v2, p0, Lcom/ime/implement/setting/dbmanager/DbDeleteActivity$2;->this$0:Lcom/ime/implement/setting/dbmanager/DbDeleteActivity;

    # getter for: Lcom/ime/implement/setting/dbmanager/DbDeleteActivity;->mDeleteDBList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/ime/implement/setting/dbmanager/DbDeleteActivity;->access$400(Lcom/ime/implement/setting/dbmanager/DbDeleteActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget-object v4, p0, Lcom/ime/implement/setting/dbmanager/DbDeleteActivity$2;->this$0:Lcom/ime/implement/setting/dbmanager/DbDeleteActivity;

    # getter for: Lcom/ime/implement/setting/dbmanager/DbDeleteActivity;->mDBListView:Landroid/widget/ListView;
    invoke-static {v4}, Lcom/ime/implement/setting/dbmanager/DbDeleteActivity;->access$500(Lcom/ime/implement/setting/dbmanager/DbDeleteActivity;)Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ListView;->getCount()I

    move-result v4

    if-ne v2, v4, :cond_1

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v3, v2}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    const-string v3, "DbDeleteFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "position = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", db="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, Lcom/ime/implement/setting/dbmanager/DbDeleteActivity$2;->this$0:Lcom/ime/implement/setting/dbmanager/DbDeleteActivity;

    # getter for: Lcom/ime/implement/setting/dbmanager/DbDeleteActivity;->mCatDBList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/ime/implement/setting/dbmanager/DbDeleteActivity;->access$200(Lcom/ime/implement/setting/dbmanager/DbDeleteActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ime/framework/dbmanager/categorydb/CategoryDB;

    invoke-virtual {v2}, Lcom/ime/framework/dbmanager/categorydb/CategoryDB;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method
