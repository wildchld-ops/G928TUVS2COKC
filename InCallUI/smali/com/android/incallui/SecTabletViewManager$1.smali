.class Lcom/android/incallui/SecTabletViewManager$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SecTabletViewManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/SecTabletViewManager;->removeViewInternal(Lcom/android/incallui/SecTabletView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/SecTabletViewManager;

.field final synthetic val$currentView:Lcom/android/incallui/SecTabletView;

.field final synthetic val$parent:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Lcom/android/incallui/SecTabletViewManager;Lcom/android/incallui/SecTabletView;Landroid/view/ViewGroup;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/SecTabletViewManager$1;->this$0:Lcom/android/incallui/SecTabletViewManager;

    iput-object p2, p0, Lcom/android/incallui/SecTabletViewManager$1;->val$currentView:Lcom/android/incallui/SecTabletView;

    iput-object p3, p0, Lcom/android/incallui/SecTabletViewManager$1;->val$parent:Landroid/view/ViewGroup;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    iget-object v0, p0, Lcom/android/incallui/SecTabletViewManager$1;->val$currentView:Lcom/android/incallui/SecTabletView;

    invoke-static {v0}, Lcom/android/incallui/SecTabletViewManager;->notifyAnimationEnded(Lcom/android/incallui/SecTabletView;)V

    iget-object v0, p0, Lcom/android/incallui/SecTabletViewManager$1;->val$parent:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/incallui/SecTabletViewManager$1;->val$currentView:Lcom/android/incallui/SecTabletView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const-string v0, "SecTabletViewManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "layout removed with animation : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/SecTabletViewManager$1;->val$currentView:Lcom/android/incallui/SecTabletView;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
