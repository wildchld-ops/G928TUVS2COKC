.class Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SubStatusBarWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->applyHeight(Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;

.field final synthetic val$mSubStatusBar:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$1;->this$0:Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$1;->val$mSubStatusBar:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$1;->val$mSubStatusBar:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
