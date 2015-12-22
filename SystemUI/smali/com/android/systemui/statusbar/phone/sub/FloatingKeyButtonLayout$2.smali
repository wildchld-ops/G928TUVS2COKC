.class Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout$2;
.super Ljava/lang/Object;
.source "FloatingKeyButtonLayout.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->collapseAnim()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout$2;->this$0:Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout$2;->this$0:Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;

    # invokes: Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->collapseAndRemoveExpandedWindow()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;->access$100(Lcom/android/systemui/statusbar/phone/sub/FloatingKeyButtonLayout;)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
