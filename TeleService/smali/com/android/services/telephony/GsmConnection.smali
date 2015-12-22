.class public final Lcom/android/services/telephony/GsmConnection;
.super Lcom/android/services/telephony/TelephonyConnection;
.source "GsmConnection.java"


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/Connection;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/services/telephony/TelephonyConnection;-><init>(Lcom/android/internal/telephony/Connection;)V

    return-void
.end method


# virtual methods
.method protected buildConnectionCapabilities()I
    .locals 3

    invoke-super {p0}, Lcom/android/services/telephony/TelephonyConnection;->buildConnectionCapabilities()I

    move-result v0

    or-int/lit8 v0, v0, 0x40

    or-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Lcom/android/services/telephony/GsmConnection;->getState()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/android/services/telephony/GsmConnection;->getState()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    :cond_0
    or-int/lit8 v0, v0, 0x1

    :cond_1
    invoke-virtual {p0}, Lcom/android/services/telephony/GsmConnection;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-static {v1, p0, v0}, Lcom/android/services/utils/SecPhoneCapabilities;->getPhoneCapabilities(Lcom/android/internal/telephony/Phone;Landroid/telecom/Connection;I)I

    move-result v0

    const-string v1, "vzw_volte_ui"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/services/telephony/GsmConnection;->mHasBeenVideoCall:Z

    if-eqz v1, :cond_2

    and-int/lit8 v0, v0, -0x5

    :cond_2
    return v0
.end method

.method public cloneConnection()Lcom/android/services/telephony/TelephonyConnection;
    .locals 2

    new-instance v0, Lcom/android/services/telephony/GsmConnection;

    invoke-virtual {p0}, Lcom/android/services/telephony/GsmConnection;->getOriginalConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/services/telephony/GsmConnection;-><init>(Lcom/android/internal/telephony/Connection;)V

    return-object v0
.end method

.method public onPlayDtmfTone(C)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/services/telephony/GsmConnection;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/services/telephony/GsmConnection;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->startDtmf(C)V

    :cond_0
    return-void
.end method

.method public onStopDtmfTone()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/services/telephony/GsmConnection;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/services/telephony/GsmConnection;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->stopDtmf()V

    :cond_0
    return-void
.end method

.method public performConference(Lcom/android/services/telephony/TelephonyConnection;)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/services/telephony/GsmConnection;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/services/telephony/GsmConnection;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->conference()V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Failed to conference call."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1, v2}, Lcom/android/services/telephony/Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
