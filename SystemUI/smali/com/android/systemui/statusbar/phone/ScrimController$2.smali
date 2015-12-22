.class Lcom/android/systemui/statusbar/phone/ScrimController$2;
.super Ljava/lang/Object;
.source "ScrimController.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/ScrimController;->startScrimAnimation(Lcom/android/systemui/statusbar/ScrimView;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/ScrimController;

.field final synthetic val$blue:I

.field final synthetic val$green:I

.field final synthetic val$red:I

.field final synthetic val$scrim:Lcom/android/systemui/statusbar/ScrimView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/ScrimController;Lcom/android/systemui/statusbar/ScrimView;III)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController$2;->this$0:Lcom/android/systemui/statusbar/phone/ScrimController;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/ScrimController$2;->val$scrim:Lcom/android/systemui/statusbar/ScrimView;

    iput p3, p0, Lcom/android/systemui/statusbar/phone/ScrimController$2;->val$red:I

    iput p4, p0, Lcom/android/systemui/statusbar/phone/ScrimController$2;->val$green:I

    iput p5, p0, Lcom/android/systemui/statusbar/phone/ScrimController$2;->val$blue:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 5

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController$2;->val$scrim:Lcom/android/systemui/statusbar/ScrimView;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/ScrimController$2;->val$red:I

    iget v3, p0, Lcom/android/systemui/statusbar/phone/ScrimController$2;->val$green:I

    iget v4, p0, Lcom/android/systemui/statusbar/phone/ScrimController$2;->val$blue:I

    invoke-static {v0, v2, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/ScrimView;->setScrimColor(I)V

    return-void
.end method
