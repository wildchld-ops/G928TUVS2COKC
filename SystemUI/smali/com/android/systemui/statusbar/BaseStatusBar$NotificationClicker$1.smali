.class Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$1;
.super Ljava/lang/Object;
.source "BaseStatusBar.java"

# interfaces
.implements Lcom/android/keyguard/KeyguardHostView$OnDismissAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;

.field final synthetic val$afterKeyguardGone:Z

.field final synthetic val$isForLockedKnoxContainer:Z

.field final synthetic val$keyguardShowing:Z

.field final synthetic val$userId:I


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;ZZZI)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$1;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$1;->val$isForLockedKnoxContainer:Z

    iput-boolean p3, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$1;->val$keyguardShowing:Z

    iput-boolean p4, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$1;->val$afterKeyguardGone:Z

    iput p5, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$1;->val$userId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$1;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;

    # getter for: Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;->mIsHeadsUp:Z
    invoke-static {v2}, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;->access$1700(Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$1;->val$isForLockedKnoxContainer:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$1;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;

    iget-object v2, v2, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v2, v2, Lcom/android/systemui/statusbar/BaseStatusBar;->mHeadsUpNotificationView:Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->clear()V

    :cond_0
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$1;->val$isForLockedKnoxContainer:Z

    if-nez v2, :cond_1

    new-instance v2, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$1$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$1$1;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$1;)V

    invoke-static {v2}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$1;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;

    iget-object v2, v2, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget v2, v2, Lcom/android/systemui/statusbar/BaseStatusBar;->mState:I

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$1;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;

    iget-object v2, v2, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    invoke-virtual {v2, v1, v0}, Lcom/android/systemui/statusbar/BaseStatusBar;->animateCollapsePanels(IZ)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$1;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;

    iget-object v2, v2, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->visibilityChanged(Z)V

    :goto_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$1;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;

    # getter for: Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;->mIntent:Landroid/app/PendingIntent;
    invoke-static {v2}, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;->access$1800(Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;)Landroid/app/PendingIntent;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$1;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;

    # getter for: Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;->mIntent:Landroid/app/PendingIntent;
    invoke-static {v2}, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;->access$1800(Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/PendingIntent;->isActivity()Z

    move-result v2

    if-eqz v2, :cond_3

    :goto_2
    return v0

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$1;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;

    iget-object v2, v2, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    # getter for: Lcom/android/systemui/statusbar/BaseStatusBar;->mPm:Landroid/os/PersonaManager;
    invoke-static {v2}, Lcom/android/systemui/statusbar/BaseStatusBar;->access$2000(Lcom/android/systemui/statusbar/BaseStatusBar;)Landroid/os/PersonaManager;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$1;->val$userId:I

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Landroid/os/PersonaManager;->showKeyguard(II)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$1;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;

    iget-object v2, v2, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    # getter for: Lcom/android/systemui/statusbar/BaseStatusBar;->mPm:Landroid/os/PersonaManager;
    invoke-static {v2}, Lcom/android/systemui/statusbar/BaseStatusBar;->access$2000(Lcom/android/systemui/statusbar/BaseStatusBar;)Landroid/os/PersonaManager;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$1;->val$userId:I

    new-instance v4, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$1$2;

    invoke-direct {v4, p0}, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$1$2;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$1;)V

    invoke-virtual {v2, v3, v4}, Landroid/os/PersonaManager;->doWhenUnlock(ILandroid/content/pm/IKnoxUnlockAction;)V

    goto :goto_0

    :cond_2
    const-string v2, "StatusBar"

    const-string v3, "cancels the panel collapse on notification click"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2
.end method
