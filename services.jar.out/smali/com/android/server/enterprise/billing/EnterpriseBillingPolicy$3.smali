.class Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy$3;
.super Landroid/content/BroadcastReceiver;
.source "EnterpriseBillingPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy$3;->this$0:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11

    const-string v8, "EnterpriseBillingPolicy"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "containerModificationReceiver - onreceive - start - "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v8, "android.intent.extra.user_handle"

    const/16 v9, -0x2710

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const/16 v8, 0x64

    if-lt v1, v8, :cond_3

    const-string v8, "EnterpriseBillingPolicy"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "containerModificationReceiver - onreceive - containerId - "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy$3;->this$0:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->ebpHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;
    invoke-static {v8}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->access$100(Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;)Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    move-result-object v8

    invoke-virtual {v8, v1}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->getProfileForContainer(I)Lcom/sec/enterprise/knox/billing/EnterpriseBillingProfile;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v8, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy$3;->this$0:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->ebpHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;
    invoke-static {v8}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->access$100(Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;)Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    move-result-object v8

    invoke-virtual {v4}, Lcom/sec/enterprise/knox/billing/EnterpriseBillingProfile;->getProfileName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->hasMappings(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    const-string v8, "EnterpriseBillingPolicy"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "containerModificationReceiver - onreceive - removing - "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy$3;->this$0:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->ebpHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;
    invoke-static {v8}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->access$100(Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;)Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    move-result-object v8

    invoke-virtual {v8, v1}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->removeContainerFromProfile(I)I

    move-result v7

    const-string v8, "EnterpriseBillingPolicy"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "containerModificationReceiver - onreceive - removed - ebphelper - "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-lez v7, :cond_0

    iget-object v8, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy$3;->this$0:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->ebEngine:Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;
    invoke-static {v8}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->access$200(Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;)Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;

    move-result-object v8

    invoke-virtual {v4}, Lcom/sec/enterprise/knox/billing/EnterpriseBillingProfile;->getProfileName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;->disableApplicationOrContainer(Ljava/lang/String;)Z

    move-result v6

    const-string v8, "EnterpriseBillingPolicy"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "containerModificationReceiver - onreceive - removed - ebpengine- "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v6, :cond_0

    iget-object v8, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy$3;->this$0:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->ebpHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;
    invoke-static {v8}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->access$100(Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;)Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->isProfileAlreadyMapped()Z

    move-result v8

    if-nez v8, :cond_0

    iget-object v8, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy$3;->this$0:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;

    invoke-virtual {v4}, Lcom/sec/enterprise/knox/billing/EnterpriseBillingProfile;->getProfileName()Ljava/lang/String;

    move-result-object v9

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->deactivateSplitBillingIfLastTime(Ljava/lang/String;)V
    invoke-static {v8, v9}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->access$300(Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;Ljava/lang/String;)V

    :cond_0
    const-string v8, "EnterpriseBillingPolicy"

    const-string v9, "containerModificationReceiver - onreceive - removed - "

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const-string v8, "EnterpriseBillingPolicy"

    const-string v9, "containerModificationReceiver - onreceive - perApp container check start - "

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy$3;->this$0:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->ebpHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;
    invoke-static {v8}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->access$100(Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;)Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    move-result-object v8

    invoke-virtual {v8, v1}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->getPerAppsForContainer(I)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_3

    const-string v8, "EnterpriseBillingPolicy"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "containerModificationReceiver - onreceive - perApp - removing container  - "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v8, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy$3;->this$0:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->ebpHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;
    invoke-static {v8}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->access$100(Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;)Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    move-result-object v8

    invoke-virtual {v8, v2, v1}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->getProfileForApplication(Ljava/lang/String;I)Lcom/sec/enterprise/knox/billing/EnterpriseBillingProfile;

    move-result-object v5

    iget-object v8, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy$3;->this$0:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->ebpHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;
    invoke-static {v8}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->access$100(Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;)Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    move-result-object v8

    invoke-virtual {v8, v2, v1}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->removeApplicationFromProfile(Ljava/lang/String;I)I

    move-result v7

    if-lez v7, :cond_2

    if-eqz v5, :cond_2

    iget-object v8, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy$3;->this$0:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->ebEngine:Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;
    invoke-static {v8}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->access$200(Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;)Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;

    move-result-object v8

    invoke-virtual {v5}, Lcom/sec/enterprise/knox/billing/EnterpriseBillingProfile;->getProfileName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;->disableApplicationOrContainer(Ljava/lang/String;)Z

    move-result v6

    const-string v8, "EnterpriseBillingPolicy"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "containerModificationReceiver - onreceive -perApp - removed - ebengine- "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v6, :cond_2

    iget-object v8, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy$3;->this$0:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->ebpHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;
    invoke-static {v8}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->access$100(Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;)Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->isProfileAlreadyMapped()Z

    move-result v8

    if-nez v8, :cond_2

    iget-object v8, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy$3;->this$0:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;

    invoke-virtual {v5}, Lcom/sec/enterprise/knox/billing/EnterpriseBillingProfile;->getProfileName()Ljava/lang/String;

    move-result-object v9

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->deactivateSplitBillingIfLastTime(Ljava/lang/String;)V
    invoke-static {v8, v9}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->access$300(Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    return-void
.end method
