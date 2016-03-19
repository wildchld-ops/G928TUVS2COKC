.class public Lcom/android/phone/operator/jpn/kddi/RoamingSettings;
.super Landroid/preference/PreferenceActivity;
.source "RoamingSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/operator/jpn/kddi/RoamingSettings$MyHandler;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mAirplainModeEnabledObserver:Landroid/database/ContentObserver;

.field private mHandler:Lcom/android/phone/operator/jpn/kddi/RoamingSettings$MyHandler;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mRoamingCarrierSelKey:Landroid/preference/PreferenceScreen;

.field private mRoamingNetworkMode:Landroid/preference/ListPreference;

.field private prefs:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/phone/operator/jpn/kddi/RoamingSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/phone/operator/jpn/kddi/RoamingSettings;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    new-instance v0, Lcom/android/phone/operator/jpn/kddi/RoamingSettings$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/phone/operator/jpn/kddi/RoamingSettings$1;-><init>(Lcom/android/phone/operator/jpn/kddi/RoamingSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/phone/operator/jpn/kddi/RoamingSettings;->mAirplainModeEnabledObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/operator/jpn/kddi/RoamingSettings;)Lcom/android/internal/telephony/Phone;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/operator/jpn/kddi/RoamingSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/operator/jpn/kddi/RoamingSettings;)Landroid/preference/ListPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/operator/jpn/kddi/RoamingSettings;->mRoamingNetworkMode:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/operator/jpn/kddi/RoamingSettings;)Landroid/preference/PreferenceScreen;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/operator/jpn/kddi/RoamingSettings;->mRoamingCarrierSelKey:Landroid/preference/PreferenceScreen;

    return-object v0
.end method

