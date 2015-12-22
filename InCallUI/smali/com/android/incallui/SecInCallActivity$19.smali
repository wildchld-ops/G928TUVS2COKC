.class Lcom/android/incallui/SecInCallActivity$19;
.super Ljava/lang/Object;
.source "SecInCallActivity.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/SecInCallActivity;->animateForMoveDialpad(Z)V
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

    iput-object p1, p0, Lcom/android/incallui/SecInCallActivity$19;->this$0:Lcom/android/incallui/SecInCallActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/android/incallui/SecInCallActivity$19;->this$0:Lcom/android/incallui/SecInCallActivity;

    # invokes: Lcom/android/incallui/SecInCallActivity;->setTopMarginOfDialpad(I)V
    invoke-static {v1, v0}, Lcom/android/incallui/SecInCallActivity;->access$000(Lcom/android/incallui/SecInCallActivity;I)V

    return-void
.end method
