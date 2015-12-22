.class public Lcom/android/settings/fingerprint/FingerprintConfirm;
.super Landroid/app/Activity;
.source "FingerprintConfirm.java"


# instance fields
.field private mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

.field private mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/fingerprint/FingerprintConfirm;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintConfirm;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/settings/fingerprint/FingerprintConfirm;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerprintConfirm;->mHandler:Landroid/os/Handler;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/settings/fingerprint/FingerprintConfirm;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/fingerprint/FingerprintConfirm;->showSensorErrorDialog(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/fingerprint/FingerprintConfirm;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintConfirm;->showDatabaseFailureDialog()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/fingerprint/FingerprintConfirm;)Lcom/samsung/android/fingerprint/FingerprintManager;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintConfirm;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/fingerprint/FingerprintConfirm;)Lcom/android/settings/ChooseLockSettingsHelper;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintConfirm;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    return-object v0
.end method

.method private identifyFinger(Landroid/os/Bundle;)I
    .locals 3

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintConfirm;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    new-instance v2, Lcom/android/settings/fingerprint/FingerprintConfirm$1;

    invoke-direct {v2, p0}, Lcom/android/settings/fingerprint/FingerprintConfirm$1;-><init>(Lcom/android/settings/fingerprint/FingerprintConfirm;)V

    invoke-virtual {v1, p0, v2, p1}, Lcom/samsung/android/fingerprint/FingerprintManager;->identifyWithDialog(Landroid/content/Context;Lcom/samsung/android/fingerprint/IFingerprintClient;Landroid/os/Bundle;)I

    move-result v0

    return v0
.end method

.method private showDatabaseFailureDialog()V
    .locals 4

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0a10a0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a111f

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Lcom/android/settings/fingerprint/FingerprintConfirm$4;

    invoke-direct {v3, p0}, Lcom/android/settings/fingerprint/FingerprintConfirm$4;-><init>(Lcom/android/settings/fingerprint/FingerprintConfirm;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    new-instance v1, Lcom/android/settings/fingerprint/FingerprintConfirm$5;

    invoke-direct {v1, p0}, Lcom/android/settings/fingerprint/FingerprintConfirm$5;-><init>(Lcom/android/settings/fingerprint/FingerprintConfirm;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private showSensorErrorDialog(I)V
    .locals 4

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0a10a0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Lcom/android/settings/fingerprint/FingerprintConfirm$2;

    invoke-direct {v3, p0}, Lcom/android/settings/fingerprint/FingerprintConfirm$2;-><init>(Lcom/android/settings/fingerprint/FingerprintConfirm;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    new-instance v1, Lcom/android/settings/fingerprint/FingerprintConfirm$3;

    invoke-direct {v1, p0}, Lcom/android/settings/fingerprint/FingerprintConfirm$3;-><init>(Lcom/android/settings/fingerprint/FingerprintConfirm;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 v5, 0x2

    invoke-static {p0, v5}, Lcom/samsung/android/fingerprint/FingerprintManager;->getInstance(Landroid/content/Context;I)Lcom/samsung/android/fingerprint/FingerprintManager;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/fingerprint/FingerprintConfirm;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v5, "password"

    const/4 v6, 0x1

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    new-instance v5, Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-direct {v5, p0}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    iput-object v5, p0, Lcom/android/settings/fingerprint/FingerprintConfirm;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    const-string v5, "persona"

    invoke-virtual {p0, v5}, Lcom/android/settings/fingerprint/FingerprintConfirm;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PersonaManager;

    if-eqz v3, :cond_1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    const/16 v6, 0x64

    if-lt v5, v6, :cond_1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/os/PersonaManager;->isEnabledFingerprintIndex(I)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v5, "FingerprintConfirm"

    const-string v6, "isEnabledFingerprintIndex is true."

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/os/PersonaManager;->getFingerprintIndex(I)[I

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v2, 0x0

    :goto_0
    array-length v5, v0

    if-ge v2, v5, :cond_0

    const-string v5, "FingerprintConfirm"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "finger index = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget v7, v0, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const-string v5, "request_template_index_list"

    invoke-virtual {v1, v5, v0}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    :cond_1
    :goto_1
    invoke-direct {p0, v1}, Lcom/android/settings/fingerprint/FingerprintConfirm;->identifyFinger(Landroid/os/Bundle;)I

    move-result v4

    const/4 v5, -0x4

    if-ne v4, v5, :cond_4

    const-string v5, "FingerprintConfirm"

    const-string v6, "RESULT_DATABASE_FAILURE"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintConfirm;->showDatabaseFailureDialog()V

    :goto_2
    return-void

    :cond_2
    const-string v5, "FingerprintConfirm"

    const-string v6, "personaInfo.isEnabledFingerprintIndex is null."

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    const-string v5, "FingerprintConfirm"

    const-string v6, "personaInfo.isEnabledFingerprintIndex is false."

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    const-string v5, "FingerprintConfirm"

    const-string v6, "identifyFinger called "

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onStop()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintConfirm;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintConfirm;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
