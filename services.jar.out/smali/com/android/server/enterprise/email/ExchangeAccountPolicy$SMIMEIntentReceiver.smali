.class Lcom/android/server/enterprise/email/ExchangeAccountPolicy$SMIMEIntentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ExchangeAccountPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/email/ExchangeAccountPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SMIMEIntentReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/email/ExchangeAccountPolicy;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/email/ExchangeAccountPolicy;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy$SMIMEIntentReceiver;->this$0:Lcom/android/server/enterprise/email/ExchangeAccountPolicy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 25

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ExchangeAccountPolicy/Receiver"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Received Intent - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v24, 0x0

    if-nez v2, :cond_1

    const-string v3, "ExchangeAccountPolicy/Receiver"

    const-string/jumbo v8, "failed. action is null."

    invoke-static {v3, v8}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v3, "com.samsung.edm.intent.action.EXCHANGE_SMIME_INSTALL_STATUS"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    const-string/jumbo v3, "result"

    const/4 v8, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v22

    const-string v3, "account_id"

    const-wide/16 v8, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    const-string v3, "certificate_result_id"

    const-wide/16 v8, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v18

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "S"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v18

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/enterprise/email/AccountsReceiver;->getSMIMECertificate(Ljava/lang/String;)Lcom/android/server/enterprise/email/AccountSMIMECertificate;

    move-result-object v17

    if-nez v17, :cond_2

    const-string v3, "ExchangeAccountPolicy/Receiver"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "failed. no registed work. id = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-wide/from16 v0, v18

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 v3, -0x1

    move/from16 v0, v22

    if-ne v0, v3, :cond_0

    const-wide/16 v8, 0x0

    cmp-long v3, v6, v8

    if-lez v3, :cond_0

    const-string/jumbo v3, "smime_type"

    const/4 v8, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v21

    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/android/server/enterprise/email/AccountSMIMECertificate;->mCxtInfo:Landroid/app/enterprise/ContextInfo;

    iget v4, v3, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/android/server/enterprise/email/AccountSMIMECertificate;->mCxtInfo:Landroid/app/enterprise/ContextInfo;

    iget v5, v3, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    const/16 v20, 0x0

    const/4 v3, 0x2

    move/from16 v0, v21

    if-eq v0, v3, :cond_3

    const/4 v3, 0x1

    move/from16 v0, v21

    if-ne v0, v3, :cond_4

    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy$SMIMEIntentReceiver;->this$0:Lcom/android/server/enterprise/email/ExchangeAccountPolicy;

    const/4 v8, 0x1

    const-string v9, "ForceSmimeCertForEncryption"

    # invokes: Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->putPolicyState(IIJZLjava/lang/String;)Z
    invoke-static/range {v3 .. v9}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->access$500(Lcom/android/server/enterprise/email/ExchangeAccountPolicy;IIJZLjava/lang/String;)Z

    move-result v20

    const-string v3, "ExchangeAccountPolicy/Receiver"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "force SMIME Certificate for Enryption. ret = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v20

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    const/4 v3, 0x3

    move/from16 v0, v21

    if-eq v0, v3, :cond_5

    const/4 v3, 0x1

    move/from16 v0, v21

    if-ne v0, v3, :cond_6

    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy$SMIMEIntentReceiver;->this$0:Lcom/android/server/enterprise/email/ExchangeAccountPolicy;

    const/4 v8, 0x1

    const-string v9, "ForceSmimeCertForSigning"

    # invokes: Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->putPolicyState(IIJZLjava/lang/String;)Z
    invoke-static/range {v3 .. v9}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->access$500(Lcom/android/server/enterprise/email/ExchangeAccountPolicy;IIJZLjava/lang/String;)Z

    move-result v20

    const-string v3, "ExchangeAccountPolicy/Receiver"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "force SMIME Certificate for Signing. ret = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v20

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    if-eqz v20, :cond_7

    const-string v3, "ExchangeAccountPolicy/Receiver"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "success to SMIME Certificate ."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v21

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    const-string v3, "ExchangeAccountPolicy/Receiver"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "failed to SMIME Certificate ."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v21

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    const-string v3, "com.samsung.edm.intent.action.ENFORCE_SMIME_ALIAS_EMAIL_INTERNAL"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    const-string v3, "ExchangeAccountPolicy"

    const-string v8, "Received - ACTION_ENFORCE_SMIME_ALIAS_EMAIL_INTERNAL"

    invoke-static {v3, v8}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "result"

    const/4 v8, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v22

    const-string v3, "account_id"

    const-wide/16 v8, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    const-string/jumbo v3, "smime_type"

    const/4 v8, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v23

    const-string v3, "certificate_result_id"

    const-wide/16 v8, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v18

    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "S"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v18

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/enterprise/email/AccountsReceiver;->getSMIMECertificate(Ljava/lang/String;)Lcom/android/server/enterprise/email/AccountSMIMECertificate;

    move-result-object v17

    if-eqz v17, :cond_11

    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/android/server/enterprise/email/AccountSMIMECertificate;->mCxtInfo:Landroid/app/enterprise/ContextInfo;

    iget v4, v3, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/android/server/enterprise/email/AccountSMIMECertificate;->mCxtInfo:Landroid/app/enterprise/ContextInfo;

    iget v5, v3, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    const/4 v3, -0x1

    move/from16 v0, v22

    if-ne v0, v3, :cond_b

    const-wide/16 v8, 0x0

    cmp-long v3, v6, v8

    if-lez v3, :cond_b

    const/16 v20, 0x0

    if-nez v23, :cond_9

    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/android/server/enterprise/email/AccountSMIMECertificate;->mPath:Ljava/lang/String;

    if-nez v3, :cond_c

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy$SMIMEIntentReceiver;->this$0:Lcom/android/server/enterprise/email/ExchangeAccountPolicy;

    move-object/from16 v0, v17

    iget-object v9, v0, Lcom/android/server/enterprise/email/AccountSMIMECertificate;->mCxtInfo:Landroid/app/enterprise/ContextInfo;

    const/4 v13, 0x2

    const/4 v14, 0x1

    move-wide v10, v6

    move v12, v5

    # invokes: Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->resetForcedSMIMECertificateInternal(Landroid/app/enterprise/ContextInfo;JIIZ)Z
    invoke-static/range {v8 .. v14}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->access$600(Lcom/android/server/enterprise/email/ExchangeAccountPolicy;Landroid/app/enterprise/ContextInfo;JIIZ)Z

    move-result v20

    const-string v3, "ExchangeAccountPolicy/Receiver"

    const-string/jumbo v8, "release SMIME Certificate for Enryption (Alias) by null."

    invoke-static {v3, v8}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    :goto_1
    const/4 v3, 0x1

    move/from16 v0, v23

    if-ne v0, v3, :cond_a

    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/android/server/enterprise/email/AccountSMIMECertificate;->mPath:Ljava/lang/String;

    if-nez v3, :cond_d

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy$SMIMEIntentReceiver;->this$0:Lcom/android/server/enterprise/email/ExchangeAccountPolicy;

    move-object/from16 v0, v17

    iget-object v9, v0, Lcom/android/server/enterprise/email/AccountSMIMECertificate;->mCxtInfo:Landroid/app/enterprise/ContextInfo;

    const/4 v13, 0x3

    const/4 v14, 0x1

    move-wide v10, v6

    move v12, v5

    # invokes: Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->resetForcedSMIMECertificateInternal(Landroid/app/enterprise/ContextInfo;JIIZ)Z
    invoke-static/range {v8 .. v14}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->access$600(Lcom/android/server/enterprise/email/ExchangeAccountPolicy;Landroid/app/enterprise/ContextInfo;JIIZ)Z

    move-result v20

    const-string v3, "ExchangeAccountPolicy/Receiver"

    const-string/jumbo v8, "release SMIME Certificate for Signing (Alias) by null."

    invoke-static {v3, v8}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    :goto_2
    if-eqz v20, :cond_f

    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/android/server/enterprise/email/AccountSMIMECertificate;->mPath:Ljava/lang/String;

    if-nez v3, :cond_e

    const-string v3, "ExchangeAccountPolicy/Receiver"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "success to release SMIME Certificate (Alias) : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v23

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_b
    :goto_3
    new-instance v16, Landroid/content/Intent;

    const-string v3, "com.samsung.edm.intent.action.ENFORCE_SMIME_ALIAS_RESULT"

    move-object/from16 v0, v16

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "account_id"

    const-string v8, "account_id"

    const-wide/16 v10, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v8, v10, v11}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string/jumbo v3, "result"

    const-string/jumbo v8, "result"

    const/4 v9, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v3, "com.samsung.edm.intent.extra.ENFORCE_SMIME_ALIAS_TYPE"

    const-string/jumbo v8, "smime_type"

    const/4 v9, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy$SMIMEIntentReceiver;->this$0:Lcom/android/server/enterprise/email/ExchangeAccountPolicy;

    # getter for: Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->access$200(Lcom/android/server/enterprise/email/ExchangeAccountPolicy;)Landroid/content/Context;

    move-result-object v3

    sget-object v8, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v9, "android.permission.sec.MDM_EXCHANGE"

    move-object/from16 v0, v16

    invoke-virtual {v3, v0, v8, v9}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_c
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy$SMIMEIntentReceiver;->this$0:Lcom/android/server/enterprise/email/ExchangeAccountPolicy;

    const/4 v8, 0x1

    const-string v9, "ForceSmimeCertForEncryption"

    # invokes: Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->putPolicyState(IIJZLjava/lang/String;)Z
    invoke-static/range {v3 .. v9}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->access$500(Lcom/android/server/enterprise/email/ExchangeAccountPolicy;IIJZLjava/lang/String;)Z

    move-result v20

    const-string v3, "ExchangeAccountPolicy/Receiver"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "force SMIME Certificate for Enryption (Alias). ret = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v20

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v15

    const-string v3, "ExchangeAccountPolicy/Receiver"

    const-string v8, "Failed to apply SMIME Alis Policy on success."

    invoke-static {v3, v8, v15}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_d
    :try_start_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy$SMIMEIntentReceiver;->this$0:Lcom/android/server/enterprise/email/ExchangeAccountPolicy;

    const/4 v8, 0x1

    const-string v9, "ForceSmimeCertForSigning"

    # invokes: Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->putPolicyState(IIJZLjava/lang/String;)Z
    invoke-static/range {v3 .. v9}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->access$500(Lcom/android/server/enterprise/email/ExchangeAccountPolicy;IIJZLjava/lang/String;)Z

    move-result v20

    const-string v3, "ExchangeAccountPolicy/Receiver"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "force SMIME Certificate for Signing (Alias). ret = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v20

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_e
    const-string v3, "ExchangeAccountPolicy/Receiver"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "success to SMIME Certificate (Alias) : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v23

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_f
    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/android/server/enterprise/email/AccountSMIMECertificate;->mPath:Ljava/lang/String;

    if-nez v3, :cond_10

    const-string v3, "ExchangeAccountPolicy/Receiver"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "failed to release SMIME Certificate (Alias) : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v23

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_10
    const-string v3, "ExchangeAccountPolicy/Receiver"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "failed to SMIME Certificate (Alias)."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v23

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_11
    const-string v3, "ExchangeAccountPolicy/Receiver"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "failed. no registed work. id = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-wide/from16 v0, v18

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_3

    :cond_12
    const-string v3, "ExchangeAccountPolicy/Receiver"

    const-string/jumbo v8, "no Defined Intent."

    invoke-static {v3, v8}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
