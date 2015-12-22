.class public abstract Lcom/android/settings/cloud/SyncFragment;
.super Landroid/preference/PreferenceFragment;
.source "SyncFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;
.implements Lcom/android/settings/cloud/CloudDialog$DialogListener;
.implements Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;


# instance fields
.field private dialogFragment:Lcom/android/settings/cloud/CloudDialog;

.field protected mActionBarSwitch:Lcom/android/settings/widget/SwitchBar;

.field protected mPrefWifiOnly:Landroid/preference/CheckBoxPreference;

.field protected syncDescriptionPref:Landroid/preference/Preference;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    iput-object v0, p0, Lcom/android/settings/cloud/SyncFragment;->dialogFragment:Lcom/android/settings/cloud/CloudDialog;

    iput-object v0, p0, Lcom/android/settings/cloud/SyncFragment;->mPrefWifiOnly:Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/cloud/SyncFragment;->syncDescriptionPref:Landroid/preference/Preference;

    return-void
.end method

.method private isNetworkAvailable()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/cloud/SyncFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->isConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected abstract broadcastStatus(I)V
.end method

.method protected finish()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/cloud/SyncFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCancelButtonClick()V
    .locals 4

    const/4 v3, 0x1

    iget-object v2, p0, Lcom/android/settings/cloud/SyncFragment;->dialogFragment:Lcom/android/settings/cloud/CloudDialog;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/cloud/SyncFragment;->dialogFragment:Lcom/android/settings/cloud/CloudDialog;

    invoke-virtual {v2}, Lcom/android/settings/cloud/CloudDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "dialogType"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v2, p0, Lcom/android/settings/cloud/SyncFragment;->mActionBarSwitch:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v2, v3}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/settings/cloud/SyncFragment;->updateScreen(I)V

    goto :goto_0

    :pswitch_1
    iget-object v2, p0, Lcom/android/settings/cloud/SyncFragment;->mPrefWifiOnly:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    invoke-virtual {p0, v3}, Lcom/android/settings/cloud/SyncFragment;->updateScreen(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPause()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/settings/cloud/SyncFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    const/4 v2, 0x0

    const/16 v3, 0x10

    invoke-virtual {v1, v2, v3}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    iget-object v1, p0, Lcom/android/settings/cloud/SyncFragment;->mActionBarSwitch:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, p0}, Lcom/android/settings/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    iget-object v1, p0, Lcom/android/settings/cloud/SyncFragment;->mActionBarSwitch:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1}, Lcom/android/settings/widget/SwitchBar;->hide()V

    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onPause()V

    return-void
.end method

.method public onPositiveButtonClick()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/android/settings/cloud/SyncFragment;->dialogFragment:Lcom/android/settings/cloud/CloudDialog;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/cloud/SyncFragment;->dialogFragment:Lcom/android/settings/cloud/CloudDialog;

    invoke-virtual {v2}, Lcom/android/settings/cloud/CloudDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "dialogType"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p0, v3}, Lcom/android/settings/cloud/SyncFragment;->updateScreen(I)V

    invoke-virtual {p0, v3}, Lcom/android/settings/cloud/SyncFragment;->broadcastStatus(I)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0, v4}, Lcom/android/settings/cloud/SyncFragment;->updateScreen(I)V

    invoke-virtual {p0, v4}, Lcom/android/settings/cloud/SyncFragment;->broadcastStatus(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 5

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-direct {p0}, Lcom/android/settings/cloud/SyncFragment;->isNetworkAvailable()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v4, p0, Lcom/android/settings/cloud/SyncFragment;->mPrefWifiOnly:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/settings/cloud/SyncFragment;->mPrefWifiOnly:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    invoke-virtual {p0, v2}, Lcom/android/settings/cloud/SyncFragment;->updateScreen(I)V

    invoke-virtual {p0}, Lcom/android/settings/cloud/SyncFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v4, 0x7f0a117c

    invoke-virtual {p0, v4}, Lcom/android/settings/cloud/SyncFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    :goto_1
    return v3

    :cond_0
    move v1, v3

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/settings/cloud/SyncFragment;->mPrefWifiOnly:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/cloud/SyncFragment;->mPrefWifiOnly:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, v2}, Lcom/android/settings/cloud/SyncFragment;->broadcastStatus(I)V

    :cond_2
    :goto_2
    invoke-virtual {p0, v2}, Lcom/android/settings/cloud/SyncFragment;->updateScreen(I)V

    move v3, v2

    goto :goto_1

    :cond_3
    const/4 v1, 0x3

    const v4, 0x7f0a1180

    invoke-virtual {p0, v4}, Lcom/android/settings/cloud/SyncFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4, p0}, Lcom/android/settings/cloud/CloudDialog;->getInstance(ILjava/lang/String;Lcom/android/settings/cloud/CloudDialog$DialogListener;)Lcom/android/settings/cloud/CloudDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/cloud/SyncFragment;->dialogFragment:Lcom/android/settings/cloud/CloudDialog;

    iget-object v1, p0, Lcom/android/settings/cloud/SyncFragment;->dialogFragment:Lcom/android/settings/cloud/CloudDialog;

    invoke-virtual {v1, v3}, Lcom/android/settings/cloud/CloudDialog;->setCancelable(Z)V

    iget-object v1, p0, Lcom/android/settings/cloud/SyncFragment;->dialogFragment:Lcom/android/settings/cloud/CloudDialog;

    invoke-virtual {v1, p0}, Lcom/android/settings/cloud/CloudDialog;->show(Lcom/android/settings/cloud/SyncFragment;)V

    goto :goto_2
