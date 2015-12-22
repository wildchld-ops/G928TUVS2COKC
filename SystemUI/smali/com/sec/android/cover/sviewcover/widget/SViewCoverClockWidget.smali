.class public Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;
.super Landroid/widget/LinearLayout;
.source "SViewCoverClockWidget.java"


# static fields
.field private static final CLOCK_UPDATE_DELAY:J = 0x7d0L

.field private static TAG:Ljava/lang/String; = null

.field public static final mAmPmFormat:Ljava/lang/String; = "AA"

.field public static final mTime24HFormat:Ljava/lang/String; = "kk:mm"

.field public static mTimeFormat:Ljava/lang/String;


# instance fields
.field private final MSG_CLOCK_UPDATE:I

.field private mAmPm:Landroid/widget/TextView;

.field private mAmpmTypeface:Landroid/graphics/Typeface;

.field private mCalendar:Ljava/util/Calendar;

.field private mClockHandler:Landroid/os/Handler;

.field private mClockRoot:Landroid/widget/RelativeLayout;

.field private mClockView:Landroid/widget/LinearLayout;

.field private mContext:Landroid/content/Context;

.field private mDayofWeek:Landroid/widget/TextView;

.field private mFestivalEnabled:Z

.field private mFestivalIcon:Landroid/widget/ImageView;

.field private mIs24HTime:Z

.field private mIsCover2:Z

.field private mMonthandDay:Landroid/widget/TextView;

.field private mThemeFontPath:Ljava/lang/String;

.field private mTime:Landroid/widget/TextView;

.field private mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->TAG:Ljava/lang/String;

    const-string v0, "h:mm"

    sput-object v0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->mTimeFormat:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-boolean v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->mFestivalEnabled:Z

    iput-boolean v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->mIs24HTime:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->mThemeFontPath:Ljava/lang/String;

    new-instance v0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget$1;

    invoke-direct {v0, p0}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget$1;-><init>(Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;)V

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    const/16 v0, 0x12c2

    iput v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->MSG_CLOCK_UPDATE:I

    new-instance v0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget$2;

    invoke-direct {v0, p0}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget$2;-><init>(Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;)V

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->mClockHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->mContext:Landroid/content/Context;

    sget-object v0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->TAG:Ljava/lang/String;

    const-string v1, "Clock()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->onThemeFontChanged(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->onTimeChanged()V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->mClockHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->mFestivalIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->mFestivalEnabled:Z

    return v0
.end method

