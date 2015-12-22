.class Lcom/android/systemui/statusbar/phone/PhoneStatusBar$71;
.super Ljava/lang/Object;
.source "PhoneStatusBar.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateExpandQsEditPanel()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$71;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3

    const/16 v2, 0x8

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$71;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeader:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$71;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeader:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->setVisibility(I)V

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$71;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$19300(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$71;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$19400(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setVisibility(I)V

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$71;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQuickSettingContainer:Landroid/widget/FrameLayout;
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$1700(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/widget/FrameLayout;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$71;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQuickSettingContainer:Landroid/widget/FrameLayout;
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$1700(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_2
    sget-boolean v1, Lcom/android/systemui/statusbar/Feature;->mIsTablet:Z

    if-eqz v1, :cond_4

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$71;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$19500(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_4

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$71;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$19600(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$71;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$19700(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$71;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateCarrierLabelView()V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$71;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$19800(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->isBeingDragged()Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$71;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$19900(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->isFling()Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_5
    const-string v1, "PhoneStatusBar"

    const-string v2, "scroll Y reset !!! "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$71;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$20000(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->endDrag()V

    :cond_6
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$71;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQSEditDoneButton:Landroid/view/View;
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$20100(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$71;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->sendAccessibilityEvent(I)V

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
