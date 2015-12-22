.class Lcom/sec/android/app/launcher/activities/WidgetsPresenter$10;
.super Ljava/lang/Object;
.source "WidgetsPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->setListMode(Lcom/sec/android/app/launcher/activities/WidgetsPresenter$ListMode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

.field final synthetic val$mode:Lcom/sec/android/app/launcher/activities/WidgetsPresenter$ListMode;


# direct methods
.method constructor <init>(Lcom/sec/android/app/launcher/activities/WidgetsPresenter;Lcom/sec/android/app/launcher/activities/WidgetsPresenter$ListMode;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter$10;->this$0:Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

    iput-object p2, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter$10;->val$mode:Lcom/sec/android/app/launcher/activities/WidgetsPresenter$ListMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const/4 v3, 0x0

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter$10;->val$mode:Lcom/sec/android/app/launcher/activities/WidgetsPresenter$ListMode;

    sget-object v6, Lcom/sec/android/app/launcher/activities/WidgetsPresenter$ListMode;->NORMAL:Lcom/sec/android/app/launcher/activities/WidgetsPresenter$ListMode;

    if-ne v5, v6, :cond_2

    sget-object v5, Lcom/sec/android/app/launcher/views/ViewDefs$WidgetViewMode;->NORMAL:Lcom/sec/android/app/launcher/views/ViewDefs$WidgetViewMode;

    invoke-virtual {v5}, Lcom/sec/android/app/launcher/views/ViewDefs$WidgetViewMode;->ordinal()I

    move-result v3

    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter$10;->this$0:Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

    # getter for: Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->mWidgetItemList:Ljava/util/List;
    invoke-static {v5}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->access$1600(Lcom/sec/android/app/launcher/activities/WidgetsPresenter;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/daliviews/views/Item;

    move-object v4, v1

    check-cast v4, Lcom/sec/android/app/launcher/data/WidgetListItem;

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/data/WidgetListItem;->canUninstall()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/data/WidgetListItem;->getWidgetView()Lcom/sec/daliviews/views/IconView;

    move-result-object v2

    instance-of v5, v2, Lcom/sec/android/app/launcher/views/WidgetListItemView;

    if-eqz v5, :cond_3

    invoke-virtual {v2, v3}, Lcom/sec/daliviews/views/IconView;->changeMode(I)V

    goto :goto_1

    :cond_2
    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter$10;->val$mode:Lcom/sec/android/app/launcher/activities/WidgetsPresenter$ListMode;

    sget-object v6, Lcom/sec/android/app/launcher/activities/WidgetsPresenter$ListMode;->UNINSTALL:Lcom/sec/android/app/launcher/activities/WidgetsPresenter$ListMode;

    if-ne v5, v6, :cond_0

    sget-object v5, Lcom/sec/android/app/launcher/views/ViewDefs$WidgetViewMode;->UNINSTALL:Lcom/sec/android/app/launcher/views/ViewDefs$WidgetViewMode;

    invoke-virtual {v5}, Lcom/sec/android/app/launcher/views/ViewDefs$WidgetViewMode;->ordinal()I

    move-result v3

    goto :goto_0

    :cond_3
    instance-of v5, v2, Lcom/sec/android/app/launcher/views/WidgetListFolderItemView;

    if-eqz v5, :cond_1

    invoke-virtual {v2, v3}, Lcom/sec/daliviews/views/IconView;->changeMode(I)V

    goto :goto_1

    :cond_4
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/data/WidgetListItem;->canUninstall()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/data/WidgetListItem;->getWidgetView()Lcom/sec/daliviews/views/IconView;

    move-result-object v2

    instance-of v5, v2, Lcom/sec/android/app/launcher/views/WidgetListFolderItemView;

    if-eqz v5, :cond_1

    invoke-virtual {v2, v3}, Lcom/sec/daliviews/views/IconView;->changeMode(I)V

    goto :goto_1

    :cond_5
    return-void
.end method
