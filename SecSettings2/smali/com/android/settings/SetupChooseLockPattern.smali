.class public Lcom/android/settings/SetupChooseLockPattern;
.super Lcom/android/settings/ChooseLockPattern;
.source "SetupChooseLockPattern.java"

# interfaces
.implements Lcom/android/setupwizard/navigationbar/SetupWizardNavBar$NavigationBarListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/SetupChooseLockPattern$SetupChooseLockPatternFragment;
    }
.end annotation


# instance fields
.field private mFragment:Lcom/android/settings/SetupChooseLockPattern$SetupChooseLockPatternFragment;

.field private mNavigationBar:Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/ChooseLockPattern;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/SetupChooseLockPattern;)Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/SetupChooseLockPattern;->mNavigationBar:Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;

    return-object v0
.end method

.method public static createIntent(Landroid/content/Context;ZZZ)Landroid/content/Intent;
    .locals 2

    invoke-static {p0, p1, p2, p3}, Lcom/android/settings/ChooseLockPattern;->createIntent(Landroid/content/Context;ZZZ)Landroid/content/Intent;

    move-result-object v0

    const-class v1, Lcom/android/settings/SetupChooseLockPattern;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

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

    const-class v0, Lcom/android/settings/SetupChooseLockPattern$SetupChooseLockPatternFragment;

    return-object v0
.end method

.method protected isValidFragment(Ljava/lang/String;)Z
    .locals 1

    const-class v0, Lcom/android/settings/SetupChooseLockPattern$SetupChooseLockPatternFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/SetupChooseLockPattern;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/android/settings/SetupWizardUtils;->getTheme(Landroid/content/Intent;I)I

    move-result p2

    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/ChooseLockPattern;->onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V

    return-void
.end method

.method public onAttachFragment(Landroid/app/Fragment;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/ChooseLockPattern;->onAttachFragment(Landroid/app/Fragment;)V

    instance-of v0, p1, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/settings/SetupChooseLockPattern$SetupChooseLockPatternFragment;

    iput-object p1, p0, Lcom/android/settings/SetupChooseLockPattern;->mFragment:Lcom/android/settings/SetupChooseLockPattern$SetupChooseLockPatternFragment;

    :cond_0
    return-void
.end method

.method public onNavigateBack()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/settings/SetupChooseLockPattern;->onBackPressed()V

    return-void
.end method

.method public onNavigateNext()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/SetupChooseLockPattern;->mFragment:Lcom/android/settings/SetupChooseLockPattern$SetupChooseLockPatternFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/SetupChooseLockPattern;->mFragment:Lcom/android/settings/SetupChooseLockPattern$SetupChooseLockPatternFragment;

    invoke-virtual {v0}, Lcom/android/settings/SetupChooseLockPattern$SetupChooseLockPatternFragment;->handleRightButton()V

    :cond_0
    return-void
.end method

.method public onNavigationBarCreated(Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/SetupChooseLockPattern;->mNavigationBar:Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;

    invoke-static {p0, p1}, Lcom/android/settings/SetupWizardUtils;->setImmersiveMode(Landroid/app/Activity;Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;)V

    return-void
.end method
