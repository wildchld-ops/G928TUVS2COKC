.class Lcom/sec/android/app/launcher/data/AppWidgetItem$1;
.super Ljava/lang/Object;
.source "AppWidgetItem.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/launcher/data/AppWidgetItem;->onCreateItemView()Lcom/sec/daliviews/views/NativeViewBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/launcher/data/AppWidgetItem;


# direct methods
.method constructor <init>(Lcom/sec/android/app/launcher/data/AppWidgetItem;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/launcher/data/AppWidgetItem$1;->this$0:Lcom/sec/android/app/launcher/data/AppWidgetItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/launcher/data/AppWidgetItem$1;->this$0:Lcom/sec/android/app/launcher/data/AppWidgetItem;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->unregisterDestroyListener(Lcom/sec/android/app/launcher/activities/LauncherActivity$OnActivityDestroyListener;)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/AppWidgetItem$1;->this$0:Lcom/sec/android/app/launcher/data/AppWidgetItem;

    # invokes: Lcom/sec/android/app/launcher/data/AppWidgetItem;->createHostView()V
    invoke-static {v0}, Lcom/sec/android/app/launcher/data/AppWidgetItem;->access$000(Lcom/sec/android/app/launcher/data/AppWidgetItem;)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/AppWidgetItem$1;->this$0:Lcom/sec/android/app/launcher/data/AppWidgetItem;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/data/AppWidgetItem;->updateSupportWidgetSize()V

    return-void
.end method
