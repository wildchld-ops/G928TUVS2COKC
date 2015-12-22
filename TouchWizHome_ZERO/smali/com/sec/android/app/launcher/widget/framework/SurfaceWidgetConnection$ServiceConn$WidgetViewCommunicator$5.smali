.class Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$ServiceConn$WidgetViewCommunicator$5;
.super Ljava/lang/Object;
.source "SurfaceWidgetConnection.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$ServiceConn$WidgetViewCommunicator;->onSurfaceWidgetDisconnect()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$ServiceConn$WidgetViewCommunicator;

.field final synthetic val$widgetView:Lcom/sec/android/app/launcher/views/SurfaceWidgetView;


# direct methods
.method constructor <init>(Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$ServiceConn$WidgetViewCommunicator;Lcom/sec/android/app/launcher/views/SurfaceWidgetView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$ServiceConn$WidgetViewCommunicator$5;->this$0:Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$ServiceConn$WidgetViewCommunicator;

    iput-object p2, p0, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$ServiceConn$WidgetViewCommunicator$5;->val$widgetView:Lcom/sec/android/app/launcher/views/SurfaceWidgetView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$ServiceConn$WidgetViewCommunicator$5;->val$widgetView:Lcom/sec/android/app/launcher/views/SurfaceWidgetView;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/views/SurfaceWidgetView;->surfaceWidgetRestart()V

    return-void
.end method
