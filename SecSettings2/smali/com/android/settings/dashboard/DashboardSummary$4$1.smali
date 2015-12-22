.class Lcom/android/settings/dashboard/DashboardSummary$4$1;
.super Ljava/lang/Object;
.source "DashboardSummary.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/dashboard/DashboardSummary$4;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/dashboard/DashboardSummary$4;


# direct methods
.method constructor <init>(Lcom/android/settings/dashboard/DashboardSummary$4;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/dashboard/DashboardSummary$4$1;->this$1:Lcom/android/settings/dashboard/DashboardSummary$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardSummary$4$1;->this$1:Lcom/android/settings/dashboard/DashboardSummary$4;

    iget-object v0, v0, Lcom/android/settings/dashboard/DashboardSummary$4;->this$0:Lcom/android/settings/dashboard/DashboardSummary;

    invoke-virtual {v0}, Lcom/android/settings/dashboard/DashboardSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    return-void
.end method
