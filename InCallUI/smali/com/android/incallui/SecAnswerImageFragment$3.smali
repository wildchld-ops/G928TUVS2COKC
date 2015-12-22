.class Lcom/android/incallui/SecAnswerImageFragment$3;
.super Ljava/lang/Object;
.source "SecAnswerImageFragment.java"

# interfaces
.implements Lcom/android/incallui/secwidget/incomingwidget/IncomingCallSlidingDrawer$OnDrawerAnimateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/SecAnswerImageFragment;->onFinishInflate(Landroid/view/View;)V
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

    iput-object p1, p0, Lcom/android/incallui/SecAnswerImageFragment$3;->this$0:Lcom/android/incallui/SecAnswerImageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimateClose()V
    .locals 2

    const-string v0, "onAnimateClose"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/incallui/SecAnswerImageFragment$3;->this$0:Lcom/android/incallui/SecAnswerImageFragment;

    # invokes: Lcom/android/incallui/SecAnswerImageFragment;->animateHideForMaskPanel()V
    invoke-static {v0}, Lcom/android/incallui/SecAnswerImageFragment;->access$200(Lcom/android/incallui/SecAnswerImageFragment;)V

    return-void
.end method

.method public onAnimateOpen()V
    .locals 2

    const-string v0, "onAnimateOpen"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/incallui/SecAnswerImageFragment$3;->this$0:Lcom/android/incallui/SecAnswerImageFragment;

    # invokes: Lcom/android/incallui/SecAnswerImageFragment;->animateShowForMaskPanel()V
    invoke-static {v0}, Lcom/android/incallui/SecAnswerImageFragment;->access$300(Lcom/android/incallui/SecAnswerImageFragment;)V

    return-void
.end method
