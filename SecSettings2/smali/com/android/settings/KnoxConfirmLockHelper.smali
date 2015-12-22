.class public Lcom/android/settings/KnoxConfirmLockHelper;
.super Ljava/lang/Object;
.source "KnoxConfirmLockHelper.java"


# static fields
.field private static maxAttempts:I

.field private static totalAttempts:I


# instance fields
.field private lockPolicy:I

.field private mContext:Landroid/content/Context;

.field private mDialogTheme:I

.field private mDpm:Landroid/app/admin/DevicePolicyManager;

.field private mPm:Landroid/os/PersonaManager;

.field private maximumFailedPasswordsForDisable:I

.field private maximumFailedPasswordsForWipe:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/android/settings/KnoxConfirmLockHelper;->maxAttempts:I

    sput v0, Lcom/android/settings/KnoxConfirmLockHelper;->totalAttempts:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/settings/KnoxConfirmLockHelper;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/android/settings/KnoxConfirmLockHelper;->mPm:Landroid/os/PersonaManager;

    iput-object v0, p0, Lcom/android/settings/KnoxConfirmLockHelper;->mDpm:Landroid/app/admin/DevicePolicyManager;

    iput-object p1, p0, Lcom/android/settings/KnoxConfirmLockHelper;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/android/settings/KnoxConfirmLockHelper;->getLockAttemptPolicy()V

    const/4 v0, 0x5

    iput v0, p0, Lcom/android/settings/KnoxConfirmLockHelper;->mDialogTheme:I

    return-void
.end method

.method private ShowDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/settings/KnoxConfirmLockHelper;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/android/settings/KnoxConfirmLockHelper;->mDialogTheme:I

    invoke-direct {v1, v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/KnoxConfirmLockHelper;->mContext:Landroid/content/Context;

    const v3, 0x7f0a0e5e

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private getLockAttemptPolicy()V
    .locals 8

    const/16 v7, 0x3e9

    const/16 v6, 0x3e8

    iget-object v4, p0, Lcom/android/settings/KnoxConfirmLockHelper;->mContext:Landroid/content/Context;

    const-string v5, "persona"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PersonaManager;

    iput-object v4, p0, Lcom/android/settings/KnoxConfirmLockHelper;->mPm:Landroid/os/PersonaManager;

    iget-object v4, p0, Lcom/android/settings/KnoxConfirmLockHelper;->mContext:Landroid/content/Context;

    const-string v5, "device_policy"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/admin/DevicePolicyManager;

    iput-object v4, p0, Lcom/android/settings/KnoxConfirmLockHelper;->mDpm:Landroid/app/admin/DevicePolicyManager;

    iget-object v4, p0, Lcom/android/settings/KnoxConfirmLockHelper;->mPm:Landroid/os/PersonaManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/os/PersonaManager;->getPersonaInfo(I)Landroid/content/pm/PersonaInfo;

    move-result-object v2

    iget-object v4, p0, Lcom/android/settings/KnoxConfirmLockHelper;->mContext:Landroid/content/Context;

    const-string v5, "enterprise_policy"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->getPasswordPolicy()Landroid/app/enterprise/PasswordPolicy;

    move-result-object v3

    invoke-virtual {v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->getBasePasswordPolicy()Landroid/app/enterprise/BasePasswordPolicy;

    move-result-object v0

    invoke-virtual {v3}, Landroid/app/enterprise/PasswordPolicy;->getMaximumFailedPasswordsForDeviceDisable()I

    move-result v4

    iput v4, p0, Lcom/android/settings/KnoxConfirmLockHelper;->maximumFailedPasswordsForDisable:I

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/app/enterprise/BasePasswordPolicy;->getMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;)I

    move-result v4

    iput v4, p0, Lcom/android/settings/KnoxConfirmLockHelper;->maximumFailedPasswordsForWipe:I

    iget v4, p0, Lcom/android/settings/KnoxConfirmLockHelper;->maximumFailedPasswordsForWipe:I

    if-gtz v4, :cond_1

    iget v4, p0, Lcom/android/settings/KnoxConfirmLockHelper;->maximumFailedPasswordsForDisable:I

    if-gtz v4, :cond_1

    const/16 v4, 0xa

    sput v4, Lcom/android/settings/KnoxConfirmLockHelper;->maxAttempts:I

    const/16 v4, 0x3ea

    iput v4, p0, Lcom/android/settings/KnoxConfirmLockHelper;->lockPolicy:I

    :goto_0
    if-eqz v2, :cond_0

    iget-boolean v4, v2, Landroid/content/pm/PersonaInfo;->isUserManaged:Z

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/android/settings/KnoxConfirmLockHelper;->maximumFailedPasswordsForWipe:I

    sput v4, Lcom/android/settings/KnoxConfirmLockHelper;->maxAttempts:I

    :cond_0
    iget-object v4, p0, Lcom/android/settings/KnoxConfirmLockHelper;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v4}, Landroid/app/admin/DevicePolicyManager;->getCurrentFailedPasswordAttempts()I

    move-result v4

    sput v4, Lcom/android/settings/KnoxConfirmLockHelper;->totalAttempts:I

    return-void

    :cond_1
    iget v4, p0, Lcom/android/settings/KnoxConfirmLockHelper;->maximumFailedPasswordsForWipe:I

    if-gtz v4, :cond_2

    iget v4, p0, Lcom/android/settings/KnoxConfirmLockHelper;->maximumFailedPasswordsForDisable:I

    sput v4, Lcom/android/settings/KnoxConfirmLockHelper;->maxAttempts:I

    iput v7, p0, Lcom/android/settings/KnoxConfirmLockHelper;->lockPolicy:I

    goto :goto_0

    :cond_2
    iget v4, p0, Lcom/android/settings/KnoxConfirmLockHelper;->maximumFailedPasswordsForDisable:I

    if-gtz v4, :cond_3

    iget v4, p0, Lcom/android/settings/KnoxConfirmLockHelper;->maximumFailedPasswordsForWipe:I

    sput v4, Lcom/android/settings/KnoxConfirmLockHelper;->maxAttempts:I

    iput v6, p0, Lcom/android/settings/KnoxConfirmLockHelper;->lockPolicy:I

    goto :goto_0

    :cond_3
    iget v4, p0, Lcom/android/settings/KnoxConfirmLockHelper;->maximumFailedPasswordsForWipe:I

    iget v5, p0, Lcom/android/settings/KnoxConfirmLockHelper;->maximumFailedPasswordsForDisable:I

    if-gt v4, v5, :cond_4

    iget v4, p0, Lcom/android/settings/KnoxConfirmLockHelper;->maximumFailedPasswordsForWipe:I

    sput v4, Lcom/android/settings/KnoxConfirmLockHelper;->maxAttempts:I

    iput v6, p0, Lcom/android/settings/KnoxConfirmLockHelper;->lockPolicy:I

    goto :goto_0

    :cond_4
    iget v4, p0, Lcom/android/settings/KnoxConfirmLockHelper;->maximumFailedPasswordsForDisable:I

    sput v4, Lcom/android/settings/KnoxConfirmLockHelper;->maxAttempts:I

    iput v7, p0, Lcom/android/settings/KnoxConfirmLockHelper;->lockPolicy:I

    goto :goto_0
