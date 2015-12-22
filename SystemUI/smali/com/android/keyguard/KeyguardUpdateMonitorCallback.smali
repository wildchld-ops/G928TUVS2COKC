.class public Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.super Ljava/lang/Object;
.source "KeyguardUpdateMonitorCallback.java"


# static fields
.field private static final VISIBILITY_CHANGED_COLLAPSE_MS:J = 0x3e8L


# instance fields
.field private mShowing:Z

.field private mVisibilityChangedCalled:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAirplaneModeChanged(I)V
    .locals 0

    return-void
.end method

.method public onBootCompleted()V
    .locals 0

    return-void
.end method

.method public onCMASChanged()V
    .locals 0

    return-void
.end method

.method public onClockVisibilityChanged()V
    .locals 0

    return-void
.end method

.method public onDevicePolicyManagerStateChanged()V
    .locals 0

    return-void
.end method

.method public onDeviceProvisioned()V
    .locals 0

    return-void
.end method

.method public onEmergencyCallAction()V
    .locals 0

    return-void
.end method

.method public onFaceUnlockStateChanged(ZI)V
    .locals 0

    return-void
.end method

.method public onFingerprintAcquired(I)V
    .locals 0

    return-void
.end method

.method public onFingerprintRecognized(I)V
    .locals 0

    return-void
.end method

.method public onFontChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onICCCardStateChanged(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onKeyguardBouncerChanged(Z)V
    .locals 0

    return-void
.end method

.method public onKeyguardVisibilityChanged(Z)V
    .locals 0

    return-void
.end method

.method public onKeyguardVisibilityChangedRaw(Z)V
    .locals 6

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-boolean v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->mShowing:Z

    if-ne p1, v2, :cond_0

    iget-wide v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->mVisibilityChangedCalled:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x3e8

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onKeyguardVisibilityChanged(Z)V

    iput-wide v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->mVisibilityChangedCalled:J

    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->mShowing:Z

    goto :goto_0
.end method

.method public onKnoxSwitching()V
    .locals 0

    return-void
.end method

.method public onOpenThemeChanged()V
    .locals 0

    return-void
.end method

.method public onPhoneStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onRefreshBatteryInfo(Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;)V
    .locals 0

    return-void
.end method

.method public onRefreshCarrierInfo(I)V
    .locals 0

    return-void
.end method

.method public onRingerModeChanged(I)V
    .locals 0

    return-void
.end method

.method public onScreenTurnedOff(I)V
    .locals 0

    return-void
.end method

.method public onScreenTurnedOn()V
    .locals 0

    return-void
.end method

.method public onSetBackground(Landroid/graphics/Bitmap;)V
    .locals 0

    return-void
.end method

.method public onSimStateChanged(IILcom/android/internal/telephony/IccCardConstants$State;)V
    .locals 0

    return-void
.end method

.method public onTimeChanged()V
    .locals 0

    return-void
.end method

.method public onTrustChanged(I)V
    .locals 0

    return-void
.end method

.method public onTrustInitiatedByUser(I)V
    .locals 0

    return-void
.end method

.method public onTrustManagedChanged(I)V
    .locals 0

    return-void
.end method

.method public onUserInfoChanged(I)V
    .locals 0

    return-void
.end method

.method public onUserRemoved(I)V
    .locals 0

    return-void
.end method

.method public onUserSwitchComplete(I)V
    .locals 0

    return-void
.end method

.method public onUserSwitching(I)V
    .locals 0

    return-void
.end method
