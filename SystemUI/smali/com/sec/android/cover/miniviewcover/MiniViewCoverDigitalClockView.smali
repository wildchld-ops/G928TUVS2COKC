.class public Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView;
.super Landroid/widget/LinearLayout;
.source "MiniViewCoverDigitalClockView.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final mTime12HFormat:Ljava/lang/String; = "h:mm"

.field private static final mTime24HFormat:Ljava/lang/String; = "k:mm"

.field private static final mTimeAmPmFormat:Ljava/lang/String; = "aa"

.field private static final mTimeHour12Format:Ljava/lang/String; = "h"

.field private static final mTimeHour24Format:Ljava/lang/String; = "k"

.field private static final mTimeMinuteFormat:Ljava/lang/String; = "mm"


# instance fields
.field private mAmPm:Landroid/widget/TextView;

.field private mAmPmKr:Landroid/widget/TextView;

.field private mCalendar:Ljava/util/Calendar;

.field private mDate:Landroid/widget/TextView;

.field private mDigitalClockManager:Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockManager;

.field private mHours:Landroid/widget/TextView;

.field private mIs24HTime:Z

.field private mMinutes:Landroid/widget/TextView;

.field private mTime:Landroid/widget/TextView;

.field private mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView;->mIs24HTime:Z

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView;->mCalendar:Ljava/util/Calendar;

    new-instance v0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView$1;

    invoke-direct {v0, p0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView$1;-><init>(Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView;)V

    iput-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    invoke-direct {p0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView;->mIs24HTime:Z

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView;->mCalendar:Ljava/util/Calendar;

    new-instance v0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView$1;

    invoke-direct {v0, p0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView$1;-><init>(Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView;)V

    iput-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    invoke-direct {p0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView;->mIs24HTime:Z

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView;->mCalendar:Ljava/util/Calendar;

    new-instance v0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView$1;

    invoke-direct {v0, p0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView$1;-><init>(Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView;)V

    iput-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    invoke-direct {p0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView;->updateTime()V

    return-void
.end method

.method static synthetic access$102(Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView;->mIs24HTime:Z

    return p1
.end method

.method private getDateFormat()Ljava/lang/String;
    .locals 5

    const-string v0, ""

    iget-object v4, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;->getCurrentDateFormat(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    sget v1, Lcom/sec/android/sviewcover/R$string;->sview_cover_wday_month_day_no_year:I

    sget v2, Lcom/sec/android/sviewcover/R$string;->sview_cover_wday_day_month_no_year:I

    const-string v4, "yyyy-MM-dd"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "MM-dd-yyyy"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_0
    iget-object v4, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    const-string v4, "dd-MM-yyyy"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private init()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView;->mDigitalClockManager:Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockManager;

    invoke-virtual {p0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView;->updateStyle()V

    return-void
.end method

.method private updateTime()V
    .locals 12

    const/16 v11, 0x8

    const/4 v10, 0x0

    iget-object v6, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView;->mCalendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    const-string v6, "mm"

    iget-object v7, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView;->mCalendar:Ljava/util/Calendar;

    invoke-static {v6, v7}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v6, "aa"

    iget-object v7, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView;->mCalendar:Ljava/util/Calendar;

    invoke-static {v6, v7}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView;->getDateFormat()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView;->mCalendar:Ljava/util/Calendar;

    invoke-static {v6, v7}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iget-boolean v6, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView;->mIs24HTime:Z

    if-eqz v6, :cond_9

    const-string v6, "k:mm"

    iget-object v7, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView;->mCalendar:Ljava/util/Calendar;

    invoke-static {v6, v7}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "k"

    iget-object v7, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView;->mCalendar:Ljava/util/Calendar;

    invoke-static {v6, v7}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v6, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView;->mAmPm:Landroid/widget/TextView;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView;->mAmPm:Landroid/widget/TextView;

    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    iget-object v6, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView;->mAmPmKr:Landroid/widget/TextView;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView;->mAmPmKr:Landroid/widget/TextView;

    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    :goto_0
    iget-object v6, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView;->mMinutes:Landroid/widget/TextView;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView;->mMinutes:Landroid/widget/TextView;

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    iget-object v6, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView;->mHours:Landroid/widget/TextView;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView;->mHours:Landroid/widget/TextView;

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    iget-object v6, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView;->mTime:Landroid/widget/TextView;

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView;->mTime:Landroid/widget/TextView;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    iget-object v6, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView;->mDate:Landroid/widget/TextView;

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView;->mDate:Landroid/widget/TextView;

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    iget-boolean v6, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView;->mIs24HTime:Z

    if-nez v6, :cond_8

    sget-object v6, Ljava/util/Locale;->KOREA:Ljava/util/Locale;

    invoke-virtual {v6, v3}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    sget-object v6, Ljava/util/Locale;->KOREAN:Ljava/util/Locale;

    invoke-virtual {v6, v3}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    :cond_6
    iget-object v6, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView;->mAmPmKr:Landroid/widget/TextView;

    if-eqz v6, :cond_8

    iget-object v6, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView;->mAmPm:Landroid/widget/TextView;

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView;->mAmPm:Landroid/widget/TextView;

    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_7
    iget-object v6, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView;->mAmPmKr:Landroid/widget/TextView;

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v6, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView;->mAmPmKr:Landroid/widget/TextView;

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_8
    :goto_1
    return-void

    :cond_9
    const-string v6, "h:mm"

    iget-object v7, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView;->mCalendar:Ljava/util/Calendar;

    invoke-static {v6, v7}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "h"

    iget-object v7, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView;->mCalendar:Ljava/util/Calendar;

    invoke-static {v6, v7}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v6, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView;->mAmPm:Landroid/widget/TextView;

    if-eqz v6, :cond_a

    iget-object v6, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView;->mAmPm:Landroid/widget/TextView;

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_a
    iget-object v6, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView;->mAmPmKr:Landroid/widget/TextView;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView;->mAmPmKr:Landroid/widget/TextView;

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_b
    iget-object v6, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView;->mAmPm:Landroid/widget/TextView;

    if-eqz v6, :cond_8

    iget-object v6, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView;->mAmPmKr:Landroid/widget/TextView;

    if-eqz v6, :cond_c

    iget-object v6, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView;->mAmPmKr:Landroid/widget/TextView;

    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_c
    iget-object v6, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView;->mAmPm:Landroid/widget/TextView;

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v6, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView;->mAmPm:Landroid/widget/TextView;

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView;->mIs24HTime:Z

    invoke-virtual {p0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView;->updateStyle()V

    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->registerCallback(Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->unregisterCallback(Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;)V

    return-void
.end method

.method public updateStyle()V
    .locals 8

    const/4 v7, 0x1

    sget-object v4, Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Digital clock style index = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView;->mDigitalClockManager:Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockManager;

    invoke-virtual {v6}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockManager;->getCurrentStyleIndex()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView;->removeAllViews()V

    iget-object v4, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView;->mDigitalClockManager:Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockManager;

    invoke-virtual {v4}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockManager;->getCurrentStyleResId()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    if-eqz v3, :cond_2

    iget-object v4, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v7, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    invoke-virtual {v4, v5, p0, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    sget v4, Lcom/sec/android/sviewcover/R$id;->s_view_cover_digital_clock_minute:I

    invoke-virtual {p0, v4}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView;->mMinutes:Landroid/widget/TextView;

    sget v4, Lcom/sec/android/sviewcover/R$id;->s_view_cover_digital_clock_hour:I

    invoke-virtual {p0, v4}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView;->mHours:Landroid/widget/TextView;

    sget v4, Lcom/sec/android/sviewcover/R$id;->s_view_cover_digital_clock_time:I

    invoke-virtual {p0, v4}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView;->mTime:Landroid/widget/TextView;

    sget v4, Lcom/sec/android/sviewcover/R$id;->s_view_cover_digital_clock_day:I

    invoke-virtual {p0, v4}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView;->mDate:Landroid/widget/TextView;

    sget v4, Lcom/sec/android/sviewcover/R$id;->s_view_cover_digital_clock_ampm:I

    invoke-virtual {p0, v4}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView;->mAmPm:Landroid/widget/TextView;

    sget v4, Lcom/sec/android/sviewcover/R$id;->s_view_cover_digital_clock_ampm_kr:I

    invoke-virtual {p0, v4}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView;->mAmPmKr:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    const/4 v0, 0x0

    iget-object v4, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/sec/android/sviewcover/R$bool;->config_isSViewCover2:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v4, "system/fonts/SamsungSans-Num45.ttf"

    invoke-static {v4}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    :goto_0
    iget-object v4, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView;->mMinutes:Landroid/widget/TextView;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView;->mMinutes:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_0
    iget-object v4, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView;->mHours:Landroid/widget/TextView;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView;->mHours:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_1
    iget-object v4, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView;->mTime:Landroid/widget/TextView;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView;->mTime:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_2
    invoke-direct {p0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView;->updateTime()V

    return-void

    :cond_3
    iget-object v4, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    const-string v5, "fonts/SAMSUNG_CLOCK_NUMERALS.TTF"

    invoke-static {v4, v5}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    goto :goto_0
.end method
