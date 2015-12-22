.class Lcom/sec/android/app/launcher/views/AppWidgetView$3;
.super Ljava/lang/Object;
.source "AppWidgetView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/launcher/views/AppWidgetView;->setHostView(Lcom/sec/android/app/launcher/views/AppWidgetView$HostView;)V
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

    iput-object p1, p0, Lcom/sec/android/app/launcher/views/AppWidgetView$3;->this$0:Lcom/sec/android/app/launcher/views/AppWidgetView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/AppWidgetView$3;->this$0:Lcom/sec/android/app/launcher/views/AppWidgetView;

    # invokes: Lcom/sec/android/app/launcher/views/AppWidgetView;->detachOldHostView()V
    invoke-static {v0}, Lcom/sec/android/app/launcher/views/AppWidgetView;->access$800(Lcom/sec/android/app/launcher/views/AppWidgetView;)V

    return-void
.end method
