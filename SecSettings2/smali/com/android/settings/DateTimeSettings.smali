.class public Lcom/android/settings/DateTimeSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "DateTimeSettings.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
.implements Lcom/android/settings/search/Indexable;
.implements Lcom/sec/android/touchwiz/app/TwDatePickerDialog$OnDateSetListener;
.implements Lcom/sec/android/touchwiz/app/TwTimePickerDialog$OnTimeSetListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/DateTimeSettings$SettingsObserver;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field private static resources:Landroid/content/res/Resources;


# instance fields
.field private category_international_roaming:Landroid/preference/PreferenceGroup;

.field private mAutoTimePref:Landroid/preference/SwitchPreference;

.field private mAutoTimeZonePref:Landroid/preference/SwitchPreference;

.field private mDatePref:Landroid/preference/Preference;

.field private mDualclock:Landroid/preference/PreferenceScreen;

.field private mDummyDate:Ljava/util/Calendar;

.field private mFirstId:I

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mSecondId:I

.field private mSettingsObserver:Lcom/android/settings/DateTimeSettings$SettingsObserver;

.field private mTime24Pref:Landroid/preference/Preference;

.field private mTimeDisplayScheme:Landroid/preference/Preference;

.field private mTimePref:Landroid/preference/Preference;

.field private mTimeZone:Landroid/preference/Preference;

.field private mTimeZoneRecommend:Landroid/preference/Preference;

.field private mTzHidden1:Z

.field private mTzHidden2:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/DateTimeSettings$2;

    invoke-direct {v0}, Lcom/android/settings/DateTimeSettings$2;-><init>()V

    sput-object v0, Lcom/android/settings/DateTimeSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    iput-boolean v0, p0, Lcom/android/settings/DateTimeSettings;->mTzHidden1:Z

    iput-boolean v0, p0, Lcom/android/settings/DateTimeSettings;->mTzHidden2:Z

    iput v0, p0, Lcom/android/settings/DateTimeSettings;->mFirstId:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/settings/DateTimeSettings;->mSecondId:I

    new-instance v0, Lcom/android/settings/DateTimeSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/DateTimeSettings$1;-><init>(Lcom/android/settings/DateTimeSettings;)V

    iput-object v0, p0, Lcom/android/settings/DateTimeSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/DateTimeSettings;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/settings/DateTimeSettings;->getAutoState(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/settings/DateTimeSettings;)Landroid/preference/SwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/DateTimeSettings;->mAutoTimePref:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/DateTimeSettings;)Landroid/preference/Preference;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/DateTimeSettings;->mTimePref:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/DateTimeSettings;)Landroid/preference/Preference;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/DateTimeSettings;->mDatePref:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/DateTimeSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/DateTimeSettings;->applyEDMDateTimeChangePolicy()V

    return-void
.end method

