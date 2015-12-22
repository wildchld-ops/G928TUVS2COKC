.class Lcom/android/keyguard/sec/SecKeyguardClockSingleView$2;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "SecKeyguardClockSingleView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/sec/SecKeyguardClockSingleView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/SecKeyguardClockSingleView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/SecKeyguardClockSingleView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView$2;->this$0:Lcom/android/keyguard/sec/SecKeyguardClockSingleView;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefreshBatteryInfo(Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;)V
    .locals 1

    iget v0, p1, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->level:I

    sput v0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mBatteryLevel:I

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView$2;->this$0:Lcom/android/keyguard/sec/SecKeyguardClockSingleView;

    # invokes: Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->setClockContentDesciption()V
    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->access$200(Lcom/android/keyguard/sec/SecKeyguardClockSingleView;)V

    return-void
.end method

.method public onScreenTurnedOff(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView$2;->this$0:Lcom/android/keyguard/sec/SecKeyguardClockSingleView;

    # invokes: Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->onScreenTurnedOff()V
    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->access$500(Lcom/android/keyguard/sec/SecKeyguardClockSingleView;)V

    return-void
.end method

.method public onScreenTurnedOn()V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView$2;->this$0:Lcom/android/keyguard/sec/SecKeyguardClockSingleView;

    # invokes: Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->onScreenTurnedOn()V
    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->access$400(Lcom/android/keyguard/sec/SecKeyguardClockSingleView;)V

    return-void
.end method

.method public onTimeChanged()V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView$2;->this$0:Lcom/android/keyguard/sec/SecKeyguardClockSingleView;

    # invokes: Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->setClockContentDesciption()V
    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->access$200(Lcom/android/keyguard/sec/SecKeyguardClockSingleView;)V

    return-void
.end method

.method public onUserSwitchComplete(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView$2;->this$0:Lcom/android/keyguard/sec/SecKeyguardClockSingleView;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->setClockStyle()V

    return-void
.end method
