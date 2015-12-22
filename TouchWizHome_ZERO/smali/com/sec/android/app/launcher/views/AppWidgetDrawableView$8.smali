.class Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$8;
.super Ljava/lang/Object;
.source "AppWidgetDrawableView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->setVisible()V
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

    iput-object p1, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$8;->this$0:Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$8;->this$0:Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;

    # getter for: Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->mHostView:Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$HostView;
    invoke-static {v0}, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->access$400(Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;)Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$HostView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$HostView;->invalidate()V

    return-void
.end method