.end method


# virtual methods
.method protected checkNumberOfAttempts()I
    .locals 9

    const/4 v8, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget-object v3, p0, Lcom/android/settings/KnoxConfirmLockHelper;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/app/admin/DevicePolicyManager;->reportFailedPasswordAttempt(I)V

    iget-object v3, p0, Lcom/android/settings/KnoxConfirmLockHelper;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v3}, Landroid/app/admin/DevicePolicyManager;->getCurrentFailedPasswordAttempts()I

    move-result v3

    sput v3, Lcom/android/settings/KnoxConfirmLockHelper;->totalAttempts:I

    sget v3, Lcom/android/settings/KnoxConfirmLockHelper;->maxAttempts:I

    sget v4, Lcom/android/settings/KnoxConfirmLockHelper;->totalAttempts:I

    sub-int v2, v3, v4

    sget v3, Lcom/android/settings/KnoxConfirmLockHelper;->totalAttempts:I

    sget v4, Lcom/android/settings/KnoxConfirmLockHelper;->maxAttempts:I

    if-lt v3, v4, :cond_4

    invoke-virtual {p0}, Lcom/android/settings/KnoxConfirmLockHelper;->resetNumberOfAttempts()V

    iget v3, p0, Lcom/android/settings/KnoxConfirmLockHelper;->lockPolicy:I

    const/16 v4, 0x3e8

    if-ne v3, v4, :cond_2

    const-string v3, "KnoxConfirmLockHelper"

    const-string v4, "checkAttempts(): failedPasswordAttempts max than maximumFailedPasswordsForWipe!!: WIPING(Removing container)"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    const-string v3, "KnoxConfirmLockHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " remove container: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-static {v3}, Lcom/sec/enterprise/knox/container/KnoxContainerManager;->removeContainer(I)I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    sparse-switch v1, :sswitch_data_0

    const-string v3, "KnoxConfirmLockHelper"

    const-string v4, "UNKNOWN ERROR"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v3, "KnoxConfirmLockHelper"

    const-string v4, "Exception when remove container"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_0

    :sswitch_0
    :try_start_1
    const-string v3, "KnoxConfirmLockHelper"

    const-string v4, "ERROR_INTERNAL_ERROR"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :sswitch_1
    const-string v3, "KnoxConfirmLockHelper"

    const-string v4, "ERROR_DOES_NOT_EXIST"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :sswitch_2
    const-string v3, "KnoxConfirmLockHelper"

    const-string v4, "ERROR_NOT_CONTAINER_OWNER"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :cond_2
    iget v3, p0, Lcom/android/settings/KnoxConfirmLockHelper;->lockPolicy:I

    const/16 v4, 0x3e9

    if-ne v3, v4, :cond_3

    const-string v3, "KnoxConfirmLockHelper"

    const-string v4, "checkAttempts(): failedPasswordAttempts max than maximumFailedPasswordsForDisable!!: DISABLING container"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/settings/KnoxConfirmLockHelper;->mPm:Landroid/os/PersonaManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-virtual {v3, v4, v7}, Landroid/os/PersonaManager;->adminLockPersona(ILjava/lang/String;)Z

    goto :goto_0

    :cond_3
    iget v3, p0, Lcom/android/settings/KnoxConfirmLockHelper;->lockPolicy:I

    const/16 v4, 0x3ea

    if-ne v3, v4, :cond_0

    const-string v3, "KnoxConfirmLockHelper"

    const-string v4, "checkAttempts(): failedPasswordAttempts is more than 10 and no policy set Container will get locked. And only admin can remove the lock"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/settings/KnoxConfirmLockHelper;->mPm:Landroid/os/PersonaManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-virtual {v3, v4, v7}, Landroid/os/PersonaManager;->adminLockPersona(ILjava/lang/String;)Z

    goto :goto_0

    :cond_4
    sget v3, Lcom/android/settings/KnoxConfirmLockHelper;->totalAttempts:I

    sget v4, Lcom/android/settings/KnoxConfirmLockHelper;->maxAttempts:I

    add-int/lit8 v4, v4, -0x1

    if-ne v3, v4, :cond_5

    iget-object v3, p0, Lcom/android/settings/KnoxConfirmLockHelper;->mContext:Landroid/content/Context;

    const v4, 0x7f0a01f5

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v8, [Ljava/lang/Object;

    sget v5, Lcom/android/settings/KnoxConfirmLockHelper;->maxAttempts:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v7, v3}, Lcom/android/settings/KnoxConfirmLockHelper;->ShowDialog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    sget v3, Lcom/android/settings/KnoxConfirmLockHelper;->maxAttempts:I

    sget v4, Lcom/android/settings/KnoxConfirmLockHelper;->totalAttempts:I

    sub-int/2addr v3, v4

    const/4 v4, 0x5

    if-ge v3, v4, :cond_0

    iget-object v3, p0, Lcom/android/settings/KnoxConfirmLockHelper;->mContext:Landroid/content/Context;

    const v4, 0x7f0a01f6

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    sget v5, Lcom/android/settings/KnoxConfirmLockHelper;->maxAttempts:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    sget v5, Lcom/android/settings/KnoxConfirmLockHelper;->maxAttempts:I

    sget v6, Lcom/android/settings/KnoxConfirmLockHelper;->totalAttempts:I

    sub-int/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v7, v3}, Lcom/android/settings/KnoxConfirmLockHelper;->ShowDialog(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4b3 -> :sswitch_2
        -0x4b2 -> :sswitch_1
        -0x3f6 -> :sswitch_0
    .end sparse-switch
.end method

.method protected resetNumberOfAttempts()V
    .locals 2

    const-string v0, "KnoxConfirmLockHelper"

    const-string v1, "resetting totalAttempts to 0"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/KnoxConfirmLockHelper;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->reportSuccessfulPasswordAttempt(I)V

    return-void
.end method

.method protected setRemainingNumberOfAttemptsText(Landroid/widget/TextView;)V
    .locals 5

    const/4 v2, 0x1

    if-nez p1, :cond_0

    const-string v0, "KnoxConfirmLockHelper"

    const-string v1, "textview is null"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    sget v0, Lcom/android/settings/KnoxConfirmLockHelper;->maxAttempts:I

    sget v1, Lcom/android/settings/KnoxConfirmLockHelper;->totalAttempts:I

    sub-int/2addr v0, v1

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/android/settings/KnoxConfirmLockHelper;->mContext:Landroid/content/Context;

    const v1, 0x7f0a01f7

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/settings/KnoxConfirmLockHelper;->mContext:Landroid/content/Context;

    const v1, 0x7f0a01f8

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget v3, Lcom/android/settings/KnoxConfirmLockHelper;->maxAttempts:I

    sget v4, Lcom/android/settings/KnoxConfirmLockHelper;->totalAttempts:I

    sub-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
