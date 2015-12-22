.class Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView$2;
.super Landroid/database/ContentObserver;
.source "HeadsUpNotificationView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView$2;->this$0:Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4

    const/4 v3, -0x1

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView$2;->this$0:Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;

    # getter for: Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->access$000(Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "heads_up_snooze_length_ms"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-le v0, v3, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView$2;->this$0:Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;

    # getter for: Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mSnoozeLengthMs:I
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->access$100(Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;)I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView$2;->this$0:Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;

    # setter for: Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->mSnoozeLengthMs:I
    invoke-static {v1, v0}, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->access$102(Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;I)I

    :cond_0
    return-void
.end method
