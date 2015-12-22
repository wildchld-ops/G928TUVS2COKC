.class Lcom/android/incallui/SecTabletInCallService$2;
.super Landroid/os/Handler;
.source "SecTabletInCallService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/SecTabletInCallService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/SecTabletInCallService;


# direct methods
.method constructor <init>(Lcom/android/incallui/SecTabletInCallService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/SecTabletInCallService$2;->this$0:Lcom/android/incallui/SecTabletInCallService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    const-string v1, "TURN_ON_SCREEN_FOR_NEW_INCOMING"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/SecTabletInCallService$2;->this$0:Lcom/android/incallui/SecTabletInCallService;

    # getter for: Lcom/android/incallui/SecTabletInCallService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/incallui/SecTabletInCallService;->access$200(Lcom/android/incallui/SecTabletInCallService;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/incallui/InCallUtils;->forceWakeUpScreen(Landroid/content/Context;)V

    goto :goto_0

    :sswitch_1
    iget-object v1, p0, Lcom/android/incallui/SecTabletInCallService$2;->this$0:Lcom/android/incallui/SecTabletInCallService;

    invoke-virtual {v1}, Lcom/android/incallui/SecTabletInCallService;->dismissPostCharPauseDialog()V

    goto :goto_0

    :sswitch_2
    iget-object v1, p0, Lcom/android/incallui/SecTabletInCallService$2;->this$0:Lcom/android/incallui/SecTabletInCallService;

    # invokes: Lcom/android/incallui/SecTabletInCallService;->startLockScreenDuringCallService()V
    invoke-static {v1}, Lcom/android/incallui/SecTabletInCallService;->access$500(Lcom/android/incallui/SecTabletInCallService;)V

    goto :goto_0

    :sswitch_3
    const-string v1, "RECORD_INFO_STATE_CHANGED"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/incallui/SecTabletInCallService$2;->this$0:Lcom/android/incallui/SecTabletInCallService;

    # getter for: Lcom/android/incallui/SecTabletInCallService;->mRecorderMgr:Lcom/android/incallui/PhoneVoiceRecorderManager;
    invoke-static {v1}, Lcom/android/incallui/SecTabletInCallService;->access$600(Lcom/android/incallui/SecTabletInCallService;)Lcom/android/incallui/PhoneVoiceRecorderManager;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/SecTabletInCallService$2;->this$0:Lcom/android/incallui/SecTabletInCallService;

    # getter for: Lcom/android/incallui/SecTabletInCallService;->mRecorderMgr:Lcom/android/incallui/PhoneVoiceRecorderManager;
    invoke-static {v1}, Lcom/android/incallui/SecTabletInCallService;->access$600(Lcom/android/incallui/SecTabletInCallService;)Lcom/android/incallui/PhoneVoiceRecorderManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/PhoneVoiceRecorderManager;->onRecorderStateChanged()V

    goto :goto_0

    :sswitch_4
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v1, p0, Lcom/android/incallui/SecTabletInCallService$2;->this$0:Lcom/android/incallui/SecTabletInCallService;

    # invokes: Lcom/android/incallui/SecTabletInCallService;->showGreenBar(Z)V
    invoke-static {v1, v0}, Lcom/android/incallui/SecTabletInCallService;->access$700(Lcom/android/incallui/SecTabletInCallService;Z)V

    goto :goto_0

    :sswitch_5
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->updatePhotoringState()V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0xa1 -> :sswitch_0
        0xa2 -> :sswitch_1
        0xa3 -> :sswitch_2
        0xa4 -> :sswitch_5
        0xc9 -> :sswitch_3
        0x12d -> :sswitch_4
    .end sparse-switch
.end method
