.class Lcom/android/phone/operator/jpn/dcm/AnsweringMessage$1;
.super Landroid/database/ContentObserver;
.source "AnsweringMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/operator/jpn/dcm/AnsweringMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/operator/jpn/dcm/AnsweringMessage;


# direct methods
.method constructor <init>(Lcom/android/phone/operator/jpn/dcm/AnsweringMessage;Landroid/os/Handler;)V
    .locals 0
    .param p2    # Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/phone/operator/jpn/dcm/AnsweringMessage$1;->this$0:Lcom/android/phone/operator/jpn/dcm/AnsweringMessage;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 9
    .param p1    # Z

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/android/phone/operator/jpn/dcm/AnsweringMessage$1;->this$0:Lcom/android/phone/operator/jpn/dcm/AnsweringMessage;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "memoObserver onChange() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/phone/operator/jpn/dcm/AnsweringMessage;->log(Ljava/lang/String;)V

    const-string v3, "memo_heard = 0"

    # getter for: Lcom/android/phone/operator/jpn/dcm/AnsweringMessage;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/phone/operator/jpn/dcm/AnsweringMessage;->access$000()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/phone/AnswerMemo$Memos;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v8, "memo_contact_name"

    aput-object v8, v2, v5

    const/4 v5, 0x1

    const-string v8, "memo_create_time"

    aput-object v8, v2, v5

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    const/4 v6, 0x0

    if-eqz v7, :cond_1

    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    :cond_0
    iget-object v0, p0, Lcom/android/phone/operator/jpn/dcm/AnsweringMessage$1;->this$0:Lcom/android/phone/operator/jpn/dcm/AnsweringMessage;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "count = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " precount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    # getter for: Lcom/android/phone/operator/jpn/dcm/AnsweringMessage;->prevAnswerMsgCnt:I
    invoke-static {}, Lcom/android/phone/operator/jpn/dcm/AnsweringMessage;->access$100()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/phone/operator/jpn/dcm/AnsweringMessage;->log(Ljava/lang/String;)V

    # getter for: Lcom/android/phone/operator/jpn/dcm/AnsweringMessage;->prevAnswerMsgCnt:I
    invoke-static {}, Lcom/android/phone/operator/jpn/dcm/AnsweringMessage;->access$100()I

    move-result v0

    if-le v6, v0, :cond_3

    # setter for: Lcom/android/phone/operator/jpn/dcm/AnsweringMessage;->prevAnswerMsgCnt:I
    invoke-static {v6}, Lcom/android/phone/operator/jpn/dcm/AnsweringMessage;->access$102(I)I

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isEmergencyMode()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/operator/jpn/dcm/AnsweringMessage$1;->this$0:Lcom/android/phone/operator/jpn/dcm/AnsweringMessage;

    invoke-virtual {v0}, Lcom/android/phone/operator/jpn/dcm/AnsweringMessage;->notifyAnswerMemo()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    const/4 v7, 0x0

    :cond_2
    return-void

    :cond_3
    :try_start_1
    # getter for: Lcom/android/phone/operator/jpn/dcm/AnsweringMessage;->prevAnswerMsgCnt:I
    invoke-static {}, Lcom/android/phone/operator/jpn/dcm/AnsweringMessage;->access$100()I

    move-result v0

    if-ge v6, v0, :cond_1

    # setter for: Lcom/android/phone/operator/jpn/dcm/AnsweringMessage;->prevAnswerMsgCnt:I
    invoke-static {v6}, Lcom/android/phone/operator/jpn/dcm/AnsweringMessage;->access$102(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz v7, :cond_4

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    const/4 v7, 0x0

    :cond_4
    throw v0
.end method
