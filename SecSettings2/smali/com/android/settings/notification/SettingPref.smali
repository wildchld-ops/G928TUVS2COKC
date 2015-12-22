.class public Lcom/android/settings/notification/SettingPref;
.super Ljava/lang/Object;
.source "SettingPref.java"


# static fields
.field private static final SOUNDEFFECT:[Ljava/lang/String;


# instance fields
.field protected final mDefault:I

.field protected mDropDown:Lcom/android/settings/notification/DropDownPreference;

.field private mEnabledBT:I

.field private mEnabledHeadset:I

.field private mEnabledK2HD:Z

.field private mEnabledSoundAlive:Z

.field private mEnabledTubeAmp:Z

.field private final mKey:Ljava/lang/String;

.field protected final mSetting:Ljava/lang/String;

.field protected mTwoState:Landroid/preference/TwoStatePreference;

.field protected final mType:I

.field private final mUri:Landroid/net/Uri;

.field private final mValues:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "sound_alive"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "k2hd"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "tube_amp"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings/notification/SettingPref;->SOUNDEFFECT:[Ljava/lang/String;

    return-void
.end method

.method public varargs constructor <init>(ILjava/lang/String;Ljava/lang/String;I[I)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/android/settings/notification/SettingPref;->mEnabledHeadset:I

    iput v0, p0, Lcom/android/settings/notification/SettingPref;->mEnabledBT:I

    iput-boolean v0, p0, Lcom/android/settings/notification/SettingPref;->mEnabledSoundAlive:Z

    iput-boolean v0, p0, Lcom/android/settings/notification/SettingPref;->mEnabledK2HD:Z

    iput-boolean v0, p0, Lcom/android/settings/notification/SettingPref;->mEnabledTubeAmp:Z

    iput p1, p0, Lcom/android/settings/notification/SettingPref;->mType:I

    iput-object p2, p0, Lcom/android/settings/notification/SettingPref;->mKey:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/settings/notification/SettingPref;->mSetting:Ljava/lang/String;

    iput p4, p0, Lcom/android/settings/notification/SettingPref;->mDefault:I

    iput-object p5, p0, Lcom/android/settings/notification/SettingPref;->mValues:[I

    iget v0, p0, Lcom/android/settings/notification/SettingPref;->mType:I

    iget-object v1, p0, Lcom/android/settings/notification/SettingPref;->mSetting:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/settings/notification/SettingPref;->getUriFor(ILjava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/SettingPref;->mUri:Landroid/net/Uri;

    return-void
.end method

.method static synthetic access$000()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/settings/notification/SettingPref;->SOUNDEFFECT:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/notification/SettingPref;)I
    .locals 1

    iget v0, p0, Lcom/android/settings/notification/SettingPref;->mEnabledHeadset:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/settings/notification/SettingPref;)I
    .locals 1

    iget v0, p0, Lcom/android/settings/notification/SettingPref;->mEnabledBT:I

    return v0
.end method

.method protected static getInt(ILandroid/content/ContentResolver;Ljava/lang/String;I)I
    .locals 1

    packed-switch p0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :pswitch_0
    invoke-static {p1, p2, p3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    :goto_0
    return v0

    :pswitch_1
    invoke-static {p1, p2, p3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static getUriFor(ILjava/lang/String;)Landroid/net/Uri;
    .locals 1

    packed-switch p0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :pswitch_0
    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_1
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected static putInt(ILandroid/content/ContentResolver;Ljava/lang/String;I)Z
    .locals 1

    packed-switch p0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :pswitch_0
    invoke-static {p1, p2, p3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    :goto_0
    return v0

    :pswitch_1
    invoke-static {p1, p2, p3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method protected getCaption(Landroid/content/res/Resources;I)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getEnabledK2HD()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/notification/SettingPref;->mEnabledK2HD:Z

    return v0
.end method

.method public getEnabledSoundAlive()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/notification/SettingPref;->mEnabledSoundAlive:Z

    return v0
.end method

.method public getEnabledTubeAmp()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/notification/SettingPref;->mEnabledTubeAmp:Z

    return v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/notification/SettingPref;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/notification/SettingPref;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public init(Lcom/android/settings/SettingsPreferenceFragment;)Landroid/preference/Preference;
    .locals 9

    invoke-virtual {p1}, Lcom/android/settings/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/settings/SettingsPreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/notification/SettingPref;->mKey:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/settings/notification/SettingPref;->isApplicable(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {p1}, Lcom/android/settings/SettingsPreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    const/4 v4, 0x0

    :cond_0
    instance-of v6, v4, Landroid/preference/TwoStatePreference;

    if-eqz v6, :cond_2

    move-object v6, v4

    check-cast v6, Landroid/preference/TwoStatePreference;

    iput-object v6, p0, Lcom/android/settings/notification/SettingPref;->mTwoState:Landroid/preference/TwoStatePreference;

    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/settings/notification/SettingPref;->update(Landroid/content/Context;)V

    iget-object v6, p0, Lcom/android/settings/notification/SettingPref;->mTwoState:Landroid/preference/TwoStatePreference;

    if-eqz v6, :cond_3

    new-instance v6, Lcom/android/settings/notification/SettingPref$1;

    invoke-direct {v6, p0, v1}, Lcom/android/settings/notification/SettingPref$1;-><init>(Lcom/android/settings/notification/SettingPref;Landroid/content/Context;)V

    invoke-virtual {v4, v6}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v6, p0, Lcom/android/settings/notification/SettingPref;->mTwoState:Landroid/preference/TwoStatePreference;

    :goto_0
    return-object v6

    :cond_2
    instance-of v6, v4, Lcom/android/settings/notification/DropDownPreference;

    if-eqz v6, :cond_1

    move-object v6, v4

    check-cast v6, Lcom/android/settings/notification/DropDownPreference;

    iput-object v6, p0, Lcom/android/settings/notification/SettingPref;->mDropDown:Lcom/android/settings/notification/DropDownPreference;

    iget-object v0, p0, Lcom/android/settings/notification/SettingPref;->mValues:[I

    array-length v3, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_1

    aget v5, v0, v2

    iget-object v6, p0, Lcom/android/settings/notification/SettingPref;->mDropDown:Lcom/android/settings/notification/DropDownPreference;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {p0, v7, v5}, Lcom/android/settings/notification/SettingPref;->getCaption(Landroid/content/res/Resources;I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/settings/notification/DropDownPreference;->addItem(Ljava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    iget-object v6, p0, Lcom/android/settings/notification/SettingPref;->mDropDown:Lcom/android/settings/notification/DropDownPreference;

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/settings/notification/SettingPref;->mDropDown:Lcom/android/settings/notification/DropDownPreference;

    new-instance v7, Lcom/android/settings/notification/SettingPref$2;

    invoke-direct {v7, p0, v1}, Lcom/android/settings/notification/SettingPref$2;-><init>(Lcom/android/settings/notification/SettingPref;Landroid/content/Context;)V

    invoke-virtual {v6, v7}, Lcom/android/settings/notification/DropDownPreference;->setCallback(Lcom/android/settings/notification/DropDownPreference$Callback;)V

    iget-object v6, p0, Lcom/android/settings/notification/SettingPref;->mDropDown:Lcom/android/settings/notification/DropDownPreference;

    goto :goto_0

    :cond_4
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public isApplicable(Landroid/content/Context;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public setBTPlugged(I)V
    .locals 0

    iput p1, p0, Lcom/android/settings/notification/SettingPref;->mEnabledBT:I

    return-void
.end method

.method public setHeadsetPlugged(I)V
    .locals 0

    iput p1, p0, Lcom/android/settings/notification/SettingPref;->mEnabledHeadset:I

    return-void
.end method

.method protected setSetting(Landroid/content/Context;I)Z
    .locals 3

    iget v0, p0, Lcom/android/settings/notification/SettingPref;->mType:I

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/notification/SettingPref;->mSetting:Ljava/lang/String;

    invoke-static {v0, v1, v2, p2}, Lcom/android/settings/notification/SettingPref;->putInt(ILandroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public update(Landroid/content/Context;)V
    .locals 10

    const/4 v6, 0x0

    const/4 v5, 0x1

    iget v4, p0, Lcom/android/settings/notification/SettingPref;->mType:I

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/notification/SettingPref;->mSetting:Ljava/lang/String;

    iget v9, p0, Lcom/android/settings/notification/SettingPref;->mDefault:I

    invoke-static {v4, v7, v8, v9}, Lcom/android/settings/notification/SettingPref;->getInt(ILandroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    iget-object v4, p0, Lcom/android/settings/notification/SettingPref;->mTwoState:Landroid/preference/TwoStatePreference;

    if-eqz v4, :cond_b

    iget-object v7, p0, Lcom/android/settings/notification/SettingPref;->mTwoState:Landroid/preference/TwoStatePreference;

    if-eqz v3, :cond_1

    move v4, v5

    :goto_0
    invoke-virtual {v7, v4}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    const/4 v0, 0x0

    const/4 v0, 0x0

    :goto_1
    const/4 v4, 0x3

    if-ge v0, v4, :cond_0

    sget-object v4, Lcom/android/settings/notification/SettingPref;->SOUNDEFFECT:[Ljava/lang/String;

    aget-object v4, v4, v0

    iget-object v7, p0, Lcom/android/settings/notification/SettingPref;->mTwoState:Landroid/preference/TwoStatePreference;

    invoke-virtual {v7}, Landroid/preference/TwoStatePreference;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    iget v4, p0, Lcom/android/settings/notification/SettingPref;->mEnabledHeadset:I

    if-eq v4, v5, :cond_4

    iget v4, p0, Lcom/android/settings/notification/SettingPref;->mEnabledBT:I

    if-eq v4, v5, :cond_4

    const-string v4, "2"

    const-string v7, "1"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/android/settings/notification/SettingPref;->mTwoState:Landroid/preference/TwoStatePreference;

    invoke-virtual {v4, v6}, Landroid/preference/TwoStatePreference;->setEnabled(Z)V

    :goto_2
    sget-object v4, Lcom/android/settings/notification/SettingPref;->SOUNDEFFECT:[Ljava/lang/String;

    aget-object v4, v4, v6

    iget-object v6, p0, Lcom/android/settings/notification/SettingPref;->mTwoState:Landroid/preference/TwoStatePreference;

    invoke-virtual {v6}, Landroid/preference/TwoStatePreference;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/android/settings/notification/SettingPref;->mTwoState:Landroid/preference/TwoStatePreference;

    invoke-virtual {v4}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/settings/notification/SettingPref;->mEnabledSoundAlive:Z

    :cond_0
    :goto_3
    return-void

    :cond_1
    move v4, v6

    goto :goto_0

    :cond_2
    sget-object v4, Lcom/android/settings/notification/SettingPref;->SOUNDEFFECT:[Ljava/lang/String;

    aget-object v4, v4, v6

    iget-object v7, p0, Lcom/android/settings/notification/SettingPref;->mTwoState:Landroid/preference/TwoStatePreference;

    invoke-virtual {v7}, Landroid/preference/TwoStatePreference;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/settings/notification/SettingPref;->mTwoState:Landroid/preference/TwoStatePreference;

    invoke-virtual {v4, v5}, Landroid/preference/TwoStatePreference;->setEnabled(Z)V

    goto :goto_2

    :cond_3
    iget-object v4, p0, Lcom/android/settings/notification/SettingPref;->mTwoState:Landroid/preference/TwoStatePreference;

    invoke-virtual {v4, v6}, Landroid/preference/TwoStatePreference;->setEnabled(Z)V

    goto :goto_2

    :cond_4
    iget v4, p0, Lcom/android/settings/notification/SettingPref;->mEnabledBT:I

    if-ne v4, v5, :cond_7

    sget-object v4, Lcom/android/settings/notification/SettingPref;->SOUNDEFFECT:[Ljava/lang/String;

    aget-object v4, v4, v5

    iget-object v7, p0, Lcom/android/settings/notification/SettingPref;->mTwoState:Landroid/preference/TwoStatePreference;

    invoke-virtual {v7}, Landroid/preference/TwoStatePreference;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "bluetooth_a2dp_uhqa_support"

    invoke-static {v4, v7, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "bluetooth_a2dp_uhqa_mode"

    invoke-static {v4, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v1, v5, :cond_5

    if-ne v2, v5, :cond_5

    iget-object v4, p0, Lcom/android/settings/notification/SettingPref;->mTwoState:Landroid/preference/TwoStatePreference;

    invoke-virtual {v4, v5}, Landroid/preference/TwoStatePreference;->setEnabled(Z)V

    goto :goto_2

    :cond_5
    iget-object v4, p0, Lcom/android/settings/notification/SettingPref;->mTwoState:Landroid/preference/TwoStatePreference;

    invoke-virtual {v4, v6}, Landroid/preference/TwoStatePreference;->setEnabled(Z)V

    goto :goto_2

    :cond_6
    iget-object v4, p0, Lcom/android/settings/notification/SettingPref;->mTwoState:Landroid/preference/TwoStatePreference;

    invoke-virtual {v4, v5}, Landroid/preference/TwoStatePreference;->setEnabled(Z)V

    goto :goto_2

    :cond_7
    iget-object v4, p0, Lcom/android/settings/notification/SettingPref;->mTwoState:Landroid/preference/TwoStatePreference;

    invoke-virtual {v4, v5}, Landroid/preference/TwoStatePreference;->setEnabled(Z)V

    goto :goto_2

    :cond_8
    sget-object v4, Lcom/android/settings/notification/SettingPref;->SOUNDEFFECT:[Ljava/lang/String;

    aget-object v4, v4, v5

    iget-object v5, p0, Lcom/android/settings/notification/SettingPref;->mTwoState:Landroid/preference/TwoStatePreference;

    invoke-virtual {v5}, Landroid/preference/TwoStatePreference;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    iget-object v4, p0, Lcom/android/settings/notification/SettingPref;->mTwoState:Landroid/preference/TwoStatePreference;

    invoke-virtual {v4}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/settings/notification/SettingPref;->mEnabledK2HD:Z

    goto :goto_3

    :cond_9
    sget-object v4, Lcom/android/settings/notification/SettingPref;->SOUNDEFFECT:[Ljava/lang/String;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    iget-object v5, p0, Lcom/android/settings/notification/SettingPref;->mTwoState:Landroid/preference/TwoStatePreference;

    invoke-virtual {v5}, Landroid/preference/TwoStatePreference;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/settings/notification/SettingPref;->mTwoState:Landroid/preference/TwoStatePreference;

    invoke-virtual {v4}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/settings/notification/SettingPref;->mEnabledTubeAmp:Z

    goto/16 :goto_3

    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    :cond_b
    iget-object v4, p0, Lcom/android/settings/notification/SettingPref;->mDropDown:Lcom/android/settings/notification/DropDownPreference;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/settings/notification/SettingPref;->mDropDown:Lcom/android/settings/notification/DropDownPreference;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/settings/notification/DropDownPreference;->setSelectedValue(Ljava/lang/Object;)V

    goto/16 :goto_3
.end method
