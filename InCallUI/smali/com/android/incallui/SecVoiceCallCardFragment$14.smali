.class Lcom/android/incallui/SecVoiceCallCardFragment$14;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SecVoiceCallCardFragment.java"


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

    iput-object p1, p0, Lcom/android/incallui/SecVoiceCallCardFragment$14;->this$0:Lcom/android/incallui/SecVoiceCallCardFragment;

    iput-object p2, p0, Lcom/android/incallui/SecVoiceCallCardFragment$14;->val$infoLP:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallCardFragment$14;->val$infoLP:Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallCardFragment$14;->this$0:Lcom/android/incallui/SecVoiceCallCardFragment;

    iget-object v0, v0, Lcom/android/incallui/SecVoiceCallCardFragment;->mCallInfoContainer:Landroid/view/View;

    iget-object v1, p0, Lcom/android/incallui/SecVoiceCallCardFragment$14;->val$infoLP:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
