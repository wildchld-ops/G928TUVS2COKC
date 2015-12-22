.class Lcom/android/incallui/SecVoiceCallButtonFragment$12;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SecVoiceCallButtonFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/SecVoiceCallButtonFragment;->animateForRevealViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/SecVoiceCallButtonFragment;


# direct methods
.method constructor <init>(Lcom/android/incallui/SecVoiceCallButtonFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/SecVoiceCallButtonFragment$12;->this$0:Lcom/android/incallui/SecVoiceCallButtonFragment;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    const-string v0, "onAnimationEnd"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallButtonFragment$12;->this$0:Lcom/android/incallui/SecVoiceCallButtonFragment;

    invoke-virtual {v0}, Lcom/android/incallui/SecVoiceCallButtonFragment;->postAccessibilityEvent()V

    return-void
.end method
