.class Lcom/sec/android/app/launcher/views/AppWidgetView$5;
.super Ljava/lang/Object;
.source "AppWidgetView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/launcher/views/AppWidgetView;->onSizeChanged(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/launcher/views/AppWidgetView;

.field final synthetic val$height:I

.field final synthetic val$width:I


# direct methods
.method constructor <init>(Lcom/sec/android/app/launcher/views/AppWidgetView;II)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/launcher/views/AppWidgetView$5;->this$0:Lcom/sec/android/app/launcher/views/AppWidgetView;

    iput p2, p0, Lcom/sec/android/app/launcher/views/AppWidgetView$5;->val$width:I

    iput p3, p0, Lcom/sec/android/app/launcher/views/AppWidgetView$5;->val$height:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/AppWidgetView$5;->this$0:Lcom/sec/android/app/launcher/views/AppWidgetView;

    iget v1, p0, Lcom/sec/android/app/launcher/views/AppWidgetView$5;->val$width:I

    iget v2, p0, Lcom/sec/android/app/launcher/views/AppWidgetView$5;->val$height:I

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/launcher/views/AppWidgetView;->resizeHostViewRun(II)V

    return-void
.end method
