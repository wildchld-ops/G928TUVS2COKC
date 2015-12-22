.class Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList$4;
.super Ljava/lang/Object;
.source "SearchAppList.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;


# direct methods
.method constructor <init>(Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList$4;->this$0:Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList$4;->this$0:Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;

    invoke-virtual {v5}, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;->getCallingActivity()Landroid/content/ComponentName;

    move-result-object v5

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList$4;->this$0:Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;

    iget-object v5, v5, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;->mAdapter:Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList$AppAdapter;

    iget-object v5, v5, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList$AppAdapter;->toShow:Ljava/util/ArrayList;

    invoke-virtual {v5, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/launcher/activities/searchapp/AppInfo;

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList$4;->this$0:Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;

    # getter for: Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;->mMode:Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList$AppListMode;
    invoke-static {v5}, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;->access$400(Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;)Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList$AppListMode;

    move-result-object v5

    sget-object v6, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList$AppListMode;->FOLDER:Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList$AppListMode;

    if-ne v5, v6, :cond_2

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/searchapp/AppInfo;->getEnabled()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/searchapp/AppInfo;->getChecked()Z

    move-result v5

    if-nez v5, :cond_0

    const/4 v4, 0x1

    :cond_0
    invoke-virtual {v0, v4}, Lcom/sec/android/app/launcher/activities/searchapp/AppInfo;->setChecked(Z)V

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList$4;->this$0:Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;

    iget-object v4, v4, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;->mAdapter:Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList$AppAdapter;

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList$AppAdapter;->notifyDataSetChanged()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/searchapp/AppInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList$4;->this$0:Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;

    invoke-static {v2, v4}, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;->launchApp(Landroid/content/Intent;Landroid/content/Context;)V

    goto :goto_0

    :cond_3
    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList$4;->this$0:Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;

    const-string v6, "input_method"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v1, v5, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList$4;->this$0:Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;

    iget-object v4, v4, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;->mAdapter:Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList$AppAdapter;

    invoke-virtual {v4, p3}, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList$AppAdapter;->removeData(I)Lcom/sec/android/app/launcher/activities/searchapp/AppInfo;

    move-result-object v0

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList$4;->this$0:Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;

    const/4 v5, -0x1

    invoke-virtual {v4, v5, v3}, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;->setResult(ILandroid/content/Intent;)V

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList$4;->this$0:Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;->finish()V

    goto :goto_0
.end method
