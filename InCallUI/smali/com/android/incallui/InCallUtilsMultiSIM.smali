.class public Lcom/android/incallui/InCallUtilsMultiSIM;
.super Ljava/lang/Object;
.source "InCallUtilsMultiSIM.java"


# static fields
.field static simIconTypeCallCard:[I

.field static simIconTypeCallCardLarge:[I

.field static simIconTypeEndCallScreen:[I

.field static simIconTypeEndCallScreenEasyMode:[I

.field static simIconTypeMiniCallScreen:[I

.field static simIconTypeQuickPanel:[I

.field static simIconTypeSimSelectPopupMode:[I

.field static simIconTypeSimTabDuringCall:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v1, 0x9

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/incallui/InCallUtilsMultiSIM;->simIconTypeSimTabDuringCall:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/incallui/InCallUtilsMultiSIM;->simIconTypeCallCard:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/incallui/InCallUtilsMultiSIM;->simIconTypeCallCardLarge:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/android/incallui/InCallUtilsMultiSIM;->simIconTypeMiniCallScreen:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_4

    sput-object v0, Lcom/android/incallui/InCallUtilsMultiSIM;->simIconTypeQuickPanel:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_5

    sput-object v0, Lcom/android/incallui/InCallUtilsMultiSIM;->simIconTypeEndCallScreen:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_6

    sput-object v0, Lcom/android/incallui/InCallUtilsMultiSIM;->simIconTypeEndCallScreenEasyMode:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_7

    sput-object v0, Lcom/android/incallui/InCallUtilsMultiSIM;->simIconTypeSimSelectPopupMode:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f020210
        0x7f020215
        0x7f02020a
        0x7f02023a
        0x7f02022e
        0x7f020228
        0x7f020222
        0x7f020234
        0x7f02021c
    .end array-data

    :array_1
    .array-data 4
        0x7f020214
        0x7f020219
        0x7f02020f
        0x7f02023f
        0x7f020233
        0x7f02022d
        0x7f020227
        0x7f020239
        0x7f020221
    .end array-data

    :array_2
    .array-data 4
        0x7f020211
        0x7f020216
        0x7f02020b
        0x7f02023b
        0x7f02022f
        0x7f020229
        0x7f020223
        0x7f020235
        0x7f02021d
    .end array-data

    :array_3
    .array-data 4
        0x7f020212
        0x7f020217
        0x7f02020d
        0x7f02023d
        0x7f020231
        0x7f02022b
        0x7f020225
        0x7f020237
        0x7f02021f
    .end array-data

    :array_4
    .array-data 4
        0x7f020213
        0x7f020218
        0x7f02020e
        0x7f02023e
        0x7f020232
        0x7f02022c
        0x7f020226
        0x7f020238
        0x7f020220
    .end array-data

    :array_5
    .array-data 4
        0x7f0200fe
        0x7f020100
        0x7f0200f2
        0x7f020102
        0x7f0200fa
        0x7f0200f8
        0x7f0200f6
        0x7f0200fc
        0x7f0200f4
    .end array-data

    :array_6
    .array-data 4
        0x7f0200fd
        0x7f0200ff
        0x7f0200f1
        0x7f020101
        0x7f0200f9
        0x7f0200f7
        0x7f0200f5
        0x7f0200fb
        0x7f0200f3
    .end array-data

    :array_7
    .array-data 4
        0x7f02021a
        0x7f02021b
        0x7f02020c
        0x7f02023c
        0x7f020230
        0x7f02022a
        0x7f020224
        0x7f020236
        0x7f02021e
    .end array-data
.end method

.method public static checkMultiSim()Z
    .locals 11

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/16 v8, -0x3e8

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-string v6, "feature_multisim"

    invoke-static {v6}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-static {v5}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v2

    invoke-static {v4}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v3

    if-eqz v2, :cond_0

    array-length v6, v2

    if-eqz v6, :cond_0

    if-eqz v3, :cond_0

    array-length v6, v3

    if-nez v6, :cond_2

    :cond_0
    move v4, v5

    :cond_1
    :goto_0
    return v4

    :cond_2
    const-string v6, "gsm.sim.currentcardstatus"

    const-string v7, "-1000"

    invoke-static {v5, v6, v7}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const-string v6, "gsm.sim.currentcardstatus"

    const-string v7, "-1000"

    invoke-static {v4, v6, v7}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-eq v0, v8, :cond_4

    if-eq v1, v8, :cond_4

    if-ne v0, v10, :cond_3

    if-eq v1, v10, :cond_1

    :cond_3
    move v4, v5

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/android/incallui/InCallUtilsMultiSIM;->getInsertedSimCard()I

    move-result v6

    if-ne v6, v9, :cond_5

    invoke-static {}, Lcom/android/incallui/InCallUtilsMultiSIM;->getActivatedSimNum()I

    move-result v6

    if-ne v6, v9, :cond_5

    invoke-static {v5}, Lcom/android/incallui/InCallUtilsMultiSIM;->getSimState(I)I

    move-result v6

    const/4 v7, 0x5

    if-ne v6, v7, :cond_5

    invoke-static {v4}, Lcom/android/incallui/InCallUtilsMultiSIM;->getSimState(I)I

    move-result v6

    const/4 v7, 0x5

    if-eq v6, v7, :cond_1

    :cond_5
    move v4, v5

    goto :goto_0

    :cond_6
    move v4, v5

    goto :goto_0
.end method

.method public static checkSimCardStatus(I)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    const-string v1, "gsm.sim.state"

    const-string v2, "UNKNOWN"

    invoke-static {p0, v1, v2}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getActivatedSimNum()I
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/incallui/InCallUtilsMultiSIM;->isSimCardStatusOn(I)Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/android/incallui/InCallUtilsMultiSIM;->isSimCardStatusOn(I)Z

    move-result v1

    if-eqz v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    :cond_1
    return v0
.end method

.method public static getCurrentNetworkPhoneId()I
    .locals 5

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoiceSubId()I

    move-result v2

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v1

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCurrentNetworkSlotId subId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " phoneId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/incallui/InCallUtilsMultiSIM;->log(Ljava/lang/String;)V

    return v1
.end method

.method public static getInsertedSimCard()I
    .locals 5

    const/4 v2, 0x0

    const/4 v0, 0x0

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    invoke-static {v0}, Lcom/android/incallui/InCallUtilsMultiSIM;->isSimCardInserted(I)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getInsertedSimCard: returnValue ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/incallui/InCallUtilsMultiSIM;->log(Ljava/lang/String;)V

    return v2
.end method

.method public static getMultiSimIccType(I)Ljava/lang/String;
    .locals 4

    const-string v1, "0"

    :try_start_0
    const-string v2, "ril.ICC_TYPE"

    const-string v3, "0"

    invoke-static {p0, v2, v3}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v1, "0"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const-string v1, "0"

    goto :goto_0
.end method

.method public static getMultiSimNumeric(I)Ljava/lang/String;
    .locals 4

    const-string v0, "0"

    :try_start_0
    const-string v2, "gsm.sim.operator.numeric"

    const-string v3, "0"

    invoke-static {p0, v2, v3}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    const-string v0, "0"

    goto :goto_0
.end method

.method public static getPhoneId(Lcom/android/incallui/Call;)I
    .locals 2

    invoke-static {p0}, Lcom/android/incallui/InCallUtilsMultiSIM;->getSubId(Lcom/android/incallui/Call;)I

    move-result v1

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    return v0
.end method

.method public static getSimIconIndex(I)I
    .locals 6

    const/4 v5, 0x1

    const/4 v1, -0x1

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    move v2, v1

    :goto_0
    return v2

    :cond_0
    if-ne p0, v5, :cond_3

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "select_icon_2"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    :cond_1
    :goto_1
    invoke-static {p0}, Lcom/android/incallui/InCallUtilsMultiSIM;->isSimCardInserted(I)Z

    move-result v3

    if-nez v3, :cond_2

    move v1, p0

    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSimIconIndex: simidx ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " returnValue"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/incallui/InCallUtilsMultiSIM;->log(Ljava/lang/String;)V

    move v2, v1

    goto :goto_0

    :cond_3
    if-nez p0, :cond_1

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "select_icon_1"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    goto :goto_1
.end method

.method public static getSimImage(II)I
    .locals 4

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isEasyModeOn()Z

    move-result v1

    invoke-static {p0}, Lcom/android/incallui/InCallUtilsMultiSIM;->getSimIconIndex(I)I

    move-result v2

    if-nez p1, :cond_1

    sget-object v3, Lcom/android/incallui/InCallUtilsMultiSIM;->simIconTypeSimTabDuringCall:[I

    aget v0, v3, v2

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v3, 0x1

    if-ne p1, v3, :cond_2

    sget-object v3, Lcom/android/incallui/InCallUtilsMultiSIM;->simIconTypeCallCard:[I

    aget v0, v3, v2

    goto :goto_0

    :cond_2
    const/4 v3, 0x4

    if-ne p1, v3, :cond_3

    sget-object v3, Lcom/android/incallui/InCallUtilsMultiSIM;->simIconTypeCallCardLarge:[I

    aget v0, v3, v2

    goto :goto_0

    :cond_3
    const/4 v3, 0x2

    if-ne p1, v3, :cond_4

    sget-object v3, Lcom/android/incallui/InCallUtilsMultiSIM;->simIconTypeMiniCallScreen:[I

    aget v0, v3, v2

    goto :goto_0

    :cond_4
    const/4 v3, 0x3

    if-ne p1, v3, :cond_5

    sget-object v3, Lcom/android/incallui/InCallUtilsMultiSIM;->simIconTypeQuickPanel:[I

    aget v0, v3, v2

    goto :goto_0

    :cond_5
    const/16 v3, 0x14

    if-ne p1, v3, :cond_7

    if-eqz v1, :cond_6

    sget-object v3, Lcom/android/incallui/InCallUtilsMultiSIM;->simIconTypeEndCallScreenEasyMode:[I

    aget v0, v3, v2

    goto :goto_0

    :cond_6
    sget-object v3, Lcom/android/incallui/InCallUtilsMultiSIM;->simIconTypeEndCallScreen:[I

    aget v0, v3, v2

    goto :goto_0

    :cond_7
    const/16 v3, 0x17

    if-ne p1, v3, :cond_0

    sget-object v3, Lcom/android/incallui/InCallUtilsMultiSIM;->simIconTypeSimSelectPopupMode:[I

    aget v0, v3, v2

    goto :goto_0
.end method

.method public static getSimName(I)Ljava/lang/String;
    .locals 6

    const/4 v3, 0x0

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v4, ""

    :goto_0
    return-object v4

    :cond_0
    const v4, 0x7f0d0389

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v4, 0x7f0d038a

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    if-ne p0, v4, :cond_5

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "select_name_2"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-static {p0}, Lcom/android/incallui/InCallUtilsMultiSIM;->isSimCardInserted(I)Z

    move-result v4

    if-nez v4, :cond_2

    const/4 v3, 0x0

    :cond_2
    if-eqz v3, :cond_3

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_3
    if-nez p0, :cond_6

    move-object v3, v1

    :cond_4
    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getSimName: simidx ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " returnValue"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/incallui/InCallUtilsMultiSIM;->log(Ljava/lang/String;)V

    move-object v4, v3

    goto :goto_0

    :cond_5
    if-nez p0, :cond_1

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "select_name_1"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_6
    move-object v3, v2

    goto :goto_2
.end method

.method public static getSimState(I)I
    .locals 1

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v0

    return v0
.end method

.method public static getSubId(Lcom/android/incallui/Call;)I
    .locals 7

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v4

    invoke-static {v4}, Lcom/android/incallui/InCallUtils;->getSecCallExtra(Lcom/android/incallui/Call;)Lcom/android/services/telephony/common/SecCallExtra;

    move-result-object v1

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubId()I

    move-result v3

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubId()I

    move-result v0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/services/telephony/common/SecCallExtra;->getSubId()I

    move-result v3

    :cond_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/Call;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v4

    if-eqz v4, :cond_1

    :try_start_0
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telecom/PhoneAccountHandle;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    if-eq v3, v0, :cond_2

    if-lez v3, :cond_2

    :goto_1
    return v0

    :catch_0
    move-exception v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getSubId failed : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/incallui/InCallUtilsMultiSIM;->log(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move v0, v3

    goto :goto_0

    :cond_2
    move v0, v3

    goto :goto_1
.end method

.method public static getSubIdUsingPhoneId(I)I
    .locals 2

    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v0

    const/4 v1, 0x0

    aget v1, v0, v1

    return v1
.end method

.method public static isBoltSIM(I)Z
    .locals 6

    const/4 v0, 0x0

    invoke-static {p0}, Lcom/android/incallui/InCallUtilsMultiSIM;->getMultiSimNumeric(I)Ljava/lang/String;

    move-result-object v2

    const-string v1, ""

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_RIL_ConfigPsOnlyList"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "0"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    :cond_0
    const-string v3, "InCallUtilsMultiSIM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isBoltSIM: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public static isSimCardInserted(I)Z
    .locals 1

    invoke-static {p0}, Lcom/android/incallui/InCallUtilsMultiSIM;->getMultiSimIccType(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isSimCardStatusOn(I)Z
    .locals 6

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x1

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return v3

    :cond_0
    invoke-static {p0}, Lcom/android/incallui/InCallUtilsMultiSIM;->isSimCardInserted(I)Z

    move-result v4

    if-nez v4, :cond_1

    const/4 v1, 0x0

    :cond_1
    if-ne v1, v2, :cond_4

    if-ne p0, v2, :cond_4

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "phone2_on"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_3

    move v1, v2

    :cond_2
    :goto_1
    move v3, v1

    goto :goto_0

    :cond_3
    move v1, v3

    goto :goto_1

    :cond_4
    if-ne v1, v2, :cond_2

    if-nez p0, :cond_2

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "phone1_on"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_5

    move v1, v2

    :goto_2
    goto :goto_1

    :cond_5
    move v1, v3

    goto :goto_2
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1

    const-string v0, "InCallUtilsMultiSIM"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static setAvailablePhoneAccountHandle(Landroid/content/Intent;Landroid/content/Context;)Landroid/content/Intent;
    .locals 8

    const/4 v7, 0x1

    invoke-static {}, Lcom/android/incallui/InCallUtilsMultiSIM;->getInsertedSimCard()I

    move-result v6

    if-le v6, v7, :cond_2

    invoke-static {}, Lcom/android/incallui/InCallUtilsMultiSIM;->getCurrentNetworkPhoneId()I

    move-result v1

    const/4 v6, 0x0

    invoke-static {v6}, Lcom/android/incallui/InCallUtilsMultiSIM;->checkSimCardStatus(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v7}, Lcom/android/incallui/InCallUtilsMultiSIM;->checkSimCardStatus(I)Ljava/lang/String;

    move-result-object v3

    if-nez v1, :cond_3

    const-string v6, "PIN_REQUIRED"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "PUK_REQUIRED"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    :goto_0
    const-string v6, "telecom"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telecom/TelecomManager;

    invoke-virtual {v5}, Landroid/telecom/TelecomManager;->getCallCapablePhoneAccounts()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telecom/PhoneAccountHandle;

    const-string v6, "android.telecom.extra.PHONE_ACCOUNT_HANDLE"

    invoke-virtual {p0, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_2
    return-object p0

    :cond_3
    if-ne v1, v7, :cond_1

    const-string v6, "PIN_REQUIRED"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    const-string v6, "PUK_REQUIRED"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_4
    const/4 v1, 0x0

    goto :goto_0
.end method
