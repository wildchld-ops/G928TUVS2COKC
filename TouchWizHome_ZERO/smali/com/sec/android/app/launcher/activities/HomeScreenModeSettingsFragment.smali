.class public Lcom/sec/android/app/launcher/activities/HomeScreenModeSettingsFragment;
.super Landroid/app/Fragment;
.source "HomeScreenModeSettingsFragment.java"


# static fields
.field public static TAG:Ljava/lang/String;


# instance fields
.field private mApplyButton:Landroid/widget/Button;

.field private mAppsModeClickListener:Landroid/view/View$OnClickListener;

.field private mAppsRadio:Landroid/widget/RadioButton;

.field private mHomeOnlyModeClickListener:Landroid/view/View$OnClickListener;

.field private mHomeOnlyRadio:Landroid/widget/RadioButton;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "HomeScreenModeSettingsFragment"

    sput-object v0, Lcom/sec/android/app/launcher/activities/HomeScreenModeSettingsFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    new-instance v0, Lcom/sec/android/app/launcher/activities/HomeScreenModeSettingsFragment$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/launcher/activities/HomeScreenModeSettingsFragment$2;-><init>(Lcom/sec/android/app/launcher/activities/HomeScreenModeSettingsFragment;)V

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeScreenModeSettingsFragment;->mAppsModeClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/sec/android/app/launcher/activities/HomeScreenModeSettingsFragment$3;

    invoke-direct {v0, p0}, Lcom/sec/android/app/launcher/activities/HomeScreenModeSettingsFragment$3;-><init>(Lcom/sec/android/app/launcher/activities/HomeScreenModeSettingsFragment;)V

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeScreenModeSettingsFragment;->mHomeOnlyModeClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/launcher/activities/HomeScreenModeSettingsFragment;)Landroid/widget/RadioButton;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeScreenModeSettingsFragment;->mAppsRadio:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/launcher/activities/HomeScreenModeSettingsFragment;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/launcher/activities/HomeScreenModeSettingsFragment;->showModeChangeDialog(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/android/app/launcher/activities/HomeScreenModeSettingsFragment;)Landroid/widget/RadioButton;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeScreenModeSettingsFragment;->mHomeOnlyRadio:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/launcher/activities/HomeScreenModeSettingsFragment;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/launcher/activities/HomeScreenModeSettingsFragment;->setApplyButtonEnabled(Z)V

    return-void
.end method

.method private setApplyButtonEnabled(Z)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeScreenModeSettingsFragment;->mApplyButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomeScreenModeSettingsFragment;->mApplyButton:Landroid/widget/Button;

    if-eqz p1, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setAlpha(F)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeScreenModeSettingsFragment;->mApplyButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_0
    return-void

    :cond_1
    const v0, 0x3ee66666    # 0.45f

    goto :goto_0
.end method

.method private showModeChangeDialog(I)V
    .locals 5

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/HomeScreenModeSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0d007d

    new-instance v4, Lcom/sec/android/app/launcher/activities/HomeScreenModeSettingsFragment$5;

    invoke-direct {v4, p0}, Lcom/sec/android/app/launcher/activities/HomeScreenModeSettingsFragment$5;-><init>(Lcom/sec/android/app/launcher/activities/HomeScreenModeSettingsFragment;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0d002a

    new-instance v4, Lcom/sec/android/app/launcher/activities/HomeScreenModeSettingsFragment$4;

    invoke-direct {v4, p0}, Lcom/sec/android/app/launcher/activities/HomeScreenModeSettingsFragment$4;-><init>(Lcom/sec/android/app/launcher/activities/HomeScreenModeSettingsFragment;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    sget-object v0, Lcom/sec/android/app/launcher/activities/HomeScreenModeSettingsFragment;->TAG:Ljava/lang/String;

    const-string v1, "onCreate()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    sget-object v3, Lcom/sec/android/app/launcher/activities/HomeScreenModeSettingsFragment;->TAG:Ljava/lang/String;

    const-string v4, "onCreateView()"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const v3, 0x7f030034

    const/4 v4, 0x0

    invoke-virtual {p1, v3, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0b00a7

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const v3, 0x7f0b00a5

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    const v3, 0x7f0b00a8

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioButton;

    iput-object v3, p0, Lcom/sec/android/app/launcher/activities/HomeScreenModeSettingsFragment;->mAppsRadio:Landroid/widget/RadioButton;

    const v3, 0x7f0b00a6

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioButton;

    iput-object v3, p0, Lcom/sec/android/app/launcher/activities/HomeScreenModeSettingsFragment;->mHomeOnlyRadio:Landroid/widget/RadioButton;

    const v3, 0x7f0b00a9

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/sec/android/app/launcher/activities/HomeScreenModeSettingsFragment;->mApplyButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/HomeScreenModeSettingsFragment;->setCheckedSelectModeButton()V

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/HomeScreenModeSettingsFragment;->mAppsModeClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/HomeScreenModeSettingsFragment;->mHomeOnlyModeClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/HomeScreenModeSettingsFragment;->mApplyButton:Landroid/widget/Button;

    new-instance v4, Lcom/sec/android/app/launcher/activities/HomeScreenModeSettingsFragment$1;

    invoke-direct {v4, p0}, Lcom/sec/android/app/launcher/activities/HomeScreenModeSettingsFragment$1;-><init>(Lcom/sec/android/app/launcher/activities/HomeScreenModeSettingsFragment;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v2
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    sget-object v0, Lcom/sec/android/app/launcher/activities/HomeScreenModeSettingsFragment;->TAG:Ljava/lang/String;

    const-string v1, "onDestroy()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    sget-object v0, Lcom/sec/android/app/launcher/activities/HomeScreenModeSettingsFragment;->TAG:Ljava/lang/String;

    const-string v1, "onPause()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->isHomeOnlyModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeScreenModeSettingsFragment;->mAppsRadio:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->isHomeOnlyModeEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeScreenModeSettingsFragment;->mHomeOnlyRadio:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/app/launcher/activities/HomeScreenModeSettingsFragment;->setApplyButtonEnabled(Z)V

    :cond_2
    sget-object v0, Lcom/sec/android/app/launcher/activities/HomeScreenModeSettingsFragment;->TAG:Ljava/lang/String;

    const-string v1, "onResume()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setCheckedSelectModeButton()V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->isHomeOnlyModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeScreenModeSettingsFragment;->mAppsRadio:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeScreenModeSettingsFragment;->mHomeOnlyRadio:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    invoke-direct {p0, v1}, Lcom/sec/android/app/launcher/activities/HomeScreenModeSettingsFragment;->setApplyButtonEnabled(Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeScreenModeSettingsFragment;->mAppsRadio:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeScreenModeSettingsFragment;->mHomeOnlyRadio:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    invoke-direct {p0, v1}, Lcom/sec/android/app/launcher/activities/HomeScreenModeSettingsFragment;->setApplyButtonEnabled(Z)V

    goto :goto_0
.end method
