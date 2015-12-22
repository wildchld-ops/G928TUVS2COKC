.class Lcom/android/systemui/statusbar/phone/NotificationPanelView$11;
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

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$11;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$11;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    # getter for: Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mSecKeyguardStatusView:Lcom/android/keyguard/sec/SecKeyguardStatusView;
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$1200(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Lcom/android/keyguard/sec/SecKeyguardStatusView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$11;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    # getter for: Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mSecKeyguardStatusView:Lcom/android/keyguard/sec/SecKeyguardStatusView;
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$1200(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Lcom/android/keyguard/sec/SecKeyguardStatusView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$11;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    # getter for: Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHasNotification:Z
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$1300(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Z

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/keyguard/sec/SecKeyguardStatusView;->updateOwnerInfo(ZZ)V

    :cond_0
    return-void
.end method
