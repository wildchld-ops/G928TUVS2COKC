.class Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment$2;
.super Ljava/lang/Object;
.source "SecCallPlusVoiceCallButtonFragment.java"

# interfaces
.implements Lcom/android/incallui/VoWifiStateTracker$VoWifiStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;


# direct methods
.method constructor <init>(Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment$2;->this$0:Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVoWifiStateChanged(Z)V
    .locals 3

    const/4 v1, 0x1

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    iget-object v2, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment$2;->this$0:Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;

    # getter for: Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mWfcHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->access$200(Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Message;->setTarget(Landroid/os/Handler;)V

    iput v1, v0, Landroid/os/Message;->what:I

    if-eqz p1, :cond_0

    :goto_0
    iput v1, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
