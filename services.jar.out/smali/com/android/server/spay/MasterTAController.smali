.class public Lcom/android/server/spay/MasterTAController;
.super Lcom/android/server/spay/TAController;
.source "MasterTAController.java"


# static fields
.field private static final DEBUG:Z

.field private static final MASTER_PAY_CERT_PATH:Ljava/lang/String; = "/efs/mc/mc.dat"

.field private static final MASTER_PAY_CERT_PATH_NEW:Ljava/lang/String; = "/efs/mc/rst.dat"

.field private static final TAG:Ljava/lang/String; = "PaymentManagerService"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/android/server/spay/PaymentManagerService;->DEBUG:Z

    sput-boolean v0, Lcom/android/server/spay/MasterTAController;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(ILandroid/spay/PaymentTZServiceConfig$TAConfig;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/spay/TAController;-><init>(ILandroid/spay/PaymentTZServiceConfig$TAConfig;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic clearDeviceCertificates()Z
    .locals 1

    invoke-super {p0}, Lcom/android/server/spay/TAController;->clearDeviceCertificates()Z

    move-result v0

    return v0
.end method

.method public copyMctoRst()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v2, "copyMctoRst"

    invoke-static {v2}, Lcom/android/server/spay/PaymentManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    new-instance v1, Ljava/io/File;

    const-string v2, "/efs/mc/mc.dat"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "/efs/mc/mc.dat"

    invoke-static {v2}, Lcom/android/server/spay/Utils;->readFile(Ljava/lang/String;)[B

    move-result-object v0

    const-string v2, "/efs/mc/rst.dat"

    invoke-static {v0, v2}, Lcom/android/server/spay/Utils;->writeFile([BLjava/lang/String;)Z

    move-result v2

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getCertInfo()Landroid/spay/CertInfo;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string/jumbo v5, "getCertInfo"

    invoke-static {v5}, Lcom/android/server/spay/PaymentManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    new-instance v4, Ljava/io/File;

    const-string v5, "/efs/mc/rst.dat"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/io/File;

    const-string v5, "/efs/mc/mc.dat"

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v0, Landroid/spay/CertInfo;

    invoke-direct {v0}, Landroid/spay/CertInfo;-><init>()V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "/efs/mc/rst.dat"

    invoke-static {v5}, Lcom/android/server/spay/Utils;->readFile(Ljava/lang/String;)[B

    move-result-object v2

    iget-object v5, v0, Landroid/spay/CertInfo;->mCerts:Ljava/util/Map;

    const-string v6, "/efs/mc/rst.dat"

    invoke-interface {v5, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "/efs/mc/mc.dat"

    invoke-static {v5}, Lcom/android/server/spay/Utils;->readFile(Ljava/lang/String;)[B

    move-result-object v1

    iget-object v5, v0, Landroid/spay/CertInfo;->mCerts:Ljava/util/Map;

    const-string v6, "/efs/mc/mc.dat"

    invoke-interface {v5, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    const-string v5, "PaymentManagerService"

    const-string v6, "MasterTAController::getCertInfo: Error: Master Card Certficate File Not Found"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic loadTA(Landroid/os/ParcelFileDescriptor;JJ)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-super/range {p0 .. p5}, Lcom/android/server/spay/TAController;->loadTA(Landroid/os/ParcelFileDescriptor;JJ)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic makeSystemCall(I)Z
    .locals 1

    invoke-super {p0, p1}, Lcom/android/server/spay/TAController;->makeSystemCall(I)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic processTACommand(Landroid/spay/TACommandRequest;)Landroid/spay/TACommandResponse;
    .locals 1

    invoke-super {p0, p1}, Lcom/android/server/spay/TAController;->processTACommand(Landroid/spay/TACommandRequest;)Landroid/spay/TACommandResponse;

    move-result-object v0

    return-object v0
.end method

.method public setCertInfo(Landroid/spay/CertInfo;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string/jumbo v1, "setCertInfo"

    invoke-static {v1}, Lcom/android/server/spay/PaymentManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    iget-object v1, p1, Landroid/spay/CertInfo;->mCerts:Ljava/util/Map;

    const-string v2, "/efs/mc/rst.dat"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    const-string v1, "/efs/mc/rst.dat"

    invoke-static {v0, v1}, Lcom/android/server/spay/Utils;->writeFile([BLjava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public bridge synthetic unloadTA()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-super {p0}, Lcom/android/server/spay/TAController;->unloadTA()V

    return-void
.end method
