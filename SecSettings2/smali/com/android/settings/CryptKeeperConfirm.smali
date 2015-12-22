.class public Lcom/android/settings/CryptKeeperConfirm;
.super Landroid/app/Fragment;
.source "CryptKeeperConfirm.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/CryptKeeperConfirm$Blank;
    }
.end annotation


# static fields
.field private static mTrustedboot:Ljava/lang/String;


# instance fields
.field private mContentView:Landroid/view/View;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mFastEncryptionChecker:Landroid/view/View$OnClickListener;

.field private mFinalButton:Landroid/widget/Button;

.field private mFinalClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, ""

    sput-object v0, Lcom/android/settings/CryptKeeperConfirm;->mTrustedboot:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/CryptKeeperConfirm;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    new-instance v0, Lcom/android/settings/CryptKeeperConfirm$1;

    invoke-direct {v0, p0}, Lcom/android/settings/CryptKeeperConfirm$1;-><init>(Lcom/android/settings/CryptKeeperConfirm;)V

    iput-object v0, p0, Lcom/android/settings/CryptKeeperConfirm;->mFinalClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/settings/CryptKeeperConfirm$2;

    invoke-direct {v0, p0}, Lcom/android/settings/CryptKeeperConfirm$2;-><init>(Lcom/android/settings/CryptKeeperConfirm;)V

    iput-object v0, p0, Lcom/android/settings/CryptKeeperConfirm;->mFastEncryptionChecker:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/settings/CryptKeeperConfirm;->mTrustedboot:Ljava/lang/String;

    return-object v0
.end method

.method private establishFinalConfirmationState()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/CryptKeeperConfirm;->mContentView:Landroid/view/View;

    const v1, 0x7f1000e2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/CryptKeeperConfirm;->mFinalButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/settings/CryptKeeperConfirm;->mFinalButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settings/CryptKeeperConfirm;->mFinalClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/settings/CryptKeeperConfirm;->mFinalButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->requestFocus()Z

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 12

    const v9, 0x7f040056

    const/4 v10, 0x0

    invoke-virtual {p1, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/CryptKeeperConfirm;->mContentView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/settings/CryptKeeperConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v9

    const-string v10, "enterprise_policy"

    invoke-virtual {v9, v10}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v9, p0, Lcom/android/settings/CryptKeeperConfirm;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    iget-object v9, p0, Lcom/android/settings/CryptKeeperConfirm;->mContentView:Landroid/view/View;

    const v10, 0x7f1000e1

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    const/4 v9, 0x1

    new-array v6, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "false"

    aput-object v10, v6, v9

    invoke-virtual {p0}, Lcom/android/settings/CryptKeeperConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v9

    const-string v10, "content://com.sec.knox.provider/RestrictionPolicy1"

    const-string v11, "isFastEncryptionAllowed"

    invoke-static {v9, v10, v11, v6}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    if-eqz v2, :cond_0

    const/4 v9, 0x1

    if-ne v3, v9, :cond_7

    const/4 v9, 0x1

    invoke-virtual {v2, v9}, Landroid/widget/CheckBox;->setChecked(Z)V

    const/4 v9, 0x0

    invoke-virtual {v2, v9}, Landroid/widget/CheckBox;->setEnabled(Z)V

    const-string v9, "sys.sec_device_encryption"

    const-string v10, "fast"

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/CryptKeeperConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v10

    const v11, 0x7f0a0ef6

    invoke-virtual {v10, v11}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ": "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lcom/android/settings/CryptKeeperConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v10

    const v11, 0x7f0a0ef7

    invoke-virtual {v10, v11}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    const-string v9, "security.mdpp"

    const-string v10, "None"

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v9, "Enforcing"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    if-eqz v2, :cond_1

    const/16 v9, 0x8

    invoke-virtual {v2, v9}, Landroid/widget/CheckBox;->setVisibility(I)V

    :cond_1
    iget-object v9, p0, Lcom/android/settings/CryptKeeperConfirm;->mContentView:Landroid/view/View;

    const v10, 0x7f1000e0

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/CryptKeeperConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v9

    const v10, 0x7f0a01ce

    invoke-virtual {v9, v10}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "\n\n"

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/settings/CryptKeeperConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v9

    const v10, 0x7f0a0f18

    invoke-virtual {v9, v10}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v9, 0xa

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/CryptKeeperConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v9

    const-string v10, "content://com.sec.knox.provider/RestrictionPolicy3"

    const-string v11, "isOdeTrustedBootVerificationEnabled"

    invoke-static {v9, v10, v11}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    const/4 v9, -0x1

    if-eq v4, v9, :cond_3

    const/4 v9, 0x1

    if-ne v4, v9, :cond_3

    const-string v9, "MDM"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    const-string v9, "Enforcing"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    if-lez v9, :cond_4

    const-string v9, ";"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    const-string v9, "CC"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    if-nez v9, :cond_6

    const-string v9, "false"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sput-object v9, Lcom/android/settings/CryptKeeperConfirm;->mTrustedboot:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/settings/CryptKeeperConfirm;->establishFinalConfirmationState()V

    iget-object v9, p0, Lcom/android/settings/CryptKeeperConfirm;->mContentView:Landroid/view/View;

    return-object v9

    :cond_7
    iget-object v9, p0, Lcom/android/settings/CryptKeeperConfirm;->mFastEncryptionChecker:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v9}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0
.end method
