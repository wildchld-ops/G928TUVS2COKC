.class Lcom/android/systemui/statusbar/policy/QuickSim1ButtonLayout$PreferedVoiceObserver;
.super Landroid/database/ContentObserver;
.source "QuickSim1ButtonLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/QuickSim1ButtonLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PreferedVoiceObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/QuickSim1ButtonLayout;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/QuickSim1ButtonLayout;)V
    .locals 4

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/QuickSim1ButtonLayout$PreferedVoiceObserver;->this$0:Lcom/android/systemui/statusbar/policy/QuickSim1ButtonLayout;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    # getter for: Lcom/android/systemui/statusbar/policy/QuickSim1ButtonLayout;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/systemui/statusbar/policy/QuickSim1ButtonLayout;->access$2100(Lcom/android/systemui/statusbar/policy/QuickSim1ButtonLayout;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "prefered_voice_call"

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    # setter for: Lcom/android/systemui/statusbar/policy/QuickSim1ButtonLayout;->mPreferedVoice:I
    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/policy/QuickSim1ButtonLayout;->access$1302(Lcom/android/systemui/statusbar/policy/QuickSim1ButtonLayout;I)I

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickSim1ButtonLayout$PreferedVoiceObserver;->this$0:Lcom/android/systemui/statusbar/policy/QuickSim1ButtonLayout;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/QuickSim1ButtonLayout$PreferedVoiceObserver;->this$0:Lcom/android/systemui/statusbar/policy/QuickSim1ButtonLayout;

    # getter for: Lcom/android/systemui/statusbar/policy/QuickSim1ButtonLayout;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/QuickSim1ButtonLayout;->access$2200(Lcom/android/systemui/statusbar/policy/QuickSim1ButtonLayout;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "prefered_voice_call"

    const/4 v3, 0x0

    const/4 v4, -0x2

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    # setter for: Lcom/android/systemui/statusbar/policy/QuickSim1ButtonLayout;->mPreferedVoice:I
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/QuickSim1ButtonLayout;->access$1302(Lcom/android/systemui/statusbar/policy/QuickSim1ButtonLayout;I)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickSim1ButtonLayout$PreferedVoiceObserver;->this$0:Lcom/android/systemui/statusbar/policy/QuickSim1ButtonLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/QuickSim1ButtonLayout;->setActivateSimUI()V

    const-string v0, "QuickSim1Button"

    const-string v1, "PreferedVoiceObserver onChange():"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
