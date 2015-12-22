.class public Lcom/android/server/telecom/rcs/RcsUtils;
.super Ljava/lang/Object;
.source "RcsUtils.java"

# interfaces
.implements Lcom/android/services/telephony/common/RcsTransferConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/telecom/rcs/RcsUtils$3;,
        Lcom/android/server/telecom/rcs/RcsUtils$SessionState;
    }
.end annotation


# static fields
.field private static completionListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field private static errorListener:Landroid/media/MediaPlayer$OnErrorListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/telecom/rcs/RcsUtils$1;

    invoke-direct {v0}, Lcom/android/server/telecom/rcs/RcsUtils$1;-><init>()V

    sput-object v0, Lcom/android/server/telecom/rcs/RcsUtils;->completionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    new-instance v0, Lcom/android/server/telecom/rcs/RcsUtils$2;

    invoke-direct {v0}, Lcom/android/server/telecom/rcs/RcsUtils$2;-><init>()V

    sput-object v0, Lcom/android/server/telecom/rcs/RcsUtils;->errorListener:Landroid/media/MediaPlayer$OnErrorListener;

    return-void
.end method

.method public static acquireSessionInfo(Landroid/content/Context;)Lcom/android/server/telecom/rcs/RcsUtils$SessionState;
    .locals 12

    new-instance v0, Lcom/android/server/telecom/rcs/RcsUtils$SessionState;

    invoke-direct {v0}, Lcom/android/server/telecom/rcs/RcsUtils$SessionState;-><init>()V

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, v0, Lcom/android/server/telecom/rcs/RcsUtils$SessionState;->mIsActive:Z

    invoke-static {p0}, Lcom/android/server/telecom/rcs/RcsUtils;->getSessionStateCursor(Landroid/content/Context;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    const-string v2, "id"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const-string v4, "dir"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const-string v5, "state"

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    const-string v6, "type"

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    const-string v7, "size"

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    if-nez v4, :cond_1

    const/4 v7, 0x1

    iput-boolean v7, v0, Lcom/android/server/telecom/rcs/RcsUtils$SessionState;->mIsActive:Z

    const-string v7, "RcsShare"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "verifySessionStates incoming session id:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " type: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput v5, v0, Lcom/android/server/telecom/rcs/RcsUtils$SessionState;->mState:I

    iput v6, v0, Lcom/android/server/telecom/rcs/RcsUtils$SessionState;->mType:I

    iput v4, v0, Lcom/android/server/telecom/rcs/RcsUtils$SessionState;->mDirection:I

    iput-wide v2, v0, Lcom/android/server/telecom/rcs/RcsUtils$SessionState;->mId:J

    iput-wide v8, v0, Lcom/android/server/telecom/rcs/RcsUtils$SessionState;->mSize:J

    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :goto_1
    return-object v0

    :cond_2
    const-string v2, "RcsShare"

    const-string v3, "verifySessionStates no sessions"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v1, "RcsShare"

    const-string v2, "acquireSessionInfo() exception"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    :try_start_1
    const-string v1, "RcsShare"

    const-string v2, "verifySessionStates no sessions"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public static generateTelUri(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Null telephone number"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "tel:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/android/server/telecom/rcs/RcsUtils;->getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/telephony/PhoneNumberUtils;->formatNumberToE164(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RcsShare"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public static final getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const-string v0, "country_detector"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/CountryDetector;

    invoke-virtual {v0}, Landroid/location/CountryDetector;->detectCountry()Landroid/location/Country;

    move-result-object v0

    invoke-virtual {v0}, Landroid/location/Country;->getCountryIso()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getInvitationText(Landroid/content/res/Resources;Lcom/android/services/telephony/common/RcsTransferConstants$SessionType;)Ljava/lang/CharSequence;
    .locals 2

    sget-object v0, Lcom/android/server/telecom/rcs/RcsUtils$3;->$SwitchMap$com$android$services$telephony$common$RcsTransferConstants$SessionType:[I

    invoke-virtual {p1}, Lcom/android/services/telephony/common/RcsTransferConstants$SessionType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const-string v0, ""

    :goto_0
    return-object v0

    :pswitch_0
    const v0, 0x7f080089

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    const v0, 0x7f080085

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    const v0, 0x7f080086

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    const v0, 0x7f080087

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_4
    const v0, 0x7f080088

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static getPhoneNumber(Lcom/android/internal/telephony/CallManager;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    const-string v1, "RcsShare"

    const-string v2, "getPhoneNumber() is null "

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static getSessionStateCursor(Landroid/content/Context;)Landroid/database/Cursor;
    .locals 6

    const/4 v4, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/services/telephony/common/RcsTransferConstants$Cs;->ACTIVE_SESSIONS_URI:Landroid/net/Uri;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "id"

    aput-object v5, v2, v3

    const/4 v3, 0x1

    const-string v5, "state"

    aput-object v5, v2, v3

    const/4 v3, 0x2

    const-string v5, "dir"

    aput-object v5, v2, v3

    const/4 v3, 0x3

    const-string v5, "type"

    aput-object v5, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v5, Lcom/android/services/telephony/common/RcsTransferConstants$SessionType;->IMAGE_SHARE:Lcom/android/services/telephony/common/RcsTransferConstants$SessionType;

    invoke-virtual {v5}, Lcom/android/services/telephony/common/RcsTransferConstants$SessionType;->getValue()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v5, Lcom/android/services/telephony/common/RcsTransferConstants$SessionType;->VIDEO_SHARE:Lcom/android/services/telephony/common/RcsTransferConstants$SessionType;

    invoke-virtual {v5}, Lcom/android/services/telephony/common/RcsTransferConstants$SessionType;->getValue()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method
