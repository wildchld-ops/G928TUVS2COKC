.class Lcom/android/incallui/SecInCallActivity$2;
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

    iput-object p1, p0, Lcom/android/incallui/SecInCallActivity$2;->this$0:Lcom/android/incallui/SecInCallActivity;

    invoke-direct {p0}, Lcom/android/phone/common/animation/AnimationListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/incallui/SecInCallActivity$2;->this$0:Lcom/android/incallui/SecInCallActivity;

    # invokes: Lcom/android/incallui/SecInCallActivity;->showDialpad(Z)V
    invoke-static {v1, v3}, Lcom/android/incallui/SecInCallActivity;->access$100(Lcom/android/incallui/SecInCallActivity;Z)V

    iget-object v1, p0, Lcom/android/incallui/SecInCallActivity$2;->this$0:Lcom/android/incallui/SecInCallActivity;

    invoke-virtual {v1}, Lcom/android/incallui/SecInCallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0189

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v0, v1

    iget-object v1, p0, Lcom/android/incallui/SecInCallActivity$2;->this$0:Lcom/android/incallui/SecInCallActivity;

    neg-int v2, v0

    # invokes: Lcom/android/incallui/SecInCallActivity;->setTopMarginOfDialpad(I)V
    invoke-static {v1, v2}, Lcom/android/incallui/SecInCallActivity;->access$000(Lcom/android/incallui/SecInCallActivity;I)V

    iget-object v1, p0, Lcom/android/incallui/SecInCallActivity$2;->this$0:Lcom/android/incallui/SecInCallActivity;

    invoke-virtual {v1}, Lcom/android/incallui/SecInCallActivity;->getSecCallButtonFragment()Lcom/android/incallui/SecCallButtonUi;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/SecInCallActivity$2;->this$0:Lcom/android/incallui/SecInCallActivity;

    invoke-virtual {v1}, Lcom/android/incallui/SecInCallActivity;->getSecCallButtonFragment()Lcom/android/incallui/SecCallButtonUi;

    move-result-object v1

    invoke-interface {v1, v3}, Lcom/android/incallui/SecCallButtonUi;->returnButtonsForDialpad(Z)V

    :cond_0
    return-void
.end method
