.class public Lcom/android/settings/tts/TextToSpeechSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "TextToSpeechSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;
.implements Lcom/android/settings/tts/TtsEnginePreference$RadioButtonGroupState;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/tts/TextToSpeechSettings$TTSSeekBarPreferenceCallback;
    }
.end annotation


# instance fields
.field private mAvailableStrLocals:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentChecked:Landroid/widget/Checkable;

.field private mCurrentDefaultLocale:Ljava/util/Locale;

.field private mCurrentEngine:Ljava/lang/String;

.field private mDefaultRate:I

.field private mEnginePreferenceCategory:Landroid/preference/PreferenceCategory;

.field private mEngineStatus:Landroid/preference/Preference;

.field private mEnginesHelper:Landroid/speech/tts/TtsEngines;

.field private final mInitListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

.field private mPlayExample:Landroid/preference/Preference;

.field private mPreviousEngine:Ljava/lang/String;

.field private mSampleText:Ljava/lang/String;

.field private final mTTSRateCallback:Lcom/android/settings/tts/TextToSpeechSettings$TTSSeekBarPreferenceCallback;

.field private mTTSRateSeekBar:Lcom/android/settings/tts/TTSSeekBarPreference;

.field private mTts:Landroid/speech/tts/TextToSpeech;

.field private final mUpdateListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

.field rate:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/16 v0, 0x64

    iput v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mDefaultRate:I

    iput-object v1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    iput-object v1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mEnginesHelper:Landroid/speech/tts/TtsEngines;

    iput-object v1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mSampleText:Ljava/lang/String;

    new-instance v0, Lcom/android/settings/tts/TextToSpeechSettings$TTSSeekBarPreferenceCallback;

    invoke-direct {v0, p0, v1}, Lcom/android/settings/tts/TextToSpeechSettings$TTSSeekBarPreferenceCallback;-><init>(Lcom/android/settings/tts/TextToSpeechSettings;Lcom/android/settings/tts/TextToSpeechSettings$1;)V

    iput-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mTTSRateCallback:Lcom/android/settings/tts/TextToSpeechSettings$TTSSeekBarPreferenceCallback;

    new-instance v0, Lcom/android/settings/tts/TextToSpeechSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/tts/TextToSpeechSettings$1;-><init>(Lcom/android/settings/tts/TextToSpeechSettings;)V

    iput-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mInitListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

    new-instance v0, Lcom/android/settings/tts/TextToSpeechSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/tts/TextToSpeechSettings$2;-><init>(Lcom/android/settings/tts/TextToSpeechSettings;)V

    iput-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mUpdateListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/tts/TextToSpeechSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->speakSampleText()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/tts/TextToSpeechSettings;)I
    .locals 1

    iget v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mDefaultRate:I

    return v0
.end method

.method static synthetic access$202(Lcom/android/settings/tts/TextToSpeechSettings;I)I
    .locals 0

    iput p1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mDefaultRate:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/settings/tts/TextToSpeechSettings;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/tts/TextToSpeechSettings;)Landroid/speech/tts/TextToSpeech;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    return-object v0
.end method

