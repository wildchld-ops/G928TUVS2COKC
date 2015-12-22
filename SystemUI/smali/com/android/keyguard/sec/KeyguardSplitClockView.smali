.class public Lcom/android/keyguard/sec/KeyguardSplitClockView;
.super Landroid/widget/LinearLayout;
.source "KeyguardSplitClockView.java"


# static fields
.field private static final LEFT_MARGIN_AFTER_KOR_AMPM:I = -0x7

.field private static final MSG_DATE_ON_SETTINGS_CHANGED:I = 0x64

.field private static final MSG_SHOW_CLOCK_AND_DATE_SETTINGS_CHANGED:I = 0x65

.field private static final SETUP_WIZARD_FINISHED:Ljava/lang/String; = "com.sec.android.app.secsetupwizard.SETUPWIZARD_COMPLETE"

.field public static final THEME_APPLY:Ljava/lang/String; = "com.samsung.android.theme.themecenter.THEME_APPLY"


# instance fields
.field private mAmPmView:Landroid/widget/TextClock;

.field private mAmPmViewKor:Landroid/widget/TextClock;

.field private mContainer:Landroid/widget/LinearLayout;

.field private mDateSettingsObserver:Landroid/database/ContentObserver;

.field private mDateView:Landroid/widget/TextClock;

.field private final mHandler:Landroid/os/Handler;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mShowClockAndDateSettingsObserver:Landroid/database/ContentObserver;

