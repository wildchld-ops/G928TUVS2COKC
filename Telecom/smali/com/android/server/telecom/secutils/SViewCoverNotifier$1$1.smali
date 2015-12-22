.class Lcom/android/server/telecom/secutils/SViewCoverNotifier$1$1;
.super Landroid/content/AsyncQueryHandler;
.source "SViewCoverNotifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/telecom/secutils/SViewCoverNotifier$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/telecom/secutils/SViewCoverNotifier$1;


# direct methods
.method constructor <init>(Lcom/android/server/telecom/secutils/SViewCoverNotifier$1;Landroid/content/ContentResolver;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/telecom/secutils/SViewCoverNotifier$1$1;->this$1:Lcom/android/server/telecom/secutils/SViewCoverNotifier$1;

    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 15

    # getter for: Lcom/android/server/telecom/secutils/SViewCoverNotifier;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/telecom/secutils/SViewCoverNotifier;->access$100()Ljava/lang/String;

    move-result-object v2

    const-string v3, " updateMissedCallNotify onQueryComplete()..."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p3, :cond_6

    :try_start_0
    # getter for: Lcom/android/server/telecom/secutils/SViewCoverNotifier;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/telecom/secutils/SViewCoverNotifier;->access$100()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MISSED_CALL query counts "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v2, 0x0

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/android/server/telecom/secutils/SViewCoverNotifier$1$1;->this$1:Lcom/android/server/telecom/secutils/SViewCoverNotifier$1;

    iget-object v4, v3, Lcom/android/server/telecom/secutils/SViewCoverNotifier$1;->this$0:Lcom/android/server/telecom/secutils/SViewCoverNotifier;

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getCount()I

    move-result v3

    const/4 v7, 0x1

    if-ne v3, v7, :cond_7

    const/4 v3, 0x1

    :goto_0
    # setter for: Lcom/android/server/telecom/secutils/SViewCoverNotifier;->mAllMissedCallsFromSamePerson:Z
    invoke-static {v4, v3}, Lcom/android/server/telecom/secutils/SViewCoverNotifier;->access$202(Lcom/android/server/telecom/secutils/SViewCoverNotifier;Z)Z

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, "_id"

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    const-string v3, "date"

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    # getter for: Lcom/android/server/telecom/secutils/SViewCoverNotifier;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/telecom/secutils/SViewCoverNotifier;->access$100()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onQueryComplete : callID="

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v3, v4, v10}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    add-int/lit8 v4, v2, 0x1

    const-string v2, "count"

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    add-int/2addr v5, v10

    const-string v2, "number"

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v2, "name"

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v11, "_id"

    move-object/from16 v0, p3

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    move-object/from16 v0, p3

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    # getter for: Lcom/android/server/telecom/secutils/SViewCoverNotifier;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/telecom/secutils/SViewCoverNotifier;->access$100()Ljava/lang/String;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "id = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Object;

    invoke-static {v12, v11, v13}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v11, "-4"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    iget-object v2, p0, Lcom/android/server/telecom/secutils/SViewCoverNotifier$1$1;->this$1:Lcom/android/server/telecom/secutils/SViewCoverNotifier$1;

    iget-object v2, v2, Lcom/android/server/telecom/secutils/SViewCoverNotifier$1;->this$0:Lcom/android/server/telecom/secutils/SViewCoverNotifier;

    # getter for: Lcom/android/server/telecom/secutils/SViewCoverNotifier;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/telecom/secutils/SViewCoverNotifier;->access$000(Lcom/android/server/telecom/secutils/SViewCoverNotifier;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f08000a

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    :cond_0
    :goto_2
    const/4 v3, 0x1

    if-le v10, v3, :cond_2

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcom/android/server/telecom/secutils/SViewCoverNotifier$1$1;->this$1:Lcom/android/server/telecom/secutils/SViewCoverNotifier$1;

    iget-object v2, v2, Lcom/android/server/telecom/secutils/SViewCoverNotifier$1;->this$0:Lcom/android/server/telecom/secutils/SViewCoverNotifier;

    # getter for: Lcom/android/server/telecom/secutils/SViewCoverNotifier;->mAllMissedCallsFromSamePerson:Z
    invoke-static {v2}, Lcom/android/server/telecom/secutils/SViewCoverNotifier;->access$200(Lcom/android/server/telecom/secutils/SViewCoverNotifier;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, " ("

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "%d"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v11, v12

    invoke-static {v2, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, ")"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_2
    if-eqz v2, :cond_4

    const/4 v3, 0x1

    if-eq v4, v3, :cond_3

    const-string v3, ", "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_3
    invoke-virtual {v6, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_4
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_b

    iget-object v2, p0, Lcom/android/server/telecom/secutils/SViewCoverNotifier$1$1;->this$1:Lcom/android/server/telecom/secutils/SViewCoverNotifier$1;

    iget-object v2, v2, Lcom/android/server/telecom/secutils/SViewCoverNotifier$1;->this$0:Lcom/android/server/telecom/secutils/SViewCoverNotifier;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    # setter for: Lcom/android/server/telecom/secutils/SViewCoverNotifier;->mMissedCallName:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/android/server/telecom/secutils/SViewCoverNotifier;->access$302(Lcom/android/server/telecom/secutils/SViewCoverNotifier;Ljava/lang/String;)Ljava/lang/String;

    # getter for: Lcom/android/server/telecom/secutils/SViewCoverNotifier;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/telecom/secutils/SViewCoverNotifier;->access$100()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MISSED_CALL query mMissedCallName - "

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    # getter for: Lcom/android/server/telecom/secutils/SViewCoverNotifier;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/telecom/secutils/SViewCoverNotifier;->access$100()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " updateMissedCallNotify callID="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " time = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " totalmissedcount = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "mMissedCallName"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/telecom/secutils/SViewCoverNotifier$1$1;->this$1:Lcom/android/server/telecom/secutils/SViewCoverNotifier$1;

    iget-object v4, v4, Lcom/android/server/telecom/secutils/SViewCoverNotifier$1;->this$0:Lcom/android/server/telecom/secutils/SViewCoverNotifier;

    # getter for: Lcom/android/server/telecom/secutils/SViewCoverNotifier;->mMissedCallName:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/server/telecom/secutils/SViewCoverNotifier;->access$300(Lcom/android/server/telecom/secutils/SViewCoverNotifier;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/android/server/telecom/secutils/SViewCoverNotifier$1$1;->this$1:Lcom/android/server/telecom/secutils/SViewCoverNotifier$1;

    iget-object v2, v2, Lcom/android/server/telecom/secutils/SViewCoverNotifier$1;->this$0:Lcom/android/server/telecom/secutils/SViewCoverNotifier;

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iget-object v6, p0, Lcom/android/server/telecom/secutils/SViewCoverNotifier$1$1;->this$1:Lcom/android/server/telecom/secutils/SViewCoverNotifier$1;

    iget-object v6, v6, Lcom/android/server/telecom/secutils/SViewCoverNotifier$1;->this$0:Lcom/android/server/telecom/secutils/SViewCoverNotifier;

    # getter for: Lcom/android/server/telecom/secutils/SViewCoverNotifier;->mPhoto:Landroid/graphics/Bitmap;
    invoke-static {v6}, Lcom/android/server/telecom/secutils/SViewCoverNotifier;->access$400(Lcom/android/server/telecom/secutils/SViewCoverNotifier;)Landroid/graphics/Bitmap;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/telecom/secutils/SViewCoverNotifier$1$1;->this$1:Lcom/android/server/telecom/secutils/SViewCoverNotifier$1;

    iget-object v7, v7, Lcom/android/server/telecom/secutils/SViewCoverNotifier$1;->this$0:Lcom/android/server/telecom/secutils/SViewCoverNotifier;

    # getter for: Lcom/android/server/telecom/secutils/SViewCoverNotifier;->mMissedCallName:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/server/telecom/secutils/SViewCoverNotifier;->access$300(Lcom/android/server/telecom/secutils/SViewCoverNotifier;)Ljava/lang/String;

    move-result-object v7

    # invokes: Lcom/android/server/telecom/secutils/SViewCoverNotifier;->sendMissedCallInfo(Ljava/lang/String;Ljava/lang/Long;ILandroid/graphics/Bitmap;Ljava/lang/String;)V
    invoke-static/range {v2 .. v7}, Lcom/android/server/telecom/secutils/SViewCoverNotifier;->access$500(Lcom/android/server/telecom/secutils/SViewCoverNotifier;Ljava/lang/String;Ljava/lang/Long;ILandroid/graphics/Bitmap;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_5
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    :cond_6
    :goto_3
    return-void

    :cond_7
    const/4 v3, 0x0

    goto/16 :goto_0

    :cond_8
    :try_start_1
    const-string v11, "-2"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9

    iget-object v2, p0, Lcom/android/server/telecom/secutils/SViewCoverNotifier$1$1;->this$1:Lcom/android/server/telecom/secutils/SViewCoverNotifier$1;

    iget-object v2, v2, Lcom/android/server/telecom/secutils/SViewCoverNotifier$1;->this$0:Lcom/android/server/telecom/secutils/SViewCoverNotifier;

    # getter for: Lcom/android/server/telecom/secutils/SViewCoverNotifier;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/telecom/secutils/SViewCoverNotifier;->access$000(Lcom/android/server/telecom/secutils/SViewCoverNotifier;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f08000b

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_2

    :cond_9
    if-nez v2, :cond_0

    const-string v2, "feature_vzw"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_a

    const-string v2, "feature_kor"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    :cond_a
    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    goto/16 :goto_2

    :catch_0
    move-exception v2

    :try_start_2
    # getter for: Lcom/android/server/telecom/secutils/SViewCoverNotifier;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/telecom/secutils/SViewCoverNotifier;->access$100()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "occure exception = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v2, v4}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :catchall_0
    move-exception v2

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    throw v2

    :cond_b
    move v2, v4

    goto/16 :goto_1

    :cond_c
    move-object v2, v3

    goto/16 :goto_2
.end method