.method static synthetic access$602(Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->mFestivalEnabled:Z

    return p1
.end method

.method static synthetic access$702(Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->mIs24HTime:Z

    return p1
.end method

.method static synthetic access$800(Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;)Z
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->isFestivalEffectEnabled()Z

    move-result v0

    return v0
.end method

.method private isFestivalEffectEnabled()Z
    .locals 7

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/sec/android/cover/manager/CoverDatabaseManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverDatabaseManager;

    move-result-object v4

    const-string v5, "festival_effect_enabled"

    invoke-virtual {v4, v5, v3}, Lcom/sec/android/cover/manager/CoverDatabaseManager;->getInt(Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_0

    move v1, v2

    :goto_0
    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/sec/android/cover/manager/CoverDatabaseManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverDatabaseManager;

    move-result-object v4

    const-string v5, "festival_effect_lockscreen_wallpaper"

    invoke-virtual {v4, v5, v3}, Lcom/sec/android/cover/manager/CoverDatabaseManager;->getInt(Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_1

    move v0, v2

    :goto_1
    sget-object v4, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isFestivalEffectEnabled() festivalMasterEnabled = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", festivalLockscreenEnabled = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    :goto_2
    return v2

    :cond_0
    move v1, v3

    goto :goto_0

    :cond_1
    move v0, v3

    goto :goto_1

    :cond_2
    move v2, v3

    goto :goto_2
.end method

.method private onThemeFontChanged(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/sec/android/cover/FeatureUtils;->isSupportElasticPlugin()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/sec/android/cover/CoverUtils;->setClockFontPath(Landroid/content/Context;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->mThemeFontPath:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private onTimeChanged()V
    .locals 9

    const/4 v8, 0x0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->mCalendar:Ljava/util/Calendar;

    sget-object v5, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "initClock() : TimeZone ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->mCalendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v5, "ja_JP"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    const-string v5, "K:mm"

    sput-object v5, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->mTimeFormat:Ljava/lang/String;

    :cond_0
    :goto_0
    const/4 v4, 0x0

    iget-boolean v5, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->mIs24HTime:Z

    if-eqz v5, :cond_6

    const-string v5, "kk:mm"

    iget-object v6, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->mCalendar:Ljava/util/Calendar;

    invoke-static {v5, v6}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    iget-boolean v5, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->mIsCover2:Z

    if-eqz v5, :cond_1

    invoke-interface {v4, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    const/16 v6, 0x31

    if-ne v5, v6, :cond_1

    :try_start_0
    const-string v5, "UTF-8"

    invoke-static {v3, v5}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_2
    if-eqz v3, :cond_2

    iget-object v5, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->mTime:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    iget-object v5, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->mAmPm:Landroid/widget/TextView;

    if-eqz v5, :cond_3

    iget-boolean v5, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->mIs24HTime:Z

    if-nez v5, :cond_7

    iget-object v5, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->mAmPm:Landroid/widget/TextView;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v5, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->mAmPm:Landroid/widget/TextView;

    const-string v6, "AA"

    iget-object v7, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->mCalendar:Ljava/util/Calendar;

    invoke-static {v6, v7}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    :goto_3
    iget-object v5, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->mCalendar:Ljava/util/Calendar;

    iget-object v6, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->mContext:Landroid/content/Context;

    invoke-static {v5, v6}, Lcom/sec/android/cover/CoverUtils;->getDateFormat(Ljava/util/Calendar;Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v5, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->mDayofWeek:Landroid/widget/TextView;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->mDayofWeek:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->mContext:Landroid/content/Context;

    sget v7, Lcom/sec/android/sviewcover/R$string;->clear_cover_wday_day:I

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->mCalendar:Ljava/util/Calendar;

    invoke-static {v6, v7}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    iget-object v5, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->mMonthandDay:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->mCalendar:Ljava/util/Calendar;

    invoke-static {v0, v6}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->mClockView:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->getSingleTTSMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void

    :cond_5
    const-string v5, "h:mm"

    sput-object v5, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->mTimeFormat:Ljava/lang/String;

    goto :goto_0

    :cond_6
    sget-object v5, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->mTimeFormat:Ljava/lang/String;

    iget-object v6, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->mCalendar:Ljava/util/Calendar;

    invoke-static {v5, v6}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v4

    goto :goto_1

    :catch_0
    move-exception v2

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    :cond_7
    iget-object v5, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->mAmPm:Landroid/widget/TextView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3
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
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->mAmpmTypeface:Landroid/graphics/Typeface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->mAmPm:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->mAmPm:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->mAmpmTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_0
.end method

.method private setThemeFontTypeFace(Landroid/graphics/Typeface;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->mTime:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->mAmPm:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->mDayofWeek:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->mMonthandDay:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getSingleTTSMessage()Ljava/lang/String;
    .locals 8

    const-string v0, ""

    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->mCalendar:Ljava/util/Calendar;

    iget-object v5, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->mContext:Landroid/content/Context;

    invoke-static {v4, v5}, Lcom/sec/android/cover/CoverUtils;->getDateFormat(Ljava/util/Calendar;Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->mCalendar:Ljava/util/Calendar;

    invoke-static {v1, v4}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->mCalendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    iget-boolean v4, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->mIs24HTime:Z

    if-eqz v4, :cond_1

    const-string v4, "kk:mm"

    iget-object v5, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->mCalendar:Ljava/util/Calendar;

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

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    sget-object v4, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->mTimeFormat:Ljava/lang/String;

    iget-object v5, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->mCalendar:Ljava/util/Calendar;

    invoke-static {v4, v5}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->mAmPm:Landroid/widget/TextView;

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->mAmPm:Landroid/widget/TextView;

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

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->mIs24HTime:Z

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->mThemeFontPath:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/sec/android/cover/FeatureUtils;->isSupportElasticPlugin()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/CoverUtils;->getClockFontPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->mThemeFontPath:Ljava/lang/String;

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->onTimeChanged()V

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->registerCallback(Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->unregisterCallback(Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 5

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/sec/android/sviewcover/R$bool;->config_isSViewCover2:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->mIsCover2:Z

    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->isFestivalEffectEnabled()Z

    move-result v3

    iput-boolean v3, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->mFestivalEnabled:Z

    sget v3, Lcom/sec/android/sviewcover/R$id;->clock_time_and_date:I

    invoke-virtual {p0, v3}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->mClockView:Landroid/widget/LinearLayout;

    sget v3, Lcom/sec/android/sviewcover/R$id;->clock_root:I

    invoke-virtual {p0, v3}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->mClockRoot:Landroid/widget/RelativeLayout;

    sget v3, Lcom/sec/android/sviewcover/R$id;->digital_clock_time:I

    invoke-virtual {p0, v3}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->mTime:Landroid/widget/TextView;

    sget v3, Lcom/sec/android/sviewcover/R$id;->digital_clock_ampm:I

    invoke-virtual {p0, v3}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->mAmPm:Landroid/widget/TextView;

    sget v3, Lcom/sec/android/sviewcover/R$id;->festival_icon:I

    invoke-virtual {p0, v3}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->mFestivalIcon:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/sec/android/cover/manager/CoverDatabaseManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverDatabaseManager;

    move-result-object v3

    const-string v4, "FestivalList"

    invoke-virtual {v3, v4}, Lcom/sec/android/cover/manager/CoverDatabaseManager;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-boolean v3, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->mFestivalEnabled:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->mFestivalIcon:Landroid/widget/ImageView;

    if-eqz v3, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->mContext:Landroid/content/Context;

    invoke-static {v3, v1}, Lcom/sec/android/cover/CoverUtils;->getFestivalIcon(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->mFestivalIcon:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->mFestivalIcon:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    :goto_0
    sget v3, Lcom/sec/android/sviewcover/R$id;->digital_day_of_the_week:I

    invoke-virtual {p0, v3}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->mDayofWeek:Landroid/widget/TextView;

    sget v3, Lcom/sec/android/sviewcover/R$id;->digital_month_day:I

    invoke-virtual {p0, v3}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->mMonthandDay:Landroid/widget/TextView;

    const-string v3, "/system/fonts/SECRobotoLight-Regular.ttf"

    invoke-static {v3}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->mAmpmTypeface:Landroid/graphics/Typeface;

    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->mThemeFontPath:Ljava/lang/String;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->mThemeFontPath:Ljava/lang/String;

    invoke-static {v3}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->setThemeFontTypeFace(Landroid/graphics/Typeface;)V

    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->refreshClock()V

    return-void

    :cond_1
    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->mFestivalIcon:Landroid/widget/ImageView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->setFontTypeFace()V

    goto :goto_1
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->getSingleTTSMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public refreshClock()V
    .locals 8

    const/16 v7, 0x10

    const/16 v6, 0x11

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "refreshClock() , locale = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/cover/FeatureUtils;->isHProjectVariant()Z

    move-result v3

    if-nez v3, :cond_6

    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->mFestivalIcon:Landroid/widget/ImageView;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->mFestivalIcon:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_6

    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->mClockRoot:Landroid/widget/RelativeLayout;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setGravity(I)V

    :goto_0
    if-eqz v2, :cond_5

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->mAmPm:Landroid/widget/TextView;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->mAmPm:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    :cond_0
    const/4 v1, 0x0

    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->mFestivalIcon:Landroid/widget/ImageView;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->mFestivalIcon:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    :cond_1
    const-string v3, "ko_KR"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    if-eqz v0, :cond_2

    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    sget v3, Lcom/sec/android/sviewcover/R$id;->digital_clock_time:I

    invoke-virtual {v0, v7, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    :cond_2
    if-eqz v1, :cond_3

    sget v3, Lcom/sec/android/sviewcover/R$id;->digital_clock_time:I

    invoke-virtual {v1, v6, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    :cond_3
    :goto_1
    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->mAmPm:Landroid/widget/TextView;

    if-eqz v3, :cond_4

    if-eqz v0, :cond_4

    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->mAmPm:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_4
    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->mFestivalIcon:Landroid/widget/ImageView;

    if-eqz v3, :cond_5

    if-eqz v1, :cond_5

    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->mFestivalIcon:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_5
    return-void

    :cond_6
    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->mClockRoot:Landroid/widget/RelativeLayout;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setGravity(I)V

    goto :goto_0

    :cond_7
    if-eqz v0, :cond_8

    invoke-virtual {v0, v7}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    sget v3, Lcom/sec/android/sviewcover/R$id;->digital_clock_time:I

    invoke-virtual {v0, v6, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    :cond_8
    if-eqz v1, :cond_3

    sget v3, Lcom/sec/android/sviewcover/R$id;->digital_clock_ampm:I

    invoke-virtual {v1, v6, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_1
.end method
