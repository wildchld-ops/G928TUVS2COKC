.class Lcom/android/incallui/SecVoiceCallCardFragment$13;
.super Ljava/lang/Object;
.source "SecVoiceCallCardFragment.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/SecVoiceCallCardFragment;->animateInfoContainerForAnswer(Landroid/animation/AnimatorSet$Builder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/SecVoiceCallCardFragment;

.field final synthetic val$infoLP:Landroid/widget/RelativeLayout$LayoutParams;


# direct methods
.method constructor <init>(Lcom/android/incallui/SecVoiceCallCardFragment;Landroid/widget/RelativeLayout$LayoutParams;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/SecVoiceCallCardFragment$13;->this$0:Lcom/android/incallui/SecVoiceCallCardFragment;

    iput-object p2, p0, Lcom/android/incallui/SecVoiceCallCardFragment$13;->val$infoLP:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/android/incallui/SecVoiceCallCardFragment$13;->val$infoLP:Landroid/widget/RelativeLayout$LayoutParams;

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget-object v1, p0, Lcom/android/incallui/SecVoiceCallCardFragment$13;->this$0:Lcom/android/incallui/SecVoiceCallCardFragment;

    iget-object v1, v1, Lcom/android/incallui/SecVoiceCallCardFragment;->mCallInfoContainer:Landroid/view/View;

    iget-object v2, p0, Lcom/android/incallui/SecVoiceCallCardFragment$13;->val$infoLP:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
