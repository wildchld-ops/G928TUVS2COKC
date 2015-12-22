.class Lcom/android/keyguard/sec/AdaptiveEventContainerSmall$3;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "AdaptiveEventContainerSmall.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall$3;->this$0:Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onOpenThemeChanged()V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall$3;->this$0:Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;

    iget-object v1, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall$3;->this$0:Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;

    # invokes: Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->getCPName()Ljava/lang/String;
    invoke-static {v1}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->access$700(Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/keyguard/sec/WeatherImageArchiveFactory;->make(Ljava/lang/String;)Lcom/android/keyguard/sec/AbstractWeatherImageArchive;

    move-result-object v1

    # setter for: Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mWeatherImageArchive:Lcom/android/keyguard/sec/AbstractWeatherImageArchive;
    invoke-static {v0, v1}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->access$602(Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;Lcom/android/keyguard/sec/AbstractWeatherImageArchive;)Lcom/android/keyguard/sec/AbstractWeatherImageArchive;

    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall$3;->this$0:Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;

    iget-object v1, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall$3;->this$0:Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;

    # getter for: Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->access$800(Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/keyguard/sec/AdaptiveEventManager;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/AdaptiveEventManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/sec/AdaptiveEventManager;->getWeatherInfo()Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/AdaptiveEventContainerSmall;->updateWeatherInfo(Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;)V

    return-void
.end method
