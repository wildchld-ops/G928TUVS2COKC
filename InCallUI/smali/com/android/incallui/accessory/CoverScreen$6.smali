.class Lcom/android/incallui/accessory/CoverScreen$6;
.super Landroid/animation/AnimatorListenerAdapter;
.source "CoverScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/accessory/CoverScreen;->animateForPeriodMarkContainer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/accessory/CoverScreen;


# direct methods
.method constructor <init>(Lcom/android/incallui/accessory/CoverScreen;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/accessory/CoverScreen$6;->this$0:Lcom/android/incallui/accessory/CoverScreen;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    const-string v0, "animateForPeriodMarkContainer... onAnimationEnd"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/accessory/CoverScreen$6;->this$0:Lcom/android/incallui/accessory/CoverScreen;

    # getter for: Lcom/android/incallui/accessory/CoverScreen;->mPeriodMarkContainer:Landroid/view/View;
    invoke-static {v0}, Lcom/android/incallui/accessory/CoverScreen;->access$900(Lcom/android/incallui/accessory/CoverScreen;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
