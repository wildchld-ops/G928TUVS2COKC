.class public Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget$WeatherInfo;
.super Ljava/lang/Object;
.source "SViewCoverWeatherWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WeatherInfo"
.end annotation


# instance fields
.field private final WEATHER_INFO_TRUSTED:I

.field private mCurrentCityId:Ljava/lang/String;

.field private mCurrentTemperature:F

.field private mHighTemperature:F

.field private mIconNumber:I

.field private mIsShowLockAndCover:Z

.field private mLowTemperature:F

.field private mTempScale:I

.field private mTrusted:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xc8

    iput v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget$WeatherInfo;->WEATHER_INFO_TRUSTED:I

    iput v2, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget$WeatherInfo;->mIconNumber:I

    iput v1, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget$WeatherInfo;->mCurrentTemperature:F

    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget$WeatherInfo;->mTempScale:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget$WeatherInfo;->mCurrentCityId:Ljava/lang/String;

    iput v1, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget$WeatherInfo;->mHighTemperature:F

    iput v1, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget$WeatherInfo;->mLowTemperature:F

    iput-boolean v2, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget$WeatherInfo;->mTrusted:Z

    iput-boolean v2, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget$WeatherInfo;->mIsShowLockAndCover:Z

    return-void
.end method


# virtual methods
.method public dump()V
    .locals 3

    # getter for: Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WeatherInfo [icon, temp, scale] = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget$WeatherInfo;->mIconNumber:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget$WeatherInfo;->mCurrentTemperature:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget$WeatherInfo;->mTempScale:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "], "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "[cityId, highTemp, lowTemp] = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget$WeatherInfo;->mCurrentCityId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget$WeatherInfo;->mHighTemperature:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget$WeatherInfo;->mLowTemperature:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", showLockAndCover = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget$WeatherInfo;->mIsShowLockAndCover:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", trusted = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget$WeatherInfo;->mTrusted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public getCurrentCityId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget$WeatherInfo;->mCurrentCityId:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentTemperature()F
    .locals 1

    iget v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget$WeatherInfo;->mCurrentTemperature:F

    return v0
.end method

.method public getHighTemperature()F
    .locals 1

    iget v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget$WeatherInfo;->mHighTemperature:F

    return v0
.end method

.method public getIconNumber()I
    .locals 1

    iget v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget$WeatherInfo;->mIconNumber:I

    return v0
.end method

.method public getLowTemperature()F
    .locals 1

    iget v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget$WeatherInfo;->mLowTemperature:F

    return v0
.end method

.method public getTempScale()I
    .locals 1

    iget v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget$WeatherInfo;->mTempScale:I

    return v0
.end method

.method public isShowLockAndCover()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget$WeatherInfo;->mIsShowLockAndCover:Z

    return v0
.end method

.method public isTrusted()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget$WeatherInfo;->mTrusted:Z

    return v0
.end method

.method public setCurrentCityId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget$WeatherInfo;->mCurrentCityId:Ljava/lang/String;

    return-void
.end method

.method public setCurrentTemperature(F)V
    .locals 0

    iput p1, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget$WeatherInfo;->mCurrentTemperature:F

    return-void
.end method

.method public setHighTemperature(F)V
    .locals 0

    iput p1, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget$WeatherInfo;->mHighTemperature:F

    return-void
.end method

.method public setIconNumber(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget$WeatherInfo;->mIconNumber:I

    return-void
.end method

.method public setLowTemperature(F)V
    .locals 0

    iput p1, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget$WeatherInfo;->mLowTemperature:F

    return-void
.end method

.method public setShowLockAndCover(I)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget$WeatherInfo;->mIsShowLockAndCover:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setTempScale(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget$WeatherInfo;->mTempScale:I

    return-void
.end method

.method public setTrusted(I)V
    .locals 3

    const/16 v2, 0xc8

    if-ne p1, v2, :cond_1

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget$WeatherInfo;->mCurrentCityId:Ljava/lang/String;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget$WeatherInfo;->mTrusted:Z

    # getter for: Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NetWork State is Fine : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " & currentCityId is not null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget$WeatherInfo;->mTrusted:Z

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget$WeatherInfo;->mCurrentCityId:Ljava/lang/String;

    if-nez v0, :cond_2

    # getter for: Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "currentCityId is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    if-eq p1, v2, :cond_0

    # getter for: Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverWeatherWidget;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NetWork disabled : Don\'t refresh weath info : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
