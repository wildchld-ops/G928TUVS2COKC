.class Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment$8;
.super Ljava/lang/Object;
.source "HomeSettingsPreferenceFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;->showAlert(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;


# direct methods
.method constructor <init>(Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment$8;->this$0:Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment$8;->this$0:Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;

    # getter for: Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;->mActivityShouldRestart:Z
    invoke-static {v0}, Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;->access$100(Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment$8;->this$0:Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;

    # setter for: Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;->mActivityShouldRestart:Z
    invoke-static {v0, v3}, Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;->access$102(Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;Z)Z

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/launcher/utils/FadeDuration;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/sec/android/app/launcher/utils/FadeDuration;-><init>(F)V

    invoke-virtual {v0, v1, v3}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->showHomeFragmentAnimated(Lcom/sec/android/app/launcher/utils/FadeDuration;Z)V

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getHomeFragment()Lcom/sec/android/app/launcher/activities/HomeFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/HomeFragment;->getHomePresenter()Lcom/sec/android/app/launcher/activities/HomePresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->resetOptionTray()V

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->recreate()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment$8;->this$0:Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;

    # getter for: Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;->mProcessShouldRestart:Z
    invoke-static {v0}, Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;->access$900(Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment$8;->this$0:Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;

    # setter for: Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;->mActivityShouldRestart:Z
    invoke-static {v0, v3}, Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;->access$102(Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;Z)Z

    invoke-static {v3}, Ljava/lang/System;->exit(I)V

    :cond_1
    return-void
.end method
