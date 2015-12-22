.class Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr$2;
.super Ljava/lang/Object;
.source "EcholocateServiceMgr.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;->sendDetailedCallState(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;

.field final synthetic val$_CallCode:Ljava/lang/String;

.field final synthetic val$_number:Ljava/lang/String;

.field final synthetic val$_state:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr$2;->this$0:Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;

    iput-object p2, p0, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr$2;->val$_number:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr$2;->val$_state:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr$2;->val$_CallCode:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr$2;->this$0:Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;

    iget-object v1, p0, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr$2;->val$_number:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;->makeCallID(Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr$2;->this$0:Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;

    # getter for: Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;->mIntentDetailedCallStateParam:Landroid/os/Bundle;
    invoke-static {v0}, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;->access$300(Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "CallNumber"

    iget-object v2, p0, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr$2;->val$_number:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr$2;->this$0:Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;

    # getter for: Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;->mIntentDetailedCallStateParam:Landroid/os/Bundle;
    invoke-static {v0}, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;->access$300(Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "CallState"

    iget-object v2, p0, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr$2;->val$_state:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr$2;->this$0:Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;

    # getter for: Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;->mIntentDetailedCallStateParam:Landroid/os/Bundle;
    invoke-static {v0}, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;->access$300(Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "CallCode"

    iget-object v2, p0, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr$2;->val$_CallCode:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr$2;->this$0:Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;

    # getter for: Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;->mIntentDetailedCallStateParam:Landroid/os/Bundle;
    invoke-static {v0}, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;->access$300(Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "VoiceAccessNetworkStateType"

    iget-object v2, p0, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr$2;->this$0:Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;

    # getter for: Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;->stateType:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;->access$400(Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr$2;->this$0:Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;

    # getter for: Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;->mIntentDetailedCallStateParam:Landroid/os/Bundle;
    invoke-static {v0}, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;->access$300(Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "VoiceAccessNetworkStateSignal"

    iget-object v2, p0, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr$2;->this$0:Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;

    # invokes: Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;->getNWStateSignal()Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;->access$500(Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr$2;->this$0:Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;

    # getter for: Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;->mIntentDetailedCallStateParam:Landroid/os/Bundle;
    invoke-static {v0}, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;->access$300(Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "VoiceAccessNetworkStateBand"

    iget-object v2, p0, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr$2;->this$0:Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;

    # invokes: Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;->getLTEBand()Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;->access$600(Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr$2;->this$0:Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;

    # getter for: Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;->mIntentDetailedCallStateParam:Landroid/os/Bundle;
    invoke-static {v0}, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;->access$300(Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "CallID"

    iget-object v2, p0, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr$2;->this$0:Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;

    iget-object v3, p0, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr$2;->val$_number:Ljava/lang/String;

    # invokes: Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;->getCallID(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;->access$700(Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr$2;->this$0:Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;

    # getter for: Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;->mIntentDetailedCallStateParam:Landroid/os/Bundle;
    invoke-static {v0}, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;->access$300(Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "Timestamp"

    iget-object v2, p0, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr$2;->this$0:Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;

    # invokes: Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;->getTimeStamp()Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;->access$800(Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr$2;->this$0:Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;

    const-string v1, "diagandroid.phone.detailedCallState"

    iget-object v2, p0, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr$2;->this$0:Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;

    # getter for: Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;->mIntentDetailedCallStateParam:Landroid/os/Bundle;
    invoke-static {v2}, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;->access$300(Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;)Landroid/os/Bundle;

    move-result-object v2

    # invokes: Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;->sendBroadcastIntent(Ljava/lang/String;Landroid/os/Bundle;)V
    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;->access$200(Lcom/android/server/telecom/operator/usa/EcholocateServiceMgr;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method
