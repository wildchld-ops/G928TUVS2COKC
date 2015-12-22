.class Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy$SDAgentPackageStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "EnterpriseSharedDevicePolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SDAgentPackageStateReceiver"
.end annotation


# instance fields
.field private final BRTAG:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;


# direct methods
.method private constructor <init>(Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy$SDAgentPackageStateReceiver;->this$0:Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const-class v0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy$SDAgentPackageStateReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy$SDAgentPackageStateReceiver;->BRTAG:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy$SDAgentPackageStateReceiver;-><init>(Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11

    const/4 v10, 0x0

    const/4 v9, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->getEncodedSchemeSpecificPart()Ljava/lang/String;

    move-result-object v2

    const-string v5, "com.sec.enterprise.knox.shareddevice"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy$SDAgentPackageStateReceiver;->BRTAG:Ljava/lang/String;

    const-string v8, "Handling \'com.sec.enterprise.knox.shareddevice\'!"

    invoke-static {v5, v8}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v5, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy$SDAgentPackageStateReceiver;->this$0:Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;

    # invokes: Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->checkSDSignature()Z
    invoke-static {v5}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->access$100(Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;)Z

    move-result v5

    if-eqz v5, :cond_0

    # getter for: Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->access$200()Ljava/lang/String;

    move-result-object v5

    const-string v8, "SD Agent added!"

    invoke-static {v5, v8}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy$SDAgentPackageStateReceiver;->this$0:Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    # invokes: Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->showProgressDialog(Landroid/content/Context;)V
    invoke-static {v5, v8}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->access$300(Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;Landroid/content/Context;)V

    iget-object v5, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy$SDAgentPackageStateReceiver;->this$0:Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;

    iget-object v8, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy$SDAgentPackageStateReceiver;->this$0:Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;

    # invokes: Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->findSDAgentInstallerPackageUid()I
    invoke-static {v8}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->access$500(Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;)I

    move-result v8

    # setter for: Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mSDAgentInstallerPackageUid:I
    invoke-static {v5, v8}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->access$402(Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;I)I

    # getter for: Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->access$200()Ljava/lang/String;

    move-result-object v5

    const-string v8, "Broadcast to SD Agent!"

    invoke-static {v5, v8}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.sec.enterprise.knox.shareddevice.enable"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v5, "com.sec.enterprise.knox.shareddevice"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v5, "SD_INSTALLER_PACKAGE_NAME"

    iget-object v8, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy$SDAgentPackageStateReceiver;->this$0:Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;

    # getter for: Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mSDAgentInstallerPackageUid:I
    invoke-static {v8}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->access$400(Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;)I

    move-result v8

    invoke-virtual {v4, v5, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/16 v5, 0x20

    invoke-virtual {v4, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy$SDAgentPackageStateReceiver;->this$0:Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;

    # getter for: Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->access$600(Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;)Landroid/content/Context;

    move-result-object v5

    sget-object v8, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    const-string v9, "com.sec.enterprise.knox.shareddevice"

    invoke-virtual {v5, v4, v8, v9}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v5, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "android.intent.extra.REPLACING"

    invoke-virtual {p2, v5, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_1

    # getter for: Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->access$200()Ljava/lang/String;

    move-result-object v5

    const-string v8, "SD Agent removed!"

    invoke-static {v5, v8}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy$SDAgentPackageStateReceiver;->this$0:Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;

    # invokes: Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->getEdmStorageProvider()Lcom/android/server/enterprise/storage/EdmStorageProvider;
    invoke-static {v5}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->access$700(Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;)Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-result-object v5

    const-string v8, "SHAREDDEVICE"

    invoke-virtual {v5, v8, v10}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->delete(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v3

    # getter for: Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->access$200()Ljava/lang/String;

    move-result-object v5

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Delete Result: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy$SDAgentPackageStateReceiver;->this$0:Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;

    # setter for: Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mAllLicenseInfo:[Landroid/app/enterprise/license/LicenseInfo;
    invoke-static {v5, v10}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->access$802(Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;[Landroid/app/enterprise/license/LicenseInfo;)[Landroid/app/enterprise/license/LicenseInfo;

    iget-object v5, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy$SDAgentPackageStateReceiver;->this$0:Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;

    const v8, 0x7fffffff

    # setter for: Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mSDAgentInstallerPackageUid:I
    invoke-static {v5, v8}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->access$402(Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;I)I

    iget-object v5, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy$SDAgentPackageStateReceiver;->this$0:Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;

    # setter for: Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mSDAgentInstallerPackage:Ljava/lang/String;
    invoke-static {v5, v10}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->access$902(Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;Ljava/lang/String;)Ljava/lang/String;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    :try_start_0
    iget-object v5, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy$SDAgentPackageStateReceiver;->this$0:Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;

    # invokes: Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->removeAppliedPolicies()V
    invoke-static {v5}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->access$1000(Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;)V

    iget-object v5, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy$SDAgentPackageStateReceiver;->this$0:Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;

    # invokes: Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->getLockPatternUtils()Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v5}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->access$1100(Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v5

    const/4 v8, 0x1

    invoke-virtual {v5, v8}, Lcom/android/internal/widget/LockPatternUtils;->clearLock(Z)V

    iget-object v5, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy$SDAgentPackageStateReceiver;->this$0:Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;

    # invokes: Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->disableSDKeyguard()V
    invoke-static {v5}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->access$1200(Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;)V

    iget-object v5, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy$SDAgentPackageStateReceiver;->this$0:Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;

    const/4 v8, 0x0

    # setter for: Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mSharedDevicesState:Z
    invoke-static {v5, v8}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->access$1302(Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;Z)Z

    const/4 v5, 0x0

    # setter for: Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->mSharedDevicesStateInternal:Z
    invoke-static {v5}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->access$1402(Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_1
    # getter for: Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;->access$200()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_0

    :catchall_0
    move-exception v5

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5

    :cond_1
    iget-object v5, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy$SDAgentPackageStateReceiver;->BRTAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Action \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\' not handled"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2
    iget-object v5, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy$SDAgentPackageStateReceiver;->BRTAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Not going to handle \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\'!"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
