.class Lcom/android/settings/dashboard/DashboardSummary$3;
.super Ljava/lang/Object;
.source "DashboardSummary.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/dashboard/DashboardSummary;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/dashboard/DashboardSummary;


# direct methods
.method constructor <init>(Lcom/android/settings/dashboard/DashboardSummary;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/dashboard/DashboardSummary$3;->this$0:Lcom/android/settings/dashboard/DashboardSummary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardSummary$3;->this$0:Lcom/android/settings/dashboard/DashboardSummary;

    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardSummary$3;->this$0:Lcom/android/settings/dashboard/DashboardSummary;

    invoke-virtual {v1}, Lcom/android/settings/dashboard/DashboardSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    # invokes: Lcom/android/settings/dashboard/DashboardSummary;->rebuildUI(Landroid/content/Context;)V
    invoke-static {v0, v1}, Lcom/android/settings/dashboard/DashboardSummary;->access$000(Lcom/android/settings/dashboard/DashboardSummary;Landroid/content/Context;)V

    return-void
.end method
