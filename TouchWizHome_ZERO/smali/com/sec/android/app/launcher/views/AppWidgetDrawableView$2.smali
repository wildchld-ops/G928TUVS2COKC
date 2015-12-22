.class Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$2;
.super Ljava/lang/Object;
.source "AppWidgetDrawableView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->setHostView(Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$HostView;)V
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

    iput-object p1, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$2;->this$0:Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView$2;->this$0:Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;

    # invokes: Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->detachOldHostView()V
    invoke-static {v0}, Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;->access$500(Lcom/sec/android/app/launcher/views/AppWidgetDrawableView;)V

    return-void
.end method
