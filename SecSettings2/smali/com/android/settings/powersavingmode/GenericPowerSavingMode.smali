.class public Lcom/android/settings/powersavingmode/GenericPowerSavingMode;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "GenericPowerSavingMode.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/search/Indexable;
.implements Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field public entry:[Ljava/lang/String;

.field public entryValue:[Ljava/lang/CharSequence;

.field private mContext:Landroid/content/Context;

.field private mCreated:Z

.field private mDescriptionPreference:Landroid/preference/Preference;

.field private mLowPowerModeObserver:Landroid/database/ContentObserver;

.field private mPolicyManager:Landroid/net/NetworkPolicyManager;

.field private mSwitchBar:Lcom/android/settings/widget/SwitchBar;

.field private mTurnOnAutomatically:Lcom/android/settings/SettingsListPreference;

.field private mTurnOnAutomatically_tablet:Lcom/android/settings/notification/DropDownPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/powersavingmode/GenericPowerSavingMode$4;

    invoke-direct {v0}, Lcom/android/settings/powersavingmode/GenericPowerSavingMode$4;-><init>()V

    sput-object v0, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    new-instance v0, Lcom/android/settings/powersavingmode/GenericPowerSavingMode$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/powersavingmode/GenericPowerSavingMode$1;-><init>(Lcom/android/settings/powersavingmode/GenericPowerSavingMode;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->mLowPowerModeObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/powersavingmode/GenericPowerSavingMode;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/powersavingmode/GenericPowerSavingMode;)Lcom/android/settings/widget/SwitchBar;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/powersavingmode/GenericPowerSavingMode;)Lcom/android/settings/notification/DropDownPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->mTurnOnAutomatically_tablet:Lcom/android/settings/notification/DropDownPreference;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/powersavingmode/GenericPowerSavingMode;)Lcom/android/settings/SettingsListPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->mTurnOnAutomatically:Lcom/android/settings/SettingsListPreference;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/powersavingmode/GenericPowerSavingMode;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public initEntry()V
    .locals 9

    const/4 v8, 0x0

    iget-object v4, p0, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->mTurnOnAutomatically_tablet:Lcom/android/settings/notification/DropDownPreference;

    invoke-virtual {v4}, Lcom/android/settings/notification/DropDownPreference;->clearItems()V

    iget-object v4, p0, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->mTurnOnAutomatically:Lcom/android/settings/SettingsListPreference;

    invoke-virtual {v4}, Lcom/android/settings/SettingsListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->entryValue:[Ljava/lang/CharSequence;

    iget-object v4, p0, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->entryValue:[Ljava/lang/CharSequence;

    array-length v4, v4

    new-array v4, v4, [Ljava/lang/String;

    iput-object v4, p0, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->entry:[Ljava/lang/String;

    const/4 v2, 0x0

    :goto_0
    iget-object v4, p0, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->entryValue:[Ljava/lang/CharSequence;

    array-length v4, v4

    if-ge v2, v4, :cond_2

    iget-object v4, p0, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->entryValue:[Ljava/lang/CharSequence;

    aget-object v4, v4, v2

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\uff05"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    new-instance v5, Ljava/util/Locale;

    const-string v6, "ar"

    const-string v7, "AE"

    invoke-direct {v5, v6, v7}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v0}, Lcom/android/settings/Utils;->formatPercentage(I)Ljava/lang/String;

    move-result-object v3

    :cond_0
    if-nez v0, :cond_1

    iget-object v4, p0, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->entry:[Ljava/lang/String;

    const v5, 0x7f0a11ea

    invoke-virtual {p0, v5}, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    :goto_1
    iget-object v4, p0, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->mTurnOnAutomatically_tablet:Lcom/android/settings/notification/DropDownPreference;

    iget-object v5, p0, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->entry:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/settings/notification/DropDownPreference;->addItem(Ljava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->entry:[Ljava/lang/String;

    const v5, 0x7f0a11eb

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v3, v6, v8

    invoke-virtual {p0, v5, v6}, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    goto :goto_1

    :cond_2
    iget-object v4, p0, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->mTurnOnAutomatically_tablet:Lcom/android/settings/notification/DropDownPreference;

    new-instance v5, Lcom/android/settings/powersavingmode/GenericPowerSavingMode$3;

    invoke-direct {v5, p0}, Lcom/android/settings/powersavingmode/GenericPowerSavingMode$3;-><init>(Lcom/android/settings/powersavingmode/GenericPowerSavingMode;)V

    invoke-virtual {v4, v5}, Lcom/android/settings/notification/DropDownPreference;->setCallback(Lcom/android/settings/notification/DropDownPreference$Callback;)V

    iget-object v4, p0, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->mTurnOnAutomatically:Lcom/android/settings/SettingsListPreference;

    iget-object v5, p0, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->entry:[Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/android/settings/SettingsListPreference;->setEntries([Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "low_power_trigger_level"

    invoke-static {v4, v5, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iget-object v4, p0, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->mTurnOnAutomatically:Lcom/android/settings/SettingsListPreference;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/settings/SettingsListPreference;->setValue(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->mTurnOnAutomatically:Lcom/android/settings/SettingsListPreference;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/settings/SettingsListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    const-string v4, "GenericPowerSavingMode"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setSummary() "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->entry:[Ljava/lang/String;

    aget-object v6, v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->mTurnOnAutomatically_tablet:Lcom/android/settings/notification/DropDownPreference;

    iget-object v5, p0, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->entry:[Ljava/lang/String;

    aget-object v5, v5, v0

    invoke-virtual {v4, v5}, Lcom/android/settings/notification/DropDownPreference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_2
    return-void

    :cond_3
    iget-object v4, p0, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->mTurnOnAutomatically:Lcom/android/settings/SettingsListPreference;

    iget-object v5, p0, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->entry:[Ljava/lang/String;

    aget-object v5, v5, v0

    invoke-virtual {v4, v5}, Lcom/android/settings/SettingsListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method public initPreference()V
    .locals 2

    const-string v0, "turn_on_automatically"

    invoke-virtual {p0, v0}, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsListPreference;

    iput-object v0, p0, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->mTurnOnAutomatically:Lcom/android/settings/SettingsListPreference;

    const-string v0, "turn_on_automatically_tablet"

    invoke-virtual {p0, v0}, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/notification/DropDownPreference;

    iput-object v0, p0, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->mTurnOnAutomatically_tablet:Lcom/android/settings/notification/DropDownPreference;

    iget-object v0, p0, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->mDescriptionPreference:Landroid/preference/Preference;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/settings/powersavingmode/GenericPowerSavingMode$2;

    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/settings/powersavingmode/GenericPowerSavingMode$2;-><init>(Lcom/android/settings/powersavingmode/GenericPowerSavingMode;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->mDescriptionPreference:Landroid/preference/Preference;

    iget-object v0, p0, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->mDescriptionPreference:Landroid/preference/Preference;

    const v1, 0x7f04014b

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setLayoutResource(I)V

    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->mDescriptionPreference:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->mTurnOnAutomatically:Lcom/android/settings/SettingsListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    iget-object v0, p0, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->mTurnOnAutomatically_tablet:Lcom/android/settings/notification/DropDownPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings/notification/DropDownPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->mTurnOnAutomatically_tablet:Lcom/android/settings/notification/DropDownPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    iget-object v0, p0, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->mTurnOnAutomatically:Lcom/android/settings/SettingsListPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings/SettingsListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    iget-boolean v0, p0, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->mCreated:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->mCreated:Z

    const-string v0, "GenericPowerSavingMode"

    const-string v1, "onActivityCreated() "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/settings/SettingsActivity;

    invoke-virtual {v0}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iget-object v0, p0, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->show()V

    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isFolderModel(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->requestFocus()Z

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f070048

    invoke-virtual {p0, v0}, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->initPreference()V

    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->initEntry()V

    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/net/NetworkPolicyManager;->from(Landroid/content/Context;)Landroid/net/NetworkPolicyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    return-void
.end method

.method public onDestroy()V
    .locals 2

    const-string v0, "GenericPowerSavingMode"

    const-string v1, "onDestroy() "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    return-void
.end method

.method public onDestroyView()V
    .locals 2

    const-string v0, "GenericPowerSavingMode"

    const-string v1, "onDestroyView() "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroyView()V

    iget-object v0, p0, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->hide()V

    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->finish()V

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

    const-string v1, "GenericPowerSavingMode"

    const-string v2, "onPause() "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "low_power_trigger_level"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->mTurnOnAutomatically_tablet:Lcom/android/settings/notification/DropDownPreference;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/notification/DropDownPreference;->setSelectedValue(Ljava/lang/Object;)V

    :cond_0
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    iget-object v1, p0, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, p0}, Lcom/android/settings/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->mLowPowerModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4

    iget-object v1, p0, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->mTurnOnAutomatically:Lcom/android/settings/SettingsListPreference;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "low_power_trigger_level"

    move-object v1, p2

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v2, p0, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->mTurnOnAutomatically:Lcom/android/settings/SettingsListPreference;

    move-object v1, p2

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Lcom/android/settings/SettingsListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    const-string v1, "GenericPowerSavingMode"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setSummary() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->entry:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->mTurnOnAutomatically:Lcom/android/settings/SettingsListPreference;

    iget-object v2, p0, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->entry:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Lcom/android/settings/SettingsListPreference;->setSummary(Ljava/lang/CharSequence;)V

    const-string v2, "GenericPowerSavingMode"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onChange() "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v1, p2

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v1

    const-string v2, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "com.android.settings"

    const-string v3, "PSMA"

    check-cast p2, Ljava/lang/String;

    invoke-static {v1, v2, v3, p2}, Lcom/android/settings/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onResume()V
    .locals 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v4, "GenericPowerSavingMode"

    const-string v5, "onResume() "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "low_power"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_1

    move v1, v2

    :goto_0
    iget-object v4, p0, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v4, v1}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    iget-object v4, p0, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v4, p0}, Lcom/android/settings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    :cond_0
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->mTurnOnAutomatically_tablet:Lcom/android/settings/notification/DropDownPreference;

    invoke-virtual {v4, v1}, Lcom/android/settings/notification/DropDownPreference;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "low_power_trigger_level"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v3, p0, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->mTurnOnAutomatically_tablet:Lcom/android/settings/notification/DropDownPreference;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/settings/notification/DropDownPreference;->setSelectedValue(Ljava/lang/Object;)V

    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "low_power"

    invoke-static {v4}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->mLowPowerModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v4, v2, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void

    :cond_1
    move v1, v3

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->mTurnOnAutomatically:Lcom/android/settings/SettingsListPreference;

    invoke-virtual {v3, v1}, Lcom/android/settings/SettingsListPreference;->setEnabled(Z)V

    goto :goto_1
.end method

.method public onStop()V
    .locals 2

    const-string v0, "GenericPowerSavingMode"

    const-string v1, "onStop() "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStop()V

    return-void
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 4

    const-string v1, "GenericPowerSavingMode"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSwitchChanged() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->mTurnOnAutomatically_tablet:Lcom/android/settings/notification/DropDownPreference;

    invoke-virtual {v1, p2}, Lcom/android/settings/notification/DropDownPreference;->setEnabled(Z)V

    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "low_power"

    if-eqz p2, :cond_2

    const/4 v1, 0x1

    :goto_1
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    if-nez p2, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.settings.POWERSAVINGMODE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/settings/powersavingmode/GenericPowerSavingMode;->mTurnOnAutomatically:Lcom/android/settings/SettingsListPreference;

    invoke-virtual {v1, p2}, Lcom/android/settings/SettingsListPreference;->setEnabled(Z)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method
