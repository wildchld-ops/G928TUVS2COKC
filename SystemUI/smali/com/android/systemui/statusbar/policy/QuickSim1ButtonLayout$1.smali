.class Lcom/android/systemui/statusbar/policy/QuickSim1ButtonLayout$1;
.super Landroid/content/BroadcastReceiver;
.source "QuickSim1ButtonLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/QuickSim1ButtonLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/QuickSim1ButtonLayout;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/QuickSim1ButtonLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/QuickSim1ButtonLayout$1;->this$0:Lcom/android/systemui/statusbar/policy/QuickSim1ButtonLayout;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10

    const v9, 0x1040395

    const/4 v8, 0x1

    const/4 v7, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v4, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/QuickSim1ButtonLayout$1;->this$0:Lcom/android/systemui/statusbar/policy/QuickSim1ButtonLayout;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/policy/QuickSim1ButtonLayout;->updateAirplaneMode()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v4, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/QuickSim1ButtonLayout$1;->this$0:Lcom/android/systemui/statusbar/policy/QuickSim1ButtonLayout;

    const-string v5, "subscription"

    invoke-virtual {p2, v5, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    # setter for: Lcom/android/systemui/statusbar/policy/QuickSim1ButtonLayout;->subId:I
    invoke-static {v4, v5}, Lcom/android/systemui/statusbar/policy/QuickSim1ButtonLayout;->access$002(Lcom/android/systemui/statusbar/policy/QuickSim1ButtonLayout;I)I

    sget-boolean v4, Lcom/android/systemui/statusbar/Feature;->mClusterForCHN:Z

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/QuickSim1ButtonLayout$1;->this$0:Lcom/android/systemui/statusbar/policy/QuickSim1ButtonLayout;

    const-string v5, "phone"

    invoke-virtual {p2, v5, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    # setter for: Lcom/android/systemui/statusbar/policy/QuickSim1ButtonLayout;->phoneId:I
    invoke-static {v4, v5}, Lcom/android/systemui/statusbar/policy/QuickSim1ButtonLayout;->access$102(Lcom/android/systemui/statusbar/policy/QuickSim1ButtonLayout;I)I

    :goto_1
    const-string v4, "QuickSim1Button"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SPN_STRINGS_UPDATED_ACTION:subId:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/QuickSim1ButtonLayout$1;->this$0:Lcom/android/systemui/statusbar/policy/QuickSim1ButtonLayout;

    # getter for: Lcom/android/systemui/statusbar/policy/QuickSim1ButtonLayout;->subId:I
    invoke-static {v6}, Lcom/android/systemui/statusbar/policy/QuickSim1ButtonLayout;->access$000(Lcom/android/systemui/statusbar/policy/QuickSim1ButtonLayout;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",phoneId:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/QuickSim1ButtonLayout$1;->this$0:Lcom/android/systemui/statusbar/policy/QuickSim1ButtonLayout;

    # getter for: Lcom/android/systemui/statusbar/policy/QuickSim1ButtonLayout;->phoneId:I
    invoke-static {v6}, Lcom/android/systemui/statusbar/policy/QuickSim1ButtonLayout;->access$100(Lcom/android/systemui/statusbar/policy/QuickSim1ButtonLayout;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/QuickSim1ButtonLayout$1;->this$0:Lcom/android/systemui/statusbar/policy/QuickSim1ButtonLayout;

    # getter for: Lcom/android/systemui/statusbar/policy/QuickSim1ButtonLayout;->phoneId:I
    invoke-static {v4}, Lcom/android/systemui/statusbar/policy/QuickSim1ButtonLayout;->access$100(Lcom/android/systemui/statusbar/policy/QuickSim1ButtonLayout;)I

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/QuickSim1ButtonLayout$1;->this$0:Lcom/android/systemui/statusbar/policy/QuickSim1ButtonLayout;

    const-string v5, "showSpn"

    invoke-virtual {p2, v5, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    # setter for: Lcom/android/systemui/statusbar/policy/QuickSim1ButtonLayout;->mShowSpn:Z
    invoke-static {v4, v5}, Lcom/android/systemui/statusbar/policy/QuickSim1ButtonLayout;->access$302(Lcom/android/systemui/statusbar/policy/QuickSim1ButtonLayout;Z)Z

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/QuickSim1ButtonLayout$1;->this$0:Lcom/android/systemui/statusbar/policy/QuickSim1ButtonLayout;

    const-string v5, "spn"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    # setter for: Lcom/android/systemui/statusbar/policy/QuickSim1ButtonLayout;->mSpn:Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/android/systemui/statusbar/policy/QuickSim1ButtonLayout;->access$402(Lcom/android/systemui/statusbar/policy/QuickSim1ButtonLayout;Ljava/lang/String;)Ljava/lang/String;

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/QuickSim1ButtonLayout$1;->this$0:Lcom/android/systemui/statusbar/policy/QuickSim1ButtonLayout;

    const-string v5, "showPlmn"

    invoke-virtual {p2, v5, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    # setter for: Lcom/android/systemui/statusbar/policy/QuickSim1ButtonLayout;->mShowPlmn:Z
    invoke-static {v4, v5}, Lcom/android/systemui/statusbar/policy/QuickSim1ButtonLayout;->access$502(Lcom/android/systemui/statusbar/policy/QuickSim1ButtonLayout;Z)Z

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/QuickSim1ButtonLayout$1;->this$0:Lcom/android/systemui/statusbar/policy/QuickSim1ButtonLayout;

    const-string v5, "plmn"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    # setter for: Lcom/android/systemui/statusbar/policy/QuickSim1ButtonLayout;->mPlmn:Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/android/systemui/statusbar/policy/QuickSim1ButtonLayout;->access$602(Lcom/android/systemui/statusbar/policy/QuickSim1ButtonLayout;Ljava/lang/String;)Ljava/lang/String;

    :cond_2
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/QuickSim1ButtonLayout$1;->this$0:Lcom/android/systemui/statusbar/policy/QuickSim1ButtonLayout;

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/QuickSim1ButtonLayout$1;->this$0:Lcom/android/systemui/statusbar/policy/QuickSim1ButtonLayout;

    # getter for: Lcom/android/systemui/statusbar/policy/QuickSim1ButtonLayout;->mShowSpn:Z
    invoke-static {v5}, Lcom/android/systemui/statusbar/policy/QuickSim1ButtonLayout;->access$300(Lcom/android/systemui/statusbar/policy/QuickSim1ButtonLayout;)Z

    move-result v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/QuickSim1ButtonLayout$1;->this$0:Lcom/android/systemui/statusbar/policy/QuickSim1ButtonLayout;

    # getter for: Lcom/android/systemui/statusbar/policy/QuickSim1ButtonLayout;->mSpn:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/systemui/statusbar/policy/QuickSim1ButtonLayout;->access$400(Lcom/android/systemui/statusbar/policy/QuickSim1ButtonLayout;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/QuickSim1ButtonLayout$1;->this$0:Lcom/android/systemui/statusbar/policy/QuickSim1ButtonLayout;

    # getter for: Lcom/android/systemui/statusbar/policy/QuickSim1ButtonLayout;->mShowPlmn:Z
    invoke-static {v7}, Lcom/android/systemui/statusbar/policy/QuickSim1ButtonLayout;->access$500(Lcom/android/systemui/statusbar/policy/QuickSim1ButtonLayout;)Z

    move-result v7

    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/QuickSim1ButtonLayout$1;->this$0:Lcom/android/systemui/statusbar/policy/QuickSim1ButtonLayout;

    # getter for: Lcom/android/systemui/statusbar/policy/QuickSim1ButtonLayout;->mPlmn:Ljava/lang/String;
    invoke-static {v8}, Lcom/android/systemui/statusbar/policy/QuickSim1ButtonLayout;->access$600(Lcom/android/systemui/statusbar/policy/QuickSim1ButtonLayout;)Ljava/lang/String;

    move-result-object v8

    # invokes: Lcom/android/systemui/statusbar/policy/QuickSim1ButtonLayout;->updateNetworkName(ZLjava/lang/String;ZLjava/lang/String;)V
    invoke-static {v4, v5, v6, v7, v8}, Lcom/android/systemui/statusbar/policy/QuickSim1ButtonLayout;->access$700(Lcom/android/systemui/statusbar/policy/QuickSim1ButtonLayout;ZLjava/lang/String;ZLjava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/QuickSim1ButtonLayout$1;->this$0:Lcom/android/systemui/statusbar/policy/QuickSim1ButtonLayout;

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/QuickSim1ButtonLayout$1;->this$0:Lcom/android/systemui/statusbar/policy/QuickSim1ButtonLayout;

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/QuickSim1ButtonLayout$1;->this$0:Lcom/android/systemui/statusbar/policy/QuickSim1ButtonLayout;

    # getter for: Lcom/android/systemui/statusbar/policy/QuickSim1ButtonLayout;->subId:I
    invoke-static {v6}, Lcom/android/systemui/statusbar/policy/QuickSim1ButtonLayout;->access$000(Lcom/android/systemui/statusbar/policy/QuickSim1ButtonLayout;)I

    move-result v6

    # invokes: Lcom/android/systemui/statusbar/policy/QuickSim1ButtonLayout;->getPhoneId(I)I
    invoke-static {v5, v6}, Lcom/android/systemui/statusbar/policy/QuickSim1ButtonLayout;->access$200(Lcom/android/systemui/statusbar/policy/QuickSim1ButtonLayout;I)I

    move-result v5

    # setter for: Lcom/android/systemui/statusbar/policy/QuickSim1ButtonLayout;->phoneId:I
    invoke-static {v4, v5}, Lcom/android/systemui/statusbar/policy/QuickSim1ButtonLayout;->access$102(Lcom/android/systemui/statusbar/policy/QuickSim1ButtonLayout;I)I

    goto/16 :goto_1

    :cond_4
    const-string v4, "android.intent.action.ACTION_DEFAULT_VOICE_SUBSCRIPTION_CHANGED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    :cond_5
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/QuickSim1ButtonLayout$1;->this$0:Lcom/android/systemui/statusbar/policy/QuickSim1ButtonLayout;

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/QuickSim1ButtonLayout$1;->this$0:Lcom/android/systemui/statusbar/policy/QuickSim1ButtonLayout;

    # getter for: Lcom/android/systemui/statusbar/policy/QuickSim1ButtonLayout;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/systemui/statusbar/policy/QuickSim1ButtonLayout;->access$900(Lcom/android/systemui/statusbar/policy/QuickSim1ButtonLayout;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "phone1_on"

    invoke-static {v5, v6, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    # setter for: Lcom/android/systemui/statusbar/policy/QuickSim1ButtonLayout;->simActive:I
    invoke-static {v4, v5}, Lcom/android/systemui/statusbar/policy/QuickSim1ButtonLayout;->access$802(Lcom/android/systemui/statusbar/policy/QuickSim1ButtonLayout;I)I

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/QuickSim1ButtonLayout$1;->this$0:Lcom/android/systemui/statusbar/policy/QuickSim1ButtonLayout;

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoicePhoneId()I

    move-result v5

    # setter for: Lcom/android/systemui/statusbar/policy/QuickSim1ButtonLayout;->currSimId:I
    invoke-static {v4, v5}, Lcom/android/systemui/statusbar/policy/QuickSim1ButtonLayout;->access$1002(Lcom/android/systemui/statusbar/policy/QuickSim1ButtonLayout;I)I

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/QuickSim1ButtonLayout$1;->this$0:Lcom/android/systemui/statusbar/policy/QuickSim1ButtonLayout;

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/QuickSim1ButtonLayout$1;->this$0:Lcom/android/systemui/statusbar/policy/QuickSim1ButtonLayout;

    # getter for: Lcom/android/systemui/statusbar/policy/QuickSim1ButtonLayout;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/systemui/statusbar/policy/QuickSim1ButtonLayout;->access$1200(Lcom/android/systemui/statusbar/policy/QuickSim1ButtonLayout;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "airplane_mode_on"

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    # setter for: Lcom/android/systemui/statusbar/policy/QuickSim1ButtonLayout;->mAirplaneMode:I
    invoke-static {v4, v5}, Lcom/android/systemui/statusbar/policy/QuickSim1ButtonLayout;->access$1102(Lcom/android/systemui/statusbar/policy/QuickSim1ButtonLayout;I)I

    const-string v4, "QuickSim1Button"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Action:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", currSimId:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/QuickSim1ButtonLayout$1;->this$0:Lcom/android/systemui/statusbar/policy/QuickSim1ButtonLayout;

    # getter for: Lcom/android/systemui/statusbar/policy/QuickSim1ButtonLayout;->currSimId:I
    invoke-static {v6}, Lcom/android/systemui/statusbar/policy/QuickSim1ButtonLayout;->access$1000(Lcom/android/systemui/statusbar/policy/QuickSim1ButtonLayout;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",simActive:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/QuickSim1ButtonLayout$1;->this$0:Lcom/android/systemui/statusbar/policy/QuickSim1ButtonLayout;

    # getter for: Lcom/android/systemui/statusbar/policy/QuickSim1ButtonLayout;->simActive:I
    invoke-static {v6}, Lcom/android/systemui/statusbar/policy/QuickSim1ButtonLayout;->access$800(Lcom/android/systemui/statusbar/policy/QuickSim1ButtonLayout;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/QuickSim1ButtonLayout$1;->this$0:Lcom/android/systemui/statusbar/policy/QuickSim1ButtonLayout;

    # getter for: Lcom/android/systemui/statusbar/policy/QuickSim1ButtonLayout;->mAirplaneMode:I
    invoke-static {v4}, Lcom/android/systemui/statusbar/policy/QuickSim1ButtonLayout;->access$1100(Lcom/android/systemui/statusbar/policy/QuickSim1ButtonLayout;)I

    move-result v4

    if-ne v4, v8, :cond_6

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/QuickSim1ButtonLayout$1;->this$0:Lcom/android/systemui/statusbar/policy/QuickSim1ButtonLayout;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/policy/QuickSim1ButtonLayout;->setDeactiveSimUI()V

    goto/16 :goto_0

    :cond_6
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/QuickSim1ButtonLayout$1;->this$0:Lcom/android/systemui/statusbar/policy/QuickSim1ButtonLayout;

    # getter for: Lcom/android/systemui/statusbar/policy/QuickSim1ButtonLayout;->simActive:I
    invoke-static {v4}, Lcom/android/systemui/statusbar/policy/QuickSim1ButtonLayout;->access$800(Lcom/android/systemui/statusbar/policy/QuickSim1ButtonLayout;)I

    move-result v4

    if-eqz v4, :cond_7

    sget-boolean v4, Lcom/android/systemui/statusbar/Feature;->CHN:Z

    if-nez v4, :cond_8

    sget-boolean v4, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-nez v4, :cond_8

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/QuickSim1ButtonLayout$1;->this$0:Lcom/android/systemui/statusbar/policy/QuickSim1ButtonLayout;

    # getter for: Lcom/android/systemui/statusbar/policy/QuickSim1ButtonLayout;->mPreferedVoice:I
    invoke-static {v4}, Lcom/android/systemui/statusbar/policy/QuickSim1ButtonLayout;->access$1300(Lcom/android/systemui/statusbar/policy/QuickSim1ButtonLayout;)I

    move-result v4

    if-nez v4, :cond_8

    :cond_7
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/QuickSim1ButtonLayout$1;->this$0:Lcom/android/systemui/statusbar/policy/QuickSim1ButtonLayout;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/policy/QuickSim1ButtonLayout;->setDeselectedSimUI()V

    goto/16 :goto_0

    :cond_8
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/QuickSim1ButtonLayout$1;->this$0:Lcom/android/systemui/statusbar/policy/QuickSim1ButtonLayout;

    # getter for: Lcom/android/systemui/statusbar/policy/QuickSim1ButtonLayout;->currSimId:I
    invoke-static {v4}, Lcom/android/systemui/statusbar/policy/QuickSim1ButtonLayout;->access$1000(Lcom/android/systemui/statusbar/policy/QuickSim1ButtonLayout;)I

    move-result v4

    if-nez v4, :cond_9

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/QuickSim1ButtonLayout$1;->this$0:Lcom/android/systemui/statusbar/policy/QuickSim1ButtonLayout;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/policy/QuickSim1ButtonLayout;->setSelectedSimUI()V

    goto/16 :goto_0

    :cond_9
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/QuickSim1ButtonLayout$1;->this$0:Lcom/android/systemui/statusbar/policy/QuickSim1ButtonLayout;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/policy/QuickSim1ButtonLayout;->setDeselectedSimUI()V

    goto/16 :goto_0

    :cond_a
    const-string v4, "com.samsung.settings.SIMCARD_MGT"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    const-string v4, "simcard_sim_id"

    invoke-virtual {p2, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const-string v4, "simcard_sim_icon"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v4, "simcard_sim_name"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "QuickSim1Button"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onReceive() - ACTION_SIM_MGT_CHANGED : simId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",simIconIndex="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",simName="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/QuickSim1ButtonLayout$1;->this$0:Lcom/android/systemui/statusbar/policy/QuickSim1ButtonLayout;

    # invokes: Lcom/android/systemui/statusbar/policy/QuickSim1ButtonLayout;->updateDualSimUiBySettings(ILjava/lang/String;Ljava/lang/String;)V
    invoke-static {v4, v2, v1, v3}, Lcom/android/systemui/statusbar/policy/QuickSim1ButtonLayout;->access$1400(Lcom/android/systemui/statusbar/policy/QuickSim1ButtonLayout;ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_b
    const-string v4, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "QuickSim1Button"

    const-string v5, "onReceive() - ACTION_LOCALE_CHANGED : "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/systemui/statusbar/Feature;->getOperator()Ljava/lang/String;

    move-result-object v4

    const-string v5, "CTC"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/QuickSim1ButtonLayout$1;->this$0:Lcom/android/systemui/statusbar/policy/QuickSim1ButtonLayout;

    # getter for: Lcom/android/systemui/statusbar/policy/QuickSim1ButtonLayout;->mQuickSim1Text:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/android/systemui/statusbar/policy/QuickSim1ButtonLayout;->access$1600(Lcom/android/systemui/statusbar/policy/QuickSim1ButtonLayout;)Landroid/widget/TextView;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/QuickSim1ButtonLayout$1;->this$0:Lcom/android/systemui/statusbar/policy/QuickSim1ButtonLayout;

    # getter for: Lcom/android/systemui/statusbar/policy/QuickSim1ButtonLayout;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/systemui/statusbar/policy/QuickSim1ButtonLayout;->access$1500(Lcom/android/systemui/statusbar/policy/QuickSim1ButtonLayout;)Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0d0207

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_c
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/QuickSim1ButtonLayout$1;->this$0:Lcom/android/systemui/statusbar/policy/QuickSim1ButtonLayout;

    # getter for: Lcom/android/systemui/statusbar/policy/QuickSim1ButtonLayout;->carrierText:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/systemui/statusbar/policy/QuickSim1ButtonLayout;->access$1700(Lcom/android/systemui/statusbar/policy/QuickSim1ButtonLayout;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_d

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/QuickSim1ButtonLayout$1;->this$0:Lcom/android/systemui/statusbar/policy/QuickSim1ButtonLayout;

    # getter for: Lcom/android/systemui/statusbar/policy/QuickSim1ButtonLayout;->carrierText:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/systemui/statusbar/policy/QuickSim1ButtonLayout;->access$1700(Lcom/android/systemui/statusbar/policy/QuickSim1ButtonLayout;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/QuickSim1ButtonLayout$1;->this$0:Lcom/android/systemui/statusbar/policy/QuickSim1ButtonLayout;

    # getter for: Lcom/android/systemui/statusbar/policy/QuickSim1ButtonLayout;->mNetworkNameDefault:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/systemui/statusbar/policy/QuickSim1ButtonLayout;->access$1800(Lcom/android/systemui/statusbar/policy/QuickSim1ButtonLayout;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/QuickSim1ButtonLayout$1;->this$0:Lcom/android/systemui/statusbar/policy/QuickSim1ButtonLayout;

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/QuickSim1ButtonLayout$1;->this$0:Lcom/android/systemui/statusbar/policy/QuickSim1ButtonLayout;

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/QuickSim1ButtonLayout$1;->this$0:Lcom/android/systemui/statusbar/policy/QuickSim1ButtonLayout;

    # getter for: Lcom/android/systemui/statusbar/policy/QuickSim1ButtonLayout;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/systemui/statusbar/policy/QuickSim1ButtonLayout;->access$1900(Lcom/android/systemui/statusbar/policy/QuickSim1ButtonLayout;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    # setter for: Lcom/android/systemui/statusbar/policy/QuickSim1ButtonLayout;->carrierText:Ljava/lang/String;
    invoke-static {v5, v6}, Lcom/android/systemui/statusbar/policy/QuickSim1ButtonLayout;->access$1702(Lcom/android/systemui/statusbar/policy/QuickSim1ButtonLayout;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    # setter for: Lcom/android/systemui/statusbar/policy/QuickSim1ButtonLayout;->mNetworkNameDefault:Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/android/systemui/statusbar/policy/QuickSim1ButtonLayout;->access$1802(Lcom/android/systemui/statusbar/policy/QuickSim1ButtonLayout;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    :cond_d
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/QuickSim1ButtonLayout$1;->this$0:Lcom/android/systemui/statusbar/policy/QuickSim1ButtonLayout;

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/QuickSim1ButtonLayout$1;->this$0:Lcom/android/systemui/statusbar/policy/QuickSim1ButtonLayout;

    # getter for: Lcom/android/systemui/statusbar/policy/QuickSim1ButtonLayout;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/systemui/statusbar/policy/QuickSim1ButtonLayout;->access$2000(Lcom/android/systemui/statusbar/policy/QuickSim1ButtonLayout;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    # setter for: Lcom/android/systemui/statusbar/policy/QuickSim1ButtonLayout;->mNetworkNameDefault:Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/android/systemui/statusbar/policy/QuickSim1ButtonLayout;->access$1802(Lcom/android/systemui/statusbar/policy/QuickSim1ButtonLayout;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0
.end method
