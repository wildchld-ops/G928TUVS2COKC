.class public Lcom/android/server/telecom/CarrierMatchUtils;
.super Ljava/lang/Object;
.source "CarrierMatchUtils.java"


# static fields
.field private static mNewSimCarrierForSmartCSP:I

.field private static mOldSimCarrierForSmartCSP:I

.field private static final mccMncToCarrierCode:Landroid/util/SparseIntArray;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/android/server/telecom/CarrierMatchUtils;->mNewSimCarrierForSmartCSP:I

    sput v0, Lcom/android/server/telecom/CarrierMatchUtils;->mOldSimCarrierForSmartCSP:I

    invoke-static {}, Lcom/android/server/telecom/CarrierMatchUtils;->createMccMncToCarrierCode()Landroid/util/SparseIntArray;

    move-result-object v0

    sput-object v0, Lcom/android/server/telecom/CarrierMatchUtils;->mccMncToCarrierCode:Landroid/util/SparseIntArray;

    return-void
.end method

.method public static carrierCodeFromMccMnc(Ljava/lang/String;)I
    .locals 3

    const/4 v1, -0x1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :cond_1
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sget-object v2, Lcom/android/server/telecom/CarrierMatchUtils;->mccMncToCarrierCode:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public static changeCSP(Landroid/content/Context;Z)V
    .locals 3

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    sget v0, Lcom/android/server/telecom/CarrierMatchUtils;->mNewSimCarrierForSmartCSP:I

    if-lez v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "data_operator_code"

    sget v2, Lcom/android/server/telecom/CarrierMatchUtils;->mNewSimCarrierForSmartCSP:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "data_operator_code"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_1
    sget v0, Lcom/android/server/telecom/CarrierMatchUtils;->mOldSimCarrierForSmartCSP:I

    if-lez v0, :cond_2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "data_operator_code"

    sget v2, Lcom/android/server/telecom/CarrierMatchUtils;->mOldSimCarrierForSmartCSP:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "data_operator_code"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method private static createMccMncToCarrierCode()Landroid/util/SparseIntArray;
    .locals 7

    const/16 v6, 0x27

    const/16 v5, 0x29

    const/16 v4, 0x1f

    const/16 v3, 0xc

    const/16 v2, 0xf

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    const v1, 0x11ad2

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x11ad3

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x11ad4

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x11ad6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x11ada

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x11adb

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x11ae7

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x11ae0

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x11ae8

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x11aef

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x11ad5

    const/16 v2, 0x15

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x11af0

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x11af1

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x11af2

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x11ad0

    invoke-virtual {v0, v1, v6}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x11af7

    invoke-virtual {v0, v1, v6}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x11adf

    const/16 v2, 0x2b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x11b06

    const/16 v2, 0x51

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-object v0
.end method

.method public static getCarrierCode(I)I
    .locals 1

    const/16 v0, 0x64

    if-lt p0, v0, :cond_0

    div-int/lit8 p0, p0, 0xa

    :cond_0
    return p0
.end method

.method public static getCarrierName(Landroid/content/Context;II)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    sparse-switch p1, :sswitch_data_0

    const-string v0, ""

    :goto_0
    return-object v0

    :sswitch_0
    if-ne p2, v0, :cond_0

    const v0, 0x7f0800b2

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const v0, 0x7f0800ab

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_1
    if-ne p2, v0, :cond_1

    const v0, 0x7f0800af

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const v0, 0x7f0800a7

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_2
    if-ne p2, v0, :cond_2

    const v0, 0x7f0800b0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const v0, 0x7f0800a9

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_3
    if-ne p2, v0, :cond_3

    const v0, 0x7f0800b1

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    const v0, 0x7f0800aa

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_4
    if-ne p2, v0, :cond_4

    const v0, 0x7f0800b4

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    const v0, 0x7f0800ac

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_5
    const v0, 0x7f0800a8

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_6
    if-ne p2, v0, :cond_5

    const v0, 0x7f0800b6

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_5
    const v0, 0x7f0800ae

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_7
    const v0, 0x7f0800ad

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_8
    const v0, 0x7f0800b3

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_9
    const v0, 0x7f0800b5

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0xc -> :sswitch_4
        0xf -> :sswitch_0
        0x15 -> :sswitch_1
        0x19 -> :sswitch_9
        0x1f -> :sswitch_2
        0x27 -> :sswitch_5
        0x29 -> :sswitch_3
        0x2b -> :sswitch_6
        0x51 -> :sswitch_7
        0x55 -> :sswitch_8
    .end sparse-switch
.end method

.method public static getCarrierType(I)I
    .locals 1

    const/16 v0, 0x64

    if-lt p0, v0, :cond_0

    rem-int/lit8 v0, p0, 0xa

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method private static getFormattedNumber(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    const/4 v3, 0x0

    sget-object v0, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {p0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v4

    const/4 v4, 0x1

    const-string v5, "number"

    aput-object v5, v2, v4

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "number"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    :cond_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object v3
.end method

.method public static queryCarrierCodeFromDb(Landroid/content/Context;Ljava/lang/String;)I
    .locals 7

    const/4 v5, 0x1

    const/4 v3, 0x0

    const/4 v6, -0x1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return v6

    :cond_0
    invoke-static {p1, p0}, Lcom/android/server/telecom/CarrierMatchUtils;->getFormattedNumber(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    :goto_1
    new-array v2, v5, [Ljava/lang/String;

    const-string v0, "data14"

    aput-object v0, v2, v3

    const-string v0, "mimetype = ? AND data1 = ?"

    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    const-string v0, "vnd.android.cursor.item/phone_v2"

    aput-object v0, v4, v3

    aput-object p1, v4, v5

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "mimetype = ? AND data1 = ?"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string v0, "data14"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move v0, v6

    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-lez v0, :cond_1

    :cond_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :goto_2
    move v6, v0

    goto :goto_0

    :cond_3
    move v0, v6

    goto :goto_2

    :cond_4
    move-object p1, v0

    goto :goto_1
.end method

.method public static sendCarrierMatchBroadcastToReceiver(Landroid/content/Context;Landroid/content/Intent;I)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const-string v2, "android.telecom.extra.PHONE_ACCOUNT_HANDLE"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    const-string v2, "simSlot"

    invoke-virtual {p1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "is_incoming_call"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "extra_carrier_match_custom_intent"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-class v1, Lcom/android/server/telecom/CallReceiver;

    invoke-virtual {p1, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    sget-object v1, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {p0, p1, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static setNewSimCarrierForSmartCSP(I)V
    .locals 0

    sput p0, Lcom/android/server/telecom/CarrierMatchUtils;->mNewSimCarrierForSmartCSP:I

    return-void
.end method

.method public static setOldSimCarrierForSmartCSP(I)V
    .locals 0

    sput p0, Lcom/android/server/telecom/CarrierMatchUtils;->mOldSimCarrierForSmartCSP:I

    return-void
.end method
