.class public interface abstract Lcom/android/systemui/statusbar/policy/NetworkController;
.super Ljava/lang/Object;
.source "NetworkController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/NetworkController$MobileDataController;,
        Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController;,
        Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;
    }
.end annotation


# virtual methods
.method public abstract addNetworkSignalChangedCallback(Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;)V
.end method

.method public abstract getAccessPointController()Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController;
.end method

.method public abstract hasMobileDataFeature()Z
.end method

.method public abstract onUserSwitched(I)V
.end method

.method public abstract removeNetworkSignalChangedCallback(Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;)V
.end method

.method public abstract setWifiEnabled(Z)V
.end method
