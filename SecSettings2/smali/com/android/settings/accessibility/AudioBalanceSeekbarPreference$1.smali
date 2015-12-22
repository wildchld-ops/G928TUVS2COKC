.class Lcom/android/settings/accessibility/AudioBalanceSeekbarPreference$1;
.super Landroid/content/BroadcastReceiver;
.source "AudioBalanceSeekbarPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/accessibility/AudioBalanceSeekbarPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accessibility/AudioBalanceSeekbarPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/accessibility/AudioBalanceSeekbarPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/accessibility/AudioBalanceSeekbarPreference$1;->this$0:Lcom/android/settings/accessibility/AudioBalanceSeekbarPreference;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    if-nez p2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/accessibility/AudioBalanceSeekbarPreference$1;->this$0:Lcom/android/settings/accessibility/AudioBalanceSeekbarPreference;

    # invokes: Lcom/android/settings/accessibility/AudioBalanceSeekbarPreference;->setDualColorSeekbar()V
    invoke-static {v0}, Lcom/android/settings/accessibility/AudioBalanceSeekbarPreference;->access$000(Lcom/android/settings/accessibility/AudioBalanceSeekbarPreference;)V

    goto :goto_0
.end method
