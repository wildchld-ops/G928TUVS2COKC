.class Lcom/android/phone/ATCommandReceiver$MyHandler;
.super Landroid/os/Handler;
.source "ATCommandReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/ATCommandReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyHandler"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/ATCommandReceiver$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/ATCommandReceiver$MyHandler;-><init>()V

    return-void
.end method

.method private handleGetCFResponse(Landroid/os/Message;)V
    .locals 9

    const/16 v8, 0x22

    const-string v6, "handleGetCFResponse: done"

    # invokes: Lcom/android/phone/ATCommandReceiver;->log(Ljava/lang/String;)V
    invoke-static {v6}, Lcom/android/phone/ATCommandReceiver;->access$100(Ljava/lang/String;)V

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    const/4 v1, 0x0

    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v6, :cond_0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleGetCFResponse: ar.exception="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    # invokes: Lcom/android/phone/ATCommandReceiver;->log(Ljava/lang/String;)V
    invoke-static {v6}, Lcom/android/phone/ATCommandReceiver;->access$100(Ljava/lang/String;)V

    const-string v6, "CCFC"

    const-string v7, "ERROR"

    # invokes: Lcom/android/phone/ATCommandReceiver;->sendResponse(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v6, v7}, Lcom/android/phone/ATCommandReceiver;->access$200(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v6, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    instance-of v6, v6, Ljava/lang/Throwable;

    if-eqz v6, :cond_1

    const-string v6, "userObj is Throwable instance !!"

    # invokes: Lcom/android/phone/ATCommandReceiver;->log(Ljava/lang/String;)V
    invoke-static {v6}, Lcom/android/phone/ATCommandReceiver;->access$100(Ljava/lang/String;)V

    const-string v6, "CCFC"

    const-string v7, "ERROR"

    # invokes: Lcom/android/phone/ATCommandReceiver;->sendResponse(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v6, v7}, Lcom/android/phone/ATCommandReceiver;->access$200(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v6, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v6, [Lcom/android/internal/telephony/CallForwardInfo;

    move-object v2, v6

    check-cast v2, [Lcom/android/internal/telephony/CallForwardInfo;

    array-length v6, v2

    if-nez v6, :cond_2

    const-string v6, "handleGetCFResponse: cfInfoArray.length==0"

    # invokes: Lcom/android/phone/ATCommandReceiver;->log(Ljava/lang/String;)V
    invoke-static {v6}, Lcom/android/phone/ATCommandReceiver;->access$100(Ljava/lang/String;)V

    const-string v6, "CCFC"

    const-string v7, "ERROR"

    # invokes: Lcom/android/phone/ATCommandReceiver;->sendResponse(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v6, v7}, Lcom/android/phone/ATCommandReceiver;->access$200(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v3, 0x0

    array-length v4, v2

    :goto_1
    if-ge v3, v4, :cond_4

    const-string v6, "handleGetCFResponse, cfInfoArray["

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "]="

    invoke-virtual {v6, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aget-object v7, v2, v3

    invoke-virtual {v7}, Lcom/android/internal/telephony/CallForwardInfo;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    # invokes: Lcom/android/phone/ATCommandReceiver;->log(Ljava/lang/String;)V
    invoke-static {v6}, Lcom/android/phone/ATCommandReceiver;->access$100(Ljava/lang/String;)V

    if-lez v3, :cond_3

    const-string v6, "\r\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_3
    const-string v6, "+CCFC:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    aget-object v6, v2, v3

    iget v6, v6, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    aget-object v6, v2, v3

    iget v6, v6, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    aget-object v6, v2, v3

    iget-object v6, v6, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    const-string v6, "CCFC"

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    # invokes: Lcom/android/phone/ATCommandReceiver;->sendResponse(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v6, v7}, Lcom/android/phone/ATCommandReceiver;->access$200(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleGetCFResponse: intent"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    # invokes: Lcom/android/phone/ATCommandReceiver;->log(Ljava/lang/String;)V
    invoke-static {v6}, Lcom/android/phone/ATCommandReceiver;->access$100(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private handleGetCallWaitingResponse(Landroid/os/Message;)V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    const-string v4, "handleGetCallWaitingResponse: done"

    # invokes: Lcom/android/phone/ATCommandReceiver;->log(Ljava/lang/String;)V
    invoke-static {v4}, Lcom/android/phone/ATCommandReceiver;->access$100(Ljava/lang/String;)V

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleGetCallWaitingResponse: ar.exception="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/android/phone/ATCommandReceiver;->log(Ljava/lang/String;)V
    invoke-static {v4}, Lcom/android/phone/ATCommandReceiver;->access$100(Ljava/lang/String;)V

    const-string v4, "CCWA"

    const-string v5, "ERROR"

    # invokes: Lcom/android/phone/ATCommandReceiver;->sendResponse(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/phone/ATCommandReceiver;->access$200(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v4, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    instance-of v4, v4, Ljava/lang/Throwable;

    if-eqz v4, :cond_1

    const-string v4, "CCWA"

    const-string v5, "ERROR"

    # invokes: Lcom/android/phone/ATCommandReceiver;->sendResponse(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/phone/ATCommandReceiver;->access$200(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v4, "handleGetCallWaitingResponse: CW state successfully queried."

    # invokes: Lcom/android/phone/ATCommandReceiver;->log(Ljava/lang/String;)V
    invoke-static {v4}, Lcom/android/phone/ATCommandReceiver;->access$100(Ljava/lang/String;)V

    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [I

    move-object v1, v4

    check-cast v1, [I

    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_0
    aget v4, v1, v4

    if-ne v4, v5, :cond_2

    const/4 v4, 0x1

    aget v4, v1, v4
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit8 v4, v4, 0x1

    if-ne v4, v5, :cond_2

    move v3, v5

    :goto_1
    if-eqz v3, :cond_3

    const-string v4, "CCWA"

    const-string v5, "+CCWA:1"

    # invokes: Lcom/android/phone/ATCommandReceiver;->sendResponse(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/phone/ATCommandReceiver;->access$200(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move v3, v6

    goto :goto_1

    :catch_0
    move-exception v2

    const/4 v3, 0x0

    goto :goto_1

    :cond_3
    const-string v4, "CCWA"

    const-string v5, "+CCWA:0"

    # invokes: Lcom/android/phone/ATCommandReceiver;->sendResponse(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/phone/ATCommandReceiver;->access$200(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private handleSetCFResponse(Landroid/os/Message;)V
    .locals 3

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    const-string v1, "handleSetCFResponse: done"

    # invokes: Lcom/android/phone/ATCommandReceiver;->log(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/phone/ATCommandReceiver;->access$100(Ljava/lang/String;)V

    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleSetCFResponse: ar.exception="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/phone/ATCommandReceiver;->log(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/phone/ATCommandReceiver;->access$100(Ljava/lang/String;)V

    const-string v1, "CCFC"

    const-string v2, "ERROR"

    # invokes: Lcom/android/phone/ATCommandReceiver;->sendResponse(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/phone/ATCommandReceiver;->access$200(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v1, "CCFC"

    const-string v2, "OK"

    # invokes: Lcom/android/phone/ATCommandReceiver;->sendResponse(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/phone/ATCommandReceiver;->access$200(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private handleSetCallWaitingResponse(Landroid/os/Message;)V
    .locals 3

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    const-string v1, "handleSetCallWaitingResponse: done"

    # invokes: Lcom/android/phone/ATCommandReceiver;->log(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/phone/ATCommandReceiver;->access$100(Ljava/lang/String;)V

    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleSetCallWaitingResponse: ar.exception="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/phone/ATCommandReceiver;->log(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/phone/ATCommandReceiver;->access$100(Ljava/lang/String;)V

    const-string v1, "CCWA"

    const-string v2, "ERROR"

    # invokes: Lcom/android/phone/ATCommandReceiver;->sendResponse(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/phone/ATCommandReceiver;->access$200(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v1, "CCWA"

    const-string v2, "OK"

    # invokes: Lcom/android/phone/ATCommandReceiver;->sendResponse(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/phone/ATCommandReceiver;->access$200(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    invoke-direct {p0, p1}, Lcom/android/phone/ATCommandReceiver$MyHandler;->handleGetCFResponse(Landroid/os/Message;)V

    goto :goto_0

    :sswitch_1
    invoke-direct {p0, p1}, Lcom/android/phone/ATCommandReceiver$MyHandler;->handleSetCFResponse(Landroid/os/Message;)V

    goto :goto_0

    :sswitch_2
    invoke-direct {p0, p1}, Lcom/android/phone/ATCommandReceiver$MyHandler;->handleGetCallWaitingResponse(Landroid/os/Message;)V

    goto :goto_0

    :sswitch_3
    invoke-direct {p0, p1}, Lcom/android/phone/ATCommandReceiver$MyHandler;->handleSetCallWaitingResponse(Landroid/os/Message;)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0xb -> :sswitch_2
        0xc -> :sswitch_3
    .end sparse-switch
.end method