.end method

.method public onResume()V
    .locals 5

    const/16 v4, 0x10

    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    invoke-virtual {p0}, Lcom/android/settings/cloud/SyncFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    invoke-virtual {v0}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/cloud/SyncFragment;->mActionBarSwitch:Lcom/android/settings/widget/SwitchBar;

    instance-of v2, v0, Lcom/android/settings/SettingsActivity;

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/android/settings/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d008d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0}, Lcom/android/settings/SettingsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v4, v4}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    :cond_0
    return-void
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v0, "CloudSettings"

    const-string v3, "on Switch change callback"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/settings/cloud/SyncFragment;->isNetworkAvailable()Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p2, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    invoke-virtual {p0, v2}, Lcom/android/settings/cloud/SyncFragment;->updateScreen(I)V

    invoke-virtual {p0}, Lcom/android/settings/cloud/SyncFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v2, 0x7f0a117c

    invoke-virtual {p0, v2}, Lcom/android/settings/cloud/SyncFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_1
    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p0, v2}, Lcom/android/settings/cloud/SyncFragment;->broadcastStatus(I)V

    :goto_2
    invoke-virtual {p0, v2}, Lcom/android/settings/cloud/SyncFragment;->updateScreen(I)V

    goto :goto_1

    :cond_2
    const/4 v0, 0x2

    const v1, 0x7f0a118d

    invoke-virtual {p0, v1}, Lcom/android/settings/cloud/SyncFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p0}, Lcom/android/settings/cloud/CloudDialog;->getInstance(ILjava/lang/String;Lcom/android/settings/cloud/CloudDialog$DialogListener;)Lcom/android/settings/cloud/CloudDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/cloud/SyncFragment;->dialogFragment:Lcom/android/settings/cloud/CloudDialog;

    iget-object v0, p0, Lcom/android/settings/cloud/SyncFragment;->dialogFragment:Lcom/android/settings/cloud/CloudDialog;

    invoke-virtual {v0, v2}, Lcom/android/settings/cloud/CloudDialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/android/settings/cloud/SyncFragment;->dialogFragment:Lcom/android/settings/cloud/CloudDialog;

    invoke-virtual {v0, p0}, Lcom/android/settings/cloud/CloudDialog;->show(Lcom/android/settings/cloud/SyncFragment;)V

    goto :goto_2
.end method

.method protected abstract toggleCheckbox(Z)V
.end method

.method protected abstract togglePreferences(Z)V
.end method

.method protected updateScreen(I)V
    .locals 2

    invoke-static {}, Lcom/android/settings/cloud/CloudSettings;->getInstance()Lcom/android/settings/cloud/CloudSettings;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/cloud/SyncFragment;->finish()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/android/settings/cloud/CloudSettings;->isAccountSet()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/cloud/SyncFragment;->finish()V

    goto :goto_0

    :cond_2
    if-nez p1, :cond_3

    iget-object v1, p0, Lcom/android/settings/cloud/SyncFragment;->mActionBarSwitch:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1}, Lcom/android/settings/widget/SwitchBar;->isChecked()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/settings/cloud/SyncFragment;->togglePreferences(Z)V

    goto :goto_0

    :cond_3
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/cloud/SyncFragment;->mPrefWifiOnly:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/settings/cloud/SyncFragment;->toggleCheckbox(Z)V

    goto :goto_0
.end method
