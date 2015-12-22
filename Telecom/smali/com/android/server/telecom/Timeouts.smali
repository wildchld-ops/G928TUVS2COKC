.class public final Lcom/android/server/telecom/Timeouts;
.super Ljava/lang/Object;
.source "Timeouts.java"


# direct methods
.method private static get(Landroid/content/ContentResolver;Ljava/lang/String;J)J
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "telecom."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p2, p3}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getDelayBetweenDtmfTonesMillis(Landroid/content/ContentResolver;)J
    .locals 4

    const-string v0, "delay_between_dtmf_tones_ms"

    const-wide/16 v2, 0x12c

    invoke-static {p0, v0, v2, v3}, Lcom/android/server/telecom/Timeouts;->get(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getDirectToVoicemailMillis(Landroid/content/ContentResolver;)J
    .locals 4

    const-string v0, "direct_to_voicemail_ms"

    const-wide/16 v2, 0x1f4

    invoke-static {p0, v0, v2, v3}, Lcom/android/server/telecom/Timeouts;->get(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getEmergencyCallTimeoutMillis(Landroid/content/ContentResolver;)J
    .locals 4

    const-string v0, "emergency_call_timeout_millis"

    const-wide/16 v2, 0x61a8

    invoke-static {p0, v0, v2, v3}, Lcom/android/server/telecom/Timeouts;->get(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getEmergencyCallTimeoutRadioOffMillis(Landroid/content/ContentResolver;)J
    .locals 4

    const-string v0, "emergency_call_timeout_radio_off_millis"

    const-wide/32 v2, 0xea60

    invoke-static {p0, v0, v2, v3}, Lcom/android/server/telecom/Timeouts;->get(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getNewOutgoingCallCancelMillis(Landroid/content/ContentResolver;)J
    .locals 4

    const-string v0, "new_outgoing_call_cancel_ms"

    const-wide/16 v2, 0x12c

    invoke-static {p0, v0, v2, v3}, Lcom/android/server/telecom/Timeouts;->get(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method
