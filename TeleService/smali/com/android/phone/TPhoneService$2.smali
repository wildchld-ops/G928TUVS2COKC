.class Lcom/android/phone/TPhoneService$2;
.super Ljava/lang/Object;
.source "TPhoneService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/TPhoneService;->InstallTPhonePkg()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/TPhoneService;


# direct methods
.method constructor <init>(Lcom/android/phone/TPhoneService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/TPhoneService$2;->this$0:Lcom/android/phone/TPhoneService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 17

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/TPhoneService$2;->this$0:Lcom/android/phone/TPhoneService;

    invoke-virtual {v2}, Lcom/android/phone/TPhoneService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/TPhoneService$2;->this$0:Lcom/android/phone/TPhoneService;

    invoke-virtual {v2}, Lcom/android/phone/TPhoneService;->GetTPhonePath()Ljava/lang/String;

    move-result-object v13

    if-nez v13, :cond_0

    const-string v2, "[carrier-phone] TPhoneService"

    const-string v3, "[TPhone] InstallTPhonePkg path is null "

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2, v3, v5}, Lcom/android/services/telephony/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    const-string v2, "[carrier-phone] TPhoneService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[TPhone] InstallTPhonePkg path= "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2, v3, v5}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v16, Ljava/io/File;

    move-object/from16 v0, v16

    invoke-direct {v0, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static/range {v16 .. v16}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v10

    const-string v9, "com.skt.prod.phone"

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v15, v9, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v14

    if-eqz v14, :cond_1

    or-int/lit8 v12, v12, 0x2

    const-string v2, "[carrier-phone] TPhoneService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[TPhone]Replacing package : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2, v3, v5}, Lcom/android/services/telephony/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    new-instance v1, Landroid/content/pm/VerificationParams;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Landroid/content/pm/VerificationParams;-><init>(Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;ILandroid/content/pm/ManifestDigest;)V

    new-instance v4, Lcom/android/phone/TPhoneService$PackageInstallObserver;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/TPhoneService$2;->this$0:Lcom/android/phone/TPhoneService;

    invoke-direct {v4, v2}, Lcom/android/phone/TPhoneService$PackageInstallObserver;-><init>(Lcom/android/phone/TPhoneService;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/TPhoneService$2;->this$0:Lcom/android/phone/TPhoneService;

    const/16 v3, 0x12d

    invoke-virtual {v2, v3}, Lcom/android/phone/TPhoneService;->SetTPhoneInstallState(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/TPhoneService$2;->this$0:Lcom/android/phone/TPhoneService;

    # invokes: Lcom/android/phone/TPhoneService;->CreateTphoneInstallNotification()V
    invoke-static {v2}, Lcom/android/phone/TPhoneService;->access$1700(Lcom/android/phone/TPhoneService;)V

    const/4 v2, 0x1

    invoke-static {v2}, Lcom/android/services/telephony/common/SystemDBInterface;->setTPhoneUpgradeInstallingState(I)V

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v2, v15

    move-object v3, v10

    move v5, v12

    move-object v7, v1

    invoke-virtual/range {v2 .. v8}, Landroid/content/pm/PackageManager;->installPackageWithVerificationAndEncryption(Landroid/net/Uri;Landroid/content/pm/IPackageInstallObserver;ILjava/lang/String;Landroid/content/pm/VerificationParams;Landroid/content/pm/ContainerEncryptionParams;)V

    goto :goto_0

    :catch_0
    move-exception v11

    const-string v2, "[carrier-phone] TPhoneService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[TPhone]New Install : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2, v3, v5}, Lcom/android/services/telephony/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method
