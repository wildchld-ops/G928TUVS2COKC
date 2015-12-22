.class public Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;
.super Landroid/widget/FrameLayout;
.source "AdaptiveEventContainerSmall.java"

# interfaces
.implements Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEventCallback;


# static fields
.field private static final MARGIN_LEFT_RIGHT_CENTER_CONTAINER:I = 0xf

.field static final TAG:Ljava/lang/String; = "AdaptiveEventContainerSmall"

.field private static final TEST_WEATHER:Z = false

.field private static final UPDATE_PEDO_MESSAGE:I = 0x132f

.field private static final UPDATE_WEATHER_MESSAGE:I = 0x1330

.field private static final WEATHER_CURRENT_CITY_ID:Ljava/lang/String; = "cityId:current"

.field private static mIsPedoShowing:Z


# instance fields
.field private mAdaptiveInfoArea:Landroid/widget/LinearLayout;

.field private mChinaHighTemperature:Landroid/widget/TextView;

.field private mChinaLowTemperature:Landroid/widget/TextView;

.field private mCityIcon:Landroid/widget/ImageView;

.field private mCityName:Landroid/widget/TextView;

.field mContentObserver:Landroid/database/ContentObserver;

.field private mIcon:Landroid/widget/ImageView;

.field private mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mIs4DigitOrDualClock:Z

.field private mIsHighLowTempModeEnable:Z

.field private mIsWeatherShowing:Z

.field private mLatteHighTemperature:Landroid/widget/TextView;

.field private mLatteLowTemperature:Landroid/widget/TextView;

.field private mLifeDustIcon:Landroid/widget/ImageView;

.field private mLifeDustLayout:Landroid/widget/LinearLayout;

.field private mLifeDustText:Landroid/widget/TextView;

.field private mPedContainer:Landroid/widget/LinearLayout;

.field private mSeparatorText:Landroid/widget/TextView;

.field private mSmallWeather:Landroid/view/View;

.field private mTemperature:Landroid/widget/TextView;

.field private mUnit:Landroid/widget/ImageView;

.field private mUnitLow:Landroid/widget/ImageView;

.field private mUpdateHandler:Landroid/os/Handler;

.field private mUseBlackTextOnWhiteWallpaper:Z

.field private mWeatherContainer:Landroid/widget/LinearLayout;

.field private mWeatherImageArchive:Lcom/android/keyguard/sec/AbstractWeatherImageArchive;

