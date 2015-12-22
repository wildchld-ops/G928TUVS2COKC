.class Lcom/sec/android/app/launcher/utils/WeatherInteraction$1;
.super Ljava/util/TimerTask;
.source "WeatherInteraction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/launcher/utils/WeatherInteraction;->runWeatherTask(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/launcher/utils/WeatherInteraction;


# direct methods
.method constructor <init>(Lcom/sec/android/app/launcher/utils/WeatherInteraction;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/launcher/utils/WeatherInteraction$1;->this$0:Lcom/sec/android/app/launcher/utils/WeatherInteraction;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/launcher/utils/WeatherInteraction$1;->this$0:Lcom/sec/android/app/launcher/utils/WeatherInteraction;

    # getter for: Lcom/sec/android/app/launcher/utils/WeatherInteraction;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/app/launcher/utils/WeatherInteraction;->access$000(Lcom/sec/android/app/launcher/utils/WeatherInteraction;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/launcher/utils/WeatherInteraction$1$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/launcher/utils/WeatherInteraction$1$1;-><init>(Lcom/sec/android/app/launcher/utils/WeatherInteraction$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
