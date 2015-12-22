.class Lcom/android/phone/operator/jpn/SyncCallServiceMgr$2$1;
.super Ljava/lang/Object;
.source "SyncCallServiceMgr.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/operator/jpn/SyncCallServiceMgr$2;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/phone/operator/jpn/SyncCallServiceMgr$2;


# direct methods
.method constructor <init>(Lcom/android/phone/operator/jpn/SyncCallServiceMgr$2;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$2$1;->this$1:Lcom/android/phone/operator/jpn/SyncCallServiceMgr$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v1, p0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$2$1;->this$1:Lcom/android/phone/operator/jpn/SyncCallServiceMgr$2;

    iget-object v1, v1, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$2;->this$0:Lcom/android/phone/operator/jpn/SyncCallServiceMgr;

    # getter for: Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v1}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->access$700(Lcom/android/phone/operator/jpn/SyncCallServiceMgr;)Lcom/android/internal/telephony/CallManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$2$1;->this$1:Lcom/android/phone/operator/jpn/SyncCallServiceMgr$2;

    iget-object v1, v1, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$2;->this$0:Lcom/android/phone/operator/jpn/SyncCallServiceMgr;

    # getter for: Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->mIntentParamFgCall:Landroid/os/Bundle;
    invoke-static {v1}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->access$800(Lcom/android/phone/operator/jpn/SyncCallServiceMgr;)Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$2$1;->this$1:Lcom/android/phone/operator/jpn/SyncCallServiceMgr$2;

    iget-object v1, v1, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$2;->this$0:Lcom/android/phone/operator/jpn/SyncCallServiceMgr;

    const-string v2, "send broadcast intent (AUTOREPLY -> ACTIVE)"

    const/4 v3, 0x1

    # invokes: Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->log(Ljava/lang/String;Z)V
    invoke-static {v1, v2, v3}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->access$400(Lcom/android/phone/operator/jpn/SyncCallServiceMgr;Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$2$1;->this$1:Lcom/android/phone/operator/jpn/SyncCallServiceMgr$2;

    iget-object v1, v1, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$2;->this$0:Lcom/android/phone/operator/jpn/SyncCallServiceMgr;

    # getter for: Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->mIntentParamFgCall:Landroid/os/Bundle;
    invoke-static {v1}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->access$800(Lcom/android/phone/operator/jpn/SyncCallServiceMgr;)Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "callState"

    sget-object v3, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallState;->ACTIVE:Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallState;

    invoke-virtual {v3}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallState;->ordinal()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$2$1;->this$1:Lcom/android/phone/operator/jpn/SyncCallServiceMgr$2;

    iget-object v1, v1, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$2;->this$0:Lcom/android/phone/operator/jpn/SyncCallServiceMgr;

    const-string v2, "com.kddi.agent.action.CHANGE_CALL_STATE"

    iget-object v3, p0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$2$1;->this$1:Lcom/android/phone/operator/jpn/SyncCallServiceMgr$2;

    iget-object v3, v3, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$2;->this$0:Lcom/android/phone/operator/jpn/SyncCallServiceMgr;

    # getter for: Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->mIntentParamFgCall:Landroid/os/Bundle;
    invoke-static {v3}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->access$800(Lcom/android/phone/operator/jpn/SyncCallServiceMgr;)Landroid/os/Bundle;

    move-result-object v3

    # invokes: Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->sendBroadcastIntent(Ljava/lang/String;Landroid/os/Bundle;)V
    invoke-static {v1, v2, v3}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->access$300(Lcom/android/phone/operator/jpn/SyncCallServiceMgr;Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method
