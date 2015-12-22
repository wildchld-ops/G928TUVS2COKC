.class public Lcom/android/settings/SetupChooseLockPassword;
.super Lcom/android/settings/ChooseLockPassword;
.source "SetupChooseLockPassword.java"

# interfaces
.implements Lcom/android/setupwizard/navigationbar/SetupWizardNavBar$NavigationBarListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/SetupChooseLockPassword$SetupChooseLockPasswordFragment;
    }
.end annotation


# instance fields
.field private mFragment:Lcom/android/settings/SetupChooseLockPassword$SetupChooseLockPasswordFragment;

.field private mNavigationBar:Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/ChooseLockPassword;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/SetupChooseLockPassword;)Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/SetupChooseLockPassword;->mNavigationBar:Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;

    return-object v0
.end method

.method public static createIntent(Landroid/content/Context;IZIIZZ)Landroid/content/Intent;
    .locals 3

    invoke-static/range {p0 .. p6}, Lcom/android/settings/ChooseLockPassword;->createIntent(Landroid/content/Context;IZIIZZ)Landroid/content/Intent;

    move-result-object v0

    const-class v1, Lcom/android/settings/SetupChooseLockPassword;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v1, "extra_prefs_show_button_bar"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object v0
.end method


# virtual methods
.method getFragmentClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Fragment;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/android/settings/SetupChooseLockPassword$SetupChooseLockPasswordFragment;

    return-object v0
.end method

.method protected isValidFragment(Ljava/lang/String;)Z
    .locals 1

    const-class v0, Lcom/android/settings/SetupChooseLockPassword$SetupChooseLockPasswordFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/SetupChooseLockPassword;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/android/settings/SetupWizardUtils;->getTheme(Landroid/content/Intent;I)I

    move-result p2

    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/ChooseLockPassword;->onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V

    return-void
.end method

.method public onAttachFragment(Landroid/app/Fragment;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/ChooseLockPassword;->onAttachFragment(Landroid/app/Fragment;)V

    instance-of v0, p1, Lcom/android/settings/SetupChooseLockPassword$SetupChooseLockPasswordFragment;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/settings/SetupChooseLockPassword$SetupChooseLockPasswordFragment;

    iput-object p1, p0, Lcom/android/settings/SetupChooseLockPassword;->mFragment:Lcom/android/settings/SetupChooseLockPassword$SetupChooseLockPasswordFragment;

    :cond_0
    return-void
.end method

.method public onNavigateBack()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/settings/SetupChooseLockPassword;->onBackPressed()V

    return-void
.end method

.method public onNavigateNext()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/SetupChooseLockPassword;->mFragment:Lcom/android/settings/SetupChooseLockPassword$SetupChooseLockPasswordFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/SetupChooseLockPassword;->mFragment:Lcom/android/settings/SetupChooseLockPassword$SetupChooseLockPasswordFragment;

    invoke-virtual {v0}, Lcom/android/settings/SetupChooseLockPassword$SetupChooseLockPasswordFragment;->handleNext()V

    :cond_0
    return-void
.end method

.method public onNavigationBarCreated(Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/SetupChooseLockPassword;->mNavigationBar:Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;

    invoke-static {p0, p1}, Lcom/android/settings/SetupWizardUtils;->setImmersiveMode(Landroid/app/Activity;Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;)V

    return-void
.end method
