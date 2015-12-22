.class public Lcom/android/settings/SecurityFragment;
.super Landroid/app/Fragment;
.source "SecurityFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private isConfDialogShown:Z

.field private isContainerSupported:Z

.field private isDeviceTampered:Z

.field private isKapEnforced:Z

.field private isKapOn:Z

.field private isKapSupported:Z

.field private isTimaSupported:Z

.field private mBtnInstallMyKnox:Landroid/widget/TextView;

.field private mBtnSystemProtectionRestart:Landroid/widget/Button;

.field private mCheckboxKnoxActiveProtection:Landroid/widget/Switch;

.field private mContext:Landroid/content/Context;

.field private mKapStatus:Lcom/android/settings/knox/KnoxActiveProtectionStatus;

.field private mLayoutInstallMyKnox:Landroid/widget/LinearLayout;

.field private mLayoutInstallMyKnoxMenu:Landroid/widget/LinearLayout;

.field private mLayoutKnoxActiveProtectionMenu:Landroid/widget/LinearLayout;

.field private mLayoutLearnMore:Landroid/widget/LinearLayout;

.field private mLayoutSystemProtectionMenu:Landroid/widget/LinearLayout;

.field private mLineKnoxActiveProtection:Landroid/view/View;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mTvKnoxActiveProtectionSummary:Landroid/widget/TextView;

.field private mTvKnoxActiveProtectionTitle:Landroid/widget/TextView;

.field private mTvLearnMore:Landroid/widget/TextView;

.field private mTvSystemProtectionStatus:Landroid/widget/TextView;

