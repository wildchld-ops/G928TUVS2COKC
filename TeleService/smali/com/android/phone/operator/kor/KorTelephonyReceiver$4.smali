.class Lcom/android/phone/operator/kor/KorTelephonyReceiver$4;
.super Ljava/lang/Object;
.source "KorTelephonyReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/operator/kor/KorTelephonyReceiver;->handleRoamNetworkChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/operator/kor/KorTelephonyReceiver;

.field final synthetic val$app:Lcom/android/phone/PhoneGlobals;

.field final synthetic val$phone:Lcom/android/internal/telephony/Phone;


# direct methods
.method constructor <init>(Lcom/android/phone/operator/kor/KorTelephonyReceiver;Lcom/android/internal/telephony/Phone;Lcom/android/phone/PhoneGlobals;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/operator/kor/KorTelephonyReceiver$4;->this$0:Lcom/android/phone/operator/kor/KorTelephonyReceiver;

    iput-object p2, p0, Lcom/android/phone/operator/kor/KorTelephonyReceiver$4;->val$phone:Lcom/android/internal/telephony/Phone;

    iput-object p3, p0, Lcom/android/phone/operator/kor/KorTelephonyReceiver$4;->val$app:Lcom/android/phone/PhoneGlobals;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const/4 v3, 0x1

    const/4 v4, 0x0

    const-string v5, "00"

    const-string v6, "gsm.sim.roaming"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    move v1, v3

    :goto_0
    iget-object v5, p0, Lcom/android/phone/operator/kor/KorTelephonyReceiver$4;->val$phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getIsManualSelection()Z

    move-result v2

    iget-object v5, p0, Lcom/android/phone/operator/kor/KorTelephonyReceiver$4;->val$app:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v5}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "lte_roaming_mode_on"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v3, :cond_2

    move v0, v3

    :goto_1
    if-nez v1, :cond_3

    if-eqz v2, :cond_0

    const-string v3, "0"

    const-string v5, "ril.IsManualSelection"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_0
    :goto_2
    return-void

    :cond_1
    move v1, v4

    goto :goto_0

    :cond_2
    move v0, v4

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lcom/android/phone/operator/kor/KorTelephonyReceiver$4;->val$phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3, v4}, Lcom/android/internal/telephony/Phone;->setRadioPower(Z)V

    invoke-static {}, Lcom/android/phone/PhoneUtils;->showNetworkRoamMccChanged()V

    goto :goto_2
.end method
