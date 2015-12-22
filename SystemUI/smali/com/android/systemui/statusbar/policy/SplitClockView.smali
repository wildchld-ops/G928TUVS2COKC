.class public Lcom/android/systemui/statusbar/policy/SplitClockView;
.super Landroid/widget/LinearLayout;
.source "SplitClockView.java"


# static fields
.field private static final SETUP_WIZARD_FINISHED:Ljava/lang/String; = "com.sec.android.app.secsetupwizard.SETUPWIZARD_COMPLETE"


# instance fields
.field private mAmPmView:Landroid/widget/TextClock;

.field private mAmPmViewKor:Landroid/widget/TextClock;

.field private mDateView:Landroid/widget/TextClock;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mTimeView:Landroid/widget/TextClock;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Lcom/android/systemui/statusbar/policy/SplitClockView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/SplitClockView$1;-><init>(Lcom/android/systemui/statusbar/policy/SplitClockView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/SplitClockView;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/policy/SplitClockView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/SplitClockView;->updatePatterns()V

    return-void
.end method

.method private static getAmPmPartEndIndex(Ljava/lang/String;Z)I
    .locals 10

    const/16 v9, 0x61

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz p1, :cond_7

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v5, :cond_c

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v9, :cond_2

    move v3, v6

    :goto_1
    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v4

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    if-nez v3, :cond_1

    if-eqz v4, :cond_3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    move v3, v7

    goto :goto_1

    :cond_3
    if-nez v2, :cond_5

    :cond_4
    :goto_2
    return v8

    :cond_5
    if-eqz v1, :cond_6

    add-int/lit8 v6, v2, -0x1

    :goto_3
    move v8, v6

    goto :goto_2

    :cond_6
    move v6, v8

    goto :goto_3

    :cond_7
    add-int/lit8 v2, v5, -0x1

    :goto_4
    if-ltz v2, :cond_c

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v9, :cond_a

    move v3, v6

    :goto_5
    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v4

    if-eqz v3, :cond_8

    const/4 v1, 0x1

    :cond_8
    if-nez v3, :cond_9

    if-eqz v4, :cond_b

    :cond_9
    add-int/lit8 v2, v2, -0x1

    goto :goto_4

    :cond_a
    move v3, v7

    goto :goto_5

    :cond_b
    add-int/lit8 v6, v5, -0x1

    if-eq v2, v6, :cond_4

    if-eqz v1, :cond_4

    add-int/lit8 v8, v2, 0x1

    goto :goto_2

    :cond_c
    if-eqz v1, :cond_d

    :goto_6
    move v8, v7

    goto :goto_2

    :cond_d
    move v7, v8

    goto :goto_6
.end method

.method private getDateFormat()Ljava/lang/String;
    .locals 15

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/16 v1, 0xd05

    const/16 v2, 0xa

    const/16 v3, 0x16

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/SplitClockView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/text/format/DateFormat;->getDateFormatForSetting(Landroid/content/Context;Ljava/lang/String;)Ljava/text/DateFormat;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/SplitClockView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "MM-dd-yyyy"

    invoke-static {v1, v2}, Landroid/text/format/DateFormat;->getDateFormatForSetting(Landroid/content/Context;Ljava/lang/String;)Ljava/text/DateFormat;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v13

    const-string v11, ""

    const-string v7, ""

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_0
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v9, v1, :cond_3

    invoke-virtual {v13, v9}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2f

    if-eq v1, v2, :cond_0

    invoke-virtual {v13, v9}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2d

    if-eq v1, v2, :cond_0

    invoke-virtual {v13, v9}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2e

    if-ne v1, v2, :cond_2

    :cond_0
    add-int/lit8 v8, v8, 0x1

    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_2
    packed-switch v8, :pswitch_data_0

    :goto_1
    const/4 v1, 0x2

    if-ne v8, v1, :cond_1

    :cond_3
    const-string v14, ""

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/SplitClockView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v1}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    const/4 v10, 0x1

    :goto_2
    invoke-virtual {v12, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v12, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ge v1, v2, :cond_6

    if-eqz v10, :cond_5

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/SplitClockView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0d0203

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    :goto_3
    return-object v14

    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v13, v9}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    goto :goto_1

    :pswitch_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v13, v9}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    :cond_4
    const/4 v10, 0x0

    goto :goto_2

    :cond_5
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/SplitClockView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0d0204

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    goto :goto_3

    :cond_6
    if-eqz v10, :cond_7

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/SplitClockView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0d0204

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    :goto_4
    goto :goto_3

    :cond_7
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/SplitClockView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0d0203

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    goto :goto_4

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getTimeFormatString(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v1}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/SplitClockView;->is24HourFormat(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Llibcore/icu/LocaleData;->timeFormat24:Ljava/lang/String;

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, v0, Llibcore/icu/LocaleData;->timeFormat12:Ljava/lang/String;

    goto :goto_0
.end method

.method private is24HourFormat(Landroid/content/Context;)Z
    .locals 8

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "time_12_24"

    const/4 v7, -0x2

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget-object v0, v5, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    const/4 v5, 0x1

    invoke-static {v5, v0}, Ljava/text/DateFormat;->getTimeInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v1

    instance-of v5, v1, Ljava/text/SimpleDateFormat;

    if-eqz v5, :cond_1

    move-object v3, v1

    check-cast v3, Ljava/text/SimpleDateFormat;

    invoke-virtual {v3}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object v2

    const/16 v5, 0x48

    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-ltz v5, :cond_0

    const-string v4, "24"

    :goto_0
    const-string v5, "24"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    :goto_1
    return v5

    :cond_0
    const-string v4, "12"

    goto :goto_0

    :cond_1
    const-string v4, "12"

    goto :goto_0

    :cond_2
    const-string v5, "24"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    goto :goto_1
.end method

.method private updatePatterns()V
    .locals 10

    const/16 v9, 0x8

    const/4 v8, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/SplitClockView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/systemui/statusbar/policy/SplitClockView;->getTimeFormatString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    const-string v5, "ko"

    invoke-virtual {v1, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "ja"

    invoke-virtual {v1, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_0
    const/4 v5, 0x1

    invoke-static {v2, v5}, Lcom/android/systemui/statusbar/policy/SplitClockView;->getAmPmPartEndIndex(Ljava/lang/String;Z)I

    move-result v3

    :goto_0
    const/4 v5, -0x1

    if-ne v3, v5, :cond_4

    move-object v4, v2

    const-string v0, ""

    const-string v5, "ko"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    move-object v4, v2

    const-string v0, ""

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/SplitClockView;->mAmPmViewKor:Landroid/widget/TextClock;

    invoke-virtual {v5, v9}, Landroid/widget/TextClock;->setVisibility(I)V

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/SplitClockView;->mAmPmView:Landroid/widget/TextClock;

    invoke-virtual {v5, v9}, Landroid/widget/TextClock;->setVisibility(I)V

    :goto_1
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/SplitClockView;->mTimeView:Landroid/widget/TextClock;

    invoke-virtual {v5, v4}, Landroid/widget/TextClock;->setFormat12Hour(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/SplitClockView;->mTimeView:Landroid/widget/TextClock;

    invoke-virtual {v5, v4}, Landroid/widget/TextClock;->setFormat24Hour(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/SplitClockView;->mAmPmView:Landroid/widget/TextClock;

    invoke-virtual {v5, v0}, Landroid/widget/TextClock;->setFormat12Hour(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/SplitClockView;->mAmPmView:Landroid/widget/TextClock;

    invoke-virtual {v5, v0}, Landroid/widget/TextClock;->setFormat24Hour(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/SplitClockView;->mDateView:Landroid/widget/TextClock;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/SplitClockView;->mDateView:Landroid/widget/TextClock;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/SplitClockView;->getDateFormat()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextClock;->setFormat12Hour(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/SplitClockView;->mDateView:Landroid/widget/TextClock;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/SplitClockView;->getDateFormat()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextClock;->setFormat24Hour(Ljava/lang/CharSequence;)V

    :cond_1
    return-void

    :cond_2
    invoke-static {v2, v8}, Lcom/android/systemui/statusbar/policy/SplitClockView;->getAmPmPartEndIndex(Ljava/lang/String;Z)I

    move-result v3

    goto :goto_0

    :cond_3
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/SplitClockView;->mAmPmViewKor:Landroid/widget/TextClock;

    invoke-virtual {v5, v9}, Landroid/widget/TextClock;->setVisibility(I)V

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/SplitClockView;->mAmPmView:Landroid/widget/TextClock;

    invoke-virtual {v5, v8}, Landroid/widget/TextClock;->setVisibility(I)V

    goto :goto_1

    :cond_4
    const-string v5, "ko"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {v2, v8, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/SplitClockView;->mAmPmViewKor:Landroid/widget/TextClock;

    invoke-virtual {v5, v8}, Landroid/widget/TextClock;->setVisibility(I)V

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/SplitClockView;->mAmPmView:Landroid/widget/TextClock;

    invoke-virtual {v5, v9}, Landroid/widget/TextClock;->setVisibility(I)V

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/SplitClockView;->mAmPmViewKor:Landroid/widget/TextClock;

    invoke-virtual {v5, v0}, Landroid/widget/TextClock;->setFormat12Hour(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/SplitClockView;->mAmPmViewKor:Landroid/widget/TextClock;

    invoke-virtual {v5, v0}, Landroid/widget/TextClock;->setFormat24Hour(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_5
    const-string v5, "ja"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    add-int/lit8 v5, v3, 0x1

    invoke-virtual {v2, v8, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v6, v3, 0x1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v2, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/SplitClockView;->mAmPmViewKor:Landroid/widget/TextClock;

    invoke-virtual {v5, v8}, Landroid/widget/TextClock;->setVisibility(I)V

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/SplitClockView;->mAmPmView:Landroid/widget/TextClock;

    invoke-virtual {v5, v9}, Landroid/widget/TextClock;->setVisibility(I)V

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/SplitClockView;->mAmPmViewKor:Landroid/widget/TextClock;

    invoke-virtual {v5, v0}, Landroid/widget/TextClock;->setFormat12Hour(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/SplitClockView;->mAmPmViewKor:Landroid/widget/TextClock;

    invoke-virtual {v5, v0}, Landroid/widget/TextClock;->setFormat24Hour(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_6
    const-string v5, "iw"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v8, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/SplitClockView;->mAmPmViewKor:Landroid/widget/TextClock;

    invoke-virtual {v5, v8}, Landroid/widget/TextClock;->setVisibility(I)V

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/SplitClockView;->mAmPmView:Landroid/widget/TextClock;

    invoke-virtual {v5, v9}, Landroid/widget/TextClock;->setVisibility(I)V

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/SplitClockView;->mAmPmViewKor:Landroid/widget/TextClock;

    invoke-virtual {v5, v0}, Landroid/widget/TextClock;->setFormat12Hour(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/SplitClockView;->mAmPmViewKor:Landroid/widget/TextClock;

    invoke-virtual {v5, v0}, Landroid/widget/TextClock;->setFormat24Hour(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_7
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/SplitClockView;->mAmPmView:Landroid/widget/TextClock;

    invoke-virtual {v5, v8}, Landroid/widget/TextClock;->setVisibility(I)V

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/SplitClockView;->mAmPmViewKor:Landroid/widget/TextClock;

    invoke-virtual {v5, v9}, Landroid/widget/TextClock;->setVisibility(I)V

    invoke-virtual {v2, v8, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 6

    const/4 v4, 0x0

    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.TIME_SET"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.DATE_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.sec.android.app.secsetupwizard.SETUPWIZARD_COMPLETE"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/SplitClockView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SplitClockView;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/SplitClockView;->updatePatterns()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/SplitClockView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SplitClockView;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    const/4 v1, 0x1

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v0, 0x7f0e03c1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/SplitClockView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextClock;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/SplitClockView;->mTimeView:Landroid/widget/TextClock;

    const v0, 0x7f0e03c2

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/SplitClockView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextClock;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/SplitClockView;->mAmPmView:Landroid/widget/TextClock;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SplitClockView;->mTimeView:Landroid/widget/TextClock;

    invoke-virtual {v0, v1}, Landroid/widget/TextClock;->setShowCurrentUserTime(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SplitClockView;->mAmPmView:Landroid/widget/TextClock;

    invoke-virtual {v0, v1}, Landroid/widget/TextClock;->setShowCurrentUserTime(Z)V

    const v0, 0x7f0e03c0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/SplitClockView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextClock;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/SplitClockView;->mAmPmViewKor:Landroid/widget/TextClock;

    const v0, 0x7f0e01a2

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/SplitClockView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextClock;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/SplitClockView;->mDateView:Landroid/widget/TextClock;

    return-void
.end method
