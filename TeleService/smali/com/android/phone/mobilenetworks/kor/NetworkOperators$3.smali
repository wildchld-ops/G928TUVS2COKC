.class Lcom/android/phone/mobilenetworks/kor/NetworkOperators$3;
.super Landroid/os/Handler;
.source "NetworkOperators.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/mobilenetworks/kor/NetworkOperators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperators;


# direct methods
.method constructor <init>(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$3;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperators;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 20
    .param p1    # Landroid/os/Message;

    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->what:I

    sparse-switch v14, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    const-string v14, "NetworkOperators"

    const-string v15, "Search completed."

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$3;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperators;

    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v14, Ljava/util/List;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v16, v0

    move/from16 v0, v16

    # invokes: Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->networksListLoaded(Ljava/util/List;I)V
    invoke-static {v15, v14, v0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->access$600(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;Ljava/util/List;I)V

    goto :goto_0

    :sswitch_1
    const-string v14, "hideProgressPanel___EVENT_NETWORK_SELECTION_DONE"

    # invokes: Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->log(Ljava/lang/String;)V
    invoke-static {v14}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->access$700(Ljava/lang/String;)V

    :try_start_0
    const-string v14, "dismissDialog___EVENT_NETWORK_SELECTION_DONE"

    # invokes: Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->log(Ljava/lang/String;)V
    invoke-static {v14}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->access$700(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$3;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperators;

    const/16 v15, 0x64

    invoke-virtual {v14, v15}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->dismissDialog(I)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$3;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperators;

    const/16 v15, 0x64

    invoke-virtual {v14, v15}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->removeDialog(I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$3;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperators;

    invoke-virtual {v14}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v10

    const/4 v14, 0x1

    invoke-virtual {v10, v14}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    const/4 v8, 0x0

    :goto_2
    invoke-virtual {v10}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v14

    if-ge v8, v14, :cond_2

    invoke-virtual {v10, v8}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v3

    const-string v14, "disabled_pref_key"

    invoke-virtual {v3}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    const/4 v14, 0x0

    invoke-virtual {v3, v14}, Landroid/preference/Preference;->setEnabled(Z)V

    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_2
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    iget-object v14, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v14, :cond_3

    const-string v14, "Manual network selection failed!"

    # invokes: Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->log(Ljava/lang/String;)V
    invoke-static {v14}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->access$700(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$3;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperators;

    iget-object v15, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    # invokes: Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->displayNetworkSelectionFailed(Ljava/lang/Throwable;)V
    invoke-static {v14, v15}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->access$800(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;Ljava/lang/Throwable;)V

    :goto_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$3;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperators;

    invoke-virtual {v14}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "auto_select_network"

    const/16 v16, 0x0

    invoke-static/range {v14 .. v16}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    :cond_3
    const-string v14, "Manual network selection succeeded!"

    # invokes: Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->log(Ljava/lang/String;)V
    invoke-static {v14}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->access$700(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$3;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperators;

    const/4 v15, 0x1

    # setter for: Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mGotoHomeAfterselection:Z
    invoke-static {v14, v15}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->access$902(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;Z)Z

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$3;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperators;

    const/4 v15, 0x0

    # invokes: Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->displayNetworkSelectionSucceeded(I)V
    invoke-static {v14, v15}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->access$1000(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;I)V

    goto :goto_3

    :sswitch_2
    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->what:I

    const/16 v15, 0x12c

    if-ne v14, v15, :cond_6

    const-string v14, "hideProgressPanel___EVENT_AUTO_SELECT_DONE"

    # invokes: Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->log(Ljava/lang/String;)V
    invoke-static {v14}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->access$700(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$3;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperators;

    const/16 v15, 0x12c

    invoke-virtual {v14, v15}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->removeDialog(I)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$3;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperators;

    const/4 v15, 0x0

    # setter for: Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mGotoHomeAfterselection:Z
    invoke-static {v14, v15}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->access$902(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;Z)Z

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "set mGotoHomeAfterselection to "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$3;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperators;

    # getter for: Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mGotoHomeAfterselection:Z
    invoke-static {v15}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->access$900(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;)Z

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    # invokes: Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->log(Ljava/lang/String;)V
    invoke-static {v14}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->access$700(Ljava/lang/String;)V

    :cond_4
    :goto_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$3;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperators;

    invoke-virtual {v14}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v14

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    iget-object v14, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v14, :cond_7

    const-string v14, "Automatic network selection failed!"

    # invokes: Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->log(Ljava/lang/String;)V
    invoke-static {v14}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->access$700(Ljava/lang/String;)V

    const-string v14, "feature_lgt"

    invoke-static {v14}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_5

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$3;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperators;

    invoke-virtual {v14}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "auto_select_network"

    const/16 v16, 0x1

    invoke-static/range {v14 .. v16}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$3;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperators;

    iget-object v15, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    # invokes: Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->displayNetworkSelectionFailed(Ljava/lang/Throwable;)V
    invoke-static {v14, v15}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->access$800(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :cond_6
    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->what:I

    const/16 v15, 0x190

    if-ne v14, v15, :cond_4

    const-string v14, "hideProgressPanel___EVENT_AUTO_SELECT_DONE_AFTER_FAIL"

    # invokes: Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->log(Ljava/lang/String;)V
    invoke-static {v14}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->access$700(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$3;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperators;

    const/16 v15, 0x190

    invoke-virtual {v14, v15}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->removeDialog(I)V

    goto :goto_4

    :cond_7
    const-string v14, "Automatic network selection succeeded!"

    # invokes: Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->log(Ljava/lang/String;)V
    invoke-static {v14}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->access$700(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$3;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperators;

    invoke-virtual {v14}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "auto_select_network"

    const/16 v16, 0x1

    invoke-static/range {v14 .. v16}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->what:I

    const/16 v15, 0x12c

    if-ne v14, v15, :cond_9

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$3;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperators;

    # getter for: Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->resetAll:Z
    invoke-static {v14}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->access$200(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;)Z

    move-result v14

    if-eqz v14, :cond_8

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$3;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperators;

    const/4 v15, 0x1

    # setter for: Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->isFlagResetAll:Z
    invoke-static {v14, v15}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->access$1102(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;Z)Z

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$3;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperators;

    const/4 v15, 0x0

    # setter for: Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->isSetIMSI:I
    invoke-static {v14, v15}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->access$402(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;I)I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$3;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperators;

    # invokes: Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->setIMSISelection()V
    invoke-static {v14}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->access$500(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;)V

    goto/16 :goto_0

    :cond_8
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$3;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperators;

    const/4 v15, 0x0

    # invokes: Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->displayNetworkSelectionSucceeded(I)V
    invoke-static {v14, v15}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->access$1000(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;I)V

    goto/16 :goto_0

    :cond_9
    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->what:I

    const/16 v15, 0x190

    if-ne v14, v15, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$3;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperators;

    const/4 v15, 0x1

    # invokes: Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->displayNetworkSelectionSucceeded(I)V
    invoke-static {v14, v15}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->access$1000(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;I)V

    goto/16 :goto_0

    :sswitch_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$3;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperators;

    # invokes: Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->loadNetworksList()V
    invoke-static {v14}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->access$1200(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;)V

    goto/16 :goto_0

    :sswitch_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$3;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperators;

    const/4 v15, 0x0

    # invokes: Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->selectNetworkAutomatic(I)V
    invoke-static {v14, v15}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->access$1300(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;I)V

    goto/16 :goto_0

    :sswitch_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$3;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperators;

    # invokes: Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->selectList()V
    invoke-static {v14}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->access$1400(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;)V

    goto/16 :goto_0

    :sswitch_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$3;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperators;

    # getter for: Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v14}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->access$1500(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;)Lcom/android/internal/telephony/Phone;

    move-result-object v14

    invoke-interface {v14}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v11

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "mNotupdateSelectionState = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$3;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperators;

    # getter for: Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mNotupdateSelectionState:Z
    invoke-static {v15}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->access$1600(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;)Z

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    # invokes: Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->log(Ljava/lang/String;)V
    invoke-static {v14}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->access$700(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$3;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperators;

    # getter for: Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mNotupdateSelectionState:Z
    invoke-static {v14}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->access$1600(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;)Z

    move-result v14

    if-nez v14, :cond_0

    const-string v14, "feature_lgt"

    invoke-static {v14}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_12

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$3;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperators;

    invoke-virtual {v14}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->getApplicationContext()Landroid/content/Context;

    move-result-object v14

    invoke-static {v14}, Lcom/android/phone/mobilenetworks/MobileNetworkUtils;->isRoamingArea(Landroid/content/Context;)Z

    move-result v14

    if-eqz v14, :cond_11

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "mSelect = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    # getter for: Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mSelect:I
    invoke-static {}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->access$1700()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    # invokes: Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->log(Ljava/lang/String;)V
    invoke-static {v14}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->access$700(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/phone/mobilenetworks/MobileNetworkUtils;->isSktSim()Z

    move-result v14

    if-nez v14, :cond_a

    invoke-static {}, Lcom/android/phone/mobilenetworks/MobileNetworkUtils;->isKtSim()Z

    move-result v14

    if-nez v14, :cond_a

    invoke-static {}, Lcom/android/phone/mobilenetworks/MobileNetworkUtils;->isLgtSim()Z

    move-result v14

    if-eqz v14, :cond_b

    :cond_a
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$3;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperators;

    invoke-virtual {v14}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->isLteRoamingOn()Z

    move-result v14

    if-eqz v14, :cond_f

    :cond_b
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$3;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperators;

    # getter for: Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mSearchManualButton:Landroid/preference/CheckBoxPreference;
    invoke-static {v14}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->access$1800(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;)Landroid/preference/CheckBoxPreference;

    move-result-object v14

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$3;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperators;

    # getter for: Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mIMSISettings:Landroid/preference/PreferenceCategory;
    invoke-static {v14}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->access$1900(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;)Landroid/preference/PreferenceCategory;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/preference/PreferenceCategory;->setEnabled(Z)V

    :cond_c
    :goto_5
    invoke-virtual {v11}, Landroid/telephony/ServiceState;->getIsManualSelection()Z

    move-result v14

    if-nez v14, :cond_d

    const-string v14, "1"

    const-string v15, "ril.IsManualSelection"

    invoke-static {v15}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_19

    :cond_d
    const-string v14, "feature_lgt"

    invoke-static {v14}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_16

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$3;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperators;

    # getter for: Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mSearchManualButton:Landroid/preference/CheckBoxPreference;
    invoke-static {v14}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->access$1800(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;)Landroid/preference/CheckBoxPreference;

    move-result-object v14

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    :cond_e
    :goto_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$3;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperators;

    invoke-virtual {v14}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "auto_select_network"

    const/16 v16, 0x0

    invoke-static/range {v14 .. v16}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    :cond_f
    # getter for: Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mSelect:I
    invoke-static {}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->access$1700()I

    move-result v14

    if-nez v14, :cond_10

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$3;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperators;

    # getter for: Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mSearchManualButton:Landroid/preference/CheckBoxPreference;
    invoke-static {v14}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->access$1800(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;)Landroid/preference/CheckBoxPreference;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_5

    :cond_10
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$3;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperators;

    # getter for: Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mSearchManualButton:Landroid/preference/CheckBoxPreference;
    invoke-static {v14}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->access$1800(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;)Landroid/preference/CheckBoxPreference;

    move-result-object v14

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_5

    :cond_11
    invoke-static {}, Lcom/android/phone/mobilenetworks/MobileNetworkUtils;->isSktSim()Z

    move-result v14

    if-nez v14, :cond_c

    invoke-static {}, Lcom/android/phone/mobilenetworks/MobileNetworkUtils;->isKtSim()Z

    move-result v14

    if-nez v14, :cond_c

    invoke-static {}, Lcom/android/phone/mobilenetworks/MobileNetworkUtils;->isLgtSim()Z

    move-result v14

    if-nez v14, :cond_c

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$3;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperators;

    # getter for: Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mSearchManualButton:Landroid/preference/CheckBoxPreference;
    invoke-static {v14}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->access$1800(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;)Landroid/preference/CheckBoxPreference;

    move-result-object v14

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_5

    :cond_12
    const-string v14, "menu_simplification"

    invoke-static {v14}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_14

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$3;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperators;

    # getter for: Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mAutoSelectRadioButton:Lcom/android/phone/mobilenetworks/kor/RadioButtonPreference;
    invoke-static {v14}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->access$2000(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;)Lcom/android/phone/mobilenetworks/kor/RadioButtonPreference;

    move-result-object v14

    if-eqz v14, :cond_13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$3;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperators;

    # getter for: Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mAutoSelectRadioButton:Lcom/android/phone/mobilenetworks/kor/RadioButtonPreference;
    invoke-static {v14}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->access$2000(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;)Lcom/android/phone/mobilenetworks/kor/RadioButtonPreference;

    move-result-object v14

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Lcom/android/phone/mobilenetworks/kor/RadioButtonPreference;->setEnabled(Z)V

    :cond_13
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$3;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperators;

    # getter for: Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mManualSelectRadioButton:Lcom/android/phone/mobilenetworks/kor/RadioButtonPreference;
    invoke-static {v14}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->access$2100(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;)Lcom/android/phone/mobilenetworks/kor/RadioButtonPreference;

    move-result-object v14

    if-eqz v14, :cond_c

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$3;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperators;

    # getter for: Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mManualSelectRadioButton:Lcom/android/phone/mobilenetworks/kor/RadioButtonPreference;
    invoke-static {v14}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->access$2100(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;)Lcom/android/phone/mobilenetworks/kor/RadioButtonPreference;

    move-result-object v14

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Lcom/android/phone/mobilenetworks/kor/RadioButtonPreference;->setEnabled(Z)V

    goto/16 :goto_5

    :cond_14
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$3;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperators;

    # getter for: Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mAutoSelect:Landroid/preference/CheckBoxPreference;
    invoke-static {v14}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->access$2200(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;)Landroid/preference/CheckBoxPreference;

    move-result-object v14

    if-eqz v14, :cond_15

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$3;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperators;

    # getter for: Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mAutoSelect:Landroid/preference/CheckBoxPreference;
    invoke-static {v14}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->access$2200(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;)Landroid/preference/CheckBoxPreference;

    move-result-object v14

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    :cond_15
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$3;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperators;

    # getter for: Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mSearchButton:Landroid/preference/CheckBoxPreference;
    invoke-static {v14}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->access$2300(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;)Landroid/preference/CheckBoxPreference;

    move-result-object v14

    if-eqz v14, :cond_c

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$3;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperators;

    # getter for: Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mSearchButton:Landroid/preference/CheckBoxPreference;
    invoke-static {v14}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->access$2300(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;)Landroid/preference/CheckBoxPreference;

    move-result-object v14

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto/16 :goto_5

    :cond_16
    const-string v14, "menu_simplification"

    invoke-static {v14}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_17

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$3;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperators;

    # getter for: Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mManualSelectRadioButton:Lcom/android/phone/mobilenetworks/kor/RadioButtonPreference;
    invoke-static {v14}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->access$2100(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;)Lcom/android/phone/mobilenetworks/kor/RadioButtonPreference;

    move-result-object v14

    if-eqz v14, :cond_e

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$3;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperators;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$3;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperators;

    # getter for: Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mManualSelectRadioButton:Lcom/android/phone/mobilenetworks/kor/RadioButtonPreference;
    invoke-static {v15}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->access$2100(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;)Lcom/android/phone/mobilenetworks/kor/RadioButtonPreference;

    move-result-object v15

    # invokes: Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->updateRadioButtons(Lcom/android/phone/mobilenetworks/kor/RadioButtonPreference;)V
    invoke-static {v14, v15}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->access$2400(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;Lcom/android/phone/mobilenetworks/kor/RadioButtonPreference;)V

    goto/16 :goto_6

    :cond_17
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$3;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperators;

    # getter for: Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mAutoSelect:Landroid/preference/CheckBoxPreference;
    invoke-static {v14}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->access$2200(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;)Landroid/preference/CheckBoxPreference;

    move-result-object v14

    if-eqz v14, :cond_18

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$3;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperators;

    # getter for: Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mAutoSelect:Landroid/preference/CheckBoxPreference;
    invoke-static {v14}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->access$2200(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;)Landroid/preference/CheckBoxPreference;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    :cond_18
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$3;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperators;

    # getter for: Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mSearchButton:Landroid/preference/CheckBoxPreference;
    invoke-static {v14}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->access$2300(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;)Landroid/preference/CheckBoxPreference;

    move-result-object v14

    if-eqz v14, :cond_e

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$3;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperators;

    # getter for: Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mSearchButton:Landroid/preference/CheckBoxPreference;
    invoke-static {v14}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->access$2300(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;)Landroid/preference/CheckBoxPreference;

    move-result-object v14

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_6

    :cond_19
    const-string v14, "feature_lgt"

    invoke-static {v14}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_1b

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$3;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperators;

    # getter for: Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mSearchManualButton:Landroid/preference/CheckBoxPreference;
    invoke-static {v14}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->access$1800(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;)Landroid/preference/CheckBoxPreference;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    :cond_1a
    :goto_7
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$3;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperators;

    invoke-virtual {v14}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "auto_select_network"

    const/16 v16, 0x1

    invoke-static/range {v14 .. v16}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    :cond_1b
    const-string v14, "menu_simplification"

    invoke-static {v14}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_1c

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$3;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperators;

    # getter for: Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mAutoSelectRadioButton:Lcom/android/phone/mobilenetworks/kor/RadioButtonPreference;
    invoke-static {v14}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->access$2000(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;)Lcom/android/phone/mobilenetworks/kor/RadioButtonPreference;

    move-result-object v14

    if-eqz v14, :cond_1a

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$3;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperators;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$3;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperators;

    # getter for: Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mAutoSelectRadioButton:Lcom/android/phone/mobilenetworks/kor/RadioButtonPreference;
    invoke-static {v15}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->access$2000(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;)Lcom/android/phone/mobilenetworks/kor/RadioButtonPreference;

    move-result-object v15

    # invokes: Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->updateRadioButtons(Lcom/android/phone/mobilenetworks/kor/RadioButtonPreference;)V
    invoke-static {v14, v15}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->access$2400(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;Lcom/android/phone/mobilenetworks/kor/RadioButtonPreference;)V

    goto :goto_7

    :cond_1c
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$3;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperators;

    # getter for: Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mAutoSelect:Landroid/preference/CheckBoxPreference;
    invoke-static {v14}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->access$2200(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;)Landroid/preference/CheckBoxPreference;

    move-result-object v14

    if-eqz v14, :cond_1d

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$3;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperators;

    # getter for: Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mAutoSelect:Landroid/preference/CheckBoxPreference;
    invoke-static {v14}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->access$2200(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;)Landroid/preference/CheckBoxPreference;

    move-result-object v14

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    :cond_1d
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$3;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperators;

    # getter for: Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mSearchButton:Landroid/preference/CheckBoxPreference;
    invoke-static {v14}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->access$2300(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;)Landroid/preference/CheckBoxPreference;

    move-result-object v14

    if-eqz v14, :cond_1a

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$3;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperators;

    # getter for: Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mSearchButton:Landroid/preference/CheckBoxPreference;
    invoke-static {v14}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->access$2300(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;)Landroid/preference/CheckBoxPreference;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_7

    :sswitch_7
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    # getter for: Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mStartTimeoutTime:J
    invoke-static {}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->access$2500()J

    move-result-wide v14

    sub-long v4, v14, v6

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$3;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperators;

    iget-object v14, v14, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->dialog:Landroid/app/ProgressDialog;

    if-eqz v14, :cond_1f

    const-wide/16 v14, 0x0

    cmp-long v14, v4, v14

    if-lez v14, :cond_1e

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$3;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperators;

    iget-object v14, v14, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->dialog:Landroid/app/ProgressDialog;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$3;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperators;

    const v16, 0x7f0a07e3

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$3;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperators;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    # invokes: Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->getTimeoutNewEntry(J)Ljava/lang/String;
    invoke-static {v0, v4, v5}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->access$2600(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;J)Ljava/lang/String;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$3;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperators;

    move-object/from16 v19, v0

    # getter for: Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mSearchPLMNDmin:I
    invoke-static/range {v19 .. v19}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->access$2700(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;)I

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    invoke-virtual/range {v15 .. v17}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$3;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperators;

    # getter for: Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mHandler:Landroid/os/Handler;
    invoke-static {v14}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->access$2800(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;)Landroid/os/Handler;

    move-result-object v14

    const/16 v15, 0x7d3

    const-wide/16 v16, 0x3e8

    invoke-virtual/range {v14 .. v17}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    :cond_1e
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$3;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperators;

    const/16 v15, 0x258

    invoke-virtual {v14, v15}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->removeDialog(I)V

    goto/16 :goto_0

    :cond_1f
    const-string v14, "menu_simplification"

    invoke-static {v14}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$3;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperators;

    # getter for: Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mProgressbarSearchNetwork:Lcom/android/phone/mobilenetworks/kor/ProcessStatsPreference;
    invoke-static {v14}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->access$2900(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;)Lcom/android/phone/mobilenetworks/kor/ProcessStatsPreference;

    move-result-object v14

    if-eqz v14, :cond_0

    const-wide/16 v14, 0x0

    cmp-long v14, v4, v14

    if-lez v14, :cond_0

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$3;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperators;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$3;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperators;

    move-object/from16 v16, v0

    # invokes: Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->getNetworkSelectMsg()I
    invoke-static/range {v16 .. v16}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->access$3000(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;)I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$3;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperators;

    const v16, 0x7f0a07e3

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$3;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperators;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    # invokes: Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->getTimeoutNewEntry(J)Ljava/lang/String;
    invoke-static {v0, v4, v5}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->access$2600(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;J)Ljava/lang/String;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$3;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperators;

    move-object/from16 v19, v0

    # getter for: Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mSearchPLMNDmin:I
    invoke-static/range {v19 .. v19}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->access$2700(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;)I

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    invoke-virtual/range {v15 .. v17}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$3;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperators;

    # getter for: Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mProgressbarSearchNetwork:Lcom/android/phone/mobilenetworks/kor/ProcessStatsPreference;
    invoke-static {v14}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->access$2900(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;)Lcom/android/phone/mobilenetworks/kor/ProcessStatsPreference;

    move-result-object v14

    invoke-virtual {v14, v13}, Lcom/android/phone/mobilenetworks/kor/ProcessStatsPreference;->setTitle(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$3;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperators;

    # getter for: Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mHandler:Landroid/os/Handler;
    invoke-static {v14}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->access$2800(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;)Landroid/os/Handler;

    move-result-object v14

    const/16 v15, 0x7d3

    const-wide/16 v16, 0x3e8

    invoke-virtual/range {v14 .. v17}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    :sswitch_8
    const-string v14, "EVENT_EF_WRITE_COMPLETED"

    # invokes: Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->log(Ljava/lang/String;)V
    invoke-static {v14}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->access$700(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$3;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperators;

    # getter for: Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->isSetIMSI:I
    invoke-static {v14}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->access$400(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;)I

    move-result v14

    if-eqz v14, :cond_21

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$3;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperators;

    # getter for: Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v14}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->access$1500(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;)Lcom/android/internal/telephony/Phone;

    move-result-object v14

    const/4 v15, 0x0

    invoke-interface {v14, v15}, Lcom/android/internal/telephony/Phone;->setRadioPower(Z)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$3;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperators;

    # getter for: Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mEfRoaming:Ljava/lang/String;
    invoke-static {v14}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->access$3100(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;)Ljava/lang/String;

    move-result-object v14

    const-string v15, "gsm.sim.roaming"

    invoke-static {v15}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_20

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$3;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperators;

    # invokes: Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->sendImsiStatusChangeNoti()V
    invoke-static {v14}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->access$3200(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$3;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperators;

    # invokes: Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->networkSelectAuto()V
    invoke-static {v14}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->access$3300(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;)V

    goto/16 :goto_0

    :cond_20
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$3;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperators;

    # getter for: Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mHandler:Landroid/os/Handler;
    invoke-static {v14}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->access$2800(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;)Landroid/os/Handler;

    move-result-object v14

    const/16 v15, 0x2bc

    const-wide/16 v16, 0xbb8

    invoke-virtual/range {v14 .. v17}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    :cond_21
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$3;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperators;

    # getter for: Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->resetAll:Z
    invoke-static {v14}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->access$200(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;)Z

    move-result v14

    if-nez v14, :cond_22

    const-string v14, "Set Auto send oemapi_domestic_multi_imsi_change_set"

    # invokes: Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->log(Ljava/lang/String;)V
    invoke-static {v14}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->access$700(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$3;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperators;

    # invokes: Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->sendImsiStatusChangeNoti()V
    invoke-static {v14}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->access$3200(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$3;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperators;

    # invokes: Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->getSelectedBandMode()V
    invoke-static {v14}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->access$3400(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;)V

    goto/16 :goto_0

    :cond_22
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$3;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperators;

    # getter for: Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mHandler:Landroid/os/Handler;
    invoke-static {v14}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->access$2800(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;)Landroid/os/Handler;

    move-result-object v14

    const/16 v15, 0x2bc

    const-wide/16 v16, 0xbb8

    invoke-virtual/range {v14 .. v17}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    :sswitch_9
    const-string v14, "EVENT_EF_WRITE_COMPLETED_DELAY"

    # invokes: Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->log(Ljava/lang/String;)V
    invoke-static {v14}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->access$700(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$3;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperators;

    const/16 v15, 0x384

    invoke-virtual {v14, v15}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->removeDialog(I)V

    const-string v14, "gsm.sim.roaming"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$3;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperators;

    # getter for: Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mEfRoaming:Ljava/lang/String;
    invoke-static {v15}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->access$3100(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$3;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperators;

    # invokes: Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->reboot()V
    invoke-static {v14}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->access$3500(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;)V

    goto/16 :goto_0

    :sswitch_a
    new-instance v14, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$3$1;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$3$1;-><init>(Lcom/android/phone/mobilenetworks/kor/NetworkOperators$3;)V

    invoke-virtual {v14}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$3$1;->start()V

    goto/16 :goto_0

    :sswitch_b
    const-string v14, "EVENT_BAND_SELECTED_INFORMED"

    # invokes: Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->log(Ljava/lang/String;)V
    invoke-static {v14}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->access$700(Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$3;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperators;

    # invokes: Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->setAutoBandMode(Landroid/os/AsyncResult;)V
    invoke-static {v14, v2}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->access$3600(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    :sswitch_c
    const-string v14, "ril.roaming.networkmode"

    const-string v15, "AUTO"

    invoke-static {v14, v15}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$3;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperators;

    # getter for: Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v14}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->access$1500(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;)Lcom/android/internal/telephony/Phone;

    move-result-object v14

    invoke-interface {v14}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$3;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperators;

    # invokes: Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->sendImsiStatusChangeNotiForNoWait()V
    invoke-static {v14}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->access$3700(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$3;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperators;

    # invokes: Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->networkSelectAuto()V
    invoke-static {v14}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->access$3300(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;)V

    goto/16 :goto_0

    :sswitch_d
    const-string v14, "ril.autonetwork"

    const-string v15, "1"

    invoke-static {v14, v15}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$3;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperators;

    # getter for: Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mHandler:Landroid/os/Handler;
    invoke-static {v14}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->access$2800(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;)Landroid/os/Handler;

    move-result-object v14

    const/16 v15, 0x2bc

    const-wide/16 v16, 0xbb8

    invoke-virtual/range {v14 .. v17}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    :sswitch_e
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$3;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperators;

    # invokes: Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->checkDataConnectionSearchButton()V
    invoke-static {v14}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->access$3800(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;)V

    goto/16 :goto_0

    :sswitch_f
    const-string v14, "NETWORK_START_SEARCH_FOR_SWITCH_BUTTON"

    # invokes: Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->log(Ljava/lang/String;)V
    invoke-static {v14}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->access$700(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$3;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperators;

    invoke-virtual {v14}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$3;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperators;

    # getter for: Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mCategorySearchNetwork:Landroid/preference/PreferenceCategory;
    invoke-static {v14}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->access$3900(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;)Landroid/preference/PreferenceCategory;

    move-result-object v14

    invoke-virtual {v9, v14}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$3;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperators;

    # getter for: Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mCurrentOperator:Landroid/preference/PreferenceCategory;
    invoke-static {v14}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->access$4000(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;)Landroid/preference/PreferenceCategory;

    move-result-object v14

    if-eqz v14, :cond_23

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$3;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperators;

    # getter for: Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mCurrentOperator:Landroid/preference/PreferenceCategory;
    invoke-static {v14}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->access$4000(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;)Landroid/preference/PreferenceCategory;

    move-result-object v14

    invoke-virtual {v9, v14}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_23
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$3;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperators;

    new-instance v15, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$ProgressThread;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$3;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperators;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$3;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperators;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->pHandler:Landroid/os/Handler;

    move-object/from16 v17, v0

    invoke-direct/range {v15 .. v17}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$ProgressThread;-><init>(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;Landroid/os/Handler;)V

    iput-object v15, v14, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->progressThread:Lcom/android/phone/mobilenetworks/kor/NetworkOperators$ProgressThread;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$3;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperators;

    iget-object v14, v14, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->progressThread:Lcom/android/phone/mobilenetworks/kor/NetworkOperators$ProgressThread;

    invoke-virtual {v14}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$ProgressThread;->start()V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$3;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperators;

    # getter for: Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mHandler:Landroid/os/Handler;
    invoke-static {v14}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->access$2800(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;)Landroid/os/Handler;

    move-result-object v14

    const/16 v15, 0x7d3

    const-wide/16 v16, 0x0

    invoke-virtual/range {v14 .. v17}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    :catch_0
    move-exception v14

    goto/16 :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0xc8 -> :sswitch_1
        0x12c -> :sswitch_2
        0x190 -> :sswitch_2
        0x1f4 -> :sswitch_6
        0x258 -> :sswitch_8
        0x2bc -> :sswitch_9
        0x3e9 -> :sswitch_c
        0x3ea -> :sswitch_d
        0x3eb -> :sswitch_b
        0x3ec -> :sswitch_e
        0x7d0 -> :sswitch_3
        0x7d1 -> :sswitch_4
        0x7d2 -> :sswitch_5
        0x7d3 -> :sswitch_7
        0x7d4 -> :sswitch_a
        0x7d5 -> :sswitch_f
    .end sparse-switch
.end method
