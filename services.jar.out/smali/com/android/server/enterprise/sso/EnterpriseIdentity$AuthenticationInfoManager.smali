.class Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;
.super Ljava/lang/Object;
.source "EnterpriseIdentity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/sso/EnterpriseIdentity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AuthenticationInfoManager"
.end annotation


# instance fields
.field containerID:I

.field isMigrationNeeded:Z

.field isSSOConfigurationEnabled:Z

.field originUserID:I

.field packageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-boolean v0, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "EnterpriseIdentity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "In AuthenticationInfoManager: package:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " originUser:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;->containerID:I

    iput-object p1, p0, Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;->packageName:Ljava/lang/String;

    iput p2, p0, Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;->originUserID:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IZZ)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-boolean v0, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "EnterpriseIdentity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "In AuthenticationInfoManager: package:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " originUser:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " migration:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;->containerID:I

    iput-object p1, p0, Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;->packageName:Ljava/lang/String;

    iput p2, p0, Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;->originUserID:I

    iput-boolean p3, p0, Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;->isMigrationNeeded:Z

    iput-boolean p4, p0, Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;->isSSOConfigurationEnabled:Z

    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;->setMigrationStatus(Z)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;->setSSOConfigurationEnabled(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;->updateContainerID(I)V

    return-void
.end method

.method private setMigrationStatus(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;->isMigrationNeeded:Z

    return-void
.end method

.method private setSSOConfigurationEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;->isSSOConfigurationEnabled:Z

    return-void
.end method

.method private updateContainerID(I)V
    .locals 3

    const/16 v0, 0x64

    if-lt p1, v0, :cond_1

    sget-boolean v0, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "EnterpriseIdentity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "In updateContainerID: Updating container ID as "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput p1, p0, Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationInfoManager;->containerID:I

    :cond_1
    return-void
.end method
