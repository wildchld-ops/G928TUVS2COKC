.class Lcom/android/settings/UsageAccessSettings$1;
.super Lcom/android/internal/content/PackageMonitor;
.source "UsageAccessSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/UsageAccessSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/UsageAccessSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/UsageAccessSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/UsageAccessSettings$1;->this$0:Lcom/android/settings/UsageAccessSettings;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method


# virtual methods
.method public onPackageAdded(Ljava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/UsageAccessSettings$1;->this$0:Lcom/android/settings/UsageAccessSettings;

    # invokes: Lcom/android/settings/UsageAccessSettings;->updateInterestedApps()V
    invoke-static {v0}, Lcom/android/settings/UsageAccessSettings;->access$500(Lcom/android/settings/UsageAccessSettings;)V

    return-void
.end method

.method public onPackageRemoved(Ljava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/UsageAccessSettings$1;->this$0:Lcom/android/settings/UsageAccessSettings;

    # invokes: Lcom/android/settings/UsageAccessSettings;->updateInterestedApps()V
    invoke-static {v0}, Lcom/android/settings/UsageAccessSettings;->access$500(Lcom/android/settings/UsageAccessSettings;)V

    return-void
.end method
