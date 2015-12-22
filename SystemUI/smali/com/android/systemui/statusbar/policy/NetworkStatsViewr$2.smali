.class Lcom/android/systemui/statusbar/policy/NetworkStatsViewr$2;
.super Landroid/content/BroadcastReceiver;
.source "NetworkStatsViewr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/NetworkStatsViewr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/NetworkStatsViewr;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/NetworkStatsViewr;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/NetworkStatsViewr$2;->this$0:Lcom/android/systemui/statusbar/policy/NetworkStatsViewr;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkStatsViewr$2;->this$0:Lcom/android/systemui/statusbar/policy/NetworkStatsViewr;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkStatsViewr;->mSettingsObserver:Lcom/android/systemui/statusbar/policy/NetworkStatsViewr$SettingsObserver;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkStatsViewr$SettingsObserver;->onChange(Z)V

    return-void
.end method
