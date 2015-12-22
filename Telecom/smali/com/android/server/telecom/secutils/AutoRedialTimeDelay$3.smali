.class Lcom/android/server/telecom/secutils/AutoRedialTimeDelay$3;
.super Ljava/lang/Object;
.source "AutoRedialTimeDelay.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/telecom/secutils/AutoRedialTimeDelay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/telecom/secutils/AutoRedialTimeDelay;


# direct methods
.method constructor <init>(Lcom/android/server/telecom/secutils/AutoRedialTimeDelay;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/telecom/secutils/AutoRedialTimeDelay$3;->this$0:Lcom/android/server/telecom/secutils/AutoRedialTimeDelay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/telecom/secutils/AutoRedialTimeDelay$3;->this$0:Lcom/android/server/telecom/secutils/AutoRedialTimeDelay;

    # getter for: Lcom/android/server/telecom/secutils/AutoRedialTimeDelay;->mRedialProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/server/telecom/secutils/AutoRedialTimeDelay;->access$200(Lcom/android/server/telecom/secutils/AutoRedialTimeDelay;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/telecom/secutils/AutoRedialTimeDelay$3;->this$0:Lcom/android/server/telecom/secutils/AutoRedialTimeDelay;

    # getter for: Lcom/android/server/telecom/secutils/AutoRedialTimeDelay;->mRedialProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/server/telecom/secutils/AutoRedialTimeDelay;->access$200(Lcom/android/server/telecom/secutils/AutoRedialTimeDelay;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_0
    iget-object v0, p0, Lcom/android/server/telecom/secutils/AutoRedialTimeDelay$3;->this$0:Lcom/android/server/telecom/secutils/AutoRedialTimeDelay;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/telecom/secutils/AutoRedialTimeDelay;->mRedialProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0, v1}, Lcom/android/server/telecom/secutils/AutoRedialTimeDelay;->access$202(Lcom/android/server/telecom/secutils/AutoRedialTimeDelay;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/android/server/telecom/secutils/AutoRedialTimeDelay$3;->this$0:Lcom/android/server/telecom/secutils/AutoRedialTimeDelay;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/telecom/secutils/AutoRedialTimeDelay;->mRedialCount:I
    invoke-static {v0, v1}, Lcom/android/server/telecom/secutils/AutoRedialTimeDelay;->access$302(Lcom/android/server/telecom/secutils/AutoRedialTimeDelay;I)I

    iget-object v0, p0, Lcom/android/server/telecom/secutils/AutoRedialTimeDelay$3;->this$0:Lcom/android/server/telecom/secutils/AutoRedialTimeDelay;

    # getter for: Lcom/android/server/telecom/secutils/AutoRedialTimeDelay;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/telecom/secutils/AutoRedialTimeDelay;->access$000(Lcom/android/server/telecom/secutils/AutoRedialTimeDelay;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x63

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/telecom/secutils/AutoRedialTimeDelay$3;->this$0:Lcom/android/server/telecom/secutils/AutoRedialTimeDelay;

    # getter for: Lcom/android/server/telecom/secutils/AutoRedialTimeDelay;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static {v0}, Lcom/android/server/telecom/secutils/AutoRedialTimeDelay;->access$400(Lcom/android/server/telecom/secutils/AutoRedialTimeDelay;)Landroid/app/AlarmManager;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/telecom/secutils/AutoRedialTimeDelay$3;->this$0:Lcom/android/server/telecom/secutils/AutoRedialTimeDelay;

    # getter for: Lcom/android/server/telecom/secutils/AutoRedialTimeDelay;->mPendingIntent:Landroid/app/PendingIntent;
    invoke-static {v0}, Lcom/android/server/telecom/secutils/AutoRedialTimeDelay;->access$500(Lcom/android/server/telecom/secutils/AutoRedialTimeDelay;)Landroid/app/PendingIntent;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/telecom/secutils/AutoRedialTimeDelay$3;->this$0:Lcom/android/server/telecom/secutils/AutoRedialTimeDelay;

    # getter for: Lcom/android/server/telecom/secutils/AutoRedialTimeDelay;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static {v0}, Lcom/android/server/telecom/secutils/AutoRedialTimeDelay;->access$400(Lcom/android/server/telecom/secutils/AutoRedialTimeDelay;)Landroid/app/AlarmManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/telecom/secutils/AutoRedialTimeDelay$3;->this$0:Lcom/android/server/telecom/secutils/AutoRedialTimeDelay;

    # getter for: Lcom/android/server/telecom/secutils/AutoRedialTimeDelay;->mPendingIntent:Landroid/app/PendingIntent;
    invoke-static {v1}, Lcom/android/server/telecom/secutils/AutoRedialTimeDelay;->access$500(Lcom/android/server/telecom/secutils/AutoRedialTimeDelay;)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    :cond_1
    return-void
.end method
