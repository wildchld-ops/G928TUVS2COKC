.class Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal$4;
.super Ljava/lang/Object;
.source "ConfirmLockUniversal.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->initializeAnimations()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;


# direct methods
.method constructor <init>(Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal$4;->this$0:Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget-object v2, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal$4;->this$0:Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;

    invoke-virtual {v2}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->isRTL(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    neg-float v1, v1

    :cond_0
    iget-object v2, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal$4;->this$0:Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;

    # getter for: Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mGreyStepCircleList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->access$1000(Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setTranslationX(F)V

    goto :goto_0

    :cond_1
    return-void
.end method
