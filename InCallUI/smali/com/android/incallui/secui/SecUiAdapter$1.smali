.class Lcom/android/incallui/secui/SecUiAdapter$1;
.super Landroid/os/Handler;
.source "SecUiAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/secui/SecUiAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/secui/SecUiAdapter;


# direct methods
.method constructor <init>(Lcom/android/incallui/secui/SecUiAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/secui/SecUiAdapter$1;->this$0:Lcom/android/incallui/secui/SecUiAdapter;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/incallui/secui/SecUiAdapter$1;->this$0:Lcom/android/incallui/secui/SecUiAdapter;

    invoke-virtual {v0, v2, v2}, Lcom/android/incallui/secui/SecUiAdapter;->showVideoStateMessage(ZI)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/incallui/secui/SecUiAdapter$1;->this$0:Lcom/android/incallui/secui/SecUiAdapter;

    iget-object v1, p0, Lcom/android/incallui/secui/SecUiAdapter$1;->this$0:Lcom/android/incallui/secui/SecUiAdapter;

    invoke-virtual {v1}, Lcom/android/incallui/secui/SecUiAdapter;->isPossibleToEnterCleanMode()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/secui/SecUiAdapter;->updateCleanMode(Z)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/incallui/secui/SecUiAdapter$1;->this$0:Lcom/android/incallui/secui/SecUiAdapter;

    invoke-virtual {v0}, Lcom/android/incallui/secui/SecUiAdapter;->expiredModifyReceiveTimer()V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/android/incallui/secui/SecUiAdapter$1;->this$0:Lcom/android/incallui/secui/SecUiAdapter;

    invoke-virtual {v0, v2, v2}, Lcom/android/incallui/secui/SecUiAdapter;->showVoiceCallModifyStateMessage(ZI)V

    const-string v0, "enable_conference_info_banner"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/secui/SecUiAdapter$1;->this$0:Lcom/android/incallui/secui/SecUiAdapter;

    const-string v1, "NONE"

    invoke-virtual {v0, v2, v1}, Lcom/android/incallui/secui/SecUiAdapter;->showConferenceStateMessage(ZLjava/lang/String;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
