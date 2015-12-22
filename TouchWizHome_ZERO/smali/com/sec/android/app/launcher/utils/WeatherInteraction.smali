.class public Lcom/sec/android/app/launcher/utils/WeatherInteraction;
.super Ljava/lang/Object;
.source "WeatherInteraction.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/launcher/utils/WeatherInteraction$WeatherServiceAsync;
    }
.end annotation


# static fields
.field private static final mUrlGetLoc:Ljava/lang/String; = "http://api.openweathermap.org/data/2.5/weather?q="


# instance fields
.field private mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

.field private mHandler:Landroid/os/Handler;

.field mLocations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mRunning:Z

.field private mTimer:Ljava/util/Timer;

.field private mTimerTask:Ljava/util/TimerTask;

.field mWeatherDescription:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/launcher/activities/LauncherActivity;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/launcher/utils/WeatherInteraction;->mLocations:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/sec/android/app/launcher/utils/WeatherInteraction;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    iput-object v1, p0, Lcom/sec/android/app/launcher/utils/WeatherInteraction;->mHandler:Landroid/os/Handler;

    iput-object v1, p0, Lcom/sec/android/app/launcher/utils/WeatherInteraction;->mTimer:Ljava/util/Timer;

    iput-object v1, p0, Lcom/sec/android/app/launcher/utils/WeatherInteraction;->mTimerTask:Ljava/util/TimerTask;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/launcher/utils/WeatherInteraction;->mRunning:Z

    iput-object p1, p0, Lcom/sec/android/app/launcher/utils/WeatherInteraction;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/launcher/utils/WeatherInteraction;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/sec/android/app/launcher/utils/WeatherInteraction;->mLocations:Ljava/util/ArrayList;

    const-string v1, "london"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sec/android/app/launcher/utils/WeatherInteraction;->mLocations:Ljava/util/ArrayList;

    const-string v1, "seoul"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sec/android/app/launcher/utils/WeatherInteraction;->mLocations:Ljava/util/ArrayList;

    const-string v1, "glasgow"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sec/android/app/launcher/utils/WeatherInteraction;->mLocations:Ljava/util/ArrayList;

    const-string v1, "istanbul"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sec/android/app/launcher/utils/WeatherInteraction;->mLocations:Ljava/util/ArrayList;

    const-string v1, "newyork"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sec/android/app/launcher/utils/WeatherInteraction;->mLocations:Ljava/util/ArrayList;

    const-string v1, "moscow"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sec/android/app/launcher/utils/WeatherInteraction;->mLocations:Ljava/util/ArrayList;

    const-string v1, "tokyo"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sec/android/app/launcher/utils/WeatherInteraction;->mLocations:Ljava/util/ArrayList;

    const-string v1, "hongkong"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sec/android/app/launcher/utils/WeatherInteraction;->mLocations:Ljava/util/ArrayList;

    const-string v1, "rome"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private static ContainsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$000(Lcom/sec/android/app/launcher/utils/WeatherInteraction;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/utils/WeatherInteraction;->mHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public changeColor()V
    .locals 3

    iget-object v1, p0, Lcom/sec/android/app/launcher/utils/WeatherInteraction;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/launcher/utils/WeatherInteraction;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/launcher/utils/WeatherInteraction;->mWeatherDescription:Ljava/lang/String;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/launcher/utils/WeatherInteraction;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/launcher/utils/WeatherInteraction;->mWeatherDescription:Ljava/lang/String;

    const-string v2, "sky is clear"

    invoke-static {v1, v2}, Lcom/sec/android/app/launcher/utils/WeatherInteraction;->ContainsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/launcher/utils/WeatherInteraction;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    const v2, 0x7f090024

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->setBackgroundColorModulation(I)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/launcher/utils/WeatherInteraction;->mWeatherDescription:Ljava/lang/String;

    const-string v2, "few cloud"

    invoke-static {v1, v2}, Lcom/sec/android/app/launcher/utils/WeatherInteraction;->ContainsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/launcher/utils/WeatherInteraction;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    const v2, 0x7f090026

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->setBackgroundColorModulation(I)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/launcher/utils/WeatherInteraction;->mWeatherDescription:Ljava/lang/String;

    const-string v2, "cloud"

    invoke-static {v1, v2}, Lcom/sec/android/app/launcher/utils/WeatherInteraction;->ContainsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/sec/android/app/launcher/utils/WeatherInteraction;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    const v2, 0x7f090025

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->setBackgroundColorModulation(I)V

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/launcher/utils/WeatherInteraction;->mWeatherDescription:Ljava/lang/String;

    const-string v2, "mist"

    invoke-static {v1, v2}, Lcom/sec/android/app/launcher/utils/WeatherInteraction;->ContainsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/sec/android/app/launcher/utils/WeatherInteraction;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    const v2, 0x7f090028

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->setBackgroundColorModulation(I)V

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/sec/android/app/launcher/utils/WeatherInteraction;->mWeatherDescription:Ljava/lang/String;

    const-string v2, "rain"

    invoke-static {v1, v2}, Lcom/sec/android/app/launcher/utils/WeatherInteraction;->ContainsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/sec/android/app/launcher/utils/WeatherInteraction;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    const v2, 0x7f090029

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->setBackgroundColorModulation(I)V

    goto :goto_0

    :cond_6
    iget-object v1, p0, Lcom/sec/android/app/launcher/utils/WeatherInteraction;->mWeatherDescription:Ljava/lang/String;

    const-string v2, "fog"

    invoke-static {v1, v2}, Lcom/sec/android/app/launcher/utils/WeatherInteraction;->ContainsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/sec/android/app/launcher/utils/WeatherInteraction;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    const v2, 0x7f090027

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->setBackgroundColorModulation(I)V

    goto/16 :goto_0

    :cond_7
    iget-object v1, p0, Lcom/sec/android/app/launcher/utils/WeatherInteraction;->mWeatherDescription:Ljava/lang/String;

    const-string v2, "snow"

    invoke-static {v1, v2}, Lcom/sec/android/app/launcher/utils/WeatherInteraction;->ContainsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/launcher/utils/WeatherInteraction;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    const v2, 0x7f09002a

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->setBackgroundColorModulation(I)V

    goto/16 :goto_0
.end method

.method public getWeatherInfo()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v1, Lcom/sec/android/app/launcher/utils/WeatherInteraction$WeatherServiceAsync;

    invoke-direct {v1, p0}, Lcom/sec/android/app/launcher/utils/WeatherInteraction$WeatherServiceAsync;-><init>(Lcom/sec/android/app/launcher/utils/WeatherInteraction;)V

    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "http://api.openweathermap.org/data/2.5/weather?q="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v3, p0, Lcom/sec/android/app/launcher/utils/WeatherInteraction;->mLocations:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/sec/android/app/launcher/utils/WeatherInteraction;->mLocations:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "WALLPAPER"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fetching current weather from \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->bgLog(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    invoke-virtual {v1, v3}, Lcom/sec/android/app/launcher/utils/WeatherInteraction$WeatherServiceAsync;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public runWeatherTask(Z)V
    .locals 6

    const-wide/16 v2, 0x1388

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lcom/sec/android/app/launcher/utils/WeatherInteraction;->mRunning:Z

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/launcher/utils/WeatherInteraction;->mTimer:Ljava/util/Timer;

    new-instance v0, Lcom/sec/android/app/launcher/utils/WeatherInteraction$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/launcher/utils/WeatherInteraction$1;-><init>(Lcom/sec/android/app/launcher/utils/WeatherInteraction;)V

    iput-object v0, p0, Lcom/sec/android/app/launcher/utils/WeatherInteraction;->mTimerTask:Ljava/util/TimerTask;

    iget-object v0, p0, Lcom/sec/android/app/launcher/utils/WeatherInteraction;->mTimer:Ljava/util/Timer;

    iget-object v1, p0, Lcom/sec/android/app/launcher/utils/WeatherInteraction;->mTimerTask:Ljava/util/TimerTask;

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/launcher/utils/WeatherInteraction;->mRunning:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez p1, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/launcher/utils/WeatherInteraction;->mRunning:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/launcher/utils/WeatherInteraction;->mRunning:Z

    iget-object v0, p0, Lcom/sec/android/app/launcher/utils/WeatherInteraction;->mTimerTask:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    iput-object v1, p0, Lcom/sec/android/app/launcher/utils/WeatherInteraction;->mTimerTask:Ljava/util/TimerTask;

    iget-object v0, p0, Lcom/sec/android/app/launcher/utils/WeatherInteraction;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    iput-object v1, p0, Lcom/sec/android/app/launcher/utils/WeatherInteraction;->mTimer:Ljava/util/Timer;

    iget-object v0, p0, Lcom/sec/android/app/launcher/utils/WeatherInteraction;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/launcher/utils/WeatherInteraction;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/utils/WeatherInteraction;->mActivity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 3

    const-string v0, "WALLPAPER"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "weather description set to \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->bgLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/utils/WeatherInteraction;->mWeatherDescription:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/utils/WeatherInteraction;->mWeatherDescription:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iput-object p1, p0, Lcom/sec/android/app/launcher/utils/WeatherInteraction;->mWeatherDescription:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/utils/WeatherInteraction;->changeColor()V

    :cond_1
    return-void
.end method
