.class public Lcom/android/settings/nfc/NfcOsaifukeitaiSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "NfcOsaifukeitaiSettings.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private final carrier:Ljava/lang/String;

.field private mABeam:Landroid/preference/PreferenceScreen;

.field private mCashbee:Landroid/preference/PreferenceScreen;

.field private mContext:Landroid/content/Context;

.field private mDcmPaymentSettings:Landroid/preference/PreferenceScreen;

.field private mGlobalPaymentSettings:Landroid/preference/PreferenceScreen;

.field private mLockNumInit:Landroid/preference/PreferenceScreen;

.field private mLockNumchg:Landroid/preference/PreferenceScreen;

.field private mNfcOsaifuSettingsData:Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsData;

.field private mNfcRemotelock:Landroid/preference/PreferenceScreen;

.field private mNfcTypeSettings:Landroid/preference/PreferenceScreen;

.field private mNfclock:Landroid/preference/PreferenceScreen;

.field private mRWp2p:Landroid/preference/PreferenceScreen;

.field private mRoot:Landroid/preference/PreferenceScreen;

.field private mSetLayout:Z

.field myNfcOsaifukeitaiSettings:Lcom/android/settings/nfc/NfcOsaifukeitaiSettings;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettings$1;

    invoke-direct {v0}, Lcom/android/settings/nfc/NfcOsaifukeitaiSettings$1;-><init>()V

    sput-object v0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    iput-object v1, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettings;->myNfcOsaifukeitaiSettings:Lcom/android/settings/nfc/NfcOsaifukeitaiSettings;

    const-string v0, "ro.csc.sales_code"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettings;->carrier:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettings;->mNfclock:Landroid/preference/PreferenceScreen;

    iput-object v1, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettings;->mRWp2p:Landroid/preference/PreferenceScreen;

    iput-object v1, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettings;->mABeam:Landroid/preference/PreferenceScreen;

    iput-object v1, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettings;->mNfcTypeSettings:Landroid/preference/PreferenceScreen;

    iput-object v1, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettings;->mDcmPaymentSettings:Landroid/preference/PreferenceScreen;

    iput-object v1, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettings;->mCashbee:Landroid/preference/PreferenceScreen;

    iput-object v1, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettings;->mLockNumchg:Landroid/preference/PreferenceScreen;

    iput-object v1, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettings;->mLockNumInit:Landroid/preference/PreferenceScreen;

    iput-object v1, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettings;->mGlobalPaymentSettings:Landroid/preference/PreferenceScreen;

    iput-object v1, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettings;->mNfcRemotelock:Landroid/preference/PreferenceScreen;

    iput-object v1, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettings;->mRoot:Landroid/preference/PreferenceScreen;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettings;->mSetLayout:Z

    return-void
.end method


