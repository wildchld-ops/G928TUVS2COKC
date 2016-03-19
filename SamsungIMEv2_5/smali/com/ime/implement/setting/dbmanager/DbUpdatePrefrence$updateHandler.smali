.class Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence$updateHandler;
.super Landroid/os/Handler;
.source "DbUpdatePrefrence.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "updateHandler"
.end annotation


# instance fields
.field mParentRefrence:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence$updateHandler;->mParentRefrence:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8

    const/4 v5, 0x1

    const/4 v7, 0x0

    iget-object v4, p0, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence$updateHandler;->mParentRefrence:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;

    if-nez v3, :cond_1

    const-string v4, "DbUpdatePrefrence"

    const-string v5, "updateHandler loose parent..."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    sget-byte v4, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;->PREFRENCE_DOWNLOAD_STYLE:B

    # setter for: Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;->mPrefrenceDispStyle:B
    invoke-static {v3, v4}, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;->access$302(Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;B)B

    invoke-virtual {v3}, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;->updateButtonStatus()Z

    move-result v4

    if-nez v4, :cond_2

    # invokes: Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;->setItemStatus(ZI)V
    invoke-static {v3, v7, v7}, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;->access$100(Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;ZI)V

    :cond_2
    # getter for: Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;->mDBOperationCB:Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence$dbOperationCB;
    invoke-static {v3}, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;->access$400(Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;)Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence$dbOperationCB;

    move-result-object v4

    if-eqz v4, :cond_0

    # getter for: Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;->mDBOperationCB:Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence$dbOperationCB;
    invoke-static {v3}, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;->access$400(Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;)Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence$dbOperationCB;

    move-result-object v4

    invoke-interface {v4}, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence$dbOperationCB;->onDownloadSuccess()V

    goto :goto_0

    :pswitch_2
    const/4 v4, -0x1

    # invokes: Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;->setItemStatus(ZI)V
    invoke-static {v3, v5, v4}, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;->access$100(Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;ZI)V

    goto :goto_0

    :pswitch_3
    # invokes: Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;->setItemStatus(ZI)V
    invoke-static {v3, v5, v7}, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;->access$100(Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;ZI)V

    goto :goto_0

    :pswitch_4
    # invokes: Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;->setItemStatus(ZI)V
    invoke-static {v3, v7, v7}, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;->access$100(Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;ZI)V

    goto :goto_0

    :pswitch_5
    # invokes: Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;->setItemStatus(ZI)V
    invoke-static {v3, v7, v7}, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;->access$100(Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;ZI)V

    const/4 v4, 0x3

    # invokes: Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;->showAlertDialog(I)V
    invoke-static {v3, v4}, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;->access$200(Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;I)V

    goto :goto_0

    :pswitch_6
    # invokes: Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;->setItemStatus(ZI)V
    invoke-static {v3, v7, v7}, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;->access$100(Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;ZI)V

    const/4 v4, 0x4

    # invokes: Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;->showAlertDialog(I)V
    invoke-static {v3, v4}, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;->access$200(Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;I)V

    goto :goto_0

    :pswitch_7
    # invokes: Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;->setItemStatus(ZI)V
    invoke-static {v3, v7, v7}, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;->access$100(Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;ZI)V

    const/16 v4, 0x8

    # invokes: Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;->showAlertDialog(I)V
    invoke-static {v3, v4}, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;->access$200(Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;I)V

    goto :goto_0

    :pswitch_8
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/ime/framework/dbmanager/DbDownloadInfo;

    iget v4, v2, Lcom/ime/framework/dbmanager/DbDownloadInfo;->percent:I

    # invokes: Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;->setItemStatus(ZI)V
    invoke-static {v3, v5, v4}, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;->access$100(Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;ZI)V

    goto :goto_0

    :pswitch_9
    # invokes: Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;->setItemStatus(ZI)V
    invoke-static {v3, v7, v7}, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;->access$100(Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;ZI)V

    # getter for: Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;->access$500(Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;)Landroid/content/Context;

    move-result-object v4

    # getter for: Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;->access$500(Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;)Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0d0383

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :pswitch_a
    const/4 v1, 0x0

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/ime/framework/dbmanager/DbDownloadInfo;

    if-eqz v2, :cond_3

    iget-boolean v1, v2, Lcom/ime/framework/dbmanager/DbDownloadInfo;->bAvailable:Z

    :cond_3
    # getter for: Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;->mDBOperationCB:Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence$dbOperationCB;
    invoke-static {v3}, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;->access$400(Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;)Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence$dbOperationCB;

    move-result-object v4

    if-eqz v4, :cond_4

    # getter for: Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;->mDBOperationCB:Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence$dbOperationCB;
    invoke-static {v3}, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;->access$400(Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;)Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence$dbOperationCB;

    move-result-object v4

    invoke-interface {v4, v1}, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence$dbOperationCB;->onCheckUpdatable(Z)V

    :cond_4
    const/4 v0, 0x0

    # getter for: Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;->mPrefrenceDispStyle:B
    invoke-static {v3}, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;->access$300(Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;)B

    move-result v4

    sget-byte v5, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;->PREFRENCE_DOWNLOAD_STYLE:B

    if-ne v4, v5, :cond_5

    invoke-virtual {v3}, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;->updateButtonStatus()Z

    move-result v0

    :cond_5
    if-nez v0, :cond_0

    # invokes: Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;->setItemStatus(ZI)V
    invoke-static {v3, v7, v7}, Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;->access$100(Lcom/ime/implement/setting/dbmanager/DbUpdatePrefrence;ZI)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_7
        :pswitch_9
        :pswitch_8
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_2
    .end packed-switch
.end method
