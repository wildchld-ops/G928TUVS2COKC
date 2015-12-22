.class Lcom/android/settings/notification/ZenModeSettings$TimePickerPreference;
.super Landroid/preference/Preference;
.source "ZenModeSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/ZenModeSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TimePickerPreference"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/notification/ZenModeSettings$TimePickerPreference$Callback;,
        Lcom/android/settings/notification/ZenModeSettings$TimePickerPreference$TimePickerFragment;
    }
.end annotation


# instance fields
.field private mCallback:Lcom/android/settings/notification/ZenModeSettings$TimePickerPreference$Callback;

.field private final mContext:Landroid/content/Context;

.field private mHourOfDay:I

.field private mMinute:I

.field private mSummaryFormat:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/FragmentManager;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/settings/notification/ZenModeSettings$TimePickerPreference;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/ZenModeSettings$TimePickerPreference;->setPersistent(Z)V

    new-instance v0, Lcom/android/settings/notification/ZenModeSettings$TimePickerPreference$1;

    invoke-direct {v0, p0, p2}, Lcom/android/settings/notification/ZenModeSettings$TimePickerPreference$1;-><init>(Lcom/android/settings/notification/ZenModeSettings$TimePickerPreference;Landroid/app/FragmentManager;)V

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/ZenModeSettings$TimePickerPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/settings/notification/ZenModeSettings$TimePickerPreference;)I
    .locals 1

    iget v0, p0, Lcom/android/settings/notification/ZenModeSettings$TimePickerPreference;->mHourOfDay:I

    return v0
.end method

.method static synthetic access$2100(Lcom/android/settings/notification/ZenModeSettings$TimePickerPreference;)I
    .locals 1

    iget v0, p0, Lcom/android/settings/notification/ZenModeSettings$TimePickerPreference;->mMinute:I

    return v0
.end method

.method private updateSummary()V
    .locals 6

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/16 v2, 0xb

    iget v3, p0, Lcom/android/settings/notification/ZenModeSettings$TimePickerPreference;->mHourOfDay:I

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0xc

    iget v3, p0, Lcom/android/settings/notification/ZenModeSettings$TimePickerPreference;->mMinute:I

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->set(II)V

    iget-object v2, p0, Lcom/android/settings/notification/ZenModeSettings$TimePickerPreference;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/notification/ZenModeSettings$TimePickerPreference;->mSummaryFormat:I

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/notification/ZenModeSettings$TimePickerPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/notification/ZenModeSettings$TimePickerPreference;->mSummaryFormat:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/settings/notification/ZenModeSettings$TimePickerPreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public setCallback(Lcom/android/settings/notification/ZenModeSettings$TimePickerPreference$Callback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/notification/ZenModeSettings$TimePickerPreference;->mCallback:Lcom/android/settings/notification/ZenModeSettings$TimePickerPreference$Callback;

    return-void
.end method

.method public setSummaryFormat(I)V
    .locals 0

    iput p1, p0, Lcom/android/settings/notification/ZenModeSettings$TimePickerPreference;->mSummaryFormat:I

    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeSettings$TimePickerPreference;->updateSummary()V

    return-void
.end method

.method public setTime(II)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/notification/ZenModeSettings$TimePickerPreference;->mCallback:Lcom/android/settings/notification/ZenModeSettings$TimePickerPreference$Callback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/notification/ZenModeSettings$TimePickerPreference;->mCallback:Lcom/android/settings/notification/ZenModeSettings$TimePickerPreference$Callback;

    invoke-interface {v0, p1, p2}, Lcom/android/settings/notification/ZenModeSettings$TimePickerPreference$Callback;->onSetTime(II)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Lcom/android/settings/notification/ZenModeSettings$TimePickerPreference;->mHourOfDay:I

    iput p2, p0, Lcom/android/settings/notification/ZenModeSettings$TimePickerPreference;->mMinute:I

    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeSettings$TimePickerPreference;->updateSummary()V

    goto :goto_0
.end method
