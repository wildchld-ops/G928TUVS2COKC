.class Lcom/sec/android/app/launcher/activities/WidgetsPresenter$5;
.super Ljava/lang/Object;
.source "WidgetsPresenter.java"

# interfaces
.implements Lcom/sec/daliviews/views/Filter$FilterListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->onQueryUpdate(Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

.field final synthetic val$queryString:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sec/android/app/launcher/activities/WidgetsPresenter;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter$5;->this$0:Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

    iput-object p2, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter$5;->val$queryString:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFilterComplete(ILjava/lang/Object;)V
    .locals 6

    move-object v2, p2

    check-cast v2, Ljava/util/List;

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter$5;->this$0:Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mFilteredWidgets:Ljava/util/List;
    invoke-static {v3}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->access$900(Lcom/sec/android/app/launcher/activities/WidgetsPresenter;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter$5;->this$0:Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mFilteredWidgets:Ljava/util/List;
    invoke-static {v3}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->access$900(Lcom/sec/android/app/launcher/activities/WidgetsPresenter;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/daliviews/views/Item;

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter$5;->val$queryString:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    :cond_1
    move-object v3, v1

    check-cast v3, Lcom/sec/android/app/launcher/data/WidgetListItem;

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/data/WidgetListItem;->clearTextHighlight()V

    :cond_2
    move-object v3, v1

    check-cast v3, Lcom/sec/android/app/launcher/data/WidgetListItem;

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/data/WidgetListItem;->hasSiblings()Z

    move-result v3

    if-eqz v3, :cond_0

    check-cast v1, Lcom/sec/android/app/launcher/data/WidgetListItem;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/data/WidgetListItem;->resetAdapterFiltering()V

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter$5;->val$queryString:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_5

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/daliviews/views/Item;

    move-object v3, v1

    check-cast v3, Lcom/sec/android/app/launcher/data/WidgetListItem;

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter$5;->val$queryString:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter$5;->this$0:Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mWidgetSearchHighlight:Ljava/lang/Integer;
    invoke-static {v5}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->access$1000(Lcom/sec/android/app/launcher/activities/WidgetsPresenter;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/app/launcher/data/WidgetListItem;->applyTextHighlight(Ljava/lang/String;I)V

    move-object v3, v1

    check-cast v3, Lcom/sec/android/app/launcher/data/WidgetListItem;

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/data/WidgetListItem;->hasSiblings()Z

    move-result v3

    if-eqz v3, :cond_4

    check-cast v1, Lcom/sec/android/app/launcher/data/WidgetListItem;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/data/WidgetListItem;->applyAdapterFiltering()V

    goto :goto_1

    :cond_5
    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter$5;->this$0:Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

    # invokes: Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->updateWidgetList(Ljava/util/List;)V
    invoke-static {v3, v2}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->access$1100(Lcom/sec/android/app/launcher/activities/WidgetsPresenter;Ljava/util/List;)V

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter$5;->val$queryString:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_6

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter$5;->this$0:Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

    # setter for: Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mFilteredWidgets:Ljava/util/List;
    invoke-static {v3, v2}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->access$902(Lcom/sec/android/app/launcher/activities/WidgetsPresenter;Ljava/util/List;)Ljava/util/List;

    :goto_2
    return-void

    :cond_6
    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter$5;->this$0:Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

    const/4 v4, 0x0

    # setter for: Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mFilteredWidgets:Ljava/util/List;
    invoke-static {v3, v4}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->access$902(Lcom/sec/android/app/launcher/activities/WidgetsPresenter;Ljava/util/List;)Ljava/util/List;

    goto :goto_2
.end method
