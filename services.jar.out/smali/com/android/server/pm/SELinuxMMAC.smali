.class public final Lcom/android/server/pm/SELinuxMMAC;
.super Ljava/lang/Object;
.source "SELinuxMMAC.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/SELinuxMMAC$Policy;,
        Lcom/android/server/pm/SELinuxMMAC$MDMID;,
        Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;
    }
.end annotation


# static fields
.field private static final BASE_MAC_PERMISSIONS:Ljava/lang/String;

.field private static final BASE_SEAPP_CONTEXTS:Ljava/lang/String; = "/seapp_contexts"

.field private static final BASE_VERSION_FILE:Ljava/lang/String; = "/selinux_version"

.field public static final BBCCONTAINER:I = 0x3

.field private static final BBCCONTAIN_START_NUM:I = 0x1f5

.field private static final BBC_CONTAINER_INFO:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/server/pm/SELinuxMMAC$MDMID;",
            "Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final BBC_MDM_INFO:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/server/pm/SELinuxMMAC$MDMID;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final BBC_SECURED_APPTYPE:I = 0x5

.field public static final BLACKLISTS:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation
.end field

.field public static BT_TYPE:I = 0x0

.field private static final CONTAINER_APP:Ljava/lang/String; = "container"

.field private static final DATA_MAC_PERMISSIONS:Ljava/lang/String;

.field private static final DATA_SEAPP_CONTEXTS:Ljava/lang/String;

.field private static final DATA_VERSION_FILE:Ljava/lang/String;

.field private static final DEBUG_POLICY:Z = false

.field private static final DEBUG_POLICY_INSTALL:Z = false

.field private static final FILECOPIER_METADATA_PREFIX:Ljava/lang/String; = "rcpFileCopier"

.field private static final GENERIC_CONTAINER_INFO:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/server/pm/SELinuxMMAC$MDMID;",
            "Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final GENERIC_MDM_INFO:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/server/pm/SELinuxMMAC$MDMID;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final GENERIC_SECURED_APPTYPE:I = 0x3

.field public static final GENERIC_SEINFO:Ljava/lang/String; = "generic_mdm"

.field private static final GENERIC_TRUSTED_APPTYPE:I = 0x4

.field public static final GOOD_CONTAINER:I = 0x1

.field private static final GSD_CATEGORY:I = 0x66

.field private static final INSTALL_POLICY_FILE:[Ljava/io/File;

.field public static final IRMCONTAINER:I = 0x4

.field private static final IRM_CATEGORY:I = 0x2be

.field private static final IRM_SERVICE:Ljava/lang/String; = "com.samsung.android.irm.service"

.field private static final MAC_PERMISSIONS:Ljava/lang/String;

.field private static final MAX_BBCCONTAIN_NUM:I = 0xc6

.field private static final MAX_IRMCONTAIN_NUM:I = 0x1

.field private static final MAX_MYCONTAIN_NUM:I = 0x12c

.field public static final MYCONTAINER:I = 0x2

.field private static final MYCONTAIN_START_NUM:I = 0xc9

.field public static final NON_CONTAINER_TYPE:I = 0x0

.field private static final PROVIDER_METADATA_PREFIX:Ljava/lang/String; = "RCPProviderName_"

.field private static final PROXY_METADATA_PREFIX:Ljava/lang/String; = "proxyName"

.field private static RESOURCE_NUM:I = 0x0

.field public static final SBALISTS:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public static SDCARD_TYPE:I = 0x0

.field private static final SEAPP_CONTEXTS:Ljava/lang/String;

.field private static final SEAPP_HASH_FILE:Ljava/lang/String;

.field private static final SECURED_APPTYPE:I = 0x1

.field private static final SECURE_PKG_PREFIX:Ljava/lang/String; = "sec_container_"

.field private static final SIG_POLICY:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/pm/Signature;",
            "Lcom/android/server/pm/SELinuxMMAC$Policy;",
            ">;"
        }
    .end annotation
.end field

.field private static final SYNCER_METADATA_PREFIX:Ljava/lang/String; = "RCPSyncerName_"

.field private static final TAG:Ljava/lang/String; = "SELinuxMMAC"

.field static final TAG1:Ljava/lang/String; = "SEContainer"

.field private static final TRUSTED_APPTYPE:I = 0x2

.field private static final USE_OVERRIDE_POLICY:Z

