.class public Lcom/android/settings/SetupEncryptionInterstitial;
.super Lcom/android/settings/EncryptionInterstitial;
.source "SetupEncryptionInterstitial.java"

# interfaces
.implements Lcom/android/setupwizard/navigationbar/SetupWizardNavBar$NavigationBarListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/SetupEncryptionInterstitial$SetupEncryptionInterstitialFragment;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/EncryptionInterstitial;-><init>()V

    return-void
.end method

.method public static createStartIntent(Landroid/content/Context;IZ)Landroid/content/Intent;
    .locals 4

    invoke-static {p0, p1, p2}, Lcom/android/settings/EncryptionInterstitial;->createStartIntent(Landroid/content/Context;IZ)Landroid/content/Intent;

    move-result-object v0

    const-class v1, Lcom/android/settings/SetupEncryptionInterstitial;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v1, "extra_prefs_show_button_bar"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v1

    const-string v2, ":settings:show_fragment_title_resid"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-object v0
.end method


# virtual methods
.method public getIntent()Landroid/content/Intent;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-super {p0}, Lcom/android/settings/EncryptionInterstitial;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const-string v1, ":settings:show_fragment"

    const-class v2, Lcom/android/settings/SetupEncryptionInterstitial$SetupEncryptionInterstitialFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method protected isValidFragment(Ljava/lang/String;)Z
    .locals 1

    const-class v0, Lcom/android/settings/SetupEncryptionInterstitial$SetupEncryptionInterstitialFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/SetupEncryptionInterstitial;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/android/settings/SetupWizardUtils;->getTheme(Landroid/content/Intent;I)I

    move-result p2

    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/EncryptionInterstitial;->onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V

    return-void
.end method

.method public onNavigateBack()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/settings/SetupEncryptionInterstitial;->onBackPressed()V

    return-void
.end method

.method public onNavigateNext()V
    .locals 2

    const/4 v0, -0x1

    invoke-virtual {p0}, Lcom/android/settings/SetupEncryptionInterstitial;->getResultIntentData()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/SetupEncryptionInterstitial;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/settings/SetupEncryptionInterstitial;->finish()V

    return-void
.end method

.method public onNavigationBarCreated(Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/settings/SetupWizardUtils;->setImmersiveMode(Landroid/app/Activity;Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;)V

    return-void
.end method
