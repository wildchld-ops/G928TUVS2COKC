.class Lcom/sec/android/app/launcher/widget/framework/AppWidgetBinder$1;
.super Ljava/lang/Object;
.source "AppWidgetBinder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/launcher/widget/framework/AppWidgetBinder;->attachView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/launcher/widget/framework/AppWidgetBinder;

.field final synthetic val$activity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/sec/android/app/launcher/widget/framework/AppWidgetBinder;Landroid/view/View;Lcom/sec/android/app/launcher/activities/LauncherActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/launcher/widget/framework/AppWidgetBinder$1;->this$0:Lcom/sec/android/app/launcher/widget/framework/AppWidgetBinder;

    iput-object p2, p0, Lcom/sec/android/app/launcher/widget/framework/AppWidgetBinder$1;->val$view:Landroid/view/View;

    iput-object p3, p0, Lcom/sec/android/app/launcher/widget/framework/AppWidgetBinder$1;->val$activity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/launcher/widget/framework/AppWidgetBinder$1;->val$view:Landroid/view/View;

    instance-of v0, v0, Lcom/sec/android/app/launcher/views/AppWidgetView$HostView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/widget/framework/AppWidgetBinder$1;->val$view:Landroid/view/View;

    check-cast v0, Lcom/sec/android/app/launcher/views/AppWidgetView$HostView;

    iget-object v1, p0, Lcom/sec/android/app/launcher/widget/framework/AppWidgetBinder$1;->val$activity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getHostContainer()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/views/AppWidgetView$HostView;->attach(Landroid/view/ViewGroup;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/widget/framework/AppWidgetBinder$1;->val$view:Landroid/view/View;

    check-cast v0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$HostView;

    iget-object v1, p0, Lcom/sec/android/app/launcher/widget/framework/AppWidgetBinder$1;->val$activity:Lcom/sec/android/app/launcher/activities/LauncherActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getHostContainer()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$HostView;->attach(Landroid/view/ViewGroup;)V

    goto :goto_0
.end method
