.class Lcom/android/keyguard/sec/KeyguardPreviewContainer$9;
.super Ljava/lang/Object;
.source "KeyguardPreviewContainer.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/sec/KeyguardPreviewContainer;->startBackwardAnimation(Landroid/animation/AnimatorListenerAdapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/KeyguardPreviewContainer;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/KeyguardPreviewContainer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardPreviewContainer$9;->this$0:Lcom/android/keyguard/sec/KeyguardPreviewContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 7

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardPreviewContainer$9;->this$0:Lcom/android/keyguard/sec/KeyguardPreviewContainer;

    # getter for: Lcom/android/keyguard/sec/KeyguardPreviewContainer;->mPreviewShrinkAnimator:Landroid/animation/ValueAnimator;
    invoke-static {v1}, Lcom/android/keyguard/sec/KeyguardPreviewContainer;->access$1000(Lcom/android/keyguard/sec/KeyguardPreviewContainer;)Landroid/animation/ValueAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardPreviewContainer$9;->this$0:Lcom/android/keyguard/sec/KeyguardPreviewContainer;

    iput v0, v1, Lcom/android/keyguard/sec/KeyguardPreviewContainer;->mDistance:I

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardPreviewContainer$9;->this$0:Lcom/android/keyguard/sec/KeyguardPreviewContainer;

    iget-object v1, v1, Lcom/android/keyguard/sec/KeyguardPreviewContainer;->mPreviewDrawable:Lcom/android/keyguard/sec/KeyguardPreviewContainer$KeyguardCirclePreviewDrawable;

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardPreviewContainer$9;->this$0:Lcom/android/keyguard/sec/KeyguardPreviewContainer;

    # getter for: Lcom/android/keyguard/sec/KeyguardPreviewContainer;->mStartX:I
    invoke-static {v2}, Lcom/android/keyguard/sec/KeyguardPreviewContainer;->access$1100(Lcom/android/keyguard/sec/KeyguardPreviewContainer;)I

    move-result v2

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardPreviewContainer$9;->this$0:Lcom/android/keyguard/sec/KeyguardPreviewContainer;

    iget v3, v3, Lcom/android/keyguard/sec/KeyguardPreviewContainer;->mDistance:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardPreviewContainer$9;->this$0:Lcom/android/keyguard/sec/KeyguardPreviewContainer;

    # getter for: Lcom/android/keyguard/sec/KeyguardPreviewContainer;->mStartY:I
    invoke-static {v3}, Lcom/android/keyguard/sec/KeyguardPreviewContainer;->access$1200(Lcom/android/keyguard/sec/KeyguardPreviewContainer;)I

    move-result v3

    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardPreviewContainer$9;->this$0:Lcom/android/keyguard/sec/KeyguardPreviewContainer;

    iget v4, v4, Lcom/android/keyguard/sec/KeyguardPreviewContainer;->mDistance:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardPreviewContainer$9;->this$0:Lcom/android/keyguard/sec/KeyguardPreviewContainer;

    # getter for: Lcom/android/keyguard/sec/KeyguardPreviewContainer;->mStartX:I
    invoke-static {v4}, Lcom/android/keyguard/sec/KeyguardPreviewContainer;->access$1100(Lcom/android/keyguard/sec/KeyguardPreviewContainer;)I

    move-result v4

    iget-object v5, p0, Lcom/android/keyguard/sec/KeyguardPreviewContainer$9;->this$0:Lcom/android/keyguard/sec/KeyguardPreviewContainer;

    iget v5, v5, Lcom/android/keyguard/sec/KeyguardPreviewContainer;->mDistance:I

    add-int/2addr v4, v5

    iget-object v5, p0, Lcom/android/keyguard/sec/KeyguardPreviewContainer$9;->this$0:Lcom/android/keyguard/sec/KeyguardPreviewContainer;

    # getter for: Lcom/android/keyguard/sec/KeyguardPreviewContainer;->mStartY:I
    invoke-static {v5}, Lcom/android/keyguard/sec/KeyguardPreviewContainer;->access$1200(Lcom/android/keyguard/sec/KeyguardPreviewContainer;)I

    move-result v5

    iget-object v6, p0, Lcom/android/keyguard/sec/KeyguardPreviewContainer$9;->this$0:Lcom/android/keyguard/sec/KeyguardPreviewContainer;

    iget v6, v6, Lcom/android/keyguard/sec/KeyguardPreviewContainer;->mDistance:I

    add-int/2addr v5, v6

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/keyguard/sec/KeyguardPreviewContainer$KeyguardCirclePreviewDrawable;->setPreviewRect(IIII)V

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardPreviewContainer$9;->this$0:Lcom/android/keyguard/sec/KeyguardPreviewContainer;

    invoke-virtual {v1}, Lcom/android/keyguard/sec/KeyguardPreviewContainer;->invalidate()V

    return-void
.end method
