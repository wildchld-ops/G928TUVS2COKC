.class Lcom/android/systemui/statusbar/phone/PhoneStatusBar$76;
.super Ljava/lang/Object;
.source "PhoneStatusBar.java"

# interfaces
.implements Lcom/android/systemui/qs/QSPanel$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mScanState:Z

.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$76;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private handleShowingDetail(Lcom/android/systemui/qs/QSTile$DetailAdapter;)V
    .locals 4

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$76;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v3, v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeader:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    if-eqz v0, :cond_2

    const/16 v2, 0x8

    :goto_1
    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->setVisibility(I)V

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$76;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->expand()V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$76;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # invokes: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateQSpanel(Z)V
    invoke-static {v2, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$20800(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)V

    :cond_0
    return-void

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    move v2, v1

    goto :goto_1
.end method


# virtual methods
.method public onDoneButtonClicked(Lcom/android/systemui/qs/QSTile$DetailAdapter;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$76;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$20700(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/BaseStatusBar$H;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$76$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$76$1;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar$76;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onScanStateChanged(Z)V
    .locals 0

    return-void
.end method

.method public onShowingDetail(Lcom/android/systemui/qs/QSTile$DetailAdapter;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$76;->handleShowingDetail(Lcom/android/systemui/qs/QSTile$DetailAdapter;)V

    return-void
.end method

.method public onToggleStateChanged(Z)V
    .locals 0

    return-void
.end method
