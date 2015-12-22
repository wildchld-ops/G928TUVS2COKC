.class Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$ServiceConn$WidgetViewCommunicator$7;
.super Ljava/lang/Object;
.source "SurfaceWidgetConnection.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$ServiceConn$WidgetViewCommunicator;->updateContentDescription(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$ServiceConn$WidgetViewCommunicator;

.field final synthetic val$description:Ljava/lang/String;

.field final synthetic val$widgetView:Lcom/sec/android/app/launcher/views/SurfaceWidgetView;


# direct methods
.method constructor <init>(Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$ServiceConn$WidgetViewCommunicator;Ljava/lang/String;Lcom/sec/android/app/launcher/views/SurfaceWidgetView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$ServiceConn$WidgetViewCommunicator$7;->this$0:Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$ServiceConn$WidgetViewCommunicator;

    iput-object p2, p0, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$ServiceConn$WidgetViewCommunicator$7;->val$description:Ljava/lang/String;

    iput-object p3, p0, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$ServiceConn$WidgetViewCommunicator$7;->val$widgetView:Lcom/sec/android/app/launcher/views/SurfaceWidgetView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const-string v0, "SurfaceWidgetConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Updating content description"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$ServiceConn$WidgetViewCommunicator$7;->val$description:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$ServiceConn$WidgetViewCommunicator$7;->val$widgetView:Lcom/sec/android/app/launcher/views/SurfaceWidgetView;

    iget-object v1, p0, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$ServiceConn$WidgetViewCommunicator$7;->val$description:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/views/SurfaceWidgetView;->updateContentDescription(Ljava/lang/String;)V

    return-void
.end method
