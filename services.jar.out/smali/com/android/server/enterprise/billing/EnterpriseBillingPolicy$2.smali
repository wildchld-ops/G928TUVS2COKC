.class Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy$2;
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

    iput-object p1, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy$2;->this$0:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    const-string v7, "enterprise.container.admin.changed"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v6, "EnterpriseBillingPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "changeContainerOwnerReceiver - onreceive - start - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "android.intent.extra.UID"

    const/4 v7, -0x1

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    const-string v6, "EnterpriseBillingPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "changeContainerOwnerReceiver - uid value "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy$2;->this$0:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->ebpHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;
    invoke-static {v6}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->access$100(Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;)Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->getCurrentActiveProfiles()[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    const-string v6, "EnterpriseBillingPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "- changeContainerOwnerReceiver - profiles not null  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    array-length v8, v4

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v4

    array-length v2, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    const-string v6, "EnterpriseBillingPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "- changeContainerOwnerReceiver - profileName  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy$2;->this$0:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->ebpHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;
    invoke-static {v6}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->access$100(Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;)Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    move-result-object v6

    invoke-virtual {v6, v3, v5}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->isProfileValidForAnAdmin(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy$2;->this$0:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->deactivateEnterpriseBilling(Ljava/lang/String;)V
    invoke-static {v6, v3}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->access$400(Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy$2;->this$0:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->ebpHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;
    invoke-static {v6}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->access$100(Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;)Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->removeProfile(Ljava/lang/String;)I

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
