.class Lcom/android/server/display/AutomaticBrightnessController$SettingsObserver$1;
.super Ljava/lang/Object;
.source "AutomaticBrightnessController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/AutomaticBrightnessController$SettingsObserver;->onChange(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/display/AutomaticBrightnessController$SettingsObserver;


# direct methods
.method constructor <init>(Lcom/android/server/display/AutomaticBrightnessController$SettingsObserver;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/display/AutomaticBrightnessController$SettingsObserver$1;->this$1:Lcom/android/server/display/AutomaticBrightnessController$SettingsObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController$SettingsObserver$1;->this$1:Lcom/android/server/display/AutomaticBrightnessController$SettingsObserver;

    iget-object v0, v0, Lcom/android/server/display/AutomaticBrightnessController$SettingsObserver;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    # getter for: Lcom/android/server/display/AutomaticBrightnessController;->mLockPAB:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/display/AutomaticBrightnessController;->access$000(Lcom/android/server/display/AutomaticBrightnessController;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController$SettingsObserver$1;->this$1:Lcom/android/server/display/AutomaticBrightnessController$SettingsObserver;

    iget-object v0, v0, Lcom/android/server/display/AutomaticBrightnessController$SettingsObserver;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    # invokes: Lcom/android/server/display/AutomaticBrightnessController;->updatePrivateScreenAutoBrightnessTableLocked()V
    invoke-static {v0}, Lcom/android/server/display/AutomaticBrightnessController;->access$100(Lcom/android/server/display/AutomaticBrightnessController;)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController$SettingsObserver$1;->this$1:Lcom/android/server/display/AutomaticBrightnessController$SettingsObserver;

    iget-object v0, v0, Lcom/android/server/display/AutomaticBrightnessController$SettingsObserver;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    const/4 v1, 0x1

    # invokes: Lcom/android/server/display/AutomaticBrightnessController;->updateAutoBrightnessSEC(Z)V
    invoke-static {v0, v1}, Lcom/android/server/display/AutomaticBrightnessController;->access$200(Lcom/android/server/display/AutomaticBrightnessController;Z)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
