.class public Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;
.super Landroid/widget/LinearLayout;
.source "SViewCoverDualClockWidget.java"


# static fields
.field private static final CLOCK_UPDATE_DELAY:J = 0x7d0L

.field private static TAG:Ljava/lang/String; = null

.field private static final mAmPmFormat:Ljava/lang/String; = "AA"

.field private static final mTime24HFormat:Ljava/lang/String; = "kk:mm"

.field private static mTimeFormat:Ljava/lang/String;


# instance fields
.field private final MSG_CLOCK_UPDATE:I

.field private mAmpmTypeface:Landroid/graphics/Typeface;

.field private mAutoHomeTimeZoneId:Ljava/lang/String;

.field private mClockHandler:Landroid/os/Handler;

.field private mContext:Landroid/content/Context;

.field private mDayofWeek:Landroid/widget/TextView;

.field private mHomeAmPm:Landroid/widget/TextView;

.field private mHomeCalendar:Ljava/util/Calendar;

.field private mHomeClock:Landroid/widget/LinearLayout;

.field private mHomeClockRoot:Landroid/widget/LinearLayout;

.field private mHomeClockView:Landroid/widget/LinearLayout;

.field private mHomeMonthandDay:Landroid/widget/TextView;

.field private mHomeRegionText:Landroid/widget/TextView;

.field private mHomeTime:Landroid/widget/TextView;

.field private mIs24HTime:Z

.field private mIsCover2:Z

.field private mIsDualClock:Z

.field private mRoamingAmPm:Landroid/widget/TextView;

.field private mRoamingCalendar:Ljava/util/Calendar;

.field private mRoamingClock:Landroid/widget/LinearLayout;

.field private mRoamingClockRoot:Landroid/widget/LinearLayout;

.field private mRoamingClockView:Landroid/widget/LinearLayout;

.field private mRoamingMonthandDay:Landroid/widget/TextView;

.field private mRoamingRegionText:Landroid/widget/TextView;

.field private mRoamingTime:Landroid/widget/TextView;

.field private mThemeFontPath:Ljava/lang/String;

