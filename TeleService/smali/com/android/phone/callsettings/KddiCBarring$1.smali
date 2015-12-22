.class Lcom/android/phone/callsettings/KddiCBarring$1;
.super Landroid/os/Handler;
.source "KddiCBarring.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/callsettings/KddiCBarring;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/callsettings/KddiCBarring;


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/KddiCBarring;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/callsettings/KddiCBarring$1;->this$0:Lcom/android/phone/callsettings/KddiCBarring;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11
    .param p1    # Landroid/os/Message;

    const/4 v10, 0x1

    const/16 v9, 0x64

    const/16 v5, 0x64

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/AsyncResult;

    move-object v0, v6

    check-cast v0, Landroid/os/AsyncResult;

    iget-object v6, p0, Lcom/android/phone/callsettings/KddiCBarring$1;->this$0:Lcom/android/phone/callsettings/KddiCBarring;

    const/4 v7, 0x0

    # setter for: Lcom/android/phone/callsettings/KddiCBarring;->mData:Ljava/lang/String;
    invoke-static {v6, v7}, Lcom/android/phone/callsettings/KddiCBarring;->access$002(Lcom/android/phone/callsettings/KddiCBarring;Ljava/lang/String;)Ljava/lang/String;

    iget-object v6, p0, Lcom/android/phone/callsettings/KddiCBarring$1;->this$0:Lcom/android/phone/callsettings/KddiCBarring;

    # invokes: Lcom/android/phone/callsettings/KddiCBarring;->hideProgressDialog()V
    invoke-static {v6}, Lcom/android/phone/callsettings/KddiCBarring;->access$100(Lcom/android/phone/callsettings/KddiCBarring;)V

    # getter for: Lcom/android/phone/callsettings/KddiCBarring;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/phone/callsettings/KddiCBarring;->access$200()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "responseCBHandler() ar :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v10}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    # getter for: Lcom/android/phone/callsettings/KddiCBarring;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/phone/callsettings/KddiCBarring;->access$200()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "responseCBHandler() "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", msg.what:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p1, Landroid/os/Message;->what:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v10}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    iget-object v6, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    instance-of v6, v6, Ljava/lang/String;

    if-eqz v6, :cond_0

    # getter for: Lcom/android/phone/callsettings/KddiCBarring;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/phone/callsettings/KddiCBarring;->access$200()Ljava/lang/String;

    move-result-object v7

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "responseCBHandler() ar :"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v6, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6, v10}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    :goto_0
    iget-object v6, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    instance-of v6, v6, Ljava/lang/String;

    if-eqz v6, :cond_1

    # getter for: Lcom/android/phone/callsettings/KddiCBarring;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/phone/callsettings/KddiCBarring;->access$200()Ljava/lang/String;

    move-result-object v7

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "responseCBHandler() ar :"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v6, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6, v10}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    :goto_1
    # getter for: Lcom/android/phone/callsettings/KddiCBarring;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/phone/callsettings/KddiCBarring;->access$200()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "responseCBHandler() Fragment finished. Ignore handler message :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", msg.what:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p1, Landroid/os/Message;->what:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v10}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    iget v6, p1, Landroid/os/Message;->what:I

    packed-switch v6, :pswitch_data_0

    :goto_2
    :pswitch_0
    iget-object v6, p0, Lcom/android/phone/callsettings/KddiCBarring$1;->this$0:Lcom/android/phone/callsettings/KddiCBarring;

    # invokes: Lcom/android/phone/callsettings/KddiCBarring;->hideProgressDialog()V
    invoke-static {v6}, Lcom/android/phone/callsettings/KddiCBarring;->access$100(Lcom/android/phone/callsettings/KddiCBarring;)V

    iget-object v6, p0, Lcom/android/phone/callsettings/KddiCBarring$1;->this$0:Lcom/android/phone/callsettings/KddiCBarring;

    # getter for: Lcom/android/phone/callsettings/KddiCBarring;->mListenerList:Ljava/util/List;
    invoke-static {v6}, Lcom/android/phone/callsettings/KddiCBarring;->access$700(Lcom/android/phone/callsettings/KddiCBarring;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/phone/callsettings/CBarringMessageListener;

    iget v6, p1, Landroid/os/Message;->what:I

    iget-object v7, p0, Lcom/android/phone/callsettings/KddiCBarring$1;->this$0:Lcom/android/phone/callsettings/KddiCBarring;

    # getter for: Lcom/android/phone/callsettings/KddiCBarring;->mData:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/phone/callsettings/KddiCBarring;->access$000(Lcom/android/phone/callsettings/KddiCBarring;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v6, v7}, Lcom/android/phone/callsettings/CBarringMessageListener;->onReceive(ILjava/lang/String;)V

    goto :goto_3

    :cond_0
    # getter for: Lcom/android/phone/callsettings/KddiCBarring;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/phone/callsettings/KddiCBarring;->access$200()Ljava/lang/String;

    move-result-object v6

    const-string v7, "userObj is not String"

    invoke-static {v6, v7}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    # getter for: Lcom/android/phone/callsettings/KddiCBarring;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/phone/callsettings/KddiCBarring;->access$200()Ljava/lang/String;

    move-result-object v6

    const-string v7, "result is not String"

    invoke-static {v6, v7}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :pswitch_1
    iget-object v6, p0, Lcom/android/phone/callsettings/KddiCBarring$1;->this$0:Lcom/android/phone/callsettings/KddiCBarring;

    iget v7, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/android/phone/callsettings/KddiCBarring;->handleSetCBMessage(Landroid/os/AsyncResult;I)I
    invoke-static {v6, v0, v7}, Lcom/android/phone/callsettings/KddiCBarring;->access$300(Lcom/android/phone/callsettings/KddiCBarring;Landroid/os/AsyncResult;I)I

    move-result v5

    # getter for: Lcom/android/phone/callsettings/KddiCBarring;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/phone/callsettings/KddiCBarring;->access$200()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " EVENT_SET_COMPLETE status :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v5, v9, :cond_2

    iget-object v6, p0, Lcom/android/phone/callsettings/KddiCBarring$1;->this$0:Lcom/android/phone/callsettings/KddiCBarring;

    sget-object v7, Lcom/android/phone/callsettings/KddiCBarring$AppState;->INPUT_READY:Lcom/android/phone/callsettings/KddiCBarring$AppState;

    # invokes: Lcom/android/phone/callsettings/KddiCBarring;->setAppState(Lcom/android/phone/callsettings/KddiCBarring$AppState;)V
    invoke-static {v6, v7}, Lcom/android/phone/callsettings/KddiCBarring;->access$400(Lcom/android/phone/callsettings/KddiCBarring;Lcom/android/phone/callsettings/KddiCBarring$AppState;)V

    goto :goto_2

    :cond_2
    :try_start_0
    iget-object v6, p0, Lcom/android/phone/callsettings/KddiCBarring$1;->this$0:Lcom/android/phone/callsettings/KddiCBarring;

    sget-object v7, Lcom/android/phone/callsettings/KddiCBarring$AppState;->NETWORK_ERROR:Lcom/android/phone/callsettings/KddiCBarring$AppState;

    # invokes: Lcom/android/phone/callsettings/KddiCBarring;->setAppState(Lcom/android/phone/callsettings/KddiCBarring$AppState;I)V
    invoke-static {v6, v7, v5}, Lcom/android/phone/callsettings/KddiCBarring;->access$500(Lcom/android/phone/callsettings/KddiCBarring;Lcom/android/phone/callsettings/KddiCBarring$AppState;I)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    iget-object v6, p0, Lcom/android/phone/callsettings/KddiCBarring$1;->this$0:Lcom/android/phone/callsettings/KddiCBarring;

    # invokes: Lcom/android/phone/callsettings/KddiCBarring;->hideProgressDialog()V
    invoke-static {v6}, Lcom/android/phone/callsettings/KddiCBarring;->access$100(Lcom/android/phone/callsettings/KddiCBarring;)V

    # getter for: Lcom/android/phone/callsettings/KddiCBarring;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/phone/callsettings/KddiCBarring;->access$200()Ljava/lang/String;

    move-result-object v6

    const-string v7, "illegal transition from NETWORK_ERROR"

    invoke-static {v6, v7, v1}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :pswitch_2
    iget-object v6, p0, Lcom/android/phone/callsettings/KddiCBarring$1;->this$0:Lcom/android/phone/callsettings/KddiCBarring;

    # invokes: Lcom/android/phone/callsettings/KddiCBarring;->handleQueryCBMessage(Landroid/os/AsyncResult;)I
    invoke-static {v6, v0}, Lcom/android/phone/callsettings/KddiCBarring;->access$600(Lcom/android/phone/callsettings/KddiCBarring;Landroid/os/AsyncResult;)I

    move-result v5

    # getter for: Lcom/android/phone/callsettings/KddiCBarring;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/phone/callsettings/KddiCBarring;->access$200()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " EVENT_QUERY_COMPLETE status :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eq v5, v9, :cond_3

    :try_start_1
    iget-object v6, p0, Lcom/android/phone/callsettings/KddiCBarring$1;->this$0:Lcom/android/phone/callsettings/KddiCBarring;

    sget-object v7, Lcom/android/phone/callsettings/KddiCBarring$AppState;->NETWORK_ERROR:Lcom/android/phone/callsettings/KddiCBarring$AppState;

    # invokes: Lcom/android/phone/callsettings/KddiCBarring;->setAppState(Lcom/android/phone/callsettings/KddiCBarring$AppState;I)V
    invoke-static {v6, v7, v5}, Lcom/android/phone/callsettings/KddiCBarring;->access$500(Lcom/android/phone/callsettings/KddiCBarring;Lcom/android/phone/callsettings/KddiCBarring$AppState;I)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_2

    :catch_1
    move-exception v1

    iget-object v6, p0, Lcom/android/phone/callsettings/KddiCBarring$1;->this$0:Lcom/android/phone/callsettings/KddiCBarring;

    # invokes: Lcom/android/phone/callsettings/KddiCBarring;->hideProgressDialog()V
    invoke-static {v6}, Lcom/android/phone/callsettings/KddiCBarring;->access$100(Lcom/android/phone/callsettings/KddiCBarring;)V

    # getter for: Lcom/android/phone/callsettings/KddiCBarring;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/phone/callsettings/KddiCBarring;->access$200()Ljava/lang/String;

    move-result-object v6

    const-string v7, "illegal transition from NETWORK_ERROR"

    invoke-static {v6, v7, v1}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2

    :cond_3
    iget-object v6, p0, Lcom/android/phone/callsettings/KddiCBarring$1;->this$0:Lcom/android/phone/callsettings/KddiCBarring;

    sget-object v7, Lcom/android/phone/callsettings/KddiCBarring$AppState;->INPUT_READY:Lcom/android/phone/callsettings/KddiCBarring$AppState;

    # invokes: Lcom/android/phone/callsettings/KddiCBarring;->setAppState(Lcom/android/phone/callsettings/KddiCBarring$AppState;)V
    invoke-static {v6, v7}, Lcom/android/phone/callsettings/KddiCBarring;->access$400(Lcom/android/phone/callsettings/KddiCBarring;Lcom/android/phone/callsettings/KddiCBarring$AppState;)V

    goto/16 :goto_2

    :pswitch_3
    iget-object v6, p0, Lcom/android/phone/callsettings/KddiCBarring$1;->this$0:Lcom/android/phone/callsettings/KddiCBarring;

    iget v7, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/android/phone/callsettings/KddiCBarring;->handleSetCBMessage(Landroid/os/AsyncResult;I)I
    invoke-static {v6, v0, v7}, Lcom/android/phone/callsettings/KddiCBarring;->access$300(Lcom/android/phone/callsettings/KddiCBarring;Landroid/os/AsyncResult;I)I

    move-result v5

    if-ne v5, v9, :cond_4

    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v6, :cond_4

    iget-object v6, p0, Lcom/android/phone/callsettings/KddiCBarring$1;->this$0:Lcom/android/phone/callsettings/KddiCBarring;

    iget v7, p1, Landroid/os/Message;->arg1:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    # setter for: Lcom/android/phone/callsettings/KddiCBarring;->mData:Ljava/lang/String;
    invoke-static {v6, v7}, Lcom/android/phone/callsettings/KddiCBarring;->access$002(Lcom/android/phone/callsettings/KddiCBarring;Ljava/lang/String;)Ljava/lang/String;

    :cond_4
    # getter for: Lcom/android/phone/callsettings/KddiCBarring;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/phone/callsettings/KddiCBarring;->access$200()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " EVENT_SET_ACBARRING_COMPLETE status :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " mData :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/phone/callsettings/KddiCBarring$1;->this$0:Lcom/android/phone/callsettings/KddiCBarring;

    # getter for: Lcom/android/phone/callsettings/KddiCBarring;->mData:Ljava/lang/String;
    invoke-static {v8}, Lcom/android/phone/callsettings/KddiCBarring;->access$000(Lcom/android/phone/callsettings/KddiCBarring;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eq v5, v9, :cond_5

    :try_start_2
    iget-object v6, p0, Lcom/android/phone/callsettings/KddiCBarring$1;->this$0:Lcom/android/phone/callsettings/KddiCBarring;

    sget-object v7, Lcom/android/phone/callsettings/KddiCBarring$AppState;->NETWORK_ERROR:Lcom/android/phone/callsettings/KddiCBarring$AppState;

    # invokes: Lcom/android/phone/callsettings/KddiCBarring;->setAppState(Lcom/android/phone/callsettings/KddiCBarring$AppState;I)V
    invoke-static {v6, v7, v5}, Lcom/android/phone/callsettings/KddiCBarring;->access$500(Lcom/android/phone/callsettings/KddiCBarring;Lcom/android/phone/callsettings/KddiCBarring$AppState;I)V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_2

    :catch_2
    move-exception v1

    iget-object v6, p0, Lcom/android/phone/callsettings/KddiCBarring$1;->this$0:Lcom/android/phone/callsettings/KddiCBarring;

    # invokes: Lcom/android/phone/callsettings/KddiCBarring;->hideProgressDialog()V
    invoke-static {v6}, Lcom/android/phone/callsettings/KddiCBarring;->access$100(Lcom/android/phone/callsettings/KddiCBarring;)V

    # getter for: Lcom/android/phone/callsettings/KddiCBarring;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/phone/callsettings/KddiCBarring;->access$200()Ljava/lang/String;

    move-result-object v6

    const-string v7, "illegal transition from NETWORK_ERROR"

    invoke-static {v6, v7, v1}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2

    :cond_5
    iget-object v6, p0, Lcom/android/phone/callsettings/KddiCBarring$1;->this$0:Lcom/android/phone/callsettings/KddiCBarring;

    sget-object v7, Lcom/android/phone/callsettings/KddiCBarring$AppState;->INPUT_READY:Lcom/android/phone/callsettings/KddiCBarring$AppState;

    # invokes: Lcom/android/phone/callsettings/KddiCBarring;->setAppState(Lcom/android/phone/callsettings/KddiCBarring$AppState;)V
    invoke-static {v6, v7}, Lcom/android/phone/callsettings/KddiCBarring;->access$400(Lcom/android/phone/callsettings/KddiCBarring;Lcom/android/phone/callsettings/KddiCBarring$AppState;)V

    goto/16 :goto_2

    :pswitch_4
    iget-object v6, p0, Lcom/android/phone/callsettings/KddiCBarring$1;->this$0:Lcom/android/phone/callsettings/KddiCBarring;

    # invokes: Lcom/android/phone/callsettings/KddiCBarring;->handleQueryCBMessage(Landroid/os/AsyncResult;)I
    invoke-static {v6, v0}, Lcom/android/phone/callsettings/KddiCBarring;->access$600(Lcom/android/phone/callsettings/KddiCBarring;Landroid/os/AsyncResult;)I

    move-result v5

    if-ne v5, v9, :cond_6

    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v6, :cond_6

    iget-object v6, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v6, [I

    move-object v3, v6

    check-cast v3, [I

    iget-object v6, p0, Lcom/android/phone/callsettings/KddiCBarring$1;->this$0:Lcom/android/phone/callsettings/KddiCBarring;

    const/4 v7, 0x0

    aget v7, v3, v7

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    # setter for: Lcom/android/phone/callsettings/KddiCBarring;->mData:Ljava/lang/String;
    invoke-static {v6, v7}, Lcom/android/phone/callsettings/KddiCBarring;->access$002(Lcom/android/phone/callsettings/KddiCBarring;Ljava/lang/String;)Ljava/lang/String;

    :cond_6
    # getter for: Lcom/android/phone/callsettings/KddiCBarring;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/phone/callsettings/KddiCBarring;->access$200()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " EVENT_GET_ACBARRING_COMPLETE status :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " mData :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/phone/callsettings/KddiCBarring$1;->this$0:Lcom/android/phone/callsettings/KddiCBarring;

    # getter for: Lcom/android/phone/callsettings/KddiCBarring;->mData:Ljava/lang/String;
    invoke-static {v8}, Lcom/android/phone/callsettings/KddiCBarring;->access$000(Lcom/android/phone/callsettings/KddiCBarring;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eq v5, v9, :cond_7

    :try_start_3
    iget-object v6, p0, Lcom/android/phone/callsettings/KddiCBarring$1;->this$0:Lcom/android/phone/callsettings/KddiCBarring;

    sget-object v7, Lcom/android/phone/callsettings/KddiCBarring$AppState;->NETWORK_ERROR:Lcom/android/phone/callsettings/KddiCBarring$AppState;

    # invokes: Lcom/android/phone/callsettings/KddiCBarring;->setAppState(Lcom/android/phone/callsettings/KddiCBarring$AppState;I)V
    invoke-static {v6, v7, v5}, Lcom/android/phone/callsettings/KddiCBarring;->access$500(Lcom/android/phone/callsettings/KddiCBarring;Lcom/android/phone/callsettings/KddiCBarring$AppState;I)V
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_2

    :catch_3
    move-exception v1

    iget-object v6, p0, Lcom/android/phone/callsettings/KddiCBarring$1;->this$0:Lcom/android/phone/callsettings/KddiCBarring;

    # invokes: Lcom/android/phone/callsettings/KddiCBarring;->hideProgressDialog()V
    invoke-static {v6}, Lcom/android/phone/callsettings/KddiCBarring;->access$100(Lcom/android/phone/callsettings/KddiCBarring;)V

    # getter for: Lcom/android/phone/callsettings/KddiCBarring;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/phone/callsettings/KddiCBarring;->access$200()Ljava/lang/String;

    move-result-object v6

    const-string v7, "illegal transition from NETWORK_ERROR"

    invoke-static {v6, v7, v1}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2

    :cond_7
    iget-object v6, p0, Lcom/android/phone/callsettings/KddiCBarring$1;->this$0:Lcom/android/phone/callsettings/KddiCBarring;

    sget-object v7, Lcom/android/phone/callsettings/KddiCBarring$AppState;->INPUT_READY:Lcom/android/phone/callsettings/KddiCBarring$AppState;

    # invokes: Lcom/android/phone/callsettings/KddiCBarring;->setAppState(Lcom/android/phone/callsettings/KddiCBarring$AppState;)V
    invoke-static {v6, v7}, Lcom/android/phone/callsettings/KddiCBarring;->access$400(Lcom/android/phone/callsettings/KddiCBarring;Lcom/android/phone/callsettings/KddiCBarring$AppState;)V

    goto/16 :goto_2

    :pswitch_5
    iget-object v6, p0, Lcom/android/phone/callsettings/KddiCBarring$1;->this$0:Lcom/android/phone/callsettings/KddiCBarring;

    iget v7, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/android/phone/callsettings/KddiCBarring;->handleSetCBMessage(Landroid/os/AsyncResult;I)I
    invoke-static {v6, v0, v7}, Lcom/android/phone/callsettings/KddiCBarring;->access$300(Lcom/android/phone/callsettings/KddiCBarring;Landroid/os/AsyncResult;I)I

    move-result v5

    if-ne v5, v9, :cond_8

    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v6, :cond_8

    iget-object v7, p0, Lcom/android/phone/callsettings/KddiCBarring$1;->this$0:Lcom/android/phone/callsettings/KddiCBarring;

    iget-object v6, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    # setter for: Lcom/android/phone/callsettings/KddiCBarring;->mData:Ljava/lang/String;
    invoke-static {v7, v6}, Lcom/android/phone/callsettings/KddiCBarring;->access$002(Lcom/android/phone/callsettings/KddiCBarring;Ljava/lang/String;)Ljava/lang/String;

    iget-object v6, p0, Lcom/android/phone/callsettings/KddiCBarring$1;->this$0:Lcom/android/phone/callsettings/KddiCBarring;

    # getter for: Lcom/android/phone/callsettings/KddiCBarring;->mData:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/phone/callsettings/KddiCBarring;->access$000(Lcom/android/phone/callsettings/KddiCBarring;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_8

    iget-object v6, p0, Lcom/android/phone/callsettings/KddiCBarring$1;->this$0:Lcom/android/phone/callsettings/KddiCBarring;

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    # setter for: Lcom/android/phone/callsettings/KddiCBarring;->mData:Ljava/lang/String;
    invoke-static {v6, v7}, Lcom/android/phone/callsettings/KddiCBarring;->access$002(Lcom/android/phone/callsettings/KddiCBarring;Ljava/lang/String;)Ljava/lang/String;

    :cond_8
    # getter for: Lcom/android/phone/callsettings/KddiCBarring;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/phone/callsettings/KddiCBarring;->access$200()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " EVENT_GET_ICBARRING_COMPLETE status :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " mData :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/phone/callsettings/KddiCBarring$1;->this$0:Lcom/android/phone/callsettings/KddiCBarring;

    # getter for: Lcom/android/phone/callsettings/KddiCBarring;->mData:Ljava/lang/String;
    invoke-static {v8}, Lcom/android/phone/callsettings/KddiCBarring;->access$000(Lcom/android/phone/callsettings/KddiCBarring;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eq v5, v9, :cond_9

    :try_start_4
    iget-object v6, p0, Lcom/android/phone/callsettings/KddiCBarring$1;->this$0:Lcom/android/phone/callsettings/KddiCBarring;

    sget-object v7, Lcom/android/phone/callsettings/KddiCBarring$AppState;->NETWORK_ERROR:Lcom/android/phone/callsettings/KddiCBarring$AppState;

    # invokes: Lcom/android/phone/callsettings/KddiCBarring;->setAppState(Lcom/android/phone/callsettings/KddiCBarring$AppState;I)V
    invoke-static {v6, v7, v5}, Lcom/android/phone/callsettings/KddiCBarring;->access$500(Lcom/android/phone/callsettings/KddiCBarring;Lcom/android/phone/callsettings/KddiCBarring$AppState;I)V
    :try_end_4
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_4

    goto/16 :goto_2

    :catch_4
    move-exception v1

    iget-object v6, p0, Lcom/android/phone/callsettings/KddiCBarring$1;->this$0:Lcom/android/phone/callsettings/KddiCBarring;

    # invokes: Lcom/android/phone/callsettings/KddiCBarring;->hideProgressDialog()V
    invoke-static {v6}, Lcom/android/phone/callsettings/KddiCBarring;->access$100(Lcom/android/phone/callsettings/KddiCBarring;)V

    # getter for: Lcom/android/phone/callsettings/KddiCBarring;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/phone/callsettings/KddiCBarring;->access$200()Ljava/lang/String;

    move-result-object v6

    const-string v7, "illegal transition from NETWORK_ERROR"

    invoke-static {v6, v7, v1}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2

    :cond_9
    iget-object v6, p0, Lcom/android/phone/callsettings/KddiCBarring$1;->this$0:Lcom/android/phone/callsettings/KddiCBarring;

    sget-object v7, Lcom/android/phone/callsettings/KddiCBarring$AppState;->INPUT_READY:Lcom/android/phone/callsettings/KddiCBarring$AppState;

    # invokes: Lcom/android/phone/callsettings/KddiCBarring;->setAppState(Lcom/android/phone/callsettings/KddiCBarring$AppState;)V
    invoke-static {v6, v7}, Lcom/android/phone/callsettings/KddiCBarring;->access$400(Lcom/android/phone/callsettings/KddiCBarring;Lcom/android/phone/callsettings/KddiCBarring$AppState;)V

    goto/16 :goto_2

    :pswitch_6
    iget-object v6, p0, Lcom/android/phone/callsettings/KddiCBarring$1;->this$0:Lcom/android/phone/callsettings/KddiCBarring;

    # invokes: Lcom/android/phone/callsettings/KddiCBarring;->handleQueryCBMessage(Landroid/os/AsyncResult;)I
    invoke-static {v6, v0}, Lcom/android/phone/callsettings/KddiCBarring;->access$600(Lcom/android/phone/callsettings/KddiCBarring;Landroid/os/AsyncResult;)I

    move-result v5

    if-ne v5, v9, :cond_a

    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v6, :cond_a

    iget-object v6, p0, Lcom/android/phone/callsettings/KddiCBarring$1;->this$0:Lcom/android/phone/callsettings/KddiCBarring;

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    # setter for: Lcom/android/phone/callsettings/KddiCBarring;->mData:Ljava/lang/String;
    invoke-static {v6, v7}, Lcom/android/phone/callsettings/KddiCBarring;->access$002(Lcom/android/phone/callsettings/KddiCBarring;Ljava/lang/String;)Ljava/lang/String;

    :cond_a
    # getter for: Lcom/android/phone/callsettings/KddiCBarring;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/phone/callsettings/KddiCBarring;->access$200()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " EVENT_SET_ICBARRING_COMPLETE status :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " mData :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/phone/callsettings/KddiCBarring$1;->this$0:Lcom/android/phone/callsettings/KddiCBarring;

    # getter for: Lcom/android/phone/callsettings/KddiCBarring;->mData:Ljava/lang/String;
    invoke-static {v8}, Lcom/android/phone/callsettings/KddiCBarring;->access$000(Lcom/android/phone/callsettings/KddiCBarring;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eq v5, v9, :cond_b

    :try_start_5
    iget-object v6, p0, Lcom/android/phone/callsettings/KddiCBarring$1;->this$0:Lcom/android/phone/callsettings/KddiCBarring;

    sget-object v7, Lcom/android/phone/callsettings/KddiCBarring$AppState;->NETWORK_ERROR:Lcom/android/phone/callsettings/KddiCBarring$AppState;

    # invokes: Lcom/android/phone/callsettings/KddiCBarring;->setAppState(Lcom/android/phone/callsettings/KddiCBarring$AppState;I)V
    invoke-static {v6, v7, v5}, Lcom/android/phone/callsettings/KddiCBarring;->access$500(Lcom/android/phone/callsettings/KddiCBarring;Lcom/android/phone/callsettings/KddiCBarring$AppState;I)V
    :try_end_5
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_5

    goto/16 :goto_2

    :catch_5
    move-exception v1

    iget-object v6, p0, Lcom/android/phone/callsettings/KddiCBarring$1;->this$0:Lcom/android/phone/callsettings/KddiCBarring;

    # invokes: Lcom/android/phone/callsettings/KddiCBarring;->hideProgressDialog()V
    invoke-static {v6}, Lcom/android/phone/callsettings/KddiCBarring;->access$100(Lcom/android/phone/callsettings/KddiCBarring;)V

    # getter for: Lcom/android/phone/callsettings/KddiCBarring;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/phone/callsettings/KddiCBarring;->access$200()Ljava/lang/String;

    move-result-object v6

    const-string v7, "illegal transition from NETWORK_ERROR"

    invoke-static {v6, v7, v1}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2

    :cond_b
    iget-object v6, p0, Lcom/android/phone/callsettings/KddiCBarring$1;->this$0:Lcom/android/phone/callsettings/KddiCBarring;

    sget-object v7, Lcom/android/phone/callsettings/KddiCBarring$AppState;->INPUT_READY:Lcom/android/phone/callsettings/KddiCBarring$AppState;

    # invokes: Lcom/android/phone/callsettings/KddiCBarring;->setAppState(Lcom/android/phone/callsettings/KddiCBarring$AppState;)V
    invoke-static {v6, v7}, Lcom/android/phone/callsettings/KddiCBarring;->access$400(Lcom/android/phone/callsettings/KddiCBarring;Lcom/android/phone/callsettings/KddiCBarring$AppState;)V

    goto/16 :goto_2

    :cond_c
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
