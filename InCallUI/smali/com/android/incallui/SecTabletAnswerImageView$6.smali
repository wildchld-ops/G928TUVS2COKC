.class Lcom/android/incallui/SecTabletAnswerImageView$6;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SecTabletAnswerImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/SecTabletAnswerImageView;->animateForAnswerCall(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/SecTabletAnswerImageView;


# direct methods
.method constructor <init>(Lcom/android/incallui/SecTabletAnswerImageView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/SecTabletAnswerImageView$6;->this$0:Lcom/android/incallui/SecTabletAnswerImageView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    iget-object v1, p0, Lcom/android/incallui/SecTabletAnswerImageView$6;->this$0:Lcom/android/incallui/SecTabletAnswerImageView;

    const/4 v2, 0x0

    # setter for: Lcom/android/incallui/SecTabletAnswerImageView;->mIsAnswerAnimationRunning:Z
    invoke-static {v1, v2}, Lcom/android/incallui/SecTabletAnswerImageView;->access$702(Lcom/android/incallui/SecTabletAnswerImageView;Z)Z

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
    sget-object v1, Lcom/android/incallui/SecEventBusManager;->INSTANCE:Lcom/android/incallui/SecEventBusManager;

    new-instance v2, Lcom/android/incallui/SecEventAnswerTriggered;

    sget-object v3, Lcom/android/incallui/SecEventAnswerTriggered$STATE;->ENDED:Lcom/android/incallui/SecEventAnswerTriggered$STATE;

    invoke-direct {v2, v3}, Lcom/android/incallui/SecEventAnswerTriggered;-><init>(Lcom/android/incallui/SecEventAnswerTriggered$STATE;)V

    invoke-virtual {v1, v2}, Lcom/android/incallui/SecEventBusManager;->post(Ljava/lang/Object;)V

    return-void
.end method
