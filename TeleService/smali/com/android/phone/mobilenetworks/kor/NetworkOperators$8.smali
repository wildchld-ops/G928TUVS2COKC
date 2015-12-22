.class Lcom/android/phone/mobilenetworks/kor/NetworkOperators$8;
.super Ljava/lang/Object;
.source "NetworkOperators.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

    iput-object p1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$8;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperators;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .param p1    # Landroid/content/DialogInterface;
    .param p2    # I

    const/16 v6, 0x258

    const/16 v5, 0xc8

    const/4 v4, 0x0

    const/4 v3, 0x1

    const-string v1, "feature_skt"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$8;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperators;

    invoke-virtual {v1, v6}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->showDialog(I)V

    :goto_0
    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$8;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperators;

    # getter for: Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mTelephonyManager:Landroid/telephony/TelephonyManager;
    invoke-static {v1}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->access$4300(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mDisconnectSearchDialogListener: state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->log(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->access$700(Ljava/lang/String;)V

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    if-ne v0, v3, :cond_8

    :cond_0
    const-string v1, "mDisconnectSearchDialogListener : disableDataConnectivity"

    # invokes: Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->log(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->access$700(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$8;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperators;

    # invokes: Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->setMobileDataEnabled(Z)V
    invoke-static {v1, v4}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->access$4200(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;Z)V

    const-string v1, "feature_skt"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$8;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperators;

    invoke-virtual {v1, v6}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->removeDialog(I)V

    :goto_1
    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$8;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperators;

    invoke-virtual {v1}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a07e8

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    const-string v1, "feature_lgt"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$8;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperators;

    # getter for: Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mSearchManualButton:Landroid/preference/CheckBoxPreference;
    invoke-static {v1}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->access$1800(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    :cond_1
    :goto_2
    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$8;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperators;

    invoke-virtual {v1, v5}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->showDialog(I)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$8;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperators;

    invoke-virtual {v1, v5}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->removeDialog(I)V

    goto :goto_1

    :cond_4
    const-string v1, "menu_simplification"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$8;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperators;

    # getter for: Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mAutoSelectRadioButton:Lcom/android/phone/mobilenetworks/kor/RadioButtonPreference;
    invoke-static {v1}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->access$2000(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;)Lcom/android/phone/mobilenetworks/kor/RadioButtonPreference;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$8;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperators;

    # getter for: Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mAutoSelectRadioButton:Lcom/android/phone/mobilenetworks/kor/RadioButtonPreference;
    invoke-static {v1}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->access$2000(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;)Lcom/android/phone/mobilenetworks/kor/RadioButtonPreference;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/phone/mobilenetworks/kor/RadioButtonPreference;->setEnabled(Z)V

    :cond_5
    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$8;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperators;

    # getter for: Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mManualSelectRadioButton:Lcom/android/phone/mobilenetworks/kor/RadioButtonPreference;
    invoke-static {v1}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->access$2100(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;)Lcom/android/phone/mobilenetworks/kor/RadioButtonPreference;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$8;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperators;

    # getter for: Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mManualSelectRadioButton:Lcom/android/phone/mobilenetworks/kor/RadioButtonPreference;
    invoke-static {v1}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->access$2100(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;)Lcom/android/phone/mobilenetworks/kor/RadioButtonPreference;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/phone/mobilenetworks/kor/RadioButtonPreference;->setEnabled(Z)V

    goto :goto_2

    :cond_6
    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$8;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperators;

    # getter for: Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mAutoSelect:Landroid/preference/CheckBoxPreference;
    invoke-static {v1}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->access$2200(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$8;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperators;

    # getter for: Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mAutoSelect:Landroid/preference/CheckBoxPreference;
    invoke-static {v1}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->access$2200(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    :cond_7
    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$8;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperators;

    # getter for: Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mSearchButton:Landroid/preference/CheckBoxPreference;
    invoke-static {v1}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->access$2300(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$8;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperators;

    # getter for: Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mSearchButton:Landroid/preference/CheckBoxPreference;
    invoke-static {v1}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->access$2300(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_2

    :cond_8
    if-nez v0, :cond_9

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$8;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperators;

    # getter for: Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mActionType:I
    invoke-static {v1}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->access$4400(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;)I

    move-result v1

    if-nez v1, :cond_9

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mDisconnectSearchDialogListener : DATA_DISCONNECTED : mActionType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$8;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperators;

    # getter for: Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mActionType:I
    invoke-static {v2}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->access$4400(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->log(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->access$700(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$8;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperators;

    const/16 v2, -0x2711

    # setter for: Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mActionType:I
    invoke-static {v1, v2}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->access$4402(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;I)I

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$8;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperators;

    # invokes: Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->updateDataState()V
    invoke-static {v1}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->access$000(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;)V

    goto/16 :goto_2

    :cond_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mDisconnectSearchDialogListener : else mActionType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$8;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperators;

    # getter for: Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mActionType:I
    invoke-static {v2}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->access$4400(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->log(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->access$700(Ljava/lang/String;)V

    goto/16 :goto_2
.end method
