.class Lcom/android/incallui/SecInCallActivity$7;
.super Landroid/os/Handler;
.source "SecInCallActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/SecInCallActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/SecInCallActivity;


# direct methods
.method constructor <init>(Lcom/android/incallui/SecInCallActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/SecInCallActivity$7;->this$0:Lcom/android/incallui/SecInCallActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/incallui/SecInCallActivity$7;->this$0:Lcom/android/incallui/SecInCallActivity;

    # getter for: Lcom/android/incallui/SecInCallActivity;->mIsForegroundActivity:Z
    invoke-static {v0}, Lcom/android/incallui/SecInCallActivity;->access$500(Lcom/android/incallui/SecInCallActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecInCallActivity$7;->this$0:Lcom/android/incallui/SecInCallActivity;

    # invokes: Lcom/android/incallui/SecInCallActivity;->handleShowGreenBarMessage()V
    invoke-static {v0}, Lcom/android/incallui/SecInCallActivity;->access$600(Lcom/android/incallui/SecInCallActivity;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/incallui/SecInCallActivity$7;->this$0:Lcom/android/incallui/SecInCallActivity;

    invoke-virtual {v0}, Lcom/android/incallui/SecInCallActivity;->dismissPostCharPauseDialog()V

    goto :goto_0

    :pswitch_2
    const-string v0, "TURN_ON_SCREEN_FOR_NEW_INCOMING"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecInCallActivity$7;->this$0:Lcom/android/incallui/SecInCallActivity;

    invoke-virtual {v0}, Lcom/android/incallui/SecInCallActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/InCallUtils;->forceWakeUpScreen(Landroid/content/Context;)V

    goto :goto_0

    :pswitch_3
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->updatePhotoringState()V

    goto :goto_0

    :pswitch_4
    const-string v0, "feature_multisim"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "feature_hktw"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Update notification once again to display correct icon in multisim models"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->updateNotification()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0xa0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
