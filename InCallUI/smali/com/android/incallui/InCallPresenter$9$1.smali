.class Lcom/android/incallui/InCallPresenter$9$1;
.super Ljava/lang/Object;
.source "InCallPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/InCallPresenter$9;->onForegroundActivitiesChanged(IIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/incallui/InCallPresenter$9;

.field final synthetic val$foregroundActivities:Z

.field final synthetic val$pid:I

.field final synthetic val$uid:I


# direct methods
.method constructor <init>(Lcom/android/incallui/InCallPresenter$9;ZII)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/InCallPresenter$9$1;->this$1:Lcom/android/incallui/InCallPresenter$9;

    iput-boolean p2, p0, Lcom/android/incallui/InCallPresenter$9$1;->val$foregroundActivities:Z

    iput p3, p0, Lcom/android/incallui/InCallPresenter$9$1;->val$pid:I

    iput p4, p0, Lcom/android/incallui/InCallPresenter$9$1;->val$uid:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-boolean v1, p0, Lcom/android/incallui/InCallPresenter$9$1;->val$foregroundActivities:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/InCallPresenter$9$1;->this$1:Lcom/android/incallui/InCallPresenter$9;

    iget-object v1, v1, Lcom/android/incallui/InCallPresenter$9;->this$0:Lcom/android/incallui/InCallPresenter;

    # getter for: Lcom/android/incallui/InCallPresenter;->mShowedMobileNetworkPopup:Z
    invoke-static {v1}, Lcom/android/incallui/InCallPresenter;->access$1400(Lcom/android/incallui/InCallPresenter;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/InCallPresenter$9$1;->this$1:Lcom/android/incallui/InCallPresenter$9;

    iget-object v1, v1, Lcom/android/incallui/InCallPresenter$9;->this$0:Lcom/android/incallui/InCallPresenter;

    iget v2, p0, Lcom/android/incallui/InCallPresenter$9$1;->val$pid:I

    # invokes: Lcom/android/incallui/InCallPresenter;->getAppName(I)Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/android/incallui/InCallPresenter;->access$1500(Lcom/android/incallui/InCallPresenter;I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MobileNetworkPopup - packageName : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    const-string v1, "com.android.incallui"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "com.android.contacts"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "com.sec.android.app.launcher"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "com.android.settings"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/InCallPresenter$9$1;->this$1:Lcom/android/incallui/InCallPresenter$9;

    iget-object v1, v1, Lcom/android/incallui/InCallPresenter$9;->this$0:Lcom/android/incallui/InCallPresenter;

    iget v2, p0, Lcom/android/incallui/InCallPresenter$9$1;->val$pid:I

    iget v3, p0, Lcom/android/incallui/InCallPresenter$9$1;->val$uid:I

    # invokes: Lcom/android/incallui/InCallPresenter;->checkPermissionAndSendIntent(II)V
    invoke-static {v1, v2, v3}, Lcom/android/incallui/InCallPresenter;->access$1600(Lcom/android/incallui/InCallPresenter;II)V

    :cond_0
    return-void
.end method
