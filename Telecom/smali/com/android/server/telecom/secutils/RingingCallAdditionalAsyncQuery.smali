.class public Lcom/android/server/telecom/secutils/RingingCallAdditionalAsyncQuery;
.super Landroid/content/AsyncQueryHandler;
.source "RingingCallAdditionalAsyncQuery.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/telecom/secutils/RingingCallAdditionalAsyncQuery$OnQueryCompleteListener;
    }
.end annotation


# static fields
.field private static LOG_TAG:Ljava/lang/String;

.field private static listener:Lcom/android/server/telecom/secutils/RingingCallAdditionalAsyncQuery$OnQueryCompleteListener;


# instance fields
.field private mCallerInfo:Lcom/android/internal/telephony/CallerInfo;

.field private mListener:Lcom/android/server/telecom/secutils/RingingCallAdditionalAsyncQuery$OnQueryCompleteListener;

.field private mQueryType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "RingingCallAdditionalAsyncQuery"

    sput-object v0, Lcom/android/server/telecom/secutils/RingingCallAdditionalAsyncQuery;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Lcom/android/server/telecom/secutils/RingingCallAdditionalAsyncQuery$1;

    invoke-direct {v0}, Lcom/android/server/telecom/secutils/RingingCallAdditionalAsyncQuery$1;-><init>()V

    sput-object v0, Lcom/android/server/telecom/secutils/RingingCallAdditionalAsyncQuery;->listener:Lcom/android/server/telecom/secutils/RingingCallAdditionalAsyncQuery$OnQueryCompleteListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/ContentResolver;ILcom/android/internal/telephony/CallerInfo;Lcom/android/server/telecom/secutils/RingingCallAdditionalAsyncQuery$OnQueryCompleteListener;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    iput p2, p0, Lcom/android/server/telecom/secutils/RingingCallAdditionalAsyncQuery;->mQueryType:I

    iput-object p3, p0, Lcom/android/server/telecom/secutils/RingingCallAdditionalAsyncQuery;->mCallerInfo:Lcom/android/internal/telephony/CallerInfo;

    iput-object p4, p0, Lcom/android/server/telecom/secutils/RingingCallAdditionalAsyncQuery;->mListener:Lcom/android/server/telecom/secutils/RingingCallAdditionalAsyncQuery$OnQueryCompleteListener;

    return-void
.end method

.method static synthetic access$000()Lcom/android/server/telecom/secutils/RingingCallAdditionalAsyncQuery$OnQueryCompleteListener;
    .locals 1

    sget-object v0, Lcom/android/server/telecom/secutils/RingingCallAdditionalAsyncQuery;->listener:Lcom/android/server/telecom/secutils/RingingCallAdditionalAsyncQuery$OnQueryCompleteListener;

    return-object v0
.end method

