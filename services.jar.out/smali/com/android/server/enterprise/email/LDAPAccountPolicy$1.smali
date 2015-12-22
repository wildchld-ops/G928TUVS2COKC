.class Lcom/android/server/enterprise/email/LDAPAccountPolicy$1;
.super Landroid/content/BroadcastReceiver;
.source "LDAPAccountPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/enterprise/email/LDAPAccountPolicy;->getLDAPReceiver()Landroid/content/BroadcastReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/email/LDAPAccountPolicy;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/email/LDAPAccountPolicy;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/email/LDAPAccountPolicy$1;->this$0:Lcom/android/server/enterprise/email/LDAPAccountPolicy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 14

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v10, "edm.intent.action.ldap.createacct.internal"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    const-string v10, "LDAPAccountPolicyService"

    const-string v11, "LDAPReceiver: Received intent : ACTION_LDAP_CREATE_ACCT"

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v10, "edm.intent.action.ldap.createacct.result"

    invoke-direct {v0, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v10, "edm.intent.extra.ldap.user.id"

    invoke-virtual {v3, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    const-string v10, "edm.intent.extra.ldap.result"

    const-string v11, "edm.intent.extra.ldap.result"

    invoke-virtual {v3, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v0, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v10, "edm.intent.extra.ldap.acct.id"

    const-string v11, "edm.intent.extra.ldap.acct.id"

    invoke-virtual {v3, v11}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v12

    invoke-virtual {v0, v10, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v10, "edm.intent.extra.ldap.user.id"

    invoke-virtual {v0, v10, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v10, p0, Lcom/android/server/enterprise/email/LDAPAccountPolicy$1;->this$0:Lcom/android/server/enterprise/email/LDAPAccountPolicy;

    iget-object v10, v10, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->serviceMap:Ljava/util/Map;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    const-string v10, "LDAPAccountPolicyService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "LDAPReceiver: No LDAPConnection for UserId: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    :try_start_0
    iget-object v10, p0, Lcom/android/server/enterprise/email/LDAPAccountPolicy$1;->this$0:Lcom/android/server/enterprise/email/LDAPAccountPolicy;

    iget-object v10, v10, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->serviceMap:Ljava/util/Map;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/enterprise/email/LDAPAccountPolicy$LDAPServiceConnection;

    iget-object v10, p0, Lcom/android/server/enterprise/email/LDAPAccountPolicy$1;->this$0:Lcom/android/server/enterprise/email/LDAPAccountPolicy;

    invoke-virtual {v4}, Lcom/android/server/enterprise/email/LDAPAccountPolicy$LDAPServiceConnection;->getCallingUserId()I

    move-result v11

    # invokes: Lcom/android/server/enterprise/email/LDAPAccountPolicy;->getUserHandle(I)Landroid/os/UserHandle;
    invoke-static {v10, v11}, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->access$000(Lcom/android/server/enterprise/email/LDAPAccountPolicy;I)Landroid/os/UserHandle;

    move-result-object v8

    iget-object v10, p0, Lcom/android/server/enterprise/email/LDAPAccountPolicy$1;->this$0:Lcom/android/server/enterprise/email/LDAPAccountPolicy;

    invoke-virtual {v4}, Lcom/android/server/enterprise/email/LDAPAccountPolicy$LDAPServiceConnection;->getCallingUserId()I

    move-result v11

    # invokes: Lcom/android/server/enterprise/email/LDAPAccountPolicy;->getUserContext(I)Landroid/content/Context;
    invoke-static {v10, v11}, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->access$100(Lcom/android/server/enterprise/email/LDAPAccountPolicy;I)Landroid/content/Context;

    move-result-object v5

    const-string v10, "android.permission.sec.MDM_LDAP"

    invoke-virtual {v5, v0, v8, v10}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    const-string v10, "LDAPAccountPolicyService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "LDAPReceiver: success to send result Intent. : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_1
    const-string v10, "LDAPAccountPolicyService"

    const-string v11, "LDAPReceiver: failed to Send Intent. "

    invoke-static {v10, v11, v2}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :catchall_0
    move-exception v10

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v10
.end method
