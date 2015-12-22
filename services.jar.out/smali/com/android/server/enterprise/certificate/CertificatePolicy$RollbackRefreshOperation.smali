.class Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;
.super Landroid/os/AsyncTask;
.source "CertificatePolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/certificate/CertificatePolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RollbackRefreshOperation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<[",
        "Ljava/lang/Integer;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private mOperation:I

.field private final mPriority:I

.field final synthetic this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;


# direct methods
.method private constructor <init>(Lcom/android/server/enterprise/certificate/CertificatePolicy;I)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput p2, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->mOperation:I

    const/16 v0, 0xa

    iput v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->mPriority:I

    return-void
.end method

.method private constructor <init>(Lcom/android/server/enterprise/certificate/CertificatePolicy;II)V
    .locals 3

    iput-object p1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput p2, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->mOperation:I

    const/16 v0, -0x14

    if-lt p3, v0, :cond_0

    const/16 v0, 0x13

    if-gt p3, v0, :cond_0

    :goto_0
    iput p3, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->mPriority:I

    const-string v0, "CertificatePolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mPriority = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->mPriority:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/16 p3, 0xa

    goto :goto_0
.end method

.method synthetic constructor <init>(Lcom/android/server/enterprise/certificate/CertificatePolicy;ILcom/android/server/enterprise/certificate/CertificatePolicy$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;-><init>(Lcom/android/server/enterprise/certificate/CertificatePolicy;I)V

    return-void
.end method

.method private executeRefreshOperation(Ljava/util/List;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/UserInfo;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    const/4 v3, 0x4

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {p0, v3, v4}, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->refreshNativeKeyStoreAsUser(II)V

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->refreshSystemKeyStoreAsUser(I)V

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x2

    invoke-direct {p0, v3}, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->refreshNativeKeyStore(I)V

    :cond_2
    return-void
.end method

.method private executeRollbackOperation(Ljava/util/List;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/UserInfo;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    const/4 v3, 0x4

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {p0, v3, v4}, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->rollbackNativeKeyStoreAsUser(II)V

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->rollbackSystemKeyStoreAsUser(I)V

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x2

    invoke-direct {p0, v3}, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->rollbackNativeKeyStore(I)V

    :cond_2
    return-void
.end method

.method private pruneDeletedContainerProfiles(Ljava/util/List;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/UserInfo;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->getPersonaManager()Lcom/android/server/pm/PersonaManagerService;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/android/server/pm/PersonaManagerService;->getPersonas(Z)Ljava/util/List;

    move-result-object v1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PersonaInfo;

    if-eqz v3, :cond_0

    new-instance v5, Ljava/lang/Integer;

    iget v6, v3, Landroid/content/pm/PersonaInfo;->id:I

    invoke-direct {v5, v6}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_4

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    if-eqz v4, :cond_2

    iget v5, v4, Landroid/content/pm/UserInfo;->id:I

    const/16 v6, 0x64

    if-lt v5, v6, :cond_2

    iget v5, v4, Landroid/content/pm/UserInfo;->id:I

    const/16 v6, 0xc8

    if-gt v5, v6, :cond_2

    new-instance v5, Ljava/lang/Integer;

    iget v6, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {v5, v6}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    :cond_4
    return-object p1
.end method

.method private refreshNativeKeyStore(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->refreshNativeKeyStoreAsUser(II)V

    return-void
.end method

.method private refreshNativeKeyStoreAsUser(II)V
    .locals 21

    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->selectNativeKeystoreUid(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    move/from16 v0, p2

    # invokes: Lcom/android/server/enterprise/certificate/CertificatePolicy;->getGenericListAsUser(Ljava/lang/String;I)Ljava/util/List;
    invoke-static {v3, v15, v0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$900(Lcom/android/server/enterprise/certificate/CertificatePolicy;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v20

    new-instance v17, Ljava/util/ArrayList;

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x2

    move/from16 v0, p1

    if-eq v0, v3, :cond_0

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->clear()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    move-object/from16 v0, v20

    move/from16 v1, p2

    # invokes: Lcom/android/server/enterprise/certificate/CertificatePolicy;->addUserIdPrefixToList(Ljava/util/List;I)Ljava/util/List;
    invoke-static {v3, v0, v1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$1400(Lcom/android/server/enterprise/certificate/CertificatePolicy;Ljava/util/List;I)Ljava/util/List;

    move-result-object v17

    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    # getter for: Lcom/android/server/enterprise/certificate/CertificatePolicy;->mNativeKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;
    invoke-static {v3}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$1500(Lcom/android/server/enterprise/certificate/CertificatePolicy;)Lcom/android/server/enterprise/certificate/EdmKeyStore;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->getCertificates(Ljava/util/List;)Ljava/util/Map;

    move-result-object v19

    new-instance v18, Ljava/util/HashMap;

    invoke-direct/range {v18 .. v19}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    # getter for: Lcom/android/server/enterprise/certificate/CertificatePolicy;->mKeyStoreLock:Ljava/lang/Object;
    invoke-static {v3}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$300(Lcom/android/server/enterprise/certificate/CertificatePolicy;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    move/from16 v0, p2

    # invokes: Lcom/android/server/enterprise/certificate/CertificatePolicy;->isNativeKeyStoreUnlockedAsUser(I)Z
    invoke-static {v3, v0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$400(Lcom/android/server/enterprise/certificate/CertificatePolicy;I)Z

    move-result v3

    if-eqz v3, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    # getter for: Lcom/android/server/enterprise/certificate/CertificatePolicy;->mKeyStore:Landroid/security/KeyStore;
    invoke-static {v3}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$600(Lcom/android/server/enterprise/certificate/CertificatePolicy;)Landroid/security/KeyStore;

    move-result-object v3

    const-string v5, "CACERT_"

    invoke-static/range {p1 .. p2}, Lcom/android/server/enterprise/utils/CertificateUtil;->convertStoreTypeToSystemUidAsUser(II)I

    move-result v6

    invoke-virtual {v3, v5, v6}, Landroid/security/KeyStore;->saw(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_2

    move-object v11, v10

    array-length v0, v11

    move/from16 v16, v0

    const/4 v14, 0x0

    :goto_0
    move/from16 v0, v16

    if-ge v14, v0, :cond_2

    aget-object v9, v11, v14

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    # getter for: Lcom/android/server/enterprise/certificate/CertificatePolicy;->mKeyStore:Landroid/security/KeyStore;
    invoke-static {v3}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$600(Lcom/android/server/enterprise/certificate/CertificatePolicy;)Landroid/security/KeyStore;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CACERT_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static/range {p1 .. p2}, Lcom/android/server/enterprise/utils/CertificateUtil;->convertStoreTypeToSystemUidAsUser(II)I

    move-result v6

    invoke-virtual {v3, v5, v6}, Landroid/security/KeyStore;->getByUid(Ljava/lang/String;I)[B

    move-result-object v13

    if-eqz v13, :cond_1

    # invokes: Lcom/android/server/enterprise/certificate/CertificatePolicy;->convertPemToX509([B)Ljava/security/cert/X509Certificate;
    invoke-static {v13}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$1700([B)Ljava/security/cert/X509Certificate;

    move-result-object v12

    if-eqz v12, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    const/4 v5, 0x3

    # invokes: Lcom/android/server/enterprise/certificate/CertificatePolicy;->verifyCertificateTrustful(Ljava/security/cert/X509Certificate;I)Z
    invoke-static {v3, v12, v5}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$1000(Lcom/android/server/enterprise/certificate/CertificatePolicy;Ljava/security/cert/X509Certificate;I)Z

    move-result v3

    if-nez v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "_"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "CACERT_"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-interface {v0, v3, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CACERT_"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-interface {v0, v3, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    # getter for: Lcom/android/server/enterprise/certificate/CertificatePolicy;->mKeyStore:Landroid/security/KeyStore;
    invoke-static {v3}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$600(Lcom/android/server/enterprise/certificate/CertificatePolicy;)Landroid/security/KeyStore;

    move-result-object v3

    const-string v5, "USRCERT_"

    invoke-static/range {p1 .. p2}, Lcom/android/server/enterprise/utils/CertificateUtil;->convertStoreTypeToSystemUidAsUser(II)I

    move-result v6

    invoke-virtual {v3, v5, v6}, Landroid/security/KeyStore;->saw(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_4

    move-object v11, v10

    array-length v0, v11

    move/from16 v16, v0

    const/4 v14, 0x0

    :goto_1
    move/from16 v0, v16

    if-ge v14, v0, :cond_4

    aget-object v9, v11, v14

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    # getter for: Lcom/android/server/enterprise/certificate/CertificatePolicy;->mKeyStore:Landroid/security/KeyStore;
    invoke-static {v3}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$600(Lcom/android/server/enterprise/certificate/CertificatePolicy;)Landroid/security/KeyStore;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "USRCERT_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static/range {p1 .. p2}, Lcom/android/server/enterprise/utils/CertificateUtil;->convertStoreTypeToSystemUidAsUser(II)I

    move-result v6

    invoke-virtual {v3, v5, v6}, Landroid/security/KeyStore;->getByUid(Ljava/lang/String;I)[B

    move-result-object v13

    if-eqz v13, :cond_3

    # invokes: Lcom/android/server/enterprise/certificate/CertificatePolicy;->convertPemToX509([B)Ljava/security/cert/X509Certificate;
    invoke-static {v13}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$1700([B)Ljava/security/cert/X509Certificate;

    move-result-object v12

    if-eqz v12, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    const/4 v5, 0x3

    # invokes: Lcom/android/server/enterprise/certificate/CertificatePolicy;->verifyCertificateTrustful(Ljava/security/cert/X509Certificate;I)Z
    invoke-static {v3, v12, v5}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$1000(Lcom/android/server/enterprise/certificate/CertificatePolicy;Ljava/security/cert/X509Certificate;I)Z

    move-result v3

    if-nez v3, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "_"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "USRCERT_"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-interface {v0, v3, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "USRCERT_"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-interface {v0, v3, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    :cond_4
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x2

    move/from16 v0, p1

    if-eq v0, v3, :cond_6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    # getter for: Lcom/android/server/enterprise/certificate/CertificatePolicy;->mNativeKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;
    invoke-static {v3}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$1500(Lcom/android/server/enterprise/certificate/CertificatePolicy;)Lcom/android/server/enterprise/certificate/EdmKeyStore;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->installCertificates(Ljava/util/Map;)Ljava/util/List;

    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    move/from16 v0, p2

    # invokes: Lcom/android/server/enterprise/certificate/CertificatePolicy;->isNativeKeyStoreUnlockedAsUser(I)Z
    invoke-static {v3, v0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$400(Lcom/android/server/enterprise/certificate/CertificatePolicy;I)Z

    move-result v3

    if-eqz v3, :cond_5

    new-instance v2, Lcom/android/server/enterprise/certificate/CertificatePolicy$NativeKeyStoreOperation;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    const/4 v4, 0x1

    invoke-interface/range {v18 .. v18}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    move/from16 v5, p1

    invoke-direct/range {v2 .. v8}, Lcom/android/server/enterprise/certificate/CertificatePolicy$NativeKeyStoreOperation;-><init>(Lcom/android/server/enterprise/certificate/CertificatePolicy;IILjava/util/Set;Ljava/util/Map;Lcom/android/server/enterprise/certificate/CertificatePolicy$1;)V

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Integer;

    const/4 v4, 0x0

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v2, v3}, Lcom/android/server/enterprise/certificate/CertificatePolicy$NativeKeyStoreOperation;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    invoke-interface/range {v18 .. v18}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    move/from16 v0, p2

    # invokes: Lcom/android/server/enterprise/certificate/CertificatePolicy;->putGenericListAsUser(Ljava/lang/String;Ljava/util/Collection;I)Z
    invoke-static {v3, v15, v4, v0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$1300(Lcom/android/server/enterprise/certificate/CertificatePolicy;Ljava/lang/String;Ljava/util/Collection;I)Z

    return-void

    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    # getter for: Lcom/android/server/enterprise/certificate/CertificatePolicy;->mNativeKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;
    invoke-static {v3}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$1500(Lcom/android/server/enterprise/certificate/CertificatePolicy;)Lcom/android/server/enterprise/certificate/EdmKeyStore;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->installCertificates(Ljava/util/Map;)Ljava/util/List;

    goto :goto_2
.end method

.method private refreshSystemKeyStore()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->refreshSystemKeyStoreAsUser(I)V

    return-void
.end method

.method private refreshSystemKeyStoreAsUser(I)V
    .locals 25

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    const-string/jumbo v4, "systemDisabledList"

    move/from16 v0, p1

    # invokes: Lcom/android/server/enterprise/certificate/CertificatePolicy;->getGenericListAsUser(Ljava/lang/String;I)Ljava/util/List;
    invoke-static {v3, v4, v0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$900(Lcom/android/server/enterprise/certificate/CertificatePolicy;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    const-string/jumbo v4, "systemPrevDisabledList"

    move/from16 v0, p1

    # invokes: Lcom/android/server/enterprise/certificate/CertificatePolicy;->getGenericListAsUser(Ljava/lang/String;I)Ljava/util/List;
    invoke-static {v3, v4, v0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$900(Lcom/android/server/enterprise/certificate/CertificatePolicy;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    # getter for: Lcom/android/server/enterprise/certificate/CertificatePolicy;->mUserKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;
    invoke-static {v3}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$1100(Lcom/android/server/enterprise/certificate/CertificatePolicy;)Lcom/android/server/enterprise/certificate/EdmKeyStore;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    const-string/jumbo v6, "userRemovedList"

    move/from16 v0, p1

    # invokes: Lcom/android/server/enterprise/certificate/CertificatePolicy;->getGenericListAsUser(Ljava/lang/String;I)Ljava/util/List;
    invoke-static {v4, v6, v0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$900(Lcom/android/server/enterprise/certificate/CertificatePolicy;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->getCertificates(Ljava/util/List;)Ljava/util/Map;

    move-result-object v20

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v22

    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    # getter for: Lcom/android/server/enterprise/certificate/CertificatePolicy;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$100(Lcom/android/server/enterprise/certificate/CertificatePolicy;)Landroid/content/Context;

    move-result-object v3

    new-instance v4, Landroid/os/UserHandle;

    move/from16 v0, p1

    invoke-direct {v4, v0}, Landroid/os/UserHandle;-><init>(I)V

    invoke-static {v3, v4}, Landroid/security/KeyChain;->bindAsUser(Landroid/content/Context;Landroid/os/UserHandle;)Landroid/security/KeyChain$KeyChainConnection;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v16

    :try_start_1
    invoke-virtual/range {v16 .. v16}, Landroid/security/KeyChain$KeyChainConnection;->getService()Landroid/security/IKeyChainService;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v17

    if-nez v17, :cond_0

    :try_start_2
    invoke-virtual/range {v16 .. v16}, Landroid/security/KeyChain$KeyChainConnection;->close()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_0
    return-void

    :cond_0
    :try_start_3
    invoke-interface/range {v17 .. v17}, Landroid/security/IKeyChainService;->allSystemAliases()Ljava/util/List;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-interface {v12, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v3, 0x1

    move-object/from16 v0, v17

    invoke-interface {v0, v9, v3}, Landroid/security/IKeyChainService;->getCertificateFromTrustCredential(Ljava/lang/String;Z)[B

    move-result-object v11

    if-eqz v11, :cond_1

    invoke-static {v11}, Landroid/security/Credentials;->convertFromPem([B)Ljava/util/List;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_2
    :goto_1
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/security/cert/X509Certificate;

    if-eqz v10, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    const/4 v4, 0x2

    # invokes: Lcom/android/server/enterprise/certificate/CertificatePolicy;->verifyCertificateTrustful(Ljava/security/cert/X509Certificate;I)Z
    invoke-static {v3, v10, v4}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$1000(Lcom/android/server/enterprise/certificate/CertificatePolicy;Ljava/security/cert/X509Certificate;I)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-interface {v12, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v17

    invoke-interface {v0, v9}, Landroid/security/IKeyChainService;->containsAlias(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    move-object/from16 v0, v19

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/security/cert/CertificateException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catch_0
    move-exception v13

    :try_start_4
    const-string v3, "CertificatePolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "refreshSystemKeyStoreAsUser "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    invoke-virtual/range {v16 .. v16}, Landroid/security/KeyChain$KeyChainConnection;->close()V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_2
    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :cond_3
    :try_start_6
    invoke-interface/range {v17 .. v17}, Landroid/security/IKeyChainService;->userAliases()Ljava/util/List;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_4
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    const/4 v3, 0x0

    move-object/from16 v0, v17

    invoke-interface {v0, v9, v3}, Landroid/security/IKeyChainService;->getCertificateFromTrustCredential(Ljava/lang/String;Z)[B

    move-result-object v11

    if-eqz v11, :cond_4

    invoke-static {v11}, Landroid/security/Credentials;->convertFromPem([B)Ljava/util/List;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_5
    :goto_3
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/security/cert/X509Certificate;

    if-eqz v10, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    const/4 v4, 0x3

    # invokes: Lcom/android/server/enterprise/certificate/CertificatePolicy;->verifyCertificateTrustful(Ljava/security/cert/X509Certificate;I)Z
    invoke-static {v3, v10, v4}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$1000(Lcom/android/server/enterprise/certificate/CertificatePolicy;Ljava/security/cert/X509Certificate;I)Z

    move-result v3

    if-nez v3, :cond_5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-interface {v0, v3, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/security/cert/CertificateException; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_3

    :catch_1
    move-exception v13

    :try_start_7
    const-string v3, "CertificatePolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "refreshSystemKeyStoreAsUser "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    invoke-virtual/range {v16 .. v16}, Landroid/security/KeyChain$KeyChainConnection;->close()V
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_2

    :catch_2
    move-exception v13

    :try_start_9
    const-string v3, "CertificatePolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "refreshSystemKeyStoreAsUser "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_0

    :cond_6
    :try_start_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    # getter for: Lcom/android/server/enterprise/certificate/CertificatePolicy;->mUserKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;
    invoke-static {v3}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$1100(Lcom/android/server/enterprise/certificate/CertificatePolicy;)Lcom/android/server/enterprise/certificate/EdmKeyStore;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->installCertificates(Ljava/util/Map;)Ljava/util/List;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v5, v12}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface/range {v20 .. v20}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v5, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    new-instance v2, Lcom/android/server/enterprise/certificate/CertificatePolicy$TrustedStoreOperation;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v8, 0x0

    move/from16 v7, p1

    invoke-direct/range {v2 .. v8}, Lcom/android/server/enterprise/certificate/CertificatePolicy$TrustedStoreOperation;-><init>(Lcom/android/server/enterprise/certificate/CertificatePolicy;ILjava/util/List;Ljava/util/List;ILcom/android/server/enterprise/certificate/CertificatePolicy$1;)V

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Lcom/android/server/enterprise/certificate/CertificatePolicy$TrustedStoreOperation;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    const-string/jumbo v4, "systemDisabledList"

    move/from16 v0, p1

    # invokes: Lcom/android/server/enterprise/certificate/CertificatePolicy;->putGenericListAsUser(Ljava/lang/String;Ljava/util/Collection;I)Z
    invoke-static {v3, v4, v12, v0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$1300(Lcom/android/server/enterprise/certificate/CertificatePolicy;Ljava/lang/String;Ljava/util/Collection;I)Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    const-string/jumbo v4, "systemPrevDisabledList"

    move-object/from16 v0, v19

    move/from16 v1, p1

    # invokes: Lcom/android/server/enterprise/certificate/CertificatePolicy;->putGenericListAsUser(Ljava/lang/String;Ljava/util/Collection;I)Z
    invoke-static {v3, v4, v0, v1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$1300(Lcom/android/server/enterprise/certificate/CertificatePolicy;Ljava/lang/String;Ljava/util/Collection;I)Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    const-string/jumbo v4, "userRemovedList"

    invoke-interface/range {v20 .. v20}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    move/from16 v0, p1

    # invokes: Lcom/android/server/enterprise/certificate/CertificatePolicy;->putGenericListAsUser(Ljava/lang/String;Ljava/util/Collection;I)Z
    invoke-static {v3, v4, v6, v0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$1300(Lcom/android/server/enterprise/certificate/CertificatePolicy;Ljava/lang/String;Ljava/util/Collection;I)Z
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/security/cert/CertificateException; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :try_start_b
    invoke-virtual/range {v16 .. v16}, Landroid/security/KeyChain$KeyChainConnection;->close()V
    :try_end_b
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_b} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_3
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto/16 :goto_2

    :catch_3
    move-exception v13

    :try_start_c
    const-string v3, "CertificatePolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "refreshSystemKeyStoreAsUser "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_0

    :catch_4
    move-exception v13

    :try_start_d
    const-string v3, "CertificatePolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "refreshSystemKeyStoreAsUser "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    :try_start_e
    invoke-virtual/range {v16 .. v16}, Landroid/security/KeyChain$KeyChainConnection;->close()V
    :try_end_e
    .catch Ljava/lang/InterruptedException; {:try_start_e .. :try_end_e} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_e} :catch_3
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    goto/16 :goto_2

    :catchall_0
    move-exception v3

    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    :catchall_1
    move-exception v3

    :try_start_f
    invoke-virtual/range {v16 .. v16}, Landroid/security/KeyChain$KeyChainConnection;->close()V

    throw v3
    :try_end_f
    .catch Ljava/lang/InterruptedException; {:try_start_f .. :try_end_f} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_f} :catch_3
    .catchall {:try_start_f .. :try_end_f} :catchall_0
.end method

.method private rollbackNativeKeyStore(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->rollbackNativeKeyStoreAsUser(II)V

    return-void
.end method

.method private rollbackNativeKeyStoreAsUser(II)V
    .locals 18

    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->selectNativeKeystoreUid(I)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    move/from16 v0, p2

    # invokes: Lcom/android/server/enterprise/certificate/CertificatePolicy;->getGenericListAsUser(Ljava/lang/String;I)Ljava/util/List;
    invoke-static {v3, v12, v0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$900(Lcom/android/server/enterprise/certificate/CertificatePolicy;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v17

    new-instance v13, Ljava/util/ArrayList;

    move-object/from16 v0, v17

    invoke-direct {v13, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x2

    move/from16 v0, p1

    if-eq v0, v3, :cond_0

    invoke-interface {v13}, Ljava/util/List;->clear()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    move-object/from16 v0, v17

    move/from16 v1, p2

    # invokes: Lcom/android/server/enterprise/certificate/CertificatePolicy;->addUserIdPrefixToList(Ljava/util/List;I)Ljava/util/List;
    invoke-static {v3, v0, v1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$1400(Lcom/android/server/enterprise/certificate/CertificatePolicy;Ljava/util/List;I)Ljava/util/List;

    move-result-object v13

    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    # getter for: Lcom/android/server/enterprise/certificate/CertificatePolicy;->mNativeKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;
    invoke-static {v3}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$1500(Lcom/android/server/enterprise/certificate/CertificatePolicy;)Lcom/android/server/enterprise/certificate/EdmKeyStore;

    move-result-object v3

    invoke-virtual {v3, v13}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->getCertificates(Ljava/util/List;)Ljava/util/Map;

    move-result-object v16

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    move/from16 v0, p2

    # invokes: Lcom/android/server/enterprise/certificate/CertificatePolicy;->isNativeKeyStoreUnlockedAsUser(I)Z
    invoke-static {v3, v0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$400(Lcom/android/server/enterprise/certificate/CertificatePolicy;I)Z

    move-result v3

    if-eqz v3, :cond_5

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    invoke-interface/range {v16 .. v16}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_1
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-interface {v0, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/security/cert/X509Certificate;

    if-eqz v10, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    const/4 v4, 0x3

    # invokes: Lcom/android/server/enterprise/certificate/CertificatePolicy;->verifyCertificateTrustful(Ljava/security/cert/X509Certificate;I)Z
    invoke-static {v3, v10, v4}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$1000(Lcom/android/server/enterprise/certificate/CertificatePolicy;Ljava/security/cert/X509Certificate;I)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v15, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v14, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x2

    move/from16 v0, p1

    if-eq v0, v3, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    # invokes: Lcom/android/server/enterprise/certificate/CertificatePolicy;->removeUserIdPrefix(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v3, v9}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$200(Lcom/android/server/enterprise/certificate/CertificatePolicy;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v7, v3, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    invoke-interface {v7, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-interface {v0, v9}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_4
    new-instance v2, Lcom/android/server/enterprise/certificate/CertificatePolicy$NativeKeyStoreOperation;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    move/from16 v5, p1

    invoke-direct/range {v2 .. v8}, Lcom/android/server/enterprise/certificate/CertificatePolicy$NativeKeyStoreOperation;-><init>(Lcom/android/server/enterprise/certificate/CertificatePolicy;IILjava/util/Set;Ljava/util/Map;Lcom/android/server/enterprise/certificate/CertificatePolicy$1;)V

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Integer;

    const/4 v4, 0x0

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v2, v3}, Lcom/android/server/enterprise/certificate/CertificatePolicy$NativeKeyStoreOperation;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    # getter for: Lcom/android/server/enterprise/certificate/CertificatePolicy;->mNativeKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;
    invoke-static {v3}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$1500(Lcom/android/server/enterprise/certificate/CertificatePolicy;)Lcom/android/server/enterprise/certificate/EdmKeyStore;

    move-result-object v3

    invoke-virtual {v3, v14}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->removeCertificates(Ljava/util/List;)Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    invoke-interface/range {v16 .. v16}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    move/from16 v0, p2

    # invokes: Lcom/android/server/enterprise/certificate/CertificatePolicy;->putGenericListAsUser(Ljava/lang/String;Ljava/util/Collection;I)Z
    invoke-static {v3, v12, v4, v0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$1300(Lcom/android/server/enterprise/certificate/CertificatePolicy;Ljava/lang/String;Ljava/util/Collection;I)Z

    return-void
.end method

.method private rollbackSystemKeyStore()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->rollbackSystemKeyStoreAsUser(I)V

    return-void
.end method

.method private rollbackSystemKeyStoreAsUser(I)V
    .locals 28

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    const-string/jumbo v4, "systemDisabledList"

    move/from16 v0, p1

    # invokes: Lcom/android/server/enterprise/certificate/CertificatePolicy;->getGenericListAsUser(Ljava/lang/String;I)Ljava/util/List;
    invoke-static {v3, v4, v0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$900(Lcom/android/server/enterprise/certificate/CertificatePolicy;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    const-string/jumbo v4, "systemPrevDisabledList"

    move/from16 v0, p1

    # invokes: Lcom/android/server/enterprise/certificate/CertificatePolicy;->getGenericListAsUser(Ljava/lang/String;I)Ljava/util/List;
    invoke-static {v3, v4, v0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$900(Lcom/android/server/enterprise/certificate/CertificatePolicy;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    const-string/jumbo v4, "userRemovedList"

    move/from16 v0, p1

    # invokes: Lcom/android/server/enterprise/certificate/CertificatePolicy;->getGenericListAsUser(Ljava/lang/String;I)Ljava/util/List;
    invoke-static {v3, v4, v0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$900(Lcom/android/server/enterprise/certificate/CertificatePolicy;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v24

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v26

    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    # getter for: Lcom/android/server/enterprise/certificate/CertificatePolicy;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$100(Lcom/android/server/enterprise/certificate/CertificatePolicy;)Landroid/content/Context;

    move-result-object v3

    new-instance v4, Landroid/os/UserHandle;

    move/from16 v0, p1

    invoke-direct {v4, v0}, Landroid/os/UserHandle;-><init>(I)V

    invoke-static {v3, v4}, Landroid/security/KeyChain;->bindAsUser(Landroid/content/Context;Landroid/os/UserHandle;)Landroid/security/KeyChain$KeyChainConnection;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v18

    :try_start_1
    invoke-virtual/range {v18 .. v18}, Landroid/security/KeyChain$KeyChainConnection;->getService()Landroid/security/IKeyChainService;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v19

    if-nez v19, :cond_0

    :try_start_2
    invoke-virtual/range {v18 .. v18}, Landroid/security/KeyChain$KeyChainConnection;->close()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static/range {v26 .. v27}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_0
    return-void

    :cond_0
    :try_start_3
    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    const/4 v3, 0x1

    move-object/from16 v0, v19

    invoke-interface {v0, v9, v3}, Landroid/security/IKeyChainService;->getCertificateFromTrustCredential(Ljava/lang/String;Z)[B

    move-result-object v11

    if-eqz v11, :cond_1

    invoke-static {v11}, Landroid/security/Credentials;->convertFromPem([B)Ljava/util/List;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :cond_2
    :goto_1
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/security/cert/X509Certificate;

    if-eqz v10, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    const/4 v4, 0x2

    # invokes: Lcom/android/server/enterprise/certificate/CertificatePolicy;->verifyCertificateTrustful(Ljava/security/cert/X509Certificate;I)Z
    invoke-static {v3, v10, v4}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$1000(Lcom/android/server/enterprise/certificate/CertificatePolicy;Ljava/security/cert/X509Certificate;I)Z

    move-result v3

    if-eqz v3, :cond_2

    move-object/from16 v0, v23

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v22

    invoke-interface {v0, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-interface {v6, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/security/cert/CertificateException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v13

    :try_start_4
    const-string v3, "CertificatePolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "rollbackSystemKeyStoreAsUser "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-virtual/range {v18 .. v18}, Landroid/security/KeyChain$KeyChainConnection;->close()V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :goto_2
    invoke-static/range {v26 .. v27}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :cond_3
    :try_start_6
    move-object/from16 v0, v22

    invoke-interface {v0, v9}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/security/cert/CertificateException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1

    :catch_1
    move-exception v13

    :try_start_7
    const-string v3, "CertificatePolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "rollbackSystemKeyStoreAsUser "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    invoke-virtual/range {v18 .. v18}, Landroid/security/KeyChain$KeyChainConnection;->close()V
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_2

    :catch_2
    move-exception v13

    :try_start_9
    const-string v3, "CertificatePolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "rollbackSystemKeyStoreAsUser "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    invoke-static/range {v26 .. v27}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_0

    :cond_4
    :try_start_a
    invoke-interface/range {v23 .. v23}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_3
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-interface {v12, v9}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/security/cert/CertificateException; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_3

    :catch_3
    move-exception v13

    :try_start_b
    const-string v3, "CertificatePolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "rollbackSystemKeyStoreAsUser "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :try_start_c
    invoke-virtual/range {v18 .. v18}, Landroid/security/KeyChain$KeyChainConnection;->close()V
    :try_end_c
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_c} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_c} :catch_4
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    goto :goto_2

    :catch_4
    move-exception v13

    :try_start_d
    const-string v3, "CertificatePolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "rollbackSystemKeyStoreAsUser "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    invoke-static/range {v26 .. v27}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_0

    :cond_5
    :try_start_e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    # getter for: Lcom/android/server/enterprise/certificate/CertificatePolicy;->mUserKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;
    invoke-static {v3}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$1100(Lcom/android/server/enterprise/certificate/CertificatePolicy;)Lcom/android/server/enterprise/certificate/EdmKeyStore;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->getCertificates(Ljava/util/List;)Ljava/util/Map;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_6
    :goto_4
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/Map$Entry;

    invoke-interface {v15}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-interface {v15}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/security/cert/X509Certificate;

    if-eqz v10, :cond_6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    const/4 v4, 0x3

    # invokes: Lcom/android/server/enterprise/certificate/CertificatePolicy;->verifyCertificateTrustful(Ljava/security/cert/X509Certificate;I)Z
    invoke-static {v3, v10, v4}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$1000(Lcom/android/server/enterprise/certificate/CertificatePolicy;Ljava/security/cert/X509Certificate;I)Z

    move-result v3

    if-eqz v3, :cond_6

    move-object/from16 v0, v24

    invoke-interface {v0, v9}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v14, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_e} :catch_0
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_1
    .catch Ljava/security/cert/CertificateException; {:try_start_e .. :try_end_e} :catch_3
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v3

    :try_start_f
    invoke-virtual/range {v18 .. v18}, Landroid/security/KeyChain$KeyChainConnection;->close()V

    throw v3
    :try_end_f
    .catch Ljava/lang/InterruptedException; {:try_start_f .. :try_end_f} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_f} :catch_4
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    :catchall_1
    move-exception v3

    invoke-static/range {v26 .. v27}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    :cond_7
    :try_start_10
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    # getter for: Lcom/android/server/enterprise/certificate/CertificatePolicy;->mUserKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;
    invoke-static {v3}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$1100(Lcom/android/server/enterprise/certificate/CertificatePolicy;)Lcom/android/server/enterprise/certificate/EdmKeyStore;

    move-result-object v3

    invoke-virtual {v3, v14}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->removeCertificates(Ljava/util/List;)Ljava/util/List;

    new-instance v2, Lcom/android/server/enterprise/certificate/CertificatePolicy$TrustedStoreOperation;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x0

    move/from16 v7, p1

    invoke-direct/range {v2 .. v8}, Lcom/android/server/enterprise/certificate/CertificatePolicy$TrustedStoreOperation;-><init>(Lcom/android/server/enterprise/certificate/CertificatePolicy;ILjava/util/List;Ljava/util/List;ILcom/android/server/enterprise/certificate/CertificatePolicy$1;)V

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Lcom/android/server/enterprise/certificate/CertificatePolicy$TrustedStoreOperation;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    const-string/jumbo v4, "systemDisabledList"

    move/from16 v0, p1

    # invokes: Lcom/android/server/enterprise/certificate/CertificatePolicy;->putGenericListAsUser(Ljava/lang/String;Ljava/util/Collection;I)Z
    invoke-static {v3, v4, v12, v0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$1300(Lcom/android/server/enterprise/certificate/CertificatePolicy;Ljava/lang/String;Ljava/util/Collection;I)Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    const-string/jumbo v4, "systemPrevDisabledList"

    move-object/from16 v0, v22

    move/from16 v1, p1

    # invokes: Lcom/android/server/enterprise/certificate/CertificatePolicy;->putGenericListAsUser(Ljava/lang/String;Ljava/util/Collection;I)Z
    invoke-static {v3, v4, v0, v1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$1300(Lcom/android/server/enterprise/certificate/CertificatePolicy;Ljava/lang/String;Ljava/util/Collection;I)Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    const-string/jumbo v4, "userRemovedList"

    move-object/from16 v0, v24

    move/from16 v1, p1

    # invokes: Lcom/android/server/enterprise/certificate/CertificatePolicy;->putGenericListAsUser(Ljava/lang/String;Ljava/util/Collection;I)Z
    invoke-static {v3, v4, v0, v1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$1300(Lcom/android/server/enterprise/certificate/CertificatePolicy;Ljava/lang/String;Ljava/util/Collection;I)Z
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_10} :catch_0
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_1
    .catch Ljava/security/cert/CertificateException; {:try_start_10 .. :try_end_10} :catch_3
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    :try_start_11
    invoke-virtual/range {v18 .. v18}, Landroid/security/KeyChain$KeyChainConnection;->close()V
    :try_end_11
    .catch Ljava/lang/InterruptedException; {:try_start_11 .. :try_end_11} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_11 .. :try_end_11} :catch_4
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    goto/16 :goto_2
.end method

.method private selectNativeKeystoreUid(I)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    const-string/jumbo v0, "nativeRemovedList_wifi"

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    const-string/jumbo v0, "nativeRemovedList"

    goto :goto_0
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [[Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->doInBackground([[Ljava/lang/Integer;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([[Ljava/lang/Integer;)Ljava/lang/Void;
    .locals 10

    iget v8, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->mPriority:I

    invoke-static {v8}, Landroid/os/Process;->setThreadPriority(I)V

    const/4 v8, 0x0

    aget-object v8, p1, v8

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iget-object v8, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    # getter for: Lcom/android/server/enterprise/certificate/CertificatePolicy;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$100(Lcom/android/server/enterprise/certificate/CertificatePolicy;)Landroid/content/Context;

    move-result-object v8

    const-string/jumbo v9, "user"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    if-eqz v1, :cond_0

    const/4 v8, 0x1

    invoke-virtual {v1, v8}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v6

    :cond_0
    invoke-static {}, Landroid/os/PersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v7

    const-string v8, "2.0"

    const-string/jumbo v9, "version"

    invoke-virtual {v7, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-direct {p0, v6}, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->pruneDeletedContainerProfiles(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    :cond_1
    iget v8, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->mOperation:I

    packed-switch v8, :pswitch_data_0

    :goto_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    iget-object v8, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v9

    invoke-virtual {v9}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v9

    # invokes: Lcom/android/server/enterprise/certificate/CertificatePolicy;->sendIntentToSettings(I)V
    invoke-static {v8, v9}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$800(Lcom/android/server/enterprise/certificate/CertificatePolicy;I)V

    goto :goto_1

    :pswitch_0
    iget-object v8, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    # getter for: Lcom/android/server/enterprise/certificate/CertificatePolicy;->mRefreshRollbackLock:Ljava/lang/Object;
    invoke-static {v8}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$700(Lcom/android/server/enterprise/certificate/CertificatePolicy;)Ljava/lang/Object;

    move-result-object v9

    monitor-enter v9

    :try_start_0
    invoke-direct {p0, v4, v6}, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->executeRefreshOperation(Ljava/util/List;Ljava/util/List;)V

    monitor-exit v9

    goto :goto_0

    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8

    :pswitch_1
    iget-object v8, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    # getter for: Lcom/android/server/enterprise/certificate/CertificatePolicy;->mRefreshRollbackLock:Ljava/lang/Object;
    invoke-static {v8}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$700(Lcom/android/server/enterprise/certificate/CertificatePolicy;)Ljava/lang/Object;

    move-result-object v9

    monitor-enter v9

    :try_start_1
    invoke-direct {p0, v4, v6}, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->executeRollbackOperation(Ljava/util/List;Ljava/util/List;)V

    monitor-exit v9

    goto :goto_0

    :catchall_1
    move-exception v8

    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v8

    :pswitch_2
    iget-object v8, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    # getter for: Lcom/android/server/enterprise/certificate/CertificatePolicy;->mRefreshRollbackLock:Ljava/lang/Object;
    invoke-static {v8}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->access$700(Lcom/android/server/enterprise/certificate/CertificatePolicy;)Ljava/lang/Object;

    move-result-object v9

    monitor-enter v9

    :try_start_2
    invoke-direct {p0, v4, v6}, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->executeRollbackOperation(Ljava/util/List;Ljava/util/List;)V

    invoke-direct {p0, v4, v6}, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshOperation;->executeRefreshOperation(Ljava/util/List;Ljava/util/List;)V

    monitor-exit v9

    goto :goto_0

    :catchall_2
    move-exception v8

    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v8

    :cond_2
    const/4 v8, 0x0

    return-object v8

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method getPersonaManager()Lcom/android/server/pm/PersonaManagerService;
    .locals 3

    const/4 v1, 0x0

    if-nez v1, :cond_0

    const-string/jumbo v2, "persona"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IPersonaManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPersonaManager;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PersonaManagerService;

    :cond_0
    return-object v1
.end method