.field public static final WHITELISTS:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private static bbc_containerIDTable:[I

.field private static bbc_flag:Z

.field private static generic_containerIDTable:[I

.field private static irm_containerIDTable:[I

.field private static sDefaultSeinfo:Ljava/lang/String;

.field private static sSigSeinfo:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/pm/Signature;",
            "Lcom/android/server/pm/SELinuxMMAC$Policy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/pm/SELinuxMMAC;->sSigSeinfo:Ljava/util/HashMap;

    sput-object v7, Lcom/android/server/pm/SELinuxMMAC;->sDefaultSeinfo:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/security/current/selinux_version"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/SELinuxMMAC;->DATA_VERSION_FILE:Ljava/lang/String;

    invoke-static {}, Lcom/android/server/pm/SELinuxMMAC;->useOverridePolicy()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/pm/SELinuxMMAC;->USE_OVERRIDE_POLICY:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/security/current/mac_permissions.xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/SELinuxMMAC;->DATA_MAC_PERMISSIONS:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/etc/security/mac_permissions.xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/SELinuxMMAC;->BASE_MAC_PERMISSIONS:Ljava/lang/String;

    sget-boolean v0, Lcom/android/server/pm/SELinuxMMAC;->USE_OVERRIDE_POLICY:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/pm/SELinuxMMAC;->DATA_MAC_PERMISSIONS:Ljava/lang/String;

    :goto_0
    sput-object v0, Lcom/android/server/pm/SELinuxMMAC;->MAC_PERMISSIONS:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/security/current/seapp_contexts"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/SELinuxMMAC;->DATA_SEAPP_CONTEXTS:Ljava/lang/String;

    sget-boolean v0, Lcom/android/server/pm/SELinuxMMAC;->USE_OVERRIDE_POLICY:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/server/pm/SELinuxMMAC;->DATA_SEAPP_CONTEXTS:Ljava/lang/String;

    :goto_1
    sput-object v0, Lcom/android/server/pm/SELinuxMMAC;->SEAPP_CONTEXTS:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/system/seapp_hash"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/SELinuxMMAC;->SEAPP_HASH_FILE:Ljava/lang/String;

    sput v4, Lcom/android/server/pm/SELinuxMMAC;->SDCARD_TYPE:I

    sput v5, Lcom/android/server/pm/SELinuxMMAC;->BT_TYPE:I

    sput v6, Lcom/android/server/pm/SELinuxMMAC;->RESOURCE_NUM:I

    sput-boolean v4, Lcom/android/server/pm/SELinuxMMAC;->bbc_flag:Z

    const/16 v0, 0x12c

    new-array v0, v0, [I

    sput-object v0, Lcom/android/server/pm/SELinuxMMAC;->generic_containerIDTable:[I

    const/16 v0, 0xc6

    new-array v0, v0, [I

    sput-object v0, Lcom/android/server/pm/SELinuxMMAC;->bbc_containerIDTable:[I

    new-array v0, v5, [I

    sput-object v0, Lcom/android/server/pm/SELinuxMMAC;->irm_containerIDTable:[I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/pm/SELinuxMMAC;->GENERIC_CONTAINER_INFO:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/pm/SELinuxMMAC;->BBC_CONTAINER_INFO:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/pm/SELinuxMMAC;->SIG_POLICY:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/pm/SELinuxMMAC;->GENERIC_MDM_INFO:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/pm/SELinuxMMAC;->BBC_MDM_INFO:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/pm/SELinuxMMAC;->WHITELISTS:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/pm/SELinuxMMAC;->BLACKLISTS:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/pm/SELinuxMMAC;->SBALISTS:Ljava/util/ArrayList;

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/io/File;

    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    const-string/jumbo v3, "security/mac_permissions.xml"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aput-object v1, v0, v4

    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    const-string/jumbo v3, "security/spota/mac_permissions.xml"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aput-object v1, v0, v5

    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v2

    const-string v3, "etc/security/mac_permissions.xml"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aput-object v1, v0, v6

    const/4 v1, 0x3

    aput-object v7, v0, v1

    sput-object v0, Lcom/android/server/pm/SELinuxMMAC;->INSTALL_POLICY_FILE:[Ljava/io/File;

    return-void

    :cond_0
    sget-object v0, Lcom/android/server/pm/SELinuxMMAC;->BASE_MAC_PERMISSIONS:Ljava/lang/String;

    goto/16 :goto_0

    :cond_1
    const-string v0, "/seapp_contexts"

    goto/16 :goto_1
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static arraylist_to_int_array(Ljava/util/ArrayList;)[I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)[I"
        }
    .end annotation

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_2

    :cond_0
    const/4 v0, 0x0

    :cond_1
    return-object v0

    :cond_2
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v0, v4, [I

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    add-int/lit8 v2, v1, 0x1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    aput v4, v0, v1

    move v1, v2

    goto :goto_0
.end method

.method public static assignSeinfoValue(Landroid/content/pm/PackageParser$Package;)Z
    .locals 18

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    array-length v11, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v11, :cond_14

    aget-object v13, v1, v3

    if-nez v13, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    sget-object v15, Lcom/android/server/pm/SELinuxMMAC;->SIG_POLICY:Ljava/util/HashMap;

    invoke-virtual {v15, v13}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    sget-object v15, Lcom/android/server/pm/SELinuxMMAC;->SIG_POLICY:Ljava/util/HashMap;

    invoke-virtual {v15, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/pm/SELinuxMMAC$Policy;

    if-eqz v14, :cond_13

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    if-eqz v15, :cond_13

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Lcom/android/server/pm/SELinuxMMAC$Policy;->checkPolicy(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    iput-object v0, v15, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v14, Lcom/android/server/pm/SELinuxMMAC$Policy;->category:I

    move/from16 v16, v0

    move/from16 v0, v16

    iput v0, v15, Landroid/content/pm/ApplicationInfo;->category:I

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v14, Lcom/android/server/pm/SELinuxMMAC$Policy;->allowCategory:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iput-object v0, v15, Landroid/content/pm/ApplicationInfo;->allowCategory:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/16 v16, 0x0

    move-object/from16 v0, v16

    iput-object v0, v15, Landroid/content/pm/ApplicationInfo;->allowContainerCategory:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/16 v16, 0x0

    move/from16 v0, v16

    iput v0, v15, Landroid/content/pm/ApplicationInfo;->accessInfo:I

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/16 v16, 0x0

    move-object/from16 v0, v16

    iput-object v0, v15, Landroid/content/pm/ApplicationInfo;->sdcarduserid:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/16 v16, 0x0

    move-object/from16 v0, v16

    iput-object v0, v15, Landroid/content/pm/ApplicationInfo;->bluetoothuserid:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/16 v16, 0x0

    move-object/from16 v0, v16

    iput-object v0, v15, Landroid/content/pm/ApplicationInfo;->sdcarduseridBL:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/16 v16, 0x0

    move-object/from16 v0, v16

    iput-object v0, v15, Landroid/content/pm/ApplicationInfo;->bluetoothuseridBL:Ljava/lang/String;

    new-instance v12, Lcom/android/server/pm/SELinuxMMAC$MDMID;

    invoke-direct {v12}, Lcom/android/server/pm/SELinuxMMAC$MDMID;-><init>()V

    invoke-virtual {v13}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v15

    iput-object v15, v12, Lcom/android/server/pm/SELinuxMMAC$MDMID;->certs:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    iput-object v15, v12, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    sget-object v15, Lcom/android/server/pm/SELinuxMMAC;->GENERIC_CONTAINER_INFO:Ljava/util/HashMap;

    invoke-virtual {v15, v12}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_2

    sget-object v15, Lcom/android/server/pm/SELinuxMMAC;->GENERIC_CONTAINER_INFO:Ljava/util/HashMap;

    invoke-virtual {v15, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;

    :cond_2
    if-eqz v2, :cond_3

    sget-object v15, Lcom/android/server/pm/SELinuxMMAC;->GENERIC_CONTAINER_INFO:Ljava/util/HashMap;

    invoke-virtual {v15, v12}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_7

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v2, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->category:I

    move/from16 v16, v0

    move/from16 v0, v16

    iput v0, v15, Landroid/content/pm/ApplicationInfo;->category:I

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v2, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->allowCategory:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iput-object v0, v15, Landroid/content/pm/ApplicationInfo;->allowCategory:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v2, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->allowContainerCategory:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iput-object v0, v15, Landroid/content/pm/ApplicationInfo;->allowContainerCategory:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v2, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->seInfo:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iput-object v0, v15, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v2, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->accessInfo:I

    move/from16 v16, v0

    move/from16 v0, v16

    iput v0, v15, Landroid/content/pm/ApplicationInfo;->accessInfo:I

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v2, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->sdcarduserid:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iput-object v0, v15, Landroid/content/pm/ApplicationInfo;->sdcarduserid:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v2, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->bluetoothuserid:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iput-object v0, v15, Landroid/content/pm/ApplicationInfo;->bluetoothuserid:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v2, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->sdcarduseridBL:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iput-object v0, v15, Landroid/content/pm/ApplicationInfo;->sdcarduseridBL:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v2, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->bluetoothuseridBL:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iput-object v0, v15, Landroid/content/pm/ApplicationInfo;->bluetoothuseridBL:Ljava/lang/String;

    :cond_3
    :goto_2
    sget-object v15, Lcom/android/server/pm/SELinuxMMAC;->BBC_CONTAINER_INFO:Ljava/util/HashMap;

    invoke-virtual {v15, v12}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_4

    const/4 v2, 0x0

    sget-object v15, Lcom/android/server/pm/SELinuxMMAC;->BBC_CONTAINER_INFO:Ljava/util/HashMap;

    invoke-virtual {v15, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;

    if-eqz v2, :cond_4

    sget-object v15, Lcom/android/server/pm/SELinuxMMAC;->BBC_CONTAINER_INFO:Ljava/util/HashMap;

    invoke-virtual {v15, v12}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_4

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v2, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->bbccategory:I

    move/from16 v16, v0

    move/from16 v0, v16

    iput v0, v15, Landroid/content/pm/ApplicationInfo;->bbccategory:I

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v2, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->bbcallowCategory:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iput-object v0, v15, Landroid/content/pm/ApplicationInfo;->bbcallowCategory:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v2, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->bbcseInfo:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iput-object v0, v15, Landroid/content/pm/ApplicationInfo;->bbcseinfo:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v15, v15, Landroid/content/pm/ApplicationInfo;->sdcarduserid:Ljava/lang/String;

    if-nez v15, :cond_9

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v2, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->sdcarduserid:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iput-object v0, v15, Landroid/content/pm/ApplicationInfo;->sdcarduserid:Ljava/lang/String;

    :cond_4
    :goto_3
    const-string/jumbo v15, "platform"

    # getter for: Lcom/android/server/pm/SELinuxMMAC$Policy;->seinfo:Ljava/lang/String;
    invoke-static {v14}, Lcom/android/server/pm/SELinuxMMAC$Policy;->access$000(Lcom/android/server/pm/SELinuxMMAC$Policy;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_5

    const-string/jumbo v15, "shared"

    # getter for: Lcom/android/server/pm/SELinuxMMAC$Policy;->seinfo:Ljava/lang/String;
    invoke-static {v14}, Lcom/android/server/pm/SELinuxMMAC$Policy;->access$000(Lcom/android/server/pm/SELinuxMMAC$Policy;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_12

    :cond_5
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->mAppMetaData:Landroid/os/Bundle;

    if-eqz v15, :cond_12

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->mAppMetaData:Landroid/os/Bundle;

    invoke-virtual {v15}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v10

    if-eqz v10, :cond_12

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_6
    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_d

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    const-string v15, "RCPProviderName_"

    invoke-virtual {v9, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_a

    const/4 v5, 0x1

    goto :goto_4

    :cond_7
    iget-boolean v15, v14, Lcom/android/server/pm/SELinuxMMAC$Policy;->isContainerApp:Z

    if-eqz v15, :cond_3

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/android/server/pm/SELinuxMMAC;->getPackageLevelbyKey(Ljava/lang/String;)I

    move-result v16

    move/from16 v0, v16

    iput v0, v15, Landroid/content/pm/ApplicationInfo;->category:I

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v15, v15, Landroid/content/pm/ApplicationInfo;->category:I

    const/16 v16, 0x3ff

    move/from16 v0, v16

    if-eq v15, v0, :cond_8

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    # getter for: Lcom/android/server/pm/SELinuxMMAC$Policy;->seinfo:Ljava/lang/String;
    invoke-static {v14}, Lcom/android/server/pm/SELinuxMMAC$Policy;->access$000(Lcom/android/server/pm/SELinuxMMAC$Policy;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ":s0:c"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/server/pm/SELinuxMMAC;->getPackageLevelbyKey(Ljava/lang/String;)I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    iput-object v0, v15, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    :goto_5
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->category:I

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    iput-object v0, v15, Landroid/content/pm/ApplicationInfo;->allowCategory:Ljava/lang/String;

    goto/16 :goto_2

    :cond_8
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    # getter for: Lcom/android/server/pm/SELinuxMMAC$Policy;->seinfo:Ljava/lang/String;
    invoke-static {v14}, Lcom/android/server/pm/SELinuxMMAC$Policy;->access$000(Lcom/android/server/pm/SELinuxMMAC$Policy;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    iput-object v0, v15, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    goto :goto_5

    :cond_9
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sdcarduserid:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ","

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget-object v0, v2, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->sdcarduserid:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    iput-object v0, v15, Landroid/content/pm/ApplicationInfo;->sdcarduserid:Ljava/lang/String;

    goto/16 :goto_3

    :cond_a
    const-string v15, "RCPSyncerName_"

    invoke-virtual {v9, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_b

    const/4 v7, 0x1

    goto/16 :goto_4

    :cond_b
    const-string/jumbo v15, "proxyName"

    invoke-virtual {v9, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_c

    const/4 v6, 0x1

    goto/16 :goto_4

    :cond_c
    const-string/jumbo v15, "rcpFileCopier"

    invoke-virtual {v9, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_6

    const/4 v4, 0x1

    goto/16 :goto_4

    :cond_d
    if-nez v5, :cond_e

    if-nez v7, :cond_e

    if-nez v6, :cond_e

    if-eqz v4, :cond_12

    :cond_e
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/16 v16, 0x0

    move/from16 v0, v16

    iput v0, v15, Landroid/content/pm/ApplicationInfo;->allowedAgentType:I

    if-eqz v5, :cond_f

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v15, Landroid/content/pm/ApplicationInfo;->agentType:I

    move/from16 v16, v0

    or-int/lit8 v16, v16, 0x4

    move/from16 v0, v16

    iput v0, v15, Landroid/content/pm/ApplicationInfo;->agentType:I

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v15, Landroid/content/pm/ApplicationInfo;->allowedAgentType:I

    move/from16 v16, v0

    or-int/lit8 v16, v16, 0x8

    move/from16 v0, v16

    iput v0, v15, Landroid/content/pm/ApplicationInfo;->allowedAgentType:I

    const-string v15, "SELinuxMMAC"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " registered as a Provider Agent App."

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    if-eqz v7, :cond_10

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v15, Landroid/content/pm/ApplicationInfo;->agentType:I

    move/from16 v16, v0

    or-int/lit8 v16, v16, 0x2

    move/from16 v0, v16

    iput v0, v15, Landroid/content/pm/ApplicationInfo;->agentType:I

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v15, Landroid/content/pm/ApplicationInfo;->allowedAgentType:I

    move/from16 v16, v0

    or-int/lit8 v16, v16, 0x8

    move/from16 v0, v16

    iput v0, v15, Landroid/content/pm/ApplicationInfo;->allowedAgentType:I

    const-string v15, "SELinuxMMAC"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " registered as a Syncer Agent App."

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    if-eqz v6, :cond_11

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v15, Landroid/content/pm/ApplicationInfo;->agentType:I

    move/from16 v16, v0

    or-int/lit8 v16, v16, 0x8

    move/from16 v0, v16

    iput v0, v15, Landroid/content/pm/ApplicationInfo;->agentType:I

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v15, Landroid/content/pm/ApplicationInfo;->allowedAgentType:I

    move/from16 v16, v0

    or-int/lit8 v16, v16, 0x10

    move/from16 v0, v16

    iput v0, v15, Landroid/content/pm/ApplicationInfo;->allowedAgentType:I

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v15, Landroid/content/pm/ApplicationInfo;->allowedAgentType:I

    move/from16 v16, v0

    or-int/lit8 v16, v16, 0x2

    move/from16 v0, v16

    iput v0, v15, Landroid/content/pm/ApplicationInfo;->allowedAgentType:I

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v15, Landroid/content/pm/ApplicationInfo;->allowedAgentType:I

    move/from16 v16, v0

    or-int/lit8 v16, v16, 0x4

    move/from16 v0, v16

    iput v0, v15, Landroid/content/pm/ApplicationInfo;->allowedAgentType:I

    const-string v15, "SELinuxMMAC"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " registered as a Proxy Agent App."

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    if-eqz v4, :cond_12

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v15, Landroid/content/pm/ApplicationInfo;->agentType:I

    move/from16 v16, v0

    or-int/lit8 v16, v16, 0x10

    move/from16 v0, v16

    iput v0, v15, Landroid/content/pm/ApplicationInfo;->agentType:I

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v15, Landroid/content/pm/ApplicationInfo;->allowedAgentType:I

    move/from16 v16, v0

    or-int/lit8 v16, v16, 0x1

    move/from16 v0, v16

    iput v0, v15, Landroid/content/pm/ApplicationInfo;->allowedAgentType:I

    const-string v15, "SELinuxMMAC"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " registered as an RCP File Copier App."

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    const/4 v15, 0x1

    :goto_6
    return v15

    :cond_13
    const-string v15, "SELinuxMMAC"

    const-string v16, "Install policy instance is null"

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_14
    sget-object v15, Lcom/android/server/pm/SELinuxMMAC;->SIG_POLICY:Ljava/util/HashMap;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v16, v0

    sget-object v15, Lcom/android/server/pm/SELinuxMMAC;->SIG_POLICY:Ljava/util/HashMap;

    const/16 v17, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/pm/SELinuxMMAC$Policy;

    # getter for: Lcom/android/server/pm/SELinuxMMAC$Policy;->seinfo:Ljava/lang/String;
    invoke-static {v15}, Lcom/android/server/pm/SELinuxMMAC$Policy;->access$000(Lcom/android/server/pm/SELinuxMMAC$Policy;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, v16

    iput-object v15, v0, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v16, v0

    sget-object v15, Lcom/android/server/pm/SELinuxMMAC;->SIG_POLICY:Ljava/util/HashMap;

    const/16 v17, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/pm/SELinuxMMAC$Policy;

    # getter for: Lcom/android/server/pm/SELinuxMMAC$Policy;->seinfo:Ljava/lang/String;
    invoke-static {v15}, Lcom/android/server/pm/SELinuxMMAC$Policy;->access$000(Lcom/android/server/pm/SELinuxMMAC$Policy;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, v16

    iput-object v15, v0, Landroid/content/pm/ApplicationInfo;->bbcseinfo:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v16, v0

    sget-object v15, Lcom/android/server/pm/SELinuxMMAC;->SIG_POLICY:Ljava/util/HashMap;

    const/16 v17, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/pm/SELinuxMMAC$Policy;

    iget v15, v15, Lcom/android/server/pm/SELinuxMMAC$Policy;->category:I

    move-object/from16 v0, v16

    iput v15, v0, Landroid/content/pm/ApplicationInfo;->category:I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v16, v0

    sget-object v15, Lcom/android/server/pm/SELinuxMMAC;->SIG_POLICY:Ljava/util/HashMap;

    const/16 v17, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/pm/SELinuxMMAC$Policy;

    iget v15, v15, Lcom/android/server/pm/SELinuxMMAC$Policy;->category:I

    move-object/from16 v0, v16

    iput v15, v0, Landroid/content/pm/ApplicationInfo;->bbccategory:I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v16, v0

    sget-object v15, Lcom/android/server/pm/SELinuxMMAC;->SIG_POLICY:Ljava/util/HashMap;

    const/16 v17, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/pm/SELinuxMMAC$Policy;

    iget-object v15, v15, Lcom/android/server/pm/SELinuxMMAC$Policy;->allowCategory:Ljava/lang/String;

    move-object/from16 v0, v16

    iput-object v15, v0, Landroid/content/pm/ApplicationInfo;->allowCategory:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v16, v0

    sget-object v15, Lcom/android/server/pm/SELinuxMMAC;->SIG_POLICY:Ljava/util/HashMap;

    const/16 v17, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/pm/SELinuxMMAC$Policy;

    iget-object v15, v15, Lcom/android/server/pm/SELinuxMMAC$Policy;->allowCategory:Ljava/lang/String;

    move-object/from16 v0, v16

    iput-object v15, v0, Landroid/content/pm/ApplicationInfo;->bbcallowCategory:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/16 v16, 0x0

    move-object/from16 v0, v16

    iput-object v0, v15, Landroid/content/pm/ApplicationInfo;->allowContainerCategory:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/16 v16, 0x0

    move/from16 v0, v16

    iput v0, v15, Landroid/content/pm/ApplicationInfo;->accessInfo:I

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/16 v16, 0x0

    move-object/from16 v0, v16

    iput-object v0, v15, Landroid/content/pm/ApplicationInfo;->sdcarduserid:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/16 v16, 0x0

    move-object/from16 v0, v16

    iput-object v0, v15, Landroid/content/pm/ApplicationInfo;->bluetoothuserid:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/16 v16, 0x0

    move-object/from16 v0, v16

    iput-object v0, v15, Landroid/content/pm/ApplicationInfo;->sdcarduseridBL:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/16 v16, 0x0

    move-object/from16 v0, v16

    iput-object v0, v15, Landroid/content/pm/ApplicationInfo;->bluetoothuseridBL:Ljava/lang/String;

    const/4 v15, 0x1

    goto/16 :goto_6

    :cond_15
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/16 v16, 0x0

    move-object/from16 v0, v16

    iput-object v0, v15, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/16 v16, 0x0

    move-object/from16 v0, v16

    iput-object v0, v15, Landroid/content/pm/ApplicationInfo;->bbcseinfo:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/16 v16, 0x3ff

    move/from16 v0, v16

    iput v0, v15, Landroid/content/pm/ApplicationInfo;->category:I

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/16 v16, 0x3ff

    move/from16 v0, v16

    iput v0, v15, Landroid/content/pm/ApplicationInfo;->bbccategory:I

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/16 v16, 0x0

    move-object/from16 v0, v16

    iput-object v0, v15, Landroid/content/pm/ApplicationInfo;->allowCategory:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/16 v16, 0x0

    move-object/from16 v0, v16

    iput-object v0, v15, Landroid/content/pm/ApplicationInfo;->bbcallowCategory:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/16 v16, 0x0

    move-object/from16 v0, v16

    iput-object v0, v15, Landroid/content/pm/ApplicationInfo;->allowContainerCategory:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/16 v16, 0x0

    move/from16 v0, v16

    iput v0, v15, Landroid/content/pm/ApplicationInfo;->accessInfo:I

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/16 v16, 0x0

    move-object/from16 v0, v16

    iput-object v0, v15, Landroid/content/pm/ApplicationInfo;->sdcarduserid:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/16 v16, 0x0

    move-object/from16 v0, v16

    iput-object v0, v15, Landroid/content/pm/ApplicationInfo;->bluetoothuserid:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/16 v16, 0x0

    move-object/from16 v0, v16

    iput-object v0, v15, Landroid/content/pm/ApplicationInfo;->sdcarduseridBL:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/16 v16, 0x0

    move-object/from16 v0, v16

    iput-object v0, v15, Landroid/content/pm/ApplicationInfo;->bluetoothuseridBL:Ljava/lang/String;

    const-string v15, "SEContainer"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, " assignseinfovalue, no default seinfo case, <package name > = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "<seinfo> = null, <category> = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->category:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "<allow category> = null"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v15, 0x0

    goto/16 :goto_6
.end method

.method public static checkContainerAllowCategory(Ljava/lang/String;)Z
    .locals 5

    const/4 v3, 0x1

    const/4 v4, 0x0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0}, Lcom/android/server/pm/SELinuxMMAC;->getSignatureFromPackage(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    new-instance v0, Lcom/android/server/pm/SELinuxMMAC$MDMID;

    invoke-direct {v0}, Lcom/android/server/pm/SELinuxMMAC$MDMID;-><init>()V

    if-eqz v1, :cond_0

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, v0, Lcom/android/server/pm/SELinuxMMAC$MDMID;->certs:Ljava/lang/String;

    iput-object p0, v0, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    sget-object v2, Lcom/android/server/pm/SELinuxMMAC;->BBC_CONTAINER_INFO:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "SELinuxMMAC"

    const-string v4, " Given Package Name has a non-empty BBC Container Allow Category"

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    :goto_0
    return v2

    :cond_0
    const-string v2, "SELinuxMMAC"

    const-string v3, "Given Package Name has returned sigs NULL"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v4

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/android/server/pm/SELinuxMMAC;->GENERIC_CONTAINER_INFO:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "SELinuxMMAC"

    const-string v4, " Given Package Name has a non-empty MyContainer Allow Category"

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    goto :goto_0

    :cond_2
    const-string v2, "SELinuxMMAC"

    const-string v3, "checkContainerAllowCategory, false is returned."

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v4

    goto :goto_0
.end method

.method protected static checkIfSingleContainerOwnerIsBeingAdded(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    const/4 v2, 0x1

    new-instance v1, Lcom/android/server/pm/SELinuxMMAC$MDMID;

    invoke-direct {v1}, Lcom/android/server/pm/SELinuxMMAC$MDMID;-><init>()V

    const/4 v0, 0x0

    iput-object p1, v1, Lcom/android/server/pm/SELinuxMMAC$MDMID;->certs:Ljava/lang/String;

    iput-object p0, v1, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    sget-object v3, Lcom/android/server/pm/SELinuxMMAC;->GENERIC_MDM_INFO:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Lcom/android/server/pm/SELinuxMMAC;->GENERIC_MDM_INFO:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v3

    if-ne v3, v2, :cond_0

    :goto_0
    return v2

    :cond_0
    const-string v2, "SEContainer"

    const-string v3, "checkIfSingleContainerOwnerIsBeingAdded, false is returned"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected static compareHashsets(Ljava/util/HashSet;Ljava/util/HashSet;)Ljava/util/HashSet;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v3, "SELinuxMMAC"

    const-string v4, "Entered compareHashsets"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "SELinuxMMAC"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " Looping over packages in old list: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "SELinuxMMAC"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " Package not found in new list: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "SELinuxMMAC"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " Looping over packages in new list: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "SELinuxMMAC"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " Package not found in old list: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    return-object v0
.end method

.method protected static createBBCContainerID(Ljava/lang/String;Ljava/lang/String;)I
    .locals 10

    const-string v8, "container"

    monitor-enter v8

    const/4 v3, 0x0

    :goto_0
    const/16 v7, 0xc6

    if-ge v3, v7, :cond_4

    :try_start_0
    sget-object v7, Lcom/android/server/pm/SELinuxMMAC;->bbc_containerIDTable:[I

    aget v7, v7, v3

    if-nez v7, :cond_3

    new-instance v0, Lcom/android/server/pm/SELinuxMMAC$MDMID;

    invoke-direct {v0}, Lcom/android/server/pm/SELinuxMMAC$MDMID;-><init>()V

    const/4 v1, 0x0

    iput-object p1, v0, Lcom/android/server/pm/SELinuxMMAC$MDMID;->certs:Ljava/lang/String;

    iput-object p0, v0, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    sget-object v7, Lcom/android/server/pm/SELinuxMMAC;->BBC_MDM_INFO:Ljava/util/HashMap;

    invoke-virtual {v7, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    sget-object v7, Lcom/android/server/pm/SELinuxMMAC;->BBC_MDM_INFO:Ljava/util/HashMap;

    invoke-virtual {v7, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashSet;

    :goto_1
    sget-object v7, Lcom/android/server/pm/SELinuxMMAC;->bbc_containerIDTable:[I

    const/4 v9, 0x1

    aput v9, v7, v3

    add-int/lit16 v7, v3, 0x1f5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v7, Lcom/android/server/pm/SELinuxMMAC;->BBC_MDM_INFO:Ljava/util/HashMap;

    invoke-virtual {v7, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit16 v6, v3, 0x1f5

    add-int/lit16 v7, v3, 0x1f5

    monitor-exit v8

    :goto_2
    return v7

    :cond_0
    sget-object v7, Lcom/android/server/pm/SELinuxMMAC;->BBC_MDM_INFO:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/pm/SELinuxMMAC$MDMID;

    iget-object v7, v7, Lcom/android/server/pm/SELinuxMMAC$MDMID;->certs:Ljava/lang/String;

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/pm/SELinuxMMAC$MDMID;

    iget-object v7, v7, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    invoke-virtual {v7, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const-string v7, "SEContainer"

    const-string v9, "createBBCContainerID failed"

    invoke-static {v7, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, -0x1

    monitor-exit v8

    goto :goto_2

    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    :cond_2
    :try_start_1
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    goto :goto_1

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_4
    const-string v7, "SEContainer"

    const-string v9, "createBBCContainerID, ERROR_CONTAINER_COUNTS_OVERFLOW is returned"

    invoke-static {v7, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, -0x7

    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2
.end method

.method protected static createContainerID(Ljava/lang/String;Ljava/lang/String;)I
    .locals 5

    const/4 v0, 0x0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    const/4 v1, 0x0

    const/4 v4, 0x0

    invoke-static {v4, v2, v3}, Lcom/android/server/ServiceKeeper;->getPackageName(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/android/server/pm/SELinuxMMAC;->isBBCAgent()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/android/server/pm/SELinuxMMAC;->getBBCFlag()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    :cond_0
    if-eqz v0, :cond_1

    invoke-static {p0, p1}, Lcom/android/server/pm/SELinuxMMAC;->createBBCContainerID(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    :goto_0
    return v4

    :cond_1
    const-string v4, "com.samsung.android.irm.service"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {p0, p1}, Lcom/android/server/pm/SELinuxMMAC;->createIRMContainerID(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    goto :goto_0

    :cond_2
    invoke-static {p0, p1}, Lcom/android/server/pm/SELinuxMMAC;->createMyContainerID(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    goto :goto_0
.end method

.method protected static createIRMContainerID(Ljava/lang/String;Ljava/lang/String;)I
    .locals 7

    const/16 v2, 0x2be

    const-string v3, "container"

    monitor-enter v3

    :try_start_0
    sget-object v4, Lcom/android/server/pm/SELinuxMMAC;->irm_containerIDTable:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    if-nez v4, :cond_0

    new-instance v1, Lcom/android/server/pm/SELinuxMMAC$MDMID;

    invoke-direct {v1}, Lcom/android/server/pm/SELinuxMMAC$MDMID;-><init>()V

    const/4 v0, 0x0

    iput-object p1, v1, Lcom/android/server/pm/SELinuxMMAC$MDMID;->certs:Ljava/lang/String;

    iput-object p0, v1, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sget-object v4, Lcom/android/server/pm/SELinuxMMAC;->irm_containerIDTable:[I

    const/4 v5, 0x0

    const/4 v6, 0x1

    aput v6, v4, v5

    const/16 v4, 0x2be

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/android/server/pm/SELinuxMMAC;->GENERIC_MDM_INFO:Ljava/util/HashMap;

    invoke-virtual {v4, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v3

    :goto_0
    return v2

    :cond_0
    const-string v2, "SEContainer"

    const-string v4, "create IRMContainerID, ERROR_CONTAINER_COUNTS_OVERFLOW is returned"

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x7

    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method protected static createMyContainerID(Ljava/lang/String;Ljava/lang/String;)I
    .locals 10

    const-string v8, "container"

    monitor-enter v8

    const/4 v3, 0x0

    :goto_0
    const/16 v7, 0x12c

    if-ge v3, v7, :cond_4

    :try_start_0
    sget-object v7, Lcom/android/server/pm/SELinuxMMAC;->generic_containerIDTable:[I

    aget v7, v7, v3

    if-nez v7, :cond_3

    new-instance v2, Lcom/android/server/pm/SELinuxMMAC$MDMID;

    invoke-direct {v2}, Lcom/android/server/pm/SELinuxMMAC$MDMID;-><init>()V

    const/4 v0, 0x0

    iput-object p1, v2, Lcom/android/server/pm/SELinuxMMAC$MDMID;->certs:Ljava/lang/String;

    iput-object p0, v2, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    sget-object v7, Lcom/android/server/pm/SELinuxMMAC;->GENERIC_MDM_INFO:Ljava/util/HashMap;

    invoke-virtual {v7, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    sget-object v7, Lcom/android/server/pm/SELinuxMMAC;->GENERIC_MDM_INFO:Ljava/util/HashMap;

    invoke-virtual {v7, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    :goto_1
    sget-object v7, Lcom/android/server/pm/SELinuxMMAC;->generic_containerIDTable:[I

    const/4 v9, 0x1

    aput v9, v7, v3

    add-int/lit16 v7, v3, 0xc9

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v7, Lcom/android/server/pm/SELinuxMMAC;->GENERIC_MDM_INFO:Ljava/util/HashMap;

    invoke-virtual {v7, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit16 v6, v3, 0xc9

    add-int/lit16 v7, v3, 0xc9

    monitor-exit v8

    :goto_2
    return v7

    :cond_0
    sget-object v7, Lcom/android/server/pm/SELinuxMMAC;->GENERIC_MDM_INFO:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/pm/SELinuxMMAC$MDMID;

    iget-object v7, v7, Lcom/android/server/pm/SELinuxMMAC$MDMID;->certs:Ljava/lang/String;

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/pm/SELinuxMMAC$MDMID;

    iget-object v7, v7, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    invoke-virtual {v7, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const-string v7, "SEContainer"

    const-string v9, "createMyContainerID failed"

    invoke-static {v7, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, -0x1

    monitor-exit v8

    goto :goto_2

    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    :cond_2
    :try_start_1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    goto :goto_1

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_4
    const-string v7, "SEContainer"

    const-string v9, "createMyContainerID, ERROR_CONTAINER_COUNTS_OVERFLOW is returned"

    invoke-static {v7, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, -0x7

    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2
.end method

.method private static dumpHash(Ljava/io/File;[B)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v2, 0x0

    :try_start_0
    const-string/jumbo v3, "seapp_hash"

    const-string v4, ".journal"

    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    invoke-static {v3, v4, v5}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/io/File;->setReadable(Z)Z

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v1, p1}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/FileDescriptor;->sync()V

    invoke-virtual {v2, p0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v3

    if-nez v3, :cond_1

    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failure renaming "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v3

    move-object v0, v1

    :goto_0
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :cond_0
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v3

    :cond_1
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :cond_2
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-void

    :catchall_1
    move-exception v3

    goto :goto_0
.end method

.method public static findMacPermEntry(Ljava/lang/String;Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;
    .locals 2

    const/4 v1, 0x1

    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {p1, v0}, Lcom/android/server/pm/SELinuxMMAC;->getApplicationInfo(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    return-object v1
.end method

.method private static flushInstallPolicy()V
    .locals 16

    :try_start_0
    sget-object v13, Lcom/android/server/pm/SELinuxMMAC;->SIG_POLICY:Ljava/util/HashMap;

    invoke-virtual {v13}, Ljava/util/HashMap;->clear()V

    sget-object v13, Lcom/android/server/pm/SELinuxMMAC;->BBC_CONTAINER_INFO:Ljava/util/HashMap;

    invoke-virtual {v13}, Ljava/util/HashMap;->clear()V

    sget-object v13, Lcom/android/server/pm/SELinuxMMAC;->BBC_MDM_INFO:Ljava/util/HashMap;

    invoke-virtual {v13}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    const-string v13, "SELinuxMMAC"

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    :try_start_1
    sget-object v13, Lcom/android/server/pm/SELinuxMMAC;->BBC_MDM_INFO:Ljava/util/HashMap;

    invoke-virtual {v13}, Ljava/util/HashMap;->clear()V

    sget-object v13, Lcom/android/server/pm/SELinuxMMAC;->GENERIC_CONTAINER_INFO:Ljava/util/HashMap;

    invoke-virtual {v13}, Ljava/util/HashMap;->clear()V

    sget-object v13, Lcom/android/server/pm/SELinuxMMAC;->GENERIC_MDM_INFO:Ljava/util/HashMap;

    invoke-virtual {v13}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/util/HashSet;->clear()V

    goto :goto_1

    :cond_2
    sget-object v13, Lcom/android/server/pm/SELinuxMMAC;->GENERIC_MDM_INFO:Ljava/util/HashMap;

    invoke-virtual {v13}, Ljava/util/HashMap;->clear()V

    const/4 v10, 0x0

    :goto_2
    sget-object v13, Lcom/android/server/pm/SELinuxMMAC;->SBALISTS:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v10, v13, :cond_3

    sget-object v13, Lcom/android/server/pm/SELinuxMMAC;->SBALISTS:Ljava/util/ArrayList;

    invoke-virtual {v13, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/HashSet;

    invoke-virtual {v13}, Ljava/util/HashSet;->clear()V

    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_3
    sget-object v13, Lcom/android/server/pm/SELinuxMMAC;->SBALISTS:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->clear()V

    const/4 v10, 0x0

    :goto_3
    sget-object v13, Lcom/android/server/pm/SELinuxMMAC;->WHITELISTS:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v10, v13, :cond_5

    sget-object v13, Lcom/android/server/pm/SELinuxMMAC;->WHITELISTS:Ljava/util/ArrayList;

    invoke-virtual {v13, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/HashMap;

    invoke-virtual {v13}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/HashSet;

    invoke-virtual {v12}, Ljava/util/HashSet;->clear()V

    goto :goto_4

    :cond_4
    sget-object v13, Lcom/android/server/pm/SELinuxMMAC;->WHITELISTS:Ljava/util/ArrayList;

    invoke-virtual {v13, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/HashMap;

    invoke-virtual {v13}, Ljava/util/HashMap;->clear()V

    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    :cond_5
    const/4 v10, 0x0

    :goto_5
    sget-object v13, Lcom/android/server/pm/SELinuxMMAC;->BLACKLISTS:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v10, v13, :cond_7

    sget-object v13, Lcom/android/server/pm/SELinuxMMAC;->BLACKLISTS:Ljava/util/ArrayList;

    invoke-virtual {v13, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/HashMap;

    invoke-virtual {v13}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_6
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/HashSet;

    invoke-virtual {v12}, Ljava/util/HashSet;->clear()V

    goto :goto_6

    :cond_6
    sget-object v13, Lcom/android/server/pm/SELinuxMMAC;->BLACKLISTS:Ljava/util/ArrayList;

    invoke-virtual {v13, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/HashMap;

    invoke-virtual {v13}, Ljava/util/HashMap;->clear()V

    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    :cond_7
    invoke-static {}, Lcom/android/server/pm/SELinuxMMAC;->setupResourceLists()V

    sget-object v13, Lcom/android/server/pm/SELinuxMMAC;->irm_containerIDTable:[I

    const/4 v14, 0x0

    const/4 v15, 0x0

    aput v15, v13, v14

    const/4 v8, 0x0

    :goto_7
    const/16 v13, 0xc6

    if-ge v8, v13, :cond_8

    sget-object v13, Lcom/android/server/pm/SELinuxMMAC;->bbc_containerIDTable:[I

    const/4 v14, 0x0

    aput v14, v13, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    :cond_8
    const/4 v8, 0x0

    :goto_8
    const/16 v13, 0x12c

    if-ge v8, v13, :cond_0

    sget-object v13, Lcom/android/server/pm/SELinuxMMAC;->generic_containerIDTable:[I

    const/4 v14, 0x0

    aput v14, v13, v8
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v8, v8, 0x1

    goto :goto_8
.end method

.method public static getApplicationInfo(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;
    .locals 12

    new-instance v0, Landroid/content/pm/ApplicationInfo;

    invoke-direct {v0}, Landroid/content/pm/ApplicationInfo;-><init>()V

    array-length v10, p1

    new-array v9, v10, [Landroid/content/pm/Signature;

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    array-length v10, p1

    if-ge v3, v10, :cond_0

    new-instance v10, Landroid/content/pm/Signature;

    aget-object v11, p1, v3

    invoke-direct {v10, v11}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    aput-object v10, v9, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    move-object v1, v9

    array-length v5, v1

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v5, :cond_8

    aget-object v7, v1, v4

    if-nez v7, :cond_2

    :cond_1
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    sget-object v10, Lcom/android/server/pm/SELinuxMMAC;->SIG_POLICY:Ljava/util/HashMap;

    invoke-virtual {v10, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    sget-object v10, Lcom/android/server/pm/SELinuxMMAC;->SIG_POLICY:Ljava/util/HashMap;

    invoke-virtual {v10, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/pm/SELinuxMMAC$Policy;

    if-eqz v8, :cond_7

    if-eqz p0, :cond_7

    invoke-virtual {v8, p0}, Lcom/android/server/pm/SELinuxMMAC$Policy;->checkPolicy(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v0, Landroid/content/pm/ApplicationInfo;->bbcseinfo:Ljava/lang/String;

    iget v10, v8, Lcom/android/server/pm/SELinuxMMAC$Policy;->category:I

    iput v10, v0, Landroid/content/pm/ApplicationInfo;->bbccategory:I

    iget-object v10, v8, Lcom/android/server/pm/SELinuxMMAC$Policy;->allowCategory:Ljava/lang/String;

    iput-object v10, v0, Landroid/content/pm/ApplicationInfo;->bbcallowCategory:Ljava/lang/String;

    invoke-virtual {v8, p0}, Lcom/android/server/pm/SELinuxMMAC$Policy;->checkPolicy(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v0, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    iget v10, v8, Lcom/android/server/pm/SELinuxMMAC$Policy;->category:I

    iput v10, v0, Landroid/content/pm/ApplicationInfo;->category:I

    iget-object v10, v8, Lcom/android/server/pm/SELinuxMMAC$Policy;->allowCategory:Ljava/lang/String;

    iput-object v10, v0, Landroid/content/pm/ApplicationInfo;->allowCategory:Ljava/lang/String;

    const/4 v10, 0x0

    iput-object v10, v0, Landroid/content/pm/ApplicationInfo;->allowContainerCategory:Ljava/lang/String;

    const/4 v10, 0x0

    iput v10, v0, Landroid/content/pm/ApplicationInfo;->accessInfo:I

    const/4 v10, 0x0

    iput-object v10, v0, Landroid/content/pm/ApplicationInfo;->sdcarduserid:Ljava/lang/String;

    const/4 v10, 0x0

    iput-object v10, v0, Landroid/content/pm/ApplicationInfo;->bluetoothuserid:Ljava/lang/String;

    const/4 v10, 0x0

    iput-object v10, v0, Landroid/content/pm/ApplicationInfo;->sdcarduseridBL:Ljava/lang/String;

    const/4 v10, 0x0

    iput-object v10, v0, Landroid/content/pm/ApplicationInfo;->bluetoothuseridBL:Ljava/lang/String;

    new-instance v6, Lcom/android/server/pm/SELinuxMMAC$MDMID;

    invoke-direct {v6}, Lcom/android/server/pm/SELinuxMMAC$MDMID;-><init>()V

    invoke-virtual {v7}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v6, Lcom/android/server/pm/SELinuxMMAC$MDMID;->certs:Ljava/lang/String;

    iput-object p0, v6, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    sget-object v10, Lcom/android/server/pm/SELinuxMMAC;->GENERIC_CONTAINER_INFO:Ljava/util/HashMap;

    invoke-virtual {v10, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    sget-object v10, Lcom/android/server/pm/SELinuxMMAC;->GENERIC_CONTAINER_INFO:Ljava/util/HashMap;

    invoke-virtual {v10, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;

    iget v10, v2, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->category:I

    iput v10, v0, Landroid/content/pm/ApplicationInfo;->category:I

    iget-object v10, v2, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->allowCategory:Ljava/lang/String;

    iput-object v10, v0, Landroid/content/pm/ApplicationInfo;->allowCategory:Ljava/lang/String;

    iget-object v10, v2, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->allowContainerCategory:Ljava/lang/String;

    iput-object v10, v0, Landroid/content/pm/ApplicationInfo;->allowContainerCategory:Ljava/lang/String;

    iget-object v10, v2, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->seInfo:Ljava/lang/String;

    iput-object v10, v0, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    iget v10, v2, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->accessInfo:I

    iput v10, v0, Landroid/content/pm/ApplicationInfo;->accessInfo:I

    iget-object v10, v2, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->sdcarduserid:Ljava/lang/String;

    iput-object v10, v0, Landroid/content/pm/ApplicationInfo;->sdcarduserid:Ljava/lang/String;

    iget-object v10, v2, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->bluetoothuserid:Ljava/lang/String;

    iput-object v10, v0, Landroid/content/pm/ApplicationInfo;->bluetoothuserid:Ljava/lang/String;

    iget-object v10, v2, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->sdcarduseridBL:Ljava/lang/String;

    iput-object v10, v0, Landroid/content/pm/ApplicationInfo;->sdcarduseridBL:Ljava/lang/String;

    iget-object v10, v2, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->bluetoothuseridBL:Ljava/lang/String;

    iput-object v10, v0, Landroid/content/pm/ApplicationInfo;->bluetoothuseridBL:Ljava/lang/String;

    :cond_3
    sget-object v10, Lcom/android/server/pm/SELinuxMMAC;->BBC_CONTAINER_INFO:Ljava/util/HashMap;

    invoke-virtual {v10, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    const/4 v2, 0x0

    sget-object v10, Lcom/android/server/pm/SELinuxMMAC;->BBC_CONTAINER_INFO:Ljava/util/HashMap;

    invoke-virtual {v10, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;

    if-eqz v2, :cond_4

    iget v10, v2, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->bbccategory:I

    iput v10, v0, Landroid/content/pm/ApplicationInfo;->bbccategory:I

    iget-object v10, v2, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->bbcallowCategory:Ljava/lang/String;

    iput-object v10, v0, Landroid/content/pm/ApplicationInfo;->bbcallowCategory:Ljava/lang/String;

    iget-object v10, v2, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->bbcseInfo:Ljava/lang/String;

    iput-object v10, v0, Landroid/content/pm/ApplicationInfo;->bbcseinfo:Ljava/lang/String;

    iget-object v10, v0, Landroid/content/pm/ApplicationInfo;->sdcarduserid:Ljava/lang/String;

    if-nez v10, :cond_6

    iget-object v10, v2, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->sdcarduserid:Ljava/lang/String;

    iput-object v10, v0, Landroid/content/pm/ApplicationInfo;->sdcarduserid:Ljava/lang/String;

    :cond_4
    :goto_3
    const-string/jumbo v10, "sec_container_"

    invoke-virtual {p0, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    iget-object v10, v0, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    invoke-static {v10}, Lcom/android/server/pm/SELinuxMMAC;->isSystemApp(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    const-string v10, "container"

    iput-object v10, v0, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    invoke-static {p0}, Lcom/android/server/pm/SELinuxMMAC;->getPackageLevelbyKey(Ljava/lang/String;)I

    move-result v10

    iput v10, v0, Landroid/content/pm/ApplicationInfo;->category:I

    iget v10, v0, Landroid/content/pm/ApplicationInfo;->category:I

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v0, Landroid/content/pm/ApplicationInfo;->allowCategory:Ljava/lang/String;

    :cond_5
    :goto_4
    return-object v0

    :cond_6
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, v0, Landroid/content/pm/ApplicationInfo;->sdcarduserid:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v2, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->sdcarduserid:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v0, Landroid/content/pm/ApplicationInfo;->sdcarduserid:Ljava/lang/String;

    goto :goto_3

    :cond_7
    const-string v10, "SELinuxMMAC"

    const-string v11, "Install policy instance is null"

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_8
    sget-object v10, Lcom/android/server/pm/SELinuxMMAC;->SIG_POLICY:Ljava/util/HashMap;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    sget-object v10, Lcom/android/server/pm/SELinuxMMAC;->SIG_POLICY:Ljava/util/HashMap;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/pm/SELinuxMMAC$Policy;

    # getter for: Lcom/android/server/pm/SELinuxMMAC$Policy;->seinfo:Ljava/lang/String;
    invoke-static {v10}, Lcom/android/server/pm/SELinuxMMAC$Policy;->access$000(Lcom/android/server/pm/SELinuxMMAC$Policy;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v0, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    sget-object v10, Lcom/android/server/pm/SELinuxMMAC;->SIG_POLICY:Ljava/util/HashMap;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/pm/SELinuxMMAC$Policy;

    # getter for: Lcom/android/server/pm/SELinuxMMAC$Policy;->seinfo:Ljava/lang/String;
    invoke-static {v10}, Lcom/android/server/pm/SELinuxMMAC$Policy;->access$000(Lcom/android/server/pm/SELinuxMMAC$Policy;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v0, Landroid/content/pm/ApplicationInfo;->bbcseinfo:Ljava/lang/String;

    sget-object v10, Lcom/android/server/pm/SELinuxMMAC;->SIG_POLICY:Ljava/util/HashMap;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/pm/SELinuxMMAC$Policy;

    iget v10, v10, Lcom/android/server/pm/SELinuxMMAC$Policy;->category:I

    iput v10, v0, Landroid/content/pm/ApplicationInfo;->category:I

    sget-object v10, Lcom/android/server/pm/SELinuxMMAC;->SIG_POLICY:Ljava/util/HashMap;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/pm/SELinuxMMAC$Policy;

    iget v10, v10, Lcom/android/server/pm/SELinuxMMAC$Policy;->category:I

    iput v10, v0, Landroid/content/pm/ApplicationInfo;->bbccategory:I

    sget-object v10, Lcom/android/server/pm/SELinuxMMAC;->SIG_POLICY:Ljava/util/HashMap;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/pm/SELinuxMMAC$Policy;

    iget-object v10, v10, Lcom/android/server/pm/SELinuxMMAC$Policy;->allowCategory:Ljava/lang/String;

    iput-object v10, v0, Landroid/content/pm/ApplicationInfo;->allowCategory:Ljava/lang/String;

    sget-object v10, Lcom/android/server/pm/SELinuxMMAC;->SIG_POLICY:Ljava/util/HashMap;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/pm/SELinuxMMAC$Policy;

    iget-object v10, v10, Lcom/android/server/pm/SELinuxMMAC$Policy;->allowCategory:Ljava/lang/String;

    iput-object v10, v0, Landroid/content/pm/ApplicationInfo;->bbcallowCategory:Ljava/lang/String;

    const/4 v10, 0x0

    iput-object v10, v0, Landroid/content/pm/ApplicationInfo;->allowContainerCategory:Ljava/lang/String;

    const/4 v10, 0x0

    iput v10, v0, Landroid/content/pm/ApplicationInfo;->accessInfo:I

    const/4 v10, 0x0

    iput-object v10, v0, Landroid/content/pm/ApplicationInfo;->sdcarduserid:Ljava/lang/String;

    const/4 v10, 0x0

    iput-object v10, v0, Landroid/content/pm/ApplicationInfo;->bluetoothuserid:Ljava/lang/String;

    const/4 v10, 0x0

    iput-object v10, v0, Landroid/content/pm/ApplicationInfo;->sdcarduseridBL:Ljava/lang/String;

    const/4 v10, 0x0

    iput-object v10, v0, Landroid/content/pm/ApplicationInfo;->bluetoothuseridBL:Ljava/lang/String;

    goto/16 :goto_4

    :cond_9
    const-string/jumbo v10, "untrusted"

    iput-object v10, v0, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    const-string/jumbo v10, "untrusted"

    iput-object v10, v0, Landroid/content/pm/ApplicationInfo;->bbcseinfo:Ljava/lang/String;

    const/16 v10, 0x3ff

    iput v10, v0, Landroid/content/pm/ApplicationInfo;->category:I

    const/16 v10, 0x3ff

    iput v10, v0, Landroid/content/pm/ApplicationInfo;->bbccategory:I

    const/4 v10, 0x0

    iput-object v10, v0, Landroid/content/pm/ApplicationInfo;->allowCategory:Ljava/lang/String;

    const/4 v10, 0x0

    iput-object v10, v0, Landroid/content/pm/ApplicationInfo;->bbcallowCategory:Ljava/lang/String;

    const/4 v10, 0x0

    iput-object v10, v0, Landroid/content/pm/ApplicationInfo;->allowContainerCategory:Ljava/lang/String;

    const/4 v10, 0x0

    iput v10, v0, Landroid/content/pm/ApplicationInfo;->accessInfo:I

    const/4 v10, 0x0

    iput-object v10, v0, Landroid/content/pm/ApplicationInfo;->sdcarduserid:Ljava/lang/String;

    const/4 v10, 0x0

    iput-object v10, v0, Landroid/content/pm/ApplicationInfo;->bluetoothuserid:Ljava/lang/String;

    const/4 v10, 0x0

    iput-object v10, v0, Landroid/content/pm/ApplicationInfo;->sdcarduseridBL:Ljava/lang/String;

    const/4 v10, 0x0

    iput-object v10, v0, Landroid/content/pm/ApplicationInfo;->bluetoothuseridBL:Ljava/lang/String;

    goto/16 :goto_4
.end method

.method protected static getBBCContainerIDs(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashSet;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const-string v3, "container"

    monitor-enter v3

    :try_start_0
    new-instance v0, Lcom/android/server/pm/SELinuxMMAC$MDMID;

    invoke-direct {v0}, Lcom/android/server/pm/SELinuxMMAC$MDMID;-><init>()V

    iput-object p1, v0, Lcom/android/server/pm/SELinuxMMAC$MDMID;->certs:Ljava/lang/String;

    iput-object p0, v0, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    sget-object v2, Lcom/android/server/pm/SELinuxMMAC;->BBC_MDM_INFO:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashSet;

    monitor-exit v3

    return-object v1

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public static getBBCFlag()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/pm/SELinuxMMAC;->bbc_flag:Z

    return v0
.end method

.method public static getBlacklist(II)Ljava/util/HashSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/android/server/pm/SELinuxMMAC;->BLACKLISTS:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    return-object v0
.end method

.method public static getContainerAllowCategory(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v1, 0x0

    new-instance v0, Lcom/android/server/pm/SELinuxMMAC$MDMID;

    invoke-direct {v0}, Lcom/android/server/pm/SELinuxMMAC$MDMID;-><init>()V

    iput-object p1, v0, Lcom/android/server/pm/SELinuxMMAC$MDMID;->certs:Ljava/lang/String;

    iput-object p0, v0, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    sget-object v2, Lcom/android/server/pm/SELinuxMMAC;->BBC_CONTAINER_INFO:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/server/pm/SELinuxMMAC;->BBC_CONTAINER_INFO:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;

    iget-object v2, v1, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->allowContainerCategory:Ljava/lang/String;

    :goto_0
    return-object v2

    :cond_0
    sget-object v2, Lcom/android/server/pm/SELinuxMMAC;->GENERIC_CONTAINER_INFO:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/android/server/pm/SELinuxMMAC;->GENERIC_CONTAINER_INFO:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;

    iget-object v2, v1, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->allowContainerCategory:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected static getContainerAllowPackageNamesFromSEContainer(III)[Ljava/lang/String;
    .locals 15

    const/4 v2, 0x0

    const/4 v9, 0x0

    const-string v13, "container"

    monitor-enter v13

    const/4 v5, 0x0

    :try_start_0
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/android/server/pm/SELinuxMMAC;->isBBCAgent()Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-static {}, Lcom/android/server/pm/SELinuxMMAC;->getBBCFlag()Z

    move-result v12

    if-eqz v12, :cond_0

    const/4 v2, 0x1

    :cond_0
    if-eqz v2, :cond_4

    sget-object v12, Lcom/android/server/pm/SELinuxMMAC;->BBC_CONTAINER_INFO:Ljava/util/HashMap;

    invoke-virtual {v12}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;

    iget-object v5, v12, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->allowContainerCategory:Ljava/lang/String;

    const/4 v11, 0x0

    if-eqz v5, :cond_1

    const-string v12, ","

    invoke-virtual {v5, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    move-object v1, v11

    array-length v8, v1

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v8, :cond_1

    aget-object v3, v1, v7

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    const/4 v12, 0x1

    move/from16 v0, p1

    if-ne v0, v12, :cond_2

    const/4 v12, 0x2

    move/from16 v0, p2

    if-ne v0, v12, :cond_2

    const/16 v12, 0x66

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/pm/SELinuxMMAC$MDMID;

    iget-object v12, v12, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    const/4 v12, 0x2

    move/from16 v0, p1

    if-ne v0, v12, :cond_3

    const/4 v12, 0x4

    move/from16 v0, p2

    if-ne v0, v12, :cond_3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    invoke-static {v12}, Lcom/android/server/pm/SELinuxMMAC;->isMyContainerID(I)Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/pm/SELinuxMMAC$MDMID;

    iget-object v12, v12, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_4
    sget-object v12, Lcom/android/server/pm/SELinuxMMAC;->GENERIC_CONTAINER_INFO:Ljava/util/HashMap;

    invoke-virtual {v12}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v9

    goto :goto_0

    :cond_5
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-lez v12, :cond_6

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v12

    new-array v12, v12, [Ljava/lang/String;

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Ljava/lang/String;

    monitor-exit v13

    :goto_2
    return-object v12

    :cond_6
    const-string v12, "SEContainer"

    const-string/jumbo v14, "getContainerAllowPackageNamesFromSEContainer, null is returned"

    invoke-static {v12, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v12, 0x0

    monitor-exit v13

    goto :goto_2

    :catchall_0
    move-exception v12

    monitor-exit v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v12
.end method

.method protected static getMyContainerIDs(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashSet;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const-string v3, "container"

    monitor-enter v3

    :try_start_0
    new-instance v1, Lcom/android/server/pm/SELinuxMMAC$MDMID;

    invoke-direct {v1}, Lcom/android/server/pm/SELinuxMMAC$MDMID;-><init>()V

    iput-object p1, v1, Lcom/android/server/pm/SELinuxMMAC$MDMID;->certs:Ljava/lang/String;

    iput-object p0, v1, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    sget-object v2, Lcom/android/server/pm/SELinuxMMAC;->GENERIC_MDM_INFO:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    monitor-exit v3

    return-object v0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private static getPackageLevelbyKey(Ljava/lang/String;)I
    .locals 8

    const/16 v0, 0x3ff

    if-eqz p0, :cond_0

    const-string/jumbo v5, "sec_container_"

    invoke-virtual {p0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v5, 0x2e

    invoke-virtual {p0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const-string/jumbo v5, "sec_container_"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    :try_start_0
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v3

    const-string v5, "SELinuxMMAC"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " does not define category."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected static getPackageNamesFromSEContainerID(III)[Ljava/lang/String;
    .locals 8

    const/4 v5, 0x0

    const-string v6, "container"

    monitor-enter v6

    const/4 v4, 0x2

    if-ne p1, v4, :cond_0

    :try_start_0
    invoke-static {p0}, Lcom/android/server/pm/SELinuxMMAC;->isMyContainerID(I)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "SEContainer"

    const-string v7, "Given Container ID is not my Container ID - Returning Null"

    invoke-static {v4, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v6

    move-object v4, v5

    :goto_0
    return-object v4

    :cond_0
    const/4 v4, 0x1

    if-ne p1, v4, :cond_1

    const/16 v4, 0x66

    if-eq p0, v4, :cond_3

    const-string v4, "SEContainer"

    const-string v7, "Given Container ID is not GSD_Category - Returning Null"

    invoke-static {v4, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v6

    move-object v4, v5

    goto :goto_0

    :cond_1
    const/4 v4, 0x4

    if-ne p1, v4, :cond_2

    const/16 v4, 0x2be

    if-eq p0, v4, :cond_3

    const-string v4, "SEContainer"

    const-string v7, "Given Container ID is not IRM Container ID - Returning Null"

    invoke-static {v4, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v6

    move-object v4, v5

    goto :goto_0

    :cond_2
    const/4 v4, 0x3

    if-ne p1, v4, :cond_3

    invoke-static {p0}, Lcom/android/server/pm/SELinuxMMAC;->isBBCContainerID(I)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "SEContainer"

    const-string v7, "Given Container ID is not BBC Container ID - Returning Null"

    invoke-static {v4, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v6

    move-object v4, v5

    goto :goto_0

    :cond_3
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    const/4 v4, 0x5

    if-ne p2, v4, :cond_6

    sget-object v4, Lcom/android/server/pm/SELinuxMMAC;->BBC_CONTAINER_INFO:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;

    iget v4, v4, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->category:I

    if-eq v4, p0, :cond_5

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;

    iget v4, v4, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->bbccategory:I

    if-ne v4, p0, :cond_4

    :cond_5
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/SELinuxMMAC$MDMID;

    iget-object v4, v4, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :catchall_0
    move-exception v4

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    :cond_6
    :try_start_1
    sget-object v4, Lcom/android/server/pm/SELinuxMMAC;->GENERIC_CONTAINER_INFO:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    goto :goto_1

    :cond_7
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_8

    const-string v4, "SEContainer"

    const-string/jumbo v7, "getPackageNamesFromSEContainerID, packageNames.size is 0"

    invoke-static {v4, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v6

    move-object v4, v5

    goto/16 :goto_0

    :cond_8
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method public static getSBAlist(I)Ljava/util/HashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/android/server/pm/SELinuxMMAC;->SBALISTS:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    return-object v0
.end method

.method protected static getSEContainerIDFromPackageName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)I
    .locals 11

    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v5, -0x1

    const/4 v2, 0x0

    const-string v6, "container"

    monitor-enter v6

    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p2}, Lcom/android/server/pm/SELinuxMMAC;->getSignatureFromPackage(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    new-instance v1, Lcom/android/server/pm/SELinuxMMAC$MDMID;

    invoke-direct {v1}, Lcom/android/server/pm/SELinuxMMAC$MDMID;-><init>()V

    if-eqz v3, :cond_4

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, v1, Lcom/android/server/pm/SELinuxMMAC$MDMID;->certs:Ljava/lang/String;

    iput-object p2, v1, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    if-eq p3, v8, :cond_0

    if-eq p3, v7, :cond_0

    if-ne p3, v10, :cond_5

    :cond_0
    sget-object v4, Lcom/android/server/pm/SELinuxMMAC;->GENERIC_CONTAINER_INFO:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;

    move-object v2, v0

    :cond_1
    :goto_0
    if-eq p3, v8, :cond_2

    if-eq p3, v9, :cond_2

    if-ne p3, v10, :cond_7

    :cond_2
    if-eqz v2, :cond_8

    iget v4, v2, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->category:I

    invoke-static {v4}, Lcom/android/server/pm/SELinuxMMAC;->isMyContainerID(I)Z

    move-result v4

    if-nez v4, :cond_3

    iget v4, v2, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->category:I

    invoke-static {v4}, Lcom/android/server/pm/SELinuxMMAC;->isBBCContainerID(I)Z

    move-result v4

    if-nez v4, :cond_3

    iget v4, v2, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->category:I

    const/16 v7, 0x2be

    if-ne v4, v7, :cond_8

    :cond_3
    iget v4, v2, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->category:I

    invoke-static {p0, p1, v4}, Lcom/android/server/pm/SELinuxMMAC;->isContainerCreatedbyCaller(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_6

    iget v4, v2, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->category:I

    monitor-exit v6

    :goto_1
    return v4

    :cond_4
    const-string v4, "SEContainer"

    const-string/jumbo v7, "getSEContainerIDFromPackageName failed"

    invoke-static {v4, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v6

    move v4, v5

    goto :goto_1

    :cond_5
    if-ne p3, v9, :cond_1

    sget-object v4, Lcom/android/server/pm/SELinuxMMAC;->BBC_CONTAINER_INFO:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;

    move-object v2, v0

    goto :goto_0

    :cond_6
    const-string v4, "SEContainer"

    const-string/jumbo v7, "getSEContainerIDFromPackageName failed"

    invoke-static {v4, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v6

    move v4, v5

    goto :goto_1

    :cond_7
    if-ne p3, v7, :cond_8

    if-eqz v2, :cond_8

    iget v4, v2, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->category:I

    const/16 v7, 0x66

    if-ne v4, v7, :cond_8

    iget v4, v2, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->category:I

    monitor-exit v6

    goto :goto_1

    :catchall_0
    move-exception v4

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    :cond_8
    :try_start_1
    const-string v4, "SEContainer"

    const-string/jumbo v7, "getSEContainerIDFromPackageName failed"

    invoke-static {v4, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v4, v5

    goto :goto_1
.end method

.method protected static getSEContainerIDsFromContainerAllowPackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)[I
    .locals 15

    const/4 v2, 0x0

    const/4 v9, 0x0

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const-string v13, "container"

    monitor-enter v13

    :try_start_0
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    invoke-static/range {p2 .. p2}, Lcom/android/server/pm/SELinuxMMAC;->getSignatureFromPackage(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v10

    new-instance v8, Lcom/android/server/pm/SELinuxMMAC$MDMID;

    invoke-direct {v8}, Lcom/android/server/pm/SELinuxMMAC$MDMID;-><init>()V

    if-eqz v10, :cond_2

    const/4 v12, 0x0

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    iput-object v12, v8, Lcom/android/server/pm/SELinuxMMAC$MDMID;->certs:Ljava/lang/String;

    move-object/from16 v0, p2

    iput-object v0, v8, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    invoke-static {}, Lcom/android/server/pm/SELinuxMMAC;->isBBCAgent()Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-static {}, Lcom/android/server/pm/SELinuxMMAC;->getBBCFlag()Z

    move-result v12

    if-eqz v12, :cond_0

    const/4 v2, 0x1

    :cond_0
    if-eqz v2, :cond_3

    sget-object v12, Lcom/android/server/pm/SELinuxMMAC;->BBC_CONTAINER_INFO:Ljava/util/HashMap;

    invoke-virtual {v12, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    move-object v0, v12

    check-cast v0, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;

    move-object v9, v0

    :goto_0
    iget-object v5, v9, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->allowContainerCategory:Ljava/lang/String;

    const/4 v11, 0x0

    if-eqz v5, :cond_1

    const-string v12, ","

    invoke-virtual {v5, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    :cond_1
    if-eqz v11, :cond_8

    move-object v1, v11

    array-length v7, v1

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v7, :cond_7

    aget-object v3, v1, v6

    const/4 v12, 0x1

    move/from16 v0, p3

    if-ne v0, v12, :cond_4

    const/4 v12, 0x2

    move/from16 v0, p4

    if-ne v0, v12, :cond_4

    const/16 v12, 0x66

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    const/16 v12, 0x66

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v4}, Lcom/android/server/pm/SELinuxMMAC;->arraylist_to_int_array(Ljava/util/ArrayList;)[I

    move-result-object v12

    monitor-exit v13

    :goto_2
    return-object v12

    :cond_2
    const-string v12, "SEContainer"

    const-string v14, "Given Package Name has returned sigs NULL"

    invoke-static {v12, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v12, 0x0

    monitor-exit v13

    goto :goto_2

    :catchall_0
    move-exception v12

    monitor-exit v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v12

    :cond_3
    :try_start_1
    sget-object v12, Lcom/android/server/pm/SELinuxMMAC;->GENERIC_CONTAINER_INFO:Ljava/util/HashMap;

    invoke-virtual {v12, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    move-object v0, v12

    check-cast v0, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;

    move-object v9, v0

    goto :goto_0

    :cond_4
    const/4 v12, 0x2

    move/from16 v0, p3

    if-ne v0, v12, :cond_5

    const/4 v12, 0x4

    move/from16 v0, p4

    if-ne v0, v12, :cond_5

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    invoke-static {v12}, Lcom/android/server/pm/SELinuxMMAC;->isMyContainerID(I)Z

    move-result v12

    if-eqz v12, :cond_5

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    move-object/from16 v0, p1

    invoke-static {p0, v0, v12}, Lcom/android/server/pm/SELinuxMMAC;->isContainerCreatedbyCaller(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v12

    if-nez v12, :cond_6

    const-string v12, "SELinuxMMAC"

    const-string v14, "Given Container ID not created by Caller - Returning Refused"

    invoke-static {v12, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_6
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_7
    invoke-static {v4}, Lcom/android/server/pm/SELinuxMMAC;->arraylist_to_int_array(Ljava/util/ArrayList;)[I

    move-result-object v12

    monitor-exit v13

    goto :goto_2

    :cond_8
    const-string v12, "SEContainer"

    const-string v14, "Exit getSEContainerIDsFromContainerAllowPackage in SELinuxMMAC"

    invoke-static {v12, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v12, 0x0

    monitor-exit v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2
.end method

.method public static getSignatureFromPackage(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v6, 0x0

    if-nez p0, :cond_1

    const-string v7, "SELinuxMMAC"

    const-string/jumbo v8, "getSignatureFromPackage: packageName is null"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v6

    :cond_0
    :goto_0
    return-object v5

    :cond_1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    const/4 v2, 0x0

    const/16 v7, 0x40

    :try_start_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v8

    invoke-interface {v3, p0, v7, v8}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v4, v2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_1
    array-length v7, v4

    if-ge v1, v7, :cond_0

    aget-object v7, v4, v1

    invoke-virtual {v7}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    const-string v7, "SELinuxMMAC"

    const-string/jumbo v8, "getSignatureFromPackage: pi is null"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v5, v6

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v5, v6

    goto :goto_0
.end method

.method public static getWhitelist(II)Ljava/util/HashSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/android/server/pm/SELinuxMMAC;->WHITELISTS:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    return-object v0
.end method

.method public static hasBBCContainers()Z
    .locals 1

    sget-object v0, Lcom/android/server/pm/SELinuxMMAC;->BBC_MDM_INFO:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public static hasGenericContainers()Z
    .locals 3

    const/4 v1, 0x1

    const/4 v0, 0x0

    :goto_0
    const/16 v2, 0x12c

    if-ge v0, v2, :cond_1

    sget-object v2, Lcom/android/server/pm/SELinuxMMAC;->generic_containerIDTable:[I

    aget v2, v2, v0

    if-ne v2, v1, :cond_0

    :goto_1
    return v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static hasSEContainers()Z
    .locals 6

    const/4 v3, 0x0

    sget-object v4, Lcom/android/server/pm/SELinuxMMAC;->GENERIC_MDM_INFO:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    sget-object v4, Lcom/android/server/pm/SELinuxMMAC;->GENERIC_MDM_INFO:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/SELinuxMMAC$MDMID;

    iget-object v4, v4, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    const-string v5, "com.samsung.android.irm.service"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    return v3
.end method

.method private static hashset_to_int_array(Ljava/util/HashSet;)[I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;)[I"
        }
    .end annotation

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/HashSet;->size()I

    move-result v4

    if-nez v4, :cond_2

    :cond_0
    const/4 v0, 0x0

    :cond_1
    return-object v0

    :cond_2
    invoke-virtual {p0}, Ljava/util/HashSet;->size()I

    move-result v4

    new-array v0, v4, [I

    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    add-int/lit8 v2, v1, 0x1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    aput v4, v0, v1

    move v1, v2

    goto :goto_0
.end method

.method public static isBBCAgent()Z
    .locals 1

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->isBBCAgent()Z

    move-result v0

    return v0
.end method

.method public static isBBCContainerID(I)Z
    .locals 2

    const/16 v0, 0x1f5

    if-lt p0, v0, :cond_0

    const/16 v0, 0x2bb

    if-ge p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const-string v0, "SELinuxMMAC"

    const-string/jumbo v1, "isBBCContainerID, false is returned"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isContainerCreatedbyCaller(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 5

    const/4 v1, 0x0

    new-instance v2, Lcom/android/server/pm/SELinuxMMAC$MDMID;

    invoke-direct {v2}, Lcom/android/server/pm/SELinuxMMAC$MDMID;-><init>()V

    iput-object p1, v2, Lcom/android/server/pm/SELinuxMMAC$MDMID;->certs:Ljava/lang/String;

    iput-object p0, v2, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/server/pm/SELinuxMMAC;->isBBCAgent()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/android/server/pm/SELinuxMMAC;->getBBCFlag()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    :cond_0
    if-eqz v0, :cond_2

    sget-object v3, Lcom/android/server/pm/SELinuxMMAC;->BBC_MDM_INFO:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashSet;

    :goto_0
    if-nez v1, :cond_1

    :cond_1
    if-eqz v1, :cond_3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x1

    :goto_1
    return v3

    :cond_2
    sget-object v3, Lcom/android/server/pm/SELinuxMMAC;->GENERIC_MDM_INFO:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashSet;

    goto :goto_0

    :cond_3
    const-string v3, "SEContainer"

    const-string/jumbo v4, "isContainerCreatedbyCaller returning false"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    goto :goto_1
.end method

.method public static isMyContainerID(I)Z
    .locals 2

    const/16 v0, 0xc9

    if-lt p0, v0, :cond_0

    const/16 v0, 0x1f5

    if-ge p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const-string v0, "SELinuxMMAC"

    const-string/jumbo v1, "isMyContainerID, false is returned"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected static isSEContainerActivated(I)Z
    .locals 9

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/server/pm/SELinuxMMAC;->isBBCAgent()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-static {}, Lcom/android/server/pm/SELinuxMMAC;->getBBCFlag()Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v0, 0x1

    :cond_0
    const/4 v1, 0x0

    const/4 v4, 0x0

    const-string v7, "container"

    monitor-enter v7

    if-eqz v0, :cond_1

    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    sget-object v6, Lcom/android/server/pm/SELinuxMMAC;->BBC_MDM_INFO:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v1, v2

    :goto_0
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v3, v6, :cond_3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/HashSet;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v4, 0x1

    monitor-exit v7

    move v5, v4

    :goto_2
    return v5

    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    sget-object v6, Lcom/android/server/pm/SELinuxMMAC;->GENERIC_MDM_INFO:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v1, v2

    goto :goto_0

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    monitor-exit v7

    move v5, v4

    goto :goto_2

    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6
.end method

.method private static isSystemApp(Ljava/lang/String;)Z
    .locals 1

    const-string/jumbo v0, "media"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "platform"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "shared"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "release"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static parseSeinfo(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;
    .locals 4

    const/4 v1, 0x0

    const-string/jumbo v2, "value"

    invoke-interface {p0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/pm/SELinuxMMAC;->validateValue(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "SELinuxMMAC"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<seinfo> without valid value at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :cond_0
    return-object v0
.end method

.method public static readInstallPolicy()Z
    .locals 21

    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    const/4 v4, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {}, Lcom/android/server/pm/Revision;->selinux_android_load_priority()I

    move-result v7

    :try_start_0
    new-instance v12, Ljava/io/FileReader;

    sget-object v17, Lcom/android/server/pm/SELinuxMMAC;->INSTALL_POLICY_FILE:[Ljava/io/File;

    add-int/lit8 v18, v7, -0x1

    aget-object v17, v17, v18

    move-object/from16 v0, v17

    invoke-direct {v12, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    sget-object v17, Lcom/android/server/pm/SELinuxMMAC;->INSTALL_POLICY_FILE:[Ljava/io/File;

    add-int/lit8 v18, v7, -0x1

    aget-object v13, v17, v18
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_11
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    if-eqz v12, :cond_0

    :try_start_2
    invoke-virtual {v12}, Ljava/io/FileReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_9

    :cond_0
    :goto_0
    const/16 v17, 0x7

    move/from16 v0, v17

    new-array v8, v0, [Ljava/io/File;

    const/16 v17, 0x0

    aput-object v13, v8, v17

    const/16 v17, 0x1

    new-instance v18, Ljava/io/File;

    const-string v19, "/data/security/good/mac_permissions.xml"

    invoke-direct/range {v18 .. v19}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    aput-object v18, v8, v17

    const/16 v17, 0x2

    new-instance v18, Ljava/io/File;

    const-string v19, "/data/security/mycontainer/mac_permissions.xml"

    invoke-direct/range {v18 .. v19}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    aput-object v18, v8, v17

    const/16 v17, 0x3

    new-instance v18, Ljava/io/File;

    const-string v19, "/data/security/irm/mac_permissions.xml"

    invoke-direct/range {v18 .. v19}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    aput-object v18, v8, v17

    const/16 v17, 0x4

    new-instance v18, Ljava/io/File;

    const-string v19, "/data/security/bbccontainer/mac_permissions.xml"

    invoke-direct/range {v18 .. v19}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    aput-object v18, v8, v17

    const/16 v17, 0x5

    new-instance v18, Ljava/io/File;

    const-string v19, "/data/security/whitelist/mac_permissions.xml"

    invoke-direct/range {v18 .. v19}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    aput-object v18, v8, v17

    const/16 v17, 0x6

    const/16 v18, 0x0

    aput-object v18, v8, v17

    const/4 v3, 0x0

    const/4 v2, 0x0

    move-object v11, v12

    invoke-static {}, Lcom/android/server/pm/SELinuxMMAC;->flushInstallPolicy()V

    :goto_1
    aget-object v17, v8, v3

    if-eqz v17, :cond_c

    const-string v17, "SELinuxMMAC"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Read and parse file: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    aget-object v19, v8, v3

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_3
    new-instance v12, Ljava/io/FileReader;

    aget-object v17, v8, v3

    move-object/from16 v0, v17

    invoke-direct {v12, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_10
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_f
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_e
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v9

    invoke-interface {v9, v12}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    const-string/jumbo v17, "policy"

    move-object/from16 v0, v17

    invoke-static {v9, v0}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    :cond_1
    :goto_2
    invoke-static {v9}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_6

    if-eqz v12, :cond_2

    :try_start_5
    invoke-virtual {v12}, Ljava/io/FileReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_8

    :cond_2
    move-object v11, v12

    :cond_3
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :catch_0
    move-exception v5

    :goto_4
    :try_start_6
    const-string v17, "SELinuxMMAC"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Couldn\'t find install policy "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    sget-object v19, Lcom/android/server/pm/SELinuxMMAC;->INSTALL_POLICY_FILE:[Ljava/io/File;

    add-int/lit8 v20, v7, -0x1

    aget-object v19, v19, v20

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v17, "SELinuxMMAC"

    const-string v18, "MMAC install disabled."

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    const/16 v17, 0x0

    if-eqz v11, :cond_4

    :try_start_7
    invoke-virtual {v11}, Ljava/io/FileReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_a

    :cond_4
    :goto_5
    return v17

    :catchall_0
    move-exception v17

    :goto_6
    if-eqz v11, :cond_5

    :try_start_8
    invoke-virtual {v11}, Ljava/io/FileReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_b

    :cond_5
    :goto_7
    throw v17

    :cond_6
    :try_start_9
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v16

    const-string/jumbo v17, "signer"

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_a

    const/16 v17, 0x0

    const-string/jumbo v18, "signature"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v9, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_7

    const-string v17, "SELinuxMMAC"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "<signer> without signature at "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v9}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_9
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto/16 :goto_2

    :catch_1
    move-exception v5

    move-object v11, v12

    :goto_8
    :try_start_a
    const-string v17, "SELinuxMMAC"

    const-string v18, "Got execption parsing "

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    if-eqz v11, :cond_3

    :try_start_b
    invoke-virtual {v11}, Ljava/io/FileReader;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_2

    goto/16 :goto_3

    :catch_2
    move-exception v17

    goto/16 :goto_3

    :cond_7
    :try_start_c
    new-instance v15, Landroid/content/pm/Signature;

    invoke-direct {v15, v2}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_c .. :try_end_c} :catch_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_c .. :try_end_c} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_c} :catch_3
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_6
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    if-nez v15, :cond_8

    :try_start_d
    const-string v17, "SELinuxMMAC"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "<signer> with null signature at "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v9}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_d .. :try_end_d} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_d .. :try_end_d} :catch_3
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_6
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    goto/16 :goto_2

    :catch_3
    move-exception v5

    move-object v11, v12

    :goto_9
    :try_start_e
    const-string v17, "SELinuxMMAC"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "File not found exception: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    aget-object v19, v8, v3

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    if-eqz v11, :cond_3

    :try_start_f
    invoke-virtual {v11}, Ljava/io/FileReader;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_4

    goto/16 :goto_3

    :catch_4
    move-exception v17

    goto/16 :goto_3

    :catch_5
    move-exception v5

    :try_start_10
    const-string v17, "SELinuxMMAC"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "<signer> with bad signature at "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {v9}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_10
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_10 .. :try_end_10} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_10 .. :try_end_10} :catch_3
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_6
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    goto/16 :goto_2

    :catch_6
    move-exception v5

    move-object v11, v12

    :goto_a
    :try_start_11
    const-string v17, "SELinuxMMAC"

    const-string v18, "Got execption parsing "

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    if-eqz v11, :cond_3

    :try_start_12
    invoke-virtual {v11}, Ljava/io/FileReader;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_7

    goto/16 :goto_3

    :catch_7
    move-exception v17

    goto/16 :goto_3

    :cond_8
    :try_start_13
    invoke-static {v9, v2}, Lcom/android/server/pm/SELinuxMMAC;->readPolicyTags(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lcom/android/server/pm/SELinuxMMAC$Policy;

    move-result-object v10

    sget-object v17, Lcom/android/server/pm/SELinuxMMAC;->SIG_POLICY:Ljava/util/HashMap;

    move-object/from16 v0, v17

    invoke-virtual {v0, v15, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_13
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_13 .. :try_end_13} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_13 .. :try_end_13} :catch_3
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_6
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    goto/16 :goto_2

    :catchall_1
    move-exception v17

    move-object v11, v12

    :goto_b
    if-eqz v11, :cond_9

    :try_start_14
    invoke-virtual {v11}, Ljava/io/FileReader;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_c

    :cond_9
    :goto_c
    throw v17

    :cond_a
    :try_start_15
    const-string v17, "default"

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_b

    const/16 v17, 0x0

    move-object/from16 v0, v17

    invoke-static {v9, v0}, Lcom/android/server/pm/SELinuxMMAC;->readPolicyTags(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lcom/android/server/pm/SELinuxMMAC$Policy;

    move-result-object v10

    if-eqz v10, :cond_1

    sget-object v17, Lcom/android/server/pm/SELinuxMMAC;->SIG_POLICY:Ljava/util/HashMap;

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    :cond_b
    invoke-static {v9}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_15
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_15 .. :try_end_15} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_15 .. :try_end_15} :catch_3
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_6
    .catchall {:try_start_15 .. :try_end_15} :catchall_1

    goto/16 :goto_2

    :catch_8
    move-exception v17

    move-object v11, v12

    goto/16 :goto_3

    :cond_c
    if-eqz v11, :cond_d

    :try_start_16
    invoke-virtual {v11}, Ljava/io/FileReader;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_d

    :cond_d
    :goto_d
    const/16 v17, 0x1

    goto/16 :goto_5

    :catch_9
    move-exception v17

    goto/16 :goto_0

    :catch_a
    move-exception v18

    goto/16 :goto_5

    :catch_b
    move-exception v18

    goto/16 :goto_7

    :catch_c
    move-exception v18

    goto :goto_c

    :catch_d
    move-exception v17

    goto :goto_d

    :catchall_2
    move-exception v17

    goto :goto_b

    :catch_e
    move-exception v5

    goto :goto_a

    :catch_f
    move-exception v5

    goto/16 :goto_9

    :catch_10
    move-exception v5

    goto/16 :goto_8

    :catchall_3
    move-exception v17

    move-object v11, v12

    goto/16 :goto_6

    :catch_11
    move-exception v5

    move-object v11, v12

    goto/16 :goto_4
.end method

.method private static readPolicyTags(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/pm/SELinuxMMAC$Policy;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    const/4 v9, 0x3

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    new-instance v2, Lcom/android/server/pm/SELinuxMMAC$Policy;

    invoke-direct {v2}, Lcom/android/server/pm/SELinuxMMAC$Policy;-><init>()V

    :cond_0
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_6

    if-ne v5, v9, :cond_1

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v6

    if-le v6, v0, :cond_6

    :cond_1
    if-eq v5, v9, :cond_0

    const/4 v6, 0x4

    if-eq v5, v6, :cond_0

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v6, "seinfo"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-static {p0}, Lcom/android/server/pm/SELinuxMMAC;->parseSeinfo(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v2, v3}, Lcom/android/server/pm/SELinuxMMAC$Policy;->putSeinfo(Ljava/lang/String;)V

    :cond_2
    invoke-static {p0}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    :cond_3
    const-string/jumbo v6, "package"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    const/4 v6, 0x0

    const-string/jumbo v7, "name"

    invoke-interface {p0, v6, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/pm/SELinuxMMAC;->validatePackageName(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    const-string v6, "SELinuxMMAC"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "<package> without valid name at "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    :cond_4
    invoke-static {p0}, Lcom/android/server/pm/SELinuxMMAC;->readSeinfoTag(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, v1, v3}, Lcom/android/server/pm/SELinuxMMAC$Policy;->putPkg(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    invoke-static {p0}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    :cond_6
    return-object v2
.end method

.method private static readPolicyTags(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lcom/android/server/pm/SELinuxMMAC$Policy;
    .locals 59
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    new-instance v42, Ljava/util/HashMap;

    invoke-direct/range {v42 .. v42}, Ljava/util/HashMap;-><init>()V

    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v38

    const/16 v49, 0x0

    const/16 v48, -0x1

    const/4 v13, -0x1

    const/16 v47, 0x0

    const/4 v12, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/16 v31, 0x0

    const/16 v19, 0x0

    const/4 v9, 0x0

    new-instance v43, Lcom/android/server/pm/SELinuxMMAC$Policy;

    invoke-direct/range {v43 .. v43}, Lcom/android/server/pm/SELinuxMMAC$Policy;-><init>()V

    const/4 v6, 0x0

    :cond_0
    :goto_0
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v54

    const/16 v56, 0x1

    move/from16 v0, v54

    move/from16 v1, v56

    if-eq v0, v1, :cond_34

    const/16 v56, 0x3

    move/from16 v0, v54

    move/from16 v1, v56

    if-ne v0, v1, :cond_1

    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v56

    move/from16 v0, v56

    move/from16 v1, v38

    if-le v0, v1, :cond_34

    :cond_1
    const/16 v56, 0x3

    move/from16 v0, v54

    move/from16 v1, v56

    if-eq v0, v1, :cond_0

    const/16 v56, 0x4

    move/from16 v0, v54

    move/from16 v1, v56

    if-eq v0, v1, :cond_0

    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v52

    const-string/jumbo v56, "seinfo"

    move-object/from16 v0, v56

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v56

    if-eqz v56, :cond_8

    const/16 v56, 0x0

    const-string/jumbo v57, "value"

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v50

    invoke-static/range {v50 .. v50}, Lcom/android/server/pm/SELinuxMMAC;->validateValue(Ljava/lang/String;)Z

    move-result v56

    if-eqz v56, :cond_3

    move-object/from16 v49, v50

    :goto_1
    const/16 v56, 0x0

    const-string v57, "category"

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    const/16 v56, 0x0

    const-string v57, "allowcategory"

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/16 v56, 0x0

    const-string v57, "bbccategory"

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const/16 v56, 0x0

    const-string v57, "bbcallowcategory"

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v19, :cond_4

    :try_start_0
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v48

    :goto_2
    if-eqz v9, :cond_5

    :try_start_1
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v13

    :goto_3
    if-eqz v4, :cond_6

    move-object/from16 v47, v4

    :goto_4
    if-eqz v7, :cond_7

    move-object v12, v7

    :goto_5
    if-eqz v49, :cond_2

    move-object/from16 v0, v43

    move-object/from16 v1, v49

    # setter for: Lcom/android/server/pm/SELinuxMMAC$Policy;->seinfo:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/server/pm/SELinuxMMAC$Policy;->access$002(Lcom/android/server/pm/SELinuxMMAC$Policy;Ljava/lang/String;)Ljava/lang/String;

    move/from16 v0, v48

    move-object/from16 v1, v43

    iput v0, v1, Lcom/android/server/pm/SELinuxMMAC$Policy;->category:I

    move-object/from16 v0, v43

    iput v13, v0, Lcom/android/server/pm/SELinuxMMAC$Policy;->bbccategory:I

    move-object/from16 v0, v47

    move-object/from16 v1, v43

    iput-object v0, v1, Lcom/android/server/pm/SELinuxMMAC$Policy;->allowCategory:Ljava/lang/String;

    move-object/from16 v0, v43

    iput-object v12, v0, Lcom/android/server/pm/SELinuxMMAC$Policy;->bbcallowCategory:Ljava/lang/String;

    :cond_2
    :goto_6
    invoke-static/range {p0 .. p0}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_0

    :cond_3
    const-string v56, "SELinuxMMAC"

    new-instance v57, Ljava/lang/StringBuilder;

    invoke-direct/range {v57 .. v57}, Ljava/lang/StringBuilder;-><init>()V

    const-string v58, "<seinfo> without value at "

    invoke-virtual/range {v57 .. v58}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v57

    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v58

    invoke-virtual/range {v57 .. v58}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v57

    invoke-virtual/range {v57 .. v57}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v57

    invoke-static/range {v56 .. v57}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :catch_0
    move-exception v25

    const-string v56, "SELinuxMMAC"

    const-string v57, " Category value is incorrect"

    invoke-static/range {v56 .. v57}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_4
    const/16 v48, 0x3ff

    goto :goto_2

    :catch_1
    move-exception v25

    const-string v56, "SELinuxMMAC"

    const-string v57, " bbccategoryValue value is incorrect"

    invoke-static/range {v56 .. v57}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_5
    const/16 v13, 0x3ff

    goto :goto_3

    :cond_6
    const-string v47, "0,701-1023"

    goto :goto_4

    :cond_7
    const-string v12, "0,701-1023"

    goto :goto_5

    :cond_8
    const-string/jumbo v56, "package"

    move-object/from16 v0, v56

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v56

    if-eqz v56, :cond_a

    const/16 v56, 0x0

    const-string/jumbo v57, "name"

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v40

    invoke-static/range {v40 .. v40}, Lcom/android/server/pm/SELinuxMMAC;->validatePackageName(Ljava/lang/String;)Z

    move-result v56

    if-nez v56, :cond_9

    const-string v56, "SELinuxMMAC"

    new-instance v57, Ljava/lang/StringBuilder;

    invoke-direct/range {v57 .. v57}, Ljava/lang/StringBuilder;-><init>()V

    const-string v58, "<package> without valid name at "

    invoke-virtual/range {v57 .. v58}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v57

    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v58

    invoke-virtual/range {v57 .. v58}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v57

    invoke-virtual/range {v57 .. v57}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v57

    invoke-static/range {v56 .. v57}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static/range {p0 .. p0}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_0

    :cond_9
    invoke-static/range {p0 .. p0}, Lcom/android/server/pm/SELinuxMMAC;->readSeinfoTag(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v49

    if-eqz v49, :cond_2

    move-object/from16 v0, v43

    move-object/from16 v1, v40

    move-object/from16 v2, v49

    invoke-virtual {v0, v1, v2}, Lcom/android/server/pm/SELinuxMMAC$Policy;->putPkg(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_a
    const-string v56, "container"

    move-object/from16 v0, v56

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v56

    if-eqz v56, :cond_b

    const/16 v56, 0x0

    const-string/jumbo v57, "value"

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    if-eqz v24, :cond_2

    const-string/jumbo v56, "true"

    move-object/from16 v0, v56

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v56

    if-eqz v56, :cond_2

    const/16 v56, 0x1

    move/from16 v0, v56

    move-object/from16 v1, v43

    iput-boolean v0, v1, Lcom/android/server/pm/SELinuxMMAC$Policy;->isContainerApp:Z

    goto/16 :goto_6

    :cond_b
    const-string/jumbo v56, "service"

    move-object/from16 v0, v56

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v56

    if-eqz v56, :cond_2f

    new-instance v23, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;

    invoke-direct/range {v23 .. v23}, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;-><init>()V

    const/16 v18, 0x0

    const/4 v8, 0x0

    const/16 v30, 0x0

    const/4 v11, 0x0

    const/16 v29, 0x0

    const/4 v10, 0x0

    const/16 v21, 0x0

    const/4 v3, 0x0

    const/16 v56, 0x0

    const-string/jumbo v57, "name"

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v41 .. v41}, Lcom/android/server/pm/SELinuxMMAC;->validatePackageName(Ljava/lang/String;)Z

    move-result v56

    if-nez v56, :cond_c

    const-string v56, "android"

    move-object/from16 v0, v41

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v56

    if-eqz v56, :cond_17

    const-string v56, "SELinuxMMAC"

    const-string v57, "<package> is android, don\'t skip"

    invoke-static/range {v56 .. v57}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    const/16 v56, 0x0

    const-string v57, "category"

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    const/16 v56, 0x0

    const-string v57, "bbccategory"

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/16 v56, 0x0

    const-string/jumbo v57, "seinfo"

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    const/16 v56, 0x0

    const-string v57, "bbcseinfo"

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const/16 v56, 0x0

    const-string v57, "allowcategory"

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    const/16 v56, 0x0

    const-string v57, "bbcallowcategory"

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const/16 v56, 0x0

    const-string v57, "containerallowcategory"

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    const/16 v56, 0x0

    const-string v57, "agent"

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v29, :cond_d

    const-string v29, "0,701-1023"

    :cond_d
    new-instance v39, Lcom/android/server/pm/SELinuxMMAC$MDMID;

    invoke-direct/range {v39 .. v39}, Lcom/android/server/pm/SELinuxMMAC$MDMID;-><init>()V

    move-object/from16 v0, p1

    move-object/from16 v1, v39

    iput-object v0, v1, Lcom/android/server/pm/SELinuxMMAC$MDMID;->certs:Ljava/lang/String;

    move-object/from16 v0, v41

    move-object/from16 v1, v39

    iput-object v0, v1, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    if-eqz v41, :cond_e

    if-eqz p1, :cond_e

    const/16 v26, 0x0

    move-object/from16 v0, v41

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/android/server/pm/SELinuxMMAC;->getContainerAllowCategory(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    if-eqz v26, :cond_19

    if-eqz v21, :cond_18

    new-instance v56, Ljava/lang/StringBuilder;

    invoke-direct/range {v56 .. v56}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v56

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    const-string v57, ","

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    move-object/from16 v0, v56

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->allowContainerCategory:Ljava/lang/String;

    :cond_e
    :goto_7
    if-eqz v41, :cond_f

    if-nez v18, :cond_10

    :cond_f
    if-eqz v41, :cond_2

    if-eqz v8, :cond_2

    :cond_10
    if-eqz v18, :cond_11

    :try_start_2
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v56

    move/from16 v0, v56

    move-object/from16 v1, v23

    iput v0, v1, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->category:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :cond_11
    :goto_8
    if-eqz v8, :cond_12

    :try_start_3
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v56

    move/from16 v0, v56

    move-object/from16 v1, v23

    iput v0, v1, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->bbccategory:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    :cond_12
    :goto_9
    if-eqz v30, :cond_1b

    move-object/from16 v0, v29

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->allowCategory:Ljava/lang/String;

    move-object/from16 v0, v30

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->seInfo:Ljava/lang/String;

    :cond_13
    :goto_a
    if-eqz v11, :cond_1d

    move-object/from16 v0, v23

    iput-object v10, v0, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->bbcallowCategory:Ljava/lang/String;

    move-object/from16 v0, v23

    iput-object v11, v0, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->bbcseInfo:Ljava/lang/String;

    :cond_14
    :goto_b
    if-eqz v11, :cond_1f

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->bbccategory:I

    move/from16 v56, v0

    const/16 v57, 0x1f4

    move/from16 v0, v56

    move/from16 v1, v57

    if-le v0, v1, :cond_1f

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->bbccategory:I

    move/from16 v56, v0

    const/16 v57, 0x2bc

    move/from16 v0, v56

    move/from16 v1, v57

    if-gt v0, v1, :cond_1f

    const/4 v6, 0x1

    :goto_c
    const/16 v56, 0x0

    const-string/jumbo v57, "issdcardsbaapp"

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    const/16 v56, 0x0

    const-string/jumbo v57, "isbluetoothsbaapp"

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    const/16 v56, 0x0

    const-string/jumbo v57, "sdcarduserid"

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v45

    const/16 v56, 0x0

    const-string v57, "bluetoothuserid"

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const/16 v56, 0x0

    const-string/jumbo v57, "sdcarduseridBL"

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v46

    const/16 v56, 0x0

    const-string v57, "bluetoothuseridBL"

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    if-eqz v33, :cond_15

    const-string/jumbo v56, "true"

    move-object/from16 v0, v56

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v56

    if-eqz v56, :cond_15

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->accessInfo:I

    move/from16 v56, v0

    or-int/lit8 v56, v56, 0x4

    move/from16 v0, v56

    move-object/from16 v1, v23

    iput v0, v1, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->accessInfo:I

    sget-object v56, Lcom/android/server/pm/SELinuxMMAC;->SBALISTS:Ljava/util/ArrayList;

    sget v57, Lcom/android/server/pm/SELinuxMMAC;->SDCARD_TYPE:I

    invoke-virtual/range {v56 .. v57}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v56

    check-cast v56, Ljava/util/HashSet;

    move-object/from16 v0, v56

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_15
    if-eqz v32, :cond_16

    const-string/jumbo v56, "true"

    move-object/from16 v0, v56

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v56

    if-eqz v56, :cond_16

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->accessInfo:I

    move/from16 v56, v0

    or-int/lit8 v56, v56, 0x8

    move/from16 v0, v56

    move-object/from16 v1, v23

    iput v0, v1, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->accessInfo:I

    sget-object v56, Lcom/android/server/pm/SELinuxMMAC;->SBALISTS:Ljava/util/ArrayList;

    sget v57, Lcom/android/server/pm/SELinuxMMAC;->BT_TYPE:I

    invoke-virtual/range {v56 .. v57}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v56

    check-cast v56, Ljava/util/HashSet;

    move-object/from16 v0, v56

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_16
    if-eqz v45, :cond_21

    move-object/from16 v0, v45

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->sdcarduserid:Ljava/lang/String;

    const-string v56, ","

    move-object/from16 v0, v45

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v55

    const/16 v51, 0x0

    move-object/from16 v5, v55

    array-length v0, v5

    move/from16 v35, v0

    const/16 v27, 0x0

    :goto_d
    move/from16 v0, v27

    move/from16 v1, v35

    if-ge v0, v1, :cond_21

    aget-object v34, v5, v27

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v28

    sget-object v56, Lcom/android/server/pm/SELinuxMMAC;->WHITELISTS:Ljava/util/ArrayList;

    sget v57, Lcom/android/server/pm/SELinuxMMAC;->SDCARD_TYPE:I

    invoke-virtual/range {v56 .. v57}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v56

    check-cast v56, Ljava/util/HashMap;

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v57

    invoke-virtual/range {v56 .. v57}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v56

    if-eqz v56, :cond_20

    sget-object v56, Lcom/android/server/pm/SELinuxMMAC;->WHITELISTS:Ljava/util/ArrayList;

    sget v57, Lcom/android/server/pm/SELinuxMMAC;->SDCARD_TYPE:I

    invoke-virtual/range {v56 .. v57}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v56

    check-cast v56, Ljava/util/HashMap;

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v57

    invoke-virtual/range {v56 .. v57}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v51

    check-cast v51, Ljava/util/HashSet;

    :goto_e
    move-object/from16 v0, v51

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v56, Lcom/android/server/pm/SELinuxMMAC;->WHITELISTS:Ljava/util/ArrayList;

    sget v57, Lcom/android/server/pm/SELinuxMMAC;->SDCARD_TYPE:I

    invoke-virtual/range {v56 .. v57}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v56

    check-cast v56, Ljava/util/HashMap;

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v57

    move-object/from16 v0, v56

    move-object/from16 v1, v57

    move-object/from16 v2, v51

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v27, v27, 0x1

    goto :goto_d

    :cond_17
    const-string v56, "SELinuxMMAC"

    new-instance v57, Ljava/lang/StringBuilder;

    invoke-direct/range {v57 .. v57}, Ljava/lang/StringBuilder;-><init>()V

    const-string v58, "<package> without valid name at "

    invoke-virtual/range {v57 .. v58}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v57

    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v58

    invoke-virtual/range {v57 .. v58}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v57

    invoke-virtual/range {v57 .. v57}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v57

    invoke-static/range {v56 .. v57}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static/range {p0 .. p0}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_0

    :cond_18
    move-object/from16 v0, v26

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->allowContainerCategory:Ljava/lang/String;

    goto/16 :goto_7

    :cond_19
    if-eqz v21, :cond_1a

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->allowContainerCategory:Ljava/lang/String;

    goto/16 :goto_7

    :cond_1a
    const/16 v56, 0x0

    move-object/from16 v0, v56

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->allowContainerCategory:Ljava/lang/String;

    goto/16 :goto_7

    :catch_2
    move-exception v25

    const-string v56, "SELinuxMMAC"

    new-instance v57, Ljava/lang/StringBuilder;

    invoke-direct/range {v57 .. v57}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v57

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v57

    const-string v58, " does not define correct category."

    invoke-virtual/range {v57 .. v58}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v57

    invoke-virtual/range {v57 .. v57}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v57

    invoke-static/range {v56 .. v57}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    :catch_3
    move-exception v25

    const-string v56, "SELinuxMMAC"

    new-instance v57, Ljava/lang/StringBuilder;

    invoke-direct/range {v57 .. v57}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v57

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v57

    const-string v58, " does not define correct bbccategory."

    invoke-virtual/range {v57 .. v58}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v57

    invoke-virtual/range {v57 .. v57}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v57

    invoke-static/range {v56 .. v57}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    :cond_1b
    if-eqz v49, :cond_13

    if-eqz v4, :cond_1c

    move-object/from16 v0, v23

    iput-object v4, v0, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->allowCategory:Ljava/lang/String;

    :goto_f
    move-object/from16 v0, v49

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->seInfo:Ljava/lang/String;

    goto/16 :goto_a

    :cond_1c
    move-object/from16 v0, v29

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->allowCategory:Ljava/lang/String;

    goto :goto_f

    :cond_1d
    if-eqz v49, :cond_14

    if-eqz v7, :cond_1e

    move-object/from16 v0, v23

    iput-object v7, v0, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->bbcallowCategory:Ljava/lang/String;

    :goto_10
    move-object/from16 v0, v49

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->bbcseInfo:Ljava/lang/String;

    goto/16 :goto_b

    :cond_1e
    move-object/from16 v0, v23

    iput-object v10, v0, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->bbcallowCategory:Ljava/lang/String;

    goto :goto_10

    :cond_1f
    const/4 v6, 0x0

    goto/16 :goto_c

    :cond_20
    new-instance v51, Ljava/util/HashSet;

    invoke-direct/range {v51 .. v51}, Ljava/util/HashSet;-><init>()V

    goto/16 :goto_e

    :cond_21
    if-eqz v15, :cond_23

    move-object/from16 v0, v23

    iput-object v15, v0, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->bluetoothuserid:Ljava/lang/String;

    const-string v56, ","

    move-object/from16 v0, v56

    invoke-virtual {v15, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v55

    const/16 v17, 0x0

    move-object/from16 v5, v55

    array-length v0, v5

    move/from16 v35, v0

    const/16 v27, 0x0

    :goto_11
    move/from16 v0, v27

    move/from16 v1, v35

    if-ge v0, v1, :cond_23

    aget-object v34, v5, v27

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v28

    sget-object v56, Lcom/android/server/pm/SELinuxMMAC;->WHITELISTS:Ljava/util/ArrayList;

    sget v57, Lcom/android/server/pm/SELinuxMMAC;->BT_TYPE:I

    invoke-virtual/range {v56 .. v57}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v56

    check-cast v56, Ljava/util/HashMap;

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v57

    invoke-virtual/range {v56 .. v57}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v56

    if-eqz v56, :cond_22

    sget-object v56, Lcom/android/server/pm/SELinuxMMAC;->WHITELISTS:Ljava/util/ArrayList;

    sget v57, Lcom/android/server/pm/SELinuxMMAC;->BT_TYPE:I

    invoke-virtual/range {v56 .. v57}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v56

    check-cast v56, Ljava/util/HashMap;

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v57

    invoke-virtual/range {v56 .. v57}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/HashSet;

    :goto_12
    move-object/from16 v0, v17

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v56, Lcom/android/server/pm/SELinuxMMAC;->WHITELISTS:Ljava/util/ArrayList;

    sget v57, Lcom/android/server/pm/SELinuxMMAC;->BT_TYPE:I

    invoke-virtual/range {v56 .. v57}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v56

    check-cast v56, Ljava/util/HashMap;

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v57

    move-object/from16 v0, v56

    move-object/from16 v1, v57

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v27, v27, 0x1

    goto :goto_11

    :cond_22
    new-instance v17, Ljava/util/HashSet;

    invoke-direct/range {v17 .. v17}, Ljava/util/HashSet;-><init>()V

    goto :goto_12

    :cond_23
    if-eqz v46, :cond_25

    move-object/from16 v0, v46

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->sdcarduseridBL:Ljava/lang/String;

    const-string v56, ","

    move-object/from16 v0, v46

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v55

    const/16 v44, 0x0

    move-object/from16 v5, v55

    array-length v0, v5

    move/from16 v35, v0

    const/16 v27, 0x0

    :goto_13
    move/from16 v0, v27

    move/from16 v1, v35

    if-ge v0, v1, :cond_25

    aget-object v34, v5, v27

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v28

    sget-object v56, Lcom/android/server/pm/SELinuxMMAC;->BLACKLISTS:Ljava/util/ArrayList;

    sget v57, Lcom/android/server/pm/SELinuxMMAC;->SDCARD_TYPE:I

    invoke-virtual/range {v56 .. v57}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v56

    check-cast v56, Ljava/util/HashMap;

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v57

    invoke-virtual/range {v56 .. v57}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v56

    if-eqz v56, :cond_24

    sget-object v56, Lcom/android/server/pm/SELinuxMMAC;->BLACKLISTS:Ljava/util/ArrayList;

    sget v57, Lcom/android/server/pm/SELinuxMMAC;->SDCARD_TYPE:I

    invoke-virtual/range {v56 .. v57}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v56

    check-cast v56, Ljava/util/HashMap;

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v57

    invoke-virtual/range {v56 .. v57}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v44

    check-cast v44, Ljava/util/HashSet;

    :goto_14
    move-object/from16 v0, v44

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v56, Lcom/android/server/pm/SELinuxMMAC;->BLACKLISTS:Ljava/util/ArrayList;

    sget v57, Lcom/android/server/pm/SELinuxMMAC;->SDCARD_TYPE:I

    invoke-virtual/range {v56 .. v57}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v56

    check-cast v56, Ljava/util/HashMap;

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v57

    move-object/from16 v0, v56

    move-object/from16 v1, v57

    move-object/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v27, v27, 0x1

    goto :goto_13

    :cond_24
    new-instance v44, Ljava/util/HashSet;

    invoke-direct/range {v44 .. v44}, Ljava/util/HashSet;-><init>()V

    goto :goto_14

    :cond_25
    if-eqz v16, :cond_27

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->bluetoothuseridBL:Ljava/lang/String;

    const-string v56, ","

    move-object/from16 v0, v16

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v55

    const/4 v14, 0x0

    move-object/from16 v5, v55

    array-length v0, v5

    move/from16 v35, v0

    const/16 v27, 0x0

    :goto_15
    move/from16 v0, v27

    move/from16 v1, v35

    if-ge v0, v1, :cond_27

    aget-object v34, v5, v27

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v28

    sget-object v56, Lcom/android/server/pm/SELinuxMMAC;->BLACKLISTS:Ljava/util/ArrayList;

    sget v57, Lcom/android/server/pm/SELinuxMMAC;->BT_TYPE:I

    invoke-virtual/range {v56 .. v57}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v56

    check-cast v56, Ljava/util/HashMap;

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v57

    invoke-virtual/range {v56 .. v57}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v56

    if-eqz v56, :cond_26

    sget-object v56, Lcom/android/server/pm/SELinuxMMAC;->BLACKLISTS:Ljava/util/ArrayList;

    sget v57, Lcom/android/server/pm/SELinuxMMAC;->BT_TYPE:I

    invoke-virtual/range {v56 .. v57}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v56

    check-cast v56, Ljava/util/HashMap;

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v57

    invoke-virtual/range {v56 .. v57}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/HashSet;

    :goto_16
    move-object/from16 v0, v41

    invoke-virtual {v14, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v56, Lcom/android/server/pm/SELinuxMMAC;->BLACKLISTS:Ljava/util/ArrayList;

    sget v57, Lcom/android/server/pm/SELinuxMMAC;->BT_TYPE:I

    invoke-virtual/range {v56 .. v57}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v56

    check-cast v56, Ljava/util/HashMap;

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v57

    move-object/from16 v0, v56

    move-object/from16 v1, v57

    invoke-virtual {v0, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v27, v27, 0x1

    goto :goto_15

    :cond_26
    new-instance v14, Ljava/util/HashSet;

    invoke-direct {v14}, Ljava/util/HashSet;-><init>()V

    goto :goto_16

    :cond_27
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->seInfo:Ljava/lang/String;

    move-object/from16 v56, v0

    if-eqz v56, :cond_2

    if-nez v3, :cond_28

    const-string/jumbo v56, "generic_mdm"

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->seInfo:Ljava/lang/String;

    move-object/from16 v57, v0

    invoke-virtual/range {v56 .. v57}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v56

    if-eqz v56, :cond_2d

    :cond_28
    new-instance v36, Lcom/android/server/pm/SELinuxMMAC$MDMID;

    invoke-direct/range {v36 .. v36}, Lcom/android/server/pm/SELinuxMMAC$MDMID;-><init>()V

    const/16 v20, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v36

    iput-object v0, v1, Lcom/android/server/pm/SELinuxMMAC$MDMID;->certs:Ljava/lang/String;

    move-object/from16 v0, v41

    move-object/from16 v1, v36

    iput-object v0, v1, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    if-eqz v6, :cond_29

    sget-object v56, Lcom/android/server/pm/SELinuxMMAC;->BBC_MDM_INFO:Ljava/util/HashMap;

    move-object/from16 v0, v56

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v56

    if-eqz v56, :cond_29

    sget-object v56, Lcom/android/server/pm/SELinuxMMAC;->BBC_MDM_INFO:Ljava/util/HashMap;

    move-object/from16 v0, v56

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/util/HashSet;

    :goto_17
    if-eqz v6, :cond_2b

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->bbccategory:I

    move/from16 v56, v0

    invoke-static/range {v56 .. v56}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v56

    move-object/from16 v0, v20

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v56, Lcom/android/server/pm/SELinuxMMAC;->BBC_MDM_INFO:Ljava/util/HashMap;

    move-object/from16 v0, v56

    move-object/from16 v1, v36

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->bbccategory:I

    move/from16 v56, v0

    const/16 v57, 0x1f5

    move/from16 v0, v56

    move/from16 v1, v57

    if-lt v0, v1, :cond_0

    sget-object v56, Lcom/android/server/pm/SELinuxMMAC;->bbc_containerIDTable:[I

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->bbccategory:I

    move/from16 v57, v0

    move/from16 v0, v57

    add-int/lit16 v0, v0, -0x1f5

    move/from16 v57, v0

    const/16 v58, 0x1

    aput v58, v56, v57

    goto/16 :goto_0

    :cond_29
    if-nez v6, :cond_2a

    sget-object v56, Lcom/android/server/pm/SELinuxMMAC;->GENERIC_MDM_INFO:Ljava/util/HashMap;

    move-object/from16 v0, v56

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v56

    if-eqz v56, :cond_2a

    sget-object v56, Lcom/android/server/pm/SELinuxMMAC;->GENERIC_MDM_INFO:Ljava/util/HashMap;

    move-object/from16 v0, v56

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/util/HashSet;

    goto :goto_17

    :cond_2a
    new-instance v20, Ljava/util/HashSet;

    invoke-direct/range {v20 .. v20}, Ljava/util/HashSet;-><init>()V

    goto :goto_17

    :cond_2b
    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->category:I

    move/from16 v56, v0

    invoke-static/range {v56 .. v56}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v56

    move-object/from16 v0, v20

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v56, Lcom/android/server/pm/SELinuxMMAC;->GENERIC_MDM_INFO:Ljava/util/HashMap;

    move-object/from16 v0, v56

    move-object/from16 v1, v36

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->category:I

    move/from16 v56, v0

    const/16 v57, 0xc9

    move/from16 v0, v56

    move/from16 v1, v57

    if-lt v0, v1, :cond_0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->category:I

    move/from16 v56, v0

    const/16 v57, 0x2be

    move/from16 v0, v56

    move/from16 v1, v57

    if-ne v0, v1, :cond_2c

    sget-object v56, Lcom/android/server/pm/SELinuxMMAC;->irm_containerIDTable:[I

    const/16 v57, 0x0

    const/16 v58, 0x1

    aput v58, v56, v57

    goto/16 :goto_0

    :cond_2c
    sget-object v56, Lcom/android/server/pm/SELinuxMMAC;->generic_containerIDTable:[I

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->category:I

    move/from16 v57, v0

    move/from16 v0, v57

    add-int/lit16 v0, v0, -0xc9

    move/from16 v57, v0

    const/16 v58, 0x1

    aput v58, v56, v57

    goto/16 :goto_0

    :cond_2d
    if-eqz v11, :cond_2e

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->bbccategory:I

    move/from16 v56, v0

    const/16 v57, 0x1f4

    move/from16 v0, v56

    move/from16 v1, v57

    if-le v0, v1, :cond_2e

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->bbccategory:I

    move/from16 v56, v0

    const/16 v57, 0x2bc

    move/from16 v0, v56

    move/from16 v1, v57

    if-gt v0, v1, :cond_2e

    sget-object v56, Lcom/android/server/pm/SELinuxMMAC;->BBC_CONTAINER_INFO:Ljava/util/HashMap;

    move-object/from16 v0, v56

    move-object/from16 v1, v39

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_6

    :cond_2e
    sget-object v56, Lcom/android/server/pm/SELinuxMMAC;->GENERIC_CONTAINER_INFO:Ljava/util/HashMap;

    move-object/from16 v0, v56

    move-object/from16 v1, v39

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_6

    :cond_2f
    const-string v56, "containerallowpackage"

    move-object/from16 v0, v56

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v56

    if-eqz v56, :cond_2

    new-instance v23, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;

    invoke-direct/range {v23 .. v23}, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;-><init>()V

    const/16 v56, 0x0

    const-string/jumbo v57, "name"

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v41

    const/16 v56, 0x0

    const-string v57, "containerallowcategory"

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    const/16 v56, 0x0

    const-string/jumbo v57, "seinfo"

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v53

    new-instance v22, Lcom/android/server/pm/SELinuxMMAC$MDMID;

    invoke-direct/range {v22 .. v22}, Lcom/android/server/pm/SELinuxMMAC$MDMID;-><init>()V

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/android/server/pm/SELinuxMMAC$MDMID;->certs:Ljava/lang/String;

    move-object/from16 v0, v41

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    if-eqz v41, :cond_2

    if-eqz p1, :cond_2

    new-instance v23, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;

    invoke-direct/range {v23 .. v23}, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;-><init>()V

    const/16 v26, 0x0

    move-object/from16 v0, v41

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/android/server/pm/SELinuxMMAC;->getContainerAllowCategory(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    if-eqz v26, :cond_31

    if-eqz v21, :cond_30

    new-instance v56, Ljava/lang/StringBuilder;

    invoke-direct/range {v56 .. v56}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v56

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    const-string v57, ","

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    move-object/from16 v0, v56

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->allowContainerCategory:Ljava/lang/String;

    :goto_18
    if-eqz v53, :cond_33

    move-object/from16 v0, v53

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->seInfo:Ljava/lang/String;

    :goto_19
    move-object/from16 v0, v23

    iput-object v4, v0, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->allowCategory:Ljava/lang/String;

    move/from16 v0, v48

    move-object/from16 v1, v23

    iput v0, v1, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->category:I

    sget-object v56, Lcom/android/server/pm/SELinuxMMAC;->GENERIC_CONTAINER_INFO:Ljava/util/HashMap;

    move-object/from16 v0, v56

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_6

    :cond_30
    move-object/from16 v0, v26

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->allowContainerCategory:Ljava/lang/String;

    goto :goto_18

    :cond_31
    if-eqz v21, :cond_32

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->allowContainerCategory:Ljava/lang/String;

    goto :goto_18

    :cond_32
    const-string v56, "701-1023"

    move-object/from16 v0, v56

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->allowContainerCategory:Ljava/lang/String;

    goto :goto_18

    :cond_33
    move-object/from16 v0, v49

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;->seInfo:Ljava/lang/String;

    goto :goto_19

    :cond_34
    return-object v43
.end method

.method private static readSeinfoTag(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    const/4 v5, 0x3

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_3

    if-ne v3, v5, :cond_1

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    if-le v4, v0, :cond_3

    :cond_1
    if-eq v3, v5, :cond_0

    const/4 v4, 0x4

    if-eq v3, v4, :cond_0

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "seinfo"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {p0}, Lcom/android/server/pm/SELinuxMMAC;->parseSeinfo(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    :cond_2
    invoke-static {p0}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    :cond_3
    return-object v1
.end method

.method protected static removeBBCContainerID(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 7

    const/4 v2, 0x0

    const-string v3, "container"

    monitor-enter v3

    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/android/server/pm/SELinuxMMAC;->isContainerCreatedbyCaller(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_1

    sget-object v4, Lcom/android/server/pm/SELinuxMMAC;->bbc_containerIDTable:[I

    add-int/lit16 v5, p2, -0x1f5

    const/4 v6, 0x0

    aput v6, v4, v5

    new-instance v0, Lcom/android/server/pm/SELinuxMMAC$MDMID;

    invoke-direct {v0}, Lcom/android/server/pm/SELinuxMMAC$MDMID;-><init>()V

    const/4 v1, 0x0

    iput-object p1, v0, Lcom/android/server/pm/SELinuxMMAC$MDMID;->certs:Ljava/lang/String;

    iput-object p0, v0, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    sget-object v4, Lcom/android/server/pm/SELinuxMMAC;->BBC_MDM_INFO:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashSet;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v4

    if-eqz v4, :cond_0

    sget-object v4, Lcom/android/server/pm/SELinuxMMAC;->BBC_MDM_INFO:Ljava/util/HashMap;

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    monitor-exit v3

    :goto_1
    return v2

    :cond_0
    sget-object v4, Lcom/android/server/pm/SELinuxMMAC;->BBC_MDM_INFO:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_1
    :try_start_1
    const-string v2, "SEContainer"

    const-string v4, "ERROR_CONTAINER_ID_MISMATCH"

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, -0xc

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method protected static removeContainerID(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 5

    const/4 v0, 0x0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    const/4 v1, 0x0

    const/4 v4, 0x0

    invoke-static {v4, v2, v3}, Lcom/android/server/ServiceKeeper;->getPackageName(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/android/server/pm/SELinuxMMAC;->isBBCAgent()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/android/server/pm/SELinuxMMAC;->getBBCFlag()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    :cond_0
    if-eqz v0, :cond_1

    invoke-static {p0, p1, p2}, Lcom/android/server/pm/SELinuxMMAC;->removeBBCContainerID(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v4

    :goto_0
    return v4

    :cond_1
    const-string v4, "com.samsung.android.irm.service"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {p0, p1, p2}, Lcom/android/server/pm/SELinuxMMAC;->removeIRMContainerID(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v4

    goto :goto_0

    :cond_2
    invoke-static {p0, p1, p2}, Lcom/android/server/pm/SELinuxMMAC;->removeMyContainerID(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v4

    goto :goto_0
.end method

.method protected static removeIRMContainerID(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 7

    const/4 v2, 0x0

    const-string v3, "container"

    monitor-enter v3

    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/android/server/pm/SELinuxMMAC;->isContainerCreatedbyCaller(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_1

    sget-object v4, Lcom/android/server/pm/SELinuxMMAC;->irm_containerIDTable:[I

    const/4 v5, 0x0

    const/4 v6, 0x0

    aput v6, v4, v5

    new-instance v1, Lcom/android/server/pm/SELinuxMMAC$MDMID;

    invoke-direct {v1}, Lcom/android/server/pm/SELinuxMMAC$MDMID;-><init>()V

    const/4 v0, 0x0

    iput-object p1, v1, Lcom/android/server/pm/SELinuxMMAC$MDMID;->certs:Ljava/lang/String;

    iput-object p0, v1, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    sget-object v4, Lcom/android/server/pm/SELinuxMMAC;->GENERIC_MDM_INFO:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v4

    if-eqz v4, :cond_0

    sget-object v4, Lcom/android/server/pm/SELinuxMMAC;->GENERIC_MDM_INFO:Ljava/util/HashMap;

    invoke-virtual {v4, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    monitor-exit v3

    :goto_1
    return v2

    :cond_0
    sget-object v4, Lcom/android/server/pm/SELinuxMMAC;->GENERIC_MDM_INFO:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_1
    :try_start_1
    const-string v2, "SEContainer"

    const-string v4, "ERROR_CONTAINER_ID_MISMATCH"

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, -0xc

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method protected static removeMyContainerID(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 7

    const/4 v2, 0x0

    const-string v3, "container"

    monitor-enter v3

    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/android/server/pm/SELinuxMMAC;->isContainerCreatedbyCaller(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_1

    sget-object v4, Lcom/android/server/pm/SELinuxMMAC;->generic_containerIDTable:[I

    add-int/lit16 v5, p2, -0xc9

    const/4 v6, 0x0

    aput v6, v4, v5

    new-instance v1, Lcom/android/server/pm/SELinuxMMAC$MDMID;

    invoke-direct {v1}, Lcom/android/server/pm/SELinuxMMAC$MDMID;-><init>()V

    const/4 v0, 0x0

    iput-object p1, v1, Lcom/android/server/pm/SELinuxMMAC$MDMID;->certs:Ljava/lang/String;

    iput-object p0, v1, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    sget-object v4, Lcom/android/server/pm/SELinuxMMAC;->GENERIC_MDM_INFO:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v4

    if-eqz v4, :cond_0

    sget-object v4, Lcom/android/server/pm/SELinuxMMAC;->GENERIC_MDM_INFO:Ljava/util/HashMap;

    invoke-virtual {v4, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    monitor-exit v3

    :goto_1
    return v2

    :cond_0
    sget-object v4, Lcom/android/server/pm/SELinuxMMAC;->GENERIC_MDM_INFO:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_1
    :try_start_1
    const-string v2, "SEContainer"

    const-string v4, "ERROR_CONTAINER_ID_MISMATCH"

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, -0xc

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method private static returnHash(Ljava/lang/String;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    invoke-static {p0}, Llibcore/io/IoUtils;->readFileAsByteArray(Ljava/lang/String;)[B

    move-result-object v0

    const-string v2, "SHA-1"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/security/MessageDigest;->digest([B)[B
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static setBBCFlag(Z)I
    .locals 1

    sput-boolean p0, Lcom/android/server/pm/SELinuxMMAC;->bbc_flag:Z

    const/4 v0, 0x0

    return v0
.end method

.method public static setRestoreconDone()V
    .locals 5

    :try_start_0
    sget-object v2, Lcom/android/server/pm/SELinuxMMAC;->SEAPP_CONTEXTS:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/server/pm/SELinuxMMAC;->returnHash(Ljava/lang/String;)[B

    move-result-object v0

    new-instance v2, Ljava/io/File;

    sget-object v3, Lcom/android/server/pm/SELinuxMMAC;->SEAPP_HASH_FILE:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v0}, Lcom/android/server/pm/SELinuxMMAC;->dumpHash(Ljava/io/File;[B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    const-string v2, "SELinuxMMAC"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error with saving hash to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/server/pm/SELinuxMMAC;->SEAPP_HASH_FILE:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static setupResourceLists()V
    .locals 3

    const-string v1, "SELinuxMMAC"

    const-string v2, "entered setup resource list in selinuxmmac"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    sget v1, Lcom/android/server/pm/SELinuxMMAC;->RESOURCE_NUM:I

    if-ge v0, v1, :cond_0

    sget-object v1, Lcom/android/server/pm/SELinuxMMAC;->WHITELISTS:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v1, v0, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    sget-object v1, Lcom/android/server/pm/SELinuxMMAC;->BLACKLISTS:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v1, v0, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    sget-object v1, Lcom/android/server/pm/SELinuxMMAC;->SBALISTS:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v1, v0, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static shouldRestorecon()Z
    .locals 7

    const/4 v3, 0x0

    const/4 v0, 0x0

    :try_start_0
    sget-object v4, Lcom/android/server/pm/SELinuxMMAC;->SEAPP_CONTEXTS:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/server/pm/SELinuxMMAC;->returnHash(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    const/4 v2, 0x0

    :try_start_1
    sget-object v4, Lcom/android/server/pm/SELinuxMMAC;->SEAPP_HASH_FILE:Ljava/lang/String;

    invoke-static {v4}, Llibcore/io/IoUtils;->readFileAsByteArray(Ljava/lang/String;)[B
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    :goto_0
    if-eqz v2, :cond_0

    invoke-static {v2, v0}, Ljava/security/MessageDigest;->isEqual([B[B)Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    const/4 v3, 0x1

    :cond_1
    :goto_1
    return v3

    :catch_0
    move-exception v1

    const-string v4, "SELinuxMMAC"

    const-string v5, "Error with hashing seapp_contexts."

    invoke-static {v4, v5, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_1
    move-exception v1

    const-string v4, "SELinuxMMAC"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error opening "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/android/server/pm/SELinuxMMAC;->SEAPP_HASH_FILE:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ". Assuming first boot."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static useOverridePolicy()Z
    .locals 6

    :try_start_0
    sget-object v3, Lcom/android/server/pm/SELinuxMMAC;->DATA_VERSION_FILE:Ljava/lang/String;

    invoke-static {v3}, Llibcore/io/IoUtils;->readFileAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "/selinux_version"

    invoke-static {v3}, Llibcore/io/IoUtils;->readFileAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_0
    const-string v3, "SELinuxMMAC"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Override policy version \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' doesn\'t match "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "base version \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'. Skipping override policy files."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const/4 v3, 0x0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v3, "SELinuxMMAC"

    const-string v4, "Skipping override policy files."

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_1
    move-exception v3

    goto :goto_1
.end method

.method private static validatePackageName(Ljava/lang/String;)Z
    .locals 7

    const/4 v5, 0x0

    if-nez p0, :cond_1

    move v3, v5

    :cond_0
    :goto_0
    return v3

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v0, :cond_0

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v6, 0x61

    if-lt v1, v6, :cond_2

    const/16 v6, 0x7a

    if-le v1, v6, :cond_3

    :cond_2
    const/16 v6, 0x41

    if-lt v1, v6, :cond_5

    const/16 v6, 0x5a

    if-gt v1, v6, :cond_5

    :cond_3
    const/4 v2, 0x0

    :cond_4
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_5
    if-nez v2, :cond_7

    const/16 v6, 0x30

    if-lt v1, v6, :cond_6

    const/16 v6, 0x39

    if-le v1, v6, :cond_4

    :cond_6
    const/16 v6, 0x5f

    if-eq v1, v6, :cond_4

    :cond_7
    const/16 v6, 0x2e

    if-ne v1, v6, :cond_8

    const/4 v3, 0x1

    const/4 v2, 0x1

    goto :goto_2

    :cond_8
    move v3, v5

    goto :goto_0
.end method

.method private static validateValue(Ljava/lang/String;)Z
    .locals 5

    const/4 v3, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_5

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v4, 0x61

    if-lt v1, v4, :cond_2

    const/16 v4, 0x7a

    if-le v1, v4, :cond_4

    :cond_2
    const/16 v4, 0x41

    if-lt v1, v4, :cond_3

    const/16 v4, 0x5a

    if-le v1, v4, :cond_4

    :cond_3
    const/16 v4, 0x5f

    if-ne v1, v4, :cond_0

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    const/4 v3, 0x1

    goto :goto_0
.end method
