.class Lcom/android/server/enterprise/billing/EnterpriseBillingEngine$ApnChangeObserver;
.super Landroid/database/ContentObserver;
.source "EnterpriseBillingEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ApnChangeObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine$ApnChangeObserver;->this$0:Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3

    const-string v0, "EnterpriseBillingEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ApnChangeObserver: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine$ApnChangeObserver;->this$0:Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;->handleAllprofiles()V
    invoke-static {v0}, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;->access$000(Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;)V

    return-void
.end method
