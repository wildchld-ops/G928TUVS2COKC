.class Lcom/android/server/telecom/secutils/SecQuickpanelNotifier$1;
.super Landroid/content/AsyncQueryHandler;
.source "SecQuickpanelNotifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/telecom/secutils/SecQuickpanelNotifier;->notifyMissedCall(Lcom/android/server/telecom/Call;Ljava/lang/String;ILjava/lang/String;Landroid/app/Notification$Builder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/telecom/secutils/SecQuickpanelNotifier;


# direct methods
.method constructor <init>(Lcom/android/server/telecom/secutils/SecQuickpanelNotifier;Landroid/content/ContentResolver;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/telecom/secutils/SecQuickpanelNotifier$1;->this$0:Lcom/android/server/telecom/secutils/SecQuickpanelNotifier;

    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 9

    const/4 v0, 0x0

    const/4 v8, 0x1

    # getter for: Lcom/android/server/telecom/secutils/SecQuickpanelNotifier;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/telecom/secutils/SecQuickpanelNotifier;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "onQueryComplete()..."

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p3, :cond_9

    if-eqz p2, :cond_9

    check-cast p2, Landroid/app/Notification$InboxStyle;

    # getter for: Lcom/android/server/telecom/secutils/SecQuickpanelNotifier;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/telecom/secutils/SecQuickpanelNotifier;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MISSED_CALL query counts : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v8, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {v1, v2, v3}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-ne v1, v8, :cond_0

    iget-object v1, p0, Lcom/android/server/telecom/secutils/SecQuickpanelNotifier$1;->this$0:Lcom/android/server/telecom/secutils/SecQuickpanelNotifier;

    # setter for: Lcom/android/server/telecom/secutils/SecQuickpanelNotifier;->mAllMissedCallsFromSamePerson:Z
    invoke-static {v1, v8}, Lcom/android/server/telecom/secutils/SecQuickpanelNotifier;->access$102(Lcom/android/server/telecom/secutils/SecQuickpanelNotifier;Z)Z

    :cond_0
    :try_start_0
    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_7

    :goto_0
    add-int/lit8 v2, v0, 0x1

    const-string v0, "count"

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    # getter for: Lcom/android/server/telecom/secutils/SecQuickpanelNotifier;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/telecom/secutils/SecQuickpanelNotifier;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MISSED_CALL query duplicatedCount : "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v0, v1, v5}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "number"

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v0, "name"

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v5, "dormant_set"

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    const-string v6, "-1"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecQuickpanelNotifier$1;->this$0:Lcom/android/server/telecom/secutils/SecQuickpanelNotifier;

    # getter for: Lcom/android/server/telecom/secutils/SecQuickpanelNotifier;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/telecom/secutils/SecQuickpanelNotifier;->access$200(Lcom/android/server/telecom/secutils/SecQuickpanelNotifier;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f08000a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_1
    :goto_1
    if-ne v5, v8, :cond_2

    iget-object v1, p0, Lcom/android/server/telecom/secutils/SecQuickpanelNotifier$1;->this$0:Lcom/android/server/telecom/secutils/SecQuickpanelNotifier;

    # getter for: Lcom/android/server/telecom/secutils/SecQuickpanelNotifier;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/telecom/secutils/SecQuickpanelNotifier;->access$200(Lcom/android/server/telecom/secutils/SecQuickpanelNotifier;)Landroid/content/Context;

    move-result-object v1

    const v5, 0x7f080070

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v5, "%s"

    invoke-virtual {v1, v5, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :cond_2
    if-le v4, v8, :cond_4

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecQuickpanelNotifier$1;->this$0:Lcom/android/server/telecom/secutils/SecQuickpanelNotifier;

    # getter for: Lcom/android/server/telecom/secutils/SecQuickpanelNotifier;->mAllMissedCallsFromSamePerson:Z
    invoke-static {v0}, Lcom/android/server/telecom/secutils/SecQuickpanelNotifier;->access$100(Lcom/android/server/telecom/secutils/SecQuickpanelNotifier;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, " ("

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "%d"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v5, v6

    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_4
    if-eqz v0, :cond_6

    invoke-virtual {p2, v0}, Landroid/app/Notification$InboxStyle;->addLine(Ljava/lang/CharSequence;)Landroid/app/Notification$InboxStyle;

    if-eq v2, v8, :cond_5

    const-string v1, ", "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_5
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_6
    invoke-interface {p3}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_e

    :cond_7
    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecQuickpanelNotifier$1;->this$0:Lcom/android/server/telecom/secutils/SecQuickpanelNotifier;

    # getter for: Lcom/android/server/telecom/secutils/SecQuickpanelNotifier;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/telecom/secutils/SecQuickpanelNotifier;->access$200(Lcom/android/server/telecom/secutils/SecQuickpanelNotifier;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p3}, Lcom/android/server/telecom/secutils/PeopleStripeUtils;->makeMultiplePeopleStripeData(Landroid/content/Context;Landroid/database/Cursor;)V

    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecQuickpanelNotifier$1;->this$0:Lcom/android/server/telecom/secutils/SecQuickpanelNotifier;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/android/server/telecom/secutils/SecQuickpanelNotifier;->mMissedCallers:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/server/telecom/secutils/SecQuickpanelNotifier;->access$302(Lcom/android/server/telecom/secutils/SecQuickpanelNotifier;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecQuickpanelNotifier$1;->this$0:Lcom/android/server/telecom/secutils/SecQuickpanelNotifier;

    # getter for: Lcom/android/server/telecom/secutils/SecQuickpanelNotifier;->mAllMissedCallsFromSamePerson:Z
    invoke-static {v0}, Lcom/android/server/telecom/secutils/SecQuickpanelNotifier;->access$100(Lcom/android/server/telecom/secutils/SecQuickpanelNotifier;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecQuickpanelNotifier$1;->this$0:Lcom/android/server/telecom/secutils/SecQuickpanelNotifier;

    invoke-virtual {p2}, Landroid/app/Notification$InboxStyle;->build()Landroid/app/Notification;

    move-result-object v1

    # setter for: Lcom/android/server/telecom/secutils/SecQuickpanelNotifier;->mNoti:Landroid/app/Notification;
    invoke-static {v0, v1}, Lcom/android/server/telecom/secutils/SecQuickpanelNotifier;->access$402(Lcom/android/server/telecom/secutils/SecQuickpanelNotifier;Landroid/app/Notification;)Landroid/app/Notification;

    :cond_8
    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecQuickpanelNotifier$1;->this$0:Lcom/android/server/telecom/secutils/SecQuickpanelNotifier;

    iget-object v1, p0, Lcom/android/server/telecom/secutils/SecQuickpanelNotifier$1;->this$0:Lcom/android/server/telecom/secutils/SecQuickpanelNotifier;

    # getter for: Lcom/android/server/telecom/secutils/SecQuickpanelNotifier;->mNoti:Landroid/app/Notification;
    invoke-static {v1}, Lcom/android/server/telecom/secutils/SecQuickpanelNotifier;->access$400(Lcom/android/server/telecom/secutils/SecQuickpanelNotifier;)Landroid/app/Notification;

    move-result-object v1

    # invokes: Lcom/android/server/telecom/secutils/SecQuickpanelNotifier;->registerMissedCallNotification(Landroid/app/Notification;)V
    invoke-static {v0, v1}, Lcom/android/server/telecom/secutils/SecQuickpanelNotifier;->access$500(Lcom/android/server/telecom/secutils/SecQuickpanelNotifier;Landroid/app/Notification;)V

    :cond_9
    return-void

    :cond_a
    :try_start_1
    const-string v6, "-2"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecQuickpanelNotifier$1;->this$0:Lcom/android/server/telecom/secutils/SecQuickpanelNotifier;

    # getter for: Lcom/android/server/telecom/secutils/SecQuickpanelNotifier;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/telecom/secutils/SecQuickpanelNotifier;->access$200(Lcom/android/server/telecom/secutils/SecQuickpanelNotifier;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f08000b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_b
    if-nez v0, :cond_1

    const-string v0, "feature_vzw"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    const-string v0, "feature_kor"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    :cond_c
    const-string v0, "roaming_auto_dial"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->isRoamingArea()Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, "feature_lgt"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    invoke-static {v1}, Lcom/android/server/telecom/operator/OperatorUtils;->getSKTRADisplayNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_d
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/server/telecom/secutils/SecQuickpanelNotifier$1;->this$0:Lcom/android/server/telecom/secutils/SecQuickpanelNotifier;

    # getter for: Lcom/android/server/telecom/secutils/SecQuickpanelNotifier;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/telecom/secutils/SecQuickpanelNotifier;->access$200(Lcom/android/server/telecom/secutils/SecQuickpanelNotifier;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p3}, Lcom/android/server/telecom/secutils/PeopleStripeUtils;->makeMultiplePeopleStripeData(Landroid/content/Context;Landroid/database/Cursor;)V

    throw v0

    :cond_e
    move v0, v2

    goto/16 :goto_0

    :cond_f
    move-object v0, v1

    goto/16 :goto_1
.end method
