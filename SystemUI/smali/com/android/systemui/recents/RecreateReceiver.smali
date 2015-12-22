.class public Lcom/android/systemui/recents/RecreateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "RecreateReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Recents_RecreateReceiver"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string v0, "Recents_RecreateReceiver"

    const-string v1, "onReceive by home"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
