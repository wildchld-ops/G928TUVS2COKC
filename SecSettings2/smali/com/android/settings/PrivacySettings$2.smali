.class Lcom/android/settings/PrivacySettings$2;
.super Ljava/lang/Object;
.source "PrivacySettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/PrivacySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/PrivacySettings;


# direct methods
.method constructor <init>(Lcom/android/settings/PrivacySettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/PrivacySettings$2;->this$0:Lcom/android/settings/PrivacySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5

    const/4 v3, 0x1

    instance-of v4, p1, Landroid/preference/SwitchPreference;

    if-nez v4, :cond_0

    :goto_0
    return v3

    :cond_0
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/android/settings/PrivacySettings$2;->this$0:Lcom/android/settings/PrivacySettings;

    # getter for: Lcom/android/settings/PrivacySettings;->mBackup:Landroid/preference/SwitchPreference;
    invoke-static {v4}, Lcom/android/settings/PrivacySettings;->access$900(Lcom/android/settings/PrivacySettings;)Landroid/preference/SwitchPreference;

    move-result-object v4

    if-ne p1, v4, :cond_3

    if-nez v1, :cond_2

    iget-object v3, p0, Lcom/android/settings/PrivacySettings$2;->this$0:Lcom/android/settings/PrivacySettings;

    # invokes: Lcom/android/settings/PrivacySettings;->showEraseBackupDialog()V
    invoke-static {v3}, Lcom/android/settings/PrivacySettings;->access$1000(Lcom/android/settings/PrivacySettings;)V

    :cond_1
    :goto_1
    move v3, v2

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/android/settings/PrivacySettings$2;->this$0:Lcom/android/settings/PrivacySettings;

    # invokes: Lcom/android/settings/PrivacySettings;->setBackupEnabled(Z)V
    invoke-static {v4, v3}, Lcom/android/settings/PrivacySettings;->access$1100(Lcom/android/settings/PrivacySettings;Z)V

    const/4 v2, 0x1

    goto :goto_1

    :cond_3
    iget-object v4, p0, Lcom/android/settings/PrivacySettings$2;->this$0:Lcom/android/settings/PrivacySettings;

    # getter for: Lcom/android/settings/PrivacySettings;->mAutoRestore:Landroid/preference/SwitchPreference;
    invoke-static {v4}, Lcom/android/settings/PrivacySettings;->access$1200(Lcom/android/settings/PrivacySettings;)Landroid/preference/SwitchPreference;

    move-result-object v4

    if-ne p1, v4, :cond_1

    :try_start_0
    iget-object v4, p0, Lcom/android/settings/PrivacySettings$2;->this$0:Lcom/android/settings/PrivacySettings;

    # getter for: Lcom/android/settings/PrivacySettings;->mBackupManager:Landroid/app/backup/IBackupManager;
    invoke-static {v4}, Lcom/android/settings/PrivacySettings;->access$1300(Lcom/android/settings/PrivacySettings;)Landroid/app/backup/IBackupManager;

    move-result-object v4

    invoke-interface {v4, v1}, Landroid/app/backup/IBackupManager;->setAutoRestore(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    iget-object v4, p0, Lcom/android/settings/PrivacySettings$2;->this$0:Lcom/android/settings/PrivacySettings;

    # getter for: Lcom/android/settings/PrivacySettings;->mAutoRestore:Landroid/preference/SwitchPreference;
    invoke-static {v4}, Lcom/android/settings/PrivacySettings;->access$1200(Lcom/android/settings/PrivacySettings;)Landroid/preference/SwitchPreference;

    move-result-object v4

    if-nez v1, :cond_4

    :goto_2
    invoke-virtual {v4, v3}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    goto :goto_2
.end method
