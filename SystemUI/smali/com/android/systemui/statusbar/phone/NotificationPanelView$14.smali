.class Lcom/android/systemui/statusbar/phone/NotificationPanelView$14;
.super Ljava/lang/Object;
.source "NotificationPanelView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/NotificationPanelView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$14;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/16 v2, 0x8

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$14;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    const/4 v1, 0x0

    # setter for: Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusViewAnimating:Z
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$1702(Lcom/android/systemui/statusbar/phone/NotificationPanelView;Z)Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$14;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    # getter for: Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusView:Landroid/view/View;
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$800(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$14;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    # invokes: Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setMascotViewVisible(I)V
    invoke-static {v0, v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$1800(Lcom/android/systemui/statusbar/phone/NotificationPanelView;I)V

    return-void
.end method
