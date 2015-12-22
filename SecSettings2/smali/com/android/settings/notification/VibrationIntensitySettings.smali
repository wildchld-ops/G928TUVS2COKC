.class public Lcom/android/settings/notification/VibrationIntensitySettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "VibrationIntensitySettings.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;


# static fields
.field private static final DEBUG:Z

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;


# instance fields
.field private callVibrationPref:Lcom/android/settings/notification/VibrationSeekBarPreference;

.field private mAoBleChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private notiVibrationPref:Lcom/android/settings/notification/VibrationSeekBarPreference;

.field private systemVibrationPref:Lcom/android/settings/notification/VibrationSeekBarPreference;

.field private vibrationPref:Lcom/android/settings/notification/VibrationSeekBarPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "VibrationIntensity"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/notification/VibrationIntensitySettings;->DEBUG:Z

    new-instance v0, Lcom/android/settings/notification/VibrationIntensitySettings$2;

    invoke-direct {v0}, Lcom/android/settings/notification/VibrationIntensitySettings$2;-><init>()V

    sput-object v0, Lcom/android/settings/notification/VibrationIntensitySettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    new-instance v0, Lcom/android/settings/notification/VibrationIntensitySettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/VibrationIntensitySettings$1;-><init>(Lcom/android/settings/notification/VibrationIntensitySettings;)V

    iput-object v0, p0, Lcom/android/settings/notification/VibrationIntensitySettings;->mAoBleChangeReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/notification/VibrationIntensitySettings;)Lcom/android/settings/notification/VibrationSeekBarPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/notification/VibrationIntensitySettings;->systemVibrationPref:Lcom/android/settings/notification/VibrationSeekBarPreference;

    return-object v0
.end method

.method private initVibrationPreference(Ljava/lang/String;I)Lcom/android/settings/notification/VibrationSeekBarPreference;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/settings/notification/VibrationIntensitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/notification/VibrationSeekBarPreference;

    iput-object v0, p0, Lcom/android/settings/notification/VibrationIntensitySettings;->vibrationPref:Lcom/android/settings/notification/VibrationSeekBarPreference;

    iget-object v0, p0, Lcom/android/settings/notification/VibrationIntensitySettings;->vibrationPref:Lcom/android/settings/notification/VibrationSeekBarPreference;

    invoke-virtual {v0, p2}, Lcom/android/settings/notification/VibrationSeekBarPreference;->setType(I)V

    iget-object v0, p0, Lcom/android/settings/notification/VibrationIntensitySettings;->vibrationPref:Lcom/android/settings/notification/VibrationSeekBarPreference;

    return-object v0
.end method

.method private stopAllVibration()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/notification/VibrationIntensitySettings;->callVibrationPref:Lcom/android/settings/notification/VibrationSeekBarPreference;

    invoke-virtual {v0}, Lcom/android/settings/notification/VibrationSeekBarPreference;->stopVibration()V

    iget-object v0, p0, Lcom/android/settings/notification/VibrationIntensitySettings;->notiVibrationPref:Lcom/android/settings/notification/VibrationSeekBarPreference;

    invoke-virtual {v0}, Lcom/android/settings/notification/VibrationSeekBarPreference;->stopVibration()V

    iget-object v0, p0, Lcom/android/settings/notification/VibrationIntensitySettings;->systemVibrationPref:Lcom/android/settings/notification/VibrationSeekBarPreference;

    invoke-virtual {v0}, Lcom/android/settings/notification/VibrationSeekBarPreference;->stopVibration()V

    return-void
.end method


# virtual methods
.method public isEnableAOBLE()Z
    .locals 3

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    const/16 v1, 0x12c

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->getProfileConnectionState(I)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    const v5, 0x7f0700af

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/notification/VibrationIntensitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/notification/VibrationIntensitySettings;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v5}, Lcom/android/settings/notification/VibrationIntensitySettings;->addPreferencesFromResource(I)V

    const-string v3, "ring_vibration"

    const/4 v4, 0x0

    invoke-direct {p0, v3, v4}, Lcom/android/settings/notification/VibrationIntensitySettings;->initVibrationPreference(Ljava/lang/String;I)Lcom/android/settings/notification/VibrationSeekBarPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/notification/VibrationIntensitySettings;->callVibrationPref:Lcom/android/settings/notification/VibrationSeekBarPreference;

    const-string v3, "notification_vibration"

    const/4 v4, 0x1

    invoke-direct {p0, v3, v4}, Lcom/android/settings/notification/VibrationIntensitySettings;->initVibrationPreference(Ljava/lang/String;I)Lcom/android/settings/notification/VibrationSeekBarPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/notification/VibrationIntensitySettings;->notiVibrationPref:Lcom/android/settings/notification/VibrationSeekBarPreference;

    const-string v3, "system_vibration"

    const/4 v4, 0x2

    invoke-direct {p0, v3, v4}, Lcom/android/settings/notification/VibrationIntensitySettings;->initVibrationPreference(Ljava/lang/String;I)Lcom/android/settings/notification/VibrationSeekBarPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/notification/VibrationIntensitySettings;->systemVibrationPref:Lcom/android/settings/notification/VibrationSeekBarPreference;

    invoke-virtual {p0}, Lcom/android/settings/notification/VibrationIntensitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/Utils;->isEnabledUltraPowerSaving(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/notification/VibrationIntensitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "UPSM"

    invoke-static {v3, v5, v4}, Lcom/android/settings/Utils;->getRemovePreferenceInOtherMode(Landroid/content/Context;ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/settings/notification/VibrationIntensitySettings;->removePreference(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/android/settings/notification/VibrationIntensitySettings;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "ring_vibration"

    invoke-virtual {p0, v3}, Lcom/android/settings/notification/VibrationIntensitySettings;->removePreference(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    const-string v0, "VibrationIntensity"

    const-string v1, "onOptionsItemSelected : home"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/settings/notification/VibrationIntensitySettings;->stopAllVibration()V

    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 4

    const-string v1, "VibrationIntensity"

    const-string v2, "onPause : "

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    invoke-direct {p0}, Lcom/android/settings/notification/VibrationIntensitySettings;->stopAllVibration()V

    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/notification/VibrationIntensitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/notification/VibrationIntensitySettings;->mAoBleChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "VibrationIntensity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RuntimeException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onResume()V
    .locals 4

    const/4 v2, 0x1

    const-string v1, "VibrationIntensity"

    const-string v3, "onResume : "

    invoke-static {v1, v3}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settings/notification/VibrationIntensitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v3, p0, Lcom/android/settings/notification/VibrationIntensitySettings;->mAoBleChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v3, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    iget-object v1, p0, Lcom/android/settings/notification/VibrationIntensitySettings;->systemVibrationPref:Lcom/android/settings/notification/VibrationSeekBarPreference;

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/android/settings/notification/VibrationIntensitySettings;->systemVibrationPref:Lcom/android/settings/notification/VibrationSeekBarPreference;

    invoke-virtual {p0}, Lcom/android/settings/notification/VibrationIntensitySettings;->isEnableAOBLE()Z

    move-result v1

    if-nez v1, :cond_1

    move v1, v2

    :goto_0
    invoke-virtual {v3, v1}, Lcom/android/settings/notification/VibrationSeekBarPreference;->setEnabled(Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/notification/VibrationIntensitySettings;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    return-void

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
