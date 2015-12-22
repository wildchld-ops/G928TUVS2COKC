.class Lcom/sec/android/app/launcher/activities/WidgetsPresenter$12;
.super Ljava/lang/Object;
.source "WidgetsPresenter.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->sortItems()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/sec/daliviews/views/Item;",
        ">;"
    }
.end annotation


# instance fields
.field private mCollator:Ljava/text/Collator;

.field final synthetic this$0:Lcom/sec/android/app/launcher/activities/WidgetsPresenter;


# direct methods
.method constructor <init>(Lcom/sec/android/app/launcher/activities/WidgetsPresenter;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter$12;->this$0:Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter$12;->mCollator:Ljava/text/Collator;

    return-void
.end method


# virtual methods
.method public compare(Lcom/sec/daliviews/views/Item;Lcom/sec/daliviews/views/Item;)I
    .locals 8

    move-object v0, p1

    check-cast v0, Lcom/sec/android/app/launcher/data/WidgetListItem;

    move-object v1, p2

    check-cast v1, Lcom/sec/android/app/launcher/data/WidgetListItem;

    invoke-virtual {p1}, Lcom/sec/daliviews/views/Item;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/sec/daliviews/views/Item;->getTitle()Ljava/lang/String;

    move-result-object v3

    if-nez v2, :cond_0

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter$12;->this$0:Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/data/WidgetListItem;->getPackageName()Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->getTitleFromPackageList(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->access$2400(Lcom/sec/android/app/launcher/activities/WidgetsPresenter;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    const-string v2, ""

    :cond_0
    if-nez v3, :cond_1

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter$12;->this$0:Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/data/WidgetListItem;->getPackageName()Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->getTitleFromPackageList(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->access$2400(Lcom/sec/android/app/launcher/activities/WidgetsPresenter;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    const-string v3, ""

    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/data/WidgetListItem;->getUserId()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/data/WidgetListItem;->getUserId()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/WidgetsPresenter$12;->mCollator:Ljava/text/Collator;

    invoke-virtual {v4, v2, v3}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    return v4
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/sec/daliviews/views/Item;

    check-cast p2, Lcom/sec/daliviews/views/Item;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter$12;->compare(Lcom/sec/daliviews/views/Item;Lcom/sec/daliviews/views/Item;)I

    move-result v0

    return v0
.end method
