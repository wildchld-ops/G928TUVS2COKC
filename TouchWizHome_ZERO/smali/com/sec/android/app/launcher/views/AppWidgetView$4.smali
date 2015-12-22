.class Lcom/sec/android/app/launcher/views/AppWidgetView$4;
.super Ljava/lang/Object;
.source "AppWidgetView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/launcher/views/AppWidgetView;
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

    iput-object p1, p0, Lcom/sec/android/app/launcher/views/AppWidgetView$4;->this$0:Lcom/sec/android/app/launcher/views/AppWidgetView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/AppWidgetView$4;->this$0:Lcom/sec/android/app/launcher/views/AppWidgetView;

    # getter for: Lcom/sec/android/app/launcher/views/AppWidgetView;->mScrollTaken:Z
    invoke-static {v0}, Lcom/sec/android/app/launcher/views/AppWidgetView;->access$900(Lcom/sec/android/app/launcher/views/AppWidgetView;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/AppWidgetView$4;->this$0:Lcom/sec/android/app/launcher/views/AppWidgetView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/views/AppWidgetView;->setRedrawOnlyWhenDirty(Z)V

    :cond_0
    return-void
.end method
