.class public Lcom/android/incallui/callerinfocard/item/MessageItem;
.super Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;
.source "MessageItem.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;Landroid/database/Cursor;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;-><init>(Landroid/content/Context;Landroid/net/Uri;Landroid/database/Cursor;Ljava/lang/Object;)V

    return-void
.end method

.method private setContent(Landroid/database/Cursor;Ljava/lang/String;)V
    .locals 4

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/callerinfocard/item/MessageItem;->mContent:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/incallui/callerinfocard/item/MessageItem;->mContent:Ljava/lang/String;

    const-string v2, "\n"

    const-string v3, " "

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/callerinfocard/item/MessageItem;->mContent:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private setContent(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const/4 v6, -0x1

    const/4 v3, 0x0

    const-string v5, "sub_cs"

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v6, :cond_0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    :cond_0
    const/4 v2, 0x0

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v6, :cond_1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    :cond_1
    if-eqz v3, :cond_2

    if-eqz v2, :cond_2

    new-instance v1, Lcom/google/android/mms/pdu/EncodedStringValue;

    invoke-static {v2}, Lcom/google/android/mms/pdu/PduPersister;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-direct {v1, v3, v5}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(I[B)V

    invoke-virtual {v1}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v2

    :cond_2
    const/4 v4, 0x0

    invoke-interface {p1, p3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v6, :cond_3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    :cond_3
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    if-nez v4, :cond_4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "<"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ">"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/incallui/callerinfocard/item/MessageItem;->mContent:Ljava/lang/String;

    :goto_0
    return-void

    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "<"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/incallui/callerinfocard/item/MessageItem;->mContent:Ljava/lang/String;

    goto :goto_0

    :cond_5
    iput-object v4, p0, Lcom/android/incallui/callerinfocard/item/MessageItem;->mContent:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method protected setItem(Landroid/content/Context;Landroid/net/Uri;Landroid/database/Cursor;Ljava/lang/Object;)V
    .locals 6

    const/4 v4, 0x1

    const/4 v5, -0x1

    if-nez p3, :cond_0

    const-string v2, "MessageItem"

    const-string v3, "cursor is null"

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v4, p0, Lcom/android/incallui/callerinfocard/item/MessageItem;->mDeleted:Z

    :goto_0
    return-void

    :cond_0
    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "MessageItem"

    const-string v3, "cursor count is 0. return false"

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    const/4 p3, 0x0

    iput-boolean v4, p0, Lcom/android/incallui/callerinfocard/item/MessageItem;->mDeleted:Z

    goto :goto_0

    :cond_1
    const v2, 0x7f0202fd

    iput v2, p0, Lcom/android/incallui/callerinfocard/item/MessageItem;->mIconRes:I

    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v2, "transport_type"

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v5, :cond_3

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "MessageItem"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "transportType: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "mms"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "date"

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v5, :cond_2

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/incallui/callerinfocard/item/MessageItem;->mUpdateTime:J

    iget-wide v2, p0, Lcom/android/incallui/callerinfocard/item/MessageItem;->mUpdateTime:J

    invoke-virtual {p0, p1, v2, v3}, Lcom/android/incallui/callerinfocard/item/MessageItem;->getUpdateTimeString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/incallui/callerinfocard/item/MessageItem;->mDate:Ljava/lang/String;

    :cond_2
    const-string v2, "sub"

    const-string v3, "text"

    invoke-direct {p0, p3, v2, v3}, Lcom/android/incallui/callerinfocard/item/MessageItem;->setContent(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_1
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_4
    const-string v2, "date"

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v5, :cond_5

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/incallui/callerinfocard/item/MessageItem;->mUpdateTime:J

    iget-wide v2, p0, Lcom/android/incallui/callerinfocard/item/MessageItem;->mUpdateTime:J

    invoke-virtual {p0, p1, v2, v3}, Lcom/android/incallui/callerinfocard/item/MessageItem;->getUpdateTimeString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/incallui/callerinfocard/item/MessageItem;->mDate:Ljava/lang/String;

    :cond_5
    const-string v2, "body"

    invoke-direct {p0, p3, v2}, Lcom/android/incallui/callerinfocard/item/MessageItem;->setContent(Landroid/database/Cursor;Ljava/lang/String;)V

    goto :goto_1
.end method
