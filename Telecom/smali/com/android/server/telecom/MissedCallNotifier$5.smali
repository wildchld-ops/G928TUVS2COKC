.class Lcom/android/server/telecom/MissedCallNotifier$5;
.super Landroid/content/AsyncQueryHandler;
.source "MissedCallNotifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/telecom/MissedCallNotifier;->updateOnStartup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/telecom/MissedCallNotifier;


# direct methods
.method constructor <init>(Lcom/android/server/telecom/MissedCallNotifier;Landroid/content/ContentResolver;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/telecom/MissedCallNotifier$5;->this$0:Lcom/android/server/telecom/MissedCallNotifier;

    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 16

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/telecom/MissedCallNotifier$5;->this$0:Lcom/android/server/telecom/MissedCallNotifier;

    const-string v3, "onQueryComplete()..."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p3, :cond_7

    :goto_0
    :try_start_0
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    const/4 v3, 0x3

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    const/4 v3, 0x2

    if-ne v12, v3, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/telecom/MissedCallNotifier$5;->this$0:Lcom/android/server/telecom/MissedCallNotifier;

    # getter for: Lcom/android/server/telecom/MissedCallNotifier;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/telecom/MissedCallNotifier;->access$300(Lcom/android/server/telecom/MissedCallNotifier;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f08000b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    :goto_1
    const/4 v2, 0x1

    if-ne v12, v2, :cond_0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_0
    const/4 v2, 0x3

    if-eq v12, v2, :cond_1

    const/4 v2, 0x2

    if-ne v12, v2, :cond_3

    :cond_1
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "sip"

    :goto_2
    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    move-object v11, v2

    :goto_3
    new-instance v2, Lcom/android/server/telecom/Call;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/telecom/MissedCallNotifier$5;->this$0:Lcom/android/server/telecom/MissedCallNotifier;

    # getter for: Lcom/android/server/telecom/MissedCallNotifier;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/telecom/MissedCallNotifier;->access$300(Lcom/android/server/telecom/MissedCallNotifier;)Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-direct/range {v2 .. v10}, Lcom/android/server/telecom/Call;-><init>(Landroid/content/Context;Lcom/android/server/telecom/ConnectionServiceRepository;Landroid/net/Uri;Landroid/telecom/GatewayInfo;Landroid/telecom/PhoneAccountHandle;Landroid/telecom/PhoneAccountHandle;ZZ)V

    new-instance v3, Landroid/telecom/DisconnectCause;

    const/4 v4, 0x5

    invoke-direct {v3, v4}, Landroid/telecom/DisconnectCause;-><init>(I)V

    invoke-virtual {v2, v3}, Lcom/android/server/telecom/Call;->setDisconnectCause(Landroid/telecom/DisconnectCause;)V

    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Lcom/android/server/telecom/Call;->setState(I)V

    invoke-virtual {v2, v14, v15}, Lcom/android/server/telecom/Call;->setCreationTimeMillis(J)V

    new-instance v3, Lcom/android/server/telecom/MissedCallNotifier$5$1;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/server/telecom/MissedCallNotifier$5$1;-><init>(Lcom/android/server/telecom/MissedCallNotifier$5;)V

    invoke-virtual {v2, v3}, Lcom/android/server/telecom/Call;->addListener(Lcom/android/server/telecom/Call$Listener;)V

    invoke-virtual {v2, v11, v12}, Lcom/android/server/telecom/Call;->setHandle(Landroid/net/Uri;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v2

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    throw v2

    :cond_2
    :try_start_1
    const-string v2, "tel"

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    move-object v11, v2

    goto :goto_3

    :cond_4
    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "sip"

    :goto_4
    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    move-object v11, v2

    goto :goto_3

    :cond_5
    const-string v2, "tel"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    :cond_6
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    :cond_7
    return-void

    :cond_8
    move-object v3, v2

    goto :goto_1
.end method
