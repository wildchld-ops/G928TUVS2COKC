.class Lcom/android/server/telecom/operator/usa/AutoRejectedCallNotifier$2;
.super Landroid/content/AsyncQueryHandler;
.source "AutoRejectedCallNotifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/telecom/operator/usa/AutoRejectedCallNotifier;->updateOnStartup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/telecom/operator/usa/AutoRejectedCallNotifier;


# direct methods
.method constructor <init>(Lcom/android/server/telecom/operator/usa/AutoRejectedCallNotifier;Landroid/content/ContentResolver;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/telecom/operator/usa/AutoRejectedCallNotifier$2;->this$0:Lcom/android/server/telecom/operator/usa/AutoRejectedCallNotifier;

    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 15

    iget-object v2, p0, Lcom/android/server/telecom/operator/usa/AutoRejectedCallNotifier$2;->this$0:Lcom/android/server/telecom/operator/usa/AutoRejectedCallNotifier;

    const-string v3, "onQueryComplete()..."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p3, :cond_4

    :goto_0
    :try_start_0
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x2

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    const/4 v2, 0x3

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    const-string v2, "date"

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    const/4 v2, 0x1

    if-ne v14, v2, :cond_0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v2, 0x0

    :goto_1
    new-instance v3, Lcom/android/server/telecom/Call;

    iget-object v4, p0, Lcom/android/server/telecom/operator/usa/AutoRejectedCallNotifier$2;->this$0:Lcom/android/server/telecom/operator/usa/AutoRejectedCallNotifier;

    # getter for: Lcom/android/server/telecom/operator/usa/AutoRejectedCallNotifier;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/telecom/operator/usa/AutoRejectedCallNotifier;->access$000(Lcom/android/server/telecom/operator/usa/AutoRejectedCallNotifier;)Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-direct/range {v3 .. v13}, Lcom/android/server/telecom/Call;-><init>(Landroid/content/Context;Lcom/android/server/telecom/ConnectionServiceRepository;Landroid/net/Uri;Landroid/telecom/GatewayInfo;Landroid/telecom/PhoneAccountHandle;Landroid/telecom/PhoneAccountHandle;ZZJ)V

    new-instance v4, Landroid/telecom/DisconnectCause;

    const/4 v5, 0x6

    invoke-direct {v4, v5}, Landroid/telecom/DisconnectCause;-><init>(I)V

    invoke-virtual {v3, v4}, Lcom/android/server/telecom/Call;->setDisconnectCause(Landroid/telecom/DisconnectCause;)V

    const/4 v4, 0x7

    invoke-virtual {v3, v4}, Lcom/android/server/telecom/Call;->setState(I)V

    new-instance v4, Lcom/android/server/telecom/operator/usa/AutoRejectedCallNotifier$2$1;

    invoke-direct {v4, p0}, Lcom/android/server/telecom/operator/usa/AutoRejectedCallNotifier$2$1;-><init>(Lcom/android/server/telecom/operator/usa/AutoRejectedCallNotifier$2;)V

    invoke-virtual {v3, v4}, Lcom/android/server/telecom/Call;->addListener(Lcom/android/server/telecom/Call$Listener;)V

    invoke-virtual {v3, v2, v14}, Lcom/android/server/telecom/Call;->setHandle(Landroid/net/Uri;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    throw v2

    :cond_1
    :try_start_1
    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "sip"

    :goto_2
    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    goto :goto_1

    :cond_2
    const-string v2, "tel"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :cond_3
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    :cond_4
    return-void
.end method