.field private mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->TAG:Ljava/lang/String;

    const-string v0, "h:mm"

    sput-object v0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mTimeFormat:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v2, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mAutoHomeTimeZoneId:Ljava/lang/String;

    const/16 v0, 0x12c2

    iput v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->MSG_CLOCK_UPDATE:I

    iput-boolean v1, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mIsDualClock:Z

    iput-boolean v1, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mIs24HTime:Z

    iput-object v2, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mThemeFontPath:Ljava/lang/String;

    new-instance v0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget$1;

    invoke-direct {v0, p0}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget$1;-><init>(Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;)V

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    new-instance v0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget$2;

    invoke-direct {v0, p0}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget$2;-><init>(Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;)V

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mClockHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mContext:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->initClock(Landroid/content/Context;)V

    sget-object v0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->TAG:Ljava/lang/String;

    const-string v1, "DualClock()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->onThemeFontChanged(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->onTimeChanged()V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mClockHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$302(Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mIs24HTime:Z

    return p1
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private getAutoHomeTimezone(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/cover/manager/CoverDatabaseManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverDatabaseManager;

    move-result-object v2

    const-string v3, "homecity_timezone"

    invoke-virtual {v2, v3}, Lcom/sec/android/cover/manager/CoverDatabaseManager;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    sget-object v2, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->TAG:Ljava/lang/String;

    const-string v3, "set default timezone"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/cover/FeatureUtils;->isKoreaModel()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v0, "Asia/Seoul"

    :goto_0
    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/cover/manager/CoverDatabaseManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverDatabaseManager;

    move-result-object v2

    const-string v3, "homecity_timezone"

    invoke-virtual {v2, v3, v0}, Lcom/sec/android/cover/manager/CoverDatabaseManager;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "set homecity_timezone: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    sget-object v2, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setAutoHomeTimezone() - autoHomeTimeZoneId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_2
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private initClock(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->getAutoHomeTimezone(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mAutoHomeTimeZoneId:Ljava/lang/String;

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mAutoHomeTimeZoneId:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mAutoHomeTimeZoneId:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mHomeCalendar:Ljava/util/Calendar;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mIsDualClock:Z

    :cond_0
    return-void
.end method

.method private onThemeFontChanged(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/sec/android/cover/FeatureUtils;->isSupportElasticPlugin()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/sec/android/cover/CoverUtils;->setClockFontPath(Landroid/content/Context;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mThemeFontPath:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private onTimeChanged()V
    .locals 12

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v9

    iput-object v9, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mRoamingCalendar:Ljava/util/Calendar;

    sget-object v9, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->TAG:Ljava/lang/String;

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

    invoke-static {v9, v10}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mRoamingCalendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    const-string v9, "ja_JP"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    const-string v9, "K:mm"

    sput-object v9, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mTimeFormat:Ljava/lang/String;

    :cond_0
    :goto_0
    iget-object v9, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mContext:Landroid/content/Context;

    invoke-direct {p0, v9}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->getAutoHomeTimezone(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mAutoHomeTimeZoneId:Ljava/lang/String;

    iget-object v9, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mAutoHomeTimeZoneId:Ljava/lang/String;

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mAutoHomeTimeZoneId:Ljava/lang/String;

    invoke-static {v9}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v9

    invoke-static {v9}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v9

    iput-object v9, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mHomeCalendar:Ljava/util/Calendar;

    iget-object v9, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mHomeCalendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mIsDualClock:Z

    :cond_1
    const/4 v8, 0x0

    iget-boolean v9, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mIs24HTime:Z

    if-eqz v9, :cond_c

    const-string v9, "kk:mm"

    iget-object v10, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mRoamingCalendar:Ljava/util/Calendar;

    invoke-static {v9, v10}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v3, 0x0

    iget-object v9, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mRoamingTime:Landroid/widget/TextView;

    if-eqz v9, :cond_2

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v9, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mRoamingTime:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    invoke-direct {v3, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    iget-boolean v9, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mIsCover2:Z

    if-eqz v9, :cond_3

    const/4 v9, 0x0

    invoke-interface {v8, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    const/16 v10, 0x31

    if-ne v9, v10, :cond_3

    :try_start_0
    const-string v9, "UTF-8"

    invoke-static {v7, v9}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_2
    iget-object v9, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mRoamingTime:Landroid/widget/TextView;

    if-eqz v9, :cond_5

    if-eqz v3, :cond_4

    iget-object v9, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mRoamingTime:Landroid/widget/TextView;

    invoke-virtual {v9, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_4
    iget-object v9, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mRoamingTime:Landroid/widget/TextView;

    invoke-virtual {v9, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    iget-object v9, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mRoamingAmPm:Landroid/widget/TextView;

    if-eqz v9, :cond_6

    iget-boolean v9, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mIs24HTime:Z

    if-nez v9, :cond_d

    iget-object v9, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mRoamingAmPm:Landroid/widget/TextView;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v9, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mRoamingAmPm:Landroid/widget/TextView;

    const-string v10, "AA"

    iget-object v11, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mRoamingCalendar:Ljava/util/Calendar;

    invoke-static {v10, v11}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v9, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mRoamingAmPm:Landroid/widget/TextView;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setAllCaps(Z)V

    :cond_6
    :goto_3
    iget-boolean v9, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mIsDualClock:Z

    if-eqz v9, :cond_8

    const/4 v6, 0x0

    iget-boolean v9, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mIs24HTime:Z

    if-eqz v9, :cond_e

    const-string v9, "kk:mm"

    iget-object v10, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mHomeCalendar:Ljava/util/Calendar;

    invoke-static {v9, v10}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v6

    :goto_4
    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v9, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mHomeTime:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    invoke-direct {v2, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    iget-boolean v9, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mIsCover2:Z

    if-eqz v9, :cond_7

    const/4 v9, 0x0

    invoke-interface {v6, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    const/16 v10, 0x31

    if-ne v9, v10, :cond_7

    :try_start_1
    const-string v9, "UTF-8"

    invoke-static {v1, v9}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :cond_7
    :goto_5
    iget-object v9, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mHomeTime:Landroid/widget/TextView;

    invoke-virtual {v9, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v9, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mHomeTime:Landroid/widget/TextView;

    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v9, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mHomeAmPm:Landroid/widget/TextView;

    if-eqz v9, :cond_8

    iget-boolean v9, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mIs24HTime:Z

    if-nez v9, :cond_f

    iget-object v9, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mHomeAmPm:Landroid/widget/TextView;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v9, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mHomeAmPm:Landroid/widget/TextView;

    const-string v10, "AA"

    iget-object v11, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mHomeCalendar:Ljava/util/Calendar;

    invoke-static {v10, v11}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v9, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mHomeAmPm:Landroid/widget/TextView;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setAllCaps(Z)V

    :cond_8
    :goto_6
    iget-object v9, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mRoamingCalendar:Ljava/util/Calendar;

    iget-object v10, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mContext:Landroid/content/Context;

    invoke-static {v9, v10}, Lcom/sec/android/cover/CoverUtils;->getDateFormat(Ljava/util/Calendar;Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v9, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mDayofWeek:Landroid/widget/TextView;

    if-eqz v9, :cond_9

    iget-object v9, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mDayofWeek:Landroid/widget/TextView;

    iget-object v10, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mContext:Landroid/content/Context;

    sget v11, Lcom/sec/android/sviewcover/R$string;->clear_cover_wday_day:I

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mRoamingCalendar:Ljava/util/Calendar;

    invoke-static {v10, v11}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_9
    iget-object v9, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mRoamingMonthandDay:Landroid/widget/TextView;

    iget-object v10, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mRoamingCalendar:Ljava/util/Calendar;

    invoke-static {v0, v10}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v9, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mRoamingClockRoot:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->getRoamingSingleTTSMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-boolean v9, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mIsDualClock:Z

    if-eqz v9, :cond_a

    iget-object v9, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mHomeCalendar:Ljava/util/Calendar;

    iget-object v10, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mContext:Landroid/content/Context;

    invoke-static {v9, v10}, Lcom/sec/android/cover/CoverUtils;->getDateFormat(Ljava/util/Calendar;Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v9, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mHomeMonthandDay:Landroid/widget/TextView;

    iget-object v10, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mHomeCalendar:Ljava/util/Calendar;

    invoke-static {v0, v10}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v9, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mHomeClockRoot:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->getHomeSingleTTSMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_a
    return-void

    :cond_b
    const-string v9, "h:mm"

    sput-object v9, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mTimeFormat:Ljava/lang/String;

    goto/16 :goto_0

    :cond_c
    sget-object v9, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mTimeFormat:Ljava/lang/String;

    iget-object v10, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mRoamingCalendar:Ljava/util/Calendar;

    invoke-static {v9, v10}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v8

    goto/16 :goto_1

    :catch_0
    move-exception v5

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_2

    :cond_d
    iget-object v9, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mRoamingAmPm:Landroid/widget/TextView;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_3

    :cond_e
    sget-object v9, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mTimeFormat:Ljava/lang/String;

    iget-object v10, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mHomeCalendar:Ljava/util/Calendar;

    invoke-static {v9, v10}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v6

    goto/16 :goto_4

    :catch_1
    move-exception v5

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_5

    :cond_f
    iget-object v9, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mHomeAmPm:Landroid/widget/TextView;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_6
.end method

.method private setFontTypeFace()V
    .locals 2

    invoke-static {}, Lcom/sec/android/cover/FeatureUtils;->isZeroProject()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mAmpmTypeface:Landroid/graphics/Typeface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mRoamingAmPm:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mRoamingAmPm:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mAmpmTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_2
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mHomeAmPm:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mHomeAmPm:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mAmpmTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_0
.end method

.method private setThemeFontTypeFace(Landroid/graphics/Typeface;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mRoamingTime:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mRoamingAmPm:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mDayofWeek:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mRoamingMonthandDay:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mRoamingRegionText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mHomeTime:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mHomeAmPm:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mHomeMonthandDay:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mHomeRegionText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getHomeSingleTTSMessage()Ljava/lang/String;
    .locals 8

    const-string v0, ""

    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mHomeCalendar:Ljava/util/Calendar;

    iget-object v5, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mContext:Landroid/content/Context;

    invoke-static {v4, v5}, Lcom/sec/android/cover/CoverUtils;->getDateFormat(Ljava/util/Calendar;Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mHomeCalendar:Ljava/util/Calendar;

    invoke-static {v1, v4}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mHomeCalendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    iget-boolean v4, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mIs24HTime:Z

    if-eqz v4, :cond_0

    const-string v4, "kk:mm"

    iget-object v5, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mHomeCalendar:Ljava/util/Calendar;

    invoke-static {v4, v5}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v4, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mTimeFormat:Ljava/lang/String;

    iget-object v5, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mHomeCalendar:Ljava/util/Calendar;

    invoke-static {v4, v5}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mHomeAmPm:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public getRoamingSingleTTSMessage()Ljava/lang/String;
    .locals 8

    const-string v0, ""

    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mRoamingCalendar:Ljava/util/Calendar;

    iget-object v5, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mContext:Landroid/content/Context;

    invoke-static {v4, v5}, Lcom/sec/android/cover/CoverUtils;->getDateFormat(Ljava/util/Calendar;Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mRoamingCalendar:Ljava/util/Calendar;

    invoke-static {v1, v4}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mRoamingCalendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    iget-boolean v4, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mIs24HTime:Z

    if-eqz v4, :cond_1

    const-string v4, "kk:mm"

    iget-object v5, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mRoamingCalendar:Ljava/util/Calendar;

    invoke-static {v4, v5}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_0
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    sget-object v4, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mTimeFormat:Ljava/lang/String;

    iget-object v5, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mRoamingCalendar:Ljava/util/Calendar;

    invoke-static {v4, v5}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mRoamingAmPm:Landroid/widget/TextView;

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mRoamingAmPm:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mIs24HTime:Z

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mThemeFontPath:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/sec/android/cover/FeatureUtils;->isSupportElasticPlugin()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/CoverUtils;->getClockFontPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mThemeFontPath:Ljava/lang/String;

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->onTimeChanged()V

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->registerCallback(Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->unregisterCallback(Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/sec/android/sviewcover/R$bool;->config_isSViewCover2:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mIsCover2:Z

    sget v1, Lcom/sec/android/sviewcover/R$id;->roaming_clock_root:I

    invoke-virtual {p0, v1}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mRoamingClockRoot:Landroid/widget/LinearLayout;

    sget v1, Lcom/sec/android/sviewcover/R$id;->roaming_digital_clock_time:I

    invoke-virtual {p0, v1}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mRoamingTime:Landroid/widget/TextView;

    sget v1, Lcom/sec/android/sviewcover/R$id;->roaming_digital_clock_ampm:I

    invoke-virtual {p0, v1}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mRoamingAmPm:Landroid/widget/TextView;

    sget v1, Lcom/sec/android/sviewcover/R$id;->digital_day_of_the_week:I

    invoke-virtual {p0, v1}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mDayofWeek:Landroid/widget/TextView;

    sget v1, Lcom/sec/android/sviewcover/R$id;->roaming_digital_month_day:I

    invoke-virtual {p0, v1}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mRoamingMonthandDay:Landroid/widget/TextView;

    sget v1, Lcom/sec/android/sviewcover/R$id;->roaming_clock:I

    invoke-virtual {p0, v1}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mRoamingClock:Landroid/widget/LinearLayout;

    sget v1, Lcom/sec/android/sviewcover/R$id;->region_roaming:I

    invoke-virtual {p0, v1}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mRoamingRegionText:Landroid/widget/TextView;

    sget v1, Lcom/sec/android/sviewcover/R$id;->home_clock_root:I

    invoke-virtual {p0, v1}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mHomeClockRoot:Landroid/widget/LinearLayout;

    sget v1, Lcom/sec/android/sviewcover/R$id;->home_digital_clock_time:I

    invoke-virtual {p0, v1}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mHomeTime:Landroid/widget/TextView;

    sget v1, Lcom/sec/android/sviewcover/R$id;->home_digital_clock_ampm:I

    invoke-virtual {p0, v1}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mHomeAmPm:Landroid/widget/TextView;

    sget v1, Lcom/sec/android/sviewcover/R$id;->home_digital_month_day:I

    invoke-virtual {p0, v1}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mHomeMonthandDay:Landroid/widget/TextView;

    sget v1, Lcom/sec/android/sviewcover/R$id;->home_clock:I

    invoke-virtual {p0, v1}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mHomeClock:Landroid/widget/LinearLayout;

    sget v1, Lcom/sec/android/sviewcover/R$id;->region_home:I

    invoke-virtual {p0, v1}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mHomeRegionText:Landroid/widget/TextView;

    const-string v1, "/system/fonts/SECRobotoLight-Regular.ttf"

    invoke-static {v1}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mAmpmTypeface:Landroid/graphics/Typeface;

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mThemeFontPath:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mThemeFontPath:Ljava/lang/String;

    invoke-static {v1}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->setThemeFontTypeFace(Landroid/graphics/Typeface;)V

    :goto_0
    invoke-static {}, Lcom/sec/android/cover/FeatureUtils;->isATTModel()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mRoamingRegionText:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->refreshClock()V

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->setFontTypeFace()V

    goto :goto_0
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->getRoamingSingleTTSMessage()Ljava/lang/String;

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

    sget-object v2, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "refreshClock() , locale = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_4

    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mRoamingAmPm:Landroid/widget/TextView;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mRoamingClock:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_1

    const-string v2, "ko_KR"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mRoamingAmPm:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mRoamingAmPm:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mRoamingClock:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mRoamingAmPm:Landroid/widget/TextView;

    invoke-virtual {v2, v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mHomeAmPm:Landroid/widget/TextView;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mHomeClock:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_3

    const-string v2, "ko_KR"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mHomeAmPm:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mHomeAmPm:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_2
    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mHomeClock:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mHomeAmPm:Landroid/widget/TextView;

    invoke-virtual {v2, v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    :cond_3
    :goto_1
    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mRoamingRegionText:Landroid/widget/TextView;

    sget v3, Lcom/sec/android/sviewcover/R$string;->s_view_screen_roaming:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mHomeRegionText:Landroid/widget/TextView;

    sget v3, Lcom/sec/android/sviewcover/R$string;->s_view_screen_home:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    :cond_4
    return-void

    :cond_5
    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mRoamingAmPm:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_6

    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mRoamingAmPm:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_6
    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mRoamingClock:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mRoamingAmPm:Landroid/widget/TextView;

    invoke-virtual {v2, v3, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    goto :goto_0

    :cond_7
    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mHomeAmPm:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_8

    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mHomeAmPm:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_8
    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mHomeClock:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverDualClockWidget;->mHomeAmPm:Landroid/widget/TextView;

    invoke-virtual {v2, v3, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    goto :goto_1
.end method
