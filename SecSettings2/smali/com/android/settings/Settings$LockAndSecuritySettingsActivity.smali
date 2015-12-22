.class public Lcom/android/settings/Settings$LockAndSecuritySettingsActivity;
.super Lcom/android/settings/SettingsActivity;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LockAndSecuritySettingsActivity"
.end annotation


# instance fields
.field private fromSearch:Z

.field private isLaunched:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/settings/SettingsActivity;-><init>()V

    iput-boolean v0, p0, Lcom/android/settings/Settings$LockAndSecuritySettingsActivity;->fromSearch:Z

    iput-boolean v0, p0, Lcom/android/settings/Settings$LockAndSecuritySettingsActivity;->isLaunched:Z

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/settings/SettingsActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/Settings$LockAndSecuritySettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, ":settings:show_fragment_args"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, ":settings:show_fragment_args"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v2, "fromSearch"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "fromSearch"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings/Settings$LockAndSecuritySettingsActivity;->fromSearch:Z

    :cond_0
    if-eqz p1, :cond_1

    const-string v2, "isLaunched"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings/Settings$LockAndSecuritySettingsActivity;->isLaunched:Z

    const-string v2, "fromSearch"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings/Settings$LockAndSecuritySettingsActivity;->fromSearch:Z

    :cond_1
    return-void
.end method

.method protected onPostResume()V
    .locals 4

    invoke-super {p0}, Lcom/android/settings/SettingsActivity;->onPostResume()V

    iget-boolean v2, p0, Lcom/android/settings/Settings$LockAndSecuritySettingsActivity;->isLaunched:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/Settings$LockAndSecuritySettingsActivity;->onBackPressed()V

    :cond_0
    iget-boolean v2, p0, Lcom/android/settings/Settings$LockAndSecuritySettingsActivity;->fromSearch:Z

    if-nez v2, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/Settings$LockAndSecuritySettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "main_content2"

    invoke-virtual {v2, v3}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->performClickMenuBySearch(Landroid/app/Fragment;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/settings/Settings$LockAndSecuritySettingsActivity;->isLaunched:Z

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/settings/Settings$LockAndSecuritySettingsActivity;->fromSearch:Z

    goto :goto_0
.end method
