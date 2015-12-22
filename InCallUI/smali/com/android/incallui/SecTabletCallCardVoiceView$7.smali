.class Lcom/android/incallui/SecTabletCallCardVoiceView$7;
.super Ljava/lang/Object;
.source "SecTabletCallCardVoiceView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


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

    iput-object p1, p0, Lcom/android/incallui/SecTabletCallCardVoiceView$7;->this$0:Lcom/android/incallui/SecTabletCallCardVoiceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v2, p0, Lcom/android/incallui/SecTabletCallCardVoiceView$7;->this$0:Lcom/android/incallui/SecTabletCallCardVoiceView;

    iget-object v2, v2, Lcom/android/incallui/SecTabletCallCardVoiceView;->mPrimaryCallInfo:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iget-object v2, p0, Lcom/android/incallui/SecTabletCallCardVoiceView$7;->this$0:Lcom/android/incallui/SecTabletCallCardVoiceView;

    iget-object v2, v2, Lcom/android/incallui/SecTabletCallCardVoiceView;->mPrimaryCallInfo:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
