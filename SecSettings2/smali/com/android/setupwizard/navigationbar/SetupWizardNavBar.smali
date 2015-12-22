.class public Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;
.super Landroid/app/Fragment;
.source "SetupWizardNavBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/setupwizard/navigationbar/SetupWizardNavBar$NavButton;,
        Lcom/android/setupwizard/navigationbar/SetupWizardNavBar$NavigationBarListener;
    }
.end annotation


# instance fields
.field private mBackButton:Landroid/widget/Button;

.field private mCallback:Lcom/android/setupwizard/navigationbar/SetupWizardNavBar$NavigationBarListener;

.field private mNavigationBarView:Landroid/view/ViewGroup;

.field private mNextButton:Landroid/widget/Button;

.field private mSystemUiFlags:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    const/16 v0, 0x1202

    iput v0, p0, Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;->mSystemUiFlags:I

    return-void
.end method

.method private getNavbarTheme()I
    .locals 11

    const/4 v10, 0x3

    const/4 v3, 0x1

    const/4 v9, 0x2

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;->getActivity()Landroid/app/Activity;

    move-result-object v6

    new-array v7, v10, [I

    sget v8, Lcom/android/setupwizard/navigationbar/R$attr;->setup_wizard_navbar_theme:I

    aput v8, v7, v5

    const v8, 0x1010030

    aput v8, v7, v3

    const v8, 0x1010031

    aput v8, v7, v9

    invoke-virtual {v6, v7}, Landroid/app/Activity;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v5, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    if-nez v4, :cond_0

    new-array v2, v10, [F

    new-array v1, v10, [F

    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v6

    invoke-static {v6, v2}, Landroid/graphics/Color;->colorToHSV(I[F)V

    invoke-virtual {v0, v9, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v6

    invoke-static {v6, v1}, Landroid/graphics/Color;->colorToHSV(I[F)V

    aget v6, v2, v9

    aget v7, v1, v9

    cmpl-float v6, v6, v7

    if-lez v6, :cond_1

    :goto_0
    if-eqz v3, :cond_2

    sget v4, Lcom/android/setupwizard/navigationbar/R$style;->setup_wizard_navbar_theme_dark:I

    :cond_0
    :goto_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return v4

    :cond_1
    move v3, v5

    goto :goto_0

    :cond_2
    sget v4, Lcom/android/setupwizard/navigationbar/R$style;->setup_wizard_navbar_theme_light:I

    goto :goto_1
.end method


# virtual methods
.method public getBackButton()Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;->mBackButton:Landroid/widget/Button;

    return-object v0
.end method

.method public getNextButton()Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;->mNextButton:Landroid/widget/Button;

    return-object v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    check-cast p1, Lcom/android/setupwizard/navigationbar/SetupWizardNavBar$NavigationBarListener;

    iput-object p1, p0, Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;->mCallback:Lcom/android/setupwizard/navigationbar/SetupWizardNavBar$NavigationBarListener;

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;->mBackButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;->mCallback:Lcom/android/setupwizard/navigationbar/SetupWizardNavBar$NavigationBarListener;

    invoke-interface {v0}, Lcom/android/setupwizard/navigationbar/SetupWizardNavBar$NavigationBarListener;->onNavigateBack()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;->mNextButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;->mCallback:Lcom/android/setupwizard/navigationbar/SetupWizardNavBar$NavigationBarListener;

    invoke-interface {v0}, Lcom/android/setupwizard/navigationbar/SetupWizardNavBar$NavigationBarListener;->onNavigateNext()V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;->getNavbarTheme()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v1, Lcom/android/setupwizard/navigationbar/R$layout;->setup_wizard_navbar_layout:I

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;->mNavigationBarView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;->mNavigationBarView:Landroid/view/ViewGroup;

    sget v2, Lcom/android/setupwizard/navigationbar/R$id;->setup_wizard_navbar_next:I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;->mNextButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;->mNavigationBarView:Landroid/view/ViewGroup;

    sget v2, Lcom/android/setupwizard/navigationbar/R$id;->setup_wizard_navbar_back:I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;->mBackButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;->mBackButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;->mNavigationBarView:Landroid/view/ViewGroup;

    return-object v1
.end method

.method public onPreDraw()Z
    .locals 2

    iget-object v0, p0, Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;->mNavigationBarView:Landroid/view/ViewGroup;

    iget v1, p0, Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;->mSystemUiFlags:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setSystemUiVisibility(I)V

    const/4 v0, 0x1

    return v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;->mCallback:Lcom/android/setupwizard/navigationbar/SetupWizardNavBar$NavigationBarListener;

    invoke-interface {v1, p0}, Lcom/android/setupwizard/navigationbar/SetupWizardNavBar$NavigationBarListener;->onNavigationBarCreated(Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;)V

    iget-object v1, p0, Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;->mNavigationBarView:Landroid/view/ViewGroup;

    iget v2, p0, Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;->mSystemUiFlags:I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setSystemUiVisibility(I)V

    iget-object v1, p0, Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;->mNavigationBarView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void
.end method

.method public setUseImmersiveMode(Z)V
    .locals 0

    invoke-virtual {p0, p1, p1}, Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;->setUseImmersiveMode(ZZ)V

    return-void
.end method

.method public setUseImmersiveMode(ZZ)V
    .locals 2

    if-eqz p1, :cond_1

    iget v0, p0, Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;->mSystemUiFlags:I

    or-int/lit16 v0, v0, 0x1002

    iput v0, p0, Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;->mSystemUiFlags:I

    if-eqz p2, :cond_0

    iget v0, p0, Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;->mSystemUiFlags:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;->mSystemUiFlags:I

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;->mNavigationBarView:Landroid/view/ViewGroup;

    iget v1, p0, Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;->mSystemUiFlags:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setSystemUiVisibility(I)V

    return-void

    :cond_1
    iget v0, p0, Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;->mSystemUiFlags:I

    and-int/lit16 v0, v0, -0x1203

    iput v0, p0, Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;->mSystemUiFlags:I

    goto :goto_0
.end method