.method private checkDefaultLocale()V
    .locals 6

    iget-object v3, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v3}, Landroid/speech/tts/TextToSpeech;->getDefaultLanguage()Ljava/util/Locale;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v3, "TextToSpeechSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to get default language from engine "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mCurrentEngine:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/android/settings/tts/TextToSpeechSettings;->updateWidgetState(Z)V

    const v3, 0x7f0a0b22

    invoke-direct {p0, v3}, Lcom/android/settings/tts/TextToSpeechSettings;->updateEngineStatus(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mCurrentDefaultLocale:Ljava/util/Locale;

    iget-object v3, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mEnginesHelper:Landroid/speech/tts/TtsEngines;

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/speech/tts/TtsEngines;->parseLocaleString(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mCurrentDefaultLocale:Ljava/util/Locale;

    iget-object v3, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mCurrentDefaultLocale:Ljava/util/Locale;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mSampleText:Ljava/lang/String;

    :cond_2
    iget-object v3, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v3, v1}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    move-result v0

    invoke-direct {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->evaluateDefaultLocale()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mSampleText:Ljava/lang/String;

    if-nez v3, :cond_0

    invoke-direct {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->getSampleText()V

    goto :goto_0
.end method

.method private checkVoiceData(Ljava/lang/String;)V
    .locals 5

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.speech.tts.engine.CHECK_TTS_DATA"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v2, 0x7b9

    :try_start_0
    invoke-virtual {p0, v1, v2}, Lcom/android/settings/tts/TextToSpeechSettings;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v2, "TextToSpeechSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to check TTS data, no activity found for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private displayNetworkAlert()V
    .locals 5

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x1040014

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f0a0b1d

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x104000a

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private evaluateDefaultLocale()Z
    .locals 11

    const v10, 0x7f0a0b22

    const/4 v6, 0x1

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mCurrentDefaultLocale:Ljava/util/Locale;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mAvailableStrLocals:Ljava/util/List;

    if-nez v8, :cond_1

    :cond_0
    move v6, v7

    :goto_0
    return v6

    :cond_1
    const/4 v5, 0x1

    :try_start_0
    iget-object v8, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mCurrentDefaultLocale:Ljava/util/Locale;

    invoke-virtual {v8}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v1

    iget-object v8, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mCurrentDefaultLocale:Ljava/util/Locale;

    invoke-virtual {v8}, Ljava/util/Locale;->getISO3Country()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "-"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mCurrentDefaultLocale:Ljava/util/Locale;

    invoke-virtual {v9}, Ljava/util/Locale;->getISO3Country()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_2
    iget-object v8, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mCurrentDefaultLocale:Ljava/util/Locale;

    invoke-virtual {v8}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "-"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mCurrentDefaultLocale:Ljava/util/Locale;

    invoke-virtual {v9}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_3
    iget-object v8, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mAvailableStrLocals:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    if-eqz v8, :cond_4

    const/4 v5, 0x0

    :cond_5
    iget-object v8, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    iget-object v9, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mCurrentDefaultLocale:Ljava/util/Locale;

    invoke-virtual {v8, v9}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    move-result v0

    const/4 v8, -0x2

    if-eq v0, v8, :cond_6

    const/4 v8, -0x1

    if-eq v0, v8, :cond_6

    if-eqz v5, :cond_7

    :cond_6
    invoke-direct {p0, v10}, Lcom/android/settings/tts/TextToSpeechSettings;->updateEngineStatus(I)V

    invoke-direct {p0, v7}, Lcom/android/settings/tts/TextToSpeechSettings;->updateWidgetState(Z)V

    move v6, v7

    goto/16 :goto_0

    :catch_0
    move-exception v2

    invoke-direct {p0, v10}, Lcom/android/settings/tts/TextToSpeechSettings;->updateEngineStatus(I)V

    invoke-direct {p0, v7}, Lcom/android/settings/tts/TextToSpeechSettings;->updateWidgetState(Z)V

    move v6, v7

    goto/16 :goto_0

    :cond_7
    invoke-direct {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->isNetworkRequiredForSynthesis()Z

    move-result v7

    if-eqz v7, :cond_8

    const v7, 0x7f0a0b21

    invoke-direct {p0, v7}, Lcom/android/settings/tts/TextToSpeechSettings;->updateEngineStatus(I)V

    :goto_1
    invoke-direct {p0, v6}, Lcom/android/settings/tts/TextToSpeechSettings;->updateWidgetState(Z)V

    goto/16 :goto_0

    :cond_8
    const v7, 0x7f0a0b20

    invoke-direct {p0, v7}, Lcom/android/settings/tts/TextToSpeechSettings;->updateEngineStatus(I)V

    goto :goto_1
.end method

.method private getDefaultSampleString()Ljava/lang/String;
    .locals 6

    iget-object v4, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v4}, Landroid/speech/tts/TextToSpeech;->getLanguage()Ljava/util/Locale;

    move-result-object v4

    if-eqz v4, :cond_1

    :try_start_0
    iget-object v4, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v4}, Landroid/speech/tts/TextToSpeech;->getLanguage()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e001f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e0020

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x0

    :goto_0
    array-length v4, v3

    if-ge v1, v4, :cond_1

    aget-object v4, v2, v1

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    aget-object v4, v3, v1
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-object v4

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v4

    :cond_1
    const v4, 0x7f0a0b1e

    invoke-virtual {p0, v4}, Lcom/android/settings/tts/TextToSpeechSettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_1
.end method

.method private getSampleText()V
    .locals 6

    iget-object v3, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v3}, Landroid/speech/tts/TextToSpeech;->getCurrentEngine()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v3}, Landroid/speech/tts/TextToSpeech;->getDefaultEngine()Ljava/lang/String;

    move-result-object v0

    :cond_0
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.speech.tts.engine.GET_SAMPLE_TEXT"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "language"

    iget-object v4, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mCurrentDefaultLocale:Ljava/util/Locale;

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "country"

    iget-object v4, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mCurrentDefaultLocale:Ljava/util/Locale;

    invoke-virtual {v4}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "variant"

    iget-object v4, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mCurrentDefaultLocale:Ljava/util/Locale;

    invoke-virtual {v4}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v3, 0x7bf

    :try_start_0
    invoke-virtual {p0, v2, v3}, Lcom/android/settings/tts/TextToSpeechSettings;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    const-string v3, "TextToSpeechSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to get sample text, no activity found for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private initSettings()V
    .locals 9

    invoke-virtual {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    :try_start_0
    const-string v7, "tts_default_rate"

    invoke-static {v6, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mDefaultRate:I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v7, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v7}, Landroid/speech/tts/TextToSpeech;->getCurrentEngine()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mCurrentEngine:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    instance-of v7, v7, Lcom/android/settings/SettingsActivity;

    if-eqz v7, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    iget-object v7, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mEnginePreferenceCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v7}, Landroid/preference/PreferenceCategory;->removeAll()V

    iget-object v7, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mEnginesHelper:Landroid/speech/tts/TtsEngines;

    invoke-virtual {v7}, Landroid/speech/tts/TtsEngines;->getEngines()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/speech/tts/TextToSpeech$EngineInfo;

    new-instance v3, Lcom/android/settings/tts/TtsEnginePreference;

    invoke-virtual {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v3, v7, v2, p0, v0}, Lcom/android/settings/tts/TtsEnginePreference;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$EngineInfo;Lcom/android/settings/tts/TtsEnginePreference$RadioButtonGroupState;Lcom/android/settings/SettingsActivity;)V

    iget-object v7, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mEnginePreferenceCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v7, v3}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_1

    :catch_0
    move-exception v1

    const/16 v7, 0x64

    iput v7, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mDefaultRate:I

    goto :goto_0

    :cond_0
    new-instance v7, Ljava/lang/IllegalStateException;

    const-string v8, "TextToSpeechSettings used outside a Settings"

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_1
    iget-object v7, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mCurrentEngine:Ljava/lang/String;

    invoke-direct {p0, v7}, Lcom/android/settings/tts/TextToSpeechSettings;->checkVoiceData(Ljava/lang/String;)V

    return-void
