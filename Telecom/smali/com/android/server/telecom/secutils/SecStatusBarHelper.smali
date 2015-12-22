.class public Lcom/android/server/telecom/secutils/SecStatusBarHelper;
.super Ljava/lang/Object;
.source "SecStatusBarHelper.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mIsExpandedViewEnabled:Z

.field private mIsNotificationEnabled:Z

.field private mIsSystemBarNavigationEnabled:Z

.field private mStatusBarManager:Landroid/app/StatusBarManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/StatusBarManager;)V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "SecStatusBarHelper"

    iput-object v0, p0, Lcom/android/server/telecom/secutils/SecStatusBarHelper;->TAG:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/android/server/telecom/secutils/SecStatusBarHelper;->mIsNotificationEnabled:Z

    iput-boolean v1, p0, Lcom/android/server/telecom/secutils/SecStatusBarHelper;->mIsExpandedViewEnabled:Z

    iput-boolean v1, p0, Lcom/android/server/telecom/secutils/SecStatusBarHelper;->mIsSystemBarNavigationEnabled:Z

    iput-object p1, p0, Lcom/android/server/telecom/secutils/SecStatusBarHelper;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/telecom/secutils/SecStatusBarHelper;->mStatusBarManager:Landroid/app/StatusBarManager;

    return-void
.end method

.method private updateStatusBar()V
    .locals 5

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecStatusBarHelper;->mContext:Landroid/content/Context;

    const-string v2, "activity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    if-eqz v0, :cond_0

    const-string v2, "SecStatusBarHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateStatusBar: currentUserId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", not update statusbar"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v0, v1}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/telecom/secutils/SecStatusBarHelper;->mIsExpandedViewEnabled:Z

    if-nez v0, :cond_3

    const/high16 v0, 0x10000

    :goto_1
    iget-boolean v2, p0, Lcom/android/server/telecom/secutils/SecStatusBarHelper;->mIsNotificationEnabled:Z

    if-nez v2, :cond_1

    const/high16 v2, 0x40000

    or-int/2addr v0, v2

    :cond_1
    iget-boolean v2, p0, Lcom/android/server/telecom/secutils/SecStatusBarHelper;->mIsSystemBarNavigationEnabled:Z

    if-nez v2, :cond_2

    const/high16 v2, 0x200000

    or-int/2addr v0, v2

    const/high16 v2, 0x1000000

    or-int/2addr v0, v2

    const/high16 v2, 0x400000

    or-int/2addr v0, v2

    const/high16 v2, 0x2000000

    or-int/2addr v0, v2

    :cond_2
    const-string v2, "SecStatusBarHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateStatusBar: state = 0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v1}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/server/telecom/secutils/SecStatusBarHelper;->mStatusBarManager:Landroid/app/StatusBarManager;

    invoke-virtual {v1, v0}, Landroid/app/StatusBarManager;->disable(I)V

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method


# virtual methods
.method public enableNotificationAlerts(Z)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/server/telecom/secutils/SecStatusBarHelper;->mIsNotificationEnabled:Z

    if-eq v0, p1, :cond_0

    const-string v0, "SecStatusBarHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableNotificationAlerts = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-boolean p1, p0, Lcom/android/server/telecom/secutils/SecStatusBarHelper;->mIsNotificationEnabled:Z

    invoke-direct {p0}, Lcom/android/server/telecom/secutils/SecStatusBarHelper;->updateStatusBar()V

    :cond_0
    return-void
.end method
