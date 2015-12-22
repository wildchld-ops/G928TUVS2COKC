.class Lcom/android/systemui/volume/IconPulser$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "IconPulser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/volume/IconPulser;->start(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/volume/IconPulser;

.field final synthetic val$target:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/systemui/volume/IconPulser;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/volume/IconPulser$1;->this$0:Lcom/android/systemui/volume/IconPulser;

    iput-object p2, p0, Lcom/android/systemui/volume/IconPulser$1;->val$target:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    const/high16 v1, 0x3f800000    # 1.0f

    iget-object v0, p0, Lcom/android/systemui/volume/IconPulser$1;->val$target:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method
