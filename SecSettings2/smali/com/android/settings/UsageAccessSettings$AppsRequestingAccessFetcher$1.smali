.class Lcom/android/settings/UsageAccessSettings$AppsRequestingAccessFetcher$1;
.super Ljava/lang/Object;
.source "UsageAccessSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/UsageAccessSettings$AppsRequestingAccessFetcher;->onPostExecute(Landroid/util/ArrayMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/UsageAccessSettings$AppsRequestingAccessFetcher;


# direct methods
.method constructor <init>(Lcom/android/settings/UsageAccessSettings$AppsRequestingAccessFetcher;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/UsageAccessSettings$AppsRequestingAccessFetcher$1;->this$1:Lcom/android/settings/UsageAccessSettings$AppsRequestingAccessFetcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/UsageAccessSettings$AppsRequestingAccessFetcher$1;->this$1:Lcom/android/settings/UsageAccessSettings$AppsRequestingAccessFetcher;

    iget-object v0, v0, Lcom/android/settings/UsageAccessSettings$AppsRequestingAccessFetcher;->this$0:Lcom/android/settings/UsageAccessSettings;

    invoke-virtual {v0}, Lcom/android/settings/UsageAccessSettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->requestFocus()Z

    return-void
.end method
