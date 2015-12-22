.class public Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;
.super Landroid/widget/LinearLayout;
.source "MiniViewCoverClockWidget.java"


# static fields
.field private static final CLOCK_UPDATE_DELAY:J = 0x7d0L

.field private static TAG:Ljava/lang/String; = null

.field private static final mAmPmFormat:Ljava/lang/String; = "AA"

.field private static final mTime24HFormat:Ljava/lang/String; = "kk:mm"

.field private static mTimeFormat:Ljava/lang/String;


# instance fields
.field private final MSG_CLOCK_UPDATE:I

.field private mAmPm:Landroid/widget/TextView;

.field private mCalendar:Ljava/util/Calendar;

.field private mClockHandler:Landroid/os/Handler;

.field private mClockRoot:Landroid/widget/LinearLayout;

.field private mClockView:Landroid/widget/LinearLayout;

.field private mContext:Landroid/content/Context;

.field private mDateRoot:Landroid/widget/LinearLayout;

.field private mDayofWeek:Landroid/widget/TextView;

.field private mIs24HTime:Z

.field private mIsCover2:Z

.field private mMonthandDay:Landroid/widget/TextView;

.field private mTime:Landroid/widget/TextView;

.field private mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;->TAG:Ljava/lang/String;

    const-string v0, "h:mm"

    sput-object v0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;->mTimeFormat:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;->mIs24HTime:Z

    new-instance v0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget$1;

    invoke-direct {v0, p0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget$1;-><init>(Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;)V

    iput-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    const/16 v0, 0x12c2

    iput v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;->MSG_CLOCK_UPDATE:I

    new-instance v0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget$2;

    invoke-direct {v0, p0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget$2;-><init>(Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;)V

    iput-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;->mClockHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;->mContext:Landroid/content/Context;

    sget-object v0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;->TAG:Ljava/lang/String;

    const-string v1, "Clock()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;->onTimeChanged()V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;->mClockHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$202(Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;->mIs24HTime:Z

    return p1
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static getCurrentDateFormat(Landroid/content/Context;)Ljava/lang/String;
    .locals 9

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "yyyy"

    const-string v4, "MM"

    const-string v0, "dd"

    const-string v1, "-"

    invoke-static {p0}, Landroid/text/format/DateFormat;->getDateFormatOrder(Landroid/content/Context;)[C

    move-result-object v2

    const/4 v3, 0x0

    :goto_0
    array-length v7, v2

    if-ge v3, v7, :cond_4

    aget-char v7, v2, v3

    const/16 v8, 0x79

    if-ne v7, v8, :cond_0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    aget-char v7, v2, v3

    const/16 v8, 0x4d

    if-ne v7, v8, :cond_1

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    aget-char v7, v2, v3

    const/16 v8, 0x64

    if-ne v7, v8, :cond_2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    array-length v7, v2

    add-int/lit8 v7, v7, -0x1

    if-eq v3, v7, :cond_3

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method

.method private onTimeChanged()V
    .locals 15

    const/16 v14, 0x50

    const/16 v13, 0x31

    const/4 v12, 0x0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v9

    iput-object v9, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;->mCalendar:Ljava/util/Calendar;

    sget-object v9, Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "initClock() : TimeZone ="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;->mCalendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v9, "ja_JP"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    const-string v9, "K:mm"

    sput-object v9, Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;->mTimeFormat:Ljava/lang/String;

    :cond_0
    :goto_0
    iget-boolean v9, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;->mIs24HTime:Z

    if-eqz v9, :cond_9

    const-string v9, "kk:mm"

    iget-object v10, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;->mCalendar:Ljava/util/Calendar;

    invoke-static {v9, v10}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v9, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;->mTime:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    invoke-direct {v1, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    iget-boolean v9, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;->mIsCover2:Z

    if-eqz v9, :cond_1

    invoke-interface {v7, v12}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    if-ne v9, v13, :cond_1

    :try_start_0
    const-string v9, "UTF-8"

    invoke-static {v6, v9}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    iput v14, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    iget-object v9, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;->mTime:Landroid/widget/TextView;

    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz v6, :cond_2

    iget-object v9, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;->mTime:Landroid/widget/TextView;

    invoke-virtual {v9, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    iget-object v9, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;->mAmPm:Landroid/widget/TextView;

    if-eqz v9, :cond_3

    iget-object v9, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;->mAmPm:Landroid/widget/TextView;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_3
    :goto_2
    iget-object v9, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;->mAmPm:Landroid/widget/TextView;

    if-eqz v9, :cond_4

    iget-object v9, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;->mAmPm:Landroid/widget/TextView;

    const-string v10, "AA"

    iget-object v11, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;->mCalendar:Ljava/util/Calendar;

    invoke-static {v10, v11}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v9, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;->mAmPm:Landroid/widget/TextView;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setAllCaps(Z)V

    :cond_4
    const-string v0, ""

    iget-object v9, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;->getCurrentDateFormat(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    sget v3, Lcom/sec/android/sviewcover/R$string;->sview_cover_wday_month_day_no_year:I

    sget v4, Lcom/sec/android/sviewcover/R$string;->sview_cover_wday_day_month_no_year:I

    iget-object v9, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;->mDayofWeek:Landroid/widget/TextView;

    if-eqz v9, :cond_c

    sget v3, Lcom/sec/android/sviewcover/R$string;->mini_cover_month_day_no_year:I

    sget v4, Lcom/sec/android/sviewcover/R$string;->mini_cover_day_month_no_year:I

    :goto_3
    const-string v9, "yyyy-MM-dd"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    const-string v9, "MM-dd-yyyy"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_d

    :cond_5
    iget-object v9, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_6
    :goto_4
    iget-object v9, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;->mDayofWeek:Landroid/widget/TextView;

    if-eqz v9, :cond_7

    iget-object v9, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;->mMonthandDay:Landroid/widget/TextView;

    if-eqz v9, :cond_7

    if-eqz v2, :cond_e

    const-string v9, "ko_KR"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_e

    iget-object v9, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;->mMonthandDay:Landroid/widget/TextView;

    iget-object v10, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;->mCalendar:Ljava/util/Calendar;

    invoke-static {v0, v10}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v9, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;->mDayofWeek:Landroid/widget/TextView;

    iget-object v10, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;->mContext:Landroid/content/Context;

    sget v11, Lcom/sec/android/sviewcover/R$string;->clear_cover_wday_day:I

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;->mCalendar:Ljava/util/Calendar;

    invoke-static {v10, v11}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_7
    :goto_5
    iget-object v9, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;->mClockView:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;->getSingleTTSMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void

    :cond_8
    const-string v9, "h:mm"

    sput-object v9, Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;->mTimeFormat:Ljava/lang/String;

    goto/16 :goto_0

    :catch_0
    move-exception v5

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_1

    :cond_9
    sget-object v9, Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;->mTimeFormat:Ljava/lang/String;

    iget-object v10, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;->mCalendar:Ljava/util/Calendar;

    invoke-static {v9, v10}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v9, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;->mTime:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    invoke-direct {v1, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    iget-boolean v9, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;->mIsCover2:Z

    if-eqz v9, :cond_a

    invoke-interface {v7, v12}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    if-ne v9, v13, :cond_a

    :try_start_1
    const-string v9, "UTF-8"

    invoke-static {v6, v9}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :cond_a
    :goto_6
    iput v14, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    iget-object v9, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;->mTime:Landroid/widget/TextView;

    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz v6, :cond_b

    iget-object v9, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;->mTime:Landroid/widget/TextView;

    invoke-virtual {v9, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_b
    iget-object v9, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;->mAmPm:Landroid/widget/TextView;

    if-eqz v9, :cond_3

    iget-object v9, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;->mAmPm:Landroid/widget/TextView;

    invoke-virtual {v9, v12}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    :catch_1
    move-exception v5

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_6

    :cond_c
    sget v3, Lcom/sec/android/sviewcover/R$string;->sview_cover_wday_month_day_no_year:I

    sget v4, Lcom/sec/android/sviewcover/R$string;->sview_cover_wday_day_month_no_year:I

    goto/16 :goto_3

    :cond_d
    const-string v9, "dd-MM-yyyy"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    iget-object v9, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_4

    :cond_e
    iget-object v9, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;->mMonthandDay:Landroid/widget/TextView;

    iget-object v10, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;->mCalendar:Ljava/util/Calendar;

    invoke-static {v0, v10}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v9, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;->mDayofWeek:Landroid/widget/TextView;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;->mContext:Landroid/content/Context;

    sget v12, Lcom/sec/android/sviewcover/R$string;->clear_cover_wday_day:I

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    iget-object v12, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;->mCalendar:Ljava/util/Calendar;

    invoke-static {v11, v12}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5
.end method


# virtual methods
.method public getSingleTTSMessage()Ljava/lang/String;
    .locals 8

    const-string v0, ""

    const-string v1, ""

    iget-object v5, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;->getCurrentDateFormat(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "yyyy-MM-dd"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "MM-dd-yyyy"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_0
    iget-object v5, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;->mContext:Landroid/content/Context;

    sget v6, Lcom/sec/android/sviewcover/R$string;->full_wday_month_day_no_year:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_1
    :goto_0
    iget-object v5, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;->mCalendar:Ljava/util/Calendar;

    invoke-static {v1, v5}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v5, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;->mCalendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    iget-boolean v5, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;->mIs24HTime:Z

    if-eqz v5, :cond_4

    const-string v5, "kk:mm"

    iget-object v6, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;->mCalendar:Ljava/util/Calendar;

    invoke-static {v5, v6}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_2
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    const-string v5, "dd-MM-yyyy"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;->mContext:Landroid/content/Context;

    sget v6, Lcom/sec/android/sviewcover/R$string;->full_wday_day_month_no_year:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_4
    sget-object v5, Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;->mTimeFormat:Ljava/lang/String;

    iget-object v6, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;->mCalendar:Ljava/util/Calendar;

    invoke-static {v5, v6}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;->mAmPm:Landroid/widget/TextView;

    if-eqz v5, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;->mAmPm:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1
.end method

.method protected onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;->mIs24HTime:Z

    invoke-direct {p0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;->onTimeChanged()V

    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->registerCallback(Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->unregisterCallback(Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    iget-object v2, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/sec/android/sviewcover/R$bool;->config_isSViewCover2:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;->mIsCover2:Z

    const/4 v0, 0x0

    const-string v2, "system/fonts/SamsungNeoNum-3T.ttf"

    invoke-static {v2}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    sget v2, Lcom/sec/android/sviewcover/R$id;->clock_time_and_date:I

    invoke-virtual {p0, v2}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;->mClockView:Landroid/widget/LinearLayout;

    sget v2, Lcom/sec/android/sviewcover/R$id;->clock_root:I

    invoke-virtual {p0, v2}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;->mClockRoot:Landroid/widget/LinearLayout;

    sget v2, Lcom/sec/android/sviewcover/R$id;->digital_clock_time:I

    invoke-virtual {p0, v2}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;->mTime:Landroid/widget/TextView;

    sget v2, Lcom/sec/android/sviewcover/R$id;->digital_clock_ampm:I

    invoke-virtual {p0, v2}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;->mAmPm:Landroid/widget/TextView;

    sget v2, Lcom/sec/android/sviewcover/R$id;->date_root:I

    invoke-virtual {p0, v2}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;->mDateRoot:Landroid/widget/LinearLayout;

    sget v2, Lcom/sec/android/sviewcover/R$id;->digital_day_of_the_week:I

    invoke-virtual {p0, v2}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;->mDayofWeek:Landroid/widget/TextView;

    sget v2, Lcom/sec/android/sviewcover/R$id;->digital_month_day:I

    invoke-virtual {p0, v2}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;->mMonthandDay:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;->mTime:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {p0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;->refreshClock()V

    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    invoke-virtual {p0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;->getSingleTTSMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public refreshClock()V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "refreshClock() , locale = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_4

    const-string v2, "ko_KR"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;->mClockRoot:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;->mAmPm:Landroid/widget/TextView;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;->mAmPm:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;->mAmPm:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    iget-object v2, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;->mClockRoot:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;->mAmPm:Landroid/widget/TextView;

    invoke-virtual {v2, v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    :cond_1
    iget-object v2, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;->mDateRoot:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;->mMonthandDay:Landroid/widget/TextView;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;->mMonthandDay:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;->mMonthandDay:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_2
    iget-object v2, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;->mDateRoot:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;->mMonthandDay:Landroid/widget/TextView;

    invoke-virtual {v2, v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    :cond_3
    :goto_0
    return-void

    :cond_4
    iget-object v2, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;->mClockRoot:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;->mAmPm:Landroid/widget/TextView;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;->mAmPm:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_5

    iget-object v2, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;->mAmPm:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_5
    iget-object v2, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;->mClockRoot:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;->mAmPm:Landroid/widget/TextView;

    invoke-virtual {v2, v3, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    :cond_6
    iget-object v2, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;->mDateRoot:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;->mMonthandDay:Landroid/widget/TextView;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;->mMonthandDay:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_7

    iget-object v2, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;->mMonthandDay:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_7
    iget-object v2, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;->mDateRoot:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;->mMonthandDay:Landroid/widget/TextView;

    invoke-virtual {v2, v3, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    goto :goto_0
.end method
