.class Lcom/android/incallui/SecTabletAnswerImageView$3;
.super Ljava/lang/Object;
.source "SecTabletAnswerImageView.java"

# interfaces
.implements Lcom/android/incallui/secwidget/incomingwidget/IncomingCallSlidingDrawer$OnDrawerAnimateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/SecTabletAnswerImageView;->initView()V
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

    iput-object p1, p0, Lcom/android/incallui/SecTabletAnswerImageView$3;->this$0:Lcom/android/incallui/SecTabletAnswerImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimateClose()V
    .locals 2

    const-string v0, "onAnimateClose"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/incallui/SecTabletAnswerImageView$3;->this$0:Lcom/android/incallui/SecTabletAnswerImageView;

    # invokes: Lcom/android/incallui/SecTabletAnswerImageView;->animateHideForMaskPanel()V
    invoke-static {v0}, Lcom/android/incallui/SecTabletAnswerImageView;->access$300(Lcom/android/incallui/SecTabletAnswerImageView;)V

    return-void
.end method

.method public onAnimateOpen()V
    .locals 2

    const-string v0, "onAnimateOpen"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/incallui/SecTabletAnswerImageView$3;->this$0:Lcom/android/incallui/SecTabletAnswerImageView;

    # invokes: Lcom/android/incallui/SecTabletAnswerImageView;->animateShowForMaskPanel()V
    invoke-static {v0}, Lcom/android/incallui/SecTabletAnswerImageView;->access$400(Lcom/android/incallui/SecTabletAnswerImageView;)V

    return-void
.end method
