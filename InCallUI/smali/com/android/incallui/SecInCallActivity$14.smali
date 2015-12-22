.class Lcom/android/incallui/SecInCallActivity$14;
.super Landroid/database/ContentObserver;
.source "SecInCallActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/SecInCallActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/SecInCallActivity;


# direct methods
.method constructor <init>(Lcom/android/incallui/SecInCallActivity;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/SecInCallActivity$14;->this$0:Lcom/android/incallui/SecInCallActivity;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isSupportRotation()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecInCallActivity$14;->this$0:Lcom/android/incallui/SecInCallActivity;

    invoke-virtual {v0}, Lcom/android/incallui/SecInCallActivity;->checkAndControlWindowRoation()V

    :cond_0
    return-void
.end method
