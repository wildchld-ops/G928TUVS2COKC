.class Lcom/android/incallui/InCallPresenter$AutoAnsTimer;
.super Landroid/os/CountDownTimer;
.source "InCallPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/InCallPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AutoAnsTimer"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/InCallPresenter;


# direct methods
.method public constructor <init>(Lcom/android/incallui/InCallPresenter;JJ)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/InCallPresenter$AutoAnsTimer;->this$0:Lcom/android/incallui/InCallPresenter;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 3

    const/4 v1, 0x1

    const-string v2, "AutoAnsTimer onFinish"

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v2

    invoke-static {v2}, Lcom/android/incallui/InCallUtils;->getSecCallExtra(Lcom/android/incallui/Call;)Lcom/android/services/telephony/common/SecCallExtra;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v2, "config_op_ui_call_setting_kdi"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v2

    invoke-static {v2}, Lcom/android/incallui/InCallUtils;->getSecCallExtra(Lcom/android/incallui/Call;)Lcom/android/services/telephony/common/SecCallExtra;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/services/telephony/common/SecCallExtra;->isVoicePartyCall()I

    move-result v2

    if-ne v2, v1, :cond_1

    move v0, v1

    :cond_0
    :goto_0
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/incallui/InCallPresenter$AutoAnsTimer;->this$0:Lcom/android/incallui/InCallPresenter;

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->disconnectCallForVoiceParty()V

    :goto_1
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter$AutoAnsTimer;->this$0:Lcom/android/incallui/InCallPresenter;

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->answeringMode()V

    goto :goto_1
.end method

.method public onTick(J)V
    .locals 0

    return-void
.end method
