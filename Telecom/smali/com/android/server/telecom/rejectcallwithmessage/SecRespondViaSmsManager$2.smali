.class Lcom/android/server/telecom/rejectcallwithmessage/SecRespondViaSmsManager$2;
.super Ljava/lang/Thread;
.source "SecRespondViaSmsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/telecom/rejectcallwithmessage/SecRespondViaSmsManager;->loadCannedTextMessages(Landroid/telecom/Response;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/telecom/rejectcallwithmessage/SecRespondViaSmsManager;

.field final synthetic val$response:Landroid/telecom/Response;


# direct methods
.method constructor <init>(Lcom/android/server/telecom/rejectcallwithmessage/SecRespondViaSmsManager;Landroid/telecom/Response;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/telecom/rejectcallwithmessage/SecRespondViaSmsManager$2;->this$0:Lcom/android/server/telecom/rejectcallwithmessage/SecRespondViaSmsManager;

    iput-object p2, p0, Lcom/android/server/telecom/rejectcallwithmessage/SecRespondViaSmsManager$2;->val$response:Landroid/telecom/Response;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    const/4 v9, 0x1

    const/4 v6, 0x0

    const/4 v8, 0x0

    iget-object v0, p0, Lcom/android/server/telecom/rejectcallwithmessage/SecRespondViaSmsManager$2;->this$0:Lcom/android/server/telecom/rejectcallwithmessage/SecRespondViaSmsManager;

    const-string v1, "loadCannedResponses() of sec starting"

    new-array v2, v8, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "com.android.phone.callsettings"

    const-string v0, "reject_msg_list"

    const-string v0, "content://com.android.phone.callsettings/reject_msg_list"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v0, "reject_message"

    new-instance v7, Ljava/util/ArrayList;

    const/4 v0, 0x5

    invoke-direct {v7, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {}, Lcom/android/server/telecom/TelecomGlobals;->getInstance()Lcom/android/server/telecom/TelecomGlobals;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/TelecomGlobals;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    :try_start_0
    const-string v5, "_id desc"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_2

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const-string v0, "reject_message"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/android/server/telecom/rejectcallwithmessage/SecRespondViaSmsManager$2;->this$0:Lcom/android/server/telecom/rejectcallwithmessage/SecRespondViaSmsManager;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "rejectmsg : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    :cond_2
    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/server/telecom/rejectcallwithmessage/SecRespondViaSmsManager$2;->this$0:Lcom/android/server/telecom/rejectcallwithmessage/SecRespondViaSmsManager;

    const-string v1, "loadCannedResponses() completed, found responses: %s"

    new-array v2, v9, [Ljava/lang/Object;

    invoke-virtual {v7}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/telecom/rejectcallwithmessage/SecRespondViaSmsManager$2;->val$response:Landroid/telecom/Response;

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    iput-object v7, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/telecom/rejectcallwithmessage/SecRespondViaSmsManager$2;->this$0:Lcom/android/server/telecom/rejectcallwithmessage/SecRespondViaSmsManager;

    # getter for: Lcom/android/server/telecom/rejectcallwithmessage/SecRespondViaSmsManager;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/telecom/rejectcallwithmessage/SecRespondViaSmsManager;->access$100(Lcom/android/server/telecom/rejectcallwithmessage/SecRespondViaSmsManager;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v9, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/android/server/telecom/rejectcallwithmessage/SecRespondViaSmsManager$2;->this$0:Lcom/android/server/telecom/rejectcallwithmessage/SecRespondViaSmsManager;

    const-string v1, "getRejectMsgList exception"

    new-array v2, v8, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v1, v6

    goto :goto_0

    :catch_1
    move-exception v0

    :try_start_2
    iget-object v0, p0, Lcom/android/server/telecom/rejectcallwithmessage/SecRespondViaSmsManager$2;->this$0:Lcom/android/server/telecom/rejectcallwithmessage/SecRespondViaSmsManager;

    const-string v2, "rejectmsg exception"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v0

    if-eqz v1, :cond_4

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method
