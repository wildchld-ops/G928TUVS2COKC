.class Lcom/android/phone/operator/jpn/SyncCallServiceMgr$2;
.super Landroid/content/BroadcastReceiver;
.source "SyncCallServiceMgr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/operator/jpn/SyncCallServiceMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/operator/jpn/SyncCallServiceMgr;


# direct methods
.method constructor <init>(Lcom/android/phone/operator/jpn/SyncCallServiceMgr;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$2;->this$0:Lcom/android/phone/operator/jpn/SyncCallServiceMgr;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    const/4 v5, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "receive broadcast intent action : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->log(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->access$500(Ljava/lang/String;)V

    const-string v3, "com.kddi.agent.action.DISPLAY_PHONE_APP"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v3

    const-string v4, "telecom"

    invoke-virtual {v3, v4}, Lcom/android/phone/PhoneGlobals;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/TelecomManager;

    invoke-virtual {v2, v5}, Landroid/telecom/TelecomManager;->showInCallScreen(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v3, "com.kddi.agent.action.ACTIVE_SPEAKER_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$2;->this$0:Lcom/android/phone/operator/jpn/SyncCallServiceMgr;

    # invokes: Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->actionTurnOnSpeker()V
    invoke-static {v3}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->access$600(Lcom/android/phone/operator/jpn/SyncCallServiceMgr;)V

    goto :goto_0

    :cond_2
    const-string v3, "com.samsung.synccall.action.answering_message"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "isStart"

    invoke-virtual {p2, v3, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "receive broadcast isAnsweringMessageOn : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->log(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->access$500(Ljava/lang/String;)V

    if-nez v1, :cond_0

    iget-object v3, p0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$2;->this$0:Lcom/android/phone/operator/jpn/SyncCallServiceMgr;

    # getter for: Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->mAutoReplyIntentHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->access$900(Lcom/android/phone/operator/jpn/SyncCallServiceMgr;)Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$2$1;

    invoke-direct {v4, p0}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$2$1;-><init>(Lcom/android/phone/operator/jpn/SyncCallServiceMgr$2;)V

    const-wide/16 v6, 0x190

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_3
    const-string v3, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$2;->this$0:Lcom/android/phone/operator/jpn/SyncCallServiceMgr;

    const-string v4, "get BOOT_COMPLETED intent and block SyncCall"

    const/4 v5, 0x1

    # invokes: Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->log(Ljava/lang/String;Z)V
    invoke-static {v3, v4, v5}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->access$400(Lcom/android/phone/operator/jpn/SyncCallServiceMgr;Ljava/lang/String;Z)V

    iget-object v3, p0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$2;->this$0:Lcom/android/phone/operator/jpn/SyncCallServiceMgr;

    const v4, 0xea60

    # invokes: Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->restartSyncCall(I)V
    invoke-static {v3, v4}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->access$1000(Lcom/android/phone/operator/jpn/SyncCallServiceMgr;I)V

    goto :goto_0
.end method
