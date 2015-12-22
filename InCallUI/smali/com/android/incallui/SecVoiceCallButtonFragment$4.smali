.class Lcom/android/incallui/SecVoiceCallButtonFragment$4;
.super Ljava/lang/Object;
.source "SecVoiceCallButtonFragment.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/SecVoiceCallButtonFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/SecVoiceCallButtonFragment;


# direct methods
.method constructor <init>(Lcom/android/incallui/SecVoiceCallButtonFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/SecVoiceCallButtonFragment$4;->this$0:Lcom/android/incallui/SecVoiceCallButtonFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 5

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/incallui/SecVoiceCallButtonFragment$4;->this$0:Lcom/android/incallui/SecVoiceCallButtonFragment;

    iget-object v2, v2, Lcom/android/incallui/SecVoiceCallButtonFragment;->mParentView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "onGlobalLayout() isNotAlive"

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iget-object v2, p0, Lcom/android/incallui/SecVoiceCallButtonFragment$4;->this$0:Lcom/android/incallui/SecVoiceCallButtonFragment;

    invoke-virtual {v2}, Lcom/android/incallui/SecVoiceCallButtonFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/SecVoiceCallButtonFragment$4;->this$0:Lcom/android/incallui/SecVoiceCallButtonFragment;

    invoke-virtual {v2}, Lcom/android/incallui/SecVoiceCallButtonFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    instance-of v2, v2, Lcom/android/incallui/SecInCallActivity;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/SecVoiceCallButtonFragment$4;->this$0:Lcom/android/incallui/SecVoiceCallButtonFragment;

    invoke-virtual {v2}, Lcom/android/incallui/SecVoiceCallButtonFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/SecInCallActivity;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCreateView() displayDialpad : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/incallui/SecInCallActivity;->isShowDialpadRequested()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-virtual {v1}, Lcom/android/incallui/SecInCallActivity;->isAnimateDialpadOnShow()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/android/incallui/SecInCallActivity;->displayDialpad(ZZ)V

    invoke-virtual {v1, v4}, Lcom/android/incallui/SecInCallActivity;->setShowDialpadRequested(Z)V

    invoke-virtual {v1, v4}, Lcom/android/incallui/SecInCallActivity;->setAnimateDialpadOnShow(Z)V

    goto :goto_0
.end method
