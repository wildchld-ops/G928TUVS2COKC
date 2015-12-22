.class public Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;
.super Ljava/lang/Object;
.source "KeyguardServiceWrapper.java"

# interfaces
.implements Lcom/android/internal/policy/IKeyguardService;


# instance fields
.field private TAG:Ljava/lang/String;

.field private mKeyguardStateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardStateMonitor;

.field private mService:Lcom/android/internal/policy/IKeyguardService;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/policy/IKeyguardService;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "KeyguardServiceWrapper"

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;->TAG:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;->mService:Lcom/android/internal/policy/IKeyguardService;

    new-instance v0, Lcom/android/internal/policy/impl/keyguard/KeyguardStateMonitor;

    invoke-direct {v0, p1, p2}, Lcom/android/internal/policy/impl/keyguard/KeyguardStateMonitor;-><init>(Landroid/content/Context;Lcom/android/internal/policy/IKeyguardService;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;->mKeyguardStateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardStateMonitor;

    return-void
.end method


# virtual methods
.method public addStateMonitorCallback(Lcom/android/internal/policy/IKeyguardStateCallback;)V
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;->mService:Lcom/android/internal/policy/IKeyguardService;

    invoke-interface {v1, p1}, Lcom/android/internal/policy/IKeyguardService;->addStateMonitorCallback(Lcom/android/internal/policy/IKeyguardStateCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;->TAG:Ljava/lang/String;

    const-string v2, "Remote Exception"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;->mService:Lcom/android/internal/policy/IKeyguardService;

    invoke-interface {v0}, Lcom/android/internal/policy/IKeyguardService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public changeLidState(Z)V
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;->mService:Lcom/android/internal/policy/IKeyguardService;

    invoke-interface {v1, p1}, Lcom/android/internal/policy/IKeyguardService;->changeLidState(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;->TAG:Ljava/lang/String;

    const-string v2, "Remote Exception"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public dismiss()V
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;->mService:Lcom/android/internal/policy/IKeyguardService;

    invoke-interface {v1}, Lcom/android/internal/policy/IKeyguardService;->dismiss()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;->TAG:Ljava/lang/String;

    const-string v2, "Remote Exception"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public doKeyguardTimeout(Landroid/os/Bundle;)V
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;->mService:Lcom/android/internal/policy/IKeyguardService;

    invoke-interface {v1, p1}, Lcom/android/internal/policy/IKeyguardService;->doKeyguardTimeout(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;->TAG:Ljava/lang/String;

    const-string v2, "Remote Exception"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getScreenOrientation(Z)I
    .locals 4

    const/4 v1, -0x1

    :try_start_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;->mService:Lcom/android/internal/policy/IKeyguardService;

    invoke-interface {v2, p1}, Lcom/android/internal/policy/IKeyguardService;->getScreenOrientation(Z)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;->TAG:Ljava/lang/String;

    const-string v3, "Remote Exception"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public isInputRestricted()Z
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;->mKeyguardStateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardStateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardStateMonitor;->isInputRestricted()Z

    move-result v0

    return v0
.end method

.method public isSecure()Z
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;->mKeyguardStateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardStateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardStateMonitor;->isSecure()Z

    move-result v0

    return v0
.end method

.method public isShowing()Z
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;->mKeyguardStateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardStateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardStateMonitor;->isShowing()Z

    move-result v0

    return v0
.end method

.method public isSimLocked()Z
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;->mKeyguardStateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardStateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardStateMonitor;->isSimLocked()Z

    move-result v0

    return v0
.end method

.method public keyguardDone(ZZ)V
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;->mService:Lcom/android/internal/policy/IKeyguardService;

    invoke-interface {v1, p1, p2}, Lcom/android/internal/policy/IKeyguardService;->keyguardDone(ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;->TAG:Ljava/lang/String;

    const-string v2, "Remote Exception"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onActivityDrawn()V
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;->mService:Lcom/android/internal/policy/IKeyguardService;

    invoke-interface {v1}, Lcom/android/internal/policy/IKeyguardService;->onActivityDrawn()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;->TAG:Ljava/lang/String;

    const-string v2, "Remote Exception"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onBootCompleted()V
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;->mService:Lcom/android/internal/policy/IKeyguardService;

    invoke-interface {v1}, Lcom/android/internal/policy/IKeyguardService;->onBootCompleted()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;->TAG:Ljava/lang/String;

    const-string v2, "Remote Exception"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onDreamingStarted()V
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;->mService:Lcom/android/internal/policy/IKeyguardService;

    invoke-interface {v1}, Lcom/android/internal/policy/IKeyguardService;->onDreamingStarted()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;->TAG:Ljava/lang/String;

    const-string v2, "Remote Exception"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onDreamingStopped()V
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;->mService:Lcom/android/internal/policy/IKeyguardService;

    invoke-interface {v1}, Lcom/android/internal/policy/IKeyguardService;->onDreamingStopped()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;->TAG:Ljava/lang/String;

    const-string v2, "Remote Exception"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onScreenTurnedOff(I)V
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;->mService:Lcom/android/internal/policy/IKeyguardService;

    invoke-interface {v1, p1}, Lcom/android/internal/policy/IKeyguardService;->onScreenTurnedOff(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;->TAG:Ljava/lang/String;

    const-string v2, "Remote Exception"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onScreenTurnedOn(Lcom/android/internal/policy/IKeyguardShowCallback;)V
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;->mService:Lcom/android/internal/policy/IKeyguardService;

    invoke-interface {v1, p1}, Lcom/android/internal/policy/IKeyguardService;->onScreenTurnedOn(Lcom/android/internal/policy/IKeyguardShowCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;->TAG:Ljava/lang/String;

    const-string v2, "Remote Exception"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onSystemReady()V
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;->mService:Lcom/android/internal/policy/IKeyguardService;

    invoke-interface {v1}, Lcom/android/internal/policy/IKeyguardService;->onSystemReady()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;->TAG:Ljava/lang/String;

    const-string v2, "Remote Exception"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public removeAdaptiveEvent(Ljava/lang/String;)V
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;->mService:Lcom/android/internal/policy/IKeyguardService;

    invoke-interface {v1, p1}, Lcom/android/internal/policy/IKeyguardService;->removeAdaptiveEvent(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;->TAG:Ljava/lang/String;

    const-string v2, "Remote Exception"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setAdaptiveEvent(Ljava/lang/String;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;->mService:Lcom/android/internal/policy/IKeyguardService;

    invoke-interface {v1, p1, p2, p3}, Lcom/android/internal/policy/IKeyguardService;->setAdaptiveEvent(Ljava/lang/String;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;->TAG:Ljava/lang/String;

    const-string v2, "Remote Exception"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setBendedPendingIntent(Landroid/app/PendingIntent;Landroid/content/Intent;)V
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;->mService:Lcom/android/internal/policy/IKeyguardService;

    invoke-interface {v1, p1, p2}, Lcom/android/internal/policy/IKeyguardService;->setBendedPendingIntent(Landroid/app/PendingIntent;Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;->TAG:Ljava/lang/String;

    const-string v2, "Remote Exception"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setBendedPendingIntentInSecure(Landroid/app/PendingIntent;Landroid/content/Intent;)V
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;->mService:Lcom/android/internal/policy/IKeyguardService;

    invoke-interface {v1, p1, p2}, Lcom/android/internal/policy/IKeyguardService;->setBendedPendingIntentInSecure(Landroid/app/PendingIntent;Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;->TAG:Ljava/lang/String;

    const-string v2, "Remote Exception"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setCurrentUser(I)V
    .locals 3

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;->mKeyguardStateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardStateMonitor;

    invoke-virtual {v1, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardStateMonitor;->setCurrentUser(I)V

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;->mService:Lcom/android/internal/policy/IKeyguardService;

    invoke-interface {v1, p1}, Lcom/android/internal/policy/IKeyguardService;->setCurrentUser(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;->TAG:Ljava/lang/String;

    const-string v2, "Remote Exception"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setKeyguardEnabled(Z)V
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;->mService:Lcom/android/internal/policy/IKeyguardService;

    invoke-interface {v1, p1}, Lcom/android/internal/policy/IKeyguardService;->setKeyguardEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;->TAG:Ljava/lang/String;

    const-string v2, "Remote Exception"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setOccluded(Z)V
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;->mService:Lcom/android/internal/policy/IKeyguardService;

    invoke-interface {v1, p1}, Lcom/android/internal/policy/IKeyguardService;->setOccluded(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;->TAG:Ljava/lang/String;

    const-string v2, "Remote Exception"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public startKeyguardExitAnimation(JJ)V
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;->mService:Lcom/android/internal/policy/IKeyguardService;

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/android/internal/policy/IKeyguardService;->startKeyguardExitAnimation(JJ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;->TAG:Ljava/lang/String;

    const-string v2, "Remote Exception"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public updateAdaptiveEvent(Ljava/lang/String;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;->mService:Lcom/android/internal/policy/IKeyguardService;

    invoke-interface {v1, p1, p2, p3}, Lcom/android/internal/policy/IKeyguardService;->updateAdaptiveEvent(Ljava/lang/String;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;->TAG:Ljava/lang/String;

    const-string v2, "Remote Exception"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public verifyUnlock(Lcom/android/internal/policy/IKeyguardExitCallback;)V
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;->mService:Lcom/android/internal/policy/IKeyguardService;

    invoke-interface {v1, p1}, Lcom/android/internal/policy/IKeyguardService;->verifyUnlock(Lcom/android/internal/policy/IKeyguardExitCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;->TAG:Ljava/lang/String;

    const-string v2, "Remote Exception"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
