.class Lcom/android/settings/wifi/WifiSnsSettingDialog$1;
.super Ljava/lang/Object;
.source "WifiSnsSettingDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/WifiSnsSettingDialog;->makeSnsSettingDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiSnsSettingDialog;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiSnsSettingDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wifi/WifiSnsSettingDialog$1;->this$0:Lcom/android/settings/wifi/WifiSnsSettingDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x1

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    if-ne p2, v5, :cond_3

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSnsSettingDialog$1;->this$0:Lcom/android/settings/wifi/WifiSnsSettingDialog;

    # getter for: Lcom/android/settings/wifi/WifiSnsSettingDialog;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/settings/wifi/WifiSnsSettingDialog;->access$000(Lcom/android/settings/wifi/WifiSnsSettingDialog;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "wifi_watchdog_poor_network_test_enabled"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v3, "WifiSnsSettingDialog"

    const-string v4, "SNS On pressed"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "KT_Specific"

    # getter for: Lcom/android/settings/wifi/WifiSnsSettingDialog;->mDisconnectWeakAP:Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/wifi/WifiSnsSettingDialog;->access$100()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSnsSettingDialog$1;->this$0:Lcom/android/settings/wifi/WifiSnsSettingDialog;

    # getter for: Lcom/android/settings/wifi/WifiSnsSettingDialog;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/settings/wifi/WifiSnsSettingDialog;->access$000(Lcom/android/settings/wifi/WifiSnsSettingDialog;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "wifi_connection_monitor_enable"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_1
    :goto_1
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    const/16 v3, 0x4d

    iput v3, v2, Landroid/os/Message;->what:I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v3, "feature"

    const-string v4, "SNSU"

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-ne p2, v5, :cond_4

    const-string v3, "extra"

    const-string v4, "ON"

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSnsSettingDialog$1;->this$0:Lcom/android/settings/wifi/WifiSnsSettingDialog;

    # getter for: Lcom/android/settings/wifi/WifiSnsSettingDialog;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/settings/wifi/WifiSnsSettingDialog;->access$000(Lcom/android/settings/wifi/WifiSnsSettingDialog;)Landroid/content/Context;

    move-result-object v3

    const-string v4, "wifi"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_2

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    :cond_2
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSnsSettingDialog$1;->this$0:Lcom/android/settings/wifi/WifiSnsSettingDialog;

    # getter for: Lcom/android/settings/wifi/WifiSnsSettingDialog;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/settings/wifi/WifiSnsSettingDialog;->access$000(Lcom/android/settings/wifi/WifiSnsSettingDialog;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "wifi_watchdog_poor_network_test_enabled"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v3, "WifiSnsSettingDialog"

    const-string v4, "SNS Off pressed"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    const-string v3, "extra"

    const-string v4, "OFF"

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method
