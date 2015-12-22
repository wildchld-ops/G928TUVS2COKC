.class public Lcom/android/incallui/secutils/SecCallerInfoUtils;
.super Ljava/lang/Object;
.source "SecCallerInfoUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/secutils/SecCallerInfoUtils$NumberChangedListener;
    }
.end annotation


# static fields
.field private static sQueryWaitCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/android/incallui/secutils/SecCallerInfoUtils;->sQueryWaitCount:I

    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/Call;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Lcom/android/incallui/secutils/SecCallerInfoUtils$NumberChangedListener;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/incallui/secutils/SecCallerInfoUtils;->makeQueryAfterRemovePreviousInfo(Lcom/android/incallui/Call;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Lcom/android/incallui/secutils/SecCallerInfoUtils$NumberChangedListener;)V

    return-void
.end method

.method public static getNameFromFDN(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 11

    const/4 v2, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v10, 0x0

    const/4 v9, 0x0

    const/4 v1, 0x0

    const/4 v8, 0x0

    if-eqz p0, :cond_1

    const-string v0, "ltn_sdnname_display"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "content://icc/sdn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    if-eqz v8, :cond_1

    const-string v0, "SecCallerInfoUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getNameFromFDN cursor != null size = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_0
    const/4 v0, 0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    const-string v0, "SecCallerInfoUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getNameFromFDN - query - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v10, p1}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    move-object v2, v9

    :cond_1
    :goto_1
    return-object v2

    :cond_2
    const-string v0, "content://icc/fdn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_0

    :cond_3
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    :cond_4
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_1
.end method

.method private static makeQueryAfterRemovePreviousInfo(Lcom/android/incallui/Call;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Lcom/android/incallui/secutils/SecCallerInfoUtils$NumberChangedListener;)V
    .locals 6

    const/4 v3, 0x0

    if-nez p0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-boolean v2, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->queryCompleted:Z

    if-nez v2, :cond_1

    sget v2, Lcom/android/incallui/secutils/SecCallerInfoUtils;->sQueryWaitCount:I

    const/4 v4, 0x5

    if-ge v2, v4, :cond_1

    move-object v1, p1

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    new-instance v3, Lcom/android/incallui/secutils/SecCallerInfoUtils$1;

    invoke-direct {v3, p0, v1, p2}, Lcom/android/incallui/secutils/SecCallerInfoUtils$1;-><init>(Lcom/android/incallui/Call;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Lcom/android/incallui/secutils/SecCallerInfoUtils$NumberChangedListener;)V

    const-wide/16 v4, 0xc8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    sget v2, Lcom/android/incallui/secutils/SecCallerInfoUtils;->sQueryWaitCount:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/android/incallui/secutils/SecCallerInfoUtils;->sQueryWaitCount:I

    const-string v2, "SecCallerInfoUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "makeQueryAfterRemovePreviousInfo: Now querying about previous number, update later, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/android/incallui/secutils/SecCallerInfoUtils;->sQueryWaitCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v2, "SecCallerInfoUtils"

    const-string v4, "makeQueryAfterRemovePreviousInfo"

    invoke-static {v2, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/incallui/Call;->getState()I

    move-result v2

    const/4 v4, 0x4

    if-ne v2, v4, :cond_2

    const/4 v2, 0x1

    :goto_1
    invoke-static {v0, p0, v2}, Lcom/android/incallui/ContactInfoCache;->buildCacheEntryFromCall(Landroid/content/Context;Lcom/android/incallui/Call;Z)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object p1

    invoke-static {v0}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/ContactInfoCache;->clearCache()V

    invoke-interface {p2, p0}, Lcom/android/incallui/secutils/SecCallerInfoUtils$NumberChangedListener;->onNumberChanged(Lcom/android/incallui/Call;)V

    sput v3, Lcom/android/incallui/secutils/SecCallerInfoUtils;->sQueryWaitCount:I

    goto :goto_0

    :cond_2
    move v2, v3

    goto :goto_1
.end method

.method public static refreshContactInfoCache(Lcom/android/incallui/Call;Lcom/android/incallui/Call;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Lcom/android/incallui/secutils/SecCallerInfoUtils$NumberChangedListener;)V
    .locals 9

    const-string v6, "SecCallerInfoUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "refreshContactInfoCache call "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p0, :cond_2

    const/4 v1, 0x0

    const-string v6, "feature_multisim"

    invoke-static {v6}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-static {p0}, Lcom/android/incallui/InCallUtilsMultiSIM;->getSubId(Lcom/android/incallui/Call;)I

    move-result v6

    invoke-virtual {p0}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/PhoneNumberUtils;->isVoiceMailNumber(ILjava/lang/String;)Z

    move-result v1

    :goto_0
    if-eqz v1, :cond_2

    const-string v6, "SecCallerInfoUtils"

    const-string v7, "no update (voicemail) "

    invoke-static {v6, v7}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/telephony/PhoneNumberUtils;->isVoiceMailNumber(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0

    :cond_2
    invoke-static {p0, p1}, Lcom/android/incallui/Call;->areSame(Lcom/android/incallui/Call;Lcom/android/incallui/Call;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/secui/SecCall;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/incallui/secui/SecCall;->getAddress()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v6, "SecCallerInfoUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "primaryNumber : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " newNumber : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5

    :cond_3
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    :cond_4
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_6

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_6

    :cond_5
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/secui/SecCall;

    move-result-object v6

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/incallui/secui/SecCall;->setAddress(Ljava/lang/String;)V

    const/4 v0, 0x1

    :cond_6
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/secui/SecCall;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/incallui/secui/SecCall;->getCallerDisplayName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getCnapName()Ljava/lang/String;

    move-result-object v2

    const-string v6, "SecCallerInfoUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "primaryName : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " newName : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_9

    :cond_7
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_8

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_9

    :cond_8
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_a

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_a

    :cond_9
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/secui/SecCall;

    move-result-object v6

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getCnapName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/incallui/secui/SecCall;->setCallerDisplayName(Ljava/lang/String;)V

    const/4 v0, 0x1

    :cond_a
    const-string v6, "emergency_call_state_update_after_dial"

    invoke-static {v6}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-static {p1}, Lcom/android/incallui/InCallUtils;->needToUpdateEmerencyCallState(Lcom/android/incallui/Call;)Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getEmergencyCallUpdateState()Z

    move-result v6

    if-nez v6, :cond_b

    const/4 v6, 0x1

    invoke-virtual {p1, v6}, Lcom/android/incallui/Call;->setEmergencyCallUpdateState(Z)V

    const/4 v0, 0x1

    const-string v6, "SecCallerInfoUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setEmergencyCallUpdateState : haveToMakeQuery "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    const-string v6, "SecCallerInfoUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "refreshContactInfoCache : haveToMakeQuery "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    invoke-static {p1, p2, p3}, Lcom/android/incallui/secutils/SecCallerInfoUtils;->makeQueryAfterRemovePreviousInfo(Lcom/android/incallui/Call;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Lcom/android/incallui/secutils/SecCallerInfoUtils$NumberChangedListener;)V

    goto/16 :goto_1
.end method
