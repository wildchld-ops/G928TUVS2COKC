.class public Lcom/android/phone/operator/usa/ResetNetworkSettingListener;
.super Landroid/content/BroadcastReceiver;
.source "ResetNetworkSettingListener.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mPhone:Lcom/android/internal/telephony/Phone;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private resetNeetowrkSetting()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v1, "ResetNetworkSettingListener"

    const-string v2, "resetNeetowrkSetting start"

    invoke-static {v1, v2}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/phone/operator/usa/ResetNetworkSettingListener;->mContext:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0, v4}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    iget-object v1, p0, Lcom/android/phone/operator/usa/ResetNetworkSettingListener;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "voicecall_type"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/operator/usa/ResetNetworkSettingListener;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/operator/usa/ResetNetworkSettingListener;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1, v3}, Lcom/android/internal/telephony/Phone;->setDataRoamingEnabled(Z)V

    iget-object v1, p0, Lcom/android/phone/operator/usa/ResetNetworkSettingListener;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "international_voicecall_type"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v1, "ResetNetworkSettingListener"

    const-string v2, "resetNeetowrkSetting end"

    invoke-static {v1, v2}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    const-string v1, "ResetNetworkSettingListener"

    const-string v2, "onReceive"

    invoke-static {v1, v2}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/phone/operator/usa/ResetNetworkSettingListener;->mContext:Landroid/content/Context;

    const-string v1, "feature_att"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.samsung.intent.action.SETTINGS_SOFT_NETWORK_RESET"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "ResetNetworkSettingListener"

    const-string v2, "onReceive.. resetNeetowrkSetting is called"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    invoke-direct {p0}, Lcom/android/phone/operator/usa/ResetNetworkSettingListener;->resetNeetowrkSetting()V

    :cond_0
    return-void
.end method