.field private mWeatherLayout:Landroid/widget/LinearLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mIsPedoShowing:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-boolean v1, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mIsWeatherShowing:Z

    iput-boolean v1, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mUseBlackTextOnWhiteWallpaper:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mIs4DigitOrDualClock:Z

    iput-boolean v1, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mIsHighLowTempModeEnable:Z

    new-instance v0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall$1;-><init>(Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mUpdateHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall$2;

    iget-object v1, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mUpdateHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall$2;-><init>(Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContentObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall$3;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall$3;-><init>(Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-direct {p0}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->getCPName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/keyguard/sec/WeatherImageArchiveFactory;->make(Ljava/lang/String;)Lcom/android/keyguard/sec/AbstractWeatherImageArchive;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mWeatherImageArchive:Lcom/android/keyguard/sec/AbstractWeatherImageArchive;

    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->handlePedoUpdate()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->handleWeatherUpdate(Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mSmallWeather:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mUseBlackTextOnWhiteWallpaper:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->changeTextColorOnWhiteWallaper()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->init()V

    return-void
.end method

.method static synthetic access$602(Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;Lcom/android/keyguard/sec/AbstractWeatherImageArchive;)Lcom/android/keyguard/sec/AbstractWeatherImageArchive;
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mWeatherImageArchive:Lcom/android/keyguard/sec/AbstractWeatherImageArchive;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->getCPName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mWeatherContainer:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private changeTextColorOnWhiteWallaper()V
    .locals 7

    const/4 v6, 0x0

    const v5, -0xbbbbbc

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mSmallWeather:Landroid/view/View;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/sec/KeyguardProperties;->isDownloadableThemeApplied(Landroid/content/Context;)Z

    move-result v0

    iget-boolean v1, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mUseBlackTextOnWhiteWallpaper:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mTemperature:Landroid/widget/TextView;

    invoke-static {v1, v2, v0, v4}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->changeBlackTextOnWhiteWallpaper(Landroid/content/Context;Landroid/widget/TextView;ZZ)V

    iget-object v1, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mCityName:Landroid/widget/TextView;

    invoke-static {v1, v2, v0, v4}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->changeBlackTextOnWhiteWallpaper(Landroid/content/Context;Landroid/widget/TextView;ZZ)V

    iget-object v1, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mLatteHighTemperature:Landroid/widget/TextView;

    invoke-static {v1, v2, v0, v4}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->changeBlackTextOnWhiteWallpaper(Landroid/content/Context;Landroid/widget/TextView;ZZ)V

    iget-object v1, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mLatteLowTemperature:Landroid/widget/TextView;

    invoke-static {v1, v2, v0, v4}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->changeBlackTextOnWhiteWallpaper(Landroid/content/Context;Landroid/widget/TextView;ZZ)V

    iget-object v1, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mChinaHighTemperature:Landroid/widget/TextView;

    invoke-static {v1, v2, v0, v4}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->changeBlackTextOnWhiteWallpaper(Landroid/content/Context;Landroid/widget/TextView;ZZ)V

    iget-object v1, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mChinaLowTemperature:Landroid/widget/TextView;

    invoke-static {v1, v2, v0, v4}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->changeBlackTextOnWhiteWallpaper(Landroid/content/Context;Landroid/widget/TextView;ZZ)V

    iget-object v1, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mSeparatorText:Landroid/widget/TextView;

    invoke-static {v1, v2, v0, v4}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->changeBlackTextOnWhiteWallpaper(Landroid/content/Context;Landroid/widget/TextView;ZZ)V

    iget-object v1, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mLifeDustText:Landroid/widget/TextView;

    invoke-static {v1, v2, v0, v4}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->changeBlackTextOnWhiteWallpaper(Landroid/content/Context;Landroid/widget/TextView;ZZ)V

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mUnit:Landroid/widget/ImageView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mUnit:Landroid/widget/ImageView;

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v5, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_2
    iget-object v1, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mCityIcon:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mCityIcon:Landroid/widget/ImageView;

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v5, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mTemperature:Landroid/widget/TextView;

    invoke-static {v1, v2, v0, v3}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->changeBlackTextOnWhiteWallpaper(Landroid/content/Context;Landroid/widget/TextView;ZZ)V

    iget-object v1, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mCityName:Landroid/widget/TextView;

    invoke-static {v1, v2, v0, v3}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->changeBlackTextOnWhiteWallpaper(Landroid/content/Context;Landroid/widget/TextView;ZZ)V

    iget-object v1, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mLatteHighTemperature:Landroid/widget/TextView;

    invoke-static {v1, v2, v0, v3}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->changeBlackTextOnWhiteWallpaper(Landroid/content/Context;Landroid/widget/TextView;ZZ)V

    iget-object v1, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mLatteLowTemperature:Landroid/widget/TextView;

    invoke-static {v1, v2, v0, v3}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->changeBlackTextOnWhiteWallpaper(Landroid/content/Context;Landroid/widget/TextView;ZZ)V

    iget-object v1, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mChinaHighTemperature:Landroid/widget/TextView;

    invoke-static {v1, v2, v0, v3}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->changeBlackTextOnWhiteWallpaper(Landroid/content/Context;Landroid/widget/TextView;ZZ)V

    iget-object v1, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mChinaLowTemperature:Landroid/widget/TextView;

    invoke-static {v1, v2, v0, v3}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->changeBlackTextOnWhiteWallpaper(Landroid/content/Context;Landroid/widget/TextView;ZZ)V

    iget-object v1, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mSeparatorText:Landroid/widget/TextView;

    invoke-static {v1, v2, v0, v3}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->changeBlackTextOnWhiteWallpaper(Landroid/content/Context;Landroid/widget/TextView;ZZ)V

    iget-object v1, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mLifeDustText:Landroid/widget/TextView;

    invoke-static {v1, v2, v0, v3}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->changeBlackTextOnWhiteWallpaper(Landroid/content/Context;Landroid/widget/TextView;ZZ)V

    iget-object v1, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mUnit:Landroid/widget/ImageView;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mUnit:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_4
    iget-object v1, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mCityIcon:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mCityIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto/16 :goto_0
.end method

.method private findAndSetViews()V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mSmallWeather:Landroid/view/View;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mSmallWeather:Landroid/view/View;

    sget v1, Lcom/android/keyguard/R$id;->adaptive_weather_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mWeatherLayout:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mSmallWeather:Landroid/view/View;

    sget v1, Lcom/android/keyguard/R$id;->adaptive_weather_small_icon:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mIcon:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mSmallWeather:Landroid/view/View;

    sget v1, Lcom/android/keyguard/R$id;->adaptive_weather_small_temp:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mTemperature:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mSmallWeather:Landroid/view/View;

    sget v1, Lcom/android/keyguard/R$id;->adaptive_weather_small_unit:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mUnit:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mSmallWeather:Landroid/view/View;

    sget v1, Lcom/android/keyguard/R$id;->adaptive_weather_city_icon:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mCityIcon:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mSmallWeather:Landroid/view/View;

    sget v1, Lcom/android/keyguard/R$id;->adaptive_weather_city_name:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mCityName:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mSmallWeather:Landroid/view/View;

    sget v1, Lcom/android/keyguard/R$id;->adaptive_weather_latte_high_temp:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mLatteHighTemperature:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mSmallWeather:Landroid/view/View;

    sget v1, Lcom/android/keyguard/R$id;->adaptive_weather_latte_low_temp:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mLatteLowTemperature:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mSmallWeather:Landroid/view/View;

    sget v1, Lcom/android/keyguard/R$id;->adaptive_weather_small_high_temp:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mChinaHighTemperature:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mSmallWeather:Landroid/view/View;

    sget v1, Lcom/android/keyguard/R$id;->adaptive_weather_small_low_temp:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mChinaLowTemperature:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mSmallWeather:Landroid/view/View;

    sget v1, Lcom/android/keyguard/R$id;->adaptive_weather_small_Separator:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mSeparatorText:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mSmallWeather:Landroid/view/View;

    sget v1, Lcom/android/keyguard/R$id;->adaptive_weather_small_low_unit:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mUnitLow:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mSmallWeather:Landroid/view/View;

    sget v1, Lcom/android/keyguard/R$id;->adaptive_weather_life_dust_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mLifeDustLayout:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mSmallWeather:Landroid/view/View;

    sget v1, Lcom/android/keyguard/R$id;->adaptive_weather_life_dust:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mLifeDustText:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mSmallWeather:Landroid/view/View;

    sget v1, Lcom/android/keyguard/R$id;->adaptive_weather_dust_icon:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mLifeDustIcon:Landroid/widget/ImageView;

    goto/16 :goto_0
.end method

.method private getCPName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/AdaptiveEventManager;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/AdaptiveEventManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/sec/AdaptiveEventManager;->getCPName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getEmergencyModeEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private getKidsModeEnabled()Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "kids_home_mode"

    const/4 v4, -0x2

    invoke-static {v2, v3, v1, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private getLastSelLocation()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isKModelWeatherDeamon()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->getLastSelLocation(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/AdaptiveEventManager;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/AdaptiveEventManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/sec/AdaptiveEventManager;->isOwnerUser()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->getLastSelLocation(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/AdaptiveEventManager;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/AdaptiveEventManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/sec/AdaptiveEventManager;->getWeatherInfo()Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;->getCurrentCityId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getPedoEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->isPedoEnabled(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private getProfileEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->isProfileOn(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private getSettingDBAdaptiveEventEnabled()Z
    .locals 1

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isKModelWeatherDeamon()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->isAdditionalInfoEnabled(Landroid/content/Context;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->isShowInformation(Landroid/content/Context;)Z

    move-result v0

    goto :goto_0
.end method

.method private getTemperatureUnit(I)I
    .locals 2

    invoke-direct {p0}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->useUniCodeTemperatureUnit()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    packed-switch p1, :pswitch_data_0

    sget v0, Lcom/android/keyguard/R$drawable;->weather_events_c:I

    goto :goto_0

    :pswitch_0
    sget v0, Lcom/android/keyguard/R$drawable;->weather_events_f:I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private getTemperatureUnitText(I)Ljava/lang/String;
    .locals 4

    const-string v1, "AdaptiveEventContainerSmall"

    const-string v2, "getTemperatureUnitText()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch p1, :pswitch_data_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/keyguard/R$string;->tts_temperature:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/keyguard/R$string;->tts_temp_celsius:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/keyguard/R$string;->tts_temperature:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/keyguard/R$string;->tts_temp_fahrenheit:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private getValidTemp(F)Ljava/lang/String;
    .locals 4

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "999"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const-string v1, "AdaptiveEventContainerSmall"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "-"

    :cond_1
    return-object v0
.end method

.method private getWeatherCityIconImageResources()I
    .locals 3

    invoke-direct {p0}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->getLastSelLocation()Ljava/lang/String;

    move-result-object v0

    const-string v2, "cityId:current"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/sec/AdaptiveEventManager;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/AdaptiveEventManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/sec/AdaptiveEventManager;->getWeatherInfo()Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;->getSystemLocation()I

    move-result v2

    if-eqz v2, :cond_0

    sget v1, Lcom/android/keyguard/R$drawable;->icon_location:I

    :goto_0
    return v1

    :cond_0
    sget v1, Lcom/android/keyguard/R$drawable;->icon_location_unable:I

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getWeatherEnabled()Z
    .locals 2

    const/4 v0, 0x1

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isKModelWeatherDeamon()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->isAdditionalWeatherEnabled(Landroid/content/Context;)Z

    move-result v0

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/sec/AdaptiveEventManager;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/AdaptiveEventManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/sec/AdaptiveEventManager;->isOwnerUser()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->isAdditionalWeatherEnabled(Landroid/content/Context;)Z

    move-result v0

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/sec/AdaptiveEventManager;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/AdaptiveEventManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/sec/AdaptiveEventManager;->getWeatherInfo()Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;->getShowLockAndCover()I

    move-result v1

    if-eq v1, v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private handlePedoUpdate()V
    .locals 15

    const/16 v12, 0x8

    const/4 v11, 0x0

    const-string v10, "AdaptiveEventContainerSmall"

    const-string v13, "handlePedoUpdate()"

    invoke-static {v10, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v10, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/android/keyguard/sec/AdaptiveEventManager;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/AdaptiveEventManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/keyguard/sec/AdaptiveEventManager;->getPedometerEvent()Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;

    move-result-object v8

    if-nez v8, :cond_1

    const-string v10, "AdaptiveEventContainerSmall"

    const-string v11, "pedoEvent == null"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v10, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mPedContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v10}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget-object v10, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mPedContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v10, v12}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v8}, Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEvent;->getView()Landroid/view/View;

    move-result-object v9

    if-nez v9, :cond_2

    const-string v10, "AdaptiveEventContainerSmall"

    const-string v11, "pedoEvent view == null"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v10, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mPedContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v10, v12}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    :cond_2
    if-eqz v9, :cond_0

    invoke-virtual {v9}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    if-eqz v7, :cond_3

    invoke-virtual {v7, v9}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_3
    invoke-direct {p0}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->getSettingDBAdaptiveEventEnabled()Z

    move-result v5

    invoke-direct {p0}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->getPedoEnabled()Z

    move-result v4

    iget-object v10, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/android/keyguard/sec/KeyguardProperties;->hasCocktailBar(Landroid/content/Context;)Z

    move-result v2

    const-string v10, "AdaptiveEventContainerSmall"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "handlePedoUpdate Show: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ",   isPedoEnabled: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v10, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v5, :cond_5

    if-eqz v4, :cond_5

    if-nez v2, :cond_5

    const/4 v10, 0x1

    :goto_1
    sput-boolean v10, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mIsPedoShowing:Z

    iget-object v13, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mPedContainer:Landroid/widget/LinearLayout;

    sget-boolean v10, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mIsPedoShowing:Z

    if-eqz v10, :cond_6

    move v10, v11

    :goto_2
    invoke-virtual {v13, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-virtual {v9, v11}, Landroid/view/View;->setFocusable(Z)V

    invoke-virtual {v9, v11}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    iget-object v10, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mPedContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v10}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget-object v10, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mPedContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v10, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isKoreaFeature()Z

    move-result v10

    if-eqz v10, :cond_0

    const-string v10, "AdaptiveEventContainerSmall"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "    mPedoView= "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mPedContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v10, "AdaptiveEventContainerSmall"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "    view= "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v9

    check-cast v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    const/4 v3, 0x0

    :goto_3
    if-ge v3, v6, :cond_0

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_4

    instance-of v10, v0, Landroid/widget/TextView;

    if-eqz v10, :cond_4

    move-object v10, v0

    check-cast v10, Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    if-eqz v10, :cond_7

    const-string v11, "AdaptiveEventContainerSmall"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "    string= "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object v10, v0

    check-cast v10, Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v12, " textview= "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v11, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_5
    move v10, v11

    goto/16 :goto_1

    :cond_6
    move v10, v12

    goto/16 :goto_2

    :cond_7
    const-string v10, "AdaptiveEventContainerSmall"

    const-string v11, "    string is null"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method

.method private handleWeatherUpdate(Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;)V
    .locals 23

    const-string v19, "AdaptiveEventContainerSmall"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "handleWeatherUpdate() : mSmallWeather= "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mSmallWeather:Landroid/view/View;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mSmallWeather:Landroid/view/View;

    move-object/from16 v19, v0

    if-nez v19, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isKModelWeatherDeamon()Z

    move-result v19

    if-eqz v19, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mWeatherContainer:Landroid/widget/LinearLayout;

    move-object/from16 v19, v0

    if-eqz v19, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mWeatherContainer:Landroid/widget/LinearLayout;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v19

    if-eqz v19, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mWeatherContainer:Landroid/widget/LinearLayout;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->findAndSetViews()V

    invoke-direct/range {p0 .. p1}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->updateLifeDustInfo(Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;->getIconNumber()I

    move-result v19

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->getWeatherIconImageResources(I)I

    move-result v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mIcon:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mCityName:Landroid/widget/TextView;

    move-object/from16 v19, v0

    if-eqz v19, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mCityIcon:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    if-eqz v19, :cond_2

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isKModelWeatherDeamon()Z

    move-result v19

    if-eqz v19, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mCityName:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mCityIcon:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;->getCurrentTemperature()F

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->round(F)I

    move-result v16

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    const-string v19, "ar"

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_3

    const-string v19, "fa"

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_b

    :cond_3
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->toDigitString(I)Ljava/lang/String;

    move-result-object v17

    :goto_2
    const-string v19, "-"

    invoke-virtual/range {p1 .. p1}, Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;->getCurrentTemperature()F

    move-result v20

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->getValidTemp(F)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_c

    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mIsHighLowTempModeEnable:Z

    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mCityName:Landroid/widget/TextView;

    move-object/from16 v19, v0

    invoke-virtual/range {p1 .. p1}, Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;->getCurrentCityName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mCityName:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mIsHighLowTempModeEnable:Z

    move/from16 v19, v0

    if-eqz v19, :cond_11

    invoke-virtual/range {p1 .. p1}, Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;->getHighTemperature()F

    move-result v7

    invoke-virtual/range {p1 .. p1}, Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;->getLowTemperature()F

    move-result v13

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->getValidTemp(F)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->getValidTemp(F)Ljava/lang/String;

    move-result-object v3

    const-string v19, "AdaptiveEventContainerSmall"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "handleWeatherUpdate() High/Low only mode [high, low] = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mChinaHighTemperature:Landroid/widget/TextView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mSeparatorText:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const-string v20, "/"

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->useUniCodeTemperatureUnit()Z

    move-result v19

    if-eqz v19, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mChinaLowTemperature:Landroid/widget/TextView;

    move-object/from16 v19, v0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "\u00b0"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mUnitLow:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    invoke-virtual/range {p1 .. p1}, Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;->getTempScale()I

    move-result v20

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->getTemperatureUnit(I)I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    const-string v19, "-"

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_e

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLatestTabletUX()Z

    move-result v19

    if-eqz v19, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mChinaHighTemperature:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    const/high16 v21, 0x42100000    # 36.0f

    invoke-virtual/range {v19 .. v21}, Landroid/widget/TextView;->setTextSize(IF)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mSeparatorText:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    const/high16 v21, 0x41f00000    # 30.0f

    invoke-virtual/range {v19 .. v21}, Landroid/widget/TextView;->setTextSize(IF)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mChinaLowTemperature:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    const/high16 v21, 0x42100000    # 36.0f

    invoke-virtual/range {v19 .. v21}, Landroid/widget/TextView;->setTextSize(IF)V

    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mTemperature:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mUnit:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Landroid/widget/ImageView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mChinaHighTemperature:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mChinaLowTemperature:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mUnitLow:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/ImageView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mSeparatorText:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-direct/range {p0 .. p0}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->useUniCodeTemperatureUnit()Z

    move-result v19

    if-eqz v19, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mWeatherLayout:Landroid/widget/LinearLayout;

    move-object/from16 v19, v0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "\u00b0"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mCityName:Landroid/widget/TextView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_6
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLatestTabletUX()Z

    move-result v19

    if-eqz v19, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mWeatherLayout:Landroid/widget/LinearLayout;

    move-object/from16 v19, v0

    if-eqz v19, :cond_15

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mIsHighLowTempModeEnable:Z

    move/from16 v19, v0

    if-nez v19, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mLatteHighTemperature:Landroid/widget/TextView;

    move-object/from16 v19, v0

    if-eqz v19, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mLatteLowTemperature:Landroid/widget/TextView;

    move-object/from16 v19, v0

    if-eqz v19, :cond_6

    invoke-virtual/range {p1 .. p1}, Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;->getHighTemperature()F

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->round(F)I

    move-result v8

    invoke-virtual/range {p1 .. p1}, Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;->getLowTemperature()F

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->round(F)I

    move-result v14

    const-string v19, "ar"

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_4

    const-string v19, "fa"

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_14

    :cond_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->toDigitString(I)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->toDigitString(I)Ljava/lang/String;

    move-result-object v11

    :goto_7
    invoke-direct/range {p0 .. p0}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->useUniCodeTemperatureUnit()Z

    move-result v19

    if-eqz v19, :cond_5

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "\u00b0"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "\u00b0"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mLatteHighTemperature:Landroid/widget/TextView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mLatteLowTemperature:Landroid/widget/TextView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mTemperature:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mUnit:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_6
    :goto_8
    invoke-direct/range {p0 .. p0}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->changeTextColorOnWhiteWallaper()V

    invoke-direct/range {p0 .. p0}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->updateTemperatureFont()V

    goto/16 :goto_0

    :cond_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mIsWeatherShowing:Z

    move/from16 v19, v0

    if-eqz v19, :cond_8

    invoke-direct/range {p0 .. p0}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->getWeatherEnabled()Z

    move-result v19

    if-eqz v19, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/keyguard/sec/AdaptiveEventManager;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/AdaptiveEventManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/keyguard/sec/AdaptiveEventManager;->getWeatherInfo()Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;->getIconNumber()I

    move-result v19

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/keyguard/sec/AdaptiveEventManager;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/AdaptiveEventManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/keyguard/sec/AdaptiveEventManager;->getWeatherInfo()Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;->getWidgetCount()I

    move-result v19

    if-eqz v19, :cond_8

    invoke-direct/range {p0 .. p0}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->getLastSelLocation()Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_8

    const/16 v19, 0x1

    :goto_9
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mIsWeatherShowing:Z

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mIsWeatherShowing:Z

    move/from16 v19, v0

    if-nez v19, :cond_1

    goto/16 :goto_0

    :cond_8
    const/16 v19, 0x0

    goto :goto_9

    :cond_9
    invoke-direct/range {p0 .. p0}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->getWeatherCityIconImageResources()I

    move-result v4

    if-eqz v4, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mCityIcon:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/ImageView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mCityIcon:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mCityName:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mIs4DigitOrDualClock:Z

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->setWidthWeatherCityName(Z)V

    goto/16 :goto_1

    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mCityIcon:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_a

    :cond_b
    invoke-virtual/range {p1 .. p1}, Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;->getCurrentTemperature()F

    move-result v19

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->getValidTemp(F)Ljava/lang/String;

    move-result-object v17

    goto/16 :goto_2

    :cond_c
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mIsHighLowTempModeEnable:Z

    goto/16 :goto_3

    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mChinaLowTemperature:Landroid/widget/TextView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    :cond_e
    const/16 v18, 0x14

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v19

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v20

    add-int v15, v19, v20

    const/16 v19, 0x5

    move/from16 v0, v19

    if-le v15, v0, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    sget v20, Lcom/android/keyguard/R$dimen;->kg_weather_high_low_temp_font_small_size:I

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mChinaHighTemperature:Landroid/widget/TextView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v19, 0x0

    move/from16 v0, v19

    iput v0, v12, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mChinaHighTemperature:Landroid/widget/TextView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mChinaLowTemperature:Landroid/widget/TextView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v19, 0x0

    move/from16 v0, v19

    iput v0, v12, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mChinaLowTemperature:Landroid/widget/TextView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mChinaHighTemperature:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v21, v0

    invoke-virtual/range {v19 .. v21}, Landroid/widget/TextView;->setTextSize(IF)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mChinaLowTemperature:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v21, v0

    invoke-virtual/range {v19 .. v21}, Landroid/widget/TextView;->setTextSize(IF)V

    mul-int/lit8 v19, v18, 0x3

    div-int/lit8 v18, v19, 0x4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mSeparatorText:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v21, v0

    invoke-virtual/range {v19 .. v21}, Landroid/widget/TextView;->setTextSize(IF)V

    goto/16 :goto_5

    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    sget v20, Lcom/android/keyguard/R$dimen;->kg_weather_high_low_temp_font_normal_size:I

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v18

    goto :goto_b

    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mWeatherLayout:Landroid/widget/LinearLayout;

    move-object/from16 v19, v0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {p1 .. p1}, Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;->getTempScale()I

    move-result v21

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->getTemperatureUnitText(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {p1 .. p1}, Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;->getTempScale()I

    move-result v22

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->getTemperatureUnitText(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mCityName:Landroid/widget/TextView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    :cond_11
    invoke-direct/range {p0 .. p0}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->useUniCodeTemperatureUnit()Z

    move-result v19

    if-eqz v19, :cond_12

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "\u00b0"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mTemperature:Landroid/widget/TextView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mUnit:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    invoke-virtual/range {p1 .. p1}, Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;->getTempScale()I

    move-result v20

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->getTemperatureUnit(I)I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Landroid/widget/ImageView;->setImageResource(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mCityName:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mTemperature:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mUnit:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/ImageView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mChinaHighTemperature:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mChinaLowTemperature:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mUnitLow:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Landroid/widget/ImageView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mSeparatorText:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-direct/range {p0 .. p0}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->useUniCodeTemperatureUnit()Z

    move-result v19

    if-eqz v19, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mWeatherLayout:Landroid/widget/LinearLayout;

    move-object/from16 v19, v0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mCityName:Landroid/widget/TextView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mWeatherLayout:Landroid/widget/LinearLayout;

    move-object/from16 v19, v0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {p1 .. p1}, Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;->getTempScale()I

    move-result v21

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->getTemperatureUnitText(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mCityName:Landroid/widget/TextView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    :cond_14
    invoke-virtual/range {p1 .. p1}, Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;->getHighTemperature()F

    move-result v19

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->getValidTemp(F)Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p1 .. p1}, Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;->getLowTemperature()F

    move-result v19

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->getValidTemp(F)Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_7

    :cond_15
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLatestTabletUX()Z

    move-result v19

    if-eqz v19, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mWeatherLayout:Landroid/widget/LinearLayout;

    move-object/from16 v19, v0

    if-eqz v19, :cond_6

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mIsHighLowTempModeEnable:Z

    move/from16 v19, v0

    if-eqz v19, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mChinaHighTemperature:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mSeparatorText:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mChinaLowTemperature:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mUnitLow:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/ImageView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mTemperature:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mUnit:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Landroid/widget/ImageView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mLatteHighTemperature:Landroid/widget/TextView;

    move-object/from16 v19, v0

    if-eqz v19, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mLatteLowTemperature:Landroid/widget/TextView;

    move-object/from16 v19, v0

    if-eqz v19, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mLatteHighTemperature:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mLatteLowTemperature:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_8
.end method

.method private inflateWeatherView()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/keyguard/R$layout;->sec_adaptive_weather_small:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mSmallWeather:Landroid/view/View;

    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mSmallWeather:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setFocusable(Z)V

    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mSmallWeather:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/AdaptiveEventManager;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/AdaptiveEventManager;

    move-result-object v0

    const-string v1, "com.android.keyguard.sec.AdaptiveEventManager.Weather"

    iget-object v2, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mSmallWeather:Landroid/view/View;

    invoke-virtual {v0, v1, v2}, Lcom/android/keyguard/sec/AdaptiveEventManager;->setAdaptiveEvent(Ljava/lang/String;Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/AdaptiveEventManager;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/AdaptiveEventManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/sec/AdaptiveEventManager;->getWeatherInfo()Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->updateWeatherInfo(Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;)V

    new-instance v0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall$4;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall$4;-><init>(Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;)V

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private init()V
    .locals 13

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isJProject()Z

    move-result v9

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mAdaptiveInfoArea:Landroid/widget/LinearLayout;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isHProject()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-direct {p0}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->getProfileEnabled()Z

    move-result v9

    if-eqz v9, :cond_2

    iget-object v9, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mAdaptiveInfoArea:Landroid/widget/LinearLayout;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->getSettingDBAdaptiveEventEnabled()Z

    move-result v5

    invoke-direct {p0}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->getEmergencyModeEnabled()Z

    move-result v3

    invoke-direct {p0}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->getKidsModeEnabled()Z

    move-result v4

    const-string v9, "AdaptiveEventContainerSmall"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "init() : isSettingDBAdaptiveEventEnabled="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", isEmergencyModeEnabled="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", isKidsMode="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v5, :cond_10

    if-nez v3, :cond_10

    if-nez v4, :cond_10

    iget-object v9, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/keyguard/sec/KeyguardProperties;->hasCocktailBar(Landroid/content/Context;)Z

    move-result v2

    iget-object v9, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mWeatherContainer:Landroid/widget/LinearLayout;

    if-eqz v9, :cond_c

    invoke-direct {p0}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->getWeatherEnabled()Z

    move-result v9

    if-eqz v9, :cond_3

    if-eqz v2, :cond_7

    :cond_3
    const/4 v9, 0x0

    :goto_1
    iput-boolean v9, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mIsWeatherShowing:Z

    const-string v9, "AdaptiveEventContainerSmall"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getWeatherEnabled()="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-direct {p0}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->getWeatherEnabled()Z

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isKModelWeatherDeamon()Z

    move-result v9

    if-eqz v9, :cond_9

    iget-object v9, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/keyguard/sec/AdaptiveEventManager;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/AdaptiveEventManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/keyguard/sec/AdaptiveEventManager;->getWeatherInfo()Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;->getTrusted()Z

    move-result v6

    iget-boolean v9, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mIsWeatherShowing:Z

    if-eqz v9, :cond_8

    if-eqz v6, :cond_8

    iget-object v9, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/keyguard/sec/AdaptiveEventManager;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/AdaptiveEventManager;

    move-result-object v9

    iget-object v10, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v10}, Lcom/android/keyguard/sec/AdaptiveEventManager;->getCheckCurrentCityLocation(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_8

    const/4 v9, 0x1

    :goto_2
    iput-boolean v9, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mIsWeatherShowing:Z

    const-string v9, "AdaptiveEventContainerSmall"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mWeatherContainer.setVisibility("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mIsWeatherShowing:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "), "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    invoke-static {v11}, Lcom/android/keyguard/sec/AdaptiveEventManager;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/AdaptiveEventManager;

    move-result-object v11

    iget-object v12, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    invoke-virtual {v11, v12}, Lcom/android/keyguard/sec/AdaptiveEventManager;->getCheckCurrentCityLocation(Landroid/content/Context;)Z

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    iget-object v9, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/keyguard/sec/AdaptiveEventManager;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/AdaptiveEventManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/keyguard/sec/AdaptiveEventManager;->sendAdaptiveEventWeatherClockCallback()V

    iget-object v10, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mWeatherContainer:Landroid/widget/LinearLayout;

    iget-boolean v9, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mIsWeatherShowing:Z

    if-eqz v9, :cond_b

    const/4 v9, 0x0

    :goto_4
    invoke-virtual {v10, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-boolean v9, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mIsWeatherShowing:Z

    if-eqz v9, :cond_4

    iget-object v9, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mSmallWeather:Landroid/view/View;

    if-nez v9, :cond_4

    invoke-direct {p0}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->inflateWeatherView()V

    :cond_4
    :goto_5
    iget-object v9, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mPedContainer:Landroid/widget/LinearLayout;

    if-eqz v9, :cond_f

    invoke-direct {p0}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->getPedoEnabled()Z

    move-result v9

    if-eqz v9, :cond_d

    if-nez v2, :cond_d

    const/4 v9, 0x1

    :goto_6
    sput-boolean v9, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mIsPedoShowing:Z

    iget-object v10, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mPedContainer:Landroid/widget/LinearLayout;

    iget-object v9, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/keyguard/sec/AdaptiveEventManager;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/AdaptiveEventManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/keyguard/sec/AdaptiveEventManager;->isPedometerExist()Z

    move-result v9

    if-eqz v9, :cond_e

    sget-boolean v9, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mIsPedoShowing:Z

    if-eqz v9, :cond_e

    const/4 v9, 0x0

    :goto_7
    invoke-virtual {v10, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    sget-boolean v9, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mIsPedoShowing:Z

    if-eqz v9, :cond_5

    invoke-virtual {p0}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->updatePedoContainer()V

    :cond_5
    :goto_8
    iget-object v9, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mAdaptiveInfoArea:Landroid/widget/LinearLayout;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_6
    :goto_9
    iget-object v9, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/keyguard/sec/KeyguardProperties;->isSingleClockCenterAlign(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isClockMovedByWeatherVisiblity()Z

    move-result v9

    if-nez v9, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    iget v1, v9, Landroid/util/DisplayMetrics;->density:F

    iget-object v9, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mAdaptiveInfoArea:Landroid/widget/LinearLayout;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setGravity(I)V

    iget-object v9, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mWeatherContainer:Landroid/widget/LinearLayout;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setGravity(I)V

    iget-object v9, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mPedContainer:Landroid/widget/LinearLayout;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setGravity(I)V

    iget-object v9, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mAdaptiveInfoArea:Landroid/widget/LinearLayout;

    invoke-virtual {v9}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    float-to-int v9, v1

    mul-int/lit8 v9, v9, 0xf

    invoke-virtual {v0, v9}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    float-to-int v9, v1

    mul-int/lit8 v9, v9, 0xf

    invoke-virtual {v0, v9}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    const/4 v9, -0x1

    iput v9, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget-object v9, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mAdaptiveInfoArea:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v9, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mWeatherContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v9}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v9, 0x0

    iput v9, v8, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/high16 v9, 0x3f800000    # 1.0f

    iput v9, v8, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iget-object v9, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mWeatherContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v8}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v9, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mPedContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v9}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v9, 0x0

    iput v9, v7, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/high16 v9, 0x3f800000    # 1.0f

    iput v9, v7, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iget-object v9, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mPedContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v7}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    :cond_7
    const/4 v9, 0x1

    goto/16 :goto_1

    :cond_8
    const/4 v9, 0x0

    goto/16 :goto_2

    :cond_9
    iget-boolean v9, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mIsWeatherShowing:Z

    if-eqz v9, :cond_a

    iget-object v9, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/keyguard/sec/AdaptiveEventManager;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/AdaptiveEventManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/keyguard/sec/AdaptiveEventManager;->getWeatherInfo()Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;->getIconNumber()I

    move-result v9

    const/4 v10, -0x1

    if-eq v9, v10, :cond_a

    iget-object v9, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/keyguard/sec/AdaptiveEventManager;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/AdaptiveEventManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/keyguard/sec/AdaptiveEventManager;->getWeatherInfo()Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;->getWidgetCount()I

    move-result v9

    if-eqz v9, :cond_a

    invoke-direct {p0}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->getLastSelLocation()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_a

    const/4 v9, 0x1

    :goto_a
    iput-boolean v9, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mIsWeatherShowing:Z

    const-string v9, "AdaptiveEventContainerSmall"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mWeatherContainer.setVisibility("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mIsWeatherShowing:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "), "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-direct {p0}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->getLastSelLocation()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_a
    const/4 v9, 0x0

    goto :goto_a

    :cond_b
    const/16 v9, 0x8

    goto/16 :goto_4

    :cond_c
    const-string v9, "AdaptiveEventContainerSmall"

    const-string v10, "mWeatherView == null"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    :cond_d
    const/4 v9, 0x0

    goto/16 :goto_6

    :cond_e
    const/16 v9, 0x8

    goto/16 :goto_7

    :cond_f
    const-string v9, "AdaptiveEventContainerSmall"

    const-string v10, "mPedoView == null"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    :cond_10
    const-string v9, "AdaptiveEventContainerSmall"

    const-string v10, "mAdaptiveInfoArea.setVisibility(View.GONE);"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mAdaptiveInfoArea:Landroid/widget/LinearLayout;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v9, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mWeatherContainer:Landroid/widget/LinearLayout;

    if-eqz v9, :cond_11

    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mSmallWeather:Landroid/view/View;

    iget-object v9, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mWeatherContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v9}, Landroid/widget/LinearLayout;->removeAllViews()V

    :cond_11
    iget-object v9, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mPedContainer:Landroid/widget/LinearLayout;

    if-eqz v9, :cond_6

    iget-object v9, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mPedContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v9}, Landroid/widget/LinearLayout;->removeAllViews()V

    goto/16 :goto_9
.end method

.method private setContentObservers()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, -0x1

    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "white_lockscreen_wallpaper"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lock_additional_steps"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lock_additional_weather"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lock_show_info"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lock_additional_info"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "emergency_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "kids_home_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method

.method private updateLifeDustInfo(Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;)V
    .locals 7

    const/16 v6, 0x8

    const/4 v3, 0x0

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLatestPhoneUX()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isKoreaFeature()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isJapanFeature()Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_0
    const/4 v1, 0x1

    :goto_0
    if-nez v1, :cond_3

    :cond_1
    :goto_1
    return-void

    :cond_2
    move v1, v3

    goto :goto_0

    :cond_3
    if-eqz p1, :cond_1

    iget-object v4, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mLifeDustLayout:Landroid/widget/LinearLayout;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mLifeDustText:Landroid/widget/TextView;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mLifeDustIcon:Landroid/widget/ImageView;

    if-eqz v4, :cond_1

    invoke-virtual {p1}, Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;->getCurrentLifeDust()I

    move-result v4

    const/4 v5, 0x3

    if-lt v4, v5, :cond_4

    invoke-virtual {p1}, Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;->getCurrentLifeDust()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    :pswitch_0
    sget v2, Lcom/android/keyguard/R$drawable;->weather_widget_dust_plenty:I

    iget-object v4, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/android/keyguard/R$string;->kg_weather_fine_dust_4_bad:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_2
    iget-object v4, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mLifeDustIcon:Landroid/widget/ImageView;

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v4, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mLifeDustText:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mLifeDustLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v4, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mLifeDustIcon:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v4, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mLifeDustText:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    :pswitch_1
    sget v2, Lcom/android/keyguard/R$drawable;->weather_widget_dust_little:I

    iget-object v4, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/android/keyguard/R$string;->kg_weather_fine_dust_3_some_bad:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :pswitch_2
    sget v2, Lcom/android/keyguard/R$drawable;->weather_widget_dust_veryhigh:I

    iget-object v4, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/android/keyguard/R$string;->kg_weather_fine_dust_5_very_bad:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_4
    iget-object v3, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mLifeDustLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mLifeDustIcon:Landroid/widget/ImageView;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mLifeDustText:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private updateTemperatureFont()V
    .locals 4

    iget-object v2, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getClockThemeFont()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->getFontTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    :goto_0
    if-nez v1, :cond_2

    :cond_0
    :goto_1
    return-void

    :cond_1
    const-string v2, "samsung-neo-num3L"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    goto :goto_0

    :cond_2
    iget-boolean v2, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mIsHighLowTempModeEnable:Z

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mChinaHighTemperature:Landroid/widget/TextView;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mChinaHighTemperature:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_3
    iget-object v2, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mChinaLowTemperature:Landroid/widget/TextView;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mChinaLowTemperature:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_4
    iget-object v2, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mSeparatorText:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mSeparatorText:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_1

    :cond_5
    iget-object v2, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mTemperature:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mTemperature:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_1
.end method

.method private useUniCodeTemperatureUnit()Z
    .locals 1

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLegacyUX()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getWeatherIconImageResources(I)I
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mWeatherImageArchive:Lcom/android/keyguard/sec/AbstractWeatherImageArchive;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/sec/AbstractWeatherImageArchive;->getImage(I)I

    move-result v0

    return v0
.end method

.method public isShowingWeatherInfo()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mIsWeatherShowing:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/AdaptiveEventManager;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/AdaptiveEventManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/keyguard/sec/AdaptiveEventManager;->setAdaptiveEventCallback(Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEventCallback;)V

    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    invoke-direct {p0}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->setContentObservers()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/AdaptiveEventManager;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/AdaptiveEventManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/AdaptiveEventManager;->setAdaptiveEventCallback(Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEventCallback;)V

    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const-string v0, "AdaptiveEventContainerSmall"

    const-string v3, "onFinishInflate()"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget v0, Lcom/android/keyguard/R$id;->adaptive_info_area:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mAdaptiveInfoArea:Landroid/widget/LinearLayout;

    sget v0, Lcom/android/keyguard/R$id;->weather_container:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mWeatherContainer:Landroid/widget/LinearLayout;

    sget v0, Lcom/android/keyguard/R$id;->ped_container:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mPedContainer:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "white_lockscreen_wallpaper"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mUseBlackTextOnWhiteWallpaper:Z

    invoke-direct {p0}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->init()V

    return-void

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method public setWidthWeatherCityName(Z)V
    .locals 3

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLatestUX()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-boolean p1, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mIs4DigitOrDualClock:Z

    iget-object v1, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mCityName:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->getWeatherCityIconImageResources()I

    move-result v1

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mIs4DigitOrDualClock:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$dimen;->kg_adaptive_event_min_width_4digit_clock_zero:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    :goto_1
    iget-object v1, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mCityName:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setMaxWidth(I)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$dimen;->kg_adaptive_event_max_width_3digit_clock_zero:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_1

    :cond_3
    iget-boolean v1, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mIs4DigitOrDualClock:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$dimen;->kg_adaptive_event_min_width_4digit_clock_zero_without_icon:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$dimen;->kg_adaptive_event_max_width_3digit_clock_zero_without_icon:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_1
.end method

.method public toDigitString(I)Ljava/lang/String;
    .locals 6

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    new-array v0, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v0, v4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    if-lez v3, :cond_0

    const-string v2, ""

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "%0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "d"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    :cond_0
    const-string v4, "%d"

    invoke-static {v4, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public updateAdaptiveContainer(I)V
    .locals 0

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p0}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->updatePedoContainer()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public updateContainer(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->updateAdaptiveContainer(I)V

    return-void
.end method

.method protected updatePedoContainer()V
    .locals 3

    const/16 v2, 0x132f

    const-string v0, "AdaptiveEventContainerSmall"

    const-string v1, "C updatePedoContainer()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public updateWeatherContainerVisible(Z)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->init()V

    return-void
.end method

.method public updateWeatherInfo(Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;)V
    .locals 3

    const/16 v2, 0x1330

    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mWeatherContainer:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mWeatherContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mWeatherContainer:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mSmallWeather:Landroid/view/View;

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->init()V

    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    :cond_3
    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mUpdateHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
