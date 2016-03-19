.class Lcom/android/phone/MobileNetworkSettings$13;
.super Ljava/lang/Object;
.source "MobileNetworkSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/MobileNetworkSettings;->createVolteEnableWarningDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/MobileNetworkSettings;

.field final synthetic val$check:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lcom/android/phone/MobileNetworkSettings;Landroid/widget/CheckBox;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/MobileNetworkSettings$13;->this$0:Lcom/android/phone/MobileNetworkSettings;

    iput-object p2, p0, Lcom/android/phone/MobileNetworkSettings$13;->val$check:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    iget-object v2, p0, Lcom/android/phone/MobileNetworkSettings$13;->val$check:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/MobileNetworkSettings$13;->this$0:Lcom/android/phone/MobileNetworkSettings;

    invoke-virtual {v2}, Lcom/android/phone/MobileNetworkSettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/MobileNetworkSettings;->neverShowVolteTipsAgain(Landroid/content/Context;)V

    :cond_0
    iget-object v2, p0, Lcom/android/phone/MobileNetworkSettings$13;->this$0:Lcom/android/phone/MobileNetworkSettings;

    # getter for: Lcom/android/phone/MobileNetworkSettings;->mVolteCall:Landroid/preference/CheckBoxPreference;
    invoke-static {v2}, Lcom/android/phone/MobileNetworkSettings;->access$400(Lcom/android/phone/MobileNetworkSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v2, p0, Lcom/android/phone/MobileNetworkSettings$13;->this$0:Lcom/android/phone/MobileNetworkSettings;

    invoke-virtual {v2}, Lcom/android/phone/MobileNetworkSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "voicecall_type"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/4 v2, 0x7

    iget-object v3, p0, Lcom/android/phone/MobileNetworkSettings$13;->this$0:Lcom/android/phone/MobileNetworkSettings;

    # getter for: Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v3}, Lcom/android/phone/MobileNetworkSettings;->access$500(Lcom/android/phone/MobileNetworkSettings;)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/commonimsinterface/imsinterface/CommonIMSInterface;->getInstance(ILandroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;

    const-string v2, "volte_settings_in_mobile_networks_chn"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "volte_settings_in_mobile_networks_hk"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "volte_settings_in_mobile_networks_tw"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    const/16 v2, 0x71

    const-string v3, "1"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    if-eqz v0, :cond_2

    invoke-interface {v0, v1}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;->updateIMSSettingValues(Landroid/util/SparseArray;)Z

    :cond_2
    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;->manualRegister()V

    :cond_3
    return-void
.end method