.field private mTvSystemProtectionSubheader:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    iput-boolean v0, p0, Lcom/android/settings/SecurityFragment;->isKapOn:Z

    iput-boolean v0, p0, Lcom/android/settings/SecurityFragment;->isKapEnforced:Z

    iput-boolean v0, p0, Lcom/android/settings/SecurityFragment;->isDeviceTampered:Z

    iput-boolean v0, p0, Lcom/android/settings/SecurityFragment;->isConfDialogShown:Z

    iput-boolean v0, p0, Lcom/android/settings/SecurityFragment;->isKapSupported:Z

    iput-boolean v0, p0, Lcom/android/settings/SecurityFragment;->isTimaSupported:Z

    iput-boolean v0, p0, Lcom/android/settings/SecurityFragment;->isContainerSupported:Z

    new-instance v0, Lcom/android/settings/SecurityFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings/SecurityFragment$1;-><init>(Lcom/android/settings/SecurityFragment;)V

    iput-object v0, p0, Lcom/android/settings/SecurityFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/SecurityFragment;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/SecurityFragment;->mTvSystemProtectionStatus:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/SecurityFragment;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/SecurityFragment;->mBtnSystemProtectionRestart:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/SecurityFragment;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/SecurityFragment;->mTvLearnMore:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/SecurityFragment;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/SecurityFragment;->mLayoutLearnMore:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/SecurityFragment;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/SecurityFragment;->mBtnInstallMyKnox:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/SecurityFragment;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/SecurityFragment;->mLayoutInstallMyKnox:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private handleInstallMyKnox()V
    .locals 8

    const/4 v4, 0x0

    iget-object v3, p0, Lcom/android/settings/SecurityFragment;->mBtnInstallMyKnox:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setClickable(Z)V

    iget-object v3, p0, Lcom/android/settings/SecurityFragment;->mLayoutInstallMyKnox:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setClickable(Z)V

    iget-object v3, p0, Lcom/android/settings/SecurityFragment;->mBtnInstallMyKnox:Landroid/widget/TextView;

    new-instance v4, Lcom/android/settings/SecurityFragment$3;

    invoke-direct {v4, p0}, Lcom/android/settings/SecurityFragment$3;-><init>(Lcom/android/settings/SecurityFragment;)V

    const-wide/16 v6, 0xbb8

    invoke-virtual {v3, v4, v6, v7}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v3, p0, Lcom/android/settings/SecurityFragment;->mContext:Landroid/content/Context;

    const v4, 0x7f0a15a4

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/settings/SecurityFragment;->isChinaCountryCode()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/SecurityFragment;->mContext:Landroid/content/Context;

    const v4, 0x7f0a15a3

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    :cond_0
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v3, 0x10000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/settings/SecurityFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v3, "SecurityFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleInstallMyKnox : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v3, "SecurityFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleInstallMyKnox : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private handleKnoxActiveProtection(Z)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/android/settings/SecurityFragment;->mLayoutKnoxActiveProtectionMenu:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setClickable(Z)V

    iget-object v1, p0, Lcom/android/settings/SecurityFragment;->mCheckboxKnoxActiveProtection:Landroid/widget/Switch;

    invoke-virtual {v1, v4}, Landroid/widget/Switch;->setClickable(Z)V

    if-eqz p1, :cond_3

    iget-boolean v1, p0, Lcom/android/settings/SecurityFragment;->isKapOn:Z

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/android/settings/SecurityFragment;->showConfirmationDialog()V

    :cond_0
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/SecurityFragment;->mKapStatus:Lcom/android/settings/knox/KnoxActiveProtectionStatus;

    invoke-virtual {v1}, Lcom/android/settings/knox/KnoxActiveProtectionStatus;->isKapEnforced()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/SecurityFragment;->isKapEnforced:Z

    iget-object v1, p0, Lcom/android/settings/SecurityFragment;->mKapStatus:Lcom/android/settings/knox/KnoxActiveProtectionStatus;

    invoke-virtual {v1}, Lcom/android/settings/knox/KnoxActiveProtectionStatus;->isDeviceTampered()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/SecurityFragment;->isDeviceTampered:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-boolean v1, p0, Lcom/android/settings/SecurityFragment;->isKapEnforced:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/settings/SecurityFragment;->isDeviceTampered:Z

    if-eqz v1, :cond_2

    :cond_1
    iget-object v1, p0, Lcom/android/settings/SecurityFragment;->mCheckboxKnoxActiveProtection:Landroid/widget/Switch;

    invoke-virtual {v1, v4}, Landroid/widget/Switch;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/settings/SecurityFragment;->mLayoutKnoxActiveProtectionMenu:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    :cond_2
    iget-object v1, p0, Lcom/android/settings/SecurityFragment;->mLayoutKnoxActiveProtectionMenu:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setClickable(Z)V

    iget-object v1, p0, Lcom/android/settings/SecurityFragment;->mCheckboxKnoxActiveProtection:Landroid/widget/Switch;

    invoke-virtual {v1, v5}, Landroid/widget/Switch;->setClickable(Z)V

    return-void

    :cond_3
    iget-boolean v1, p0, Lcom/android/settings/SecurityFragment;->isConfDialogShown:Z

    if-nez v1, :cond_4

    iput-boolean v4, p0, Lcom/android/settings/SecurityFragment;->isKapOn:Z

    iget-object v1, p0, Lcom/android/settings/SecurityFragment;->mKapStatus:Lcom/android/settings/knox/KnoxActiveProtectionStatus;

    invoke-virtual {v1, v4, v4}, Lcom/android/settings/knox/KnoxActiveProtectionStatus;->setKapEnabled(ZZ)V

    iget-object v1, p0, Lcom/android/settings/SecurityFragment;->mTvKnoxActiveProtectionSummary:Landroid/widget/TextView;

    const v2, 0x7f0a159f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    :cond_4
    iput-boolean v4, p0, Lcom/android/settings/SecurityFragment;->isConfDialogShown:Z

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SecurityFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception in onActivityCreated: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private handleLearnMore()V
    .locals 8

    const/4 v4, 0x0

    iget-object v3, p0, Lcom/android/settings/SecurityFragment;->mTvLearnMore:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setClickable(Z)V

    iget-object v3, p0, Lcom/android/settings/SecurityFragment;->mLayoutLearnMore:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setClickable(Z)V

    iget-object v3, p0, Lcom/android/settings/SecurityFragment;->mTvLearnMore:Landroid/widget/TextView;

    new-instance v4, Lcom/android/settings/SecurityFragment$2;

    invoke-direct {v4, p0}, Lcom/android/settings/SecurityFragment$2;-><init>(Lcom/android/settings/SecurityFragment;)V

    const-wide/16 v6, 0xbb8

    invoke-virtual {v3, v4, v6, v7}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    :try_start_0
    iget-object v3, p0, Lcom/android/settings/SecurityFragment;->mContext:Landroid/content/Context;

    const v4, 0x7f0a15aa

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v3, 0x10000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/settings/SecurityFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v3, "SecurityFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleLearnMore : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v3, "SecurityFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleLearnMore : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private handleSystemProtectionStatusRestart()V
    .locals 3

    const-string v1, "security.tima.safe_mode"

    const-string v2, "true"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MASTER_CLEAR"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "CustomWipe"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "args"

    const-string v2, "--tima_kernel_recovery\n"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "SecurityFragment"

    const-string v2, "handleSystemProtectionStatusRestart : MASTER_CLEAR"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings/SecurityFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private isChinaCountryCode()Z
    .locals 3

    const/4 v0, 0x0

    const-string v1, "CHINA"

    const-string v2, "ro.csc.country_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isKapEnabled()Z
    .locals 5

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/android/settings/SecurityFragment;->mKapStatus:Lcom/android/settings/knox/KnoxActiveProtectionStatus;

    invoke-virtual {v2}, Lcom/android/settings/knox/KnoxActiveProtectionStatus;->isKapEnabled()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string v2, "SecurityFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isKapEnabled failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private loadComponents(Landroid/view/View;)V
    .locals 5

    const/16 v4, 0x8

    const v1, 0x7f1003cc

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/SecurityFragment;->mTvSystemProtectionStatus:Landroid/widget/TextView;

    const v1, 0x7f1003cb

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/SecurityFragment;->mTvSystemProtectionSubheader:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/SecurityFragment;->mTvSystemProtectionSubheader:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f0a1593

    invoke-virtual {p0, v3}, Lcom/android/settings/SecurityFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f0a15a6

    invoke-virtual {p0, v3}, Lcom/android/settings/SecurityFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    const v1, 0x7f1003cd

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/settings/SecurityFragment;->mBtnSystemProtectionRestart:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settings/SecurityFragment;->mBtnSystemProtectionRestart:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f1003d5

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/SecurityFragment;->mTvKnoxActiveProtectionTitle:Landroid/widget/TextView;

    const v1, 0x7f1003d6

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/SecurityFragment;->mTvKnoxActiveProtectionSummary:Landroid/widget/TextView;

    const v1, 0x7f1003d7

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Switch;

    iput-object v1, p0, Lcom/android/settings/SecurityFragment;->mCheckboxKnoxActiveProtection:Landroid/widget/Switch;

    iget-object v1, p0, Lcom/android/settings/SecurityFragment;->mCheckboxKnoxActiveProtection:Landroid/widget/Switch;

    invoke-virtual {v1, p0}, Landroid/widget/Switch;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/android/settings/SecurityFragment;->mCheckboxKnoxActiveProtection:Landroid/widget/Switch;

    invoke-virtual {v1, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const v1, 0x7f1003d3

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/settings/SecurityFragment;->mLayoutKnoxActiveProtectionMenu:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/settings/SecurityFragment;->mLayoutKnoxActiveProtectionMenu:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f1003ca

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/settings/SecurityFragment;->mLayoutSystemProtectionMenu:Landroid/widget/LinearLayout;

    const v1, 0x7f1003d2

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/SecurityFragment;->mBtnInstallMyKnox:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/SecurityFragment;->mBtnInstallMyKnox:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/android/settings/SecurityFragment;->mBtnInstallMyKnox:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings/SecurityFragment;->mBtnInstallMyKnox:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaintFlags()I

    move-result v2

    or-int/lit8 v2, v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setPaintFlags(I)V

    const v1, 0x7f1003ce

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/settings/SecurityFragment;->mLayoutInstallMyKnoxMenu:Landroid/widget/LinearLayout;

    const v1, 0x7f1003d1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/settings/SecurityFragment;->mLayoutInstallMyKnox:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/settings/SecurityFragment;->mLayoutInstallMyKnox:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f1003d9

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/SecurityFragment;->mTvLearnMore:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/SecurityFragment;->mTvLearnMore:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/android/settings/SecurityFragment;->mTvLearnMore:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings/SecurityFragment;->mTvLearnMore:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaintFlags()I

    move-result v2

    or-int/lit8 v2, v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setPaintFlags(I)V

    const v1, 0x7f1003d8

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/settings/SecurityFragment;->mLayoutLearnMore:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/settings/SecurityFragment;->mLayoutLearnMore:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f1003da

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/SecurityFragment;->mLineKnoxActiveProtection:Landroid/view/View;

    iget-boolean v1, p0, Lcom/android/settings/SecurityFragment;->isTimaSupported:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/settings/SecurityFragment;->mLayoutSystemProtectionMenu:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/settings/SecurityFragment;->mLayoutInstallMyKnoxMenu:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_0
    :goto_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/settings/SecurityFragment;->mLayoutKnoxActiveProtectionMenu:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/settings/SecurityFragment;->mLayoutLearnMore:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/settings/SecurityFragment;->mLayoutInstallMyKnoxMenu:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_1
    :goto_1
    iget-boolean v1, p0, Lcom/android/settings/SecurityFragment;->isTimaSupported:Z

    if-eqz v1, :cond_2

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "samsung.intent.action.knox.TIMA_NOTIFICATION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/SecurityFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/SecurityFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    const-string v3, "com.sec.enterprise.knox.permission.MDM_ENTERPRISE_TIMA_NOTIFICATION"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    :cond_2
    return-void

    :cond_3
    iget-boolean v1, p0, Lcom/android/settings/SecurityFragment;->isContainerSupported:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/SecurityFragment;->mLayoutInstallMyKnoxMenu:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    :cond_4
    iget-boolean v1, p0, Lcom/android/settings/SecurityFragment;->isKapSupported:Z

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/android/settings/SecurityFragment;->mLayoutKnoxActiveProtectionMenu:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/settings/SecurityFragment;->mLayoutLearnMore:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/settings/SecurityFragment;->mLineKnoxActiveProtection:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_5
    invoke-direct {p0}, Lcom/android/settings/SecurityFragment;->isChinaCountryCode()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/SecurityFragment;->mLayoutInstallMyKnoxMenu:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1
.end method

.method private showConfirmationDialog()V
    .locals 3

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/SecurityFragment;->isConfDialogShown:Z

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/SecurityFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/android/settings/knox/KnoxActiveProtectionEulaActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/settings/SecurityFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/SecurityFragment;->mCheckboxKnoxActiveProtection:Landroid/widget/Switch;

    if-ne p1, v0, :cond_0

    invoke-direct {p0, p2}, Lcom/android/settings/SecurityFragment;->handleKnoxActiveProtection(Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/SecurityFragment;->mCheckboxKnoxActiveProtection:Landroid/widget/Switch;

    iget-boolean v1, p0, Lcom/android/settings/SecurityFragment;->isKapOn:Z

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    invoke-direct {p0}, Lcom/android/settings/SecurityFragment;->handleSystemProtectionStatusRestart()V

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/android/settings/SecurityFragment;->mCheckboxKnoxActiveProtection:Landroid/widget/Switch;

    iget-boolean v0, p0, Lcom/android/settings/SecurityFragment;->isKapOn:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :pswitch_3
    invoke-direct {p0}, Lcom/android/settings/SecurityFragment;->handleInstallMyKnox()V

    goto :goto_0

    :pswitch_4
    invoke-direct {p0}, Lcom/android/settings/SecurityFragment;->handleInstallMyKnox()V

    goto :goto_0

    :pswitch_5
    invoke-direct {p0}, Lcom/android/settings/SecurityFragment;->handleLearnMore()V

    goto :goto_0

    :pswitch_6
    invoke-direct {p0}, Lcom/android/settings/SecurityFragment;->handleLearnMore()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7f1003cd
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    const/4 v4, 0x1

    const v2, 0x7f0401b5

    const/4 v3, 0x0

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/SecurityFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/SecurityFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/SecurityFragment;->mContext:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    invoke-virtual {p0, v4}, Lcom/android/settings/SecurityFragment;->setHasOptionsMenu(Z)V

    new-instance v2, Lcom/android/settings/knox/KnoxActiveProtectionStatus;

    invoke-direct {v2}, Lcom/android/settings/knox/KnoxActiveProtectionStatus;-><init>()V

    iput-object v2, p0, Lcom/android/settings/SecurityFragment;->mKapStatus:Lcom/android/settings/knox/KnoxActiveProtectionStatus;

    iget-object v2, p0, Lcom/android/settings/SecurityFragment;->mKapStatus:Lcom/android/settings/knox/KnoxActiveProtectionStatus;

    invoke-virtual {v2}, Lcom/android/settings/knox/KnoxActiveProtectionStatus;->isKapSupported()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings/SecurityFragment;->isKapSupported:Z

    iget-object v2, p0, Lcom/android/settings/SecurityFragment;->mKapStatus:Lcom/android/settings/knox/KnoxActiveProtectionStatus;

    invoke-virtual {v2}, Lcom/android/settings/knox/KnoxActiveProtectionStatus;->isTimaSupported()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings/SecurityFragment;->isTimaSupported:Z

    iget-object v2, p0, Lcom/android/settings/SecurityFragment;->mKapStatus:Lcom/android/settings/knox/KnoxActiveProtectionStatus;

    invoke-virtual {v2}, Lcom/android/settings/knox/KnoxActiveProtectionStatus;->isContainerSupported()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings/SecurityFragment;->isContainerSupported:Z

    invoke-direct {p0, v1}, Lcom/android/settings/SecurityFragment;->loadComponents(Landroid/view/View;)V

    iget-boolean v2, p0, Lcom/android/settings/SecurityFragment;->isKapSupported:Z

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/android/settings/SecurityFragment;->isKapEnabled()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings/SecurityFragment;->isKapOn:Z

    :cond_0
    return-object v1
.end method

.method public onDestroyView()V
    .locals 2

    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    iget-boolean v0, p0, Lcom/android/settings/SecurityFragment;->isTimaSupported:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/SecurityFragment;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/SecurityFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 5

    const/4 v4, 0x0

    iget-boolean v1, p0, Lcom/android/settings/SecurityFragment;->isKapSupported:Z

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/android/settings/SecurityFragment;->isKapEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/SecurityFragment;->isKapOn:Z

    iget-object v1, p0, Lcom/android/settings/SecurityFragment;->mCheckboxKnoxActiveProtection:Landroid/widget/Switch;

    iget-boolean v2, p0, Lcom/android/settings/SecurityFragment;->isKapOn:Z

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setChecked(Z)V

    iput-boolean v4, p0, Lcom/android/settings/SecurityFragment;->isConfDialogShown:Z

    iget-object v1, p0, Lcom/android/settings/SecurityFragment;->mKapStatus:Lcom/android/settings/knox/KnoxActiveProtectionStatus;

    invoke-virtual {v1}, Lcom/android/settings/knox/KnoxActiveProtectionStatus;->isKapEnforced()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/SecurityFragment;->isKapEnforced:Z

    :try_start_0
    iget-object v1, p0, Lcom/android/settings/SecurityFragment;->mTvKnoxActiveProtectionSummary:Landroid/widget/TextView;

    const v2, 0x7f0a15a0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/android/settings/SecurityFragment;->mKapStatus:Lcom/android/settings/knox/KnoxActiveProtectionStatus;

    invoke-virtual {v1}, Lcom/android/settings/knox/KnoxActiveProtectionStatus;->isDeviceTampered()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/SecurityFragment;->isDeviceTampered:Z

    iget-boolean v1, p0, Lcom/android/settings/SecurityFragment;->isDeviceTampered:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/settings/SecurityFragment;->isKapEnforced:Z

    if-eqz v1, :cond_4

    :cond_0
    iget-object v1, p0, Lcom/android/settings/SecurityFragment;->mCheckboxKnoxActiveProtection:Landroid/widget/Switch;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/settings/SecurityFragment;->mLayoutKnoxActiveProtectionMenu:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/settings/SecurityFragment;->mTvKnoxActiveProtectionSummary:Landroid/widget/TextView;

    const v2, 0x3ebd70a4    # 0.37f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object v1, p0, Lcom/android/settings/SecurityFragment;->mTvKnoxActiveProtectionTitle:Landroid/widget/TextView;

    const v2, 0x3ebd70a4    # 0.37f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object v1, p0, Lcom/android/settings/SecurityFragment;->mKapStatus:Lcom/android/settings/knox/KnoxActiveProtectionStatus;

    invoke-virtual {v1}, Lcom/android/settings/knox/KnoxActiveProtectionStatus;->isKapEnablePending()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/settings/SecurityFragment;->mTvKnoxActiveProtectionSummary:Landroid/widget/TextView;

    const v2, 0x7f0a159e

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_1
    :goto_0
    const-string v1, "false"

    const-string v2, "security.tima.safe_mode"

    const-string v3, "NONE"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/SecurityFragment;->mTvSystemProtectionStatus:Landroid/widget/TextView;

    const v2, 0x7f0a1594

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/android/settings/SecurityFragment;->mBtnSystemProtectionRestart:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setVisibility(I)V

    :cond_2
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    return-void

    :cond_3
    :try_start_1
    iget-object v1, p0, Lcom/android/settings/SecurityFragment;->mKapStatus:Lcom/android/settings/knox/KnoxActiveProtectionStatus;

    invoke-virtual {v1}, Lcom/android/settings/knox/KnoxActiveProtectionStatus;->isKapDisablePending()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/SecurityFragment;->mTvKnoxActiveProtectionSummary:Landroid/widget/TextView;

    const v2, 0x7f0a159f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0

    :cond_4
    :try_start_2
    iget-object v1, p0, Lcom/android/settings/SecurityFragment;->mCheckboxKnoxActiveProtection:Landroid/widget/Switch;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/settings/SecurityFragment;->mLayoutKnoxActiveProtectionMenu:Landroid/widget/LinearLayout;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/settings/SecurityFragment;->mTvKnoxActiveProtectionSummary:Landroid/widget/TextView;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object v1, p0, Lcom/android/settings/SecurityFragment;->mTvKnoxActiveProtectionTitle:Landroid/widget/TextView;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object v1, p0, Lcom/android/settings/SecurityFragment;->mKapStatus:Lcom/android/settings/knox/KnoxActiveProtectionStatus;

    invoke-virtual {v1}, Lcom/android/settings/knox/KnoxActiveProtectionStatus;->isKapEnablePending()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/settings/SecurityFragment;->mTvKnoxActiveProtectionSummary:Landroid/widget/TextView;

    const v2, 0x7f0a159e

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :cond_5
    :try_start_3
    iget-object v1, p0, Lcom/android/settings/SecurityFragment;->mKapStatus:Lcom/android/settings/knox/KnoxActiveProtectionStatus;

    invoke-virtual {v1}, Lcom/android/settings/knox/KnoxActiveProtectionStatus;->isKapDisablePending()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/SecurityFragment;->mTvKnoxActiveProtectionSummary:Landroid/widget/TextView;

    const v2, 0x7f0a159f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V
    :try_end_3
    .catch Landroid/content/ActivityNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0
.end method
