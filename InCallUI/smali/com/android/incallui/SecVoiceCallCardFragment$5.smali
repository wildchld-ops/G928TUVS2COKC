.class Lcom/android/incallui/SecVoiceCallCardFragment$5;
.super Ljava/lang/Object;
.source "SecVoiceCallCardFragment.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/SecVoiceCallCardFragment;->animateForChangeColor(IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/SecVoiceCallCardFragment;


# direct methods
.method constructor <init>(Lcom/android/incallui/SecVoiceCallCardFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/SecVoiceCallCardFragment$5;->this$0:Lcom/android/incallui/SecVoiceCallCardFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallCardFragment$5;->this$0:Lcom/android/incallui/SecVoiceCallCardFragment;

    iget-object v0, v0, Lcom/android/incallui/SecVoiceCallCardFragment;->mPrimaryCallCardContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallCardFragment$5;->this$0:Lcom/android/incallui/SecVoiceCallCardFragment;

    iget-object v1, v0, Lcom/android/incallui/SecVoiceCallCardFragment;->mPrimaryCallCardContainer:Landroid/view/View;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_0
    return-void
.end method
