.class Lcom/android/server/enterprise/email/AccountsReceiver$1;
.super Landroid/content/BroadcastReceiver;
.source "AccountsReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/email/AccountsReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/email/AccountsReceiver;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/email/AccountsReceiver;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/email/AccountsReceiver$1;->this$0:Lcom/android/server/enterprise/email/AccountsReceiver;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 16

    :try_start_0
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v12, "user_handle_id"

    const/4 v13, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    if-nez v2, :cond_1

    # getter for: Lcom/android/server/enterprise/email/AccountsReceiver;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/email/AccountsReceiver;->access$000()Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "onRecieve() : Action is null"

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    # getter for: Lcom/android/server/enterprise/email/AccountsReceiver;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/email/AccountsReceiver;->access$000()Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "onRecieve()"

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    # getter for: Lcom/android/server/enterprise/email/AccountsReceiver;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/email/AccountsReceiver;->access$000()Ljava/lang/String;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "onRecieve() : userId = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v12, "edm.intent.action.sec.MDM_ACCOUNT_SETUP_RESULT"

    invoke-virtual {v2, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_3

    const-string/jumbo v12, "status"

    const/16 v13, 0x8

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    const-string/jumbo v12, "user_id"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v12, "service"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v12, "account_id"

    const-wide/16 v14, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v14, v15}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    const-string v12, "eas"

    invoke-virtual {v12, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_2

    new-instance v8, Landroid/content/Intent;

    const-string v12, "edm.intent.action.EXCHANGE_ACCOUNT_ADD_RESULT"

    invoke-direct {v8, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v12, "email_id"

    invoke-virtual {v8, v12, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v12, "result"

    invoke-virtual {v8, v12, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v12, "account_id"

    invoke-virtual {v8, v12, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string/jumbo v12, "server_host"

    const-string/jumbo v13, "server_name"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v12, "containerid"

    invoke-virtual {v8, v12, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/enterprise/email/AccountsReceiver$1;->this$0:Lcom/android/server/enterprise/email/AccountsReceiver;

    # getter for: Lcom/android/server/enterprise/email/AccountsReceiver;->mContext:Landroid/content/Context;
    invoke-static {v12}, Lcom/android/server/enterprise/email/AccountsReceiver;->access$100(Lcom/android/server/enterprise/email/AccountsReceiver;)Landroid/content/Context;

    move-result-object v12

    sget-object v13, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v14, "android.permission.sec.MDM_EXCHANGE"

    invoke-virtual {v12, v8, v13, v14}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "#"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/android/server/enterprise/email/AccountsReceiver;->getSMIMECertificate(Ljava/lang/String;)Lcom/android/server/enterprise/email/AccountSMIMECertificate;

    move-result-object v5

    if-eqz v5, :cond_0

    if-nez v10, :cond_0

    const-wide/16 v12, -0x1

    cmp-long v12, v6, v12

    if-eqz v12, :cond_0

    new-instance v12, Lcom/android/server/enterprise/email/AccountsReceiver$SMIMEThread;

    invoke-direct {v12, v5, v6, v7}, Lcom/android/server/enterprise/email/AccountsReceiver$SMIMEThread;-><init>(Lcom/android/server/enterprise/email/AccountSMIMECertificate;J)V

    invoke-virtual {v12}, Lcom/android/server/enterprise/email/AccountsReceiver$SMIMEThread;->start()V

    # getter for: Lcom/android/server/enterprise/email/AccountsReceiver;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/email/AccountsReceiver;->access$000()Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "onRecieve() : SMIMECertificate Install Called."

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v4

    # getter for: Lcom/android/server/enterprise/email/AccountsReceiver;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/email/AccountsReceiver;->access$000()Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "onRecieve() failed. "

    invoke-static {v12, v13, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    :cond_2
    :try_start_1
    new-instance v8, Landroid/content/Intent;

    const-string v12, "edm.intent.action.EMAIL_ACCOUNT_ADD_RESULT"

    invoke-direct {v8, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v12, "email_id"

    invoke-virtual {v8, v12, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v12, "result"

    invoke-virtual {v8, v12, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v12, "account_id"

    invoke-virtual {v8, v12, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string/jumbo v12, "protocol"

    invoke-virtual {v8, v12, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v12, "receive_host"

    const-string/jumbo v13, "receive_host"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v12, "containerid"

    invoke-virtual {v8, v12, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/enterprise/email/AccountsReceiver$1;->this$0:Lcom/android/server/enterprise/email/AccountsReceiver;

    # getter for: Lcom/android/server/enterprise/email/AccountsReceiver;->mContext:Landroid/content/Context;
    invoke-static {v12}, Lcom/android/server/enterprise/email/AccountsReceiver;->access$100(Lcom/android/server/enterprise/email/AccountsReceiver;)Landroid/content/Context;

    move-result-object v12

    sget-object v13, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v14, "android.permission.sec.MDM_EMAIL"

    invoke-virtual {v12, v8, v13, v14}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    const-string v12, "edm.intent.action.sec.MDM_ACCOUNT_DELETE_RESULT"

    invoke-virtual {v2, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_0

    const-string/jumbo v12, "status"

    const/16 v13, 0x8

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    const-string/jumbo v12, "user_id"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v12, "service"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v12, "account_id"

    const-wide/16 v14, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v14, v15}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    const-string v12, "eas"

    invoke-virtual {v12, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_4

    new-instance v8, Landroid/content/Intent;

    const-string v12, "edm.intent.action.EXCHANGE_ACCOUNT_DELETE_RESULT"

    invoke-direct {v8, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v12, "email_id"

    invoke-virtual {v8, v12, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v12, "result"

    invoke-virtual {v8, v12, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v12, "account_id"

    invoke-virtual {v8, v12, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string/jumbo v12, "server_host"

    const-string/jumbo v13, "server_name"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v12, "containerid"

    invoke-virtual {v8, v12, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/enterprise/email/AccountsReceiver$1;->this$0:Lcom/android/server/enterprise/email/AccountsReceiver;

    # getter for: Lcom/android/server/enterprise/email/AccountsReceiver;->mContext:Landroid/content/Context;
    invoke-static {v12}, Lcom/android/server/enterprise/email/AccountsReceiver;->access$100(Lcom/android/server/enterprise/email/AccountsReceiver;)Landroid/content/Context;

    move-result-object v12

    sget-object v13, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v14, "android.permission.sec.MDM_EXCHANGE"

    invoke-virtual {v12, v8, v13, v14}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    new-instance v8, Landroid/content/Intent;

    const-string v12, "edm.intent.action.EMAIL_ACCOUNT_DELETE_RESULT"

    invoke-direct {v8, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v12, "email_id"

    invoke-virtual {v8, v12, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v12, "result"

    invoke-virtual {v8, v12, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v12, "account_id"

    invoke-virtual {v8, v12, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string/jumbo v12, "protocol"

    invoke-virtual {v8, v12, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v12, "receive_host"

    const-string/jumbo v13, "receive_host"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v12, "containerid"

    invoke-virtual {v8, v12, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/enterprise/email/AccountsReceiver$1;->this$0:Lcom/android/server/enterprise/email/AccountsReceiver;

    # getter for: Lcom/android/server/enterprise/email/AccountsReceiver;->mContext:Landroid/content/Context;
    invoke-static {v12}, Lcom/android/server/enterprise/email/AccountsReceiver;->access$100(Lcom/android/server/enterprise/email/AccountsReceiver;)Landroid/content/Context;

    move-result-object v12

    sget-object v13, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v14, "android.permission.sec.MDM_EMAIL"

    invoke-virtual {v12, v8, v13, v14}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
