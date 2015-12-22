.class public Lcom/android/settings/fingerprint/FingerprintDisclaimerDialog;
.super Landroid/app/DialogFragment;
.source "FingerprintDisclaimerDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/fingerprint/FingerprintDisclaimerDialog$FingerprintDisclaimerDialogListener;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field isAlipayInstalled:Z

.field isFidoInstalled:Z

.field isKioskMode:Z

.field isSamsungpayInstalled:Z

.field isSbrowserInstalled:Z

.field private listener:Lcom/android/settings/fingerprint/FingerprintDisclaimerDialog$FingerprintDisclaimerDialogListener;

.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mDoNotShow:Landroid/widget/CheckBox;

.field private mSharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    iput-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimerDialog;->isFidoInstalled:Z

    iput-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimerDialog;->isSbrowserInstalled:Z

    iput-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimerDialog;->isAlipayInstalled:Z

    iput-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimerDialog;->isSamsungpayInstalled:Z

    iput-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimerDialog;->isKioskMode:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/fingerprint/FingerprintDisclaimerDialog;)Lcom/android/settings/fingerprint/FingerprintDisclaimerDialog$FingerprintDisclaimerDialogListener;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimerDialog;->listener:Lcom/android/settings/fingerprint/FingerprintDisclaimerDialog$FingerprintDisclaimerDialogListener;

    return-object v0
.end method

.method private makeFingerPrintDescString()Ljava/lang/String;
    .locals 5

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintDisclaimerDialog;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "com.sec.android.app.sbrowser"

    invoke-static {v2, v3}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimerDialog;->isSbrowserInstalled:Z

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintDisclaimerDialog;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "com.eg.android.AlipayGphone"

    invoke-static {v2, v3}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimerDialog;->isAlipayInstalled:Z

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintDisclaimerDialog;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "com.samsung.android.samsungpay"

    invoke-static {v2, v3}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintDisclaimerDialog;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "com.samsung.android.spay"

    invoke-static {v3, v4}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    or-int/2addr v2, v3

    iput-boolean v2, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimerDialog;->isSamsungpayInstalled:Z

    const-string v0, "&#8226 "

    const-string v1, ""

    iget-boolean v2, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimerDialog;->isKioskMode:Z

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintDisclaimerDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a10bc

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "<br/>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_0
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v2

    const-string v3, "SEC_FLOATING_FEATURE_WEB_SUPPORT_FINGERPRINT_WEBSIGNIN"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "VZW"

    const-string v3, "ro.csc.sales_code"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintDisclaimerDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a10e3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "<br/>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintDisclaimerDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a10ea

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimerDialog;->isAlipayInstalled:Z

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "<br/>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintDisclaimerDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a10fd

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_2
    iget-boolean v2, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimerDialog;->isSamsungpayInstalled:Z

    if-eqz v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "<br/>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintDisclaimerDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a13c6

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_3
    return-object v1
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    const-string v0, "FingerprintDisclaimerDialog"

    const-string v1, "onCancel!!"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimerDialog;->listener:Lcom/android/settings/fingerprint/FingerprintDisclaimerDialog$FingerprintDisclaimerDialogListener;

    invoke-interface {v0}, Lcom/android/settings/fingerprint/FingerprintDisclaimerDialog$FingerprintDisclaimerDialogListener;->onCanceDisclaimerDialog()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintDisclaimerDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimerDialog;->context:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintDisclaimerDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimerDialog;->mSharedPreferences:Landroid/content/SharedPreferences;

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 10

    const/4 v7, 0x0

    const-string v8, "FingerprintDisclaimerDialog"

    const-string v9, "onCreateDialog"

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintDisclaimerDialog;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const-string v9, "layout_inflater"

    invoke-virtual {v8, v9}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    if-nez v1, :cond_0

    const-string v8, "FingerprintDisclaimerDialog"

    const-string v9, "onCreateDialog: dialogLayout is null!!"

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v7

    :cond_0
    const v8, 0x7f0400ad

    invoke-virtual {v1, v8, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v7, 0x7f100165

    :try_start_0
    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/CheckBox;

    iput-object v7, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimerDialog;->mDoNotShow:Landroid/widget/CheckBox;

    iget-object v7, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimerDialog;->mDoNotShow:Landroid/widget/CheckBox;

    new-instance v8, Lcom/android/settings/fingerprint/FingerprintDisclaimerDialog$1;

    invoke-direct {v8, p0}, Lcom/android/settings/fingerprint/FingerprintDisclaimerDialog$1;-><init>(Lcom/android/settings/fingerprint/FingerprintDisclaimerDialog;)V

    invoke-virtual {v7, v8}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const v7, 0x7f1001b2

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintDisclaimerDialog;->makeFingerPrintDescString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v7, "VZW"

    const-string v8, "ro.csc.sales_code"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const v7, 0x7f1001b3

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-static {}, Landroid/util/GeneralUtil;->isTablet()Z

    move-result v7

    if-nez v7, :cond_1

    const v7, 0x7f0a13ca

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(I)V

    const v7, 0x7f1001b1

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const v7, 0x7f0a13c8

    invoke-virtual {p0, v7}, Lcom/android/settings/fingerprint/FingerprintDisclaimerDialog;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintDisclaimerDialog;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v0, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v7, 0x7f0a109d

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const v7, 0x7f0a13ba

    new-instance v8, Lcom/android/settings/fingerprint/FingerprintDisclaimerDialog$2;

    invoke-direct {v8, p0}, Lcom/android/settings/fingerprint/FingerprintDisclaimerDialog$2;-><init>(Lcom/android/settings/fingerprint/FingerprintDisclaimerDialog;)V

    invoke-virtual {v0, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimerDialog;->mAlertDialog:Landroid/app/AlertDialog;

    iget-object v7, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimerDialog;->mAlertDialog:Landroid/app/AlertDialog;

    goto/16 :goto_0

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    invoke-super {p0, p1, p2, p3}, Landroid/app/DialogFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroyView()V
    .locals 2

    const-string v0, "FingerprintDisclaimerDialog"

    const-string v1, "onDestroyView"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/DialogFragment;->onDestroyView()V

    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Landroid/app/DialogFragment;->onResume()V

    return-void
.end method

.method public onStop()V
    .locals 0

    invoke-super {p0}, Landroid/app/DialogFragment;->onStop()V

    return-void
.end method

.method public setFingerprintDisclaimerDialogListener(Lcom/android/settings/fingerprint/FingerprintDisclaimerDialog$FingerprintDisclaimerDialogListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimerDialog;->listener:Lcom/android/settings/fingerprint/FingerprintDisclaimerDialog$FingerprintDisclaimerDialogListener;

    return-void
.end method

.method public setPreferences(Ljava/lang/String;Z)V
    .locals 5

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimerDialog;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v1

    const-string v2, "FingerprintDisclaimerDialog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Save value ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v1, :cond_0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method
