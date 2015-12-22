.class Lcom/sec/android/app/launcher/utils/WeatherInteraction$1$1;
.super Ljava/lang/Object;
.source "WeatherInteraction.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/launcher/utils/WeatherInteraction$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/launcher/utils/WeatherInteraction$1;


# direct methods
.method constructor <init>(Lcom/sec/android/app/launcher/utils/WeatherInteraction$1;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/launcher/utils/WeatherInteraction$1$1;->this$1:Lcom/sec/android/app/launcher/utils/WeatherInteraction$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/launcher/utils/WeatherInteraction$1$1;->this$1:Lcom/sec/android/app/launcher/utils/WeatherInteraction$1;

    iget-object v1, v1, Lcom/sec/android/app/launcher/utils/WeatherInteraction$1;->this$0:Lcom/sec/android/app/launcher/utils/WeatherInteraction;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/utils/WeatherInteraction;->getWeatherInfo()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
