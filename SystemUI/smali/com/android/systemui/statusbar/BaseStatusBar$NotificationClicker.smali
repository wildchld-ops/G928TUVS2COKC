.class public Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;
.super Ljava/lang/Object;
.source "BaseStatusBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/BaseStatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "NotificationClicker"
.end annotation


# instance fields
.field private mIntent:Landroid/app/PendingIntent;

.field private mIsHeadsUp:Z

.field private final mNotificationKey:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/systemui/statusbar/BaseStatusBar;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/BaseStatusBar;Landroid/app/PendingIntent;Ljava/lang/String;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;->mIntent:Landroid/app/PendingIntent;

    iput-object p3, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;->mNotificationKey:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;->mIsHeadsUp:Z

    return-void
.end method

.method static synthetic access$1700(Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;->mIsHeadsUp:Z

    return v0
.end method

.method static synthetic access$1800(Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;)Landroid/app/PendingIntent;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;->mIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;->mNotificationKey:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 11

    const/4 v0, 0x1

    const/4 v8, 0x0

    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;->mIntent:Landroid/app/PendingIntent;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    const-string v9, "CLICKNOTIFICATION"

    iget-object v10, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;->mIntent:Landroid/app/PendingIntent;

    invoke-virtual {v10}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v9, v10}, Lcom/android/systemui/statusbar/BaseStatusBar;->sendDiagnosticLogs(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v1, v1, Lcom/android/systemui/statusbar/BaseStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result v3

    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;->mIntent:Landroid/app/PendingIntent;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;->mIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1}, Landroid/app/PendingIntent;->isActivity()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v1, v1, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;->mIntent:Landroid/app/PendingIntent;

    invoke-virtual {v9}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v9

    iget-object v10, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget v10, v10, Lcom/android/systemui/statusbar/BaseStatusBar;->mCurrentUserId:I

    invoke-static {v1, v9, v10}, Lcom/android/systemui/statusbar/policy/PreviewInflater;->wouldLaunchResolverActivity(Landroid/content/Context;Landroid/content/Intent;I)Z

    move-result v1

    if-eqz v1, :cond_3

    move v4, v0

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;->mIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1}, Landroid/app/PendingIntent;->getCreatorUid()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;->mIntent:Landroid/app/PendingIntent;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    # invokes: Lcom/android/systemui/statusbar/BaseStatusBar;->knoxContainerInLockMode(I)Z
    invoke-static {v1, v5}, Lcom/android/systemui/statusbar/BaseStatusBar;->access$1600(Lcom/android/systemui/statusbar/BaseStatusBar;I)Z

    move-result v1

    if-eqz v1, :cond_4

    move v2, v0

    :goto_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->isInstantDismiss()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->isCoveredState()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->goToKeyguard()V

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->isKeyguardState()Z

    move-result v7

    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v1, v1, Lcom/android/systemui/statusbar/BaseStatusBar;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v1

    if-eqz v1, :cond_5

    move v6, v0

    :goto_2
    if-eqz v7, :cond_2

    if-eqz v6, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/BaseStatusBar;->isCoveredState()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->disableClockAndClear()V

    :cond_2
    iget-object v9, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    new-instance v0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$1;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$1;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;ZZZI)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->isInstantDismiss()Z

    move-result v1

    invoke-virtual {v9, v0, v4, v1, v8}, Lcom/android/systemui/statusbar/BaseStatusBar;->dismissKeyguardThenExecute(Lcom/android/keyguard/KeyguardHostView$OnDismissAction;ZZZ)V

    return-void

    :cond_3
    move v4, v8

    goto :goto_0

    :cond_4
    move v2, v8

    goto :goto_1

    :cond_5
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v1, v1, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v1, v1, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isQsExpanded()Z

    move-result v1

    if-nez v1, :cond_6

    move v6, v0

    goto :goto_2

    :cond_6
    move v6, v8

    goto :goto_2
.end method
