.class Lcom/android/incallui/SecVoiceCallButtonVCCFragment$5;
.super Ljava/lang/Object;
.source "SecVoiceCallButtonVCCFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/SecVoiceCallButtonVCCFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/SecVoiceCallButtonVCCFragment;


# direct methods
.method constructor <init>(Lcom/android/incallui/SecVoiceCallButtonVCCFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment$5;->this$0:Lcom/android/incallui/SecVoiceCallButtonVCCFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    const/16 v5, 0x65

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onClick(View "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", id "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ")..."

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment$5;->this$0:Lcom/android/incallui/SecVoiceCallButtonVCCFragment;

    # getter for: Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->access$1200(Lcom/android/incallui/SecVoiceCallButtonVCCFragment;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment$5;->this$0:Lcom/android/incallui/SecVoiceCallButtonVCCFragment;

    # getter for: Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->access$1200(Lcom/android/incallui/SecVoiceCallButtonVCCFragment;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    sparse-switch v0, :sswitch_data_0

    const-string v1, "onClick: unexpected"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->wtf(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void

    :sswitch_0
    iget-object v1, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment$5;->this$0:Lcom/android/incallui/SecVoiceCallButtonVCCFragment;

    # invokes: Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->checkThenModify(I)V
    invoke-static {v1, v0}, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->access$1300(Lcom/android/incallui/SecVoiceCallButtonVCCFragment;I)V

    goto :goto_0

    :sswitch_1
    iget-object v1, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment$5;->this$0:Lcom/android/incallui/SecVoiceCallButtonVCCFragment;

    invoke-virtual {v1}, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "com.android.incallui"

    const-string v3, "VOCB"

    const-string v4, "ADDC"

    invoke-static {v1, v2, v3, v4}, Lcom/android/incallui/secutils/AppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment$5;->this$0:Lcom/android/incallui/SecVoiceCallButtonVCCFragment;

    invoke-virtual {v1}, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v1}, Lcom/android/incallui/CallButtonPresenter;->addCallClicked()V

    goto :goto_0

    :sswitch_2
    iget-object v1, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment$5;->this$0:Lcom/android/incallui/SecVoiceCallButtonVCCFragment;

    invoke-virtual {v1}, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "com.android.incallui"

    const-string v3, "RECG"

    invoke-static {v1, v2, v3}, Lcom/android/incallui/secutils/AppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment$5;->this$0:Lcom/android/incallui/SecVoiceCallButtonVCCFragment;

    # invokes: Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->recordClicked()V
    invoke-static {v1}, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->access$1400(Lcom/android/incallui/SecVoiceCallButtonVCCFragment;)V

    goto :goto_0

    :sswitch_3
    iget-object v1, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment$5;->this$0:Lcom/android/incallui/SecVoiceCallButtonVCCFragment;

    # invokes: Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->checkThenModify(I)V
    invoke-static {v1, v0}, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->access$1300(Lcom/android/incallui/SecVoiceCallButtonVCCFragment;I)V

    goto :goto_0

    :sswitch_4
    iget-object v1, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment$5;->this$0:Lcom/android/incallui/SecVoiceCallButtonVCCFragment;

    invoke-virtual {v1}, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "com.android.incallui"

    const-string v3, "VOCB"

    const-string v4, "EXVL"

    invoke-static {v1, v2, v3, v4}, Lcom/android/incallui/secutils/AppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment$5;->this$0:Lcom/android/incallui/SecVoiceCallButtonVCCFragment;

    invoke-virtual {v1}, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->extraVolumeClicked()V

    goto :goto_0

    :sswitch_5
    iget-object v1, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment$5;->this$0:Lcom/android/incallui/SecVoiceCallButtonVCCFragment;

    # invokes: Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->swisButtonClicked()V
    invoke-static {v1}, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->access$1500(Lcom/android/incallui/SecVoiceCallButtonVCCFragment;)V

    goto :goto_0

    :sswitch_6
    iget-object v1, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment$5;->this$0:Lcom/android/incallui/SecVoiceCallButtonVCCFragment;

    invoke-virtual {v1}, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "com.android.incallui"

    const-string v3, "VOCB"

    const-string v4, "BLTH"

    invoke-static {v1, v2, v3, v4}, Lcom/android/incallui/secutils/AppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment$5;->this$0:Lcom/android/incallui/SecVoiceCallButtonVCCFragment;

    invoke-virtual {v1}, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->bluetoothClicked()V

    goto :goto_0

    :sswitch_7
    iget-object v1, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment$5;->this$0:Lcom/android/incallui/SecVoiceCallButtonVCCFragment;

    invoke-virtual {v1}, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "com.android.incallui"

    const-string v3, "VOCB"

    const-string v4, "SPKR"

    invoke-static {v1, v2, v3, v4}, Lcom/android/incallui/secutils/AppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment$5;->this$0:Lcom/android/incallui/SecVoiceCallButtonVCCFragment;

    invoke-virtual {v1}, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v1}, Lcom/android/incallui/CallButtonPresenter;->speakerClicked()V

    goto/16 :goto_0

    :sswitch_8
    iget-object v1, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment$5;->this$0:Lcom/android/incallui/SecVoiceCallButtonVCCFragment;

    invoke-virtual {v1}, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v4, "com.android.incallui"

    const-string v5, "VOCB"

    const-string v6, "VOKP"

    invoke-static {v1, v4, v5, v6}, Lcom/android/incallui/secutils/AppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment$5;->this$0:Lcom/android/incallui/SecVoiceCallButtonVCCFragment;

    invoke-virtual {v1}, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CallButtonPresenter;

    iget-object v4, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment$5;->this$0:Lcom/android/incallui/SecVoiceCallButtonVCCFragment;

    invoke-virtual {v4}, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->isDialpadVisible()Z

    move-result v4

    if-nez v4, :cond_1

    :goto_1
    invoke-virtual {v1, v2}, Lcom/android/incallui/CallButtonPresenter;->showDialpadClicked(Z)V

    goto/16 :goto_0

    :cond_1
    move v2, v3

    goto :goto_1

    :sswitch_9
    iget-object v1, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment$5;->this$0:Lcom/android/incallui/SecVoiceCallButtonVCCFragment;

    invoke-virtual {v1}, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v4, "com.android.incallui"

    const-string v5, "VOCB"

    const-string v6, "MUTE"

    invoke-static {v1, v4, v5, v6}, Lcom/android/incallui/secutils/AppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment$5;->this$0:Lcom/android/incallui/SecVoiceCallButtonVCCFragment;

    invoke-virtual {v1}, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CallButtonPresenter;

    invoke-static {}, Lcom/android/incallui/AudioModeProvider;->getInstance()Lcom/android/incallui/AudioModeProvider;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/AudioModeProvider;->getMute()Z

    move-result v4

    if-nez v4, :cond_2

    :goto_2
    invoke-virtual {v1, v2}, Lcom/android/incallui/CallButtonPresenter;->muteClicked(Z)V

    goto/16 :goto_0

    :cond_2
    move v2, v3

    goto :goto_2

    :sswitch_a
    iget-object v1, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment$5;->this$0:Lcom/android/incallui/SecVoiceCallButtonVCCFragment;

    invoke-virtual {v1}, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v1}, Lcom/android/incallui/CallButtonPresenter;->endCallClicked()V

    goto/16 :goto_0

    :sswitch_b
    iget-object v1, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment$5;->this$0:Lcom/android/incallui/SecVoiceCallButtonVCCFragment;

    invoke-virtual {v1}, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "com.android.incallui"

    const-string v3, "BTNX"

    const-string v4, "Email"

    invoke-static {v1, v2, v3, v4}, Lcom/android/incallui/secutils/AppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment$5;->this$0:Lcom/android/incallui/SecVoiceCallButtonVCCFragment;

    # invokes: Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->emailClicked()V
    invoke-static {v1}, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->access$1600(Lcom/android/incallui/SecVoiceCallButtonVCCFragment;)V

    goto/16 :goto_0

    :sswitch_c
    iget-object v1, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment$5;->this$0:Lcom/android/incallui/SecVoiceCallButtonVCCFragment;

    invoke-virtual {v1}, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "com.android.incallui"

    const-string v3, "BTNX"

    const-string v4, "Message"

    invoke-static {v1, v2, v3, v4}, Lcom/android/incallui/secutils/AppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/PackageHelpers;->launchMessage()V

    goto/16 :goto_0

    :sswitch_d
    iget-object v1, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment$5;->this$0:Lcom/android/incallui/SecVoiceCallButtonVCCFragment;

    invoke-virtual {v1}, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "com.android.incallui"

    const-string v3, "BTNX"

    const-string v4, "Internet"

    invoke-static {v1, v2, v3, v4}, Lcom/android/incallui/secutils/AppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/PackageHelpers;->launchInternet()V

    goto/16 :goto_0

    :sswitch_e
    iget-object v1, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment$5;->this$0:Lcom/android/incallui/SecVoiceCallButtonVCCFragment;

    invoke-virtual {v1}, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "com.android.incallui"

    const-string v3, "BTNX"

    const-string v4, "Contact"

    invoke-static {v1, v2, v3, v4}, Lcom/android/incallui/secutils/AppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/PackageHelpers;->launchContacts()V

    goto/16 :goto_0

    :sswitch_f
    iget-object v1, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment$5;->this$0:Lcom/android/incallui/SecVoiceCallButtonVCCFragment;

    invoke-virtual {v1}, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "com.android.incallui"

    const-string v3, "BTNX"

    const-string v4, "Planner"

    invoke-static {v1, v2, v3, v4}, Lcom/android/incallui/secutils/AppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/PackageHelpers;->launchPlanner()V

    goto/16 :goto_0

    :sswitch_10
    iget-object v1, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment$5;->this$0:Lcom/android/incallui/SecVoiceCallButtonVCCFragment;

    invoke-virtual {v1}, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "com.android.incallui"

    const-string v3, "BTNX"

    const-string v4, "Memo"

    invoke-static {v1, v2, v3, v4}, Lcom/android/incallui/secutils/AppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/PackageHelpers;->launchMemo()V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f10002e -> :sswitch_9
        0x7f10002f -> :sswitch_8
        0x7f100241 -> :sswitch_3
        0x7f100245 -> :sswitch_2
        0x7f10024a -> :sswitch_4
        0x7f10024b -> :sswitch_6
        0x7f10024d -> :sswitch_7
        0x7f10024f -> :sswitch_a
        0x7f100256 -> :sswitch_0
        0x7f100257 -> :sswitch_1
        0x7f10025d -> :sswitch_b
        0x7f10025e -> :sswitch_c
        0x7f10025f -> :sswitch_d
        0x7f100261 -> :sswitch_e
        0x7f100262 -> :sswitch_f
        0x7f100263 -> :sswitch_10
        0x7f10028b -> :sswitch_5
    .end sparse-switch
.end method
