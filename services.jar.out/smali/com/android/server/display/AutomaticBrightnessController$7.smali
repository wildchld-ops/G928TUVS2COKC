.class Lcom/android/server/display/AutomaticBrightnessController$7;
.super Ljava/lang/Object;
.source "AutomaticBrightnessController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/AutomaticBrightnessController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/AutomaticBrightnessController;


# direct methods
.method constructor <init>(Lcom/android/server/display/AutomaticBrightnessController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/display/AutomaticBrightnessController$7;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController$7;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    # getter for: Lcom/android/server/display/AutomaticBrightnessController;->mTimeMeasurement:Lcom/android/server/power/PowerManagerService$TimeMeasurement;
    invoke-static {v2}, Lcom/android/server/display/AutomaticBrightnessController;->access$1700(Lcom/android/server/display/AutomaticBrightnessController;)Lcom/android/server/power/PowerManagerService$TimeMeasurement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/power/PowerManagerService$TimeMeasurement;->resetTime()V

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController$7;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    # getter for: Lcom/android/server/display/AutomaticBrightnessController;->mAutoBrightnessForEbookOnly:Z
    invoke-static {v2}, Lcom/android/server/display/AutomaticBrightnessController;->access$2300(Lcom/android/server/display/AutomaticBrightnessController;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    new-instance v0, Landroid/hardware/scontext/SContextAutoBrightnessAttribute;

    invoke-direct {v0, v1}, Landroid/hardware/scontext/SContextAutoBrightnessAttribute;-><init>(I)V

    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController$7;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    # getter for: Lcom/android/server/display/AutomaticBrightnessController;->mSContextManager:Landroid/hardware/scontext/SContextManager;
    invoke-static {v2}, Lcom/android/server/display/AutomaticBrightnessController;->access$2500(Lcom/android/server/display/AutomaticBrightnessController;)Landroid/hardware/scontext/SContextManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController$7;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    # getter for: Lcom/android/server/display/AutomaticBrightnessController;->mSensorHubAutoBrightnessListener:Landroid/hardware/scontext/SContextListener;
    invoke-static {v3}, Lcom/android/server/display/AutomaticBrightnessController;->access$2400(Lcom/android/server/display/AutomaticBrightnessController;)Landroid/hardware/scontext/SContextListener;

    move-result-object v3

    const/16 v4, 0x27

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v0, v5}, Landroid/hardware/scontext/SContextManager;->registerListener(Landroid/hardware/scontext/SContextListener;ILandroid/hardware/scontext/SContextAttribute;Landroid/os/Looper;)Z

    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController$7;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    # getter for: Lcom/android/server/display/AutomaticBrightnessController;->mTimeMeasurement:Lcom/android/server/power/PowerManagerService$TimeMeasurement;
    invoke-static {v2}, Lcom/android/server/display/AutomaticBrightnessController;->access$1700(Lcom/android/server/display/AutomaticBrightnessController;)Lcom/android/server/power/PowerManagerService$TimeMeasurement;

    move-result-object v2

    const-string v3, "SensorHubAutoBrightnessEnabled::registerListener"

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/power/PowerManagerService$TimeMeasurement;->printLapTime(Ljava/lang/String;J)V

    return-void
.end method
