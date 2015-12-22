.class Lcom/android/internal/policy/impl/GlobalActions$27;
.super Landroid/os/Handler;
.source "GlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/GlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/GlobalActions;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/GlobalActions;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/policy/impl/GlobalActions$27;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions$27;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mDialog:Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;
    invoke-static {v1}, Lcom/android/internal/policy/impl/GlobalActions;->access$6100(Lcom/android/internal/policy/impl/GlobalActions;)Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v1, "GlobalActions"

    const-string v2, "handleMessage : MESSAGE_DISMISS : Call mDialog.dismiss()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions$27;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mDialog:Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;
    invoke-static {v1}, Lcom/android/internal/policy/impl/GlobalActions;->access$6100(Lcom/android/internal/policy/impl/GlobalActions;)Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->dismiss()V

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions$27;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    const/4 v2, 0x0

    # setter for: Lcom/android/internal/policy/impl/GlobalActions;->mDialog:Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;
    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/GlobalActions;->access$6102(Lcom/android/internal/policy/impl/GlobalActions;Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;)Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mIsMiniCoverOpened:Z
    invoke-static {}, Lcom/android/internal/policy/impl/GlobalActions;->access$300()Z

    move-result v1

    if-nez v1, :cond_1

    # setter for: Lcom/android/internal/policy/impl/GlobalActions;->mIsMiniDialogMode:Z
    invoke-static {v3}, Lcom/android/internal/policy/impl/GlobalActions;->access$4002(Z)Z

    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions$27;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mConfirmDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/android/internal/policy/impl/GlobalActions;->access$6200(Lcom/android/internal/policy/impl/GlobalActions;)Landroid/app/AlertDialog;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions$27;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mConfirmDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/android/internal/policy/impl/GlobalActions;->access$6200(Lcom/android/internal/policy/impl/GlobalActions;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions$27;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mConfirmDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/android/internal/policy/impl/GlobalActions;->access$6200(Lcom/android/internal/policy/impl/GlobalActions;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    :cond_2
    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mIsCoverOpen:Z
    invoke-static {}, Lcom/android/internal/policy/impl/GlobalActions;->access$4800()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions$27;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mConfirmDialogSViewCoverDialog:Landroid/app/GlobalActionsSViewCoverDialog;
    invoke-static {v1}, Lcom/android/internal/policy/impl/GlobalActions;->access$6300(Lcom/android/internal/policy/impl/GlobalActions;)Landroid/app/GlobalActionsSViewCoverDialog;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions$27;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mConfirmDialogSViewCoverDialog:Landroid/app/GlobalActionsSViewCoverDialog;
    invoke-static {v1}, Lcom/android/internal/policy/impl/GlobalActions;->access$6300(Lcom/android/internal/policy/impl/GlobalActions;)Landroid/app/GlobalActionsSViewCoverDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/GlobalActionsSViewCoverDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions$27;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mConfirmDialogSViewCoverDialog:Landroid/app/GlobalActionsSViewCoverDialog;
    invoke-static {v1}, Lcom/android/internal/policy/impl/GlobalActions;->access$6300(Lcom/android/internal/policy/impl/GlobalActions;)Landroid/app/GlobalActionsSViewCoverDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/GlobalActionsSViewCoverDialog;->dismiss()V

    :cond_3
    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mIsMiniDialogMode:Z
    invoke-static {}, Lcom/android/internal/policy/impl/GlobalActions;->access$4000()Z

    move-result v1

    if-eqz v1, :cond_0

    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mIsMiniCoverOpened:Z
    invoke-static {}, Lcom/android/internal/policy/impl/GlobalActions;->access$300()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "GlobalActions"

    const-string v2, "showing dialog because mIsMiniDialogMode and mIsMiniCoverOpened are true."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    # setter for: Lcom/android/internal/policy/impl/GlobalActions;->mIsMiniDialogMode:Z
    invoke-static {v3}, Lcom/android/internal/policy/impl/GlobalActions;->access$4002(Z)Z

    # setter for: Lcom/android/internal/policy/impl/GlobalActions;->mIsMiniCoverOpened:Z
    invoke-static {v3}, Lcom/android/internal/policy/impl/GlobalActions;->access$302(Z)Z

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions$27;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mAdapter:Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;
    invoke-static {v1}, Lcom/android/internal/policy/impl/GlobalActions;->access$4300(Lcom/android/internal/policy/impl/GlobalActions;)Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions$27;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mAdapter:Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;
    invoke-static {v1}, Lcom/android/internal/policy/impl/GlobalActions;->access$4300(Lcom/android/internal/policy/impl/GlobalActions;)Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;->notifyDataSetChanged()V

    :cond_4
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions$27;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # invokes: Lcom/android/internal/policy/impl/GlobalActions;->handleShow()V
    invoke-static {v1}, Lcom/android/internal/policy/impl/GlobalActions;->access$6400(Lcom/android/internal/policy/impl/GlobalActions;)V

    goto/16 :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions$27;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mAdapter:Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;
    invoke-static {v1}, Lcom/android/internal/policy/impl/GlobalActions;->access$4300(Lcom/android/internal/policy/impl/GlobalActions;)Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions$27;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mAdapter:Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;
    invoke-static {v1}, Lcom/android/internal/policy/impl/GlobalActions;->access$4300(Lcom/android/internal/policy/impl/GlobalActions;)Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions$27;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mAdapter:Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;
    invoke-static {v1}, Lcom/android/internal/policy/impl/GlobalActions;->access$4300(Lcom/android/internal/policy/impl/GlobalActions;)Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions$27;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mAdapter:Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;
    invoke-static {v1}, Lcom/android/internal/policy/impl/GlobalActions;->access$4300(Lcom/android/internal/policy/impl/GlobalActions;)Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;->notifyDataSetChanged()V

    :cond_5
    sget-object v1, Lcom/android/internal/policy/impl/GlobalActions;->mSilentModeView:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions$27;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mSilentModeAction:Lcom/android/internal/policy/impl/GlobalActions$SilentModeAction;
    invoke-static {v1}, Lcom/android/internal/policy/impl/GlobalActions;->access$6500(Lcom/android/internal/policy/impl/GlobalActions;)Lcom/android/internal/policy/impl/GlobalActions$SilentModeAction;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/GlobalActions$SilentModeAction;->updateRingerMode()V

    goto/16 :goto_0

    :pswitch_3
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions$27;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mAdapter:Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;
    invoke-static {v1}, Lcom/android/internal/policy/impl/GlobalActions;->access$4300(Lcom/android/internal/policy/impl/GlobalActions;)Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;->notifyDataSetChanged()V

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions$27;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # invokes: Lcom/android/internal/policy/impl/GlobalActions;->handleShow()V
    invoke-static {v1}, Lcom/android/internal/policy/impl/GlobalActions;->access$6400(Lcom/android/internal/policy/impl/GlobalActions;)V

    goto/16 :goto_0

    :pswitch_4
    const-string v1, "GlobalActions"

    const-string v2, "handleMessage : MESSAGE_REFRESH_AIRPLANEMODE"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions$27;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mAirplaneModeOn:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;
    invoke-static {v1}, Lcom/android/internal/policy/impl/GlobalActions;->access$6600(Lcom/android/internal/policy/impl/GlobalActions;)Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;

    move-result-object v1

    if-eqz v1, :cond_6

    const-string v1, "GlobalActions"

    const-string v2, "handleMessage : MESSAGE_REFRESH_AIRPLANEMODE : call mAirplaneModeOn.updateState"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions$27;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mAirplaneModeOn:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;
    invoke-static {v1}, Lcom/android/internal/policy/impl/GlobalActions;->access$6600(Lcom/android/internal/policy/impl/GlobalActions;)Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions$27;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mAirplaneState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;
    invoke-static {v2}, Lcom/android/internal/policy/impl/GlobalActions;->access$2300(Lcom/android/internal/policy/impl/GlobalActions;)Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->updateState(Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;)V

    :cond_6
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions$27;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mAdapter:Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;
    invoke-static {v1}, Lcom/android/internal/policy/impl/GlobalActions;->access$4300(Lcom/android/internal/policy/impl/GlobalActions;)Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v1, "GlobalActions"

    const-string v2, "handleMessage : MESSAGE_REFRESH_AIRPLANEMODE : call mAdapter.notifyDataSetChanged"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions$27;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mAdapter:Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;
    invoke-static {v1}, Lcom/android/internal/policy/impl/GlobalActions;->access$4300(Lcom/android/internal/policy/impl/GlobalActions;)Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0

    :pswitch_5
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.samsung.cover.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "suppressCoverUI"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "miniModeUI"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "sender"

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions$27;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/internal/policy/impl/GlobalActions;->access$500(Lcom/android/internal/policy/impl/GlobalActions;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_2
    .end packed-switch
.end method
