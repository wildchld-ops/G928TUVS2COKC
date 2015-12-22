.class Lcom/android/server/enterprise/sso/EnterpriseIdentity$1;
.super Landroid/content/pm/ISystemPersonaObserver$Stub;
.source "EnterpriseIdentity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/enterprise/sso/EnterpriseIdentity;->registerPersonaStateObserver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/sso/EnterpriseIdentity;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/sso/EnterpriseIdentity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/sso/EnterpriseIdentity$1;->this$0:Lcom/android/server/enterprise/sso/EnterpriseIdentity;

    invoke-direct {p0}, Landroid/content/pm/ISystemPersonaObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onKnoxContainerLaunch(I)V
    .locals 0

    return-void
.end method

.method public onPersonaActive(I)V
    .locals 0

    return-void
.end method

.method public onRemovePersona(I)V
    .locals 0

    return-void
.end method

.method public onResetPersona(I)V
    .locals 0

    return-void
.end method

.method public onStateChange(ILandroid/content/pm/PersonaState;Landroid/content/pm/PersonaState;)V
    .locals 17

    sget-object v1, Landroid/content/pm/PersonaState;->CREATING:Landroid/content/pm/PersonaState;

    move-object/from16 v0, p2

    if-ne v0, v1, :cond_2

    sget-object v1, Landroid/content/pm/PersonaState;->ACTIVE:Landroid/content/pm/PersonaState;

    move-object/from16 v0, p3

    if-ne v0, v1, :cond_2

    sget-boolean v1, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "EnterpriseIdentity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "In onStateChange: old:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " new:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    # getter for: Lcom/android/server/enterprise/sso/EnterpriseIdentity;->authenticationInfoManager:Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;
    invoke-static {}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->access$000()Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;

    move-result-object v1

    if-eqz v1, :cond_2

    # getter for: Lcom/android/server/enterprise/sso/EnterpriseIdentity;->authenticationInfoManager:Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;
    invoke-static {}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->access$000()Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;->isMigrationNeeded:Z

    if-eqz v1, :cond_2

    sget-boolean v1, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "EnterpriseIdentity"

    const-string v2, "In onStateChange: authInfoMgr not null and migration needed."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v13, 0x0

    const/4 v14, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/enterprise/sso/EnterpriseIdentity$1;->this$0:Lcom/android/server/enterprise/sso/EnterpriseIdentity;

    # getter for: Lcom/android/server/enterprise/sso/EnterpriseIdentity;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->access$100(Lcom/android/server/enterprise/sso/EnterpriseIdentity;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    move-result-object v13

    # getter for: Lcom/android/server/enterprise/sso/EnterpriseIdentity;->authenticationInfoManager:Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;
    invoke-static {}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->access$000()Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;

    move-result-object v1

    move/from16 v0, p1

    # invokes: Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;->updateContainerID(I)V
    invoke-static {v1, v0}, Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;->access$200(Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/enterprise/sso/EnterpriseIdentity$1;->this$0:Lcom/android/server/enterprise/sso/EnterpriseIdentity;

    move/from16 v0, p1

    # invokes: Lcom/android/server/enterprise/sso/EnterpriseIdentity;->initAuthenticationConfigDoc(I)V
    invoke-static {v1, v0}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->access$300(Lcom/android/server/enterprise/sso/EnterpriseIdentity;I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/enterprise/sso/EnterpriseIdentity$1;->this$0:Lcom/android/server/enterprise/sso/EnterpriseIdentity;

    # getter for: Lcom/android/server/enterprise/sso/EnterpriseIdentity;->authenticationInfoManager:Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;
    invoke-static {}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->access$000()Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;->packageName:Ljava/lang/String;

    # getter for: Lcom/android/server/enterprise/sso/EnterpriseIdentity;->authenticationInfoManager:Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;
    invoke-static {}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->access$000()Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;

    move-result-object v3

    iget v3, v3, Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;->containerID:I

    invoke-virtual {v1, v2, v3}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->installPackageInContainer(Ljava/lang/String;I)I

    move-result v1

    if-gez v1, :cond_3

    const-string v1, "EnterpriseIdentity"

    const-string v2, "In onStateChange: packageManagerAdapter.installExistingPackage failed"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void

    :cond_3
    sget-boolean v1, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v1, :cond_4

    const-string v1, "EnterpriseIdentity"

    const-string v2, "In onStateChange: Package install success."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    invoke-static {}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getInstance()Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    move-result-object v14

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    # getter for: Lcom/android/server/enterprise/sso/EnterpriseIdentity;->authenticationInfoManager:Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;
    invoke-static {}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->access$000()Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;->packageName:Ljava/lang/String;

    # getter for: Lcom/android/server/enterprise/sso/EnterpriseIdentity;->authenticationInfoManager:Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;
    invoke-static {}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->access$000()Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;

    move-result-object v2

    iget v2, v2, Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;->containerID:I

    invoke-virtual {v14, v9, v1, v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->restoreContainerAdminData(ILjava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "EnterpriseIdentity"

    const-string v2, "In onStateChange: restoreContainerAdminData failed"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v10

    const-string v1, "EnterpriseIdentity"

    const-string v2, "In registerPersonaStateObserver: RemoteException"

    invoke-static {v1, v2, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_5
    :try_start_1
    new-instance v12, Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;

    # getter for: Lcom/android/server/enterprise/sso/EnterpriseIdentity;->authenticationConfigXMLDocs:Landroid/util/SparseArray;
    invoke-static {}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->access$400()Landroid/util/SparseArray;

    move-result-object v1

    # getter for: Lcom/android/server/enterprise/sso/EnterpriseIdentity;->authenticationInfoManager:Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;
    invoke-static {}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->access$000()Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;

    move-result-object v2

    iget v2, v2, Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;->originUserID:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;

    iget-object v1, v1, Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;->XMLDoc:Lorg/w3c/dom/Document;

    invoke-direct {v12, v1}, Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;-><init>(Lorg/w3c/dom/Document;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/enterprise/sso/EnterpriseIdentity$1;->this$0:Lcom/android/server/enterprise/sso/EnterpriseIdentity;

    # getter for: Lcom/android/server/enterprise/sso/EnterpriseIdentity;->authenticationInfoManager:Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;
    invoke-static {}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->access$000()Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;

    move-result-object v2

    iget v2, v2, Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;->containerID:I

    # invokes: Lcom/android/server/enterprise/sso/EnterpriseIdentity;->updateCacheAndFile(ILcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;)V
    invoke-static {v1, v2, v12}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->access$500(Lcom/android/server/enterprise/sso/EnterpriseIdentity;ILcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;)V

    # getter for: Lcom/android/server/enterprise/sso/EnterpriseIdentity;->authenticationInfoManager:Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;
    invoke-static {}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->access$000()Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;->isSSOConfigurationEnabled:Z

    if-eqz v1, :cond_6

    new-instance v11, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/enterprise/sso/EnterpriseIdentity$1;->this$0:Lcom/android/server/enterprise/sso/EnterpriseIdentity;

    # getter for: Lcom/android/server/enterprise/sso/EnterpriseIdentity;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->access$100(Lcom/android/server/enterprise/sso/EnterpriseIdentity;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v11, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    move/from16 v0, p1

    invoke-virtual {v11, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getMUMContainerOwnerUid(I)I

    move-result v7

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/enterprise/sso/EnterpriseIdentity$1;->this$0:Lcom/android/server/enterprise/sso/EnterpriseIdentity;

    # invokes: Lcom/android/server/enterprise/sso/EnterpriseIdentity;->getSSOService()Lcom/android/server/enterprise/sso/GenericSSOService;
    invoke-static {v1}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->access$700(Lcom/android/server/enterprise/sso/EnterpriseIdentity;)Lcom/android/server/enterprise/sso/GenericSSOService;

    move-result-object v1

    new-instance v2, Landroid/app/enterprise/ContextInfo;

    move/from16 v0, p1

    invoke-static {v0, v7}, Landroid/os/UserHandle;->getUid(II)I

    move-result v3

    move/from16 v0, p1

    invoke-direct {v2, v3, v0}, Landroid/app/enterprise/ContextInfo;-><init>(II)V

    # getter for: Lcom/android/server/enterprise/sso/EnterpriseIdentity;->authenticationInfoManager:Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;
    invoke-static {}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->access$000()Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;->packageName:Ljava/lang/String;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/enterprise/sso/EnterpriseIdentity$1;->this$0:Lcom/android/server/enterprise/sso/EnterpriseIdentity;

    move/from16 v0, p1

    # invokes: Lcom/android/server/enterprise/sso/EnterpriseIdentity;->getEnterpriseIdAuthenticationConfig(I)Landroid/os/Bundle;
    invoke-static {v5, v0}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->access$600(Lcom/android/server/enterprise/sso/EnterpriseIdentity;I)Landroid/os/Bundle;

    move-result-object v5

    move/from16 v6, p1

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/enterprise/sso/GenericSSOService;->enrollSSOVendorInternal(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;I)I

    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/enterprise/sso/EnterpriseIdentity$1;->this$0:Lcom/android/server/enterprise/sso/EnterpriseIdentity;

    # getter for: Lcom/android/server/enterprise/sso/EnterpriseIdentity;->authenticationInfoManager:Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;
    invoke-static {}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->access$000()Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;

    move-result-object v2

    iget v2, v2, Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;->originUserID:I

    # invokes: Lcom/android/server/enterprise/sso/EnterpriseIdentity;->removeFileAndCacheEntry(I)V
    invoke-static {v1, v2}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->access$800(Lcom/android/server/enterprise/sso/EnterpriseIdentity;I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/enterprise/sso/EnterpriseIdentity$1;->this$0:Lcom/android/server/enterprise/sso/EnterpriseIdentity;

    # getter for: Lcom/android/server/enterprise/sso/EnterpriseIdentity;->authenticationInfoManager:Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;
    invoke-static {}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->access$000()Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;->packageName:Ljava/lang/String;

    # getter for: Lcom/android/server/enterprise/sso/EnterpriseIdentity;->authenticationInfoManager:Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;
    invoke-static {}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->access$000()Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;

    move-result-object v3

    iget v3, v3, Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;->originUserID:I

    # invokes: Lcom/android/server/enterprise/sso/EnterpriseIdentity;->isEnterpriseSSOEnrolled(Ljava/lang/String;I)Z
    invoke-static {v1, v2, v3}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->access$900(Lcom/android/server/enterprise/sso/EnterpriseIdentity;Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_8

    # getter for: Lcom/android/server/enterprise/sso/EnterpriseIdentity;->authenticationInfoManager:Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;
    invoke-static {}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->access$000()Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;->packageName:Ljava/lang/String;

    # getter for: Lcom/android/server/enterprise/sso/EnterpriseIdentity;->authenticationInfoManager:Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;
    invoke-static {}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->access$000()Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;

    move-result-object v2

    iget v2, v2, Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;->originUserID:I

    invoke-virtual {v13, v1, v2}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->clearUserData(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "EnterpriseIdentity"

    const-string v2, "Failed to clear authenticator app data"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/enterprise/sso/EnterpriseIdentity$1;->this$0:Lcom/android/server/enterprise/sso/EnterpriseIdentity;

    # getter for: Lcom/android/server/enterprise/sso/EnterpriseIdentity;->authenticationInfoManager:Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;
    invoke-static {}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->access$000()Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;->packageName:Ljava/lang/String;

    # getter for: Lcom/android/server/enterprise/sso/EnterpriseIdentity;->authenticationInfoManager:Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;
    invoke-static {}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->access$000()Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;

    move-result-object v3

    iget v3, v3, Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;->originUserID:I

    # invokes: Lcom/android/server/enterprise/sso/EnterpriseIdentity;->isGenericSSOEnrolled(Ljava/lang/String;I)Z
    invoke-static {v1, v2, v3}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->access$1000(Lcom/android/server/enterprise/sso/EnterpriseIdentity;Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v1, "EnterpriseIdentity"

    const-string v2, "Restoring authenticator config"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    # getter for: Lcom/android/server/enterprise/sso/EnterpriseIdentity;->authenticationInfoManager:Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;
    invoke-static {}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->access$000()Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;

    move-result-object v1

    iget v15, v1, Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;->originUserID:I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/enterprise/sso/EnterpriseIdentity$1;->this$0:Lcom/android/server/enterprise/sso/EnterpriseIdentity;

    # getter for: Lcom/android/server/enterprise/sso/EnterpriseIdentity;->authenticationInfoManager:Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;
    invoke-static {}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->access$000()Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;

    move-result-object v2

    iget v2, v2, Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;->originUserID:I

    # getter for: Lcom/android/server/enterprise/sso/EnterpriseIdentity;->authenticationInfoManager:Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;
    invoke-static {}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->access$000()Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;->packageName:Ljava/lang/String;

    # invokes: Lcom/android/server/enterprise/sso/EnterpriseIdentity;->bindToEnterpriseIdAuthenticator(ILjava/lang/String;)Landroid/app/enterprise/sso/GenericSSOSupportSolution;
    invoke-static {v1, v2, v3}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->access$1100(Lcom/android/server/enterprise/sso/EnterpriseIdentity;ILjava/lang/String;)Landroid/app/enterprise/sso/GenericSSOSupportSolution;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/enterprise/sso/EnterpriseIdentity$1;->this$0:Lcom/android/server/enterprise/sso/EnterpriseIdentity;

    # invokes: Lcom/android/server/enterprise/sso/EnterpriseIdentity;->getSSOService()Lcom/android/server/enterprise/sso/GenericSSOService;
    invoke-static {v1}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->access$700(Lcom/android/server/enterprise/sso/EnterpriseIdentity;)Lcom/android/server/enterprise/sso/GenericSSOService;

    move-result-object v1

    invoke-virtual {v1, v15}, Lcom/android/server/enterprise/sso/GenericSSOService;->getConfigDataForSSOVendorInternal(I)Landroid/os/Bundle;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v8, v0}, Landroid/app/enterprise/sso/GenericSSOSupportSolution;->pushAuthenticatorConfig(Landroid/os/Bundle;)I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/enterprise/sso/EnterpriseIdentity$1;->this$0:Lcom/android/server/enterprise/sso/EnterpriseIdentity;

    # getter for: Lcom/android/server/enterprise/sso/EnterpriseIdentity;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->access$100(Lcom/android/server/enterprise/sso/EnterpriseIdentity;)Landroid/content/Context;

    move-result-object v2

    # getter for: Lcom/android/server/enterprise/sso/EnterpriseIdentity;->mEnterpriseIDServiceInterfaceMap:Ljava/util/Map;
    invoke-static {}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->access$1200()Ljava/util/Map;

    move-result-object v1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ServiceConnection;

    invoke-virtual {v2, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    # getter for: Lcom/android/server/enterprise/sso/EnterpriseIdentity;->mEnterpriseIDServiceInterfaceMap:Ljava/util/Map;
    invoke-static {}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->access$1200()Ljava/util/Map;

    move-result-object v1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    const/4 v1, 0x0

    # setter for: Lcom/android/server/enterprise/sso/EnterpriseIdentity;->authenticationInfoManager:Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;
    invoke-static {v1}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->access$002(Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;)Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
