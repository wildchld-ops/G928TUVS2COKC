.class Lcom/android/phone/operator/usa/GlobalNetworkSelectAlertDialog$5;
.super Ljava/lang/Object;
.source "GlobalNetworkSelectAlertDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/operator/usa/GlobalNetworkSelectAlertDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/operator/usa/GlobalNetworkSelectAlertDialog;

.field final synthetic val$doNotShowAgainCheckBox:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lcom/android/phone/operator/usa/GlobalNetworkSelectAlertDialog;Landroid/widget/CheckBox;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/operator/usa/GlobalNetworkSelectAlertDialog$5;->this$0:Lcom/android/phone/operator/usa/GlobalNetworkSelectAlertDialog;

    iput-object p2, p0, Lcom/android/phone/operator/usa/GlobalNetworkSelectAlertDialog$5;->val$doNotShowAgainCheckBox:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    const/4 v3, 0x1

    invoke-static {}, Lcom/android/phone/mobilenetworks/MobileNetworkUtils;->getGlobalType()I

    move-result v0

    iget-object v1, p0, Lcom/android/phone/operator/usa/GlobalNetworkSelectAlertDialog$5;->this$0:Lcom/android/phone/operator/usa/GlobalNetworkSelectAlertDialog;

    invoke-virtual {v1}, Lcom/android/phone/operator/usa/GlobalNetworkSelectAlertDialog;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "preferred_network_mode"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-static {}, Lcom/android/phone/operator/usa/TelephonyExtension;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/operator/usa/GlobalNetworkSelectAlertDialog$5;->this$0:Lcom/android/phone/operator/usa/GlobalNetworkSelectAlertDialog;

    # getter for: Lcom/android/phone/operator/usa/GlobalNetworkSelectAlertDialog;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/phone/operator/usa/GlobalNetworkSelectAlertDialog;->access$000(Lcom/android/phone/operator/usa/GlobalNetworkSelectAlertDialog;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    iget-object v1, p0, Lcom/android/phone/operator/usa/GlobalNetworkSelectAlertDialog$5;->val$doNotShowAgainCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/operator/usa/GlobalNetworkSelectAlertDialog$5;->this$0:Lcom/android/phone/operator/usa/GlobalNetworkSelectAlertDialog;

    invoke-virtual {v1}, Lcom/android/phone/operator/usa/GlobalNetworkSelectAlertDialog;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "global_mode_change_do_not_show"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    return-void
.end method
