.class Lcom/android/phone/CallFeaturesSetting$35;
.super Ljava/lang/Object;
.source "CallFeaturesSetting.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/CallFeaturesSetting;->handleWiFiCall()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/CallFeaturesSetting;

.field final synthetic val$check:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lcom/android/phone/CallFeaturesSetting;Landroid/widget/CheckBox;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/CallFeaturesSetting$35;->this$0:Lcom/android/phone/CallFeaturesSetting;

    iput-object p2, p0, Lcom/android/phone/CallFeaturesSetting$35;->val$check:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    const/4 v3, 0x1

    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting$35;->val$check:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting$35;->this$0:Lcom/android/phone/CallFeaturesSetting;

    invoke-virtual {v1}, Lcom/android/phone/CallFeaturesSetting;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wfc_dialog_show_never_again"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting$35;->this$0:Lcom/android/phone/CallFeaturesSetting;

    invoke-virtual {v1}, Lcom/android/phone/CallFeaturesSetting;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_call_enable"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v1, "CallFeaturesSetting"

    const-string v2, "handleWiFiCall = 1"

    invoke-static {v1, v2, v3}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    new-instance v0, Landroid/content/Intent;

    const-string v1, "action_wifi_call_enable_broadcast"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "wifi_call_enable"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting$35;->this$0:Lcom/android/phone/CallFeaturesSetting;

    iget-object v1, v1, Lcom/android/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting$35;->this$0:Lcom/android/phone/CallFeaturesSetting;

    # invokes: Lcom/android/phone/CallFeaturesSetting;->updateWiFiCallPreference()V
    invoke-static {v1}, Lcom/android/phone/CallFeaturesSetting;->access$5900(Lcom/android/phone/CallFeaturesSetting;)V

    return-void
.end method
