.class Lcom/android/systemui/power/PowerUI$5;
.super Ljava/lang/Object;
.source "PowerUI.java"

# interfaces
.implements Landroid/hardware/scontext/SContextListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/power/PowerUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/power/PowerUI;


# direct methods
.method constructor <init>(Lcom/android/systemui/power/PowerUI;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/power/PowerUI$5;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSContextChanged(Landroid/hardware/scontext/SContextEvent;)V
    .locals 7

    const/16 v6, 0x2e

    const/4 v5, 0x0

    iget-object v1, p1, Landroid/hardware/scontext/SContextEvent;->scontext:Landroid/hardware/scontext/SContext;

    invoke-virtual {v1}, Landroid/hardware/scontext/SContext;->getType()I

    move-result v3

    if-ne v3, v6, :cond_0

    invoke-virtual {p1}, Landroid/hardware/scontext/SContextEvent;->getWirelessChargingDetectionContext()Landroid/hardware/scontext/SContextWirelessChargingDetection;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/scontext/SContextWirelessChargingDetection;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    const-string v3, "PowerUI"

    const-string v4, "SContextListener - No Move"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/systemui/power/PowerUI$5;->this$0:Lcom/android/systemui/power/PowerUI;

    iput-boolean v5, v3, Lcom/android/systemui/power/PowerUI;->mIsDeviceMoving:Z

    goto :goto_0

    :pswitch_1
    const-string v3, "PowerUI"

    const-string v4, "SContextListener - Move"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/systemui/power/PowerUI$5;->this$0:Lcom/android/systemui/power/PowerUI;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/android/systemui/power/PowerUI;->mIsDeviceMoving:Z

    iget-object v3, p0, Lcom/android/systemui/power/PowerUI$5;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-boolean v3, v3, Lcom/android/systemui/power/PowerUI;->mIsSContextListenerRigstered:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/power/PowerUI$5;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v3, v3, Lcom/android/systemui/power/PowerUI;->mBatteryChargingType:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/android/systemui/power/PowerUI$5;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v3, v3, Lcom/android/systemui/power/PowerUI;->mBatteryChargingType:I

    const/4 v4, 0x4

    if-eq v3, v4, :cond_0

    const-string v3, "PowerUI"

    const-string v4, "Unregister SContextListener"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/systemui/power/PowerUI$5;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-object v3, v3, Lcom/android/systemui/power/PowerUI;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    iget-object v4, p0, Lcom/android/systemui/power/PowerUI$5;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mSContextListener:Landroid/hardware/scontext/SContextListener;
    invoke-static {v4}, Lcom/android/systemui/power/PowerUI;->access$2200(Lcom/android/systemui/power/PowerUI;)Landroid/hardware/scontext/SContextListener;

    move-result-object v4

    invoke-virtual {v3, v4, v6}, Landroid/hardware/scontext/SContextManager;->unregisterListener(Landroid/hardware/scontext/SContextListener;I)V

    iget-object v3, p0, Lcom/android/systemui/power/PowerUI$5;->this$0:Lcom/android/systemui/power/PowerUI;

    iput-boolean v5, v3, Lcom/android/systemui/power/PowerUI;->mIsSContextListenerRigstered:Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
