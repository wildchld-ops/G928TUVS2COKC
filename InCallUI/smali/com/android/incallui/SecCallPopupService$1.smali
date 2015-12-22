.class Lcom/android/incallui/SecCallPopupService$1;
.super Landroid/content/BroadcastReceiver;
.source "SecCallPopupService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/SecCallPopupService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/SecCallPopupService;


# direct methods
.method constructor <init>(Lcom/android/incallui/SecCallPopupService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/SecCallPopupService$1;->this$0:Lcom/android/incallui/SecCallPopupService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9

    const/4 v8, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mReceiver: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "com.samsung.android.action.START_DOCK_OR_HOME"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v6, v7, v8}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getState()I

    move-result v6

    const/4 v7, 0x4

    if-eq v6, v7, :cond_0

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getState()I

    move-result v6

    const/4 v7, 0x5

    if-ne v6, v7, :cond_2

    :cond_0
    iget-object v6, p0, Lcom/android/incallui/SecCallPopupService$1;->this$0:Lcom/android/incallui/SecCallPopupService;

    invoke-virtual {v6}, Lcom/android/incallui/SecCallPopupService;->onAnswerWithWaitingCheck()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v6, p0, Lcom/android/incallui/SecCallPopupService$1;->this$0:Lcom/android/incallui/SecCallPopupService;

    invoke-virtual {v6}, Lcom/android/incallui/SecCallPopupService;->animateForHide()V

    goto :goto_0

    :cond_3
    const-string v6, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/incallui/SecCallPopupService$1;->this$0:Lcom/android/incallui/SecCallPopupService;

    # invokes: Lcom/android/incallui/SecCallPopupService;->handleEventScreenOff(Landroid/content/Intent;)V
    invoke-static {v6, p2}, Lcom/android/incallui/SecCallPopupService;->access$000(Lcom/android/incallui/SecCallPopupService;Landroid/content/Intent;)V

    goto :goto_0

    :cond_4
    const-string v6, "com.sec.rcs.mediatransfer.vsh.notification.SHARE_INCOMING"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    const-string v6, "com.sec.rcs.mediatransfer.ish.notification.SHARE_INCOMING"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    :cond_5
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v6, "com.samsung.android.incalllui.secservice.action.ACTION_RCS_POP_UP"

    invoke-virtual {v2, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    const-string v7, "com.sec.rcs.mediatransfer.csh.extra.SHARE_ID"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    const-string v7, "com.sec.rcs.mediatransfer.csh.extra.SHARE_TYPE"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    const-string v6, "sessionId"

    invoke-virtual {v2, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v6, "sessionType"

    invoke-virtual {v2, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v6, 0x10000000

    invoke-virtual {v2, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v6, p0, Lcom/android/incallui/SecCallPopupService$1;->this$0:Lcom/android/incallui/SecCallPopupService;

    invoke-virtual {v6}, Lcom/android/incallui/SecCallPopupService;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_6
    const-string v6, "com.sec.rcs.mediatransfer.csh.action.SHARE_ACCEPT"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/android/incallui/SecCallPopupService$1;->this$0:Lcom/android/incallui/SecCallPopupService;

    invoke-virtual {v6}, Lcom/android/incallui/SecCallPopupService;->animateForHide()V

    goto :goto_0

    :cond_7
    const-string v6, "com.skt.tgroupon.action.REQUEST_CALL_SCREEN"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    iget-object v6, p0, Lcom/android/incallui/SecCallPopupService$1;->this$0:Lcom/android/incallui/SecCallPopupService;

    invoke-virtual {v6}, Lcom/android/incallui/SecCallPopupService;->stopSelf()V

    goto :goto_0

    :cond_8
    const-string v6, "com.samsung.android.swis.action.SWIS_STATE_CHANGED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v6, "com.samsung.android.swis.extra.SWIS_STATE"

    invoke-virtual {p2, v6, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "swis state:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x2

    if-ne v5, v6, :cond_1

    iget-object v6, p0, Lcom/android/incallui/SecCallPopupService$1;->this$0:Lcom/android/incallui/SecCallPopupService;

    invoke-virtual {v6}, Lcom/android/incallui/SecCallPopupService;->animateForHide()V

    goto/16 :goto_0
.end method