.method static synthetic access$400(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/android/phone/operator/jpn/kddi/RoamingSettings;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/phone/operator/jpn/kddi/RoamingSettings;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/phone/operator/jpn/kddi/RoamingSettings;)Landroid/content/SharedPreferences;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/operator/jpn/kddi/RoamingSettings;->prefs:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/android/phone/operator/jpn/kddi/RoamingSettings;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/4 v2, 0x4

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/phone/operator/jpn/kddi/RoamingSettings;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v2, v2}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    :cond_0
    const v2, 0x7f070038

    invoke-virtual {p0, v2}, Lcom/android/phone/operator/jpn/kddi/RoamingSettings;->addPreferencesFromResource(I)V

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/operator/jpn/kddi/RoamingSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    new-instance v2, Lcom/android/phone/operator/jpn/kddi/RoamingSettings$MyHandler;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/phone/operator/jpn/kddi/RoamingSettings$MyHandler;-><init>(Lcom/android/phone/operator/jpn/kddi/RoamingSettings;Lcom/android/phone/operator/jpn/kddi/RoamingSettings$1;)V

    iput-object v2, p0, Lcom/android/phone/operator/jpn/kddi/RoamingSettings;->mHandler:Lcom/android/phone/operator/jpn/kddi/RoamingSettings$MyHandler;

    invoke-virtual {p0}, Lcom/android/phone/operator/jpn/kddi/RoamingSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const-string v2, "world_system_select_key"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/ListPreference;

    iput-object v2, p0, Lcom/android/phone/operator/jpn/kddi/RoamingSettings;->mRoamingNetworkMode:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/android/phone/operator/jpn/kddi/RoamingSettings;->mRoamingNetworkMode:Landroid/preference/ListPreference;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/phone/operator/jpn/kddi/RoamingSettings;->mRoamingNetworkMode:Landroid/preference/ListPreference;

    const v3, 0x7f09008c

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setEntries(I)V

    iget-object v2, p0, Lcom/android/phone/operator/jpn/kddi/RoamingSettings;->mRoamingNetworkMode:Landroid/preference/ListPreference;

    const v3, 0x7f09008d

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setEntryValues(I)V

    :cond_1
    const-string v2, "button_carrier_sel_key"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceScreen;

    iput-object v2, p0, Lcom/android/phone/operator/jpn/kddi/RoamingSettings;->mRoamingCarrierSelKey:Landroid/preference/PreferenceScreen;

    iget-object v2, p0, Lcom/android/phone/operator/jpn/kddi/RoamingSettings;->mRoamingNetworkMode:Landroid/preference/ListPreference;

    invoke-virtual {v2, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    invoke-virtual {p0}, Lcom/android/phone/operator/jpn/kddi/RoamingSettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/operator/jpn/kddi/RoamingSettings;->prefs:Landroid/content/SharedPreferences;

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    :pswitch_0
    invoke-virtual {p0}, Lcom/android/phone/operator/jpn/kddi/RoamingSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/operator/jpn/kddi/RoamingSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->popBackStack()V

    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/operator/jpn/kddi/RoamingSettings;->finish()V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    iget-object v0, p0, Lcom/android/phone/operator/jpn/kddi/RoamingSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/operator/jpn/kddi/RoamingSettings;->mAirplainModeEnabledObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 8

    const/4 v7, 0x1

    iget-object v4, p0, Lcom/android/phone/operator/jpn/kddi/RoamingSettings;->mRoamingNetworkMode:Landroid/preference/ListPreference;

    if-ne p1, v4, :cond_1

    iget-object v4, p0, Lcom/android/phone/operator/jpn/kddi/RoamingSettings;->prefs:Landroid/content/SharedPreferences;

    const-string v5, "japan_system_select_key"

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onPreferenceChange: buttonNetworkMode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/phone/operator/jpn/kddi/RoamingSettings;->log(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/phone/operator/jpn/kddi/RoamingSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "preferred_network_mode"

    const/16 v6, 0x9

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onPreferenceChange: settingsNetworkMode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/phone/operator/jpn/kddi/RoamingSettings;->log(Ljava/lang/String;)V

    if-eq v0, v3, :cond_1

    move v1, v0

    iget-object v4, p0, Lcom/android/phone/operator/jpn/kddi/RoamingSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "preferred_network_mode"

    invoke-static {v4, v5, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v4, "preferred_change_by_mobile_data_exceptional_case"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "persist.radio.setnwkmode"

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v4, p0, Lcom/android/phone/operator/jpn/kddi/RoamingSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v5, p0, Lcom/android/phone/operator/jpn/kddi/RoamingSettings;->mHandler:Lcom/android/phone/operator/jpn/kddi/RoamingSettings$MyHandler;

    invoke-virtual {v5, v7}, Lcom/android/phone/operator/jpn/kddi/RoamingSettings$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-interface {v4, v1, v5}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    :cond_1
    return v7
.end method

.method protected onResume()V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x1

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    invoke-virtual {p0}, Lcom/android/phone/operator/jpn/kddi/RoamingSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    iget-object v2, p0, Lcom/android/phone/operator/jpn/kddi/RoamingSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "preferred_network_mode"

    const/16 v4, 0x9

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/android/phone/operator/jpn/kddi/RoamingSettings;->mRoamingNetworkMode:Landroid/preference/ListPreference;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/operator/jpn/kddi/RoamingSettings;->mRoamingNetworkMode:Landroid/preference/ListPreference;

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    :cond_0
    const-string v2, "airplain_mode_jpn"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/phone/operator/jpn/kddi/RoamingSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    invoke-static {v2, v3, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v5, :cond_3

    iget-object v2, p0, Lcom/android/phone/operator/jpn/kddi/RoamingSettings;->mRoamingNetworkMode:Landroid/preference/ListPreference;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/phone/operator/jpn/kddi/RoamingSettings;->mRoamingNetworkMode:Landroid/preference/ListPreference;

    invoke-virtual {v2, v6}, Landroid/preference/ListPreference;->setEnabled(Z)V

    :cond_1
    iget-object v2, p0, Lcom/android/phone/operator/jpn/kddi/RoamingSettings;->mRoamingCarrierSelKey:Landroid/preference/PreferenceScreen;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/phone/operator/jpn/kddi/RoamingSettings;->mRoamingCarrierSelKey:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v6}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/android/phone/operator/jpn/kddi/RoamingSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v3, p0, Lcom/android/phone/operator/jpn/kddi/RoamingSettings;->mHandler:Lcom/android/phone/operator/jpn/kddi/RoamingSettings$MyHandler;

    invoke-virtual {v3, v6}, Lcom/android/phone/operator/jpn/kddi/RoamingSettings$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/Phone;->getPreferredNetworkType(Landroid/os/Message;)V

    iget-object v2, p0, Lcom/android/phone/operator/jpn/kddi/RoamingSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/operator/jpn/kddi/RoamingSettings;->mAirplainModeEnabledObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3, v5, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void

    :cond_3
    iget-object v2, p0, Lcom/android/phone/operator/jpn/kddi/RoamingSettings;->mRoamingNetworkMode:Landroid/preference/ListPreference;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/phone/operator/jpn/kddi/RoamingSettings;->mRoamingNetworkMode:Landroid/preference/ListPreference;

    invoke-virtual {v2, v5}, Landroid/preference/ListPreference;->setEnabled(Z)V

    :cond_4
    iget-object v2, p0, Lcom/android/phone/operator/jpn/kddi/RoamingSettings;->mRoamingCarrierSelKey:Landroid/preference/PreferenceScreen;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/phone/operator/jpn/kddi/RoamingSettings;->mRoamingCarrierSelKey:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v5}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto :goto_0
.end method
