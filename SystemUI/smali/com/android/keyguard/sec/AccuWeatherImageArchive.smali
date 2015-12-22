.class Lcom/android/keyguard/sec/AccuWeatherImageArchive;
.super Lcom/android/keyguard/sec/AbstractWeatherImageArchive;
.source "AccuWeatherImageArchive.java"


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/sec/AbstractWeatherImageArchive;-><init>()V

    return-void
.end method


# virtual methods
.method public getImage(I)I
    .locals 1

    packed-switch p1, :pswitch_data_0

    sget v0, Lcom/android/keyguard/R$drawable;->weather_icon_s_02:I

    :goto_0
    return v0

    :pswitch_0
    sget v0, Lcom/android/keyguard/R$drawable;->weather_icon_s_01:I

    goto :goto_0

    :pswitch_1
    sget v0, Lcom/android/keyguard/R$drawable;->weather_icon_s_02:I

    goto :goto_0

    :pswitch_2
    sget v0, Lcom/android/keyguard/R$drawable;->weather_icon_s_03:I

    goto :goto_0

    :pswitch_3
    sget v0, Lcom/android/keyguard/R$drawable;->weather_icon_s_04:I

    goto :goto_0

    :pswitch_4
    sget v0, Lcom/android/keyguard/R$drawable;->weather_icon_s_05:I

    goto :goto_0

    :pswitch_5
    sget v0, Lcom/android/keyguard/R$drawable;->weather_icon_s_06:I

    goto :goto_0

    :pswitch_6
    sget v0, Lcom/android/keyguard/R$drawable;->weather_icon_s_07:I

    goto :goto_0

    :pswitch_7
    sget v0, Lcom/android/keyguard/R$drawable;->weather_icon_s_08:I

    goto :goto_0

    :pswitch_8
    sget v0, Lcom/android/keyguard/R$drawable;->weather_icon_s_09:I

    goto :goto_0

    :pswitch_9
    sget v0, Lcom/android/keyguard/R$drawable;->weather_icon_s_10:I

    goto :goto_0

    :pswitch_a
    sget v0, Lcom/android/keyguard/R$drawable;->weather_icon_s_11:I

    goto :goto_0

    :pswitch_b
    sget v0, Lcom/android/keyguard/R$drawable;->weather_icon_s_12:I

    goto :goto_0

    :pswitch_c
    sget v0, Lcom/android/keyguard/R$drawable;->weather_icon_s_13:I

    goto :goto_0

    :pswitch_d
    sget v0, Lcom/android/keyguard/R$drawable;->weather_icon_s_14:I

    goto :goto_0

    :pswitch_e
    sget v0, Lcom/android/keyguard/R$drawable;->weather_icon_s_15:I

    goto :goto_0

    :pswitch_f
    sget v0, Lcom/android/keyguard/R$drawable;->weather_icon_s_16:I

    goto :goto_0

    :pswitch_10
    sget v0, Lcom/android/keyguard/R$drawable;->weather_icon_s_17:I

    goto :goto_0

    :pswitch_11
    sget v0, Lcom/android/keyguard/R$drawable;->weather_icon_s_18:I

    goto :goto_0

    :pswitch_12
    sget v0, Lcom/android/keyguard/R$drawable;->weather_icon_s_19:I

    goto :goto_0

    :pswitch_13
    sget v0, Lcom/android/keyguard/R$drawable;->weather_icon_s_20:I

    goto :goto_0

    :pswitch_14
    sget v0, Lcom/android/keyguard/R$drawable;->weather_icon_s_21:I

    goto :goto_0

    :pswitch_15
    sget v0, Lcom/android/keyguard/R$drawable;->weather_icon_s_22:I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
    .end packed-switch
.end method
