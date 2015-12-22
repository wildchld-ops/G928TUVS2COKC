.class Lcom/android/incallui/SecTabletCallCardView$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SecTabletCallCardView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/SecTabletCallCardView;->animateForBlinkCallTime()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/SecTabletCallCardView;


# direct methods
.method constructor <init>(Lcom/android/incallui/SecTabletCallCardView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/SecTabletCallCardView$3;->this$0:Lcom/android/incallui/SecTabletCallCardView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/SecTabletCallCardView$3;->this$0:Lcom/android/incallui/SecTabletCallCardView;

    # --operator for: Lcom/android/incallui/SecTabletCallCardView;->mEndCallRepeatCount:I
    invoke-static {v0}, Lcom/android/incallui/SecTabletCallCardView;->access$206(Lcom/android/incallui/SecTabletCallCardView;)I

    iget-object v0, p0, Lcom/android/incallui/SecTabletCallCardView$3;->this$0:Lcom/android/incallui/SecTabletCallCardView;

    # getter for: Lcom/android/incallui/SecTabletCallCardView;->mEndCallRepeatCount:I
    invoke-static {v0}, Lcom/android/incallui/SecTabletCallCardView;->access$200(Lcom/android/incallui/SecTabletCallCardView;)I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecTabletCallCardView$3;->this$0:Lcom/android/incallui/SecTabletCallCardView;

    # invokes: Lcom/android/incallui/SecTabletCallCardView;->animateForBlinkCallTime()V
    invoke-static {v0}, Lcom/android/incallui/SecTabletCallCardView;->access$300(Lcom/android/incallui/SecTabletCallCardView;)V

    :cond_0
    return-void
.end method
