.class public Lcom/android/settings/spen/SPenSettingsMenu;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "SPenSettingsMenu.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/search/Indexable;


# static fields
.field private static final PEN_NOTIFICATION_OFF:Ljava/lang/String;

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private mActionMemoOnOffScreenSwitchPref:Landroid/preference/SwitchPreference;

.field private mAirCommandPref:Landroid/preference/Preference;

.field private mContext:Landroid/content/Context;

.field private mDirectPenInputPref:Landroid/preference/Preference;

.field private mDisablePenDetectionSwitchPref:Landroid/preference/SwitchPreference;

.field private mLossPreventionAlertSwitchPref:Landroid/preference/SwitchPreference;

.field private mPenAirViewPref:Landroid/preference/Preference;

.field private mPenDetachObserver:Landroid/database/ContentObserver;

.field private mPenDetachOptionPref:Lcom/android/settings/notification/DropDownPreference;

.field private mPenFeedbackHapticSwitchPref:Landroid/preference/SwitchPreference;

.field private mPenFeedbackSoundSwitchPref:Landroid/preference/SwitchPreference;

.field private mSpenPointerPref:Landroid/preference/Preference;

.field private mSpenPointerSwtichPref:Landroid/preference/SwitchPreference;

.field private mSupportPenUsp10:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/spen/SPenSettingsMenu;->PEN_NOTIFICATION_OFF:Ljava/lang/String;

    new-instance v0, Lcom/android/settings/spen/SPenSettingsMenu$2;

    invoke-direct {v0}, Lcom/android/settings/spen/SPenSettingsMenu$2;-><init>()V

    sput-object v0, Lcom/android/settings/spen/SPenSettingsMenu;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    new-instance v0, Lcom/android/settings/spen/SPenSettingsMenu$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/spen/SPenSettingsMenu$3;-><init>(Lcom/android/settings/spen/SPenSettingsMenu;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/spen/SPenSettingsMenu;->mPenDetachObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/spen/SPenSettingsMenu;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/spen/SPenSettingsMenu;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/spen/SPenSettingsMenu;->updateState()V

    return-void
.end method

.method private sendLossPreventionAlert(Z)V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.settings.LossPeventionAlertChanged"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "LossPreventionAlertState"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "SPenSettingsMenu"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BroadCast Loss prevention alert : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/spen/SPenSettingsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private updateState()V
    .locals 15

    const-wide/16 v12, 0x0

    const v14, 0x7f0a14c5

    const/4 v9, 0x0

    const/4 v8, 0x1

    const-string v7, "SPenSettingsMenu"

    const-string v10, "updateState() "

    invoke-static {v7, v10}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v10, p0, Lcom/android/settings/spen/SPenSettingsMenu;->mLossPreventionAlertSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v11, "pen_detachment_alert"

    invoke-static {v7, v11, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_3

    move v7, v8

    :goto_0
    invoke-virtual {v10, v7}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    invoke-static {}, Lcom/android/settings/Utils;->isSupportAddtionalFeedback()Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v10, p0, Lcom/android/settings/spen/SPenSettingsMenu;->mPenFeedbackSoundSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v11, "spen_feedback_sound"

    invoke-static {v7, v11, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_4

    move v7, v8

    :goto_1
    invoke-virtual {v10, v7}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    iget-object v10, p0, Lcom/android/settings/spen/SPenSettingsMenu;->mPenFeedbackHapticSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v11, "spen_feedback_haptic"

    invoke-static {v7, v11, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_5

    move v7, v8

    :goto_2
    invoke-virtual {v10, v7}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :cond_0
    iget-boolean v7, p0, Lcom/android/settings/spen/SPenSettingsMenu;->mSupportPenUsp10:Z

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/android/settings/spen/SPenSettingsMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v10, "pen_detached_time"

    invoke-static {v7, v10, v12, v13}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    cmp-long v7, v0, v12

    if-lez v7, :cond_6

    iget-object v7, p0, Lcom/android/settings/spen/SPenSettingsMenu;->mContext:Landroid/content/Context;

    invoke-static {v7}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v5

    const v7, 0x7f0a14f4

    new-array v10, v8, [Ljava/lang/Object;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/settings/spen/SPenSettingsMenu;->mContext:Landroid/content/Context;

    invoke-static {v12}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v12

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v9

    invoke-virtual {v4, v7, v10}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v7, p0, Lcom/android/settings/spen/SPenSettingsMenu;->mLossPreventionAlertSwitchPref:Landroid/preference/SwitchPreference;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_3
    iget-object v10, p0, Lcom/android/settings/spen/SPenSettingsMenu;->mSpenPointerSwtichPref:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v11, "pen_hovering_pointer"

    invoke-static {v7, v11, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_7

    move v7, v8

    :goto_4
    invoke-virtual {v10, v7}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    iget-object v10, p0, Lcom/android/settings/spen/SPenSettingsMenu;->mActionMemoOnOffScreenSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v11, "action_memo_on_off_screen"

    invoke-static {v7, v11, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_8

    move v7, v8

    :goto_5
    invoke-virtual {v10, v7}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v10, "pen_detachment_option"

    invoke-static {v7, v10, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    iget-object v7, p0, Lcom/android/settings/spen/SPenSettingsMenu;->mPenDetachOptionPref:Lcom/android/settings/notification/DropDownPreference;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v7, v10}, Lcom/android/settings/notification/DropDownPreference;->setSelectedValue(Ljava/lang/Object;)V

    iget-object v10, p0, Lcom/android/settings/spen/SPenSettingsMenu;->mDisablePenDetectionSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v11, "pen_detect_mode_disabled"

    invoke-static {v7, v11, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_9

    move v7, v8

    :goto_6
    invoke-virtual {v10, v7}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    invoke-virtual {p0}, Lcom/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v10, "pen_writing_buddy"

    invoke-static {v7, v10, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_a

    move v6, v8

    :goto_7
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v7

    const-string v10, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_NFC_HW_KEYBOARD"

    invoke-virtual {v7, v10}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/spen/SPenSettingsMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget v7, v7, Landroid/content/res/Configuration;->mobileKeyboardCovered:I

    if-ne v7, v8, :cond_b

    iget-object v7, p0, Lcom/android/settings/spen/SPenSettingsMenu;->mDirectPenInputPref:Landroid/preference/Preference;

    invoke-virtual {v7, v9}, Landroid/preference/Preference;->setEnabled(Z)V

    :cond_2
    :goto_8
    return-void

    :cond_3
    move v7, v9

    goto/16 :goto_0

    :cond_4
    move v7, v9

    goto/16 :goto_1

    :cond_5
    move v7, v9

    goto/16 :goto_2

    :cond_6
    iget-object v7, p0, Lcom/android/settings/spen/SPenSettingsMenu;->mLossPreventionAlertSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v4, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    :cond_7
    move v7, v9

    goto :goto_4

    :cond_8
    move v7, v9

    goto :goto_5

    :cond_9
    move v7, v9

    goto :goto_6

    :cond_a
    move v6, v9

    goto :goto_7

    :cond_b
    iget-object v7, p0, Lcom/android/settings/spen/SPenSettingsMenu;->mDirectPenInputPref:Landroid/preference/Preference;

    invoke-virtual {v7, v8}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_8
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 8

    const/4 v7, 0x0

    const-string v4, "SPenSettingsMenu"

    const-string v5, "onCreate() "

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Runtime;->gc()V

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/spen/SPenSettingsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/spen/SPenSettingsMenu;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/settings/spen/SPenSettingsMenu;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/settings/Utils;->isSupportPenUsp10(Landroid/content/Context;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/settings/spen/SPenSettingsMenu;->mSupportPenUsp10:Z

    const v4, 0x7f07006f

    invoke-virtual {p0, v4}, Lcom/android/settings/spen/SPenSettingsMenu;->addPreferencesFromResource(I)V

    const-string v4, "key_air_button"

    invoke-virtual {p0, v4}, Lcom/android/settings/spen/SPenSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/spen/SPenSettingsMenu;->mAirCommandPref:Landroid/preference/Preference;

    const-string v4, "pen_air_view"

    invoke-virtual {p0, v4}, Lcom/android/settings/spen/SPenSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/spen/SPenSettingsMenu;->mPenAirViewPref:Landroid/preference/Preference;

    const-string v4, "key_spen_pointer"

    invoke-virtual {p0, v4}, Lcom/android/settings/spen/SPenSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/spen/SPenSettingsMenu;->mSpenPointerPref:Landroid/preference/Preference;

    const-string v4, "key_writing_buddy"

    invoke-virtual {p0, v4}, Lcom/android/settings/spen/SPenSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/spen/SPenSettingsMenu;->mDirectPenInputPref:Landroid/preference/Preference;

    const-string v4, "key_spen_pointer_switch"

    invoke-virtual {p0, v4}, Lcom/android/settings/spen/SPenSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/SwitchPreference;

    iput-object v4, p0, Lcom/android/settings/spen/SPenSettingsMenu;->mSpenPointerSwtichPref:Landroid/preference/SwitchPreference;

    iget-object v4, p0, Lcom/android/settings/spen/SPenSettingsMenu;->mSpenPointerSwtichPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v4, v7}, Landroid/preference/SwitchPreference;->setPersistent(Z)V

    iget-object v4, p0, Lcom/android/settings/spen/SPenSettingsMenu;->mSpenPointerSwtichPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v4, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v4, "loss_prevention_alert"

    invoke-virtual {p0, v4}, Lcom/android/settings/spen/SPenSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/SwitchPreference;

    iput-object v4, p0, Lcom/android/settings/spen/SPenSettingsMenu;->mLossPreventionAlertSwitchPref:Landroid/preference/SwitchPreference;

    iget-object v4, p0, Lcom/android/settings/spen/SPenSettingsMenu;->mLossPreventionAlertSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v4, v7}, Landroid/preference/SwitchPreference;->setPersistent(Z)V

    iget-object v4, p0, Lcom/android/settings/spen/SPenSettingsMenu;->mLossPreventionAlertSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v4, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v4, "action_memo_on_off_screen"

    invoke-virtual {p0, v4}, Lcom/android/settings/spen/SPenSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/SwitchPreference;

    iput-object v4, p0, Lcom/android/settings/spen/SPenSettingsMenu;->mActionMemoOnOffScreenSwitchPref:Landroid/preference/SwitchPreference;

    iget-object v4, p0, Lcom/android/settings/spen/SPenSettingsMenu;->mActionMemoOnOffScreenSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v4, v7}, Landroid/preference/SwitchPreference;->setPersistent(Z)V

    iget-object v4, p0, Lcom/android/settings/spen/SPenSettingsMenu;->mActionMemoOnOffScreenSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v4, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v4, "battery_saving"

    invoke-virtual {p0, v4}, Lcom/android/settings/spen/SPenSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/SwitchPreference;

    iput-object v4, p0, Lcom/android/settings/spen/SPenSettingsMenu;->mDisablePenDetectionSwitchPref:Landroid/preference/SwitchPreference;

    iget-object v4, p0, Lcom/android/settings/spen/SPenSettingsMenu;->mDisablePenDetectionSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v4, v7}, Landroid/preference/SwitchPreference;->setPersistent(Z)V

    iget-object v4, p0, Lcom/android/settings/spen/SPenSettingsMenu;->mDisablePenDetectionSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v4, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v4, "key_additional_feedback_pen_sound"

    invoke-virtual {p0, v4}, Lcom/android/settings/spen/SPenSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/SwitchPreference;

    iput-object v4, p0, Lcom/android/settings/spen/SPenSettingsMenu;->mPenFeedbackSoundSwitchPref:Landroid/preference/SwitchPreference;

    iget-object v4, p0, Lcom/android/settings/spen/SPenSettingsMenu;->mPenFeedbackSoundSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v4, v7}, Landroid/preference/SwitchPreference;->setPersistent(Z)V

    iget-object v4, p0, Lcom/android/settings/spen/SPenSettingsMenu;->mPenFeedbackSoundSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v4, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v4, "key_additional_feedback_pen_haptic"

    invoke-virtual {p0, v4}, Lcom/android/settings/spen/SPenSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/SwitchPreference;

    iput-object v4, p0, Lcom/android/settings/spen/SPenSettingsMenu;->mPenFeedbackHapticSwitchPref:Landroid/preference/SwitchPreference;

    iget-object v4, p0, Lcom/android/settings/spen/SPenSettingsMenu;->mPenFeedbackHapticSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v4, v7}, Landroid/preference/SwitchPreference;->setPersistent(Z)V

    iget-object v4, p0, Lcom/android/settings/spen/SPenSettingsMenu;->mPenFeedbackHapticSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v4, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v4, "pen_detachment_option_list"

    invoke-virtual {p0, v4}, Lcom/android/settings/spen/SPenSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/android/settings/notification/DropDownPreference;

    iput-object v4, p0, Lcom/android/settings/spen/SPenSettingsMenu;->mPenDetachOptionPref:Lcom/android/settings/notification/DropDownPreference;

    iget-object v4, p0, Lcom/android/settings/spen/SPenSettingsMenu;->mPenDetachOptionPref:Lcom/android/settings/notification/DropDownPreference;

    invoke-virtual {v4, p0}, Lcom/android/settings/notification/DropDownPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-boolean v4, p0, Lcom/android/settings/spen/SPenSettingsMenu;->mSupportPenUsp10:Z

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/settings/spen/SPenSettingsMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/spen/SPenSettingsMenu;->mPenDetachOptionPref:Lcom/android/settings/notification/DropDownPreference;

    const v5, 0x7f0a14d2

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/settings/notification/DropDownPreference;->addItem(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v4, p0, Lcom/android/settings/spen/SPenSettingsMenu;->mPenDetachOptionPref:Lcom/android/settings/notification/DropDownPreference;

    const v5, 0x7f0a14d1

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/settings/notification/DropDownPreference;->addItem(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v4, p0, Lcom/android/settings/spen/SPenSettingsMenu;->mPenDetachOptionPref:Lcom/android/settings/notification/DropDownPreference;

    const v5, 0x7f0a14d0

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/settings/notification/DropDownPreference;->addItem(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    iget-object v4, p0, Lcom/android/settings/spen/SPenSettingsMenu;->mPenDetachOptionPref:Lcom/android/settings/notification/DropDownPreference;

    new-instance v5, Lcom/android/settings/spen/SPenSettingsMenu$1;

    invoke-direct {v5, p0}, Lcom/android/settings/spen/SPenSettingsMenu$1;-><init>(Lcom/android/settings/spen/SPenSettingsMenu;)V

    invoke-virtual {v4, v5}, Lcom/android/settings/notification/DropDownPreference;->setCallback(Lcom/android/settings/notification/DropDownPreference$Callback;)V

    iget-object v4, p0, Lcom/android/settings/spen/SPenSettingsMenu;->mContext:Landroid/content/Context;

    const-string v5, "com.sec.android.app.SPenKeeper"

    invoke-static {v4, v5}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/spen/SPenSettingsMenu;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/spen/SPenSettingsMenu;->mLossPreventionAlertSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_1
    invoke-static {}, Lcom/android/settings/Utils;->isSupportAddtionalFeedback()Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {p0}, Lcom/android/settings/spen/SPenSettingsMenu;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    const-string v5, "Additional_feedback_category"

    invoke-virtual {p0, v5}, Lcom/android/settings/spen/SPenSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    invoke-virtual {p0}, Lcom/android/settings/spen/SPenSettingsMenu;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    const-string v5, "key_additional_feedback_pen_sound"

    invoke-virtual {p0, v5}, Lcom/android/settings/spen/SPenSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    invoke-virtual {p0}, Lcom/android/settings/spen/SPenSettingsMenu;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    const-string v5, "key_additional_feedback_pen_haptic"

    invoke-virtual {p0, v5}, Lcom/android/settings/spen/SPenSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_2
    :goto_0
    iget-boolean v4, p0, Lcom/android/settings/spen/SPenSettingsMenu;->mSupportPenUsp10:Z

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/settings/spen/SPenSettingsMenu;->mAirCommandPref:Landroid/preference/Preference;

    const-class v5, Lcom/android/settings/spen/PenAirCmdSettingsMenu;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setFragment(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settings/spen/SPenSettingsMenu;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    const-string v5, "key_spen_pointer"

    invoke-virtual {p0, v5}, Lcom/android/settings/spen/SPenSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :goto_1
    return-void

    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/spen/SPenSettingsMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e00e2

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :goto_2
    array-length v4, v0

    if-ge v1, v4, :cond_0

    iget-object v4, p0, Lcom/android/settings/spen/SPenSettingsMenu;->mPenDetachOptionPref:Lcom/android/settings/notification/DropDownPreference;

    aget-object v5, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/settings/notification/DropDownPreference;->addItem(Ljava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    iget-object v4, p0, Lcom/android/settings/spen/SPenSettingsMenu;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/settings/Utils;->hasHaptic(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v4

    const-string v5, "SEC_FLOATING_FEATURE_FRAMEWORK_SUPPORT_VIBETONZ"

    invoke-virtual {v4, v5}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    :cond_5
    invoke-virtual {p0}, Lcom/android/settings/spen/SPenSettingsMenu;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    const-string v5, "key_additional_feedback_pen_haptic"

    invoke-virtual {p0, v5}, Lcom/android/settings/spen/SPenSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0

    :cond_6
    iget-object v4, p0, Lcom/android/settings/spen/SPenSettingsMenu;->mAirCommandPref:Landroid/preference/Preference;

    const-class v5, Lcom/android/settings/spen/AirButtonHelp;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setFragment(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settings/spen/SPenSettingsMenu;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    const-string v5, "action_memo_on_off_screen"

    invoke-virtual {p0, v5}, Lcom/android/settings/spen/SPenSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    invoke-virtual {p0}, Lcom/android/settings/spen/SPenSettingsMenu;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    const-string v5, "key_spen_pointer_switch"

    invoke-virtual {p0, v5}, Lcom/android/settings/spen/SPenSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_1
.end method

.method public onPause()V
    .locals 2

    const-string v0, "SPenSettingsMenu"

    const-string v1, "onPause() "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    iget-boolean v0, p0, Lcom/android/settings/spen/SPenSettingsMenu;->mSupportPenUsp10:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/spen/SPenSettingsMenu;->mPenDetachObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 8

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v2, "battery_saving"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p0}, Lcom/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "pen_detect_mode_disabled"

    if-eqz v1, :cond_1

    move v2, v3

    :goto_0
    invoke-static {v5, v6, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    if-eqz v1, :cond_2

    move v2, v3

    :goto_1
    invoke-static {v2}, Lcom/sec/android/hardware/SecHardwareInterface;->setEPenSavingmode(I)Z

    const-string v2, "SPenSettingsMenu"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "battery saving : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "pen_detect_mode_disabled"

    invoke-static {v6, v7, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_2
    return v3

    :cond_1
    move v2, v4

    goto :goto_0

    :cond_2
    move v2, v4

    goto :goto_1

    :cond_3
    const-string v2, "key_spen_pointer_switch"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p0}, Lcom/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "pen_hovering_pointer"

    if-eqz v1, :cond_4

    move v2, v3

    :goto_3
    invoke-static {v5, v6, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v2, "SPenSettingsMenu"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Pointer : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "pen_hovering_pointer"

    invoke-static {v6, v7, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_4
    move v2, v4

    goto :goto_3

    :cond_5
    const-string v2, "loss_prevention_alert"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p0}, Lcom/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "pen_detachment_alert"

    if-eqz v1, :cond_6

    move v2, v3

    :goto_4
    invoke-static {v5, v6, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-direct {p0, v1}, Lcom/android/settings/spen/SPenSettingsMenu;->sendLossPreventionAlert(Z)V

    const-string v2, "SPenSettingsMenu"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Loss prevention alert : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "pen_detachment_alert"

    invoke-static {v6, v7, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_6
    move v2, v4

    goto :goto_4

    :cond_7
    const-string v2, "action_memo_on_off_screen"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p0}, Lcom/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "action_memo_on_off_screen"

    if-eqz v1, :cond_8

    move v2, v3

    :goto_5
    invoke-static {v5, v6, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v2, "SPenSettingsMenu"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Action Memo On off Screen : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "action_memo_on_off_screen"

    invoke-static {v6, v7, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_8
    move v2, v4

    goto :goto_5

    :cond_9
    const-string v2, "key_additional_feedback_pen_sound"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p0}, Lcom/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "spen_feedback_sound"

    if-eqz v1, :cond_b

    move v2, v3

    :goto_6
    invoke-static {v5, v6, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-boolean v2, p0, Lcom/android/settings/spen/SPenSettingsMenu;->mSupportPenUsp10:Z

    if-eqz v2, :cond_a

    invoke-virtual {p0}, Lcom/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "pen_detachment_notification"

    if-eqz v1, :cond_c

    const-string v2, "/system/media/audio/ui/Pen_att_noti1.ogg,/system/media/audio/ui/Pen_det_noti1.ogg"

    :goto_7
    invoke-static {v5, v6, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_a
    const-string v2, "SPenSettingsMenu"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "pen additional feedback sound : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "spen_feedback_sound"

    invoke-static {v6, v7, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_b
    move v2, v4

    goto :goto_6

    :cond_c
    sget-object v2, Lcom/android/settings/spen/SPenSettingsMenu;->PEN_NOTIFICATION_OFF:Ljava/lang/String;

    goto :goto_7

    :cond_d
    const-string v2, "key_additional_feedback_pen_haptic"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p0}, Lcom/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "spen_feedback_haptic"

    if-eqz v1, :cond_f

    move v2, v3

    :goto_8
    invoke-static {v5, v6, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-boolean v2, p0, Lcom/android/settings/spen/SPenSettingsMenu;->mSupportPenUsp10:Z

    if-eqz v2, :cond_e

    invoke-virtual {p0}, Lcom/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "pen_attach_detach_vibration"

    if-eqz v1, :cond_10

    move v2, v3

    :goto_9
    invoke-static {v5, v6, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_e
    const-string v2, "SPenSettingsMenu"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "pen additional feedback haptic : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "spen_feedback_haptic"

    invoke-static {v6, v7, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_f
    move v2, v4

    goto :goto_8

    :cond_10
    move v2, v4

    goto :goto_9
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "key_air_button"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/spen/SPenSettingsMenu;->mContext:Landroid/content/Context;

    const-string v2, "com.android.settings"

    const-string v3, "SEAC"

    invoke-static {v1, v2, v3}, Lcom/android/settings/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    return v1
.end method

.method public onResume()V
    .locals 7

    const/4 v6, 0x1

    const v1, 0x7f0a0e2d

    const/4 v5, 0x0

    const v2, 0x7f0a0e2e

    const-string v0, "SPenSettingsMenu"

    const-string v3, "onResume() "

    invoke-static {v0, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    invoke-direct {p0}, Lcom/android/settings/spen/SPenSettingsMenu;->updateState()V

    iget-boolean v0, p0, Lcom/android/settings/spen/SPenSettingsMenu;->mSupportPenUsp10:Z

    if-nez v0, :cond_0

    iget-object v3, p0, Lcom/android/settings/spen/SPenSettingsMenu;->mAirCommandPref:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "air_button_onoff"

    invoke-static {v0, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/preference/Preference;->setSummary(I)V

    iget-object v3, p0, Lcom/android/settings/spen/SPenSettingsMenu;->mSpenPointerPref:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "pen_hovering_pointer"

    invoke-static {v0, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/preference/Preference;->setSummary(I)V

    :cond_0
    iget-object v3, p0, Lcom/android/settings/spen/SPenSettingsMenu;->mPenAirViewPref:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "pen_hovering"

    invoke-static {v0, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/preference/Preference;->setSummary(I)V

    invoke-virtual {p0}, Lcom/android/settings/spen/SPenSettingsMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->mobileKeyboardCovered:I

    if-ne v0, v6, :cond_5

    iget-object v0, p0, Lcom/android/settings/spen/SPenSettingsMenu;->mDirectPenInputPref:Landroid/preference/Preference;

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setSummary(I)V

    :goto_3
    iget-boolean v0, p0, Lcom/android/settings/spen/SPenSettingsMenu;->mSupportPenUsp10:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "pen_detached_time"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/spen/SPenSettingsMenu;->mPenDetachObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v6, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_1
    return-void

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_1

    :cond_4
    move v0, v2

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/android/settings/spen/SPenSettingsMenu;->mDirectPenInputPref:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "pen_writing_buddy"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_6

    :goto_4
    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_3

    :cond_6
    move v1, v2

    goto :goto_4
.end method
