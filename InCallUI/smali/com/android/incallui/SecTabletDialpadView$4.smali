.class Lcom/android/incallui/SecTabletDialpadView$4;
.super Ljava/lang/Object;
.source "SecTabletDialpadView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/SecTabletDialpadView;->animateForTopMargin(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/SecTabletDialpadView;


# direct methods
.method constructor <init>(Lcom/android/incallui/SecTabletDialpadView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/SecTabletDialpadView$4;->this$0:Lcom/android/incallui/SecTabletDialpadView;

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

    iget-object v1, p0, Lcom/android/incallui/SecTabletDialpadView$4;->this$0:Lcom/android/incallui/SecTabletDialpadView;

    # invokes: Lcom/android/incallui/SecTabletDialpadView;->setTopMarginOfDialpad(I)V
    invoke-static {v1, v0}, Lcom/android/incallui/SecTabletDialpadView;->access$000(Lcom/android/incallui/SecTabletDialpadView;I)V

    return-void
.end method
