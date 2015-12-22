.class Lcom/android/systemui/twscreenmanager/TwSwitchModeView$4;
.super Ljava/lang/Object;
.source "TwSwitchModeView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->moveToOtherScreen(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/twscreenmanager/TwSwitchModeView;

.field final synthetic val$DISPLAY_ID:I


# direct methods
.method constructor <init>(Lcom/android/systemui/twscreenmanager/TwSwitchModeView;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView$4;->this$0:Lcom/android/systemui/twscreenmanager/TwSwitchModeView;

    iput p2, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView$4;->val$DISPLAY_ID:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView$4;->this$0:Lcom/android/systemui/twscreenmanager/TwSwitchModeView;

    iget v1, p0, Lcom/android/systemui/twscreenmanager/TwSwitchModeView$4;->val$DISPLAY_ID:I

    # invokes: Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->stopTwScreenManagerServiceWithMoveToScrren(I)V
    invoke-static {v0, v1}, Lcom/android/systemui/twscreenmanager/TwSwitchModeView;->access$100(Lcom/android/systemui/twscreenmanager/TwSwitchModeView;I)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
