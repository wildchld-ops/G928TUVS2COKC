.class Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$ServiceConn$WidgetViewCommunicator$1;
.super Ljava/lang/Object;
.source "SurfaceWidgetConnection.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$ServiceConn$WidgetViewCommunicator;->requestSizeChange(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$ServiceConn$WidgetViewCommunicator;

.field final synthetic val$height:I

.field final synthetic val$widgetView:Lcom/sec/android/app/launcher/views/SurfaceWidgetView;

.field final synthetic val$width:I


# direct methods
.method constructor <init>(Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$ServiceConn$WidgetViewCommunicator;Lcom/sec/android/app/launcher/views/SurfaceWidgetView;II)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$ServiceConn$WidgetViewCommunicator$1;->this$0:Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$ServiceConn$WidgetViewCommunicator;

    iput-object p2, p0, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$ServiceConn$WidgetViewCommunicator$1;->val$widgetView:Lcom/sec/android/app/launcher/views/SurfaceWidgetView;

    iput p3, p0, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$ServiceConn$WidgetViewCommunicator$1;->val$width:I

    iput p4, p0, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$ServiceConn$WidgetViewCommunicator$1;->val$height:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$ServiceConn$WidgetViewCommunicator$1;->val$widgetView:Lcom/sec/android/app/launcher/views/SurfaceWidgetView;

    iget v1, p0, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$ServiceConn$WidgetViewCommunicator$1;->val$width:I

    iget v2, p0, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetConnection$ServiceConn$WidgetViewCommunicator$1;->val$height:I

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/launcher/views/SurfaceWidgetView;->resizeSurfaceWidgetView(II)V

    return-void
.end method
