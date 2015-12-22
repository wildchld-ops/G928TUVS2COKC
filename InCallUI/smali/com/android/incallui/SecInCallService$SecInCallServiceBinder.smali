.class final Lcom/android/incallui/SecInCallService$SecInCallServiceBinder;
.super Lcom/android/services/telephony/common/ISecInCallService$Stub;
.source "SecInCallService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/SecInCallService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SecInCallServiceBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/SecInCallService;


# direct methods
.method private constructor <init>(Lcom/android/incallui/SecInCallService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/SecInCallService$SecInCallServiceBinder;->this$0:Lcom/android/incallui/SecInCallService;

    invoke-direct {p0}, Lcom/android/services/telephony/common/ISecInCallService$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/incallui/SecInCallService;Lcom/android/incallui/SecInCallService$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/incallui/SecInCallService$SecInCallServiceBinder;-><init>(Lcom/android/incallui/SecInCallService;)V

    return-void
.end method


# virtual methods
.method public answerRingingCallInUI()V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/SecInCallService$SecInCallServiceBinder;->this$0:Lcom/android/incallui/SecInCallService;

    # getter for: Lcom/android/incallui/SecInCallService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/incallui/SecInCallService;->access$000(Lcom/android/incallui/SecInCallService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onModifyCall(ZILjava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/android/incallui/SecInCallService$SecInCallServiceBinder;->this$0:Lcom/android/incallui/SecInCallService;

    # getter for: Lcom/android/incallui/SecInCallService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/incallui/SecInCallService;->access$000(Lcom/android/incallui/SecInCallService;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x2

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v2, p2, v0, p3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPostDialPause(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/incallui/SecInCallService$SecInCallServiceBinder;->this$0:Lcom/android/incallui/SecInCallService;

    # getter for: Lcom/android/incallui/SecInCallService;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/incallui/SecInCallService;->access$000(Lcom/android/incallui/SecInCallService;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onPostDialPauseComplete(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/incallui/SecInCallService$SecInCallServiceBinder;->this$0:Lcom/android/incallui/SecInCallService;

    # getter for: Lcom/android/incallui/SecInCallService;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/incallui/SecInCallService;->access$000(Lcom/android/incallui/SecInCallService;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public sendMessageToUI(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/incallui/SecInCallService$SecInCallServiceBinder;->this$0:Lcom/android/incallui/SecInCallService;

    # getter for: Lcom/android/incallui/SecInCallService;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/incallui/SecInCallService;->access$000(Lcom/android/incallui/SecInCallService;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x6

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public setSecInCallAdapter(Lcom/android/services/telephony/common/ISecInCallAdapter;)V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/SecInCallService$SecInCallServiceBinder;->this$0:Lcom/android/incallui/SecInCallService;

    # getter for: Lcom/android/incallui/SecInCallService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/incallui/SecInCallService;->access$000(Lcom/android/incallui/SecInCallService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
