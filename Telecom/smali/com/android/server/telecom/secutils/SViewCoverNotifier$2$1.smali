.class Lcom/android/server/telecom/secutils/SViewCoverNotifier$2$1;
.super Landroid/content/AsyncQueryHandler;
.source "SViewCoverNotifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/telecom/secutils/SViewCoverNotifier$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/telecom/secutils/SViewCoverNotifier$2;


# direct methods
.method constructor <init>(Lcom/android/server/telecom/secutils/SViewCoverNotifier$2;Landroid/content/ContentResolver;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/telecom/secutils/SViewCoverNotifier$2$1;->this$1:Lcom/android/server/telecom/secutils/SViewCoverNotifier$2;

    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 16

    # getter for: Lcom/android/server/telecom/secutils/SViewCoverNotifier;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/telecom/secutils/SViewCoverNotifier;->access$100()Ljava/lang/String;

    move-result-object v2

    const-string v3, "onQueryComplete()..."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p3, :cond_8

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

    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getCount()I

    move-result v2

    new-array v9, v2, [I

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/telecom/secutils/SViewCoverNotifier$2$1;->this$1:Lcom/android/server/telecom/secutils/SViewCoverNotifier$2;

    iget-object v6, v5, Lcom/android/server/telecom/secutils/SViewCoverNotifier$2;->this$0:Lcom/android/server/telecom/secutils/SViewCoverNotifier;

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getCount()I

    move-result v5

    const/4 v7, 0x1

    if-ne v5, v7, :cond_9

    const/4 v5, 0x1

    :goto_0
    # setter for: Lcom/android/server/telecom/secutils/SViewCoverNotifier;->mAllMissedCallsFromSamePerson:Z
    invoke-static {v6, v5}, Lcom/android/server/telecom/secutils/SViewCoverNotifier;->access$202(Lcom/android/server/telecom/secutils/SViewCoverNotifier;Z)Z

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_e

    const-string v5, "_id"

    move-object/from16 v0, p3

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, p3

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    # getter for: Lcom/android/server/telecom/secutils/SViewCoverNotifier;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/telecom/secutils/SViewCoverNotifier;->access$100()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onQueryComplete : callID="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " creationTimeMillis="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/telecom/secutils/SViewCoverNotifier$2$1;->this$1:Lcom/android/server/telecom/secutils/SViewCoverNotifier$2;

    iget-object v7, v7, Lcom/android/server/telecom/secutils/SViewCoverNotifier$2;->this$0:Lcom/android/server/telecom/secutils/SViewCoverNotifier;

    # getter for: Lcom/android/server/telecom/secutils/SViewCoverNotifier;->mCall:Lcom/android/server/telecom/Call;
    invoke-static {v7}, Lcom/android/server/telecom/secutils/SViewCoverNotifier;->access$700(Lcom/android/server/telecom/secutils/SViewCoverNotifier;)Lcom/android/server/telecom/Call;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/telecom/Call;->getCreationTimeMillis()J

    move-result-wide v12

    invoke-virtual {v6, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " missedCallCount="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/telecom/secutils/SViewCoverNotifier$2$1;->this$1:Lcom/android/server/telecom/secutils/SViewCoverNotifier$2;

    iget-object v7, v7, Lcom/android/server/telecom/secutils/SViewCoverNotifier$2;->this$0:Lcom/android/server/telecom/secutils/SViewCoverNotifier;

    # getter for: Lcom/android/server/telecom/secutils/SViewCoverNotifier;->mMissedCallCount:I
    invoke-static {v7}, Lcom/android/server/telecom/secutils/SViewCoverNotifier;->access$800(Lcom/android/server/telecom/secutils/SViewCoverNotifier;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v5, "ecid_enable"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/telecom/secutils/SViewCoverNotifier$2$1;->this$1:Lcom/android/server/telecom/secutils/SViewCoverNotifier$2;

    iget-object v5, v5, Lcom/android/server/telecom/secutils/SViewCoverNotifier$2;->this$0:Lcom/android/server/telecom/secutils/SViewCoverNotifier;

    # getter for: Lcom/android/server/telecom/secutils/SViewCoverNotifier;->mCall:Lcom/android/server/telecom/Call;
    invoke-static {v5}, Lcom/android/server/telecom/secutils/SViewCoverNotifier;->access$700(Lcom/android/server/telecom/secutils/SViewCoverNotifier;)Lcom/android/server/telecom/Call;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/telecom/Call;->getHandle()Landroid/net/Uri;

    move-result-object v5

    if-nez v5, :cond_a

    const/4 v5, 0x0

    :goto_1
    if-eqz v5, :cond_0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/telecom/secutils/SViewCoverNotifier$2$1;->this$1:Lcom/android/server/telecom/secutils/SViewCoverNotifier$2;

    iget-object v6, v6, Lcom/android/server/telecom/secutils/SViewCoverNotifier$2;->this$0:Lcom/android/server/telecom/secutils/SViewCoverNotifier;

    # getter for: Lcom/android/server/telecom/secutils/SViewCoverNotifier;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/server/telecom/secutils/SViewCoverNotifier;->access$000(Lcom/android/server/telecom/secutils/SViewCoverNotifier;)Landroid/content/Context;

    move-result-object v6

    const/4 v7, 0x3

    invoke-static {v6, v5, v7}, Lcom/android/server/telecom/EcidContact;->doLookup(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/server/telecom/EcidContact;

    move-result-object v5

    if-eqz v5, :cond_0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/telecom/secutils/SViewCoverNotifier$2$1;->this$1:Lcom/android/server/telecom/secutils/SViewCoverNotifier$2;

    iget-object v6, v6, Lcom/android/server/telecom/secutils/SViewCoverNotifier$2;->this$0:Lcom/android/server/telecom/secutils/SViewCoverNotifier;

    # getter for: Lcom/android/server/telecom/secutils/SViewCoverNotifier;->mMissedCallName:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/server/telecom/secutils/SViewCoverNotifier;->access$300(Lcom/android/server/telecom/secutils/SViewCoverNotifier;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/telecom/secutils/SViewCoverNotifier$2$1;->this$1:Lcom/android/server/telecom/secutils/SViewCoverNotifier$2;

    iget-object v3, v3, Lcom/android/server/telecom/secutils/SViewCoverNotifier$2;->this$0:Lcom/android/server/telecom/secutils/SViewCoverNotifier;

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Lcom/android/server/telecom/EcidContact;->getContactName(I)Ljava/lang/String;

    move-result-object v5

    # setter for: Lcom/android/server/telecom/secutils/SViewCoverNotifier;->mMissedCallName:Ljava/lang/String;
    invoke-static {v3, v5}, Lcom/android/server/telecom/secutils/SViewCoverNotifier;->access$302(Lcom/android/server/telecom/secutils/SViewCoverNotifier;Ljava/lang/String;)Ljava/lang/String;

    const/4 v3, 0x1

    # getter for: Lcom/android/server/telecom/secutils/SViewCoverNotifier;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/telecom/secutils/SViewCoverNotifier;->access$100()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Ecid name added as "

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    move v6, v3

    move v15, v2

    move v2, v4

    move v4, v15

    :goto_2
    add-int/lit8 v7, v2, 0x1

    const-string v2, "count"

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

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

    const-string v5, "_id"

    move-object/from16 v0, p3

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, p3

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    # getter for: Lcom/android/server/telecom/secutils/SViewCoverNotifier;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/telecom/secutils/SViewCoverNotifier;->access$100()Ljava/lang/String;

    move-result-object v5

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "id = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/Object;

    invoke-static {v5, v13, v14}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    add-int/lit8 v5, v4, 0x1

    aput v12, v9, v4

    const-string v4, "-4"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/telecom/secutils/SViewCoverNotifier$2$1;->this$1:Lcom/android/server/telecom/secutils/SViewCoverNotifier$2;

    iget-object v2, v2, Lcom/android/server/telecom/secutils/SViewCoverNotifier$2;->this$0:Lcom/android/server/telecom/secutils/SViewCoverNotifier;

    # getter for: Lcom/android/server/telecom/secutils/SViewCoverNotifier;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/telecom/secutils/SViewCoverNotifier;->access$000(Lcom/android/server/telecom/secutils/SViewCoverNotifier;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f08000a

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    :cond_1
    :goto_3
    const/4 v3, 0x1

    if-le v11, v3, :cond_3

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/telecom/secutils/SViewCoverNotifier$2$1;->this$1:Lcom/android/server/telecom/secutils/SViewCoverNotifier$2;

    iget-object v2, v2, Lcom/android/server/telecom/secutils/SViewCoverNotifier$2;->this$0:Lcom/android/server/telecom/secutils/SViewCoverNotifier;

    # getter for: Lcom/android/server/telecom/secutils/SViewCoverNotifier;->mAllMissedCallsFromSamePerson:Z
    invoke-static {v2}, Lcom/android/server/telecom/secutils/SViewCoverNotifier;->access$200(Lcom/android/server/telecom/secutils/SViewCoverNotifier;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, " ("

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "%d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v4, v12

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, ")"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_3
    if-eqz v2, :cond_5

    const/4 v3, 0x1

    if-eq v7, v3, :cond_4

    const-string v3, ", "

    invoke-virtual {v8, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_4
    invoke-virtual {v8, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_5
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_f

    if-nez v6, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/telecom/secutils/SViewCoverNotifier$2$1;->this$1:Lcom/android/server/telecom/secutils/SViewCoverNotifier$2;

    iget-object v2, v2, Lcom/android/server/telecom/secutils/SViewCoverNotifier$2;->this$0:Lcom/android/server/telecom/secutils/SViewCoverNotifier;

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

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

    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/telecom/secutils/SViewCoverNotifier$2$1;->this$1:Lcom/android/server/telecom/secutils/SViewCoverNotifier$2;

    iget-object v2, v2, Lcom/android/server/telecom/secutils/SViewCoverNotifier$2;->this$0:Lcom/android/server/telecom/secutils/SViewCoverNotifier;

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/telecom/secutils/SViewCoverNotifier$2$1;->this$1:Lcom/android/server/telecom/secutils/SViewCoverNotifier$2;

    iget-object v4, v4, Lcom/android/server/telecom/secutils/SViewCoverNotifier$2;->this$0:Lcom/android/server/telecom/secutils/SViewCoverNotifier;

    # getter for: Lcom/android/server/telecom/secutils/SViewCoverNotifier;->mCall:Lcom/android/server/telecom/Call;
    invoke-static {v4}, Lcom/android/server/telecom/secutils/SViewCoverNotifier;->access$700(Lcom/android/server/telecom/secutils/SViewCoverNotifier;)Lcom/android/server/telecom/Call;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/telecom/Call;->getCreationTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/telecom/secutils/SViewCoverNotifier$2$1;->this$1:Lcom/android/server/telecom/secutils/SViewCoverNotifier$2;

    iget-object v5, v5, Lcom/android/server/telecom/secutils/SViewCoverNotifier$2;->this$0:Lcom/android/server/telecom/secutils/SViewCoverNotifier;

    # getter for: Lcom/android/server/telecom/secutils/SViewCoverNotifier;->mMissedCallCount:I
    invoke-static {v5}, Lcom/android/server/telecom/secutils/SViewCoverNotifier;->access$800(Lcom/android/server/telecom/secutils/SViewCoverNotifier;)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/telecom/secutils/SViewCoverNotifier$2$1;->this$1:Lcom/android/server/telecom/secutils/SViewCoverNotifier$2;

    iget-object v6, v6, Lcom/android/server/telecom/secutils/SViewCoverNotifier$2;->this$0:Lcom/android/server/telecom/secutils/SViewCoverNotifier;

    # getter for: Lcom/android/server/telecom/secutils/SViewCoverNotifier;->mPhoto:Landroid/graphics/Bitmap;
    invoke-static {v6}, Lcom/android/server/telecom/secutils/SViewCoverNotifier;->access$400(Lcom/android/server/telecom/secutils/SViewCoverNotifier;)Landroid/graphics/Bitmap;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/telecom/secutils/SViewCoverNotifier$2$1;->this$1:Lcom/android/server/telecom/secutils/SViewCoverNotifier$2;

    iget-object v7, v7, Lcom/android/server/telecom/secutils/SViewCoverNotifier$2;->this$0:Lcom/android/server/telecom/secutils/SViewCoverNotifier;

    # getter for: Lcom/android/server/telecom/secutils/SViewCoverNotifier;->mMissedCallName:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/server/telecom/secutils/SViewCoverNotifier;->access$300(Lcom/android/server/telecom/secutils/SViewCoverNotifier;)Ljava/lang/String;

    move-result-object v7

    # invokes: Lcom/android/server/telecom/secutils/SViewCoverNotifier;->sendMissedCallInfo(Ljava/lang/String;Ljava/lang/Long;ILandroid/graphics/Bitmap;Ljava/lang/String;)V
    invoke-static/range {v2 .. v7}, Lcom/android/server/telecom/secutils/SViewCoverNotifier;->access$500(Lcom/android/server/telecom/secutils/SViewCoverNotifier;Ljava/lang/String;Ljava/lang/Long;ILandroid/graphics/Bitmap;Ljava/lang/String;)V

    if-eqz v9, :cond_7

    array-length v2, v9

    if-eqz v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/telecom/secutils/SViewCoverNotifier$2$1;->this$1:Lcom/android/server/telecom/secutils/SViewCoverNotifier$2;

    iget-object v2, v2, Lcom/android/server/telecom/secutils/SViewCoverNotifier$2;->this$0:Lcom/android/server/telecom/secutils/SViewCoverNotifier;

    invoke-virtual {v2, v9}, Lcom/android/server/telecom/secutils/SViewCoverNotifier;->sendMissedCallLogID([I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_7
    :goto_4
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    :cond_8
    :goto_5
    return-void

    :cond_9
    const/4 v5, 0x0

    goto/16 :goto_0

    :cond_a
    :try_start_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/telecom/secutils/SViewCoverNotifier$2$1;->this$1:Lcom/android/server/telecom/secutils/SViewCoverNotifier$2;

    iget-object v5, v5, Lcom/android/server/telecom/secutils/SViewCoverNotifier$2;->this$0:Lcom/android/server/telecom/secutils/SViewCoverNotifier;

    # getter for: Lcom/android/server/telecom/secutils/SViewCoverNotifier;->mCall:Lcom/android/server/telecom/Call;
    invoke-static {v5}, Lcom/android/server/telecom/secutils/SViewCoverNotifier;->access$700(Lcom/android/server/telecom/secutils/SViewCoverNotifier;)Lcom/android/server/telecom/Call;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/telecom/Call;->getHandle()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_1

    :cond_b
    const-string v4, "-2"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/telecom/secutils/SViewCoverNotifier$2$1;->this$1:Lcom/android/server/telecom/secutils/SViewCoverNotifier$2;

    iget-object v2, v2, Lcom/android/server/telecom/secutils/SViewCoverNotifier$2;->this$0:Lcom/android/server/telecom/secutils/SViewCoverNotifier;

    # getter for: Lcom/android/server/telecom/secutils/SViewCoverNotifier;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/telecom/secutils/SViewCoverNotifier;->access$000(Lcom/android/server/telecom/secutils/SViewCoverNotifier;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f08000b

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_3

    :cond_c
    if-nez v2, :cond_1

    const-string v2, "feature_vzw"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_d

    const-string v2, "feature_kor"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    :cond_d
    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_3

    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/telecom/secutils/SViewCoverNotifier$2$1;->this$1:Lcom/android/server/telecom/secutils/SViewCoverNotifier$2;

    iget-object v2, v2, Lcom/android/server/telecom/secutils/SViewCoverNotifier$2;->this$0:Lcom/android/server/telecom/secutils/SViewCoverNotifier;

    # getter for: Lcom/android/server/telecom/secutils/SViewCoverNotifier;->CALL_LOG_PROJECTION:[Ljava/lang/String;
    invoke-static {}, Lcom/android/server/telecom/secutils/SViewCoverNotifier;->access$600()[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v3, v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/telecom/secutils/SViewCoverNotifier$2$1;->this$1:Lcom/android/server/telecom/secutils/SViewCoverNotifier$2;

    iget-object v4, v4, Lcom/android/server/telecom/secutils/SViewCoverNotifier$2;->this$0:Lcom/android/server/telecom/secutils/SViewCoverNotifier;

    # getter for: Lcom/android/server/telecom/secutils/SViewCoverNotifier;->mCall:Lcom/android/server/telecom/Call;
    invoke-static {v4}, Lcom/android/server/telecom/secutils/SViewCoverNotifier;->access$700(Lcom/android/server/telecom/secutils/SViewCoverNotifier;)Lcom/android/server/telecom/Call;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/telecom/Call;->getCreationTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/telecom/secutils/SViewCoverNotifier$2$1;->this$1:Lcom/android/server/telecom/secutils/SViewCoverNotifier$2;

    iget-object v5, v5, Lcom/android/server/telecom/secutils/SViewCoverNotifier$2;->this$0:Lcom/android/server/telecom/secutils/SViewCoverNotifier;

    # getter for: Lcom/android/server/telecom/secutils/SViewCoverNotifier;->mMissedCallCount:I
    invoke-static {v5}, Lcom/android/server/telecom/secutils/SViewCoverNotifier;->access$800(Lcom/android/server/telecom/secutils/SViewCoverNotifier;)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/telecom/secutils/SViewCoverNotifier$2$1;->this$1:Lcom/android/server/telecom/secutils/SViewCoverNotifier$2;

    iget-object v6, v6, Lcom/android/server/telecom/secutils/SViewCoverNotifier$2;->this$0:Lcom/android/server/telecom/secutils/SViewCoverNotifier;

    # getter for: Lcom/android/server/telecom/secutils/SViewCoverNotifier;->mPhoto:Landroid/graphics/Bitmap;
    invoke-static {v6}, Lcom/android/server/telecom/secutils/SViewCoverNotifier;->access$400(Lcom/android/server/telecom/secutils/SViewCoverNotifier;)Landroid/graphics/Bitmap;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/telecom/secutils/SViewCoverNotifier$2$1;->this$1:Lcom/android/server/telecom/secutils/SViewCoverNotifier$2;

    iget-object v7, v7, Lcom/android/server/telecom/secutils/SViewCoverNotifier$2;->this$0:Lcom/android/server/telecom/secutils/SViewCoverNotifier;

    # getter for: Lcom/android/server/telecom/secutils/SViewCoverNotifier;->mMissedCallName:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/server/telecom/secutils/SViewCoverNotifier;->access$300(Lcom/android/server/telecom/secutils/SViewCoverNotifier;)Ljava/lang/String;

    move-result-object v7

    # invokes: Lcom/android/server/telecom/secutils/SViewCoverNotifier;->sendMissedCallInfo(Ljava/lang/String;Ljava/lang/Long;ILandroid/graphics/Bitmap;Ljava/lang/String;)V
    invoke-static/range {v2 .. v7}, Lcom/android/server/telecom/secutils/SViewCoverNotifier;->access$500(Lcom/android/server/telecom/secutils/SViewCoverNotifier;Ljava/lang/String;Ljava/lang/Long;ILandroid/graphics/Bitmap;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_4

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

    goto/16 :goto_5

    :catchall_0
    move-exception v2

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    throw v2

    :cond_f
    move v4, v5

    move v2, v7

    goto/16 :goto_2

    :cond_10
    move-object v2, v3

    goto/16 :goto_3
.end method