.end method

.method private isNetworkRequiredForSynthesis()Z
    .locals 4

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    iget-object v3, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mCurrentDefaultLocale:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Landroid/speech/tts/TextToSpeech;->getFeatures(Ljava/util/Locale;)Ljava/util/Set;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    const-string v2, "networkTts"

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "embeddedTts"

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method private onSampleTextReceived(ILandroid/content/Intent;)V
    .locals 3

    invoke-direct {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->getDefaultSampleString()Ljava/lang/String;

    move-result-object v0

    if-nez p1, :cond_0

    if-eqz p2, :cond_0

    const-string v1, "sampleText"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v1, "sampleText"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    iput-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mSampleText:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mSampleText:Ljava/lang/String;

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/settings/tts/TextToSpeechSettings;->updateWidgetState(Z)V

    :goto_0
    return-void

    :cond_1
    const-string v1, "TextToSpeechSettings"

    const-string v2, "Did not have a sample string for the requested language. Using default"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private onVoiceDataIntegrityCheckDone(Landroid/content/Intent;)V
    .locals 8

    iget-object v5, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v5}, Landroid/speech/tts/TextToSpeech;->getCurrentEngine()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v5, "TextToSpeechSettings"

    const-string v6, "Voice data check complete, but no engine bound"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez p1, :cond_2

    const-string v5, "TextToSpeechSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Engine failed voice data integrity check (null return)"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v7}, Landroid/speech/tts/TextToSpeech;->getCurrentEngine()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "tts_default_synth"

    invoke-static {v5, v6, v0}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    const-string v5, "availableVoices"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mAvailableStrLocals:Ljava/util/List;

    iget-object v5, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mAvailableStrLocals:Ljava/util/List;

    if-nez v5, :cond_3

    const-string v5, "TextToSpeechSettings"

    const-string v6, "Voice data check complete, but no available voices found"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mAvailableStrLocals:Ljava/util/List;

    :cond_3
    invoke-direct {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->evaluateDefaultLocale()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-direct {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->getSampleText()V

    :cond_4
    iget-object v5, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mEnginePreferenceCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v5}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_0

    iget-object v5, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mEnginePreferenceCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v5, v3}, Landroid/preference/PreferenceCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v4

    instance-of v5, v4, Lcom/android/settings/tts/TtsEnginePreference;

    if-eqz v5, :cond_5

    move-object v2, v4

    check-cast v2, Lcom/android/settings/tts/TtsEnginePreference;

    invoke-virtual {v2}, Lcom/android/settings/tts/TtsEnginePreference;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {v2, p1}, Lcom/android/settings/tts/TtsEnginePreference;->setVoiceDataDetails(Landroid/content/Intent;)V

    goto :goto_0

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method private setTtsUtteranceProgressListener()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    new-instance v1, Lcom/android/settings/tts/TextToSpeechSettings$3;

    invoke-direct {v1, p0}, Lcom/android/settings/tts/TextToSpeechSettings$3;-><init>(Lcom/android/settings/tts/TextToSpeechSettings;)V

    invoke-virtual {v0, v1}, Landroid/speech/tts/TextToSpeech;->setOnUtteranceProgressListener(Landroid/speech/tts/UtteranceProgressListener;)I

    goto :goto_0
