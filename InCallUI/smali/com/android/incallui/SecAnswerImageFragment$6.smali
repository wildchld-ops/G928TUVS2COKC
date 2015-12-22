.class Lcom/android/incallui/SecAnswerImageFragment$6;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SecAnswerImageFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/SecAnswerImageFragment;->animateForAnswerCall(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/SecAnswerImageFragment;


# direct methods
.method constructor <init>(Lcom/android/incallui/SecAnswerImageFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/SecAnswerImageFragment$6;->this$0:Lcom/android/incallui/SecAnswerImageFragment;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    iget-object v1, p0, Lcom/android/incallui/SecAnswerImageFragment$6;->this$0:Lcom/android/incallui/SecAnswerImageFragment;

    const/4 v2, 0x0

    # setter for: Lcom/android/incallui/SecAnswerImageFragment;->mIsAnswerAnimationRunning:Z
    invoke-static {v1, v2}, Lcom/android/incallui/SecAnswerImageFragment;->access$602(Lcom/android/incallui/SecAnswerImageFragment;Z)Z

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->sendMsgCallListChange()V

    :cond_0
    return-void
.end method
