.class Lcom/android/systemui/statusbar/BaseStatusBar$3;
.super Landroid/widget/RemoteViews$OnClickHandler;
.source "BaseStatusBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/BaseStatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/BaseStatusBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/BaseStatusBar;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/BaseStatusBar$3;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    invoke-direct {p0}, Landroid/widget/RemoteViews$OnClickHandler;-><init>()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/BaseStatusBar$3;Landroid/view/View;Landroid/app/PendingIntent;Landroid/content/Intent;)Z
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/BaseStatusBar$3;->superOnClickHandler(Landroid/view/View;Landroid/app/PendingIntent;Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method private superOnClickHandler(Landroid/view/View;Landroid/app/PendingIntent;Landroid/content/Intent;)Z
    .locals 1

    invoke-super {p0, p1, p2, p3}, Landroid/widget/RemoteViews$OnClickHandler;->onClickHandler(Landroid/view/View;Landroid/app/PendingIntent;Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public onClickHandler(Landroid/view/View;Landroid/app/PendingIntent;Landroid/content/Intent;)Z
    .locals 13

    sget-boolean v0, Lcom/android/systemui/statusbar/BaseStatusBar;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "StatusBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Notification click handler invoked for intent: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p2}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v8

    const-string v0, "StatusBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Notification click intent: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "action = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v10, 0x0

    const-string v0, "com.android.server.telecom.ACTION_CALL_BACK_FROM_NOTIFICATION"

    invoke-virtual {v8}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.android.server.telecom.ACTION_SEND_SMS_FROM_NOTIFICATION"

    invoke-virtual {v8}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_1
    const/4 v10, 0x1

    :goto_0
    invoke-virtual {p2}, Landroid/app/PendingIntent;->isActivity()Z

    move-result v9

    if-nez v9, :cond_2

    if-eqz v10, :cond_c

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar$3;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result v2

    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar$3;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v1

    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar$3;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget v4, v4, Lcom/android/systemui/statusbar/BaseStatusBar;->mCurrentUserId:I

    invoke-static {v0, v1, v4}, Lcom/android/systemui/statusbar/policy/PreviewInflater;->wouldLaunchResolverActivity(Landroid/content/Context;Landroid/content/Intent;I)Z

    move-result v3

    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar$3;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/BaseStatusBar;->isKeyguardState()Z

    move-result v11

    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar$3;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v7, 0x1

    :goto_1
    if-eqz v11, :cond_3

    if-eqz v7, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar$3;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/BaseStatusBar;->isCoveredState()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar$3;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->disableClockAndClear()V

    :cond_3
    iget-object v12, p0, Lcom/android/systemui/statusbar/BaseStatusBar$3;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    new-instance v0, Lcom/android/systemui/statusbar/BaseStatusBar$3$1;

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object/from16 v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/statusbar/BaseStatusBar$3$1;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar$3;ZZLandroid/view/View;Landroid/app/PendingIntent;Landroid/content/Intent;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar$3;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->isInstantDismiss()Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar$3;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget v1, v1, Lcom/android/systemui/statusbar/BaseStatusBar;->mState:I

    const/4 v4, 0x2

    if-ne v1, v4, :cond_9

    :cond_4
    const/4 v1, 0x1

    :goto_2
    const/4 v4, 0x0

    invoke-virtual {v12, v0, v3, v1, v4}, Lcom/android/systemui/statusbar/BaseStatusBar;->dismissKeyguardThenExecute(Lcom/android/keyguard/KeyguardHostView$OnDismissAction;ZZZ)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar$3;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/BaseStatusBar;->isInstantDismiss()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar$3;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/BaseStatusBar;->isCoveredState()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar$3;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/BaseStatusBar;->goToCover()V

    :cond_5
    :goto_3
    const/4 v0, 0x1

    :goto_4
    return v0

    :cond_6
    const/4 v10, 0x0

    goto :goto_0

    :cond_7
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar$3;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar$3;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isQsExpanded()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v7, 0x1

    goto :goto_1

    :cond_8
    const/4 v7, 0x0

    goto :goto_1

    :cond_9
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar$3;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->isBouncerShowing()Z

    move-result v1

    if-nez v1, :cond_4

    :cond_a
    const/4 v1, 0x0

    goto :goto_2

    :cond_b
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar$3;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/BaseStatusBar;->goToKeyguard()V

    goto :goto_3

    :cond_c
    invoke-super/range {p0 .. p3}, Landroid/widget/RemoteViews$OnClickHandler;->onClickHandler(Landroid/view/View;Landroid/app/PendingIntent;Landroid/content/Intent;)Z

    move-result v0

    goto :goto_4
.end method