.field private mTimeView:Landroid/widget/TextClock;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Lcom/android/keyguard/sec/KeyguardSplitClockView$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/KeyguardSplitClockView$1;-><init>(Lcom/android/keyguard/sec/KeyguardSplitClockView;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardSplitClockView;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/keyguard/sec/KeyguardSplitClockView$2;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/KeyguardSplitClockView$2;-><init>(Lcom/android/keyguard/sec/KeyguardSplitClockView;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardSplitClockView;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/sec/KeyguardSplitClockView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardSplitClockView;->updatePatterns()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/keyguard/sec/KeyguardSplitClockView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardSplitClockView;->updateChildView()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/keyguard/sec/KeyguardSplitClockView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardSplitClockView;->handleDateOnSettngsChanged()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/keyguard/sec/KeyguardSplitClockView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardSplitClockView;->handleShowClockAndDateOnSettingChanged()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/keyguard/sec/KeyguardSplitClockView;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSplitClockView;->mHandler:Landroid/os/Handler;

    return-object v0
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

    const/4 v10, 0x1

    const/4 v4, 0x0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/16 v1, 0xd05

    const/16 v2, 0xa

    const/16 v3, 0x16

    move v5, v4

    move v6, v4

    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardSplitClockView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/text/format/DateFormat;->getDateFormatForSetting(Landroid/content/Context;Ljava/lang/String;)Ljava/text/DateFormat;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardSplitClockView;->getContext()Landroid/content/Context;

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

    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardSplitClockView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v1}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v1

    if-ne v1, v10, :cond_4

    :goto_2
    invoke-virtual {v12, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v12, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ge v1, v2, :cond_6

    if-eqz v10, :cond_5

    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardSplitClockView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$string;->status_view_wday_day_month_no_year:I

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
    move v10, v4

    goto :goto_2

    :cond_5
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardSplitClockView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$string;->abbrev_wday_abbrev_month_day_no_year:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    goto :goto_3

    :cond_6
    if-eqz v10, :cond_7

    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardSplitClockView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$string;->abbrev_wday_abbrev_month_day_no_year:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    :goto_4
    goto :goto_3

    :cond_7
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardSplitClockView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$string;->status_view_wday_day_month_no_year:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    goto :goto_4

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private handleDateOnSettngsChanged()V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSplitClockView;->mDateView:Landroid/widget/TextClock;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSplitClockView;->mDateView:Landroid/widget/TextClock;

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardSplitClockView;->isShowDateOn()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextClock;->setVisibility(I)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x4

    goto :goto_0
.end method

.method private handleShowClockAndDateOnSettingChanged()V
    .locals 3

    const/16 v2, 0x64

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSplitClockView;->mContainer:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSplitClockView;->mContainer:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardSplitClockView;->isShowClockAndDate()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSplitClockView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSplitClockView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSplitClockView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSplitClockView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_2
    const/4 v0, 0x4

    goto :goto_0
.end method

.method private isShowClockAndDate()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardSplitClockView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->isShowClockAndDate(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardSplitClockView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->isShowInformation(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isShowDateOn()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardSplitClockView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->isDateOn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardSplitClockView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->isShowClockAndDate(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateChildView()V
    .locals 3

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSplitClockView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$color;->theme_status_clock_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSplitClockView;->mTimeView:Landroid/widget/TextClock;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSplitClockView;->mTimeView:Landroid/widget/TextClock;

    invoke-virtual {v1, v0}, Landroid/widget/TextClock;->setTextColor(I)V

    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSplitClockView;->mAmPmView:Landroid/widget/TextClock;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSplitClockView;->mAmPmView:Landroid/widget/TextClock;

    invoke-virtual {v1, v0}, Landroid/widget/TextClock;->setTextColor(I)V

    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSplitClockView;->mAmPmViewKor:Landroid/widget/TextClock;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSplitClockView;->mAmPmViewKor:Landroid/widget/TextClock;

    invoke-virtual {v1, v0}, Landroid/widget/TextClock;->setTextColor(I)V

    :cond_2
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSplitClockView;->mDateView:Landroid/widget/TextClock;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSplitClockView;->mDateView:Landroid/widget/TextClock;

    invoke-virtual {v1, v0}, Landroid/widget/TextClock;->setTextColor(I)V

    :cond_3
    return-void
.end method

.method private updatePatterns()V
    .locals 12

    const/4 v11, 0x1

    const/4 v10, -0x1

    const/4 v9, 0x0

    const/16 v8, 0x8

    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardSplitClockView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/text/format/DateFormat;->getTimeFormatString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v6, p0, Lcom/android/keyguard/sec/KeyguardSplitClockView;->mTimeView:Landroid/widget/TextClock;

    invoke-virtual {v6}, Landroid/widget/TextClock;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    iput v9, v4, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    const-string v6, "ko"

    iget-object v7, p0, Lcom/android/keyguard/sec/KeyguardSplitClockView;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->getCurrentLocale(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-static {v2, v11}, Lcom/android/keyguard/sec/KeyguardSplitClockView;->getAmPmPartEndIndex(Ljava/lang/String;Z)I

    move-result v3

    if-ne v3, v10, :cond_0

    move-object v5, v2

    const-string v0, ""

    iget-object v6, p0, Lcom/android/keyguard/sec/KeyguardSplitClockView;->mAmPmViewKor:Landroid/widget/TextClock;

    invoke-virtual {v6, v8}, Landroid/widget/TextClock;->setVisibility(I)V

    iget-object v6, p0, Lcom/android/keyguard/sec/KeyguardSplitClockView;->mAmPmView:Landroid/widget/TextClock;

    invoke-virtual {v6, v8}, Landroid/widget/TextClock;->setVisibility(I)V

    :goto_0
    iget-object v6, p0, Lcom/android/keyguard/sec/KeyguardSplitClockView;->mTimeView:Landroid/widget/TextClock;

    invoke-virtual {v6, v5}, Landroid/widget/TextClock;->setFormat12Hour(Ljava/lang/CharSequence;)V

    iget-object v6, p0, Lcom/android/keyguard/sec/KeyguardSplitClockView;->mTimeView:Landroid/widget/TextClock;

    invoke-virtual {v6, v5}, Landroid/widget/TextClock;->setFormat24Hour(Ljava/lang/CharSequence;)V

    iget-object v6, p0, Lcom/android/keyguard/sec/KeyguardSplitClockView;->mTimeView:Landroid/widget/TextClock;

    invoke-virtual {v6, v4}, Landroid/widget/TextClock;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v6, p0, Lcom/android/keyguard/sec/KeyguardSplitClockView;->mDateView:Landroid/widget/TextClock;

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardSplitClockView;->getDateFormat()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextClock;->setFormat12Hour(Ljava/lang/CharSequence;)V

    iget-object v6, p0, Lcom/android/keyguard/sec/KeyguardSplitClockView;->mDateView:Landroid/widget/TextClock;

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardSplitClockView;->getDateFormat()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextClock;->setFormat24Hour(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    invoke-virtual {v2, v9, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/keyguard/sec/KeyguardSplitClockView;->mAmPmViewKor:Landroid/widget/TextClock;

    invoke-virtual {v6, v9}, Landroid/widget/TextClock;->setVisibility(I)V

    iget-object v6, p0, Lcom/android/keyguard/sec/KeyguardSplitClockView;->mAmPmView:Landroid/widget/TextClock;

    invoke-virtual {v6, v8}, Landroid/widget/TextClock;->setVisibility(I)V

    iget-object v6, p0, Lcom/android/keyguard/sec/KeyguardSplitClockView;->mAmPmViewKor:Landroid/widget/TextClock;

    invoke-virtual {v6, v0}, Landroid/widget/TextClock;->setFormat12Hour(Ljava/lang/CharSequence;)V

    iget-object v6, p0, Lcom/android/keyguard/sec/KeyguardSplitClockView;->mAmPmViewKor:Landroid/widget/TextClock;

    invoke-virtual {v6, v0}, Landroid/widget/TextClock;->setFormat24Hour(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardSplitClockView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v1, v6, Landroid/util/DisplayMetrics;->density:F

    float-to-int v6, v1

    mul-int/lit8 v6, v6, -0x7

    iput v6, v4, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    goto :goto_0

    :cond_1
    const-string v6, "ja"

    iget-object v7, p0, Lcom/android/keyguard/sec/KeyguardSplitClockView;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->getCurrentLocale(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-static {v2, v11}, Lcom/android/keyguard/sec/KeyguardSplitClockView;->getAmPmPartEndIndex(Ljava/lang/String;Z)I

    move-result v3

    if-ne v3, v10, :cond_2

    move-object v5, v2

    const-string v0, ""

    iget-object v6, p0, Lcom/android/keyguard/sec/KeyguardSplitClockView;->mAmPmViewKor:Landroid/widget/TextClock;

    invoke-virtual {v6, v8}, Landroid/widget/TextClock;->setVisibility(I)V

    iget-object v6, p0, Lcom/android/keyguard/sec/KeyguardSplitClockView;->mAmPmView:Landroid/widget/TextClock;

    invoke-virtual {v6, v8}, Landroid/widget/TextClock;->setVisibility(I)V

    goto :goto_0

    :cond_2
    add-int/lit8 v6, v3, 0x1

    invoke-virtual {v2, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v9, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iget-object v6, p0, Lcom/android/keyguard/sec/KeyguardSplitClockView;->mAmPmViewKor:Landroid/widget/TextClock;

    invoke-virtual {v6, v8}, Landroid/widget/TextClock;->setVisibility(I)V

    iget-object v6, p0, Lcom/android/keyguard/sec/KeyguardSplitClockView;->mAmPmView:Landroid/widget/TextClock;

    invoke-virtual {v6, v9}, Landroid/widget/TextClock;->setVisibility(I)V

    iget-object v6, p0, Lcom/android/keyguard/sec/KeyguardSplitClockView;->mAmPmView:Landroid/widget/TextClock;

    invoke-virtual {v6, v0}, Landroid/widget/TextClock;->setFormat12Hour(Ljava/lang/CharSequence;)V

    iget-object v6, p0, Lcom/android/keyguard/sec/KeyguardSplitClockView;->mAmPmView:Landroid/widget/TextClock;

    invoke-virtual {v6, v0}, Landroid/widget/TextClock;->setFormat24Hour(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_3
    invoke-static {v2, v9}, Lcom/android/keyguard/sec/KeyguardSplitClockView;->getAmPmPartEndIndex(Ljava/lang/String;Z)I

    move-result v3

    if-ne v3, v10, :cond_4

    move-object v5, v2

    const-string v0, ""

    iget-object v6, p0, Lcom/android/keyguard/sec/KeyguardSplitClockView;->mAmPmViewKor:Landroid/widget/TextClock;

    invoke-virtual {v6, v8}, Landroid/widget/TextClock;->setVisibility(I)V

    iget-object v6, p0, Lcom/android/keyguard/sec/KeyguardSplitClockView;->mAmPmView:Landroid/widget/TextClock;

    invoke-virtual {v6, v8}, Landroid/widget/TextClock;->setVisibility(I)V

    goto/16 :goto_0

    :cond_4
    invoke-virtual {v2, v9, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iget-object v6, p0, Lcom/android/keyguard/sec/KeyguardSplitClockView;->mAmPmViewKor:Landroid/widget/TextClock;

    invoke-virtual {v6, v8}, Landroid/widget/TextClock;->setVisibility(I)V

    iget-object v6, p0, Lcom/android/keyguard/sec/KeyguardSplitClockView;->mAmPmView:Landroid/widget/TextClock;

    invoke-virtual {v6, v9}, Landroid/widget/TextClock;->setVisibility(I)V

    iget-object v6, p0, Lcom/android/keyguard/sec/KeyguardSplitClockView;->mAmPmView:Landroid/widget/TextClock;

    invoke-virtual {v6, v0}, Landroid/widget/TextClock;->setFormat12Hour(Ljava/lang/CharSequence;)V

    iget-object v6, p0, Lcom/android/keyguard/sec/KeyguardSplitClockView;->mAmPmView:Landroid/widget/TextClock;

    invoke-virtual {v6, v0}, Landroid/widget/TextClock;->setFormat24Hour(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, -0x1

    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    new-instance v1, Lcom/android/keyguard/sec/KeyguardSplitClockView$3;

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSplitClockView;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcom/android/keyguard/sec/KeyguardSplitClockView$3;-><init>(Lcom/android/keyguard/sec/KeyguardSplitClockView;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/keyguard/sec/KeyguardSplitClockView;->mDateSettingsObserver:Landroid/database/ContentObserver;

    new-instance v1, Lcom/android/keyguard/sec/KeyguardSplitClockView$4;

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSplitClockView;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcom/android/keyguard/sec/KeyguardSplitClockView$4;-><init>(Lcom/android/keyguard/sec/KeyguardSplitClockView;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/keyguard/sec/KeyguardSplitClockView;->mShowClockAndDateSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardSplitClockView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lock_screen_date_and_year"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardSplitClockView;->mDateSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardSplitClockView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lock_screen_show_clock"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardSplitClockView;->mShowClockAndDateSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardSplitClockView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lock_show_info"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardSplitClockView;->mShowClockAndDateSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.DATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.sec.android.app.secsetupwizard.SETUPWIZARD_COMPLETE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.android.theme.themecenter.THEME_APPLY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardSplitClockView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSplitClockView;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0, v6, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardSplitClockView;->updatePatterns()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardSplitClockView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSplitClockView;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSplitClockView;->mDateSettingsObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardSplitClockView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSplitClockView;->mDateSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSplitClockView;->mShowClockAndDateSettingsObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardSplitClockView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSplitClockView;->mShowClockAndDateSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_1
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    const/4 v2, 0x4

    const/4 v1, 0x0

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    sget v0, Lcom/android/keyguard/R$id;->keyguard_status_view_container:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/KeyguardSplitClockView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardSplitClockView;->mContainer:Landroid/widget/LinearLayout;

    sget v0, Lcom/android/keyguard/R$id;->keyguard_time_view:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/KeyguardSplitClockView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextClock;

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardSplitClockView;->mTimeView:Landroid/widget/TextClock;

    sget v0, Lcom/android/keyguard/R$id;->keyguard_am_pm_view:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/KeyguardSplitClockView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextClock;

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardSplitClockView;->mAmPmView:Landroid/widget/TextClock;

    sget v0, Lcom/android/keyguard/R$id;->keyguard_am_pm_view_kor:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/KeyguardSplitClockView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextClock;

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardSplitClockView;->mAmPmViewKor:Landroid/widget/TextClock;

    sget v0, Lcom/android/keyguard/R$id;->keyguard_date_view:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/KeyguardSplitClockView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextClock;

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardSplitClockView;->mDateView:Landroid/widget/TextClock;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSplitClockView;->mDateView:Landroid/widget/TextClock;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardSplitClockView;->isShowDateOn()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSplitClockView;->mDateView:Landroid/widget/TextClock;

    invoke-virtual {v0, v1}, Landroid/widget/TextClock;->setVisibility(I)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSplitClockView;->mContainer:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardSplitClockView;->isShowClockAndDate()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSplitClockView;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSplitClockView;->mDateView:Landroid/widget/TextClock;

    invoke-virtual {v0, v2}, Landroid/widget/TextClock;->setVisibility(I)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSplitClockView;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1
.end method
