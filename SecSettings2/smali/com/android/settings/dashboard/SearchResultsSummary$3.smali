.class Lcom/android/settings/dashboard/SearchResultsSummary$3;
.super Ljava/lang/Object;
.source "SearchResultsSummary.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/dashboard/SearchResultsSummary;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/dashboard/SearchResultsSummary;


# direct methods
.method constructor <init>(Lcom/android/settings/dashboard/SearchResultsSummary;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/dashboard/SearchResultsSummary$3;->this$0:Lcom/android/settings/dashboard/SearchResultsSummary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/dashboard/SearchResultsSummary$3;->this$0:Lcom/android/settings/dashboard/SearchResultsSummary;

    invoke-virtual {v0}, Lcom/android/settings/dashboard/SearchResultsSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    return-void
.end method
