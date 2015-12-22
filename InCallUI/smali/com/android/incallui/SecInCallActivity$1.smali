.class Lcom/android/incallui/SecInCallActivity$1;
.super Lcom/android/phone/common/animation/AnimationListenerAdapter;
.source "SecInCallActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/SecInCallActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/SecInCallActivity;


# direct methods
.method constructor <init>(Lcom/android/incallui/SecInCallActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/SecInCallActivity$1;->this$0:Lcom/android/incallui/SecInCallActivity;

    invoke-direct {p0}, Lcom/android/phone/common/animation/AnimationListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/SecInCallActivity$1;->this$0:Lcom/android/incallui/SecInCallActivity;

    invoke-virtual {v0}, Lcom/android/incallui/SecInCallActivity;->getSecDialpadFragment()Lcom/android/incallui/SecDialpadUi;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecInCallActivity$1;->this$0:Lcom/android/incallui/SecInCallActivity;

    invoke-virtual {v0}, Lcom/android/incallui/SecInCallActivity;->getSecDialpadFragment()Lcom/android/incallui/SecDialpadUi;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/incallui/SecDialpadUi;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecInCallActivity$1;->this$0:Lcom/android/incallui/SecInCallActivity;

    invoke-virtual {v0}, Lcom/android/incallui/SecInCallActivity;->getSecDialpadFragment()Lcom/android/incallui/SecDialpadUi;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/incallui/SecDialpadUi;->showElapsedTimeContainer()V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/SecInCallActivity$1;->this$0:Lcom/android/incallui/SecInCallActivity;

    const/4 v1, 0x0

    # invokes: Lcom/android/incallui/SecInCallActivity;->setTopMarginOfDialpad(I)V
    invoke-static {v0, v1}, Lcom/android/incallui/SecInCallActivity;->access$000(Lcom/android/incallui/SecInCallActivity;I)V

    return-void
.end method
