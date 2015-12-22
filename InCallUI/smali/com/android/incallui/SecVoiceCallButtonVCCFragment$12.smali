.class Lcom/android/incallui/SecVoiceCallButtonVCCFragment$12;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SecVoiceCallButtonVCCFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->animateForRevealViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/SecVoiceCallButtonVCCFragment;


# direct methods
.method constructor <init>(Lcom/android/incallui/SecVoiceCallButtonVCCFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment$12;->this$0:Lcom/android/incallui/SecVoiceCallButtonVCCFragment;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    const-string v0, "onAnimationEnd"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment$12;->this$0:Lcom/android/incallui/SecVoiceCallButtonVCCFragment;

    invoke-virtual {v0}, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->postAccessibilityEvent()V

    return-void
.end method
