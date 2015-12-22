.class Lcom/android/phone/operator/sec/SecCallNotifier$3;
.super Landroid/content/BroadcastReceiver;
.source "SecCallNotifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/operator/sec/SecCallNotifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/operator/sec/SecCallNotifier;


# direct methods
.method constructor <init>(Lcom/android/phone/operator/sec/SecCallNotifier;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/operator/sec/SecCallNotifier$3;->this$0:Lcom/android/phone/operator/sec/SecCallNotifier;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/content/Intent;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/PhoneGlobals;->getCallManager()Lcom/android/internal/telephony/CallManager;

    move-result-object v2

    iget-object v4, p0, Lcom/android/phone/operator/sec/SecCallNotifier$3;->this$0:Lcom/android/phone/operator/sec/SecCallNotifier;

    const-string v5, "SUPPORT_FWIM m_Fwim_Receiver onReceive()..."

    const/4 v6, 0x1

    # invokes: Lcom/android/phone/operator/sec/SecCallNotifier;->log(Ljava/lang/String;Z)V
    invoke-static {v4, v5, v6}, Lcom/android/phone/operator/sec/SecCallNotifier;->access$100(Lcom/android/phone/operator/sec/SecCallNotifier;Ljava/lang/String;Z)V

    const-string v4, "support_fwim"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "android.intent.action.SS_INFO_FWIM_NSS_REL"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/phone/operator/sec/SecCallNotifier$3;->this$0:Lcom/android/phone/operator/sec/SecCallNotifier;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mReceiver:SS_INFO_FWIM_NSS:mPhone.getState["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/phone/operator/sec/SecCallNotifier$3;->this$0:Lcom/android/phone/operator/sec/SecCallNotifier;

    # getter for: Lcom/android/phone/operator/sec/SecCallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v6}, Lcom/android/phone/operator/sec/SecCallNotifier;->access$200(Lcom/android/phone/operator/sec/SecCallNotifier;)Lcom/android/internal/telephony/Phone;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/android/phone/operator/sec/SecCallNotifier;->log(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/phone/operator/sec/SecCallNotifier;->access$000(Lcom/android/phone/operator/sec/SecCallNotifier;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/phone/operator/sec/SecCallNotifier$3;->this$0:Lcom/android/phone/operator/sec/SecCallNotifier;

    # getter for: Lcom/android/phone/operator/sec/SecCallNotifier;->LOG_TAG:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/phone/operator/sec/SecCallNotifier;->access$300(Lcom/android/phone/operator/sec/SecCallNotifier;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mReceiver:SS_INFO_FWIM_NSS:mPhone.getState["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/phone/operator/sec/SecCallNotifier$3;->this$0:Lcom/android/phone/operator/sec/SecCallNotifier;

    # getter for: Lcom/android/phone/operator/sec/SecCallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v6}, Lcom/android/phone/operator/sec/SecCallNotifier;->access$200(Lcom/android/phone/operator/sec/SecCallNotifier;)Lcom/android/internal/telephony/Phone;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/phone/operator/sec/SecCallNotifier$3;->this$0:Lcom/android/phone/operator/sec/SecCallNotifier;

    # getter for: Lcom/android/phone/operator/sec/SecCallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v4}, Lcom/android/phone/operator/sec/SecCallNotifier;->access$200(Lcom/android/phone/operator/sec/SecCallNotifier;)Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v4, v5, :cond_1

    iget-object v4, p0, Lcom/android/phone/operator/sec/SecCallNotifier$3;->this$0:Lcom/android/phone/operator/sec/SecCallNotifier;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mReceiver:SS_INFO_FWIM_NSS:mToneGeneratorLock["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/phone/operator/sec/SecCallNotifier$3;->this$0:Lcom/android/phone/operator/sec/SecCallNotifier;

    # getter for: Lcom/android/phone/operator/sec/SecCallNotifier;->mToneGeneratorLock:Ljava/lang/Object;
    invoke-static {v6}, Lcom/android/phone/operator/sec/SecCallNotifier;->access$400(Lcom/android/phone/operator/sec/SecCallNotifier;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]mToneGenerator["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/phone/operator/sec/SecCallNotifier$3;->this$0:Lcom/android/phone/operator/sec/SecCallNotifier;

    # getter for: Lcom/android/phone/operator/sec/SecCallNotifier;->mToneGenerator:Landroid/media/ToneGenerator;
    invoke-static {v6}, Lcom/android/phone/operator/sec/SecCallNotifier;->access$500(Lcom/android/phone/operator/sec/SecCallNotifier;)Landroid/media/ToneGenerator;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/android/phone/operator/sec/SecCallNotifier;->log(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/phone/operator/sec/SecCallNotifier;->access$000(Lcom/android/phone/operator/sec/SecCallNotifier;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/phone/operator/sec/SecCallNotifier$3;->this$0:Lcom/android/phone/operator/sec/SecCallNotifier;

    # getter for: Lcom/android/phone/operator/sec/SecCallNotifier;->mToneGeneratorLock:Ljava/lang/Object;
    invoke-static {v4}, Lcom/android/phone/operator/sec/SecCallNotifier;->access$400(Lcom/android/phone/operator/sec/SecCallNotifier;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    :try_start_0
    iget-object v4, p0, Lcom/android/phone/operator/sec/SecCallNotifier$3;->this$0:Lcom/android/phone/operator/sec/SecCallNotifier;

    # getter for: Lcom/android/phone/operator/sec/SecCallNotifier;->mToneGenerator:Landroid/media/ToneGenerator;
    invoke-static {v4}, Lcom/android/phone/operator/sec/SecCallNotifier;->access$500(Lcom/android/phone/operator/sec/SecCallNotifier;)Landroid/media/ToneGenerator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    if-nez v4, :cond_0

    :try_start_1
    iget-object v4, p0, Lcom/android/phone/operator/sec/SecCallNotifier$3;->this$0:Lcom/android/phone/operator/sec/SecCallNotifier;

    # getter for: Lcom/android/phone/operator/sec/SecCallNotifier;->LOG_TAG:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/phone/operator/sec/SecCallNotifier;->access$300(Lcom/android/phone/operator/sec/SecCallNotifier;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "start_Busy_Tone"

    invoke-static {v4, v6}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/phone/operator/sec/SecCallNotifier$3;->this$0:Lcom/android/phone/operator/sec/SecCallNotifier;

    new-instance v6, Landroid/media/ToneGenerator;

    const/4 v7, 0x0

    const/16 v8, 0x50

    invoke-direct {v6, v7, v8}, Landroid/media/ToneGenerator;-><init>(II)V

    # setter for: Lcom/android/phone/operator/sec/SecCallNotifier;->mToneGenerator:Landroid/media/ToneGenerator;
    invoke-static {v4, v6}, Lcom/android/phone/operator/sec/SecCallNotifier;->access$502(Lcom/android/phone/operator/sec/SecCallNotifier;Landroid/media/ToneGenerator;)Landroid/media/ToneGenerator;

    iget-object v4, p0, Lcom/android/phone/operator/sec/SecCallNotifier$3;->this$0:Lcom/android/phone/operator/sec/SecCallNotifier;

    # getter for: Lcom/android/phone/operator/sec/SecCallNotifier;->mToneGenerator:Landroid/media/ToneGenerator;
    invoke-static {v4}, Lcom/android/phone/operator/sec/SecCallNotifier;->access$500(Lcom/android/phone/operator/sec/SecCallNotifier;)Landroid/media/ToneGenerator;

    move-result-object v4

    const/16 v6, 0x11

    invoke-virtual {v4, v6}, Landroid/media/ToneGenerator;->startTone(I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    new-instance v5, Lcom/android/phone/operator/sec/SecCallNotifier$3$1;

    invoke-direct {v5, p0, v2}, Lcom/android/phone/operator/sec/SecCallNotifier$3$1;-><init>(Lcom/android/phone/operator/sec/SecCallNotifier$3;Lcom/android/internal/telephony/CallManager;)V

    const-wide/16 v6, 0xbb8

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void

    :catch_0
    move-exception v3

    :try_start_3
    iget-object v4, p0, Lcom/android/phone/operator/sec/SecCallNotifier$3;->this$0:Lcom/android/phone/operator/sec/SecCallNotifier;

    # getter for: Lcom/android/phone/operator/sec/SecCallNotifier;->LOG_TAG:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/phone/operator/sec/SecCallNotifier;->access$300(Lcom/android/phone/operator/sec/SecCallNotifier;)Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mReceiver:SS_INFO_FWIM_NSS:mToneGenerator:RuntimeException:e["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/phone/operator/sec/SecCallNotifier$3;->this$0:Lcom/android/phone/operator/sec/SecCallNotifier;

    const/4 v6, 0x0

    # setter for: Lcom/android/phone/operator/sec/SecCallNotifier;->mToneGenerator:Landroid/media/ToneGenerator;
    invoke-static {v4, v6}, Lcom/android/phone/operator/sec/SecCallNotifier;->access$502(Lcom/android/phone/operator/sec/SecCallNotifier;Landroid/media/ToneGenerator;)Landroid/media/ToneGenerator;

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v4
.end method
