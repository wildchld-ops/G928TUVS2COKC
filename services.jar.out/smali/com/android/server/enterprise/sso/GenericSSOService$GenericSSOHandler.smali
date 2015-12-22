.class final Lcom/android/server/enterprise/sso/GenericSSOService$GenericSSOHandler;
.super Landroid/os/Handler;
.source "GenericSSOService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/sso/GenericSSOService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "GenericSSOHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/sso/GenericSSOService;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/sso/GenericSSOService;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/sso/GenericSSOService$GenericSSOHandler;->this$0:Lcom/android/server/enterprise/sso/GenericSSOService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 36

    if-eqz p1, :cond_0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v33, v0

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v13

    const/4 v11, 0x0

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    :try_start_0
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v0, v2

    check-cast v0, Landroid/app/enterprise/sso/IGenericSSOCallback;

    move-object v11, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/sso/GenericSSOService$GenericSSOHandler;->this$0:Lcom/android/server/enterprise/sso/GenericSSOService;

    move/from16 v0, v33

    # invokes: Lcom/android/server/enterprise/sso/GenericSSOService;->getTokenFromConfigData(ILandroid/os/Bundle;)Landroid/app/enterprise/sso/TokenInfo;
    invoke-static {v2, v0, v13}, Lcom/android/server/enterprise/sso/GenericSSOService;->access$000(Lcom/android/server/enterprise/sso/GenericSSOService;ILandroid/os/Bundle;)Landroid/app/enterprise/sso/TokenInfo;

    move-result-object v30

    if-eqz v11, :cond_0

    if-eqz v30, :cond_1

    move-object/from16 v0, v30

    invoke-interface {v11, v0}, Landroid/app/enterprise/sso/IGenericSSOCallback;->tokenInfoSuccess(Landroid/app/enterprise/sso/TokenInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v16

    const-string v2, "GenericSSOService"

    const-string v4, "In handleMessage: RemoteException"

    move-object/from16 v0, v16

    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_1
    const/4 v2, -0x1

    :try_start_1
    invoke-interface {v11, v2}, Landroid/app/enterprise/sso/IGenericSSOCallback;->onFail(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :pswitch_2
    :try_start_2
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v0, v2

    check-cast v0, Landroid/app/enterprise/sso/IGenericSSOCallback;

    move-object v11, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/sso/GenericSSOService$GenericSSOHandler;->this$0:Lcom/android/server/enterprise/sso/GenericSSOService;

    move/from16 v0, v33

    invoke-virtual {v2, v0, v13}, Lcom/android/server/enterprise/sso/GenericSSOService;->acquireUserInfo(ILandroid/os/Bundle;)Landroid/app/enterprise/sso/UserInfo;

    move-result-object v34

    if-eqz v11, :cond_0

    if-eqz v34, :cond_2

    move-object/from16 v0, v34

    invoke-interface {v11, v0}, Landroid/app/enterprise/sso/IGenericSSOCallback;->userInfoSuccess(Landroid/app/enterprise/sso/UserInfo;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v16

    const-string v2, "GenericSSOService"

    const-string v4, "In handleMessage: RemoteException"

    move-object/from16 v0, v16

    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_2
    const/4 v2, -0x1

    :try_start_3
    invoke-interface {v11, v2}, Landroid/app/enterprise/sso/IGenericSSOCallback;->onFail(I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :pswitch_3
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/app/enterprise/sso/GenericSSOConfig;

    move-object/from16 v0, p1

    iget v8, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v7, v0, Landroid/os/Message;->arg2:I

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v22

    const-string v2, "application_policy"

    invoke-static {v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/enterprise/application/ApplicationPolicy;

    if-eqz v10, :cond_3

    invoke-virtual {v12}, Landroid/app/enterprise/sso/GenericSSOConfig;->getAuthenticatorPkgName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2, v7}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isApplicationInstalled(Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "GenericSSOService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "In handleMessage: Installing application in container "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    # getter for: Lcom/android/server/enterprise/sso/GenericSSOService;->mEnterpriseId:Lcom/android/server/enterprise/sso/EnterpriseIdentity;
    invoke-static {}, Lcom/android/server/enterprise/sso/GenericSSOService;->access$100()Lcom/android/server/enterprise/sso/EnterpriseIdentity;

    move-result-object v2

    invoke-virtual {v12}, Landroid/app/enterprise/sso/GenericSSOConfig;->getAuthenticatorPkgName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4, v7}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->installPackageInContainer(Ljava/lang/String;I)I

    :cond_3
    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/16 v26, -0x1

    const/16 v21, 0x0

    new-instance v3, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v3, v8, v7}, Landroid/app/enterprise/ContextInfo;-><init>(II)V

    invoke-virtual {v12}, Landroid/app/enterprise/sso/GenericSSOConfig;->getSSOConfigFile()[B

    move-result-object v2

    if-eqz v2, :cond_5

    const-string v2, "GenericSSOService"

    const-string v4, "In setGenericSSOConfig: calling configureSSOByFile"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/sso/GenericSSOService$GenericSSOHandler;->this$0:Lcom/android/server/enterprise/sso/GenericSSOService;

    invoke-virtual {v12}, Landroid/app/enterprise/sso/GenericSSOConfig;->getSSOConfigFile()[B

    move-result-object v4

    # invokes: Lcom/android/server/enterprise/sso/GenericSSOService;->configureSSOByFile2(Landroid/app/enterprise/ContextInfo;[BI)I
    invoke-static {v2, v3, v4, v7}, Lcom/android/server/enterprise/sso/GenericSSOService;->access$200(Lcom/android/server/enterprise/sso/GenericSSOService;Landroid/app/enterprise/ContextInfo;[BI)I

    move-result v26

    const/16 v21, 0x1

    :goto_1
    if-gez v26, :cond_4

    const-string v2, "GenericSSOService"

    const-string v4, "In setGenericSSOConfig: Enrollment failed."

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    if-nez v21, :cond_0

    if-nez v26, :cond_0

    invoke-virtual {v12}, Landroid/app/enterprise/sso/GenericSSOConfig;->getWhiteListPackages()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v2, "GenericSSOService"

    const-string v4, "In setGenericSSOConfig: getWhiteListPackages is not null"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/sso/GenericSSOService$GenericSSOHandler;->this$0:Lcom/android/server/enterprise/sso/GenericSSOService;

    invoke-virtual {v12}, Landroid/app/enterprise/sso/GenericSSOConfig;->getWhiteListPackages()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v7}, Lcom/android/server/enterprise/sso/GenericSSOService;->addWhiteListPackages2(Landroid/app/enterprise/ContextInfo;Ljava/util/List;I)I

    move-result v26

    if-gez v26, :cond_0

    const-string v2, "GenericSSOService"

    const-string v4, "In setGenericSSOConfig: Add whitelist failed. Unenrolling."

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/sso/GenericSSOService$GenericSSOHandler;->this$0:Lcom/android/server/enterprise/sso/GenericSSOService;

    invoke-virtual {v12}, Landroid/app/enterprise/sso/GenericSSOConfig;->getAuthenticatorPkgName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v7}, Lcom/android/server/enterprise/sso/GenericSSOService;->unenrollSSOVendor2(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;I)I

    goto/16 :goto_0

    :cond_5
    const-string v2, "GenericSSOService"

    const-string v4, "In setGenericSSOConfig: calling enrollSSOVendor"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/sso/GenericSSOService$GenericSSOHandler;->this$0:Lcom/android/server/enterprise/sso/GenericSSOService;

    invoke-virtual {v12}, Landroid/app/enterprise/sso/GenericSSOConfig;->getAuthenticatorPkgName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12}, Landroid/app/enterprise/sso/GenericSSOConfig;->getAuthenticatorPkgSignature()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v12}, Landroid/app/enterprise/sso/GenericSSOConfig;->getAuthenticatorConfig()Landroid/os/Bundle;

    move-result-object v6

    # invokes: Lcom/android/server/enterprise/sso/GenericSSOService;->enrollSSOVendor2(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;I)I
    invoke-static/range {v2 .. v7}, Lcom/android/server/enterprise/sso/GenericSSOService;->access$300(Lcom/android/server/enterprise/sso/GenericSSOService;Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;I)I

    move-result v26

    goto :goto_1

    :pswitch_4
    const/16 v18, 0x0

    :try_start_4
    new-instance v35, Ljava/util/ArrayList;

    invoke-direct/range {v35 .. v35}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/sso/GenericSSOService$GenericSSOHandler;->this$0:Lcom/android/server/enterprise/sso/GenericSSOService;

    # getter for: Lcom/android/server/enterprise/sso/GenericSSOService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/enterprise/sso/GenericSSOService;->access$400(Lcom/android/server/enterprise/sso/GenericSSOService;)Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v4, "user"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Landroid/os/UserManager;

    if-eqz v31, :cond_6

    const/4 v2, 0x1

    move-object/from16 v0, v31

    invoke-virtual {v0, v2}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v35

    :cond_6
    if-eqz v35, :cond_9

    invoke-interface/range {v35 .. v35}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_9

    invoke-interface/range {v35 .. v35}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :cond_7
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Landroid/content/pm/UserInfo;

    move-object/from16 v0, v34

    iget v15, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v0, v33

    if-eq v15, v0, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/sso/GenericSSOService$GenericSSOHandler;->this$0:Lcom/android/server/enterprise/sso/GenericSSOService;

    # invokes: Lcom/android/server/enterprise/sso/GenericSSOService;->getSSOConfigForUserId(I)Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;
    invoke-static {v2, v15}, Lcom/android/server/enterprise/sso/GenericSSOService;->access$500(Lcom/android/server/enterprise/sso/GenericSSOService;I)Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;

    move-result-object v14

    const/16 v17, 0x0

    const/16 v24, 0x0

    if-eqz v14, :cond_7

    # invokes: Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;->getEnrolledSSOVendor()Lorg/w3c/dom/Node;
    invoke-static {v14}, Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;->access$600(Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;)Lorg/w3c/dom/Node;

    move-result-object v17

    if-eqz v17, :cond_7

    sget-boolean v2, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v2, :cond_8

    const-string v2, "GenericSSOService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onAdminRemoved: Enrolled vendor exists"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    const/16 v18, 0x1

    :cond_9
    if-nez v18, :cond_0

    const/16 v19, 0x0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v28

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/sso/GenericSSOService$GenericSSOHandler;->this$0:Lcom/android/server/enterprise/sso/GenericSSOService;

    # invokes: Lcom/android/server/enterprise/sso/GenericSSOService;->initKeyStore()V
    invoke-static {v2}, Lcom/android/server/enterprise/sso/GenericSSOService;->access$700(Lcom/android/server/enterprise/sso/GenericSSOService;)V

    # getter for: Lcom/android/server/enterprise/sso/GenericSSOService;->mKeystore:Ljava/security/KeyStore;
    invoke-static {}, Lcom/android/server/enterprise/sso/GenericSSOService;->access$800()Ljava/security/KeyStore;

    move-result-object v2

    invoke-virtual {v2}, Ljava/security/KeyStore;->getType()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "timakeystore"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    const-string v9, "GenericSSOService"

    # getter for: Lcom/android/server/enterprise/sso/GenericSSOService;->mKeystore:Ljava/security/KeyStore;
    invoke-static {}, Lcom/android/server/enterprise/sso/GenericSSOService;->access$800()Ljava/security/KeyStore;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/security/KeyStore;->containsAlias(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    # getter for: Lcom/android/server/enterprise/sso/GenericSSOService;->mKeystore:Ljava/security/KeyStore;
    invoke-static {}, Lcom/android/server/enterprise/sso/GenericSSOService;->access$800()Ljava/security/KeyStore;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/security/KeyStore;->deleteEntry(Ljava/lang/String;)V

    sget-boolean v2, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v2, :cond_a

    const-string v2, "GenericSSOService"

    const-string/jumbo v4, "onAdminRemoved: SecretKey is deleted from TIMAKeystore"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    :goto_2
    invoke-static/range {v28 .. v29}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/security/KeyStoreException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6

    goto/16 :goto_0

    :catch_2
    move-exception v16

    const-string v2, "GenericSSOService"

    const-string v4, "In onAdminRemoved: SecurityException"

    move-object/from16 v0, v16

    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    :cond_b
    :try_start_5
    # getter for: Lcom/android/server/enterprise/sso/GenericSSOService;->mKeystore:Ljava/security/KeyStore;
    invoke-static {}, Lcom/android/server/enterprise/sso/GenericSSOService;->access$800()Ljava/security/KeyStore;

    move-result-object v2

    invoke-virtual {v2}, Ljava/security/KeyStore;->getType()Ljava/lang/String;

    move-result-object v2

    const-string v4, "androidkeystore"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    const-string v9, "KnoxSSOKey"

    # getter for: Lcom/android/server/enterprise/sso/GenericSSOService;->mKeystore:Ljava/security/KeyStore;
    invoke-static {}, Lcom/android/server/enterprise/sso/GenericSSOService;->access$800()Ljava/security/KeyStore;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/security/KeyStore;->containsAlias(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    # getter for: Lcom/android/server/enterprise/sso/GenericSSOService;->mKeystore:Ljava/security/KeyStore;
    invoke-static {}, Lcom/android/server/enterprise/sso/GenericSSOService;->access$800()Ljava/security/KeyStore;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/security/KeyStore;->deleteEntry(Ljava/lang/String;)V

    new-instance v19, Ljava/io/File;

    const-string v2, "/data/system/KnoxSSO_SCKF"

    move-object/from16 v0, v19

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->delete()Z

    sget-boolean v2, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v2, :cond_a

    const-string v2, "GenericSSOService"

    const-string/jumbo v4, "onAdminRemoved: KeyPair is deleted from AndroidKeyStore, and SecretKey file is deleted"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/security/KeyStoreException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6

    goto :goto_2

    :catch_3
    move-exception v16

    const-string v2, "GenericSSOService"

    const-string v4, "In onAdminRemoved: NoSuchAlgorithmException"

    move-object/from16 v0, v16

    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    :catch_4
    move-exception v16

    const-string v2, "GenericSSOService"

    const-string v4, "In onAdminRemoved: KeyStoreException"

    move-object/from16 v0, v16

    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    :catch_5
    move-exception v16

    const-string v2, "GenericSSOService"

    const-string v4, "In onAdminRemoved: IOException"

    move-object/from16 v0, v16

    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    :catch_6
    move-exception v16

    const-string v2, "GenericSSOService"

    const-string v4, "In onAdminRemoved: Exception"

    move-object/from16 v0, v16

    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    :pswitch_5
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v27, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v32, v0

    check-cast v32, Ljava/lang/String;

    # getter for: Lcom/android/server/enterprise/sso/GenericSSOService;->mEnterpriseId:Lcom/android/server/enterprise/sso/EnterpriseIdentity;
    invoke-static {}, Lcom/android/server/enterprise/sso/GenericSSOService;->access$100()Lcom/android/server/enterprise/sso/EnterpriseIdentity;

    move-result-object v2

    move/from16 v0, v33

    invoke-virtual {v2, v0}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->getEnterpriseIdAuthenticator(I)Ljava/lang/String;

    move-result-object v25

    sget-boolean v2, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v2, :cond_c

    const-string v2, "GenericSSOService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "In setunenroll:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v32

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    if-eqz v25, :cond_0

    move-object/from16 v0, v25

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/sso/GenericSSOService$GenericSSOHandler;->this$0:Lcom/android/server/enterprise/sso/GenericSSOService;

    # getter for: Lcom/android/server/enterprise/sso/GenericSSOService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/enterprise/sso/GenericSSOService;->access$400(Lcom/android/server/enterprise/sso/GenericSSOService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/enterprise/sso/GenericSSOService$GenericSSOHandler;->this$0:Lcom/android/server/enterprise/sso/GenericSSOService;

    # getter for: Lcom/android/server/enterprise/sso/GenericSSOService;->UNENROLL_SSO_AD_AUTHENTICATOR:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/server/enterprise/sso/GenericSSOService;->access$900(Lcom/android/server/enterprise/sso/GenericSSOService;)Ljava/lang/String;

    move-result-object v4

    move/from16 v0, v27

    move/from16 v1, v33

    invoke-static {v2, v4, v0, v1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
