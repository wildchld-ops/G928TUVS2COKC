.class public final Lcom/android/phone/operator/usa/BootBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BootBroadcastReceiver.java"


# static fields
.field private static mPendingNetworkManualSelection:Z


# instance fields
.field private mContext:Landroid/content/Context;

.field mHandler:Landroid/os/Handler;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    new-instance v0, Lcom/android/phone/operator/usa/BootBroadcastReceiver$1;

    invoke-direct {v0, p0}, Lcom/android/phone/operator/usa/BootBroadcastReceiver$1;-><init>(Lcom/android/phone/operator/usa/BootBroadcastReceiver;)V

    iput-object v0, p0, Lcom/android/phone/operator/usa/BootBroadcastReceiver;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/operator/usa/BootBroadcastReceiver;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/operator/usa/BootBroadcastReceiver;->handleBootCompleted()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/operator/usa/BootBroadcastReceiver;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/operator/usa/BootBroadcastReceiver;->handleSimStateChanged()V

    return-void
.end method

.method private chanagePreferredNetworkType()V
    .locals 10

    const/4 v5, 0x1

    const/4 v6, 0x0

    const-string v7, "change_network_mode_when_no_sim_bootup"

    invoke-static {v7}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    const-string v7, "gsm.default.channel"

    invoke-static {v7, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v7

    if-nez v7, :cond_0

    iget-object v7, p0, Lcom/android/phone/operator/usa/BootBroadcastReceiver;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v7

    if-ne v7, v5, :cond_1

    move v3, v5

    :goto_0
    invoke-static {}, Lcom/android/phone/mobilenetworks/MobileNetworkUtils;->getGlobalType()I

    move-result v1

    iget-object v7, p0, Lcom/android/phone/operator/usa/BootBroadcastReceiver;->mContext:Landroid/content/Context;

    const-string v8, "pref_sim_State_absent"

    invoke-virtual {v7, v8, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v7, "pref_sim_State_absent"

    invoke-interface {v4, v7, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v7, "pref_sim_State_absent"

    invoke-interface {v0, v7, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const-string v7, "BootBroadcastReceiver"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "chanagePreferredNetworkType - simStateAbsent : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " / prefSimStateAbsent : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v5}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    if-eqz v3, :cond_3

    iget-object v5, p0, Lcom/android/phone/operator/usa/BootBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v7, "device_provisioned"

    invoke-static {v5, v7, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "network_mode_global_lte_gsm"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "network_mode_global_lte_wcdma"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    const/16 v5, 0x8

    invoke-direct {p0, v5}, Lcom/android/phone/operator/usa/BootBroadcastReceiver;->setPreferredNetworkType(I)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    move v3, v6

    goto :goto_0

    :cond_2
    invoke-direct {p0, v1}, Lcom/android/phone/operator/usa/BootBroadcastReceiver;->setPreferredNetworkType(I)V

    goto :goto_1

    :cond_3
    if-eqz v2, :cond_0

    invoke-direct {p0, v1}, Lcom/android/phone/operator/usa/BootBroadcastReceiver;->setPreferredNetworkType(I)V

    goto :goto_1
.end method

.method private handleBootCompleted()V
    .locals 1

    iget-object v0, p0, Lcom/android/phone/operator/usa/BootBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/phone/EmergencyDialerUtils;->startPendingEmergencyDialerActivity(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/android/phone/operator/usa/BootBroadcastReceiver;->startNetworkSetting()V

    invoke-direct {p0}, Lcom/android/phone/operator/usa/BootBroadcastReceiver;->chanagePreferredNetworkType()V

    invoke-direct {p0}, Lcom/android/phone/operator/usa/BootBroadcastReceiver;->setDefaultAssistedDailingValue()V

    return-void
.end method

.method private handleSimStateChanged()V
    .locals 1

    sget-boolean v0, Lcom/android/phone/operator/usa/BootBroadcastReceiver;->mPendingNetworkManualSelection:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/phone/operator/usa/BootBroadcastReceiver;->startNetworkSetting()V

    :cond_0
    return-void
.end method

.method private setDefaultAssistedDailingValue()V
    .locals 4

    const/4 v3, 0x1

    const-string v0, "assisted_dialing_enable"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/operator/usa/BootBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "device_provisioned"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "BootBroadcastReceiver"

    const-string v1, "assisted dialing default value is true"

    invoke-static {v0, v1, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    iget-object v0, p0, Lcom/android/phone/operator/usa/BootBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "assisted_dialing"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    return-void
.end method

.method private setPreferredNetworkType(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/phone/operator/usa/BootBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "preferred_network_mode"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/phone/operator/usa/TelephonyExtension;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/operator/usa/BootBroadcastReceiver;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x65

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    :cond_0
    return-void
.end method

.method private startNetworkSetting()V
    .locals 6

    const/4 v5, 0x1

    const-string v2, "network_manual_selection_when_bootup"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/android/phone/operator/usa/TelephonyExtension;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getIsManualSelection()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "BootBroadcastReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startNetworkSetting(), serviceState.getIsManualSelection() : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getIsManualSelection()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/phone/operator/usa/BootBroadcastReceiver;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_1

    const-string v2, "BootBroadcastReceiver"

    const-string v3, "IsManualSelection : start network setting"

    invoke-static {v2, v3}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "network_manual_selection_when_bootup"

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "com.android.phone"

    const-class v3, Lcom/android/phone/NetworkSetting;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/phone/operator/usa/BootBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/phone/operator/usa/BootBroadcastReceiver;->mPendingNetworkManualSelection:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v2, "BootBroadcastReceiver"

    const-string v3, "sim state is not ready pending network searching."

    invoke-static {v2, v3}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sput-boolean v5, Lcom/android/phone/operator/usa/BootBroadcastReceiver;->mPendingNetworkManualSelection:Z

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    iput-object p1, p0, Lcom/android/phone/operator/usa/BootBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/operator/usa/BootBroadcastReceiver;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const-string v1, "BootBroadcastReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Action received: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/operator/usa/BootBroadcastReceiver;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/operator/usa/BootBroadcastReceiver;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
