.class Lcom/sec/android/app/launcher/views/AppWidgetView$8;
.super Ljava/lang/Object;
.source "AppWidgetView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/launcher/views/AppWidgetView;->detachHostView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/launcher/views/AppWidgetView;


# direct methods
.method constructor <init>(Lcom/sec/android/app/launcher/views/AppWidgetView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/launcher/views/AppWidgetView$8;->this$0:Lcom/sec/android/app/launcher/views/AppWidgetView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/AppWidgetView$8;->this$0:Lcom/sec/android/app/launcher/views/AppWidgetView;

    # getter for: Lcom/sec/android/app/launcher/views/AppWidgetView;->mHostView:Lcom/sec/android/app/launcher/views/AppWidgetView$HostView;
    invoke-static {v0}, Lcom/sec/android/app/launcher/views/AppWidgetView;->access$700(Lcom/sec/android/app/launcher/views/AppWidgetView;)Lcom/sec/android/app/launcher/views/AppWidgetView$HostView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/AppWidgetView$8;->this$0:Lcom/sec/android/app/launcher/views/AppWidgetView;

    # getter for: Lcom/sec/android/app/launcher/views/AppWidgetView;->mHostView:Lcom/sec/android/app/launcher/views/AppWidgetView$HostView;
    invoke-static {v0}, Lcom/sec/android/app/launcher/views/AppWidgetView;->access$700(Lcom/sec/android/app/launcher/views/AppWidgetView;)Lcom/sec/android/app/launcher/views/AppWidgetView$HostView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/views/AppWidgetView$HostView;->detach()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/views/AppWidgetView$8;->this$0:Lcom/sec/android/app/launcher/views/AppWidgetView;

    const/4 v1, 0x0

    # setter for: Lcom/sec/android/app/launcher/views/AppWidgetView;->mHostView:Lcom/sec/android/app/launcher/views/AppWidgetView$HostView;
    invoke-static {v0, v1}, Lcom/sec/android/app/launcher/views/AppWidgetView;->access$702(Lcom/sec/android/app/launcher/views/AppWidgetView;Lcom/sec/android/app/launcher/views/AppWidgetView$HostView;)Lcom/sec/android/app/launcher/views/AppWidgetView$HostView;

    return-void
.end method
