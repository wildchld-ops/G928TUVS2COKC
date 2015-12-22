.class Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList$SearchFilter;
.super Ljava/lang/Object;
.source "SearchAppList.java"

# interfaces
.implements Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList$Filter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SearchFilter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;


# direct methods
.method constructor <init>(Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList$SearchFilter;->this$0:Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filterWidgets()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/launcher/activities/searchapp/AppInfo;",
            ">;"
        }
    .end annotation

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string v3, ""

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList$SearchFilter;->this$0:Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;

    iget-object v4, v4, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;->mSearchEdit:Landroid/widget/SearchView;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList$SearchFilter;->this$0:Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;

    iget-object v4, v4, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;->mSearchEdit:Landroid/widget/SearchView;

    invoke-virtual {v4}, Landroid/widget/SearchView;->getQuery()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    :cond_0
    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList$SearchFilter;->this$0:Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;

    iget-object v4, v4, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;->mAdapter:Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList$AppAdapter;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList$SearchFilter;->this$0:Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;

    iget-object v4, v4, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;->mAdapter:Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList$AppAdapter;

    invoke-virtual {v4, v3}, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList$AppAdapter;->setSearchText(Ljava/lang/String;)V

    :cond_1
    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList$SearchFilter;->this$0:Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;

    iget-object v4, v4, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;->mApps:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/launcher/activities/searchapp/AppInfo;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/searchapp/AppInfo;->getAppName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-object v2
.end method
