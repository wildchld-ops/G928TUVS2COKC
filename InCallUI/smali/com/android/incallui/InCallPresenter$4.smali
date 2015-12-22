.class Lcom/android/incallui/InCallPresenter$4;
.super Landroid/telecom/Phone$Listener;
.source "InCallPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/InCallPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/InCallPresenter;


# direct methods
.method constructor <init>(Lcom/android/incallui/InCallPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/InCallPresenter$4;->this$0:Lcom/android/incallui/InCallPresenter;

    invoke-direct {p0}, Landroid/telecom/Phone$Listener;-><init>()V

    return-void
.end method


# virtual methods
.method public onBringToForeground(Landroid/telecom/Phone;Z)V
    .locals 1

    const-string v0, "Bringing UI to foreground."

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter$4;->this$0:Lcom/android/incallui/InCallPresenter;

    invoke-virtual {v0, p2}, Lcom/android/incallui/InCallPresenter;->bringToForeground(Z)V

    return-void
.end method

.method public onCallAdded(Landroid/telecom/Phone;Landroid/telecom/Call;)V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter$4;->this$0:Lcom/android/incallui/InCallPresenter;

    # getter for: Lcom/android/incallui/InCallPresenter;->mCallListener:Landroid/telecom/Call$Listener;
    invoke-static {v0}, Lcom/android/incallui/InCallPresenter;->access$300(Lcom/android/incallui/InCallPresenter;)Landroid/telecom/Call$Listener;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/telecom/Call;->addListener(Landroid/telecom/Call$Listener;)V

    return-void
.end method

.method public onCallRemoved(Landroid/telecom/Phone;Landroid/telecom/Call;)V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter$4;->this$0:Lcom/android/incallui/InCallPresenter;

    # getter for: Lcom/android/incallui/InCallPresenter;->mCallListener:Landroid/telecom/Call$Listener;
    invoke-static {v0}, Lcom/android/incallui/InCallPresenter;->access$300(Lcom/android/incallui/InCallPresenter;)Landroid/telecom/Call$Listener;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/telecom/Call;->removeListener(Landroid/telecom/Call$Listener;)V

    return-void
.end method

.method public onCanAddCallChanged(Landroid/telecom/Phone;Z)V
    .locals 3

    iget-object v2, p0, Lcom/android/incallui/InCallPresenter$4;->this$0:Lcom/android/incallui/InCallPresenter;

    # getter for: Lcom/android/incallui/InCallPresenter;->mCanAddCallListeners:Ljava/util/Set;
    invoke-static {v2}, Lcom/android/incallui/InCallPresenter;->access$400(Lcom/android/incallui/InCallPresenter;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/InCallPresenter$CanAddCallListener;

    invoke-interface {v1, p2}, Lcom/android/incallui/InCallPresenter$CanAddCallListener;->onCanAddCallChanged(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onChangeInContent(Landroid/telecom/Phone;I)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onChangeInContent::"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    packed-switch p2, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onUiResume called"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/InCallPresenter$4;->this$0:Lcom/android/incallui/InCallPresenter;

    # getter for: Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;
    invoke-static {v1}, Lcom/android/incallui/InCallPresenter;->access$000(Lcom/android/incallui/InCallPresenter;)Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/CallButtonPresenter;->getInstance()Lcom/android/incallui/CallButtonPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallButtonPresenter;->onUiResume()V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter$4;->this$0:Lcom/android/incallui/InCallPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getSecInCallActivity()Lcom/android/incallui/SecInCallActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/SecInCallActivity;->getInCallMenu()Lcom/android/incallui/InCallMenu;

    move-result-object v0

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/InCallPresenter$4;->this$0:Lcom/android/incallui/InCallPresenter;

    # getter for: Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;
    invoke-static {v2}, Lcom/android/incallui/InCallPresenter;->access$000(Lcom/android/incallui/InCallPresenter;)Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/incallui/rcs/RcsShareUI;->checkIfCapableOfRcsFileTransfer(Landroid/content/Context;Lcom/android/incallui/Call;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallMenu;->setTransferFileOption(Z)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter$4;->this$0:Lcom/android/incallui/InCallPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->isShowingInCallUi()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setUpRcsCallCard->mCallList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/InCallPresenter$4;->this$0:Lcom/android/incallui/InCallPresenter;

    # getter for: Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;
    invoke-static {v1}, Lcom/android/incallui/InCallPresenter;->access$000(Lcom/android/incallui/InCallPresenter;)Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter$4;->this$0:Lcom/android/incallui/InCallPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getSecInCallActivity()Lcom/android/incallui/SecInCallActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/InCallPresenter$4;->this$0:Lcom/android/incallui/InCallPresenter;

    # getter for: Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;
    invoke-static {v1}, Lcom/android/incallui/InCallPresenter;->access$000(Lcom/android/incallui/InCallPresenter;)Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/SecInCallActivity;->setUpRcsCallCard(Lcom/android/incallui/Call;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setUpRcsCallCard->getActiveCall="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/InCallPresenter$4;->this$0:Lcom/android/incallui/InCallPresenter;

    # getter for: Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;
    invoke-static {v1}, Lcom/android/incallui/InCallPresenter;->access$000(Lcom/android/incallui/InCallPresenter;)Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/InCallUtils;->hasIncomingCall()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/rcs/RcsShareUI;->isShareActive(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/InCallPresenter$4;->this$0:Lcom/android/incallui/InCallPresenter;

    # getter for: Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;
    invoke-static {v1}, Lcom/android/incallui/InCallPresenter;->access$000(Lcom/android/incallui/InCallPresenter;)Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/rcs/RcsShareUI;->resumeShare(Landroid/content/Context;Lcom/android/incallui/Call;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
