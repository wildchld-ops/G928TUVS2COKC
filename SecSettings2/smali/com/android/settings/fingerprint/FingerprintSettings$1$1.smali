.class Lcom/android/settings/fingerprint/FingerprintSettings$1$1;
.super Ljava/lang/Object;
.source "FingerprintSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/fingerprint/FingerprintSettings$1;->onFingerprintEvent(Lcom/samsung/android/fingerprint/FingerprintEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/fingerprint/FingerprintSettings$1;

.field final synthetic val$evt:Lcom/samsung/android/fingerprint/FingerprintEvent;


# direct methods
.method constructor <init>(Lcom/android/settings/fingerprint/FingerprintSettings$1;Lcom/samsung/android/fingerprint/FingerprintEvent;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerprintSettings$1$1;->this$1:Lcom/android/settings/fingerprint/FingerprintSettings$1;

    iput-object p2, p0, Lcom/android/settings/fingerprint/FingerprintSettings$1$1;->val$evt:Lcom/samsung/android/fingerprint/FingerprintEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    const/16 v10, 0x79

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    const-string v4, "FingerprintSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onFingerprintEvent : event="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/fingerprint/FingerprintSettings$1$1;->val$evt:Lcom/samsung/android/fingerprint/FingerprintEvent;

    invoke-virtual {v6}, Lcom/samsung/android/fingerprint/FingerprintEvent;->getEventIdName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/fingerprint/FingerprintSettings$1$1;->val$evt:Lcom/samsung/android/fingerprint/FingerprintEvent;

    invoke-virtual {v6}, Lcom/samsung/android/fingerprint/FingerprintEvent;->getEventResultName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/fingerprint/FingerprintSettings$1$1;->val$evt:Lcom/samsung/android/fingerprint/FingerprintEvent;

    invoke-virtual {v6}, Lcom/samsung/android/fingerprint/FingerprintEvent;->getEventStatusName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings$1$1;->val$evt:Lcom/samsung/android/fingerprint/FingerprintEvent;

    iget v4, v4, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventId:I

    const/16 v5, 0xd

    if-ne v4, v5, :cond_4

    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings$1$1;->val$evt:Lcom/samsung/android/fingerprint/FingerprintEvent;

    iget v4, v4, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventResult:I

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings$1$1;->val$evt:Lcom/samsung/android/fingerprint/FingerprintEvent;

    invoke-virtual {v4}, Lcom/samsung/android/fingerprint/FingerprintEvent;->getFingerIndex()I

    move-result v2

    const-string v4, "FingerprintSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Identify finished: finger Index="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings$1$1;->this$1:Lcom/android/settings/fingerprint/FingerprintSettings$1;

    iget-object v4, v4, Lcom/android/settings/fingerprint/FingerprintSettings$1;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings;

    # invokes: Lcom/android/settings/fingerprint/FingerprintSettings;->updateIdentifiedFinger(ZI)V
    invoke-static {v4, v8, v2}, Lcom/android/settings/fingerprint/FingerprintSettings;->access$000(Lcom/android/settings/fingerprint/FingerprintSettings;ZI)V

    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings$1$1;->this$1:Lcom/android/settings/fingerprint/FingerprintSettings$1;

    iget-object v4, v4, Lcom/android/settings/fingerprint/FingerprintSettings$1;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings;

    # setter for: Lcom/android/settings/fingerprint/FingerprintSettings;->isUpdatedIdentiedFinger:Z
    invoke-static {v4, v8}, Lcom/android/settings/fingerprint/FingerprintSettings;->access$102(Lcom/android/settings/fingerprint/FingerprintSettings;Z)Z

    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings$1$1;->this$1:Lcom/android/settings/fingerprint/FingerprintSettings$1;

    iget-object v4, v4, Lcom/android/settings/fingerprint/FingerprintSettings$1;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings;

    # setter for: Lcom/android/settings/fingerprint/FingerprintSettings;->updatedIdentiedFingerIdx:I
    invoke-static {v4, v2}, Lcom/android/settings/fingerprint/FingerprintSettings;->access$202(Lcom/android/settings/fingerprint/FingerprintSettings;I)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings$1$1;->val$evt:Lcom/samsung/android/fingerprint/FingerprintEvent;

    iget v4, v4, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventStatus:I

    const/4 v5, 0x7

    if-eq v4, v5, :cond_2

    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings$1$1;->val$evt:Lcom/samsung/android/fingerprint/FingerprintEvent;

    iget v4, v4, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventStatus:I

    if-ne v4, v10, :cond_0

    :cond_2
    const v3, 0x7f0a10a2

    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings$1$1;->val$evt:Lcom/samsung/android/fingerprint/FingerprintEvent;

    iget v4, v4, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventStatus:I

    if-ne v4, v10, :cond_3

    const v3, 0x7f0a10a5

    :cond_3
    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings$1$1;->this$1:Lcom/android/settings/fingerprint/FingerprintSettings$1;

    iget-object v4, v4, Lcom/android/settings/fingerprint/FingerprintSettings$1;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings;

    invoke-virtual {v4}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4, v3, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings$1$1;->this$1:Lcom/android/settings/fingerprint/FingerprintSettings$1;

    iget-object v4, v4, Lcom/android/settings/fingerprint/FingerprintSettings$1;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings;

    # invokes: Lcom/android/settings/fingerprint/FingerprintSettings;->finishIdentify()Z
    invoke-static {v4}, Lcom/android/settings/fingerprint/FingerprintSettings;->access$300(Lcom/android/settings/fingerprint/FingerprintSettings;)Z

    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings$1$1;->this$1:Lcom/android/settings/fingerprint/FingerprintSettings$1;

    iget-object v4, v4, Lcom/android/settings/fingerprint/FingerprintSettings$1;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings;

    invoke-virtual {v4}, Lcom/android/settings/fingerprint/FingerprintSettings;->finishFingerprintSettings()V

    goto :goto_0

    :cond_4
    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings$1$1;->val$evt:Lcom/samsung/android/fingerprint/FingerprintEvent;

    iget v4, v4, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventId:I

    const/16 v5, 0x3f3

    if-ne v4, v5, :cond_5

    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings$1$1;->this$1:Lcom/android/settings/fingerprint/FingerprintSettings$1;

    iget-object v4, v4, Lcom/android/settings/fingerprint/FingerprintSettings$1;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings;

    # getter for: Lcom/android/settings/fingerprint/FingerprintSettings;->isUpdatedIdentiedFinger:Z
    invoke-static {v4}, Lcom/android/settings/fingerprint/FingerprintSettings;->access$100(Lcom/android/settings/fingerprint/FingerprintSettings;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings$1$1;->this$1:Lcom/android/settings/fingerprint/FingerprintSettings$1;

    iget-object v4, v4, Lcom/android/settings/fingerprint/FingerprintSettings$1;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings;

    iget-object v5, p0, Lcom/android/settings/fingerprint/FingerprintSettings$1$1;->this$1:Lcom/android/settings/fingerprint/FingerprintSettings$1;

    iget-object v5, v5, Lcom/android/settings/fingerprint/FingerprintSettings$1;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings;

    # getter for: Lcom/android/settings/fingerprint/FingerprintSettings;->updatedIdentiedFingerIdx:I
    invoke-static {v5}, Lcom/android/settings/fingerprint/FingerprintSettings;->access$200(Lcom/android/settings/fingerprint/FingerprintSettings;)I

    move-result v5

    # invokes: Lcom/android/settings/fingerprint/FingerprintSettings;->updateIdentifiedFinger(ZI)V
    invoke-static {v4, v7, v5}, Lcom/android/settings/fingerprint/FingerprintSettings;->access$000(Lcom/android/settings/fingerprint/FingerprintSettings;ZI)V

    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings$1$1;->this$1:Lcom/android/settings/fingerprint/FingerprintSettings$1;

    iget-object v4, v4, Lcom/android/settings/fingerprint/FingerprintSettings$1;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings;

    # setter for: Lcom/android/settings/fingerprint/FingerprintSettings;->isUpdatedIdentiedFinger:Z
    invoke-static {v4, v7}, Lcom/android/settings/fingerprint/FingerprintSettings;->access$102(Lcom/android/settings/fingerprint/FingerprintSettings;Z)Z

    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings$1$1;->this$1:Lcom/android/settings/fingerprint/FingerprintSettings$1;

    iget-object v4, v4, Lcom/android/settings/fingerprint/FingerprintSettings$1;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings;

    # setter for: Lcom/android/settings/fingerprint/FingerprintSettings;->updatedIdentiedFingerIdx:I
    invoke-static {v4, v7}, Lcom/android/settings/fingerprint/FingerprintSettings;->access$202(Lcom/android/settings/fingerprint/FingerprintSettings;I)I

    goto :goto_0

    :cond_5
    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings$1$1;->val$evt:Lcom/samsung/android/fingerprint/FingerprintEvent;

    iget v4, v4, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventId:I

    const/16 v5, 0x10

    if-ne v4, v5, :cond_6

    # getter for: Lcom/android/settings/fingerprint/FingerprintSettings;->mFingerRegisterMode:I
    invoke-static {}, Lcom/android/settings/fingerprint/FingerprintSettings;->access$400()I

    move-result v4

    if-ne v4, v8, :cond_0

    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings$1$1;->this$1:Lcom/android/settings/fingerprint/FingerprintSettings$1;

    iget-object v4, v4, Lcom/android/settings/fingerprint/FingerprintSettings$1;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings;

    # invokes: Lcom/android/settings/fingerprint/FingerprintSettings;->startidentify()Z
    invoke-static {v4}, Lcom/android/settings/fingerprint/FingerprintSettings;->access$500(Lcom/android/settings/fingerprint/FingerprintSettings;)Z

    goto :goto_0

    :cond_6
    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings$1$1;->val$evt:Lcom/samsung/android/fingerprint/FingerprintEvent;

    iget v4, v4, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventId:I

    const/16 v5, 0xc

    if-ne v4, v5, :cond_7

    # getter for: Lcom/android/settings/fingerprint/FingerprintSettings;->isEnableSurveyMode:Z
    invoke-static {}, Lcom/android/settings/fingerprint/FingerprintSettings;->access$600()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "FingerprintSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "insertSurveyLog: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    # getter for: Lcom/android/settings/fingerprint/FingerprintSettings;->isEnableSurveyMode:Z
    invoke-static {}, Lcom/android/settings/fingerprint/FingerprintSettings;->access$600()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", FPLI"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "app_id"

    const-string v5, "com.samsung.android.fingerprint.service"

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "feature"

    const-string v5, "FPLI"

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v4, "com.samsung.android.providers.context.log.action.USE_APP_FEATURE_SURVEY"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "data"

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v4, "com.samsung.android.providers.context"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings$1$1;->this$1:Lcom/android/settings/fingerprint/FingerprintSettings$1;

    iget-object v4, v4, Lcom/android/settings/fingerprint/FingerprintSettings$1;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings;

    invoke-virtual {v4}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings$1$1;->this$1:Lcom/android/settings/fingerprint/FingerprintSettings$1;

    iget-object v4, v4, Lcom/android/settings/fingerprint/FingerprintSettings$1;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings;

    invoke-virtual {v4}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_7
    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings$1$1;->val$evt:Lcom/samsung/android/fingerprint/FingerprintEvent;

    iget v4, v4, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventId:I

    const v5, 0x186a0

    if-ne v4, v5, :cond_0

    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings$1$1;->this$1:Lcom/android/settings/fingerprint/FingerprintSettings$1;

    iget-object v4, v4, Lcom/android/settings/fingerprint/FingerprintSettings$1;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings;

    invoke-virtual {v4}, Lcom/android/settings/fingerprint/FingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f0a10a2

    invoke-static {v4, v5, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings$1$1;->this$1:Lcom/android/settings/fingerprint/FingerprintSettings$1;

    iget-object v4, v4, Lcom/android/settings/fingerprint/FingerprintSettings$1;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings;

    invoke-virtual {v4}, Lcom/android/settings/fingerprint/FingerprintSettings;->finishFingerprintSettings()V

    goto/16 :goto_0
.end method