.method public static startAdditionalQuery(Landroid/content/Context;Lcom/android/internal/telephony/CallerInfo;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    const-string v0, "RingingCallAdditionalAsyncQuery"

    const-string v1, "startAdditionalQuery"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-boolean v1, p1, Lcom/android/internal/telephony/CallerInfo;->shouldSendToVoicemail:Z

    if-eqz v1, :cond_1

    const-string v0, "RingingCallAdditionalAsyncQuery"

    const-string v1, "shouldSendToVoicemail"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p1, Lcom/android/internal/telephony/CallerInfo;->contactRingtoneUri:Landroid/net/Uri;

    if-nez v1, :cond_2

    iget-boolean v1, p1, Lcom/android/internal/telephony/CallerInfo;->contactExists:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x2

    sget-object v2, Lcom/android/server/telecom/secutils/RingingCallAdditionalAsyncQuery;->listener:Lcom/android/server/telecom/secutils/RingingCallAdditionalAsyncQuery$OnQueryCompleteListener;

    invoke-static {v0, v1, p1, v2, v3}, Lcom/android/server/telecom/secutils/RingingCallAdditionalAsyncQuery;->startQuery(Landroid/content/ContentResolver;ILcom/android/internal/telephony/CallerInfo;Lcom/android/server/telecom/secutils/RingingCallAdditionalAsyncQuery$OnQueryCompleteListener;Lcom/android/internal/telephony/Connection;)V

    :cond_2
    iget-boolean v1, p1, Lcom/android/internal/telephony/CallerInfo;->contactExists:Z

    if-eqz v1, :cond_3

    const/16 v1, 0x8

    sget-object v2, Lcom/android/server/telecom/secutils/RingingCallAdditionalAsyncQuery;->listener:Lcom/android/server/telecom/secutils/RingingCallAdditionalAsyncQuery$OnQueryCompleteListener;

    invoke-static {v0, v1, p1, v2, v3}, Lcom/android/server/telecom/secutils/RingingCallAdditionalAsyncQuery;->startQuery(Landroid/content/ContentResolver;ILcom/android/internal/telephony/CallerInfo;Lcom/android/server/telecom/secutils/RingingCallAdditionalAsyncQuery$OnQueryCompleteListener;Lcom/android/internal/telephony/Connection;)V

    :cond_3
    iget-boolean v1, p1, Lcom/android/internal/telephony/CallerInfo;->contactExists:Z

    if-eqz v1, :cond_0

    const/16 v1, 0x10

    sget-object v2, Lcom/android/server/telecom/secutils/RingingCallAdditionalAsyncQuery;->listener:Lcom/android/server/telecom/secutils/RingingCallAdditionalAsyncQuery$OnQueryCompleteListener;

    invoke-static {v0, v1, p1, v2, v3}, Lcom/android/server/telecom/secutils/RingingCallAdditionalAsyncQuery;->startQuery(Landroid/content/ContentResolver;ILcom/android/internal/telephony/CallerInfo;Lcom/android/server/telecom/secutils/RingingCallAdditionalAsyncQuery$OnQueryCompleteListener;Lcom/android/internal/telephony/Connection;)V

    goto :goto_0
.end method

.method public static startQuery(Landroid/content/ContentResolver;ILcom/android/internal/telephony/CallerInfo;Lcom/android/server/telecom/secutils/RingingCallAdditionalAsyncQuery$OnQueryCompleteListener;Lcom/android/internal/telephony/Connection;)V
    .locals 10

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    new-instance v0, Lcom/android/server/telecom/secutils/RingingCallAdditionalAsyncQuery;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/server/telecom/secutils/RingingCallAdditionalAsyncQuery;-><init>(Landroid/content/ContentResolver;ILcom/android/internal/telephony/CallerInfo;Lcom/android/server/telecom/secutils/RingingCallAdditionalAsyncQuery$OnQueryCompleteListener;)V

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    sparse-switch p1, :sswitch_data_0

    move-object v7, v6

    move-object v5, v6

    move-object v4, v6

    move-object v3, v6

    :goto_0
    move v1, p1

    move-object v2, p4

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/telecom/secutils/RingingCallAdditionalAsyncQuery;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :sswitch_0
    const-string v2, "content://com.android.contacts/contacts"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/content/ContentProvider;->maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v3

    new-array v4, v8, [Ljava/lang/String;

    const-string v1, "starred"

    aput-object v1, v4, v7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v8, p2, Lcom/android/internal/telephony/CallerInfo;->contactIdOrZero:J

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v7, v6

    goto :goto_0

    :sswitch_1
    sget-object v2, Landroid/provider/ContactsContract$RawContactsEntity;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, v1}, Landroid/content/ContentProvider;->maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v3

    new-array v4, v8, [Ljava/lang/String;

    const-string v1, "group_ringtone"

    aput-object v1, v4, v7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "contact_id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v8, p2, Lcom/android/internal/telephony/CallerInfo;->contactIdOrZero:J

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AND mimetype = \'vnd.android.cursor.item/group_membership\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AND group_ringtone IS NOT NULL"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v7, "data1 LIMIT 1 "

    goto :goto_0

    :sswitch_2
    sget-object v2, Landroid/provider/ContactsContract$RawContactsEntity;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, v1}, Landroid/content/ContentProvider;->maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v3

    new-array v4, v8, [Ljava/lang/String;

    const-string v1, "group_vibration"

    aput-object v1, v4, v7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "contact_id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v8, p2, Lcom/android/internal/telephony/CallerInfo;->contactIdOrZero:J

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AND mimetype = \'vnd.android.cursor.item/group_membership\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AND group_vibration IS NOT NULL"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v7, "data1 LIMIT 1 "

    goto/16 :goto_0

    :sswitch_3
    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    iget-wide v4, p2, Lcom/android/internal/telephony/CallerInfo;->contactIdOrZero:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/content/ContentProvider;->maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v3

    new-array v4, v8, [Ljava/lang/String;

    const-string v1, "sec_custom_vibration"

    aput-object v1, v4, v7

    move-object v7, v6

    move-object v5, v6

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_1
        0x4 -> :sswitch_2
        0x8 -> :sswitch_3
        0x10 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 3

    sget-object v0, Lcom/android/server/telecom/secutils/RingingCallAdditionalAsyncQuery;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onQueryComplete : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/telecom/secutils/RingingCallAdditionalAsyncQuery;->mListener:Lcom/android/server/telecom/secutils/RingingCallAdditionalAsyncQuery$OnQueryCompleteListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/telecom/secutils/RingingCallAdditionalAsyncQuery;->mListener:Lcom/android/server/telecom/secutils/RingingCallAdditionalAsyncQuery$OnQueryCompleteListener;

    iget v1, p0, Lcom/android/server/telecom/secutils/RingingCallAdditionalAsyncQuery;->mQueryType:I

    iget-object v2, p0, Lcom/android/server/telecom/secutils/RingingCallAdditionalAsyncQuery;->mCallerInfo:Lcom/android/internal/telephony/CallerInfo;

    invoke-interface {v0, v1, v2, p3, p2}, Lcom/android/server/telecom/secutils/RingingCallAdditionalAsyncQuery$OnQueryCompleteListener;->onRingingCallAdditionalQueryComplete(ILcom/android/internal/telephony/CallerInfo;Landroid/database/Cursor;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
