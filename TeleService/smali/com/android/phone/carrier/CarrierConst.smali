.class public Lcom/android/phone/carrier/CarrierConst;
.super Ljava/lang/Object;
.source "CarrierConst.java"


# direct methods
.method public static callStateToString(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const-string v0, "UNKNOWN"

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "IDLE"

    goto :goto_0

    :pswitch_1
    const-string v0, "ACTIVE"

    goto :goto_0

    :pswitch_2
    const-string v0, "HOLDING"

    goto :goto_0

    :pswitch_3
    const-string v0, "DIALING"

    goto :goto_0

    :pswitch_4
    const-string v0, "ALERTING"

    goto :goto_0

    :pswitch_5
    const-string v0, "INCOMING"

    goto :goto_0

    :pswitch_6
    const-string v0, "WAITING"

    goto :goto_0

    :pswitch_7
    const-string v0, "DISCONNECTED"

    goto :goto_0

    :pswitch_8
    const-string v0, "DISCONNECTING"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public static callTypeToString(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const-string v0, "UNKNOWN"

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "CS_CALL_VOICE "

    goto :goto_0

    :pswitch_1
    const-string v0, "CS_CALL_VIDEO "

    goto :goto_0

    :pswitch_2
    const-string v0, "IMS_NARROWBAND_CALL_VOICE"

    goto :goto_0

    :pswitch_3
    const-string v0, "IMS_WIDEBAND_CALL_VOICE"

    goto :goto_0

    :pswitch_4
    const-string v0, "IMS_WIDEBAND_CALL_VIDEO"

    goto :goto_0

    :pswitch_5
    const-string v0, "IMS_CALL_VIDEO_CONFERENCE"

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static phoneEventToString(I)Ljava/lang/String;
    .locals 1

    sparse-switch p0, :sswitch_data_0

    const-string v0, "UNKNOWN"

    :goto_0
    return-object v0

    :sswitch_0
    const-string v0, "PHONE_STATE_CHANGED"

    goto :goto_0

    :sswitch_1
    const-string v0, "PHONE_NEW_RINGING_CONNECTION"

    goto :goto_0

    :sswitch_2
    const-string v0, "PHONE_DISCONNECT"

    goto :goto_0

    :sswitch_3
    const-string v0, "PHONE_INCOMING_RING"

    goto :goto_0

    :sswitch_4
    const-string v0, "PHONE_ON_DIAL_CHARS"

    goto :goto_0

    :sswitch_5
    const-string v0, "PHONE_INCOMING_MODIFY_CALL_REQUEST"

    goto :goto_0

    :sswitch_6
    const-string v0, "SUPP_SERVICE_FAILED"

    goto :goto_0

    :sswitch_7
    const-string v0, "SS_INFO"

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x5 -> :sswitch_3
        0xd -> :sswitch_4
        0x64 -> :sswitch_5
        0x6e -> :sswitch_6
        0x6f -> :sswitch_7
    .end sparse-switch
.end method
