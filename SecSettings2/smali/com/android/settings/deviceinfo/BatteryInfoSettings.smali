.class public Lcom/android/settings/deviceinfo/BatteryInfoSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "BatteryInfoSettings.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private mBatteryCapacity:Landroid/preference/Preference;

.field private mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

.field private mBatteryLevel:Landroid/preference/Preference;

.field private mBatteryLife:Landroid/preference/Preference;

.field private mBatteryStatus:Landroid/preference/Preference;

.field private mFccId:Landroid/preference/Preference;

.field private mRated:Landroid/preference/Preference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/deviceinfo/BatteryInfoSettings$2;

    invoke-direct {v0}, Lcom/android/settings/deviceinfo/BatteryInfoSettings$2;-><init>()V

    sput-object v0, Lcom/android/settings/deviceinfo/BatteryInfoSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    new-instance v0, Lcom/android/settings/deviceinfo/BatteryInfoSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/BatteryInfoSettings$1;-><init>(Lcom/android/settings/deviceinfo/BatteryInfoSettings;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/BatteryInfoSettings;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/deviceinfo/BatteryInfoSettings;)Landroid/preference/Preference;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/deviceinfo/BatteryInfoSettings;->mBatteryLevel:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/deviceinfo/BatteryInfoSettings;)Landroid/preference/Preference;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/deviceinfo/BatteryInfoSettings;->mBatteryStatus:Landroid/preference/Preference;

    return-object v0
.end method

.method private getBatteryLife()I
    .locals 7

    const-string v0, "/sys/class/power_supply/battery/fg_asoc"

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    new-instance v5, Ljava/io/FileInputStream;

    const-string v6, "/sys/class/power_supply/battery/fg_asoc"

    invoke-direct {v5, v6}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v1

    if-eqz v3, :cond_0

    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    move-object v2, v3

    :cond_1
    :goto_0
    return v1

    :catch_0
    move-exception v4

    move-object v2, v3

    goto :goto_0

    :catch_1
    move-exception v4

    :goto_1
    if-eqz v2, :cond_1

    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    :catch_2
    move-exception v4

    goto :goto_0

    :catchall_0
    move-exception v4

    :goto_2
    if-eqz v2, :cond_2

    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    :cond_2
    :goto_3
    throw v4

    :catch_3
    move-exception v5

    goto :goto_3

    :catchall_1
    move-exception v4

    move-object v2, v3

    goto :goto_2

    :catch_4
    move-exception v4

    move-object v2, v3

    goto :goto_1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 9

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v5, 0x7f07001b

    invoke-virtual {p0, v5}, Lcom/android/settings/deviceinfo/BatteryInfoSettings;->addPreferencesFromResource(I)V

    const-string v5, "battery_level"

    invoke-virtual {p0, v5}, Lcom/android/settings/deviceinfo/BatteryInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/deviceinfo/BatteryInfoSettings;->mBatteryLevel:Landroid/preference/Preference;

    const-string v5, "battery_status"

    invoke-virtual {p0, v5}, Lcom/android/settings/deviceinfo/BatteryInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/deviceinfo/BatteryInfoSettings;->mBatteryStatus:Landroid/preference/Preference;

    const-string v5, "battery_life"

    invoke-virtual {p0, v5}, Lcom/android/settings/deviceinfo/BatteryInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/deviceinfo/BatteryInfoSettings;->mBatteryLife:Landroid/preference/Preference;

    invoke-direct {p0}, Lcom/android/settings/deviceinfo/BatteryInfoSettings;->getBatteryLife()I

    move-result v1

    const-string v5, "BatteryInfoSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "battery life : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    if-lez v1, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isJapanModel()Z

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    const-string v5, "battery_life"

    invoke-virtual {p0, v5}, Lcom/android/settings/deviceinfo/BatteryInfoSettings;->removePreference(Ljava/lang/String;)V

    :goto_0
    const-string v5, "fcc_id"

    invoke-virtual {p0, v5}, Lcom/android/settings/deviceinfo/BatteryInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/deviceinfo/BatteryInfoSettings;->mFccId:Landroid/preference/Preference;

    const-string v5, "rated_value"

    invoke-virtual {p0, v5}, Lcom/android/settings/deviceinfo/BatteryInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/deviceinfo/BatteryInfoSettings;->mRated:Landroid/preference/Preference;

    const-string v5, "battery_capacity"

    invoke-virtual {p0, v5}, Lcom/android/settings/deviceinfo/BatteryInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/deviceinfo/BatteryInfoSettings;->mBatteryCapacity:Landroid/preference/Preference;

    const-string v2, "A3LSMG928T"

    const-string v4, "DC 9 V; 1.67 A"

    const-string v0, "3000 mAh"

    const-string v5, ""

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    const-string v5, "fcc_id"

    invoke-virtual {p0, v5}, Lcom/android/settings/deviceinfo/BatteryInfoSettings;->removePreference(Ljava/lang/String;)V

    :goto_1
    const-string v5, ""

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    const-string v5, "rated_value"

    invoke-virtual {p0, v5}, Lcom/android/settings/deviceinfo/BatteryInfoSettings;->removePreference(Ljava/lang/String;)V

    :goto_2
    const-string v5, ""

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    const-string v5, "battery_capacity"

    invoke-virtual {p0, v5}, Lcom/android/settings/deviceinfo/BatteryInfoSettings;->removePreference(Ljava/lang/String;)V

    :goto_3
    return-void

    :cond_1
    const/16 v5, 0x50

    if-lt v1, v5, :cond_2

    iget-object v5, p0, Lcom/android/settings/deviceinfo/BatteryInfoSettings;->mBatteryLife:Landroid/preference/Preference;

    const v6, 0x7f0a149b

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    :cond_2
    const/16 v5, 0x32

    if-lt v1, v5, :cond_3

    iget-object v5, p0, Lcom/android/settings/deviceinfo/BatteryInfoSettings;->mBatteryLife:Landroid/preference/Preference;

    const v6, 0x7f0a149c

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    :cond_3
    iget-object v5, p0, Lcom/android/settings/deviceinfo/BatteryInfoSettings;->mBatteryLife:Landroid/preference/Preference;

    const v6, 0x7f0a149d

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/BatteryInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a14bc

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v2, v7, v8

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/android/settings/deviceinfo/BatteryInfoSettings;->mFccId:Landroid/preference/Preference;

    invoke-virtual {v5, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_5
    iget-object v5, p0, Lcom/android/settings/deviceinfo/BatteryInfoSettings;->mRated:Landroid/preference/Preference;

    invoke-virtual {v5, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_6
    iget-object v5, p0, Lcom/android/settings/deviceinfo/BatteryInfoSettings;->mBatteryCapacity:Landroid/preference/Preference;

    invoke-virtual {v5, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_3
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/BatteryInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/deviceinfo/BatteryInfoSettings;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onResume()V
    .locals 4

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/BatteryInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/deviceinfo/BatteryInfoSettings;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method
