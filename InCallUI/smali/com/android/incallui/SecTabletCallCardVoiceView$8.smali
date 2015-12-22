.class Lcom/android/incallui/SecTabletCallCardVoiceView$8;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SecTabletCallCardVoiceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/SecTabletCallCardVoiceView;->startAnswerAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/SecTabletCallCardVoiceView;


# direct methods
.method constructor <init>(Lcom/android/incallui/SecTabletCallCardVoiceView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/SecTabletCallCardVoiceView$8;->this$0:Lcom/android/incallui/SecTabletCallCardVoiceView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/SecTabletCallCardVoiceView$8;->this$0:Lcom/android/incallui/SecTabletCallCardVoiceView;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/incallui/SecTabletCallCardVoiceView;->mAnimationRunning:Z

    iget-object v0, p0, Lcom/android/incallui/SecTabletCallCardVoiceView$8;->this$0:Lcom/android/incallui/SecTabletCallCardVoiceView;

    invoke-virtual {v0}, Lcom/android/incallui/SecTabletCallCardVoiceView;->setCallStateLazy()V

    return-void
.end method
