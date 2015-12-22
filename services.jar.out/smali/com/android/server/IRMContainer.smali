.class public Lcom/android/server/IRMContainer;
.super Lcom/android/server/SEAMSContainer;
.source "IRMContainer.java"


# static fields
.field private static final IRMCONTAINER_SEANDROID_FOLDER:Ljava/lang/String; = "/data/security/irm"

.field private static final IRMCONTAINER_TYPE:I = 0x4

.field private static final IRM_CATEGORY:I = 0x2be

.field private static IRM_MAC_PERM:Ljava/lang/String; = null

.field private static final IRM_PLATFORM_DATATYPE:Ljava/lang/String; = "platform_app_data_file"

.field private static final IRM_PLATFORM_DOMAIN:Ljava/lang/String; = "irm_platform_app"

.field private static final IRM_PLATFORM_SEINFO:Ljava/lang/String; = "irm_platform"

.field private static IRM_SEAPP_CONTEXTS:Ljava/lang/String; = null

.field private static final IRM_UNTRUST_DATATYPE:Ljava/lang/String; = "app_data_file"

.field private static final IRM_UNTRUST_DOMAIN:Ljava/lang/String; = "irm_app"

.field private static final IRM_UNTRUST_SEINFO:Ljava/lang/String; = "irm"

.field private static final REMOVE_IRMCONTAINER_TYPE:I = 0x9

.field private static final TAG:Ljava/lang/String; = "IRMContainer"

.field private static final USER_NORMAL_APP:Ljava/lang/String; = "_app"

.field private static mSKLog:Lcom/android/server/SKLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "/data/security/irm/mac_permissions.xml"

    sput-object v0, Lcom/android/server/IRMContainer;->IRM_MAC_PERM:Ljava/lang/String;

    const-string v0, "/data/security/irm/seapp_contexts"

    sput-object v0, Lcom/android/server/IRMContainer;->IRM_SEAPP_CONTEXTS:Ljava/lang/String;

    invoke-static {}, Lcom/android/server/SKLogger;->getLogger()Lcom/android/server/SKLogger;

    move-result-object v0

    sput-object v0, Lcom/android/server/IRMContainer;->mSKLog:Lcom/android/server/SKLogger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/server/SEAMSContainer;-><init>()V

    sput-object p1, Lcom/android/server/IRMContainer;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "package"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageManagerService;

    iput-object v0, p0, Lcom/android/server/IRMContainer;->mPms:Lcom/android/server/pm/PackageManagerService;

    return-void
.end method


