.class Lcom/android/keyguard/sec/SeckeyguardClockDualImageView$2;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "SeckeyguardClockDualImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView$2;->this$0:Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefreshBatteryInfo(Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;)V
    .locals 1

    iget v0, p1, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->level:I

    sput v0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->mBatteryLevel:I

    iget-object v0, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView$2;->this$0:Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;

    # invokes: Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->setClockContentDesciption()V
    invoke-static {v0}, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->access$200(Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;)V

    return-void
.end method

.method public onScreenTurnedOn()V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView$2;->this$0:Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;

    # invokes: Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->setClockContentDesciption()V
    invoke-static {v0}, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->access$200(Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;)V

    return-void
.end method

.method public onTimeChanged()V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView$2;->this$0:Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;

    # invokes: Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->setClockContentDesciption()V
    invoke-static {v0}, Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;->access$200(Lcom/android/keyguard/sec/SeckeyguardClockDualImageView;)V

    return-void
.end method
