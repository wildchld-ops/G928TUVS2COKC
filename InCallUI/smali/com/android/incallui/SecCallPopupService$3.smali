.class Lcom/android/incallui/SecCallPopupService$3;
.super Ljava/lang/Object;
.source "SecCallPopupService.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    iput-object p1, p0, Lcom/android/incallui/SecCallPopupService$3;->this$0:Lcom/android/incallui/SecCallPopupService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/android/incallui/SecCallPopupService$3;->this$0:Lcom/android/incallui/SecCallPopupService;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onClick(View "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    # invokes: Lcom/android/incallui/SecCallPopupService;->log(Ljava/lang/String;Z)V
    invoke-static {v1, v2, v3}, Lcom/android/incallui/SecCallPopupService;->access$100(Lcom/android/incallui/SecCallPopupService;Ljava/lang/String;Z)V

    sparse-switch v0, :sswitch_data_0

    :goto_0
    :sswitch_0
    return-void

    :sswitch_1
    const-string v1, "automatic_answering_machine"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isAutoAnswered()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/SecCallPopupService$3;->this$0:Lcom/android/incallui/SecCallPopupService;

    # invokes: Lcom/android/incallui/SecCallPopupService;->clearAmViews()V
    invoke-static {v1}, Lcom/android/incallui/SecCallPopupService;->access$600(Lcom/android/incallui/SecCallPopupService;)V

    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->stopAnswerMemo()V

    invoke-static {v4}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->setAutoAnswered(Z)V

    iget-object v1, p0, Lcom/android/incallui/SecCallPopupService$3;->this$0:Lcom/android/incallui/SecCallPopupService;

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/InCallPresenter;->getInCallState()Lcom/android/incallui/InCallPresenter$InCallState;

    move-result-object v2

    # invokes: Lcom/android/incallui/SecCallPopupService;->updateCallButtons(Lcom/android/incallui/InCallPresenter$InCallState;)V
    invoke-static {v1, v2}, Lcom/android/incallui/SecCallPopupService;->access$700(Lcom/android/incallui/SecCallPopupService;Lcom/android/incallui/InCallPresenter$InCallState;)V

    iget-object v1, p0, Lcom/android/incallui/SecCallPopupService$3;->this$0:Lcom/android/incallui/SecCallPopupService;

    invoke-virtual {v1}, Lcom/android/incallui/SecCallPopupService;->stopRecord()V

    goto :goto_0

    :cond_0
    const-string v1, "smart_auto_answering"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/incallui/operator/kor/SmartAnswerUtils;->isSmartAnswered()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/incallui/operator/kor/SmartAnswerUtils;->stopGuidance()V

    invoke-static {v4}, Lcom/android/incallui/operator/kor/SmartAnswerUtils;->setSmartAnswered(Z)V

    :cond_1
    iget-object v1, p0, Lcom/android/incallui/SecCallPopupService$3;->this$0:Lcom/android/incallui/SecCallPopupService;

    invoke-virtual {v1}, Lcom/android/incallui/SecCallPopupService;->onAnswerWithWaitingCheck()V

    goto :goto_0

    :sswitch_2
    iget-object v1, p0, Lcom/android/incallui/SecCallPopupService$3;->this$0:Lcom/android/incallui/SecCallPopupService;

    # invokes: Lcom/android/incallui/SecCallPopupService;->toggleRejectMsgContent()V
    invoke-static {v1}, Lcom/android/incallui/SecCallPopupService;->access$800(Lcom/android/incallui/SecCallPopupService;)V

    goto :goto_0

    :sswitch_3
    const-string v1, "automatic_answering_machine"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isAutoAnswered()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/incallui/SecCallPopupService$3;->this$0:Lcom/android/incallui/SecCallPopupService;

    # invokes: Lcom/android/incallui/SecCallPopupService;->clearAmViews()V
    invoke-static {v1}, Lcom/android/incallui/SecCallPopupService;->access$600(Lcom/android/incallui/SecCallPopupService;)V

    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->stopAnswerMemo()V

    invoke-static {v4}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->setAutoAnswered(Z)V

    iget-object v1, p0, Lcom/android/incallui/SecCallPopupService$3;->this$0:Lcom/android/incallui/SecCallPopupService;

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/InCallPresenter;->getInCallState()Lcom/android/incallui/InCallPresenter$InCallState;

    move-result-object v2

    # invokes: Lcom/android/incallui/SecCallPopupService;->updateCallButtons(Lcom/android/incallui/InCallPresenter$InCallState;)V
    invoke-static {v1, v2}, Lcom/android/incallui/SecCallPopupService;->access$700(Lcom/android/incallui/SecCallPopupService;Lcom/android/incallui/InCallPresenter$InCallState;)V

    iget-object v1, p0, Lcom/android/incallui/SecCallPopupService$3;->this$0:Lcom/android/incallui/SecCallPopupService;

    # invokes: Lcom/android/incallui/SecCallPopupService;->endCallClicked()V
    invoke-static {v1}, Lcom/android/incallui/SecCallPopupService;->access$900(Lcom/android/incallui/SecCallPopupService;)V

    goto :goto_0

    :cond_2
    const-string v1, "smart_auto_answering"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/android/incallui/operator/kor/SmartAnswerUtils;->isSmartAnswered()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/android/incallui/operator/kor/SmartAnswerUtils;->stopGuidance()V

    invoke-static {v4}, Lcom/android/incallui/operator/kor/SmartAnswerUtils;->setSmartAnswered(Z)V

    :cond_3
    iget-object v1, p0, Lcom/android/incallui/SecCallPopupService$3;->this$0:Lcom/android/incallui/SecCallPopupService;

    # invokes: Lcom/android/incallui/SecCallPopupService;->rejectCallClicked()V
    invoke-static {v1}, Lcom/android/incallui/SecCallPopupService;->access$1000(Lcom/android/incallui/SecCallPopupService;)V

    goto/16 :goto_0

    :sswitch_4
    iget-object v1, p0, Lcom/android/incallui/SecCallPopupService$3;->this$0:Lcom/android/incallui/SecCallPopupService;

    # invokes: Lcom/android/incallui/SecCallPopupService;->showInCallUI()V
    invoke-static {v1}, Lcom/android/incallui/SecCallPopupService;->access$1100(Lcom/android/incallui/SecCallPopupService;)V

    goto/16 :goto_0

    :sswitch_5
    iget-object v1, p0, Lcom/android/incallui/SecCallPopupService$3;->this$0:Lcom/android/incallui/SecCallPopupService;

    iget-object v2, p0, Lcom/android/incallui/SecCallPopupService$3;->this$0:Lcom/android/incallui/SecCallPopupService;

    # getter for: Lcom/android/incallui/SecCallPopupService;->mSpeakerBtn:Landroid/widget/ToggleButton;
    invoke-static {v2}, Lcom/android/incallui/SecCallPopupService;->access$1200(Lcom/android/incallui/SecCallPopupService;)Landroid/widget/ToggleButton;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v2

    # invokes: Lcom/android/incallui/SecCallPopupService;->toggleSpeaker(Z)V
    invoke-static {v1, v2}, Lcom/android/incallui/SecCallPopupService;->access$1300(Lcom/android/incallui/SecCallPopupService;Z)V

    goto/16 :goto_0

    :sswitch_6
    iget-object v1, p0, Lcom/android/incallui/SecCallPopupService$3;->this$0:Lcom/android/incallui/SecCallPopupService;

    iget-object v2, p0, Lcom/android/incallui/SecCallPopupService$3;->this$0:Lcom/android/incallui/SecCallPopupService;

    # getter for: Lcom/android/incallui/SecCallPopupService;->mMuteBtn:Landroid/widget/ToggleButton;
    invoke-static {v2}, Lcom/android/incallui/SecCallPopupService;->access$1400(Lcom/android/incallui/SecCallPopupService;)Landroid/widget/ToggleButton;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v2

    # invokes: Lcom/android/incallui/SecCallPopupService;->toggleMute(Z)V
    invoke-static {v1, v2}, Lcom/android/incallui/SecCallPopupService;->access$1500(Lcom/android/incallui/SecCallPopupService;Z)V

    goto/16 :goto_0

    :sswitch_7
    iget-object v1, p0, Lcom/android/incallui/SecCallPopupService$3;->this$0:Lcom/android/incallui/SecCallPopupService;

    # invokes: Lcom/android/incallui/SecCallPopupService;->endCallClicked()V
    invoke-static {v1}, Lcom/android/incallui/SecCallPopupService;->access$900(Lcom/android/incallui/SecCallPopupService;)V

    goto/16 :goto_0

    :sswitch_8
    iget-object v1, p0, Lcom/android/incallui/SecCallPopupService$3;->this$0:Lcom/android/incallui/SecCallPopupService;

    # invokes: Lcom/android/incallui/SecCallPopupService;->videoCallClicked()V
    invoke-static {v1}, Lcom/android/incallui/SecCallPopupService;->access$1600(Lcom/android/incallui/SecCallPopupService;)V

    iget-object v1, p0, Lcom/android/incallui/SecCallPopupService$3;->this$0:Lcom/android/incallui/SecCallPopupService;

    invoke-virtual {v1}, Lcom/android/incallui/SecCallPopupService;->animateForHide()V

    goto/16 :goto_0

    :sswitch_9
    iget-object v1, p0, Lcom/android/incallui/SecCallPopupService$3;->this$0:Lcom/android/incallui/SecCallPopupService;

    # invokes: Lcom/android/incallui/SecCallPopupService;->voiceCallClicked()V
    invoke-static {v1}, Lcom/android/incallui/SecCallPopupService;->access$1700(Lcom/android/incallui/SecCallPopupService;)V

    goto/16 :goto_0

    :sswitch_a
    iget-object v1, p0, Lcom/android/incallui/SecCallPopupService$3;->this$0:Lcom/android/incallui/SecCallPopupService;

    # invokes: Lcom/android/incallui/SecCallPopupService;->messageClicked()V
    invoke-static {v1}, Lcom/android/incallui/SecCallPopupService;->access$1800(Lcom/android/incallui/SecCallPopupService;)V

    iget-object v1, p0, Lcom/android/incallui/SecCallPopupService$3;->this$0:Lcom/android/incallui/SecCallPopupService;

    invoke-virtual {v1}, Lcom/android/incallui/SecCallPopupService;->animateForHide()V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x7f1000c1 -> :sswitch_1
        0x7f1000c3 -> :sswitch_3
        0x7f1000c7 -> :sswitch_5
        0x7f1000c8 -> :sswitch_6
        0x7f1000c9 -> :sswitch_7
        0x7f1000cb -> :sswitch_9
        0x7f1000cc -> :sswitch_8
        0x7f1000cd -> :sswitch_a
        0x7f1000ce -> :sswitch_8
        0x7f10012f -> :sswitch_0
        0x7f100130 -> :sswitch_2
        0x7f100142 -> :sswitch_4
    .end sparse-switch
.end method