# virtual methods
.method public addAppToContainer(Ljava/lang/String;[Ljava/lang/String;II)I
    .locals 29

    const/16 v19, 0x0

    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v28

    const/4 v4, 0x7

    move/from16 v0, p4

    if-eq v0, v4, :cond_0

    const/16 v4, 0x8

    move/from16 v0, p4

    if-eq v0, v4, :cond_0

    sget-object v4, Lcom/android/server/IRMContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v5, "IRMContainer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Apptype not IRM_APPTYPE "

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p4

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, -0x3

    :goto_0
    return v4

    :cond_0
    invoke-static/range {p1 .. p1}, Lcom/android/server/IRMContainer;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    sget-object v4, Lcom/android/server/IRMContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v5, "IRMContainer"

    const-string v6, " addAppToContainer failed, no packageName found"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, -0x1

    goto :goto_0

    :cond_1
    const/16 v4, 0x2be

    move/from16 v0, p3

    if-eq v0, v4, :cond_2

    sget-object v4, Lcom/android/server/IRMContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v5, "IRMContainer"

    const-string v6, " invalid container ID"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, -0xc

    goto :goto_0

    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/IRMContainer;->getMDMID()Lcom/android/server/pm/SELinuxMMAC$MDMID;

    move-result-object v23

    if-nez v23, :cond_3

    sget-object v4, Lcom/android/server/IRMContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v5, "IRMContainer"

    const-string/jumbo v6, "irmMDMID is null, Returning null"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, -0x2

    goto :goto_0

    :cond_3
    move-object/from16 v0, v23

    iget-object v4, v0, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    move-object/from16 v0, v23

    iget-object v5, v0, Lcom/android/server/pm/SELinuxMMAC$MDMID;->certs:Ljava/lang/String;

    move/from16 v0, p3

    invoke-static {v4, v5, v0}, Lcom/android/server/pm/SELinuxMMAC;->isContainerCreatedbyCaller(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_4

    sget-object v4, Lcom/android/server/IRMContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v5, "IRMContainer"

    const-string v6, "Given Container ID not created by Caller - Returning Refused"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, -0x2

    goto :goto_0

    :cond_4
    const/16 v20, 0x0

    const/4 v12, 0x0

    new-instance v26, Ljava/util/ArrayList;

    invoke-direct/range {v26 .. v26}, Ljava/util/ArrayList;-><init>()V

    invoke-static/range {p1 .. p1}, Lcom/android/server/IRMContainer;->getSignatureFromPackage(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v26

    if-nez p2, :cond_5

    sget-object v4, Lcom/android/server/IRMContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v5, "IRMContainer"

    const-string v6, " Input Certificate is null"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, -0xe

    goto :goto_0

    :cond_5
    if-nez v26, :cond_7

    const/4 v4, 0x0

    aget-object v12, p2, v4

    const/16 v19, 0x1

    :cond_6
    new-instance v24, Ljava/io/File;

    sget-object v4, Lcom/android/server/IRMContainer;->IRM_MAC_PERM:Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v25, Ljava/io/File;

    sget-object v4, Lcom/android/server/IRMContainer;->IRM_SEAPP_CONTEXTS:Ljava/lang/String;

    move-object/from16 v0, v25

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v21, 0x0

    :try_start_0
    invoke-static/range {p1 .. p2}, Lcom/android/server/pm/SELinuxMMAC;->getApplicationInfo(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;

    move-result-object v18

    if-nez v18, :cond_9

    sget-object v4, Lcom/android/server/IRMContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v5, "IRMContainer"

    const-string v6, "addAppToContainer, Application Info is null"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v4, -0x1

    goto/16 :goto_0

    :cond_7
    const/4 v4, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v4, p2, v4

    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    const/16 v20, 0x1

    :cond_8
    if-nez v20, :cond_6

    sget-object v4, Lcom/android/server/IRMContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v5, "IRMContainer"

    const-string v6, "addAppToContainer, input certificate does not match the certificate extracted from package"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, -0xd

    goto/16 :goto_0

    :cond_9
    :try_start_1
    move-object/from16 v0, v18

    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    if-eqz v4, :cond_f

    sget-object v4, Lcom/android/server/IRMContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v5, "IRMContainer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "addAppToContainer, Got Application Info, seinfo is not null appInfo.category = "

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v18

    iget v11, v0, Landroid/content/pm/ApplicationInfo;->category:I

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v18

    iget v4, v0, Landroid/content/pm/ApplicationInfo;->category:I

    const/16 v5, 0x2be

    if-ne v4, v5, :cond_a

    sget-object v4, Lcom/android/server/IRMContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v5, "IRMContainer"

    const-string v6, "addAppToContainer, return ERROR_ALREADY_CONTAINER_APP"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, -0x9

    goto/16 :goto_0

    :cond_a
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v27

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "*"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v4, 0x7

    move/from16 v0, p4

    if-ne v0, v4, :cond_b

    const-string/jumbo v8, "irm_platform"

    const-string/jumbo v9, "irm_platform_app"

    const-string/jumbo v10, "platform_app_data_file"

    :goto_1
    invoke-virtual/range {v25 .. v25}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    const-string v6, "_app"

    const/16 v11, 0x2be

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v11}, Lcom/android/server/IRMContainer;->addSEAppContext(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v4

    if-gez v4, :cond_c

    sget-object v4, Lcom/android/server/IRMContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v5, "IRMContainer"

    const-string v6, "addAppToContainer: addSEAppContext failed"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, -0x1

    goto/16 :goto_0

    :cond_b
    const-string/jumbo v8, "irm"

    const-string/jumbo v9, "irm_app"

    const-string v10, "app_data_file"

    goto :goto_1

    :cond_c
    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    const/16 v17, 0x0

    move-object/from16 v11, v24

    move-object/from16 v13, p1

    move-object v14, v8

    move/from16 v16, p4

    invoke-static/range {v11 .. v17}, Lcom/android/server/IRMContainer;->addEntryToMac(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)I

    move-result v4

    if-eqz v4, :cond_d

    sget-object v4, Lcom/android/server/IRMContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v5, "IRMContainer"

    const-string v6, "addAppToContainer: addEntryToMac failed"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, -0x1

    goto/16 :goto_0

    :cond_d
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v28

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/IRMContainer;->loadContainerSetting(Ljava/lang/String;IZ)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_e

    sget-object v4, Lcom/android/server/IRMContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v5, "IRMContainer"

    const-string/jumbo v6, "loadContainerSetting,POLICY_FAILED is returned."

    invoke-virtual {v4, v5, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    move/from16 v2, p4

    invoke-static {v0, v12, v1, v4, v2}, Lcom/android/server/IRMContainer;->removeEntryFromMac(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    const/4 v4, -0x1

    goto/16 :goto_0

    :cond_e
    const-string/jumbo v4, "selinux.reload_policy"

    const-string v5, "1"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    goto/16 :goto_0

    :cond_f
    sget-object v4, Lcom/android/server/IRMContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v5, "IRMContainer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "addAppToContainer, "

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v11, " bbcseinfo is null"

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v4, -0x1

    goto/16 :goto_0

    :catch_0
    move-exception v22

    sget-object v4, Lcom/android/server/IRMContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v5, "IRMContainer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "leave addAppToContainer "

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, -0x1

    goto/16 :goto_0
.end method

.method public createSEContainer(II)I
    .locals 14

    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v13

    :try_start_0
    new-instance v11, Ljava/io/File;

    const-string v1, "/data/security/irm"

    invoke-direct {v11, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v11}, Ljava/io/File;->mkdir()Z

    const/4 v1, 0x1

    const/4 v2, 0x1

    invoke-virtual {v11, v1, v2}, Ljava/io/File;->setReadable(ZZ)Z

    const/4 v1, 0x1

    const/4 v2, 0x1

    invoke-virtual {v11, v1, v2}, Ljava/io/File;->setWritable(ZZ)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/android/server/IRMContainer;->IRM_MAC_PERM:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/IRMContainer;->getMDMID()Lcom/android/server/pm/SELinuxMMAC$MDMID;

    move-result-object v12

    if-nez v12, :cond_2

    sget-object v1, Lcom/android/server/IRMContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v2, "IRMContainer"

    const-string v3, "createSEContainer, irmMDMID is null"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v9, -0x1

    :cond_1
    :goto_0
    return v9

    :catch_0
    move-exception v10

    sget-object v1, Lcom/android/server/IRMContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v2, "IRMContainer"

    const-string v3, "Issue with irmContainerDir directory"

    invoke-virtual {v1, v2, v3, v10}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v9, -0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    new-array v8, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, v12, Lcom/android/server/pm/SELinuxMMAC$MDMID;->certs:Ljava/lang/String;

    aput-object v2, v8, v1

    iget-object v1, v12, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    invoke-static {v1, v8}, Lcom/android/server/pm/SELinuxMMAC;->getApplicationInfo(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    iget v1, v7, Landroid/content/pm/ApplicationInfo;->category:I

    if-eqz v1, :cond_3

    sget-object v1, Lcom/android/server/IRMContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v2, "IRMContainer"

    const-string v3, "createIRMContainer, The Agent is a Container App"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v9, -0x9

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/server/IRMContainer;->mPms:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v12, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    iget-object v3, v12, Lcom/android/server/pm/SELinuxMMAC$MDMID;->certs:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/android/server/pm/PackageManagerService;->createContainer(Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    const/4 v1, -0x7

    if-ne v9, v1, :cond_4

    sget-object v1, Lcom/android/server/IRMContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v2, "IRMContainer"

    const-string v3, "IRM Container Count Overflow"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v9, -0x7

    goto :goto_0

    :cond_4
    const/16 v1, 0x2be

    if-ne v9, v1, :cond_1

    iget-object v1, v12, Lcom/android/server/pm/SELinuxMMAC$MDMID;->certs:Ljava/lang/String;

    iget-object v2, v12, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    iget-object v3, v7, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x7

    const/4 v6, 0x1

    invoke-static/range {v0 .. v6}, Lcom/android/server/IRMContainer;->addEntryToMac(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)I

    move-result v1

    if-eqz v1, :cond_5

    sget-object v1, Lcom/android/server/IRMContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v2, "IRMContainer"

    const-string v3, "createSEContainer: addEntryToMac failed"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/IRMContainer;->mPms:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v12, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    iget-object v3, v12, Lcom/android/server/pm/SELinuxMMAC$MDMID;->certs:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v9}, Lcom/android/server/pm/PackageManagerService;->removeContainerID(Ljava/lang/String;Ljava/lang/String;I)I

    const/4 v9, -0x1

    goto :goto_0

    :cond_5
    iget-object v1, v12, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v13, v2}, Lcom/android/server/IRMContainer;->loadContainerSetting(Ljava/lang/String;IZ)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    sget-object v1, Lcom/android/server/IRMContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v2, "IRMContainer"

    const-string v3, "createSEContainer: loadcontainersetting failed"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v12, Lcom/android/server/pm/SELinuxMMAC$MDMID;->certs:Ljava/lang/String;

    iget-object v2, v12, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x9

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/IRMContainer;->removeEntryFromMac(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    iget-object v1, p0, Lcom/android/server/IRMContainer;->mPms:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v12, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    iget-object v3, v12, Lcom/android/server/pm/SELinuxMMAC$MDMID;->certs:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v9}, Lcom/android/server/pm/PackageManagerService;->removeContainerID(Ljava/lang/String;Ljava/lang/String;I)I

    const/4 v9, -0x1

    goto/16 :goto_0
.end method

.method public getPackageNamesFromSEContainer(II)[Ljava/lang/String;
    .locals 5

    const/4 v1, 0x0

    const/16 v2, 0x2be

    if-ne p1, v2, :cond_2

    invoke-virtual {p0}, Lcom/android/server/IRMContainer;->getMDMID()Lcom/android/server/pm/SELinuxMMAC$MDMID;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v2, Lcom/android/server/IRMContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v3, "IRMContainer"

    const-string/jumbo v4, "irmMDMID is null, Returning null"

    invoke-virtual {v2, v3, v4}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v1

    :cond_0
    iget-object v2, v0, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/server/pm/SELinuxMMAC$MDMID;->certs:Ljava/lang/String;

    invoke-static {v2, v3, p1}, Lcom/android/server/pm/SELinuxMMAC;->isContainerCreatedbyCaller(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Lcom/android/server/IRMContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v3, "IRMContainer"

    const-string v4, "Given Container ID not created by Caller - Returning Refused"

    invoke-virtual {v2, v3, v4}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x7

    if-ne p2, v2, :cond_2

    iget-object v1, p0, Lcom/android/server/IRMContainer;->mPms:Lcom/android/server/pm/PackageManagerService;

    const/4 v2, 0x4

    invoke-virtual {v1, p1, v2, p2}, Lcom/android/server/pm/PackageManagerService;->getPackageNamesFromSEContainerID(III)[Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    sget-object v2, Lcom/android/server/IRMContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v3, "IRMContainer"

    const-string v4, "Given Container ID is not my Container ID, returning null"

    invoke-virtual {v2, v3, v4}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected getSEAppContextLine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_0

    const-string p1, "_app"

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "user="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " seinfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " domain="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSEContainerIDs()Ljava/util/HashSet;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/server/IRMContainer;->getMDMID()Lcom/android/server/pm/SELinuxMMAC$MDMID;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v1, Lcom/android/server/IRMContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v2, "IRMContainer"

    const-string/jumbo v3, "getSEContainerIDs, irmMDMID is null, Returning null"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/android/server/IRMContainer;->mPms:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v0, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/server/pm/SELinuxMMAC$MDMID;->certs:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/android/server/pm/PackageManagerService;->getMyContainerIDs(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashSet;

    move-result-object v1

    goto :goto_0
.end method

.method public getSEContainerIDsFromPackageName(Ljava/lang/String;I)[I
    .locals 9

    const/4 v7, 0x0

    invoke-static {p1}, Lcom/android/server/IRMContainer;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/server/IRMContainer;->getMDMID()Lcom/android/server/pm/SELinuxMMAC$MDMID;

    move-result-object v6

    if-nez v6, :cond_0

    sget-object v0, Lcom/android/server/IRMContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v1, "IRMContainer"

    const-string/jumbo v2, "irmMDMID is null, Returning null"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v7

    :cond_0
    const/4 v0, 0x7

    if-ne p2, v0, :cond_1

    iget-object v0, p0, Lcom/android/server/IRMContainer;->mPms:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v6, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    iget-object v2, v6, Lcom/android/server/pm/SELinuxMMAC$MDMID;->certs:Ljava/lang/String;

    const/4 v4, 0x4

    move-object v3, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/PackageManagerService;->getSEContainerIDFromPackageName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)I

    move-result v8

    const/4 v0, 0x1

    new-array v7, v0, [I

    const/4 v0, 0x0

    aput v8, v7, v0

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/android/server/IRMContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v1, "IRMContainer"

    const-string/jumbo v2, "getSEContainerIDsFromPackageName, null is returned"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getSignatureFromMac(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v1, 0x0

    new-instance v0, Ljava/io/File;

    sget-object v2, Lcom/android/server/IRMContainer;->IRM_MAC_PERM:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p1}, Lcom/android/server/IRMContainer;->getSignatureEntryFromMac(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public removeAppFromContainer(Ljava/lang/String;[Ljava/lang/String;II)I
    .locals 32

    const/16 v22, 0x0

    const/4 v4, 0x7

    move/from16 v0, p4

    if-eq v0, v4, :cond_0

    const/16 v4, 0x8

    move/from16 v0, p4

    if-eq v0, v4, :cond_0

    sget-object v4, Lcom/android/server/IRMContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v5, "IRMContainer"

    const-string v6, "Apptype not IRM_APPTYPE"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, -0x3

    :goto_0
    return v4

    :cond_0
    invoke-static/range {p1 .. p1}, Lcom/android/server/IRMContainer;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    sget-object v4, Lcom/android/server/IRMContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v5, "IRMContainer"

    const-string v6, " removeAppFromContainer failed, no packageName found"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, -0x1

    goto :goto_0

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/IRMContainer;->getMDMID()Lcom/android/server/pm/SELinuxMMAC$MDMID;

    move-result-object v25

    if-nez v25, :cond_2

    sget-object v4, Lcom/android/server/IRMContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v5, "IRMContainer"

    const-string/jumbo v6, "irmMDMID is null, Returning null"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, -0x2

    goto :goto_0

    :cond_2
    move-object/from16 v0, v25

    iget-object v4, v0, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    move-object/from16 v0, v25

    iget-object v5, v0, Lcom/android/server/pm/SELinuxMMAC$MDMID;->certs:Ljava/lang/String;

    move/from16 v0, p3

    invoke-static {v4, v5, v0}, Lcom/android/server/pm/SELinuxMMAC;->isContainerCreatedbyCaller(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_3

    sget-object v4, Lcom/android/server/IRMContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v5, "IRMContainer"

    const-string v6, "Given Container ID not created by Caller - Returning Refused - Container Allow Package Case"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, -0x2

    goto :goto_0

    :cond_3
    const/16 v23, 0x0

    const/4 v12, 0x0

    new-instance v29, Ljava/util/ArrayList;

    invoke-direct/range {v29 .. v29}, Ljava/util/ArrayList;-><init>()V

    invoke-static/range {p1 .. p1}, Lcom/android/server/IRMContainer;->getSignatureFromPackage(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v29

    if-nez p2, :cond_4

    sget-object v4, Lcom/android/server/IRMContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v5, "IRMContainer"

    const-string v6, " Input Certificate is null"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, -0xe

    goto :goto_0

    :cond_4
    if-nez v29, :cond_6

    const/4 v4, 0x0

    aget-object v12, p2, v4

    const/16 v22, 0x1

    :cond_5
    new-instance v26, Ljava/io/File;

    sget-object v4, Lcom/android/server/IRMContainer;->IRM_MAC_PERM:Ljava/lang/String;

    move-object/from16 v0, v26

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v28, Ljava/io/File;

    sget-object v4, Lcom/android/server/IRMContainer;->IRM_SEAPP_CONTEXTS:Ljava/lang/String;

    move-object/from16 v0, v28

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v30

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v27

    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v31

    invoke-static/range {p1 .. p2}, Lcom/android/server/pm/SELinuxMMAC;->getApplicationInfo(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;

    move-result-object v21

    move-object/from16 v0, v21

    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    if-eqz v4, :cond_c

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v26

    move-object/from16 v1, p1

    move/from16 v2, p4

    invoke-static {v0, v12, v1, v4, v2}, Lcom/android/server/IRMContainer;->removeEntryFromMac(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_8

    sget-object v4, Lcom/android/server/IRMContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v5, "IRMContainer"

    const-string/jumbo v6, "removeEntryFromMac failed"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v4, -0x1

    goto/16 :goto_0

    :cond_6
    const/4 v4, 0x0

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v4, p2, v4

    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    const/16 v23, 0x1

    :cond_7
    if-nez v23, :cond_5

    sget-object v4, Lcom/android/server/IRMContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v5, "IRMContainer"

    const-string/jumbo v6, "removeAppFromContainer, input certificate does not match the certificate extracted from package"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, -0xd

    goto/16 :goto_0

    :cond_8
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "*"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v4, 0x7

    move/from16 v0, p4

    if-ne v0, v4, :cond_9

    const-string/jumbo v8, "irm_platform"

    const-string/jumbo v9, "irm_platform_app"

    const-string/jumbo v10, "platform_app_data_file"

    :goto_1
    invoke-virtual/range {v28 .. v28}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    const-string v6, "_app"

    const/16 v11, 0x2be

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v11}, Lcom/android/server/IRMContainer;->removeSEAppContext(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_a

    sget-object v4, Lcom/android/server/IRMContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v5, "IRMContainer"

    const-string v6, "cound not successfully remove irm entry from seapp_contexts"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v21

    iget-object v14, v0, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    const/16 v17, 0x0

    move-object/from16 v11, v26

    move-object/from16 v13, p1

    move/from16 v16, p4

    invoke-static/range {v11 .. v17}, Lcom/android/server/IRMContainer;->addEntryToMac(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)I

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v4, v5}, Lcom/android/server/IRMContainer;->loadContainerSetting(Ljava/lang/String;IZ)I

    const/4 v4, -0x1

    goto/16 :goto_0

    :cond_9
    const-string/jumbo v8, "irm"

    const-string/jumbo v9, "irm_app"

    const-string v10, "app_data_file"

    goto :goto_1

    :cond_a
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v31

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/IRMContainer;->loadContainerSetting(Ljava/lang/String;IZ)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_b

    invoke-virtual/range {v28 .. v28}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v14

    const-string v15, "_app"

    const/16 v20, 0x2be

    move-object/from16 v13, p0

    move-object/from16 v16, p1

    move-object/from16 v17, v8

    move-object/from16 v18, v9

    move-object/from16 v19, v10

    invoke-virtual/range {v13 .. v20}, Lcom/android/server/IRMContainer;->addSEAppContext(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-object/from16 v0, v21

    iget-object v14, v0, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    const/16 v17, 0x0

    move-object/from16 v11, v26

    move-object/from16 v13, p1

    move/from16 v16, p4

    invoke-static/range {v11 .. v17}, Lcom/android/server/IRMContainer;->addEntryToMac(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)I

    const/4 v4, -0x1

    goto/16 :goto_0

    :cond_b
    const-string/jumbo v4, "selinux.reload_policy"

    const-string v5, "1"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    goto/16 :goto_0

    :cond_c
    sget-object v4, Lcom/android/server/IRMContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v5, "IRMContainer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "removeAppFromContainer, "

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v11, " seinfo is null"

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v4, -0x1

    goto/16 :goto_0

    :catch_0
    move-exception v24

    sget-object v4, Lcom/android/server/IRMContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v5, "IRMContainer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "leave removeAppFromContainer "

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, -0x1

    goto/16 :goto_0
.end method

.method public removeSEContainer(III)I
    .locals 8

    const/4 v3, -0x1

    new-instance v1, Ljava/io/File;

    sget-object v4, Lcom/android/server/IRMContainer;->IRM_MAC_PERM:Ljava/lang/String;

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/IRMContainer;->getMDMID()Lcom/android/server/pm/SELinuxMMAC$MDMID;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v4, Lcom/android/server/IRMContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v5, "IRMContainer"

    const-string/jumbo v6, "irmMDMID is null"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v3

    :cond_0
    const/16 v4, 0x2be

    if-ne p3, v4, :cond_5

    const/4 v4, 0x7

    invoke-virtual {p0, p3, v4}, Lcom/android/server/IRMContainer;->getPackageNamesFromSEContainer(II)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    array-length v4, v2

    if-nez v4, :cond_4

    :cond_1
    iget-object v4, p0, Lcom/android/server/IRMContainer;->mPms:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v0, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    iget-object v6, v0, Lcom/android/server/pm/SELinuxMMAC$MDMID;->certs:Ljava/lang/String;

    invoke-virtual {v4, v5, v6, p3}, Lcom/android/server/pm/PackageManagerService;->removeContainerID(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, v0, Lcom/android/server/pm/SELinuxMMAC$MDMID;->certs:Ljava/lang/String;

    iget-object v5, v0, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x9

    invoke-static {v1, v4, v5, v6, v7}, Lcom/android/server/IRMContainer;->removeEntryFromMac(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_2

    sget-object v4, Lcom/android/server/IRMContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v5, "IRMContainer"

    const-string/jumbo v6, "removeEntryFromMac failed"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    :cond_3
    sget-object v4, Lcom/android/server/IRMContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v5, "IRMContainer"

    const-string/jumbo v6, "remove IRM Container ID Failed"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    sget-object v3, Lcom/android/server/IRMContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v4, "IRMContainer"

    const-string v5, "CONTAINER not empty"

    invoke-virtual {v3, v4, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, -0xb

    goto :goto_0

    :cond_5
    sget-object v4, Lcom/android/server/IRMContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v5, "IRMContainer"

    const-string/jumbo v6, "removeSEContainer, POLICY_FAILED is returned"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
