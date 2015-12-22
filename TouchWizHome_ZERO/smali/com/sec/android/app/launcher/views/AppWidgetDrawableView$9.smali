.class Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$9;
.super Ljava/lang/Object;
.source "AppWidgetDrawableView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->detachHostView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;


# direct methods
.method constructor <init>(Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$9;->this$0:Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$9;->this$0:Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;

    # getter for: Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->mHostView:Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$HostView;
    invoke-static {v0}, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->access$400(Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;)Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$HostView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$9;->this$0:Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;

    # getter for: Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->mHostView:Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$HostView;
    invoke-static {v0}, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->access$400(Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;)Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$HostView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$HostView;->detach()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$9;->this$0:Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;

    const/4 v1, 0x0

    # setter for: Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->mHostView:Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$HostView;
    invoke-static {v0, v1}, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->access$402(Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$HostView;)Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$HostView;

    return-void
.end method
