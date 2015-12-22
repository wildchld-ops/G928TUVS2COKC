.class Lcom/android/incallui/Call$1;
.super Landroid/telecom/Call$Listener;
.source "Call.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/Call;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/Call;


# direct methods
.method constructor <init>(Lcom/android/incallui/Call;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/Call$1;->this$0:Lcom/android/incallui/Call;

    invoke-direct {p0}, Landroid/telecom/Call$Listener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallDestroyed(Landroid/telecom/Call;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCallDestroyed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/Call$1;->this$0:Lcom/android/incallui/Call;

    # getter for: Lcom/android/incallui/Call;->mTelecommCallListener:Landroid/telecom/Call$Listener;
    invoke-static {v0}, Lcom/android/incallui/Call;->access$200(Lcom/android/incallui/Call;)Landroid/telecom/Call$Listener;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/telecom/Call;->removeListener(Landroid/telecom/Call$Listener;)V

    iget-object v0, p0, Lcom/android/incallui/Call$1;->this$0:Lcom/android/incallui/Call;

    # invokes: Lcom/android/incallui/Call;->unregisterNsriSecureContentObserver()V
    invoke-static {v0}, Lcom/android/incallui/Call;->access$300(Lcom/android/incallui/Call;)V

    return-void
.end method

.method public onCannedTextResponsesLoaded(Landroid/telecom/Call;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/telecom/Call;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCannedTextResponsesLoaded: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " cannedTextResponses : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/Call$1;->this$0:Lcom/android/incallui/Call;

    # invokes: Lcom/android/incallui/Call;->update()V
    invoke-static {v0}, Lcom/android/incallui/Call;->access$000(Lcom/android/incallui/Call;)V

    return-void
.end method

.method public onChildrenChanged(Landroid/telecom/Call;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/telecom/Call;",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/Call;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onChildrenChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " children : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/Call$1;->this$0:Lcom/android/incallui/Call;

    # invokes: Lcom/android/incallui/Call;->update()V
    invoke-static {v0}, Lcom/android/incallui/Call;->access$000(Lcom/android/incallui/Call;)V

    return-void
.end method

.method public onConferenceableCallsChanged(Landroid/telecom/Call;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/telecom/Call;",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/Call;",
            ">;)V"
        }
    .end annotation

    const-string v0, "onConferenceableCallsChanged..."

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ims_voice_conference_cmcc_tbd"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/Call$1;->this$0:Lcom/android/incallui/Call;

    # invokes: Lcom/android/incallui/Call;->update()V
    invoke-static {v0}, Lcom/android/incallui/Call;->access$000(Lcom/android/incallui/Call;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/Call$1;->this$0:Lcom/android/incallui/Call;

    const/4 v1, 0x0

    # invokes: Lcom/android/incallui/Call;->update(Z)V
    invoke-static {v0, v1}, Lcom/android/incallui/Call;->access$100(Lcom/android/incallui/Call;Z)V

    goto :goto_0
.end method

.method public onDetailsChanged(Landroid/telecom/Call;Landroid/telecom/Call$Details;)V
    .locals 3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDetailsChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " details : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/incallui/CallList;->getCallByTelecommCall(Landroid/telecom/Call;)Lcom/android/incallui/Call;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/android/incallui/InCallUtils;->needToNotifyDetailsChanged(Lcom/android/incallui/Call;Landroid/telecom/Call;)Z

    move-result v0

    const-string v1, "feature_cdma_us"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "feature_ctc"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "chn_cdma_network_on_all_rat"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-static {p1, p2, v0}, Lcom/android/incallui/operator/usa/InCallUIExtension;->needToNotifyDetailsChanged(Landroid/telecom/Call;Landroid/telecom/Call$Details;Z)Z

    move-result v0

    :cond_1
    iget-object v1, p0, Lcom/android/incallui/Call$1;->this$0:Lcom/android/incallui/Call;

    # invokes: Lcom/android/incallui/Call;->update(Z)V
    invoke-static {v1, v0}, Lcom/android/incallui/Call;->access$100(Lcom/android/incallui/Call;Z)V

    return-void
.end method

.method public onParentChanged(Landroid/telecom/Call;Landroid/telecom/Call;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onParentChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " newParent : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/Call$1;->this$0:Lcom/android/incallui/Call;

    # invokes: Lcom/android/incallui/Call;->update()V
    invoke-static {v0}, Lcom/android/incallui/Call;->access$000(Lcom/android/incallui/Call;)V

    return-void
.end method

.method public onPostDialWait(Landroid/telecom/Call;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPostDialWait: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " remainingPostDialSequence : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/Call$1;->this$0:Lcom/android/incallui/Call;

    const/4 v1, 0x0

    # invokes: Lcom/android/incallui/Call;->update(Z)V
    invoke-static {v0, v1}, Lcom/android/incallui/Call;->access$100(Lcom/android/incallui/Call;Z)V

    return-void
.end method

.method public onStateChanged(Landroid/telecom/Call;I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStateChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " newState : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/Call$1;->this$0:Lcom/android/incallui/Call;

    # invokes: Lcom/android/incallui/Call;->update()V
    invoke-static {v0}, Lcom/android/incallui/Call;->access$000(Lcom/android/incallui/Call;)V

    return-void
.end method

.method public onVideoCallChanged(Landroid/telecom/Call;Landroid/telecom/InCallService$VideoCall;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onVideoCallChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " videoCall : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/Call$1;->this$0:Lcom/android/incallui/Call;

    # invokes: Lcom/android/incallui/Call;->update()V
    invoke-static {v0}, Lcom/android/incallui/Call;->access$000(Lcom/android/incallui/Call;)V

    return-void
.end method