# virtual methods
.method public isPackageExists(Ljava/lang/String;)Z
    .locals 5

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/nfc/NfcOsaifukeitaiSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget v3, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v4, 0x2

    if-lt v3, v4, :cond_0

    const/4 v2, 0x1

    :cond_0
    :goto_0
    return v2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public onCreate(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10

    const/4 v9, 0x1

    const-string v0, "[NfcOsaifukeitaiSettings]"

    const-string v1, "[S] onCreate"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/nfc/NfcOsaifukeitaiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettings;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsData;

    iget-object v1, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettings;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsData;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettings;->mNfcOsaifuSettingsData:Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsData;

    invoke-virtual {p0}, Lcom/android/settings/nfc/NfcOsaifukeitaiSettings;->supportNFC()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "[NfcOsaifukeitaiSettings]"

    const-string v1, "[S] nfc not support"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    const v0, 0x7f070066

    invoke-virtual {p0, v0}, Lcom/android/settings/nfc/NfcOsaifukeitaiSettings;->addPreferencesFromResource(I)V

    const-string v0, "toggle_osaifukeitai_lock"

    invoke-virtual {p0, v0}, Lcom/android/settings/nfc/NfcOsaifukeitaiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettings;->mNfclock:Landroid/preference/PreferenceScreen;

    const-string v0, "toggle_nfc"

    invoke-virtual {p0, v0}, Lcom/android/settings/nfc/NfcOsaifukeitaiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettings;->mRWp2p:Landroid/preference/PreferenceScreen;

    const-string v0, "toggle_android_beam"

    invoke-virtual {p0, v0}, Lcom/android/settings/nfc/NfcOsaifukeitaiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettings;->mABeam:Landroid/preference/PreferenceScreen;

    const-string v0, "nfc_type_settings_key"

    invoke-virtual {p0, v0}, Lcom/android/settings/nfc/NfcOsaifukeitaiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettings;->mNfcTypeSettings:Landroid/preference/PreferenceScreen;

    const-string v0, "nfc_payment_settings"

    invoke-virtual {p0, v0}, Lcom/android/settings/nfc/NfcOsaifukeitaiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettings;->mDcmPaymentSettings:Landroid/preference/PreferenceScreen;

    const-string v0, "toggle_nfc_mobile_cashbee"

    invoke-virtual {p0, v0}, Lcom/android/settings/nfc/NfcOsaifukeitaiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettings;->mCashbee:Landroid/preference/PreferenceScreen;

    const-string v0, "toggle_lock_number_change"

    invoke-virtual {p0, v0}, Lcom/android/settings/nfc/NfcOsaifukeitaiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettings;->mLockNumchg:Landroid/preference/PreferenceScreen;

    const-string v0, "toggle_lock_number_initialization"

    invoke-virtual {p0, v0}, Lcom/android/settings/nfc/NfcOsaifukeitaiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettings;->mLockNumInit:Landroid/preference/PreferenceScreen;

    const-string v0, "nfc_payment_settings"

    invoke-virtual {p0, v0}, Lcom/android/settings/nfc/NfcOsaifukeitaiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettings;->mGlobalPaymentSettings:Landroid/preference/PreferenceScreen;

    const-string v0, "toggle_osaifukeitai_remotelock"

    invoke-virtual {p0, v0}, Lcom/android/settings/nfc/NfcOsaifukeitaiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettings;->mNfcRemotelock:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/nfc/NfcOsaifukeitaiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettings;->mRoot:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettings;->carrier:Ljava/lang/String;

    const/4 v0, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_1
    :goto_1
    packed-switch v0, :pswitch_data_0

    :goto_2
    iget-object v0, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettings;->myNfcOsaifukeitaiSettings:Lcom/android/settings/nfc/NfcOsaifukeitaiSettings;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettings;->myNfcOsaifukeitaiSettings:Lcom/android/settings/nfc/NfcOsaifukeitaiSettings;

    iget-object v1, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/settings/nfc/NfcOsaifukeitaiSettings;->onCreate(Landroid/content/Context;)V

    :cond_2
    invoke-virtual {p0, v9}, Lcom/android/settings/nfc/NfcOsaifukeitaiSettings;->setHasOptionsMenu(Z)V

    const-string v0, "[NfcOsaifukeitaiSettings]"

    const-string v1, "[E] onCreate"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :sswitch_0
    const-string v2, "DCM"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_1
    const-string v2, "KDI"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v0, v9

    goto :goto_1

    :sswitch_2
    const-string v2, "SBM"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x2

    goto :goto_1

    :pswitch_0
    new-instance v0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsDCM;

    iget-object v1, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettings;->mNfclock:Landroid/preference/PreferenceScreen;

    iget-object v2, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettings;->mRWp2p:Landroid/preference/PreferenceScreen;

    iget-object v3, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettings;->mABeam:Landroid/preference/PreferenceScreen;

    iget-object v4, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettings;->mNfcTypeSettings:Landroid/preference/PreferenceScreen;

    iget-object v5, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettings;->mDcmPaymentSettings:Landroid/preference/PreferenceScreen;

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsDCM;-><init>(Landroid/preference/PreferenceScreen;Landroid/preference/PreferenceScreen;Landroid/preference/PreferenceScreen;Landroid/preference/PreferenceScreen;Landroid/preference/PreferenceScreen;)V

    iput-object v0, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettings;->myNfcOsaifukeitaiSettings:Lcom/android/settings/nfc/NfcOsaifukeitaiSettings;

    goto :goto_2

    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettings;->mNfcOsaifuSettingsData:Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsData;

    invoke-virtual {v0}, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsData;->getMobileCashbee_DisplayJudging()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/nfc/NfcOsaifukeitaiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettings;->mCashbee:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_3
    new-instance v0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;

    iget-object v1, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettings;->mNfclock:Landroid/preference/PreferenceScreen;

    iget-object v2, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettings;->mRWp2p:Landroid/preference/PreferenceScreen;

    iget-object v3, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettings;->mABeam:Landroid/preference/PreferenceScreen;

    iget-object v4, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettings;->mCashbee:Landroid/preference/PreferenceScreen;

    iget-object v5, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettings;->mLockNumchg:Landroid/preference/PreferenceScreen;

    iget-object v6, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettings;->mLockNumInit:Landroid/preference/PreferenceScreen;

    iget-object v7, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettings;->mGlobalPaymentSettings:Landroid/preference/PreferenceScreen;

    iget-object v8, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettings;->mRoot:Landroid/preference/PreferenceScreen;

    invoke-direct/range {v0 .. v8}, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;-><init>(Landroid/preference/PreferenceScreen;Landroid/preference/PreferenceScreen;Landroid/preference/PreferenceScreen;Landroid/preference/PreferenceScreen;Landroid/preference/PreferenceScreen;Landroid/preference/PreferenceScreen;Landroid/preference/PreferenceScreen;Landroid/preference/PreferenceScreen;)V

    iput-object v0, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettings;->myNfcOsaifukeitaiSettings:Lcom/android/settings/nfc/NfcOsaifukeitaiSettings;

    goto :goto_2

    :pswitch_2
    new-instance v0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsSBM;

    iget-object v1, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettings;->mNfclock:Landroid/preference/PreferenceScreen;

    iget-object v2, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettings;->mRWp2p:Landroid/preference/PreferenceScreen;

    iget-object v3, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettings;->mABeam:Landroid/preference/PreferenceScreen;

    iget-object v4, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettings;->mNfcRemotelock:Landroid/preference/PreferenceScreen;

    iget-object v5, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettings;->mGlobalPaymentSettings:Landroid/preference/PreferenceScreen;

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsSBM;-><init>(Landroid/preference/PreferenceScreen;Landroid/preference/PreferenceScreen;Landroid/preference/PreferenceScreen;Landroid/preference/PreferenceScreen;Landroid/preference/PreferenceScreen;)V

    iput-object v0, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettings;->myNfcOsaifukeitaiSettings:Lcom/android/settings/nfc/NfcOsaifukeitaiSettings;

    goto/16 :goto_2

    :sswitch_data_0
    .sparse-switch
        0x107ae -> :sswitch_0
        0x12210 -> :sswitch_1
        0x13fde -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    const-string v0, "com.samsung.helphub"

    invoke-virtual {p0, v0}, Lcom/android/settings/nfc/NfcOsaifukeitaiSettings;->isPackageExists(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    const v1, 0x7f0a0d3e

    invoke-interface {p1, v2, v2, v0, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0200a4

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 8

    const/4 v4, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v4

    :cond_0
    :goto_0
    return v4

    :pswitch_0
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/nfc/NfcOsaifukeitaiSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const-string v6, "com.samsung.helphub"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget v5, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    rem-int/lit8 v3, v5, 0xa

    if-eq v3, v4, :cond_0

    const/4 v5, 0x2

    if-ne v3, v5, :cond_2

    invoke-static {}, Lcom/android/settings/Utils;->isHelpHubDownloadableSupported()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/nfc/NfcOsaifukeitaiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-string v6, "com.samsung.helpplugin"

    invoke-static {v5, v6}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "default"

    invoke-virtual {p0}, Lcom/android/settings/nfc/NfcOsaifukeitaiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/settings/Utils;->requestDownloadingResource(Ljava/lang/String;Landroid/content/Context;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    :cond_1
    :try_start_1
    new-instance v2, Landroid/content/Intent;

    const-string v5, "com.samsung.helphub.HELP"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v5, "helphub:section"

    const-string v6, "nfc"

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v2}, Lcom/android/settings/nfc/NfcOsaifukeitaiSettings;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_2
    const/4 v5, 0x3

    if-ne v3, v5, :cond_0

    new-instance v2, Landroid/content/Intent;

    const-string v5, "com.samsung.helphub.HELP"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v5, "helphub:appid"

    const-string v6, "nfc"

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v2}, Lcom/android/settings/nfc/NfcOsaifukeitaiSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    const-string v0, "[NfcOsaifukeitaiSettings]"

    const-string v1, "[S] onPause"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    iget-object v0, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettings;->myNfcOsaifukeitaiSettings:Lcom/android/settings/nfc/NfcOsaifukeitaiSettings;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettings;->myNfcOsaifukeitaiSettings:Lcom/android/settings/nfc/NfcOsaifukeitaiSettings;

    invoke-virtual {p0}, Lcom/android/settings/nfc/NfcOsaifukeitaiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/nfc/NfcOsaifukeitaiSettings;->onPause(Landroid/content/Context;)V

    :cond_0
    const-string v0, "[NfcOsaifukeitaiSettings]"

    const-string v1, "[E] onPause"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onPause(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 2

    const-string v0, "[NfcOsaifukeitaiSettings]"

    const-string v1, "[S] resume"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    iget-object v0, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettings;->myNfcOsaifukeitaiSettings:Lcom/android/settings/nfc/NfcOsaifukeitaiSettings;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettings;->myNfcOsaifukeitaiSettings:Lcom/android/settings/nfc/NfcOsaifukeitaiSettings;

    invoke-virtual {p0}, Lcom/android/settings/nfc/NfcOsaifukeitaiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/nfc/NfcOsaifukeitaiSettings;->onResume(Landroid/content/Context;)V

    const-string v0, "[NfcOsaifukeitaiSettings]"

    const-string v1, "[E] resume"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onResume(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public supportNFC()Z
    .locals 4

    const/4 v3, 0x5

    const/4 v0, 0x0

    const-string v1, "ro.product.name"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "nobleltedcm"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "ro.revision"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-lt v1, v3, :cond_2

    :cond_0
    const-string v1, "ro.product.name"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "nobleltekdi"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "ro.revision"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-lt v1, v3, :cond_2

    :cond_1
    const-string v1, "ro.product.name"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "nobleltesbm"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "ro.revision"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x3

    if-ge v1, v2, :cond_3

    :cond_2
    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method
