.class Lcom/android/server/enterprise/irm/EnterpriseRightsManager$EnterpriseIRMpolicyReciever;
.super Landroid/content/BroadcastReceiver;
.source "EnterpriseRightsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/irm/EnterpriseRightsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EnterpriseIRMpolicyReciever"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/irm/EnterpriseRightsManager;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/irm/EnterpriseRightsManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/irm/EnterpriseRightsManager$EnterpriseIRMpolicyReciever;->this$0:Lcom/android/server/enterprise/irm/EnterpriseRightsManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    const/4 v7, -0x1

    # getter for: Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->DBG:Z
    invoke-static {}, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->access$000()Z

    move-result v5

    if-eqz v5, :cond_0

    # getter for: Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->access$100()Ljava/lang/String;

    move-result-object v5

    const-string v6, "EnterpriseIRMpolicyReciever>>> in onRecieve:EnterpriseIRMpolicyReciever"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    const-string v5, "android.intent.extra.user_handle"

    invoke-virtual {p2, v5, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    invoke-static {v5}, Landroid/os/PersonaManager;->isKnoxId(I)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->getEncodedSchemeSpecificPart()Ljava/lang/String;

    move-result-object v2

    const-string v5, "android.intent.extra.user_handle"

    invoke-virtual {p2, v5, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string v6, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/server/enterprise/irm/EnterpriseRightsManager$EnterpriseIRMpolicyReciever;->this$0:Lcom/android/server/enterprise/irm/EnterpriseRightsManager;

    # invokes: Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->isIRMPackage(Ljava/lang/String;I)Z
    invoke-static {v5, v2, v4}, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->access$700(Lcom/android/server/enterprise/irm/EnterpriseRightsManager;Ljava/lang/String;I)Z

    move-result v5

    if-nez v5, :cond_4

    # getter for: Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->access$100()Ljava/lang/String;

    move-result-object v5

    const-string v6, "EnterpriseIRMpolicyReciever>>> onReceive: Package Removed, Returning"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/4 v3, 0x0

    iget-object v5, p0, Lcom/android/server/enterprise/irm/EnterpriseRightsManager$EnterpriseIRMpolicyReciever;->this$0:Lcom/android/server/enterprise/irm/EnterpriseRightsManager;

    # invokes: Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->getPackageMetaData(Ljava/lang/String;I)Landroid/os/Bundle;
    invoke-static {v5, v2, v4}, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->access$800(Lcom/android/server/enterprise/irm/EnterpriseRightsManager;Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string v5, "component_type"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    # getter for: Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->access$100()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "EnterpriseIRMpolicyReciever>>> onReceive: IRM_TAG is: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v3, :cond_1

    const-string/jumbo v5, "irm_agent"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    # getter for: Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->DBG:Z
    invoke-static {}, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->access$000()Z

    move-result v5

    if-eqz v5, :cond_1

    # getter for: Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->access$100()Ljava/lang/String;

    move-result-object v5

    const-string v6, "EnterpriseIRMpolicyReciever>>> onReceive:  Unknown PackageName!!!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    # getter for: Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->access$100()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "EnterpriseIRMpolicyReciever>>> onReceive: MetaData is: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    new-instance v0, Lcom/android/server/enterprise/irm/EnterpriseRightsManager$BindAsyncTask;

    iget-object v5, p0, Lcom/android/server/enterprise/irm/EnterpriseRightsManager$EnterpriseIRMpolicyReciever;->this$0:Lcom/android/server/enterprise/irm/EnterpriseRightsManager;

    const/4 v6, 0x0

    invoke-direct {v0, v5, v6}, Lcom/android/server/enterprise/irm/EnterpriseRightsManager$BindAsyncTask;-><init>(Lcom/android/server/enterprise/irm/EnterpriseRightsManager;Lcom/android/server/enterprise/irm/EnterpriseRightsManager$1;)V

    const/4 v5, 0x1

    new-array v5, v5, [Landroid/content/Intent;

    const/4 v6, 0x0

    aput-object p2, v5, v6

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/irm/EnterpriseRightsManager$BindAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method
