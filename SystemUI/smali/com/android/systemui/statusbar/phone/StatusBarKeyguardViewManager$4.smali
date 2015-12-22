.class Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$4;
.super Ljava/lang/Object;
.source "StatusBarKeyguardViewManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->callbackAfterDraw(Lcom/android/internal/policy/IKeyguardShowCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

.field final synthetic val$callback:Lcom/android/internal/policy/IKeyguardShowCallback;

.field final synthetic val$isBootCompleted:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;Lcom/android/internal/policy/IKeyguardShowCallback;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$4;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$4;->val$callback:Lcom/android/internal/policy/IKeyguardShowCallback;

    iput-boolean p3, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$4;->val$isBootCompleted:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    const-string v1, "PERF"

    const-string v2, "StatusBarKeyguardViewManager - callbackAfterDraw"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$4;->val$callback:Lcom/android/internal/policy/IKeyguardShowCallback;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$4;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    # getter for: Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mContainer:Landroid/view/ViewGroup;
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->access$800(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/policy/IKeyguardShowCallback;->onShown(Landroid/os/IBinder;)V

    const-string v1, "keyguard_profile"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    # getter for: Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "callbackAfterDraw / stopMethodTracing"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Debug;->stopMethodTracing()V

    :cond_0
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$4;->val$isBootCompleted:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    # getter for: Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "callback.onShown()"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$4;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    # getter for: Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->access$400(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;)Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->makeStatusBarViewLater()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    # getter for: Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Exception calling onShown():"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
