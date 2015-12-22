.class public Lcom/sec/android/cover/sviewcover/widget/SViewCoverMissedEventWidget;
.super Landroid/widget/LinearLayout;
.source "SViewCoverMissedEventWidget.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/cover/sviewcover/widget/SViewCoverMissedEventWidget$NotiMode;
    }
.end annotation


# static fields
.field private static DBG:Z = false

.field private static final MISSED_EVENT_ARRIVED:Ljava/lang/String; = "com.android.server.NotificationManagerService.NotificationArrived"

.field private static final MISSED_EVENT_REMOVED:Ljava/lang/String; = "com.android.server.NotificationManagerService.NotificationRemoved"

.field public static final SVIEWCOVER_FEATURE_LEVEL:Ljava/lang/String; = "com.sec.feature.cover.sviewcover"

.field private static TAG:Ljava/lang/String;


# instance fields
.field private final CALL_PKG:Ljava/lang/String;

.field private final EMAIL_PKG:Ljava/lang/String;

.field private final MISSED_EVENT_UPDATE:I

.field private MSG_PKG:Ljava/lang/String;

.field private final REQ_INDEX_CALL_EMAIL:I

.field private final REQ_INDEX_MSG:I

.field private VZW_MSG_APP:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mMissedCallCount:I

.field private mMissedCallTextView:Landroid/widget/TextView;

.field private mMissedEventDivider:Landroid/widget/ImageView;

.field private mMissedMsgCount:I

