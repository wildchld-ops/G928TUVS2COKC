.class Lcom/android/systemui/statusbar/BaseStatusBar$11;
.super Ljava/lang/Object;
.source "BaseStatusBar.java"

# interfaces
.implements Lcom/android/systemui/SwipeHelper$LongPressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/BaseStatusBar;->getNotificationLongClicker()Lcom/android/systemui/SwipeHelper$LongPressListener;
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

    iput-object p1, p0, Lcom/android/systemui/statusbar/BaseStatusBar$11;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongPress(Landroid/view/View;II)Z
    .locals 18

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/BaseStatusBar$11;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    invoke-virtual {v13}, Lcom/android/systemui/statusbar/BaseStatusBar;->dismissPopups()V

    move-object/from16 v0, p1

    instance-of v13, v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-nez v13, :cond_0

    const/4 v13, 0x0

    :goto_0
    return v13

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v13

    if-nez v13, :cond_1

    const-string v13, "StatusBar"

    const-string v16, "Trying to show notification guts, but not attached to window"

    move-object/from16 v0, v16

    invoke-static {v13, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v13, 0x0

    goto :goto_0

    :cond_1
    sget-boolean v13, Lcom/android/systemui/statusbar/Feature;->mLongPressBlockNotification:Z

    if-eqz v13, :cond_4

    move-object/from16 v13, p1

    check-cast v13, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v13}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/BaseStatusBar$11;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    invoke-virtual {v12}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v13, v0}, Lcom/android/systemui/statusbar/BaseStatusBar;->getPackageManagerForUser(I)Landroid/content/pm/PackageManager;

    move-result-object v10

    invoke-virtual {v12}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v12}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v9

    move-object v4, v9

    const/4 v3, -0x1

    const/16 v13, 0x2200

    :try_start_0
    invoke-virtual {v10, v9, v13}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v8

    if-eqz v8, :cond_2

    invoke-virtual {v10, v8}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iget v3, v8, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/BaseStatusBar$11;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget v13, v13, Lcom/android/systemui/statusbar/BaseStatusBar;->mState:I

    if-eqz v13, :cond_3

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/BaseStatusBar$11;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v13, v13, Lcom/android/systemui/statusbar/BaseStatusBar;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    if-eqz v13, :cond_3

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/BaseStatusBar$11;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v13, v13, Lcom/android/systemui/statusbar/BaseStatusBar;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v13}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v13

    if-eqz v13, :cond_3

    check-cast p1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->resetBackground()V

    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/BaseStatusBar$11;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    # invokes: Lcom/android/systemui/statusbar/BaseStatusBar;->startAppNotificationSettingsActivity(Ljava/lang/String;I)V
    invoke-static {v13, v9, v3}, Lcom/android/systemui/statusbar/BaseStatusBar;->access$1000(Lcom/android/systemui/statusbar/BaseStatusBar;Ljava/lang/String;I)V

    :goto_2
    const/4 v13, 0x1

    goto :goto_0

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar$11;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    move-object/from16 v16, v0

    move-object/from16 v13, p1

    check-cast v13, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v0, v16

    # invokes: Lcom/android/systemui/statusbar/BaseStatusBar;->inflateGuts(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    invoke-static {v0, v13}, Lcom/android/systemui/statusbar/BaseStatusBar;->access$1200(Lcom/android/systemui/statusbar/BaseStatusBar;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    const v13, 0x7f0e0250

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/NotificationGuts;

    if-nez v5, :cond_5

    const/4 v13, 0x0

    goto/16 :goto_0

    :cond_5
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/NotificationGuts;->getVisibility()I

    move-result v13

    if-nez v13, :cond_6

    const-string v13, "StatusBar"

    const-string v16, "Trying to show notification guts, but already visible"

    move-object/from16 v0, v16

    invoke-static {v13, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v13, 0x0

    goto/16 :goto_0

    :cond_6
    const/4 v13, 0x0

    invoke-virtual {v5, v13}, Lcom/android/systemui/statusbar/NotificationGuts;->setVisibility(I)V

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/NotificationGuts;->getWidth()I

    move-result v13

    sub-int v13, v13, p2

    move/from16 v0, p2

    invoke-static {v13, v0}, Ljava/lang/Math;->max(II)I

    move-result v13

    int-to-double v6, v13

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/NotificationGuts;->getActualHeight()I

    move-result v13

    sub-int v13, v13, p3

    move/from16 v0, p3

    invoke-static {v13, v0}, Ljava/lang/Math;->max(II)I

    move-result v13

    int-to-double v14, v13

    invoke-static {v6, v7, v14, v15}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v16

    move-wide/from16 v0, v16

    double-to-float v11, v0

    const/4 v13, 0x0

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-static {v5, v0, v1, v13, v11}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object v2

    const-wide/16 v16, 0x190

    move-wide/from16 v0, v16

    invoke-virtual {v2, v0, v1}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/BaseStatusBar$11;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    # getter for: Lcom/android/systemui/statusbar/BaseStatusBar;->mLinearOutSlowIn:Landroid/animation/TimeInterpolator;
    invoke-static {v13}, Lcom/android/systemui/statusbar/BaseStatusBar;->access$1300(Lcom/android/systemui/statusbar/BaseStatusBar;)Landroid/animation/TimeInterpolator;

    move-result-object v13

    invoke-virtual {v2, v13}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v2}, Landroid/animation/Animator;->start()V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/BaseStatusBar$11;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    # setter for: Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationGutsExposed:Lcom/android/systemui/statusbar/NotificationGuts;
    invoke-static {v13, v5}, Lcom/android/systemui/statusbar/BaseStatusBar;->access$1402(Lcom/android/systemui/statusbar/BaseStatusBar;Lcom/android/systemui/statusbar/NotificationGuts;)Lcom/android/systemui/statusbar/NotificationGuts;

    goto :goto_2

    :catch_0
    move-exception v13

    goto/16 :goto_1
.end method
