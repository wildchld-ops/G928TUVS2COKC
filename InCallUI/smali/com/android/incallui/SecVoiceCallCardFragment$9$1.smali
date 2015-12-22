.class Lcom/android/incallui/SecVoiceCallCardFragment$9$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SecVoiceCallCardFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/SecVoiceCallCardFragment$9;->onGlobalLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/incallui/SecVoiceCallCardFragment$9;


# direct methods
.method constructor <init>(Lcom/android/incallui/SecVoiceCallCardFragment$9;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/SecVoiceCallCardFragment$9$1;->this$1:Lcom/android/incallui/SecVoiceCallCardFragment$9;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    const/4 v3, 0x0

    const-string v1, "animateForNewOutgoingCall: onAnimationEnd"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/incallui/SecVoiceCallCardFragment$9$1;->this$1:Lcom/android/incallui/SecVoiceCallCardFragment$9;

    iget-object v1, v1, Lcom/android/incallui/SecVoiceCallCardFragment$9;->this$0:Lcom/android/incallui/SecVoiceCallCardFragment;

    iput-boolean v3, v1, Lcom/android/incallui/SecVoiceCallCardFragment;->mIsOutgoingAnimationRunning:Z

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/incallui/SecVoiceCallCardFragment$9$1;->this$1:Lcom/android/incallui/SecVoiceCallCardFragment$9;

    iget-object v1, v1, Lcom/android/incallui/SecVoiceCallCardFragment$9;->this$0:Lcom/android/incallui/SecVoiceCallCardFragment;

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/incallui/SecVoiceCallCardFragment;->updateWaveEffectForCallState(I)V

    :cond_0
    return-void
.end method
