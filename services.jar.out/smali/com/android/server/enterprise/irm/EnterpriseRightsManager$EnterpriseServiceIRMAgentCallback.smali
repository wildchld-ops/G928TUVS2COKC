.class Lcom/android/server/enterprise/irm/EnterpriseRightsManager$EnterpriseServiceIRMAgentCallback;
.super Lcom/sec/enterprise/knox/irm/IIRMServiceAgentCallback$Stub;
.source "EnterpriseRightsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/irm/EnterpriseRightsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EnterpriseServiceIRMAgentCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/irm/EnterpriseRightsManager;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/irm/EnterpriseRightsManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/irm/EnterpriseRightsManager$EnterpriseServiceIRMAgentCallback;->this$0:Lcom/android/server/enterprise/irm/EnterpriseRightsManager;

    invoke-direct {p0}, Lcom/sec/enterprise/knox/irm/IIRMServiceAgentCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public getActiveIRMVendor()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    # getter for: Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "In getActiveIRMVendor: "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/enterprise/irm/EnterpriseRightsManager$EnterpriseServiceIRMAgentCallback;->this$0:Lcom/android/server/enterprise/irm/EnterpriseRightsManager;

    # invokes: Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->getIrmHelperInstance()Lcom/android/server/enterprise/storage/EdmIRMStorageHelper;
    invoke-static {v1}, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->access$400(Lcom/android/server/enterprise/irm/EnterpriseRightsManager;)Lcom/android/server/enterprise/storage/EdmIRMStorageHelper;

    move-result-object v1

    if-nez v1, :cond_0

    # getter for: Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "In getActiveIRMVendor: IRMHelper is not initialized"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/android/server/enterprise/irm/EnterpriseRightsManager$EnterpriseServiceIRMAgentCallback;->this$0:Lcom/android/server/enterprise/irm/EnterpriseRightsManager;

    # getter for: Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->irmHelper:Lcom/android/server/enterprise/storage/EdmIRMStorageHelper;
    invoke-static {v1}, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->access$500(Lcom/android/server/enterprise/irm/EnterpriseRightsManager;)Lcom/android/server/enterprise/storage/EdmIRMStorageHelper;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/storage/EdmIRMStorageHelper;->getActiveIRMVendor(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getSupportedCaps(Ljava/lang/String;)Lcom/sec/enterprise/knox/irm/SupportedCaps;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/server/enterprise/irm/EnterpriseRightsManager$EnterpriseServiceIRMAgentCallback;->this$0:Lcom/android/server/enterprise/irm/EnterpriseRightsManager;

    # invokes: Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->getIrmHelperInstance()Lcom/android/server/enterprise/storage/EdmIRMStorageHelper;
    invoke-static {v2}, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->access$400(Lcom/android/server/enterprise/irm/EnterpriseRightsManager;)Lcom/android/server/enterprise/storage/EdmIRMStorageHelper;

    move-result-object v2

    if-nez v2, :cond_1

    # getter for: Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->access$100()Ljava/lang/String;

    move-result-object v2

    const-string v3, "In getSupportedCaps: IRMHelper is not initialized"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v2, p0, Lcom/android/server/enterprise/irm/EnterpriseRightsManager$EnterpriseServiceIRMAgentCallback;->this$0:Lcom/android/server/enterprise/irm/EnterpriseRightsManager;

    # getter for: Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->irmHelper:Lcom/android/server/enterprise/storage/EdmIRMStorageHelper;
    invoke-static {v2}, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->access$500(Lcom/android/server/enterprise/irm/EnterpriseRightsManager;)Lcom/android/server/enterprise/storage/EdmIRMStorageHelper;

    move-result-object v2

    invoke-virtual {v2, v1, p1}, Lcom/android/server/enterprise/storage/EdmIRMStorageHelper;->getSupportedCapabilities(ILjava/lang/String;)Lcom/sec/enterprise/knox/irm/SupportedCaps;

    move-result-object v0

    if-nez v0, :cond_0

    # getter for: Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->access$100()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "In getSupportedCaps: IRM Agent Capabilities is Null in DB for PCKG: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onCancel(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    :try_start_0
    # getter for: Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "onCancel:doPtortect"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/enterprise/irm/EnterpriseRightsManager$EnterpriseServiceIRMAgentCallback;->this$0:Lcom/android/server/enterprise/irm/EnterpriseRightsManager;

    # getter for: Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->mIrmPCB:Lcom/sec/enterprise/knox/irm/IEnterpriseIRMAppProtectCallback;
    invoke-static {v1}, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->access$1200(Lcom/android/server/enterprise/irm/EnterpriseRightsManager;)Lcom/sec/enterprise/knox/irm/IEnterpriseIRMAppProtectCallback;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/enterprise/knox/irm/IEnterpriseIRMAppProtectCallback;->onCancel()V

    :cond_0
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    # getter for: Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "onCancel: Consume "

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/enterprise/irm/EnterpriseRightsManager$EnterpriseServiceIRMAgentCallback;->this$0:Lcom/android/server/enterprise/irm/EnterpriseRightsManager;

    # getter for: Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->mIrmCCB:Lcom/sec/enterprise/knox/irm/IEnterpriseIRMAppConsumeCallback;
    invoke-static {v1}, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->access$1300(Lcom/android/server/enterprise/irm/EnterpriseRightsManager;)Lcom/sec/enterprise/knox/irm/IEnterpriseIRMAppConsumeCallback;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/enterprise/knox/irm/IEnterpriseIRMAppConsumeCallback;->onCancel()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    # getter for: Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, " onCancel RenmoException!!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onError(ILandroid/net/Uri;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    # getter for: Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, " onError!!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch p1, :pswitch_data_0

    :try_start_0
    # getter for: Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, " onError >> default!!"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :pswitch_0
    if-eqz p2, :cond_0

    # getter for: Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " doProtect: Failed to protect the File: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ERROR_CODE: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/enterprise/irm/EnterpriseRightsManager$EnterpriseServiceIRMAgentCallback;->this$0:Lcom/android/server/enterprise/irm/EnterpriseRightsManager;

    # getter for: Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->mIrmPCB:Lcom/sec/enterprise/knox/irm/IEnterpriseIRMAppProtectCallback;
    invoke-static {v1}, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->access$1200(Lcom/android/server/enterprise/irm/EnterpriseRightsManager;)Lcom/sec/enterprise/knox/irm/IEnterpriseIRMAppProtectCallback;

    move-result-object v1

    invoke-interface {v1, p2, p3}, Lcom/sec/enterprise/knox/irm/IEnterpriseIRMAppProtectCallback;->onError(Landroid/net/Uri;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    # getter for: Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, " onError Exception!!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_0
    :try_start_1
    # getter for: Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " Null inputfile Decriptor >>> ERROR_CODE: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_1
    # getter for: Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " consume: ERROR_CODE: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/enterprise/irm/EnterpriseRightsManager$EnterpriseServiceIRMAgentCallback;->this$0:Lcom/android/server/enterprise/irm/EnterpriseRightsManager;

    # getter for: Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->mIrmCCB:Lcom/sec/enterprise/knox/irm/IEnterpriseIRMAppConsumeCallback;
    invoke-static {v1}, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->access$1300(Lcom/android/server/enterprise/irm/EnterpriseRightsManager;)Lcom/sec/enterprise/knox/irm/IEnterpriseIRMAppConsumeCallback;

    move-result-object v1

    invoke-interface {v1, p2, p3}, Lcom/sec/enterprise/knox/irm/IEnterpriseIRMAppConsumeCallback;->onError(Landroid/net/Uri;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onSuccess(ILandroid/net/Uri;Landroid/net/Uri;Lcom/sec/enterprise/knox/irm/RightsInfo;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    # getter for: Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, " onSuccess!!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/enterprise/irm/EnterpriseRightsManager$EnterpriseServiceIRMAgentCallback;->this$0:Lcom/android/server/enterprise/irm/EnterpriseRightsManager;

    # invokes: Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->getIrmHelperInstance()Lcom/android/server/enterprise/storage/EdmIRMStorageHelper;
    invoke-static {v1}, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->access$400(Lcom/android/server/enterprise/irm/EnterpriseRightsManager;)Lcom/android/server/enterprise/storage/EdmIRMStorageHelper;

    move-result-object v1

    if-nez v1, :cond_0

    # getter for: Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "In IRMHelper is not initialized"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    packed-switch p1, :pswitch_data_0

    :try_start_0
    # getter for: Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, " onSuccess >> default!!"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    # getter for: Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "onsuccess Exception!!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :pswitch_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/enterprise/irm/EnterpriseRightsManager$EnterpriseServiceIRMAgentCallback;->this$0:Lcom/android/server/enterprise/irm/EnterpriseRightsManager;

    # getter for: Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->mIrmPCB:Lcom/sec/enterprise/knox/irm/IEnterpriseIRMAppProtectCallback;
    invoke-static {v1}, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->access$1200(Lcom/android/server/enterprise/irm/EnterpriseRightsManager;)Lcom/sec/enterprise/knox/irm/IEnterpriseIRMAppProtectCallback;

    move-result-object v1

    invoke-interface {v1, p2, p3}, Lcom/sec/enterprise/knox/irm/IEnterpriseIRMAppProtectCallback;->onSuccess(Landroid/net/Uri;Landroid/net/Uri;)V

    goto :goto_0

    :pswitch_1
    # getter for: Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "consume: onsuccess output file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/enterprise/irm/EnterpriseRightsManager$EnterpriseServiceIRMAgentCallback;->this$0:Lcom/android/server/enterprise/irm/EnterpriseRightsManager;

    # getter for: Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->irmHelper:Lcom/android/server/enterprise/storage/EdmIRMStorageHelper;
    invoke-static {v1}, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->access$500(Lcom/android/server/enterprise/irm/EnterpriseRightsManager;)Lcom/android/server/enterprise/storage/EdmIRMStorageHelper;

    move-result-object v1

    if-eqz v1, :cond_3

    if-eqz p4, :cond_3

    # getter for: Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "consume: onsuccess >> Adding/updating output file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "in Table: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "IRMDocumentRightsTable"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/enterprise/irm/EnterpriseRightsManager$EnterpriseServiceIRMAgentCallback;->this$0:Lcom/android/server/enterprise/irm/EnterpriseRightsManager;

    # getter for: Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->irmHelper:Lcom/android/server/enterprise/storage/EdmIRMStorageHelper;
    invoke-static {v1}, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->access$500(Lcom/android/server/enterprise/irm/EnterpriseRightsManager;)Lcom/android/server/enterprise/storage/EdmIRMStorageHelper;

    move-result-object v1

    invoke-virtual {p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/enterprise/storage/EdmIRMStorageHelper;->getDocRightsInfo(Ljava/lang/String;)Lcom/sec/enterprise/knox/irm/RightsInfo;

    move-result-object v1

    if-eqz v1, :cond_2

    # getter for: Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "consume: onsuccess >> updating entry for the file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/enterprise/irm/EnterpriseRightsManager$EnterpriseServiceIRMAgentCallback;->this$0:Lcom/android/server/enterprise/irm/EnterpriseRightsManager;

    # getter for: Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->irmHelper:Lcom/android/server/enterprise/storage/EdmIRMStorageHelper;
    invoke-static {v1}, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->access$500(Lcom/android/server/enterprise/irm/EnterpriseRightsManager;)Lcom/android/server/enterprise/storage/EdmIRMStorageHelper;

    move-result-object v1

    invoke-virtual {p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p4, p5}, Lcom/android/server/enterprise/storage/EdmIRMStorageHelper;->setRightsInfo(Ljava/lang/String;Lcom/sec/enterprise/knox/irm/RightsInfo;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    # getter for: Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doConsume::onSuccess >> Error could not update RightsInfo File: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "in the table: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "IRMDocumentRightsTable"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/android/server/enterprise/irm/EnterpriseRightsManager$EnterpriseServiceIRMAgentCallback;->this$0:Lcom/android/server/enterprise/irm/EnterpriseRightsManager;

    # getter for: Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->mIrmCCB:Lcom/sec/enterprise/knox/irm/IEnterpriseIRMAppConsumeCallback;
    invoke-static {v1}, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->access$1300(Lcom/android/server/enterprise/irm/EnterpriseRightsManager;)Lcom/sec/enterprise/knox/irm/IEnterpriseIRMAppConsumeCallback;

    move-result-object v1

    invoke-interface {v1, p2, p3, p4}, Lcom/sec/enterprise/knox/irm/IEnterpriseIRMAppConsumeCallback;->onSuccess(Landroid/net/Uri;Landroid/net/Uri;Lcom/sec/enterprise/knox/irm/RightsInfo;)V

    goto/16 :goto_0

    :cond_2
    # getter for: Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "consume: onsuccess >> Adding entry for the file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/enterprise/irm/EnterpriseRightsManager$EnterpriseServiceIRMAgentCallback;->this$0:Lcom/android/server/enterprise/irm/EnterpriseRightsManager;

    # getter for: Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->irmHelper:Lcom/android/server/enterprise/storage/EdmIRMStorageHelper;
    invoke-static {v1}, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->access$500(Lcom/android/server/enterprise/irm/EnterpriseRightsManager;)Lcom/android/server/enterprise/storage/EdmIRMStorageHelper;

    move-result-object v1

    invoke-virtual {p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MS"

    invoke-virtual {v1, v2, v3, p4, p5}, Lcom/android/server/enterprise/storage/EdmIRMStorageHelper;->addDocument(Ljava/lang/String;Ljava/lang/String;Lcom/sec/enterprise/knox/irm/RightsInfo;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    # getter for: Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doConsume::onSuccess >> Error could not add File: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "in the table: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "IRMDocumentRightsTable"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    # getter for: Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "consume: onSuccess >> RightsInfo is Null output file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setIRMCapabilities(Ljava/lang/String;Lcom/sec/enterprise/knox/irm/SupportedCaps;)Z
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    # getter for: Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "In setIRMCapabilities: userId: "

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v12

    invoke-static {v12}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v12

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v11, 0x0

    const/4 v3, 0x0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    if-nez p2, :cond_0

    # getter for: Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v2, "In setIRMCapabilities: SupportedCaps is null from IRM Agent"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/irm/EnterpriseRightsManager$EnterpriseServiceIRMAgentCallback;->this$0:Lcom/android/server/enterprise/irm/EnterpriseRightsManager;

    # invokes: Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->getIrmHelperInstance()Lcom/android/server/enterprise/storage/EdmIRMStorageHelper;
    invoke-static {v0}, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->access$400(Lcom/android/server/enterprise/irm/EnterpriseRightsManager;)Lcom/android/server/enterprise/storage/EdmIRMStorageHelper;

    move-result-object v0

    if-nez v0, :cond_2

    # getter for: Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v2, "In setIRMCapabilities: IRMHelper is not initialized"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    move v0, v11

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/server/enterprise/irm/EnterpriseRightsManager$EnterpriseServiceIRMAgentCallback;->this$0:Lcom/android/server/enterprise/irm/EnterpriseRightsManager;

    # getter for: Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->irmHelper:Lcom/android/server/enterprise/storage/EdmIRMStorageHelper;
    invoke-static {v0}, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->access$500(Lcom/android/server/enterprise/irm/EnterpriseRightsManager;)Lcom/android/server/enterprise/storage/EdmIRMStorageHelper;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/storage/EdmIRMStorageHelper;->getActiveIRMVendor(I)Ljava/lang/String;

    move-result-object v9

    # getter for: Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Active IRM Agent is : "

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v9, :cond_4

    iget-object v0, p0, Lcom/android/server/enterprise/irm/EnterpriseRightsManager$EnterpriseServiceIRMAgentCallback;->this$0:Lcom/android/server/enterprise/irm/EnterpriseRightsManager;

    # getter for: Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->irmHelper:Lcom/android/server/enterprise/storage/EdmIRMStorageHelper;
    invoke-static {v0}, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->access$500(Lcom/android/server/enterprise/irm/EnterpriseRightsManager;)Lcom/android/server/enterprise/storage/EdmIRMStorageHelper;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v9, v2}, Lcom/android/server/enterprise/storage/EdmIRMStorageHelper;->setIRMAgentStatus(ILjava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3

    # getter for: Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Active agent was disabled !!!"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    # getter for: Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "setting status of agent being installed("

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v12, ") to active !"

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    invoke-virtual {p2}, Lcom/sec/enterprise/knox/irm/SupportedCaps;->getCapability()Lcom/sec/enterprise/knox/irm/ExtraCapability;

    move-result-object v10

    iget-object v0, p0, Lcom/android/server/enterprise/irm/EnterpriseRightsManager$EnterpriseServiceIRMAgentCallback;->this$0:Lcom/android/server/enterprise/irm/EnterpriseRightsManager;

    # getter for: Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->irmUtil:Lcom/sec/enterprise/knox/irm/IRMUtils;
    invoke-static {v0}, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->access$1400(Lcom/android/server/enterprise/irm/EnterpriseRightsManager;)Lcom/sec/enterprise/knox/irm/IRMUtils;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/sec/enterprise/knox/irm/IRMUtils;->getRights(Lcom/sec/enterprise/knox/irm/SupportedCaps;)I

    move-result v4

    iget-object v0, p0, Lcom/android/server/enterprise/irm/EnterpriseRightsManager$EnterpriseServiceIRMAgentCallback;->this$0:Lcom/android/server/enterprise/irm/EnterpriseRightsManager;

    # getter for: Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->irmUtil:Lcom/sec/enterprise/knox/irm/IRMUtils;
    invoke-static {v0}, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->access$1400(Lcom/android/server/enterprise/irm/EnterpriseRightsManager;)Lcom/sec/enterprise/knox/irm/IRMUtils;

    move-result-object v0

    invoke-virtual {v0, v10}, Lcom/sec/enterprise/knox/irm/IRMUtils;->getExtraCaps(Lcom/sec/enterprise/knox/irm/ExtraCapability;)I

    move-result v5

    # getter for: Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "In setIRMCapabilities: Supported Rights: "

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v12, " Extra Caps: "

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v12, ": userId:"

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v10, :cond_5

    # getter for: Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v2, "In setIRMCapabilities: Extra Caps: NULL for IRM Agent"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_3
    # getter for: Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Unable to deactivate an active agent ! Returning!"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_4
    # getter for: Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v2, "No active IRM vendors found in the database! Proceeding as usual !"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_5
    invoke-virtual {v10}, Lcom/sec/enterprise/knox/irm/ExtraCapability;->getProtectedFileFormat()Ljava/util/List;

    move-result-object v7

    invoke-virtual {v10}, Lcom/sec/enterprise/knox/irm/ExtraCapability;->getFileFormat()Ljava/util/List;

    move-result-object v6

    invoke-virtual {v10}, Lcom/sec/enterprise/knox/irm/ExtraCapability;->getAuthMethodSupported()Ljava/util/List;

    move-result-object v8

    iget-object v0, p0, Lcom/android/server/enterprise/irm/EnterpriseRightsManager$EnterpriseServiceIRMAgentCallback;->this$0:Lcom/android/server/enterprise/irm/EnterpriseRightsManager;

    # getter for: Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->irmHelper:Lcom/android/server/enterprise/storage/EdmIRMStorageHelper;
    invoke-static {v0}, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->access$500(Lcom/android/server/enterprise/irm/EnterpriseRightsManager;)Lcom/android/server/enterprise/storage/EdmIRMStorageHelper;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/storage/EdmIRMStorageHelper;->getIRMVendors(I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/server/enterprise/irm/EnterpriseRightsManager$EnterpriseServiceIRMAgentCallback;->this$0:Lcom/android/server/enterprise/irm/EnterpriseRightsManager;

    # getter for: Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->irmHelper:Lcom/android/server/enterprise/storage/EdmIRMStorageHelper;
    invoke-static {v0}, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->access$500(Lcom/android/server/enterprise/irm/EnterpriseRightsManager;)Lcom/android/server/enterprise/storage/EdmIRMStorageHelper;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/storage/EdmIRMStorageHelper;->getIRMVendors(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    # getter for: Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v2, "In setIRMCapabilities: UPDATE IRM Vendor entry in DB "

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/enterprise/irm/EnterpriseRightsManager$EnterpriseServiceIRMAgentCallback;->this$0:Lcom/android/server/enterprise/irm/EnterpriseRightsManager;

    # getter for: Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->irmHelper:Lcom/android/server/enterprise/storage/EdmIRMStorageHelper;
    invoke-static {v0}, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->access$500(Lcom/android/server/enterprise/irm/EnterpriseRightsManager;)Lcom/android/server/enterprise/storage/EdmIRMStorageHelper;

    move-result-object v0

    move-object v2, p1

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/enterprise/storage/EdmIRMStorageHelper;->updateIRMVendors(ILjava/lang/String;IIILjava/util/List;Ljava/util/List;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_1

    # getter for: Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v2, "In setIRMCapabilities: IRM Agent updated."

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v11, 0x1

    goto/16 :goto_1

    :cond_6
    # getter for: Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v2, "In setIRMCapabilities: Add IRM Vendor in DB "

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/enterprise/irm/EnterpriseRightsManager$EnterpriseServiceIRMAgentCallback;->this$0:Lcom/android/server/enterprise/irm/EnterpriseRightsManager;

    # getter for: Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->irmHelper:Lcom/android/server/enterprise/storage/EdmIRMStorageHelper;
    invoke-static {v0}, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->access$500(Lcom/android/server/enterprise/irm/EnterpriseRightsManager;)Lcom/android/server/enterprise/storage/EdmIRMStorageHelper;

    move-result-object v0

    move-object v2, p1

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/enterprise/storage/EdmIRMStorageHelper;->addIRMVendors(ILjava/lang/String;IIILjava/util/List;Ljava/util/List;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_1

    # getter for: Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/irm/EnterpriseRightsManager;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v2, "In setIRMCapabilities: IRM Agent  added."

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v11, 0x1

    goto/16 :goto_1
.end method
