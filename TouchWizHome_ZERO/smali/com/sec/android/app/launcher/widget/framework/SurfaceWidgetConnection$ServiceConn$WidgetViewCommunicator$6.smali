.class Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$ServiceConn$WidgetViewCommunicator$6;
.super Ljava/lang/Object;
.source "SurfaceWidgetConnection.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$ServiceConn$WidgetViewCommunicator;->acceptedSurfaceSize(II)V
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

    iput-object p1, p0, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$ServiceConn$WidgetViewCommunicator$6;->this$0:Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$ServiceConn$WidgetViewCommunicator;

    iput-object p2, p0, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$ServiceConn$WidgetViewCommunicator$6;->val$widgetView:Lcom/sec/android/app/launcher/views/SurfaceWidgetView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/high16 v3, 0x3f800000    # 1.0f

    const-string v1, "SurfaceWidgetConnection"

    const-string v2, "widgetView.setOpacity(1.0f)"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$ServiceConn$WidgetViewCommunicator$6;->val$widgetView:Lcom/sec/android/app/launcher/views/SurfaceWidgetView;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/launcher/views/SurfaceWidgetView;->setOpacity(F)V

    iget-object v1, p0, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$ServiceConn$WidgetViewCommunicator$6;->val$widgetView:Lcom/sec/android/app/launcher/views/SurfaceWidgetView;

    invoke-virtual {v1, v3, v3}, Lcom/sec/android/app/launcher/views/SurfaceWidgetView;->setScale(FF)V

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$ServiceConn$WidgetViewCommunicator$6;->this$0:Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$ServiceConn$WidgetViewCommunicator;

    # getter for: Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$ServiceConn$WidgetViewCommunicator;->mServiceConn:Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$ServiceConn;
    invoke-static {v1}, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$ServiceConn$WidgetViewCommunicator;->access$500(Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$ServiceConn$WidgetViewCommunicator;)Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$ServiceConn;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$ServiceConn;->onResume()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