.field private mMissedMsgTextView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverMissedEventWidget;->DBG:Z

    const-string v0, "SViewCoverMissedEventWidget"

    sput-object v0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverMissedEventWidget;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string v0, "com.android.phone"

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverMissedEventWidget;->CALL_PKG:Ljava/lang/String;

    const-string v0, "com.android.mms"

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverMissedEventWidget;->MSG_PKG:Ljava/lang/String;

    const-string v0, "com.verizon.messaging.vzmsgs"

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverMissedEventWidget;->VZW_MSG_APP:Ljava/lang/String;

    const-string v0, "com.android.email"

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverMissedEventWidget;->EMAIL_PKG:Ljava/lang/String;

    const/16 v0, 0x12c2

    iput v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverMissedEventWidget;->MISSED_EVENT_UPDATE:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverMissedEventWidget;->REQ_INDEX_CALL_EMAIL:I

    const/16 v0, 0x7b

    iput v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverMissedEventWidget;->REQ_INDEX_MSG:I

    iput v1, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverMissedEventWidget;->mMissedCallCount:I

    iput v1, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverMissedEventWidget;->mMissedMsgCount:I

    iput-object p1, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverMissedEventWidget;->mContext:Landroid/content/Context;

    sget-object v0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverMissedEventWidget;->TAG:Ljava/lang/String;

    const-string v1, "MissedEvent ()"

    invoke-static {v0, v1}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private getNumMissedEvent(Lcom/sec/android/cover/sviewcover/widget/SViewCoverMissedEventWidget$NotiMode;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private getUnreadMessageCounts()I
    .locals 9

    const/4 v8, 0x0

    const/4 v6, 0x0

    sget-object v0, Landroid/provider/Telephony$Threads;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v4, "simple"

    const-string v5, "true"

    invoke-virtual {v0, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "sum(unread_count)"

    aput-object v0, v2, v8

    const-string v3, "unread_count > 0"

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverMissedEventWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    if-nez v6, :cond_2

    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_0
    move v0, v8

    :cond_1
    :goto_0
    return v0

    :cond_2
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_3
    if-eqz v6, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    :goto_1
    move v0, v8

    goto :goto_0

    :catch_0
    move-exception v7

    :try_start_2
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v6, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v0

    if-eqz v6, :cond_5

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0
.end method


# virtual methods
.method public getCallMsgTTSMessage()V
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x1

    const-string v0, ""

    iget v1, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverMissedEventWidget;->mMissedCallCount:I

    if-lez v1, :cond_2

    iget v1, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverMissedEventWidget;->mMissedMsgCount:I

    if-lez v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverMissedEventWidget;->mContext:Landroid/content/Context;

    sget v2, Lcom/sec/android/sviewcover/R$string;->clearcover_calls_and_messages:I

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverMissedEventWidget;->mMissedCallCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    iget v4, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverMissedEventWidget;->mMissedMsgCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverMissedEventWidget;->mMissedCallTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverMissedEventWidget;->mMissedCallTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverMissedEventWidget;->mContext:Landroid/content/Context;

    sget v3, Lcom/sec/android/sviewcover/R$string;->clearcover_n_missed_calls:I

    new-array v4, v6, [Ljava/lang/Object;

    iget v5, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverMissedEventWidget;->mMissedCallCount:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverMissedEventWidget;->mMissedMsgTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverMissedEventWidget;->mMissedMsgTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverMissedEventWidget;->mContext:Landroid/content/Context;

    sget v3, Lcom/sec/android/sviewcover/R$string;->clearcover_n_unread_messages:I

    new-array v4, v6, [Ljava/lang/Object;

    iget v5, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverMissedEventWidget;->mMissedMsgCount:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget v1, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverMissedEventWidget;->mMissedCallCount:I

    if-le v1, v6, :cond_3

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverMissedEventWidget;->mContext:Landroid/content/Context;

    sget v2, Lcom/sec/android/sviewcover/R$string;->clearcover_n_missed_calls:I

    new-array v3, v6, [Ljava/lang/Object;

    iget v4, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverMissedEventWidget;->mMissedCallCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverMissedEventWidget;->mMissedCallTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverMissedEventWidget;->mMissedCallTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    iget v1, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverMissedEventWidget;->mMissedMsgCount:I

    if-le v1, v6, :cond_4

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverMissedEventWidget;->mContext:Landroid/content/Context;

    sget v2, Lcom/sec/android/sviewcover/R$string;->clearcover_n_unread_messages:I

    new-array v3, v6, [Ljava/lang/Object;

    iget v4, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverMissedEventWidget;->mMissedMsgCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverMissedEventWidget;->mMissedMsgTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverMissedEventWidget;->mMissedMsgTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_4
    iget v1, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverMissedEventWidget;->mMissedCallCount:I

    if-ne v1, v6, :cond_5

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverMissedEventWidget;->mContext:Landroid/content/Context;

    sget v2, Lcom/sec/android/sviewcover/R$string;->clearcover_1_missed_call:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverMissedEventWidget;->mMissedCallTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverMissedEventWidget;->mMissedCallTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_5
    iget v1, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverMissedEventWidget;->mMissedMsgCount:I

    if-ne v1, v6, :cond_6

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverMissedEventWidget;->mContext:Landroid/content/Context;

    sget v2, Lcom/sec/android/sviewcover/R$string;->clearcover_1_unread_message:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverMissedEventWidget;->mMissedMsgTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverMissedEventWidget;->mMissedMsgTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_6
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverMissedEventWidget;->mContext:Landroid/content/Context;

    sget v2, Lcom/sec/android/sviewcover/R$string;->clearcover_no_missed_event:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getMissedCallCount()I
    .locals 1

    sget-object v0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverMissedEventWidget$NotiMode;->MissedCall:Lcom/sec/android/cover/sviewcover/widget/SViewCoverMissedEventWidget$NotiMode;

    invoke-direct {p0, v0}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverMissedEventWidget;->getNumMissedEvent(Lcom/sec/android/cover/sviewcover/widget/SViewCoverMissedEventWidget$NotiMode;)I

    move-result v0

    return v0
.end method

.method public getMissedEventCount()I
    .locals 2

    sget-object v0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverMissedEventWidget$NotiMode;->MissedCall:Lcom/sec/android/cover/sviewcover/widget/SViewCoverMissedEventWidget$NotiMode;

    invoke-direct {p0, v0}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverMissedEventWidget;->getNumMissedEvent(Lcom/sec/android/cover/sviewcover/widget/SViewCoverMissedEventWidget$NotiMode;)I

    move-result v0

    sget-object v1, Lcom/sec/android/cover/sviewcover/widget/SViewCoverMissedEventWidget$NotiMode;->MissedMsg:Lcom/sec/android/cover/sviewcover/widget/SViewCoverMissedEventWidget$NotiMode;

    invoke-direct {p0, v1}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverMissedEventWidget;->getNumMissedEvent(Lcom/sec/android/cover/sviewcover/widget/SViewCoverMissedEventWidget$NotiMode;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getUnreadMessageCount()I
    .locals 1

    sget-object v0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverMissedEventWidget$NotiMode;->MissedMsg:Lcom/sec/android/cover/sviewcover/widget/SViewCoverMissedEventWidget$NotiMode;

    invoke-direct {p0, v0}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverMissedEventWidget;->getNumMissedEvent(Lcom/sec/android/cover/sviewcover/widget/SViewCoverMissedEventWidget$NotiMode;)I

    move-result v0

    return v0
.end method

.method public isVzwMsgAppDefault()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
