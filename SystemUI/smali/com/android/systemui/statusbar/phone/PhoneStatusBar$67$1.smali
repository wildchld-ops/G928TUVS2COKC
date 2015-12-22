.class Lcom/android/systemui/statusbar/phone/PhoneStatusBar$67$1;
.super Ljava/lang/Object;
.source "PhoneStatusBar.java"

# interfaces
.implements Lcom/android/keyguard/KeyguardHostView$OnDismissAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/PhoneStatusBar$67;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$67;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar$67;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$67$1;->this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$67;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()Z
    .locals 5

    const/16 v4, 0x3f1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$67$1;->this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$67;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$67;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->expand()V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$67$1;->this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$67;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$67;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMumButton:Landroid/view/View;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$67$1;->this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$67;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$67;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$67$1;->this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$67;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$67;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeader:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    const v3, 0x7f0e01a6

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMumButton:Landroid/view/View;

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$67$1;->this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$67;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$67;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$18000(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/BaseStatusBar$H;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$67$1;->this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$67;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$67;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMumButton:Landroid/view/View;

    invoke-virtual {v1, v4, v2}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$67$1;->this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$67;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$67;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$18100(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/BaseStatusBar$H;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->removeMessages(I)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$67$1;->this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$67;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$67;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$18200(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/BaseStatusBar$H;

    move-result-object v1

    const-wide/16 v2, 0x190

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    const/4 v1, 0x0

    return v1
.end method
