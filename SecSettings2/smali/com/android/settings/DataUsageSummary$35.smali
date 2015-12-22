.class Lcom/android/settings/DataUsageSummary$35;
.super Landroid/content/BroadcastReceiver;
.source "DataUsageSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/DataUsageSummary;


# direct methods
.method constructor <init>(Lcom/android/settings/DataUsageSummary;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/DataUsageSummary$35;->this$0:Lcom/android/settings/DataUsageSummary;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.settings.ACTION_DATA_KEY_NEGATIVE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/DataUsageSummary$35;->this$0:Lcom/android/settings/DataUsageSummary;

    iget-object v2, p0, Lcom/android/settings/DataUsageSummary$35;->this$0:Lcom/android/settings/DataUsageSummary;

    # invokes: Lcom/android/settings/DataUsageSummary;->isMobileDataEnabled()Z
    invoke-static {v2}, Lcom/android/settings/DataUsageSummary;->access$1300(Lcom/android/settings/DataUsageSummary;)Z

    move-result v2

    # invokes: Lcom/android/settings/DataUsageSummary;->setMobileDataEnabled(Z)V
    invoke-static {v1, v2}, Lcom/android/settings/DataUsageSummary;->access$2300(Lcom/android/settings/DataUsageSummary;Z)V

    :cond_0
    return-void
.end method
