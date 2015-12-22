.class Lcom/sec/android/app/launcher/activities/HomePresenter$19;
.super Ljava/lang/Thread;
.source "HomePresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/launcher/activities/HomePresenter;->deleteAppWidget(Lcom/sec/android/app/launcher/data/AppWidgetItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

.field final synthetic val$appWidgetHost:Lcom/sec/android/app/launcher/widget/framework/HomeAppWidgetHost;

.field final synthetic val$widgetItem:Lcom/sec/android/app/launcher/data/AppWidgetItem;


# direct methods
.method constructor <init>(Lcom/sec/android/app/launcher/activities/HomePresenter;Ljava/lang/String;Lcom/sec/android/app/launcher/data/AppWidgetItem;Lcom/sec/android/app/launcher/widget/framework/HomeAppWidgetHost;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$19;->this$0:Lcom/sec/android/app/launcher/activities/HomePresenter;

    iput-object p3, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$19;->val$widgetItem:Lcom/sec/android/app/launcher/data/AppWidgetItem;

    iput-object p4, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$19;->val$appWidgetHost:Lcom/sec/android/app/launcher/widget/framework/HomeAppWidgetHost;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$19;->val$widgetItem:Lcom/sec/android/app/launcher/data/AppWidgetItem;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/data/AppWidgetItem;->getWidgetId()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomePresenter$19;->val$appWidgetHost:Lcom/sec/android/app/launcher/widget/framework/HomeAppWidgetHost;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/launcher/widget/framework/HomeAppWidgetHost;->deleteAppWidgetId(I)V

    const-string v1, "HomePresenter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Delete Widget using with home TRASH_CONTAINER - deleteAppWidgetId : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