.method private applyEDMDateTimeChangePolicy()V
    .locals 12

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v7, "firstRun"

    invoke-virtual {v4, v7, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    if-ne v6, v8, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v7, "auto_time"

    invoke-direct {p0, v7}, Lcom/android/settings/DateTimeSettings;->getAutoState(Ljava/lang/String;)Z

    move-result v1

    const-string v7, "auto_time_zone"

    invoke-direct {p0, v7}, Lcom/android/settings/DateTimeSettings;->getAutoState(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const-string v10, "content://com.sec.knox.provider/DateTimePolicy"

    const-string v11, "isDateTimeChangeEnalbed"

    invoke-static {v7, v10, v11}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    const/4 v7, -0x1

    if-eq v5, v7, :cond_1

    if-ne v5, v8, :cond_2

    :cond_1
    move v3, v8

    :goto_1
    if-nez v3, :cond_3

    iget-object v7, p0, Lcom/android/settings/DateTimeSettings;->mTimePref:Landroid/preference/Preference;

    invoke-virtual {v7, v9}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v7, p0, Lcom/android/settings/DateTimeSettings;->mDatePref:Landroid/preference/Preference;

    invoke-virtual {v7, v9}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v7, p0, Lcom/android/settings/DateTimeSettings;->mTimeZone:Landroid/preference/Preference;

    invoke-virtual {v7, v9}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v7, p0, Lcom/android/settings/DateTimeSettings;->mAutoTimePref:Landroid/preference/SwitchPreference;

    invoke-virtual {v7, v9}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    iget-object v7, p0, Lcom/android/settings/DateTimeSettings;->mAutoTimeZonePref:Landroid/preference/SwitchPreference;

    invoke-virtual {v7, v9}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_0

    :cond_2
    move v3, v9

    goto :goto_1

    :cond_3
    const-string v7, "CTC"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    const/4 v7, 0x4

    if-lt v0, v7, :cond_4

    iget-object v7, p0, Lcom/android/settings/DateTimeSettings;->mAutoTimePref:Landroid/preference/SwitchPreference;

    invoke-virtual {v7, v9}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    iget-object v7, p0, Lcom/android/settings/DateTimeSettings;->mAutoTimeZonePref:Landroid/preference/SwitchPreference;

    invoke-virtual {v7, v9}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    iget-object v7, p0, Lcom/android/settings/DateTimeSettings;->mTimePref:Landroid/preference/Preference;

    invoke-virtual {v7, v9}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v7, p0, Lcom/android/settings/DateTimeSettings;->mDatePref:Landroid/preference/Preference;

    invoke-virtual {v7, v9}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v7, p0, Lcom/android/settings/DateTimeSettings;->mTimeZone:Landroid/preference/Preference;

    invoke-virtual {v7, v9}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    :cond_4
    iget-object v10, p0, Lcom/android/settings/DateTimeSettings;->mTimePref:Landroid/preference/Preference;

    if-nez v1, :cond_6

    move v7, v8

    :goto_2
    invoke-virtual {v10, v7}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v10, p0, Lcom/android/settings/DateTimeSettings;->mDatePref:Landroid/preference/Preference;

    if-nez v1, :cond_7

    move v7, v8

    :goto_3
    invoke-virtual {v10, v7}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v7, p0, Lcom/android/settings/DateTimeSettings;->mTimeZone:Landroid/preference/Preference;

    if-nez v2, :cond_5

    move v9, v8

    :cond_5
    invoke-virtual {v7, v9}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v7, p0, Lcom/android/settings/DateTimeSettings;->mAutoTimePref:Landroid/preference/SwitchPreference;

    invoke-virtual {v7, v8}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    iget-object v7, p0, Lcom/android/settings/DateTimeSettings;->mAutoTimeZonePref:Landroid/preference/SwitchPreference;

    invoke-virtual {v7, v8}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    goto/16 :goto_0

    :cond_6
    move v7, v9

    goto :goto_2

    :cond_7
    move v7, v9

    goto :goto_3

    :cond_8
    iget-object v10, p0, Lcom/android/settings/DateTimeSettings;->mTimePref:Landroid/preference/Preference;

    if-nez v1, :cond_a

    move v7, v8

    :goto_4
    invoke-virtual {v10, v7}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v10, p0, Lcom/android/settings/DateTimeSettings;->mDatePref:Landroid/preference/Preference;

    if-nez v1, :cond_b

    move v7, v8

    :goto_5
    invoke-virtual {v10, v7}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v7, p0, Lcom/android/settings/DateTimeSettings;->mTimeZone:Landroid/preference/Preference;

    if-nez v2, :cond_9

    move v9, v8

    :cond_9
    invoke-virtual {v7, v9}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v7, p0, Lcom/android/settings/DateTimeSettings;->mAutoTimePref:Landroid/preference/SwitchPreference;

    invoke-virtual {v7, v8}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    iget-object v7, p0, Lcom/android/settings/DateTimeSettings;->mAutoTimeZonePref:Landroid/preference/SwitchPreference;

    invoke-virtual {v7, v8}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    goto/16 :goto_0

    :cond_a
    move v7, v9

    goto :goto_4

    :cond_b
    move v7, v9

    goto :goto_5
.end method

.method private getAutoState(Ljava/lang/String;)Z
    .locals 3

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-lez v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    :goto_0
    return v1

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static getTimeZoneName(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const/4 v6, 0x3

    const/4 v5, 0x2

    :try_start_0
    sget-object v3, Lcom/android/settings/DateTimeSettings;->resources:Landroid/content/res/Resources;

    const v4, 0x7f0700a5

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v3

    if-ne v3, v5, :cond_0

    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->next()I

    :goto_0
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v3

    if-eq v3, v6, :cond_2

    :goto_1
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v3

    if-eq v3, v5, :cond_1

    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    :cond_1
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "timezone"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/content/res/XmlResourceParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->nextText()Ljava/lang/String;

    move-result-object p0

    :cond_2
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V

    :goto_2
    return-object p0

    :cond_3
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->next()I
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    :catch_0
    move-exception v1

    const-string v3, "DateTimeSettings"

    const-string v4, "Ill-formatted timezones.xml file"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_4
    :goto_3
    :try_start_1
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v3

    if-eq v3, v6, :cond_5

    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->next()I
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    const-string v3, "DateTimeSettings"

    const-string v4, "Unable to read timezones.xml file"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_5
    :try_start_2
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->next()I
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0
.end method

.method public static getTimeZoneText(Ljava/util/TimeZone;Z)Ljava/lang/String;
    .locals 10

    const/4 v3, 0x1

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v8, "ZZZZ"

    invoke-direct {v1, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    invoke-virtual {v1, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v8

    if-ne v8, v3, :cond_0

    :goto_0
    if-eqz v3, :cond_1

    sget-object v8, Landroid/text/TextDirectionHeuristics;->RTL:Landroid/text/TextDirectionHeuristic;

    :goto_1
    invoke-virtual {v0, v2, v8}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;Landroid/text/TextDirectionHeuristic;)Ljava/lang/String;

    move-result-object v2

    if-nez p1, :cond_2

    :goto_2
    return-object v2

    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    :cond_1
    sget-object v8, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    goto :goto_1

    :cond_2
    new-instance v6, Ljava/text/SimpleDateFormat;

    const-string v8, "zzzz"

    invoke-direct {v6, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p0}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    invoke-virtual {v6, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "GMT"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {p0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/settings/DateTimeSettings;->getTimeZoneName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    :cond_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2
.end method

.method private initUI()V
    .locals 12

    const v11, 0x7f0a1027

    const/4 v8, 0x1

    const/4 v9, 0x0

    const-string v7, "auto_time"

    invoke-direct {p0, v7}, Lcom/android/settings/DateTimeSettings;->getAutoState(Ljava/lang/String;)Z

    move-result v0

    const-string v7, "auto_time_zone"

    invoke-direct {p0, v7}, Lcom/android/settings/DateTimeSettings;->getAutoState(Ljava/lang/String;)Z

    move-result v1

    const-string v7, "auto_time"

    invoke-virtual {p0, v7}, Lcom/android/settings/DateTimeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/SwitchPreference;

    iput-object v7, p0, Lcom/android/settings/DateTimeSettings;->mAutoTimePref:Landroid/preference/SwitchPreference;

    const-string v7, "device_policy"

    invoke-virtual {p0, v7}, Lcom/android/settings/DateTimeSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v2}, Landroid/app/admin/DevicePolicyManager;->getAutoTimeRequired()Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/settings/DateTimeSettings;->mAutoTimePref:Landroid/preference/SwitchPreference;

    invoke-virtual {v7, v9}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v7, "firstRun"

    invoke-virtual {v3, v7, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/DateTimeSettings;->mDummyDate:Ljava/util/Calendar;

    iget-object v7, p0, Lcom/android/settings/DateTimeSettings;->mAutoTimePref:Landroid/preference/SwitchPreference;

    invoke-virtual {v7, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    const-string v7, "auto_zone"

    invoke-virtual {p0, v7}, Lcom/android/settings/DateTimeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/SwitchPreference;

    iput-object v7, p0, Lcom/android/settings/DateTimeSettings;->mAutoTimeZonePref:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    iget-object v10, p0, Lcom/android/settings/DateTimeSettings;->mAutoTimeZonePref:Landroid/preference/SwitchPreference;

    invoke-virtual {v7, v10}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v10, "auto_time_zone"

    invoke-static {v7, v10, v9}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/4 v1, 0x0

    :cond_1
    iget-object v7, p0, Lcom/android/settings/DateTimeSettings;->mAutoTimeZonePref:Landroid/preference/SwitchPreference;

    invoke-virtual {v7, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    const-string v7, "time"

    invoke-virtual {p0, v7}, Lcom/android/settings/DateTimeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/DateTimeSettings;->mTimePref:Landroid/preference/Preference;

    const-string v7, "24 hour"

    invoke-virtual {p0, v7}, Lcom/android/settings/DateTimeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/DateTimeSettings;->mTime24Pref:Landroid/preference/Preference;

    const-string v7, "timezone"

    invoke-virtual {p0, v7}, Lcom/android/settings/DateTimeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/DateTimeSettings;->mTimeZone:Landroid/preference/Preference;

    const-string v7, "date"

    invoke-virtual {p0, v7}, Lcom/android/settings/DateTimeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/DateTimeSettings;->mDatePref:Landroid/preference/Preference;

    const-string v7, "dualclock_settings"

    invoke-virtual {p0, v7}, Lcom/android/settings/DateTimeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/PreferenceScreen;

    iput-object v7, p0, Lcom/android/settings/DateTimeSettings;->mDualclock:Landroid/preference/PreferenceScreen;

    iget-object v7, p0, Lcom/android/settings/DateTimeSettings;->mDualclock:Landroid/preference/PreferenceScreen;

    if-eqz v7, :cond_2

    invoke-static {}, Lcom/android/settings/Utils;->isDomesticSKTModel()Z

    move-result v7

    if-nez v7, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    iget-object v10, p0, Lcom/android/settings/DateTimeSettings;->mDualclock:Landroid/preference/PreferenceScreen;

    invoke-virtual {v7, v10}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_2
    const-string v7, "oversea"

    const-string v10, "ril.currentplmn"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    invoke-static {}, Lcom/android/settings/Utils;->isDomesticSKTModel()Z

    move-result v7

    if-eqz v7, :cond_7

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, " "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0a11ab

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/DateTimeSettings;->mDualclock:Landroid/preference/PreferenceScreen;

    invoke-virtual {v7, v6}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v7, p0, Lcom/android/settings/DateTimeSettings;->mDualclock:Landroid/preference/PreferenceScreen;

    invoke-virtual {v7, v9}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    :goto_0
    if-eqz v4, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    iget-object v10, p0, Lcom/android/settings/DateTimeSettings;->mTime24Pref:Landroid/preference/Preference;

    invoke-virtual {v7, v10}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_3
    iget-object v10, p0, Lcom/android/settings/DateTimeSettings;->mTimePref:Landroid/preference/Preference;

    if-nez v0, :cond_8

    move v7, v8

    :goto_1
    invoke-virtual {v10, v7}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v10, p0, Lcom/android/settings/DateTimeSettings;->mDatePref:Landroid/preference/Preference;

    if-nez v0, :cond_9

    move v7, v8

    :goto_2
    invoke-virtual {v10, v7}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v10, p0, Lcom/android/settings/DateTimeSettings;->mTimeZone:Landroid/preference/Preference;

    if-nez v1, :cond_a

    move v7, v8

    :goto_3
    invoke-virtual {v10, v7}, Landroid/preference/Preference;->setEnabled(Z)V

    invoke-direct {p0}, Lcom/android/settings/DateTimeSettings;->applyEDMDateTimeChangePolicy()V

    const-string v7, "category_international_roaming_time_settings"

    invoke-virtual {p0, v7}, Lcom/android/settings/DateTimeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/PreferenceGroup;

    iput-object v7, p0, Lcom/android/settings/DateTimeSettings;->category_international_roaming:Landroid/preference/PreferenceGroup;

    const-string v7, "time_zone_recommend"

    invoke-virtual {p0, v7}, Lcom/android/settings/DateTimeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/PreferenceScreen;

    iput-object v7, p0, Lcom/android/settings/DateTimeSettings;->mTimeZoneRecommend:Landroid/preference/Preference;

    const-string v7, "time_display_scheme_setting"

    invoke-virtual {p0, v7}, Lcom/android/settings/DateTimeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/PreferenceScreen;

    iput-object v7, p0, Lcom/android/settings/DateTimeSettings;->mTimeDisplayScheme:Landroid/preference/Preference;

    const-string v7, "CTC"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    if-eqz v4, :cond_4

    iget-object v7, p0, Lcom/android/settings/DateTimeSettings;->category_international_roaming:Landroid/preference/PreferenceGroup;

    if-eqz v7, :cond_4

    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    iget-object v10, p0, Lcom/android/settings/DateTimeSettings;->category_international_roaming:Landroid/preference/PreferenceGroup;

    invoke-virtual {v7, v10}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->timeZoneRcmndAvail()Z

    move-result v7

    if-eqz v7, :cond_5

    const-string v7, "CTC"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    :cond_5
    iput-boolean v8, p0, Lcom/android/settings/DateTimeSettings;->mTzHidden1:Z

    iget-object v7, p0, Lcom/android/settings/DateTimeSettings;->mTimeZoneRecommend:Landroid/preference/Preference;

    iget-object v8, p0, Lcom/android/settings/DateTimeSettings;->category_international_roaming:Landroid/preference/PreferenceGroup;

    invoke-direct {p0, v7, v8, v9}, Lcom/android/settings/DateTimeSettings;->showPreference(Landroid/preference/Preference;Landroid/preference/PreferenceGroup;Z)V

    const-string v7, "DateTimeSettings"

    const-string v8, "Not in roaming state"

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    return-void

    :cond_7
    iget-object v7, p0, Lcom/android/settings/DateTimeSettings;->mDualclock:Landroid/preference/PreferenceScreen;

    invoke-virtual {v7, v11}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    iget-object v7, p0, Lcom/android/settings/DateTimeSettings;->mDualclock:Landroid/preference/PreferenceScreen;

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto/16 :goto_0

    :cond_8
    move v7, v9

    goto :goto_1

    :cond_9
    move v7, v9

    goto :goto_2

    :cond_a
    move v7, v9

    goto :goto_3
.end method

.method private is24Hour()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private set24Hour(Z)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "time_12_24"

    if-eqz p1, :cond_0

    const-string v0, "24"

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void

    :cond_0
    const-string v0, "12"

    goto :goto_0
.end method

.method static setDate(Landroid/content/Context;III)V
    .locals 8

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p2}, Ljava/util/Calendar;->set(II)V

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p3}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long v4, v2, v4

    const-wide/32 v6, 0x7fffffff

    cmp-long v1, v4, v6

    if-gez v1, :cond_0

    const-string v1, "alarm"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    invoke-virtual {v1, v2, v3}, Landroid/app/AlarmManager;->setTime(J)V

    :cond_0
    return-void
.end method

.method static setTime(Landroid/content/Context;II)V
    .locals 8

    const/4 v4, 0x0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/16 v1, 0xb

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xc

    invoke-virtual {v0, v1, p2}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xd

    invoke-virtual {v0, v1, v4}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xe

    invoke-virtual {v0, v1, v4}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long v4, v2, v4

    const-wide/32 v6, 0x7fffffff

    cmp-long v1, v4, v6

    if-gez v1, :cond_0

    const-string v1, "alarm"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    invoke-virtual {v1, v2, v3}, Landroid/app/AlarmManager;->setTime(J)V

    :cond_0
    return-void
.end method

.method private showPreference(Landroid/preference/Preference;Landroid/preference/PreferenceGroup;Z)V
    .locals 2

    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    const-string v0, "CTC"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p3, :cond_1

    invoke-virtual {p2, p1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p2, p1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method

.method private timeUpdated(Z)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.TIME_SET"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.extra.TIME_PREF_24_HOUR_FORMAT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method


# virtual methods
.method public getSlotSelectionInformation()Ljava/lang/String;
    .locals 3

    const-string v0, "0"

    const-string v1, "gsm.sim.selectnetwork"

    const-string v2, "CDMA"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "CDMA"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "0"

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "gsm.sim.selectnetwork"

    const-string v2, "CDMA"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "GSM"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "1"

    goto :goto_0

    :cond_1
    const-string v0, "0"

    goto :goto_0
.end method

.method public isDataRoaming()Z
    .locals 4

    const-string v1, "gsm.sim.state"

    iget v2, p0, Lcom/android/settings/DateTimeSettings;->mFirstId:I

    const-string v3, "UNKNOWN"

    invoke-static {v1, v2, v3}, Lcom/samsung/android/telephony/MultiSimManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "READY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/settings/DateTimeSettings;->mFirstId:I

    invoke-static {v1}, Lcom/samsung/android/telephony/MultiSimManager;->isNetworkRoaming(I)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isDataRoamingSecondary()Z
    .locals 4

    const-string v1, "gsm.sim.state"

    iget v2, p0, Lcom/android/settings/DateTimeSettings;->mSecondId:I

    const-string v3, "UNKNOWN"

    invoke-static {v1, v2, v3}, Lcom/samsung/android/telephony/MultiSimManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "READY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/settings/DateTimeSettings;->mSecondId:I

    invoke-static {v1}, Lcom/samsung/android/telephony/MultiSimManager;->isNetworkRoaming(I)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isSlot1CdmaActive()Z
    .locals 8

    const/4 v3, 0x1

    const/4 v4, 0x0

    const-string v5, "gsm.sim.currentcardstatus"

    iget v6, p0, Lcom/android/settings/DateTimeSettings;->mFirstId:I

    const-string v7, "9"

    invoke-static {v5, v6, v7}, Lcom/samsung/android/telephony/MultiSimManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v5, 0x3

    if-ne v1, v5, :cond_0

    move v0, v3

    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getSlotSelectionInformation()Ljava/lang/String;

    move-result-object v5

    const-string v6, "1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v5, "DateTimeSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cdmaActive : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " isSlotSwitched : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " cdmaCardStatus = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_1

    if-nez v2, :cond_1

    :goto_1
    return v3

    :cond_0
    move v0, v4

    goto :goto_0

    :cond_1
    move v3, v4

    goto :goto_1
.end method

.method public isSlot1GsmActive()Z
    .locals 8

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/16 v1, 0x9

    const-string v5, "gsm.sim.currentcardstatus"

    iget v6, p0, Lcom/android/settings/DateTimeSettings;->mFirstId:I

    const-string v7, "9"

    invoke-static {v5, v6, v7}, Lcom/samsung/android/telephony/MultiSimManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v5, 0x3

    if-ne v1, v5, :cond_0

    move v0, v3

    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getSlotSelectionInformation()Ljava/lang/String;

    move-result-object v5

    const-string v6, "1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v5, "DateTimeSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "gsmActive : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " isSlotSwitched : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " gsmCardStatus = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_1

    if-eqz v2, :cond_1

    :goto_1
    return v3

    :cond_0
    move v0, v4

    goto :goto_0

    :cond_1
    move v3, v4

    goto :goto_1
.end method

.method public isSlot2GsmActive()Z
    .locals 8

    const/4 v3, 0x1

    const/4 v4, 0x0

    const-string v5, "gsm.sim.currentcardstatus"

    iget v6, p0, Lcom/android/settings/DateTimeSettings;->mSecondId:I

    const-string v7, "9"

    invoke-static {v5, v6, v7}, Lcom/samsung/android/telephony/MultiSimManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v5, 0x3

    if-ne v1, v5, :cond_0

    move v0, v3

    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getSlotSelectionInformation()Ljava/lang/String;

    move-result-object v5

    const-string v6, "1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v5, "DateTimeSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "gsmActive : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " isSlotSwitched : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " gsmCardStatus = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_1

    if-nez v2, :cond_1

    :goto_1
    return v3

    :cond_0
    move v0, v4

    goto :goto_0

    :cond_1
    move v3, v4

    goto :goto_1
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/DateTimeSettings;->updateTimeAndDateDisplay(Landroid/content/Context;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f07002b

    invoke-virtual {p0, v0}, Lcom/android/settings/DateTimeSettings;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sput-object v0, Lcom/android/settings/DateTimeSettings;->resources:Landroid/content/res/Resources;

    invoke-direct {p0}, Lcom/android/settings/DateTimeSettings;->initUI()V

    new-instance v0, Lcom/android/settings/DateTimeSettings$SettingsObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/DateTimeSettings$SettingsObserver;-><init>(Lcom/android/settings/DateTimeSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/DateTimeSettings;->mSettingsObserver:Lcom/android/settings/DateTimeSettings$SettingsObserver;

    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "auto_time"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/settings/DateTimeSettings;->mSettingsObserver:Lcom/android/settings/DateTimeSettings$SettingsObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 23

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v19

    packed-switch p1, :pswitch_data_0

    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    :pswitch_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/util/Calendar;->clear()V

    const/16 v3, 0x7d0

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object/from16 v0, v21

    invoke-virtual {v0, v3, v4, v5}, Ljava/util/Calendar;->set(III)V

    invoke-virtual/range {v21 .. v21}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    invoke-virtual/range {v21 .. v21}, Ljava/util/Calendar;->clear()V

    const/16 v3, 0x7f4

    const/16 v4, 0xb

    const/16 v5, 0x1f

    move-object/from16 v0, v21

    invoke-virtual {v0, v3, v4, v5}, Ljava/util/Calendar;->set(III)V

    invoke-virtual/range {v21 .. v21}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v10

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v20

    const-string v3, "America/Sao_Paulo"

    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v18

    const-string v3, "America/Santiago"

    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    const-wide/32 v4, 0x36ee80

    sub-long/2addr v8, v4

    :cond_1
    new-instance v2, Lcom/sec/android/touchwiz/app/TwDatePickerDialog;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const/4 v4, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/4 v4, 0x2

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v6

    const/4 v4, 0x5

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v7

    move-object/from16 v4, p0

    invoke-direct/range {v2 .. v11}, Lcom/sec/android/touchwiz/app/TwDatePickerDialog;-><init>(Landroid/content/Context;Lcom/sec/android/touchwiz/app/TwDatePickerDialog$OnDateSetListener;IIIJJ)V

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/app/TwDatePickerDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Landroid/view/Window;->setSoftInputMode(I)V

    :goto_0
    return-object v2

    :pswitch_1
    new-instance v12, Lcom/sec/android/touchwiz/app/TwTimePickerDialog;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v13

    const/16 v3, 0xb

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v15

    const/16 v3, 0xc

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v16

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v17

    move-object/from16 v14, p0

    invoke-direct/range {v12 .. v17}, Lcom/sec/android/touchwiz/app/TwTimePickerDialog;-><init>(Landroid/content/Context;Lcom/sec/android/touchwiz/app/TwTimePickerDialog$OnTimeSetListener;IIZ)V

    invoke-virtual {v12}, Lcom/sec/android/touchwiz/app/TwTimePickerDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Landroid/view/Window;->setSoftInputMode(I)V

    move-object v2, v12

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onDateSet(Lcom/sec/android/touchwiz/widget/TwDatePicker;III)V
    .locals 2

    const-string v1, "auto_time"

    invoke-direct {p0, v1}, Lcom/android/settings/DateTimeSettings;->getAutoState(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0, p2, p3, p4}, Lcom/android/settings/DateTimeSettings;->setDate(Landroid/content/Context;III)V

    invoke-virtual {p0, v0}, Lcom/android/settings/DateTimeSettings;->updateTimeAndDateDisplay(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/DateTimeSettings;->mSettingsObserver:Lcom/android/settings/DateTimeSettings$SettingsObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/DateTimeSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v3, p0, Lcom/android/settings/DateTimeSettings;->mDatePref:Landroid/preference/Preference;

    if-ne p2, v3, :cond_1

    invoke-virtual {p0, v4}, Lcom/android/settings/DateTimeSettings;->removeDialog(I)V

    invoke-virtual {p0, v4}, Lcom/android/settings/DateTimeSettings;->showDialog(I)V

    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v3

    return v3

    :cond_1
    iget-object v3, p0, Lcom/android/settings/DateTimeSettings;->mTimePref:Landroid/preference/Preference;

    if-ne p2, v3, :cond_2

    invoke-virtual {p0, v5}, Lcom/android/settings/DateTimeSettings;->removeDialog(I)V

    invoke-virtual {p0, v5}, Lcom/android/settings/DateTimeSettings;->showDialog(I)V

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/android/settings/DateTimeSettings;->mTime24Pref:Landroid/preference/Preference;

    if-ne p2, v3, :cond_3

    iget-object v3, p0, Lcom/android/settings/DateTimeSettings;->mTime24Pref:Landroid/preference/Preference;

    check-cast v3, Landroid/preference/SwitchPreference;

    invoke-virtual {v3}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/settings/DateTimeSettings;->set24Hour(Z)V

    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/settings/DateTimeSettings;->updateTimeAndDateDisplay(Landroid/content/Context;)V

    invoke-direct {p0, v2}, Lcom/android/settings/DateTimeSettings;->timeUpdated(Z)V

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/android/settings/DateTimeSettings;->mTimeZoneRecommend:Landroid/preference/Preference;

    invoke-virtual {p2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    if-eqz v1, :cond_0

    :try_start_0
    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.sec.android.app.irsettings"

    const-string v5, "com.sec.android.app.irsettings.TimeZoneRecommend"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/android/settings/DateTimeSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/android/settings/DateTimeSettings;->mTimeDisplayScheme:Landroid/preference/Preference;

    invoke-virtual {p2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->showTimeDisplaySchemeDialog()V

    goto :goto_0
.end method

.method public onResume()V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    iget-object v1, p0, Lcom/android/settings/DateTimeSettings;->mTime24Pref:Landroid/preference/Preference;

    check-cast v1, Landroid/preference/SwitchPreference;

    invoke-direct {p0}, Lcom/android/settings/DateTimeSettings;->is24Hour()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/DateTimeSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0, v5, v5}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/DateTimeSettings;->updateTimeAndDateDisplay(Landroid/content/Context;)V

    const-string v1, "CTC"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->timeZoneRcmndBlocked()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/DateTimeSettings;->mTimeZoneRecommend:Landroid/preference/Preference;

    if-eqz v1, :cond_0

    iput-boolean v4, p0, Lcom/android/settings/DateTimeSettings;->mTzHidden1:Z

    iget-object v1, p0, Lcom/android/settings/DateTimeSettings;->mTimeZoneRecommend:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/android/settings/DateTimeSettings;->category_international_roaming:Landroid/preference/PreferenceGroup;

    invoke-direct {p0, v1, v2, v3}, Lcom/android/settings/DateTimeSettings;->showPreference(Landroid/preference/Preference;Landroid/preference/PreferenceGroup;Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->isDataRoaming()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->isDataRoamingSecondary()Z

    move-result v1

    if-nez v1, :cond_3

    iput-boolean v4, p0, Lcom/android/settings/DateTimeSettings;->mTzHidden2:Z

    iget-object v1, p0, Lcom/android/settings/DateTimeSettings;->mTimeDisplayScheme:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/android/settings/DateTimeSettings;->category_international_roaming:Landroid/preference/PreferenceGroup;

    invoke-direct {p0, v1, v2, v3}, Lcom/android/settings/DateTimeSettings;->showPreference(Landroid/preference/Preference;Landroid/preference/PreferenceGroup;Z)V

    const-string v1, "DateTimeSettings"

    const-string v2, "remove TimeDisplayScheme menu not in roaming"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    iget-boolean v1, p0, Lcom/android/settings/DateTimeSettings;->mTzHidden1:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/settings/DateTimeSettings;->mTzHidden2:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/DateTimeSettings;->category_international_roaming:Landroid/preference/PreferenceGroup;

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/DateTimeSettings;->category_international_roaming:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_2
    :goto_1
    return-void

    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->timeZoneDisplaySchemeBlocked()Z

    move-result v1

    if-eqz v1, :cond_1

    iput-boolean v4, p0, Lcom/android/settings/DateTimeSettings;->mTzHidden2:Z

    iget-object v1, p0, Lcom/android/settings/DateTimeSettings;->mTimeDisplayScheme:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/android/settings/DateTimeSettings;->category_international_roaming:Landroid/preference/PreferenceGroup;

    invoke-direct {p0, v1, v2, v3}, Lcom/android/settings/DateTimeSettings;->showPreference(Landroid/preference/Preference;Landroid/preference/PreferenceGroup;Z)V

    const-string v1, "DateTimeSettings"

    const-string v2, "remove TimeDisplayScheme menu in GMT +8:00"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/android/settings/DateTimeSettings;->category_international_roaming:Landroid/preference/PreferenceGroup;

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/DateTimeSettings;->category_international_roaming:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_1
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 10

    const/4 v7, 0x0

    const/4 v6, 0x1

    const-string v5, "auto_time"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {p1, p2, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const-string v5, "DateTimeSettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onSharedPreferenceChanged KEY_AUTO_TIME preferences.getBoolean() return : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v5, "firstRun"

    invoke-virtual {v2, v5, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "auto_time"

    if-eqz v0, :cond_1

    move v5, v6

    :goto_0
    invoke-static {v8, v9, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v8, p0, Lcom/android/settings/DateTimeSettings;->mTimePref:Landroid/preference/Preference;

    if-nez v0, :cond_2

    move v5, v6

    :goto_1
    invoke-virtual {v8, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v5, p0, Lcom/android/settings/DateTimeSettings;->mDatePref:Landroid/preference/Preference;

    if-nez v0, :cond_3

    :goto_2
    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    invoke-direct {p0}, Lcom/android/settings/DateTimeSettings;->applyEDMDateTimeChangePolicy()V

    :cond_0
    :goto_3
    return-void

    :cond_1
    move v5, v7

    goto :goto_0

    :cond_2
    move v5, v7

    goto :goto_1

    :cond_3
    move v6, v7

    goto :goto_2

    :cond_4
    const-string v5, "auto_zone"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {p1, p2, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "auto_time_zone"

    if-eqz v1, :cond_5

    move v5, v6

    :goto_4
    invoke-static {v8, v9, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v5, p0, Lcom/android/settings/DateTimeSettings;->mTimeZone:Landroid/preference/Preference;

    if-nez v1, :cond_6

    :goto_5
    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    invoke-direct {p0}, Lcom/android/settings/DateTimeSettings;->applyEDMDateTimeChangePolicy()V

    goto :goto_3

    :cond_5
    move v5, v7

    goto :goto_4

    :cond_6
    move v6, v7

    goto :goto_5

    :cond_7
    const-string v5, "24 hour"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {p1, p2, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/settings/DateTimeSettings;->set24Hour(Z)V

    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/settings/DateTimeSettings;->updateTimeAndDateDisplay(Landroid/content/Context;)V

    invoke-direct {p0, v3}, Lcom/android/settings/DateTimeSettings;->timeUpdated(Z)V

    goto :goto_3
.end method

.method public onTimeSet(Lcom/sec/android/touchwiz/widget/TwTimePicker;II)V
    .locals 2

    const-string v1, "auto_time"

    invoke-direct {p0, v1}, Lcom/android/settings/DateTimeSettings;->getAutoState(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0, p2, p3}, Lcom/android/settings/DateTimeSettings;->setTime(Landroid/content/Context;II)V

    invoke-virtual {p0, v0}, Lcom/android/settings/DateTimeSettings;->updateTimeAndDateDisplay(Landroid/content/Context;)V

    goto :goto_0
.end method

.method showTimeDisplaySchemeDialog()V
    .locals 3

    const v1, 0x7f0a130c

    invoke-static {v1}, Lcom/android/settings/TimeDisplaySchemeSettings;->newInstance(I)Lcom/android/settings/TimeDisplaySchemeSettings;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "dialog"

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public timeZoneDisplaySchemeBlocked()Z
    .locals 6

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v3

    div-int/lit8 v3, v3, 0x3c

    div-int/lit8 v3, v3, 0x3c

    div-int/lit16 v0, v3, 0x3e8

    const-string v3, "DateTimeSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "timeZoneDisplaySchemeBlocked time zone offset: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v3, 0x8

    if-ne v0, v3, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public timeZoneRcmndAvail()Z
    .locals 14

    const/4 v1, 0x0

    const-string v11, "gsm.operator.numeric"

    iget v12, p0, Lcom/android/settings/DateTimeSettings;->mFirstId:I

    const-string v13, ""

    invoke-static {v11, v12, v13}, Lcom/samsung/android/telephony/MultiSimManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v11, "gsm.operator.numeric"

    iget v12, p0, Lcom/android/settings/DateTimeSettings;->mSecondId:I

    const-string v13, ""

    invoke-static {v11, v12, v13}, Lcom/samsung/android/telephony/MultiSimManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->isSlot1CdmaActive()Z

    move-result v0

    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->isSlot1GsmActive()Z

    move-result v9

    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->isSlot2GsmActive()Z

    move-result v10

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x1

    const-string v11, "phone"

    invoke-static {v11}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v11

    invoke-static {v11}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v7

    if-eqz v7, :cond_0

    :try_start_0
    invoke-interface {v7}, Lcom/android/internal/telephony/ITelephony;->getActivePhoneType()I

    move-result v11

    const/4 v12, 0x2

    if-ne v11, v12, :cond_0

    invoke-interface {v7}, Lcom/android/internal/telephony/ITelephony;->getPhoneServiceState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    :cond_0
    :goto_0
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v11

    const/4 v12, 0x5

    if-lt v11, v12, :cond_1

    const/4 v11, 0x0

    const/4 v12, 0x3

    invoke-virtual {v3, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    :cond_1
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v11

    const/4 v12, 0x5

    if-lt v11, v12, :cond_2

    const/4 v11, 0x0

    const/4 v12, 0x3

    invoke-virtual {v5, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    :cond_2
    const/16 v11, 0x1cc

    if-eq v4, v11, :cond_3

    const/16 v11, 0x1c7

    if-eq v4, v11, :cond_3

    const/16 v11, 0x1cc

    if-eq v6, v11, :cond_3

    const/16 v11, 0x1c7

    if-ne v6, v11, :cond_4

    :cond_3
    const/4 v1, 0x1

    :cond_4
    const-string v11, "DateTimeSettings"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "timeZoneRcmndAvail chinaArea: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " cdma SS: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " cdmaActive:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " slot1GsmActive:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " slot2GsmActive:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v11, "DateTimeSettings"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "timeZoneRcmndAvail UserHandle.myUserId(): "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v11

    const/16 v12, 0x64

    if-lt v11, v12, :cond_5

    const/4 v11, 0x1

    :goto_1
    return v11

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    :cond_5
    if-nez v0, :cond_7

    if-nez v9, :cond_6

    if-eqz v10, :cond_7

    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->isDataRoamingSecondary()Z

    move-result v11

    if-eqz v11, :cond_7

    :cond_6
    const/4 v11, 0x1

    goto :goto_1

    :cond_7
    const/4 v11, 0x0

    goto :goto_1
.end method

.method public timeZoneRcmndBlocked()Z
    .locals 6

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->isSlot1CdmaActive()Z

    move-result v0

    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->isSlot2GsmActive()Z

    move-result v1

    const-string v3, "DateTimeSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "timeZoneRcmndBlocked cdmaActive: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " gsm2Active : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "DateTimeSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "timeZoneRcmndBlocked UserHandle.myUserId(): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    if-eqz v1, :cond_1

    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    const/16 v4, 0x64

    if-lt v3, v4, :cond_2

    :cond_1
    const/4 v2, 0x1

    :cond_2
    return v2
.end method

.method public updateTimeAndDateDisplay(Landroid/content/Context;)V
    .locals 10

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v9

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/16 v2, 0xb

    const/16 v3, 0x1f

    const/16 v4, 0xd

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    iget-object v1, p0, Lcom/android/settings/DateTimeSettings;->mDummyDate:Ljava/util/Calendar;

    invoke-virtual {v9}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    iget-object v1, p0, Lcom/android/settings/DateTimeSettings;->mDummyDate:Ljava/util/Calendar;

    const/4 v2, 0x1

    invoke-virtual {v9, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/16 v3, 0xb

    const/16 v4, 0x1f

    const/16 v5, 0xd

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v7}, Ljava/util/Calendar;->set(IIIIII)V

    iget-object v1, p0, Lcom/android/settings/DateTimeSettings;->mDummyDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v8

    iget-object v1, p0, Lcom/android/settings/DateTimeSettings;->mDatePref:Landroid/preference/Preference;

    invoke-static {p1}, Landroid/text/format/DateFormat;->getLongDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v2

    invoke-virtual {v9}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/settings/DateTimeSettings;->mTimePref:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v2

    invoke-virtual {v9}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/settings/DateTimeSettings;->mTimeZone:Landroid/preference/Preference;

    invoke-virtual {v9}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/settings/DateTimeSettings;->getTimeZoneText(Ljava/util/TimeZone;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/settings/DateTimeSettings;->mTime24Pref:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/settings/DateTimeSettings;->mAutoTimeZonePref:Landroid/preference/SwitchPreference;

    const-string v2, "auto_time_zone"

    invoke-direct {p0, v2}, Lcom/android/settings/DateTimeSettings;->getAutoState(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    invoke-direct {p0}, Lcom/android/settings/DateTimeSettings;->applyEDMDateTimeChangePolicy()V

    return-void
.end method
