.class Lcom/android/server/enterprise/irm/EnterpriseRightsManager$BindAsyncTask;
.super Landroid/os/AsyncTask;
.source "EnterpriseRightsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/irm/EnterpriseRightsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BindAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/content/Intent;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/irm/EnterpriseRightsManager;


# direct methods
.method private constructor <init>(Lcom/android/server/enterprise/irm/EnterpriseRightsManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/irm/EnterpriseRightsManager$BindAsyncTask;->this$0:Lcom/android/server/enterprise/irm/EnterpriseRightsManager;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/enterprise/irm/EnterpriseRightsManager;Lcom/android/server/enterprise/irm/EnterpriseRightsManager$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/irm/EnterpriseRightsManager$BindAsyncTask;-><init>(Lcom/android/server/enterprise/irm/EnterpriseRightsManager;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Landroid/content/Intent;

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/irm/EnterpriseRightsManager$BindAsyncTask;->doInBackground([Landroid/content/Intent;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Landroid/content/Intent;)Ljava/lang/Void;
    .locals 13

    const/4 v12, 0x0

    const/4 v9, 0x0

    aget-object v3, p1, v9

    if-eqz v3, :cond_3

    :try_start_0
    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_3

    const-string v9, "android.intent.extra.user_handle"

    const/4 v10, -0x1

    invoke-virtual {v3, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    const-string v9, "android.intent.extra.UID"

    const/4 v10, -0x1

    invoke-virtual {v3, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    iget-object v9, p0, Lcom/android/server/enterprise/irm/EnterpriseRightsManager$BindAsyncTask;->this$0:Lcom/android/server/enterprise/irm/EnterpriseRightsManager;

    # invokes: Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->getIRMInterface(I)Lcom/sec/enterprise/knox/irm/IIRMServiceAgent;
    invoke-static {v9, v8}, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->access$200(Lcom/android/server/enterprise/irm/EnterpriseRightsManager;I)Lcom/sec/enterprise/knox/irm/IIRMServiceAgent;

    move-result-object v9

    if-nez v9, :cond_1

    # getter for: Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->DBG:Z
    invoke-static {}, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->access$000()Z

    move-result v9

    if-eqz v9, :cond_0

    # getter for: Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->access$100()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "in bindAsyncTask: doInBackground : Binding the service for: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " uid: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v9, p0, Lcom/android/server/enterprise/irm/EnterpriseRightsManager$BindAsyncTask;->this$0:Lcom/android/server/enterprise/irm/EnterpriseRightsManager;

    # invokes: Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->bindToIRMService(I)V
    invoke-static {v9, v8}, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->access$300(Lcom/android/server/enterprise/irm/EnterpriseRightsManager;I)V

    :cond_1
    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/Uri;->getEncodedSchemeSpecificPart()Ljava/lang/String;

    move-result-object v6

    # getter for: Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->DBG:Z
    invoke-static {}, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->access$000()Z

    move-result v9

    if-eqz v9, :cond_2

    # getter for: Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->access$100()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "in bindAsyncTask: doInBackground:  Package Name = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ": userid = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v9, p0, Lcom/android/server/enterprise/irm/EnterpriseRightsManager$BindAsyncTask;->this$0:Lcom/android/server/enterprise/irm/EnterpriseRightsManager;

    # invokes: Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->getIRMInterface(I)Lcom/sec/enterprise/knox/irm/IIRMServiceAgent;
    invoke-static {v9, v8}, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->access$200(Lcom/android/server/enterprise/irm/EnterpriseRightsManager;I)Lcom/sec/enterprise/knox/irm/IIRMServiceAgent;

    move-result-object v5

    if-nez v5, :cond_4

    # getter for: Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->DBG:Z
    invoke-static {}, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->access$000()Z

    move-result v9

    if-eqz v9, :cond_3

    # getter for: Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->access$100()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "in bindAsyncTask: doInBackground : Could not bind to Samsung IRM Service"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_0
    return-object v12

    :cond_4
    const-string v9, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    new-instance v4, Lcom/android/server/enterprise/irm/EnterpriseRightsManager$EnterpriseServiceIRMAgentCallback;

    iget-object v9, p0, Lcom/android/server/enterprise/irm/EnterpriseRightsManager$BindAsyncTask;->this$0:Lcom/android/server/enterprise/irm/EnterpriseRightsManager;

    invoke-direct {v4, v9}, Lcom/android/server/enterprise/irm/EnterpriseRightsManager$EnterpriseServiceIRMAgentCallback;-><init>(Lcom/android/server/enterprise/irm/EnterpriseRightsManager;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-interface {v5, v6, v4}, Lcom/sec/enterprise/knox/irm/IIRMServiceAgent;->getIRMCapabilities(Ljava/lang/String;Lcom/sec/enterprise/knox/irm/IIRMServiceAgentCallback;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    # getter for: Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->DBG:Z
    invoke-static {}, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->access$000()Z

    move-result v9

    if-eqz v9, :cond_5

    # getter for: Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->access$100()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "in bindAsyncTask: doInBackground:  got  RemoteException while retrieving Package Name"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_6
    :try_start_3
    const-string v9, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_8

    new-instance v4, Lcom/android/server/enterprise/irm/EnterpriseRightsManager$EnterpriseServiceIRMAgentCallback;

    iget-object v9, p0, Lcom/android/server/enterprise/irm/EnterpriseRightsManager$BindAsyncTask;->this$0:Lcom/android/server/enterprise/irm/EnterpriseRightsManager;

    invoke-direct {v4, v9}, Lcom/android/server/enterprise/irm/EnterpriseRightsManager$EnterpriseServiceIRMAgentCallback;-><init>(Lcom/android/server/enterprise/irm/EnterpriseRightsManager;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :try_start_4
    invoke-interface {v5, v6, v4}, Lcom/sec/enterprise/knox/irm/IIRMServiceAgent;->getIRMCapabilities(Ljava/lang/String;Lcom/sec/enterprise/knox/irm/IIRMServiceAgentCallback;)Z
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    :catch_2
    move-exception v1

    :try_start_5
    # getter for: Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->DBG:Z
    invoke-static {}, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->access$000()Z

    move-result v9

    if-eqz v9, :cond_7

    # getter for: Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->access$100()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "in bindAsyncTask: doInBackground: got  RemoteException while retrieving Package Name"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :cond_8
    const-string v9, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_b

    iget-object v9, p0, Lcom/android/server/enterprise/irm/EnterpriseRightsManager$BindAsyncTask;->this$0:Lcom/android/server/enterprise/irm/EnterpriseRightsManager;

    # invokes: Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->getIrmHelperInstance()Lcom/android/server/enterprise/storage/EdmIRMStorageHelper;
    invoke-static {v9}, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->access$400(Lcom/android/server/enterprise/irm/EnterpriseRightsManager;)Lcom/android/server/enterprise/storage/EdmIRMStorageHelper;

    move-result-object v9

    if-nez v9, :cond_9

    # getter for: Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->DBG:Z
    invoke-static {}, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->access$000()Z

    move-result v9

    if-eqz v9, :cond_3

    # getter for: Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->access$100()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "in bindAsyncTask: doInBackground: IRMHelper is not initialized."

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_9
    iget-object v9, p0, Lcom/android/server/enterprise/irm/EnterpriseRightsManager$BindAsyncTask;->this$0:Lcom/android/server/enterprise/irm/EnterpriseRightsManager;

    # getter for: Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->irmHelper:Lcom/android/server/enterprise/storage/EdmIRMStorageHelper;
    invoke-static {v9}, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->access$500(Lcom/android/server/enterprise/irm/EnterpriseRightsManager;)Lcom/android/server/enterprise/storage/EdmIRMStorageHelper;

    move-result-object v9

    invoke-virtual {v9, v8, v6}, Lcom/android/server/enterprise/storage/EdmIRMStorageHelper;->removeIRMVendor(ILjava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_a

    # getter for: Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->DBG:Z
    invoke-static {}, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->access$000()Z

    move-result v9

    if-eqz v9, :cond_3

    # getter for: Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->access$100()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "in bindAsyncTask: doInBackground: Entry could not be removed."

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_a
    # getter for: Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->access$100()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "in bindAsyncTask: doInBackground: Entry Removed."

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Landroid/content/ComponentName;

    const-string v9, "com.samsung.android.irm.service"

    const-string v10, "com.samsung.android.irm.service.chooser.IRMProtectActivity"

    invoke-direct {v2, v9, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    const/4 v9, 0x2

    :try_start_6
    invoke-interface {v5, v2, v9}, Lcom/sec/enterprise/knox/irm/IIRMServiceAgent;->updateIRMComponents(Landroid/content/ComponentName;I)Z

    # getter for: Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->irmAgentsInDB:Ljava/util/List;
    invoke-static {}, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->access$600()Ljava/util/List;

    move-result-object v9

    if-eqz v9, :cond_3

    # getter for: Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->irmAgentsInDB:Ljava/util/List;
    invoke-static {}, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->access$600()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_3

    # getter for: Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->irmAgentsInDB:Ljava/util/List;
    invoke-static {}, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->access$600()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v6}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_0

    :catch_3
    move-exception v1

    :try_start_7
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    :cond_b
    # getter for: Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->DBG:Z
    invoke-static {}, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->access$000()Z

    move-result v9

    if-eqz v9, :cond_3

    # getter for: Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->access$100()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "in bindAsyncTask: doInBackground:  Ignore the Intent Action"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto/16 :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/irm/EnterpriseRightsManager$BindAsyncTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    # getter for: Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->DBG:Z
    invoke-static {}, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    # getter for: Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "in bindAsyncTask: onPostExecute "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    # getter for: Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->DBG:Z
    invoke-static {}, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    # getter for: Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "in bindAsyncTask: onPreExecute"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
