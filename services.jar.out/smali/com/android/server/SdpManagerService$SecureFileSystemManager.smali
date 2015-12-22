.class Lcom/android/server/SdpManagerService$SecureFileSystemManager;
.super Ljava/lang/Object;
.source "SdpManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/SdpManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SecureFileSystemManager"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/SdpManagerService$SecureFileSystemManager$SecureFileSystemDatabase;
    }
.end annotation


# static fields
.field private static final FS_TYPE:I = 0x2

.field private static final SECURE_FS_CURRENT_VERSION:I = 0x1

.field private static final SECURE_FS_VERSION_1:I = 0x1

.field private static final STATE_ACTIVATED:I = 0x1

.field private static final STATE_ERROR:I = -0x1

.field private static final STATE_NOT_READY:I = 0x0

.field private static final TAG:Ljava/lang/String; = "SecureFileSystem"


# instance fields
.field defaultApps:[Ljava/lang/String;

.field private mDB:Lcom/android/server/SdpManagerService$SecureFileSystemManager$SecureFileSystemDatabase;

.field private mEPM:Lcom/sec/knox/container/util/EnterprisePartitionManager;

.field private mKeyMgnt:Lcom/sec/knox/container/util/KeyManagementUtil;

.field private mStatus:I

.field private mTimaHelper:Lcom/android/server/pm/TimaHelper;

.field private sContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/android/server/SdpManagerService;

.field timaVersion20:Z


# direct methods
.method private constructor <init>(Lcom/android/server/SdpManagerService;Landroid/content/Context;Lcom/android/server/pm/TimaHelper;Lcom/sec/knox/container/util/KeyManagementUtil;Lcom/sec/knox/container/util/EnterprisePartitionManager;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    iput-object p1, p0, Lcom/android/server/SdpManagerService$SecureFileSystemManager;->this$0:Lcom/android/server/SdpManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/android/server/SdpManagerService$SecureFileSystemManager;->mTimaHelper:Lcom/android/server/pm/TimaHelper;

    iput-object v3, p0, Lcom/android/server/SdpManagerService$SecureFileSystemManager;->mKeyMgnt:Lcom/sec/knox/container/util/KeyManagementUtil;

    iput-object v3, p0, Lcom/android/server/SdpManagerService$SecureFileSystemManager;->mEPM:Lcom/sec/knox/container/util/EnterprisePartitionManager;

    new-instance v2, Lcom/android/server/SdpManagerService$SecureFileSystemManager$SecureFileSystemDatabase;

    invoke-direct {v2, p0, v3}, Lcom/android/server/SdpManagerService$SecureFileSystemManager$SecureFileSystemDatabase;-><init>(Lcom/android/server/SdpManagerService$SecureFileSystemManager;Lcom/android/server/SdpManagerService$1;)V

    iput-object v2, p0, Lcom/android/server/SdpManagerService$SecureFileSystemManager;->mDB:Lcom/android/server/SdpManagerService$SecureFileSystemManager$SecureFileSystemDatabase;

    iput-boolean v4, p0, Lcom/android/server/SdpManagerService$SecureFileSystemManager;->timaVersion20:Z

    iput v4, p0, Lcom/android/server/SdpManagerService$SecureFileSystemManager;->mStatus:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "com.android.bluetooth"

    aput-object v3, v2, v4

    iput-object v2, p0, Lcom/android/server/SdpManagerService$SecureFileSystemManager;->defaultApps:[Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/SdpManagerService$SecureFileSystemManager;->sContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/server/SdpManagerService$SecureFileSystemManager;->mTimaHelper:Lcom/android/server/pm/TimaHelper;

    iput-object p4, p0, Lcom/android/server/SdpManagerService$SecureFileSystemManager;->mKeyMgnt:Lcom/sec/knox/container/util/KeyManagementUtil;

    iput-object p5, p0, Lcom/android/server/SdpManagerService$SecureFileSystemManager;->mEPM:Lcom/sec/knox/container/util/EnterprisePartitionManager;

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/SdpManagerService$SecureFileSystemManager;->getTimaService()Landroid/service/tima/ITimaService;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/android/server/SdpManagerService$SecureFileSystemManager;->getTimaService()Landroid/service/tima/ITimaService;

    move-result-object v2

    invoke-interface {v2}, Landroid/service/tima/ITimaService;->getTimaVersion()Ljava/lang/String;

    move-result-object v2

    const-string v3, "2.0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/SdpManagerService$SecureFileSystemManager;->timaVersion20:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v1

    const-string v2, "SecureFileSystem"

    const-string/jumbo v3, "failed to talk with TIMA service."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v2, "SecureFileSystem"

    const-string/jumbo v3, "failed to get TIMA version."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method synthetic constructor <init>(Lcom/android/server/SdpManagerService;Landroid/content/Context;Lcom/android/server/pm/TimaHelper;Lcom/sec/knox/container/util/KeyManagementUtil;Lcom/sec/knox/container/util/EnterprisePartitionManager;Lcom/android/server/SdpManagerService$1;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/android/server/SdpManagerService$SecureFileSystemManager;-><init>(Lcom/android/server/SdpManagerService;Landroid/content/Context;Lcom/android/server/pm/TimaHelper;Lcom/sec/knox/container/util/KeyManagementUtil;Lcom/sec/knox/container/util/EnterprisePartitionManager;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/server/SdpManagerService$SecureFileSystemManager;ILjava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/server/SdpManagerService$SecureFileSystemManager;->createPkgDir(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/SdpManagerService$SecureFileSystemManager;II)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/server/SdpManagerService$SecureFileSystemManager;->createChamber(II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2000(Lcom/android/server/SdpManagerService$SecureFileSystemManager;I)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService$SecureFileSystemManager;->systemReady(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2100(Lcom/android/server/SdpManagerService$SecureFileSystemManager;ILjava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/server/SdpManagerService$SecureFileSystemManager;->removePkgDir(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3800(Lcom/android/server/SdpManagerService$SecureFileSystemManager;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/SdpManagerService$SecureFileSystemManager;->mount()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3900(Lcom/android/server/SdpManagerService$SecureFileSystemManager;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/SdpManagerService$SecureFileSystemManager;->isActivated()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4000(Lcom/android/server/SdpManagerService$SecureFileSystemManager;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/SdpManagerService$SecureFileSystemManager;->systemReady()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/SdpManagerService$SecureFileSystemManager;II)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/server/SdpManagerService$SecureFileSystemManager;->removeChamber(II)Z

    move-result v0

    return v0
.end method

.method private createChamber(II)Z
    .locals 4

    const/4 v0, 0x0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    iget-object v1, p0, Lcom/android/server/SdpManagerService$SecureFileSystemManager;->mEPM:Lcom/sec/knox/container/util/EnterprisePartitionManager;

    invoke-virtual {v1, p1, p2}, Lcom/sec/knox/container/util/EnterprisePartitionManager;->createChamber(II)Z

    move-result v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v0
.end method

.method private createPartition()Z
    .locals 5

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/android/server/SdpManagerService$SecureFileSystemManager;->timaVersion20:Z

    if-eqz v2, :cond_0

    const-string v2, "SecureFileSystem"

    const-string v3, "TIMA 2.0 not supported"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v1

    :cond_0
    iget-object v2, p0, Lcom/android/server/SdpManagerService$SecureFileSystemManager;->mKeyMgnt:Lcom/sec/knox/container/util/KeyManagementUtil;

    const-string/jumbo v3, "test"

    invoke-virtual {v2, v3}, Lcom/sec/knox/container/util/KeyManagementUtil;->generateEcryptfsKey(Ljava/lang/String;)[B

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/SdpManagerService$SecureFileSystemManager;->mTimaHelper:Lcom/android/server/pm/TimaHelper;

    invoke-direct {p0}, Lcom/android/server/SdpManagerService$SecureFileSystemManager;->getTimaAlias()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3, v0}, Lcom/android/server/pm/TimaHelper;->setEntry(ILjava/lang/String;[B)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/android/server/SdpManagerService$SecureFileSystemManager;->mDB:Lcom/android/server/SdpManagerService$SecureFileSystemManager$SecureFileSystemDatabase;

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/server/SdpManagerService$SecureFileSystemManager;->mTimaHelper:Lcom/android/server/pm/TimaHelper;

    invoke-virtual {v4}, Lcom/android/server/pm/TimaHelper;->getTimaVersion()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/android/server/SdpManagerService$SecureFileSystemManager$SecureFileSystemDatabase;->updateSecureFsXml(ILjava/lang/String;)I
    invoke-static {v2, v3, v4}, Lcom/android/server/SdpManagerService$SecureFileSystemManager$SecureFileSystemDatabase;->access$2700(Lcom/android/server/SdpManagerService$SecureFileSystemManager$SecureFileSystemDatabase;ILjava/lang/String;)I

    :cond_1
    const-string v2, "SecureFileSystem"

    const-string v3, "createPartition"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private createPkgDir(ILjava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    iget-object v1, p0, Lcom/android/server/SdpManagerService$SecureFileSystemManager;->mEPM:Lcom/sec/knox/container/util/EnterprisePartitionManager;

    invoke-virtual {v1, p1, p2}, Lcom/sec/knox/container/util/EnterprisePartitionManager;->createEncPkgDir(ILjava/lang/String;)Z

    move-result v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v0
.end method

.method private getTimaAlias()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/String;

    const-string v1, "eCryptfsKeySecFS"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private getTimaService()Landroid/service/tima/ITimaService;
    .locals 2

    const-string/jumbo v1, "tima"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/service/tima/ITimaService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/tima/ITimaService;

    move-result-object v0

    return-object v0
.end method

.method private isActivated()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/android/server/SdpManagerService$SecureFileSystemManager;->mStatus:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isCreated()Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/SdpManagerService$SecureFileSystemManager;->mTimaHelper:Lcom/android/server/pm/TimaHelper;

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/server/SdpManagerService$SecureFileSystemManager;->getTimaAlias()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/pm/TimaHelper;->checkEntry(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private mount()Z
    .locals 8

    const/4 v7, 0x1

    const/4 v6, -0x1

    const/4 v3, 0x0

    iget-boolean v4, p0, Lcom/android/server/SdpManagerService$SecureFileSystemManager;->timaVersion20:Z

    if-eqz v4, :cond_0

    const-string v4, "SecureFileSystem"

    const-string v5, "TIMA 2.0 not supported"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    :goto_0
    return v2

    :cond_0
    iget-object v4, p0, Lcom/android/server/SdpManagerService$SecureFileSystemManager;->mTimaHelper:Lcom/android/server/pm/TimaHelper;

    invoke-direct {p0}, Lcom/android/server/SdpManagerService$SecureFileSystemManager;->getTimaAlias()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Lcom/android/server/pm/TimaHelper;->getEntry(ILjava/lang/String;)[B

    move-result-object v1

    if-nez v1, :cond_2

    invoke-direct {p0}, Lcom/android/server/SdpManagerService$SecureFileSystemManager;->createPartition()Z

    move-result v2

    if-nez v2, :cond_1

    const-string v4, "SecureFileSystem"

    const-string v5, "Failed to create partition"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput v6, p0, Lcom/android/server/SdpManagerService$SecureFileSystemManager;->mStatus:I

    move v2, v3

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/android/server/SdpManagerService$SecureFileSystemManager;->mTimaHelper:Lcom/android/server/pm/TimaHelper;

    invoke-direct {p0}, Lcom/android/server/SdpManagerService$SecureFileSystemManager;->getTimaAlias()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Lcom/android/server/pm/TimaHelper;->getEntry(ILjava/lang/String;)[B

    move-result-object v1

    if-nez v1, :cond_2

    const-string v4, "SecureFileSystem"

    const-string v5, "Failed to get eCryptfsKey"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput v6, p0, Lcom/android/server/SdpManagerService$SecureFileSystemManager;->mStatus:I

    move v2, v3

    goto :goto_0

    :cond_2
    invoke-static {v1, v3}, Lcom/sec/knox/container/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    const-string v4, "SecureFileSystem"

    const-string/jumbo v5, "mount"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/server/SdpManagerService$SecureFileSystemManager;->mEPM:Lcom/sec/knox/container/util/EnterprisePartitionManager;

    const/4 v5, 0x2

    invoke-virtual {v4, v3, v0, v7, v5}, Lcom/sec/knox/container/util/EnterprisePartitionManager;->mount(ILjava/lang/String;ZI)Z

    move-result v2

    if-eqz v2, :cond_3

    iput v7, p0, Lcom/android/server/SdpManagerService$SecureFileSystemManager;->mStatus:I

    goto :goto_0

    :cond_3
    iput v6, p0, Lcom/android/server/SdpManagerService$SecureFileSystemManager;->mStatus:I

    goto :goto_0
.end method

.method private removeChamber(II)Z
    .locals 4

    const/4 v0, 0x0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    iget-object v1, p0, Lcom/android/server/SdpManagerService$SecureFileSystemManager;->mEPM:Lcom/sec/knox/container/util/EnterprisePartitionManager;

    invoke-virtual {v1, p1, p2}, Lcom/sec/knox/container/util/EnterprisePartitionManager;->removeChamber(II)Z

    move-result v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v0
.end method

.method private removePartition()V
    .locals 3

    iget-boolean v0, p0, Lcom/android/server/SdpManagerService$SecureFileSystemManager;->timaVersion20:Z

    if-eqz v0, :cond_0

    const-string v0, "SecureFileSystem"

    const-string v1, "TIMA 2.0 not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/SdpManagerService$SecureFileSystemManager;->mTimaHelper:Lcom/android/server/pm/TimaHelper;

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/server/SdpManagerService$SecureFileSystemManager;->getTimaAlias()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/pm/TimaHelper;->deleteEntry(ILjava/lang/String;)V

    const-string v0, "SecureFileSystem"

    const-string/jumbo v1, "removePartition"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private removePkgDir(ILjava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    iget-object v1, p0, Lcom/android/server/SdpManagerService$SecureFileSystemManager;->mEPM:Lcom/sec/knox/container/util/EnterprisePartitionManager;

    invoke-virtual {v1, p1, p2}, Lcom/sec/knox/container/util/EnterprisePartitionManager;->removeEncPkgDir(ILjava/lang/String;)Z

    move-result v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v0
.end method

.method private systemReady()Z
    .locals 4

    iget-object v3, p0, Lcom/android/server/SdpManagerService$SecureFileSystemManager;->sContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    iget v3, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v3}, Lcom/android/server/SdpManagerService$SecureFileSystemManager;->systemReady(I)Z

    goto :goto_0

    :cond_0
    const/4 v3, 0x1

    return v3
.end method

.method private systemReady(I)Z
    .locals 12

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v11, -0x1

    invoke-static {p1}, Lcom/sec/sdp/SdpUtil;->isKnoxWorkspace(I)Z

    move-result v9

    if-eqz v9, :cond_1

    :cond_0
    :goto_0
    return v7

    :cond_1
    invoke-direct {p0}, Lcom/android/server/SdpManagerService$SecureFileSystemManager;->isActivated()Z

    move-result v9

    if-nez v9, :cond_2

    const-string v7, "SecureFileSystem"

    const-string/jumbo v9, "systemReady error :: SdpFileSystem not activated "

    invoke-static {v7, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v8

    goto :goto_0

    :cond_2
    new-instance v2, Ljava/io/File;

    const-string v9, "/data/enc_user"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v2, v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_4

    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    move-result v5

    if-nez v5, :cond_3

    const-string v7, "SecureFileSystem"

    const-string/jumbo v9, "systemReady error :: user dir creation failed "

    invoke-static {v7, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v8

    goto :goto_0

    :cond_3
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x1f9

    invoke-static {v8, v9, v11, v11}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    :cond_4
    iget-object v1, p0, Lcom/android/server/SdpManagerService$SecureFileSystemManager;->defaultApps:[Ljava/lang/String;

    array-length v4, v1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v4, :cond_0

    aget-object v0, v1, v3

    invoke-static {p1, v0}, Lcom/sec/sdp/SdpFileSystem;->getUserDataDir(ILjava/lang/String;)Ljava/io/File;

    move-result-object v6

    if-nez v6, :cond_6

    const-string v8, "SecureFileSystem"

    const-string/jumbo v9, "systemReady : userDataDir is null"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_6
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_7

    const-string v8, "SecureFileSystem"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "systemReady : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " creating"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1, v0}, Lcom/android/server/SdpManagerService$SecureFileSystemManager;->createPkgDir(ILjava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_5

    const-string v8, "SecureFileSystem"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "failed to create "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_7
    const-string v8, "SecureFileSystem"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "systemReady : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " already exists"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private unmount()V
    .locals 3

    iget-boolean v0, p0, Lcom/android/server/SdpManagerService$SecureFileSystemManager;->timaVersion20:Z

    if-eqz v0, :cond_0

    const-string v0, "SecureFileSystem"

    const-string v1, "TIMA 2.0 not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v0, "SecureFileSystem"

    const-string/jumbo v1, "unmount"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/SdpManagerService$SecureFileSystemManager;->mEPM:Lcom/sec/knox/container/util/EnterprisePartitionManager;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/sec/knox/container/util/EnterprisePartitionManager;->unmount(II)Z

    return-void
.end method
