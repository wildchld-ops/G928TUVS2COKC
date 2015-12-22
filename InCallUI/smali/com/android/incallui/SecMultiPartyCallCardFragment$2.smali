.class Lcom/android/incallui/SecMultiPartyCallCardFragment$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SecMultiPartyCallCardFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/SecMultiPartyCallCardFragment;->animateForMerge()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/SecMultiPartyCallCardFragment;


# direct methods
.method constructor <init>(Lcom/android/incallui/SecMultiPartyCallCardFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment$2;->this$0:Lcom/android/incallui/SecMultiPartyCallCardFragment;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 5

    const/16 v4, 0x66

    const-string v0, "merge animation end..."

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment$2;->this$0:Lcom/android/incallui/SecMultiPartyCallCardFragment;

    iget-object v0, v0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mPrimaryCallInfoContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment$2;->this$0:Lcom/android/incallui/SecMultiPartyCallCardFragment;

    iget-object v0, v0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mPrimaryCallInfoContainer:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    const-string v0, "vzw_volte_ui"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment$2;->this$0:Lcom/android/incallui/SecMultiPartyCallCardFragment;

    iget-object v0, v0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1b58

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :goto_0
    iget-object v0, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment$2;->this$0:Lcom/android/incallui/SecMultiPartyCallCardFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/incallui/SecMultiPartyCallCardFragment;->showSecondaryContainer(Z)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/SecMultiPartyCallCardFragment$2;->this$0:Lcom/android/incallui/SecMultiPartyCallCardFragment;

    iget-object v0, v0, Lcom/android/incallui/SecMultiPartyCallCardFragment;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method
