.class public Lcom/android/phone/operator/jpn/dcm/AnsweringMessage;
.super Ljava/lang/Object;
.source "AnsweringMessage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/operator/jpn/dcm/AnsweringMessage$AMSettingsChangeObserver;
    }
.end annotation


# static fields
.field private static LOG_TAG:Ljava/lang/String;

.field private static mContext:Landroid/content/Context;

.field private static prevAnswerMsgCnt:I

.field private static sInstance:Lcom/android/phone/operator/jpn/dcm/AnsweringMessage;


# instance fields
.field public contactObserver:Landroid/database/ContentObserver;

.field public memoObserver:Landroid/database/ContentObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "AnswerMemo"

    sput-object v0, Lcom/android/phone/operator/jpn/dcm/AnsweringMessage;->LOG_TAG:Ljava/lang/String;

    const/4 v0, 0x0

    sput v0, Lcom/android/phone/operator/jpn/dcm/AnsweringMessage;->prevAnswerMsgCnt:I

    const/4 v0, 0x0

    sput-object v0, Lcom/android/phone/operator/jpn/dcm/AnsweringMessage;->sInstance:Lcom/android/phone/operator/jpn/dcm/AnsweringMessage;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/phone/operator/jpn/dcm/AnsweringMessage$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/phone/operator/jpn/dcm/AnsweringMessage$1;-><init>(Lcom/android/phone/operator/jpn/dcm/AnsweringMessage;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/phone/operator/jpn/dcm/AnsweringMessage;->memoObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/phone/operator/jpn/dcm/AnsweringMessage$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/phone/operator/jpn/dcm/AnsweringMessage$2;-><init>(Lcom/android/phone/operator/jpn/dcm/AnsweringMessage;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/phone/operator/jpn/dcm/AnsweringMessage;->contactObserver:Landroid/database/ContentObserver;

    sput-object p1, Lcom/android/phone/operator/jpn/dcm/AnsweringMessage;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/android/phone/operator/jpn/dcm/AnsweringMessage;->registerForAMSettingsChange()V

    return-void
.end method

.method static synthetic access$000()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/android/phone/operator/jpn/dcm/AnsweringMessage;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100()I
    .locals 1

    sget v0, Lcom/android/phone/operator/jpn/dcm/AnsweringMessage;->prevAnswerMsgCnt:I

    return v0
.end method

.method static synthetic access$102(I)I
    .locals 0
    .param p0    # I

    sput p0, Lcom/android/phone/operator/jpn/dcm/AnsweringMessage;->prevAnswerMsgCnt:I

    return p0
.end method

.method static synthetic access$200(Lcom/android/phone/operator/jpn/dcm/AnsweringMessage;)V
    .locals 0
    .param p0    # Lcom/android/phone/operator/jpn/dcm/AnsweringMessage;

    invoke-direct {p0}, Lcom/android/phone/operator/jpn/dcm/AnsweringMessage;->updateContactInMemo()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/phone/operator/jpn/dcm/AnsweringMessage;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0    # Lcom/android/phone/operator/jpn/dcm/AnsweringMessage;
    .param p1    # Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/android/phone/operator/jpn/dcm/AnsweringMessage;->getContactName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/phone/operator/jpn/dcm/AnsweringMessage;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method private formatNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1    # Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Landroid/text/Editable$Factory;->getInstance()Landroid/text/Editable$Factory;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/text/Editable$Factory;->newEditable(Ljava/lang/CharSequence;)Landroid/text/Editable;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Landroid/text/Editable;I)V

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method private getContactName(Ljava/lang/String;)Ljava/lang/String;
    .locals 18
    .param p1    # Ljava/lang/String;

    const/16 v16, 0x0

    const-wide/16 v12, 0x0

    const/4 v2, 0x3

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v5, "display_name"

    aput-object v5, v4, v2

    const/4 v2, 0x1

    const-string v5, "number"

    aput-object v5, v4, v2

    const/4 v2, 0x2

    const-string v5, "_id"

    aput-object v5, v4, v2

    sget-object v2, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static/range {p1 .. p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    sget-object v2, Lcom/android/phone/operator/jpn/dcm/AnsweringMessage;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    if-eqz v15, :cond_6

    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "display_name"

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    const-string v2, "number"

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v2, "_id"

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, v12, v13}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v11

    const-string v2, "data"

    invoke-static {v11, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    sget-object v2, Lcom/android/phone/operator/jpn/dcm/AnsweringMessage;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const/4 v7, 0x0

    const-string v8, "mimetype=?"

    const/4 v2, 0x1

    new-array v9, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v10, "vnd.android.cursor.item/name"

    aput-object v10, v9, v2

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    const/4 v14, 0x0

    if-eqz v17, :cond_0

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToFirst()Z

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->getCount()I

    move-result v14

    :cond_0
    if-eqz v17, :cond_1

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    :cond_1
    if-eqz v15, :cond_2

    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    :cond_2
    if-nez v14, :cond_3

    sget-object v2, Lcom/android/phone/operator/jpn/dcm/AnsweringMessage;->mContext:Landroid/content/Context;

    const v5, 0x7f0a0277

    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_0
    return-object v2

    :cond_3
    move-object/from16 v2, v16

    goto :goto_0

    :cond_4
    if-eqz v15, :cond_5

    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    :cond_5
    const-string v2, ""

    goto :goto_0

    :cond_6
    if-eqz v15, :cond_7

    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    :cond_7
    move-object/from16 v2, v16

    goto :goto_0
.end method

.method public static getInstance()Lcom/android/phone/operator/jpn/dcm/AnsweringMessage;
    .locals 2

    sget-object v0, Lcom/android/phone/operator/jpn/dcm/AnsweringMessage;->sInstance:Lcom/android/phone/operator/jpn/dcm/AnsweringMessage;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/phone/operator/jpn/dcm/AnsweringMessage;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/PhoneGlobals;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/phone/operator/jpn/dcm/AnsweringMessage;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/phone/operator/jpn/dcm/AnsweringMessage;->sInstance:Lcom/android/phone/operator/jpn/dcm/AnsweringMessage;

    :cond_0
    sget-object v0, Lcom/android/phone/operator/jpn/dcm/AnsweringMessage;->sInstance:Lcom/android/phone/operator/jpn/dcm/AnsweringMessage;

    return-object v0
.end method

.method private registerForAMSettingsChange()V
    .locals 5

    const-string v1, "callsettings_answer_memo"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sget-object v1, Lcom/android/phone/operator/jpn/dcm/AnsweringMessage;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    new-instance v3, Lcom/android/phone/operator/jpn/dcm/AnsweringMessage$AMSettingsChangeObserver;

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    invoke-direct {v3, p0, v4}, Lcom/android/phone/operator/jpn/dcm/AnsweringMessage$AMSettingsChangeObserver;-><init>(Lcom/android/phone/operator/jpn/dcm/AnsweringMessage;Landroid/os/Handler;)V

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method private updateContactInMemo()V
    .locals 1

    new-instance v0, Lcom/android/phone/operator/jpn/dcm/AnsweringMessage$3;

    invoke-direct {v0, p0}, Lcom/android/phone/operator/jpn/dcm/AnsweringMessage$3;-><init>(Lcom/android/phone/operator/jpn/dcm/AnsweringMessage;)V

    invoke-virtual {v0}, Lcom/android/phone/operator/jpn/dcm/AnsweringMessage$3;->start()V

    return-void
.end method


# virtual methods
.method public cancelAnswerMsgNotification()V
    .locals 3

    sget-object v1, Lcom/android/phone/operator/jpn/dcm/AnsweringMessage;->LOG_TAG:Ljava/lang/String;

    const-string v2, "cancelAnswerMsgNotification"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Lcom/android/phone/PhoneGlobals;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    return-void
.end method

.method public checkPhoneVibrateOrSilentMode()Z
    .locals 6

    const/4 v4, 0x1

    const-string v5, "checkPhoneVibrateOrSilentMode "

    invoke-virtual {p0, v5}, Lcom/android/phone/operator/jpn/dcm/AnsweringMessage;->log(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/phone/PhoneGlobals;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const-string v5, "audio"

    invoke-virtual {v1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v3

    if-eq v4, v3, :cond_0

    if-nez v3, :cond_2

    :cond_0
    move v2, v4

    :cond_1
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkPhoneVibrateOrSilentMode "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/phone/operator/jpn/dcm/AnsweringMessage;->log(Ljava/lang/String;)V

    return v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public displayAnswerMessageToast(Ljava/lang/String;)V
    .locals 4
    .param p1    # Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    invoke-static {v1, p1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    :cond_0
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    invoke-static {v1, p1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    const/16 v1, 0x30

    const/16 v2, 0xfa

    invoke-virtual {v0, v1, v3, v2}, Landroid/widget/Toast;->setGravity(III)V

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    const/4 v0, 0x0

    return-void
.end method

.method public isAnswerMemoOff()Z
    .locals 4

    const/4 v3, 0x2

    sget-object v1, Lcom/android/phone/operator/jpn/dcm/AnsweringMessage;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "callsettings_answer_memo"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isCallInAnsweringMessage()Z
    .locals 6

    const/4 v4, 0x1

    const/4 v2, 0x0

    const-string v0, "isAutoAnswered"

    const/4 v1, 0x0

    sget-object v5, Lcom/android/phone/operator/jpn/dcm/AnsweringMessage;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v4, :cond_0

    move v2, v4

    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isCallInAnsweringMessage() isAutoAnswered = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/phone/operator/jpn/dcm/AnsweringMessage;->log(Ljava/lang/String;)V

    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public log(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;

    sget-object v0, Lcom/android/phone/operator/jpn/dcm/AnsweringMessage;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method notifyAnswerMemo()V
    .locals 19

    sget-object v1, Lcom/android/phone/operator/jpn/dcm/AnsweringMessage;->LOG_TAG:Ljava/lang/String;

    const-string v2, "notifyAnswerMemo()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v11, 0x0

    const/4 v8, 0x0

    const-string v4, "memo_heard = 0"

    sget-object v1, Lcom/android/phone/operator/jpn/dcm/AnsweringMessage;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/phone/AnswerMemo$Memos;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "memo_contact_name"

    aput-object v6, v3, v5

    const/4 v5, 0x1

    const-string v6, "memo_create_time"

    aput-object v6, v3, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    new-instance v7, Landroid/app/Notification$Builder;

    sget-object v1, Lcom/android/phone/operator/jpn/dcm/AnsweringMessage;->mContext:Landroid/content/Context;

    invoke-direct {v7, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Lcom/android/phone/PhoneGlobals;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/app/NotificationManager;

    if-eqz v9, :cond_2

    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v8

    sput v8, Lcom/android/phone/operator/jpn/dcm/AnsweringMessage;->prevAnswerMsgCnt:I

    :cond_0
    sget-object v1, Lcom/android/phone/operator/jpn/dcm/AnsweringMessage;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "total count = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v13, Landroid/content/Intent;

    const-string v1, "com.samsung.phone.Answermemo.SHOW_MEMO_LIST"

    invoke-direct {v13, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "notif_id"

    const/16 v2, 0x3e9

    invoke-virtual {v13, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    sget-object v1, Lcom/android/phone/operator/jpn/dcm/AnsweringMessage;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v13, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v17

    if-nez v8, :cond_4

    const/16 v1, 0x3e9

    invoke-virtual {v14, v1}, Landroid/app/NotificationManager;->cancel(I)V

    :cond_1
    :goto_0
    invoke-virtual {v7}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v16

    move-object/from16 v0, v16

    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x10

    move-object/from16 v0, v16

    iput v1, v0, Landroid/app/Notification;->flags:I

    if-lez v8, :cond_2

    const/16 v1, 0x3e9

    move-object/from16 v0, v16

    invoke-virtual {v14, v1, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    if-eqz v9, :cond_3

    invoke-interface {v9}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_3
    return-void

    :cond_4
    const/4 v1, 0x1

    if-ne v8, v1, :cond_7

    :try_start_1
    const-string v1, "memo_contact_name"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/phone/operator/jpn/dcm/AnsweringMessage;->getContactName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_5

    invoke-virtual {v15}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "memo_contact_name"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/phone/operator/jpn/dcm/AnsweringMessage;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    :cond_5
    sget-object v1, Lcom/android/phone/operator/jpn/dcm/AnsweringMessage;->mContext:Landroid/content/Context;

    const v2, 0x7f0a0674

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1, v15}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    const v2, 0x7f0200cd

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v1

    move-object/from16 v0, v17

    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    if-eqz v9, :cond_6

    invoke-interface {v9}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_6

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v1

    :cond_7
    :try_start_2
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0x7f0200cd

    invoke-virtual {v7, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v1

    sget-object v2, Lcom/android/phone/operator/jpn/dcm/AnsweringMessage;->mContext:Landroid/content/Context;

    const v3, 0x7f0a0675

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    sget-object v2, Lcom/android/phone/operator/jpn/dcm/AnsweringMessage;->mContext:Landroid/content/Context;

    const v3, 0x7f0a0676

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    move-object/from16 v0, v17

    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    new-instance v12, Landroid/app/Notification$InboxStyle;

    invoke-direct {v12, v7}, Landroid/app/Notification$InboxStyle;-><init>(Landroid/app/Notification$Builder;)V

    :cond_8
    const-string v1, "memo_contact_name"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/phone/operator/jpn/dcm/AnsweringMessage;->getContactName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_9

    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_9

    const-string v1, "memo_contact_name"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/phone/operator/jpn/dcm/AnsweringMessage;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    :cond_9
    invoke-virtual {v12, v10}, Landroid/app/Notification$InboxStyle;->addLine(Ljava/lang/CharSequence;)Landroid/app/Notification$InboxStyle;

    add-int/lit8 v11, v11, 0x1

    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_a

    const/4 v1, 0x3

    if-lt v11, v1, :cond_8

    :cond_a
    const/4 v1, 0x3

    if-le v8, v1, :cond_1

    sget-object v1, Lcom/android/phone/operator/jpn/dcm/AnsweringMessage;->mContext:Landroid/content/Context;

    const v2, 0x7f0a0677

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    add-int/lit8 v6, v8, -0x3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1}, Landroid/app/Notification$InboxStyle;->setSummaryText(Ljava/lang/CharSequence;)Landroid/app/Notification$InboxStyle;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method public onGoingAnswerMemo(Z)V
    .locals 2
    .param p1    # Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onGoingAnswerMemo "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/phone/operator/jpn/dcm/AnsweringMessage;->log(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/phone/operator/jpn/dcm/AnsweringMessage;->onGoingAnswerMemoNotification(Z)V

    return-void
.end method

.method onGoingAnswerMemoNotification(Z)V
    .locals 12
    .param p1    # Z

    const v11, 0x181ce

    const/4 v10, 0x0

    sget-object v7, Lcom/android/phone/operator/jpn/dcm/AnsweringMessage;->LOG_TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onGoingAnswerMemoNotification "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/phone/PhoneGlobals;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v7, "notification"

    invoke-virtual {v1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/NotificationManager;

    if-eqz p1, :cond_0

    new-instance v2, Landroid/content/Intent;

    const-string v7, "com.samsung.phone.Answermemo.SHOW_ANSWERING_MEMO_SETTINGS"

    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v10, v2, v10}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    new-instance v3, Landroid/app/Notification$Builder;

    invoke-direct {v3, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const v7, 0x7f0a0670

    invoke-virtual {v1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v7, 0x7f0200cc

    invoke-virtual {v3, v7}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v7

    invoke-virtual {v7, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v4

    iget v7, v4, Landroid/app/Notification;->flags:I

    or-int/lit8 v7, v7, 0x2

    iput v7, v4, Landroid/app/Notification;->flags:I

    invoke-virtual {v5, v11, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v5, v11}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_0
.end method

.method public updateAMNotificationAtStartUp()V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isEmergencyMode()Z

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isEmergencyMode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/phone/operator/jpn/dcm/AnsweringMessage;->log(Ljava/lang/String;)V

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/operator/jpn/dcm/AnsweringMessage;->notifyAnswerMemo()V

    :cond_0
    sget-object v2, Lcom/android/phone/operator/jpn/dcm/AnsweringMessage;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "callsettings_answer_memo"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1

    if-ne v0, v4, :cond_3

    invoke-virtual {p0}, Lcom/android/phone/operator/jpn/dcm/AnsweringMessage;->checkPhoneVibrateOrSilentMode()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_1
    if-nez v1, :cond_3

    invoke-virtual {p0, v4}, Lcom/android/phone/operator/jpn/dcm/AnsweringMessage;->onGoingAnswerMemoNotification(Z)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    if-eq v0, v5, :cond_4

    if-eqz v1, :cond_2

    :cond_4
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/phone/operator/jpn/dcm/AnsweringMessage;->onGoingAnswerMemoNotification(Z)V

    goto :goto_0
.end method

.method public updateAutoAnswerMemo()V
    .locals 3

    sget-object v0, Lcom/android/phone/operator/jpn/dcm/AnsweringMessage;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "callsettings_answer_memo"

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/phone/operator/jpn/dcm/AnsweringMessage;->onGoingAnswerMemo(Z)V

    return-void
.end method

.method public updateAutoAnswerMemo(Landroid/content/SharedPreferences;)V
    .locals 3
    .param p1    # Landroid/content/SharedPreferences;

    sget-object v0, Lcom/android/phone/operator/jpn/dcm/AnsweringMessage;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "callsettings_answer_memo"

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/phone/operator/jpn/dcm/AnsweringMessage;->onGoingAnswerMemo(Z)V

    return-void
.end method
