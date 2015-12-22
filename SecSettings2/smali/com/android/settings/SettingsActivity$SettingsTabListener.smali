.class Lcom/android/settings/SettingsActivity$SettingsTabListener;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/app/ActionBar$TabListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/SettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsTabListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SettingsActivity;


# direct methods
.method private constructor <init>(Lcom/android/settings/SettingsActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/SettingsActivity$SettingsTabListener;->this$0:Lcom/android/settings/SettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/SettingsActivity;Lcom/android/settings/SettingsActivity$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/SettingsActivity$SettingsTabListener;-><init>(Lcom/android/settings/SettingsActivity;)V

    return-void
.end method


# virtual methods
.method public onTabReselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 0

    return-void
.end method

.method public onTabSelected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 4

    invoke-virtual {p1}, Landroid/app/ActionBar$Tab;->getPosition()I

    move-result v1

    iget-object v2, p0, Lcom/android/settings/SettingsActivity$SettingsTabListener;->this$0:Lcom/android/settings/SettingsActivity;

    # getter for: Lcom/android/settings/SettingsActivity;->mDashboardTabcategories:Ljava/util/List;
    invoke-static {v2}, Lcom/android/settings/SettingsActivity;->access$1200(Lcom/android/settings/SettingsActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/dashboard/DashboardCategory;

    iget-object v2, p0, Lcom/android/settings/SettingsActivity$SettingsTabListener;->this$0:Lcom/android/settings/SettingsActivity;

    # getter for: Lcom/android/settings/SettingsActivity;->mDashBoardFragment:Lcom/android/settings/dashboard/DashboardSummary;
    invoke-static {v2}, Lcom/android/settings/SettingsActivity;->access$800(Lcom/android/settings/SettingsActivity;)Lcom/android/settings/dashboard/DashboardSummary;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/SettingsActivity$SettingsTabListener;->this$0:Lcom/android/settings/SettingsActivity;

    # getter for: Lcom/android/settings/SettingsActivity;->mDashBoardFragment:Lcom/android/settings/dashboard/DashboardSummary;
    invoke-static {v2}, Lcom/android/settings/SettingsActivity;->access$800(Lcom/android/settings/SettingsActivity;)Lcom/android/settings/dashboard/DashboardSummary;

    move-result-object v2

    # getter for: Lcom/android/settings/SettingsActivity;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/settings/SettingsActivity;->access$1400()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcom/android/settings/dashboard/DashboardSummary;->rebuildSplitTabDashBoard(Landroid/content/Context;Lcom/android/settings/dashboard/DashboardCategory;)V

    :cond_0
    return-void
.end method

.method public onTabUnselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 0

    return-void
.end method