.end method

.method private speakSampleText()V
    .locals 5

    invoke-direct {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->isNetworkRequiredForSynthesis()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    iget-object v3, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mCurrentDefaultLocale:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Landroid/speech/tts/TextToSpeech;->isLanguageAvailable(Ljava/util/Locale;)I

    move-result v2

    if-ltz v2, :cond_1

    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "utteranceId"

    const-string v3, "Sample"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    iget-object v3, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mSampleText:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v1}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    :goto_0
    return-void

    :cond_1
    const-string v2, "TextToSpeechSettings"

    const-string v3, "Network required for sample synthesis for requested language"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->displayNetworkAlert()V

    goto :goto_0
.end method

.method private updateDefaultEngine(Ljava/lang/String;)V
    .locals 4

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/settings/tts/TextToSpeechSettings;->updateWidgetState(Z)V

    const v2, 0x7f0a0b23

    invoke-direct {p0, v2}, Lcom/android/settings/tts/TextToSpeechSettings;->updateEngineStatus(I)V

    iget-object v2, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    if-nez v2, :cond_1

    :goto_0
    iput-object v1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mPreviousEngine:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v1}, Landroid/speech/tts/TextToSpeech;->shutdown()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    new-instance v1, Landroid/speech/tts/TextToSpeech;

    invoke-virtual {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mUpdateListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

    invoke-direct {v1, v2, v3, p1}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-direct {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->setTtsUtteranceProgressListener()V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v1}, Landroid/speech/tts/TextToSpeech;->getCurrentEngine()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "TextToSpeechSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error shutting down TTS engine"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private updateEngineStatus(I)V
    .locals 5

    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mCurrentDefaultLocale:Ljava/util/Locale;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    :cond_0
    iget-object v1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mEngineStatus:Landroid/preference/Preference;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/util/Locale;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, p1, v2}, Lcom/android/settings/tts/TextToSpeechSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updateWidgetState(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mEngineStatus:Landroid/preference/Preference;

    invoke-virtual {v0, p1}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mTTSRateSeekBar:Lcom/android/settings/tts/TTSSeekBarPreference;

    invoke-virtual {v0, p1}, Lcom/android/settings/tts/TTSSeekBarPreference;->setEnabled(Z)V

    return-void
.end method


# virtual methods
.method public getCurrentChecked()Landroid/widget/Checkable;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mCurrentChecked:Landroid/widget/Checkable;

    return-object v0
.end method

.method public getCurrentKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mCurrentEngine:Ljava/lang/String;

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    const/16 v0, 0x7bf

    if-ne p1, v0, :cond_1

    invoke-direct {p0, p2, p3}, Lcom/android/settings/tts/TextToSpeechSettings;->onSampleTextReceived(ILandroid/content/Intent;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v0, 0x7b9

    if-ne p1, v0, :cond_0

    invoke-direct {p0, p3}, Lcom/android/settings/tts/TextToSpeechSettings;->onVoiceDataIntegrityCheckDone(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0700a9

    invoke-virtual {p0, v0}, Lcom/android/settings/tts/TextToSpeechSettings;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e001c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->rate:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setVolumeControlStream(I)V

    const-string v0, "tts_rate_seekbar"

    invoke-virtual {p0, v0}, Lcom/android/settings/tts/TextToSpeechSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/tts/TTSSeekBarPreference;

    iput-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mTTSRateSeekBar:Lcom/android/settings/tts/TTSSeekBarPreference;

    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mTTSRateSeekBar:Lcom/android/settings/tts/TTSSeekBarPreference;

    iget-object v1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mTTSRateCallback:Lcom/android/settings/tts/TextToSpeechSettings$TTSSeekBarPreferenceCallback;

    invoke-virtual {v0, v1}, Lcom/android/settings/tts/TTSSeekBarPreference;->setCallback(Lcom/android/settings/tts/TTSSeekBarPreference$Callback;)V

    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mTTSRateSeekBar:Lcom/android/settings/tts/TTSSeekBarPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/tts/TTSSeekBarPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mTTSRateSeekBar:Lcom/android/settings/tts/TTSSeekBarPreference;

    iget-object v1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->rate:[Ljava/lang/String;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/tts/TTSSeekBarPreference;->setMax(I)V

    const-string v0, "tts_engine_preference_section"

    invoke-virtual {p0, v0}, Lcom/android/settings/tts/TextToSpeechSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mEnginePreferenceCategory:Landroid/preference/PreferenceCategory;

    const-string v0, "tts_status"

    invoke-virtual {p0, v0}, Lcom/android/settings/tts/TextToSpeechSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mEngineStatus:Landroid/preference/Preference;

    const v0, 0x7f0a0b23

    invoke-direct {p0, v0}, Lcom/android/settings/tts/TextToSpeechSettings;->updateEngineStatus(I)V

    new-instance v0, Landroid/speech/tts/TextToSpeech;

    invoke-virtual {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mInitListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

    invoke-direct {v0, v1, v2}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    iput-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    new-instance v0, Landroid/speech/tts/TtsEngines;

    invoke-virtual {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/speech/tts/TtsEngines;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mEnginesHelper:Landroid/speech/tts/TtsEngines;

    invoke-direct {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->setTtsUtteranceProgressListener()V

    invoke-direct {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->initSettings()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/tts/TextToSpeechSettings;->setRetainInstance(Z)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->shutdown()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    :cond_0
    return-void
.end method

.method public onInitEngine(I)V
    .locals 1

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->checkDefaultLocale()V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/tts/TextToSpeechSettings;->updateWidgetState(Z)V

    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4

    const-string v1, "tts_default_rate"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mDefaultRate:I

    const-string v1, "TextToSpeechSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TTS default rate changed, now "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mDefaultRate:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "tts_default_rate"

    iget v3, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mDefaultRate:I

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    iget v2, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mDefaultRate:I

    int-to-float v2, v2

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/speech/tts/TextToSpeech;->setSpeechRate(F)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    const/4 v1, 0x1

    return v1

    :catch_0
    move-exception v0

    const-string v1, "TextToSpeechSettings"

    const-string v2, "could not persist default TTS rate setting"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mPlayExample:Landroid/preference/Preference;

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->speakSampleText()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    iget-object v1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mCurrentDefaultLocale:Ljava/util/Locale;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v1}, Landroid/speech/tts/TextToSpeech;->getDefaultLanguage()Ljava/util/Locale;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mCurrentDefaultLocale:Ljava/util/Locale;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mCurrentDefaultLocale:Ljava/util/Locale;

    invoke-virtual {v1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/settings/tts/TextToSpeechSettings;->updateWidgetState(Z)V

    invoke-direct {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->checkDefaultLocale()V

    goto :goto_0
.end method

.method public onUpdateEngine(I)V
    .locals 4

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->getCurrentEngine()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/tts/TextToSpeechSettings;->checkVoiceData(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mPreviousEngine:Ljava/lang/String;

    if-eqz v0, :cond_1

    new-instance v0, Landroid/speech/tts/TextToSpeech;

    invoke-virtual {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mInitListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

    iget-object v3, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mPreviousEngine:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-direct {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->setTtsUtteranceProgressListener()V

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mPreviousEngine:Ljava/lang/String;

    goto :goto_0
.end method

.method public setCurrentChecked(Landroid/widget/Checkable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mCurrentChecked:Landroid/widget/Checkable;

    return-void
.end method

.method public setCurrentKey(Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mCurrentEngine:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mCurrentEngine:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/settings/tts/TextToSpeechSettings;->updateDefaultEngine(Ljava/lang/String;)V

    return-void
.end method
