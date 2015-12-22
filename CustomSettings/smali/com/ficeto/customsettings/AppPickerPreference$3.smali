.class Lcom/ficeto/customsettings/AppPickerPreference$3;
.super Landroid/os/AsyncTask;
.source "AppPickerPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ficeto/customsettings/AppPickerPreference;->setData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ficeto/customsettings/AppPickerPreference;


# direct methods
.method constructor <init>(Lcom/ficeto/customsettings/AppPickerPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/ficeto/customsettings/AppPickerPreference$3;->this$0:Lcom/ficeto/customsettings/AppPickerPreference;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/ficeto/customsettings/AppPickerPreference$3;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 14

    const/4 v13, 0x0

    const/4 v11, 0x0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v8, p0, Lcom/ficeto/customsettings/AppPickerPreference$3;->this$0:Lcom/ficeto/customsettings/AppPickerPreference;

    # getter for: Lcom/ficeto/customsettings/AppPickerPreference;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static {v8}, Lcom/ficeto/customsettings/AppPickerPreference;->access$1(Lcom/ficeto/customsettings/AppPickerPreference;)Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {v8, v11}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v5

    new-instance v4, Landroid/content/Intent;

    const-string v8, "android.intent.action.MAIN"

    invoke-direct {v4, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v8, "android.intent.category.LAUNCHER"

    invoke-virtual {v4, v8}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_3

    :cond_1
    new-instance v8, Landroid/content/pm/ResolveInfo$DisplayNameComparator;

    iget-object v9, p0, Lcom/ficeto/customsettings/AppPickerPreference$3;->this$0:Lcom/ficeto/customsettings/AppPickerPreference;

    # getter for: Lcom/ficeto/customsettings/AppPickerPreference;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static {v9}, Lcom/ficeto/customsettings/AppPickerPreference;->access$1(Lcom/ficeto/customsettings/AppPickerPreference;)Landroid/content/pm/PackageManager;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/content/pm/ResolveInfo$DisplayNameComparator;-><init>(Landroid/content/pm/PackageManager;)V

    invoke-static {v2, v8}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object v8, p0, Lcom/ficeto/customsettings/AppPickerPreference$3;->this$0:Lcom/ficeto/customsettings/AppPickerPreference;

    # getter for: Lcom/ficeto/customsettings/AppPickerPreference;->mListData:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/ficeto/customsettings/AppPickerPreference;->access$7(Lcom/ficeto/customsettings/AppPickerPreference;)Ljava/util/ArrayList;

    move-result-object v8

    new-instance v9, Lcom/ficeto/customsettings/AppPickerPreference$AppItem;

    iget-object v10, p0, Lcom/ficeto/customsettings/AppPickerPreference$3;->this$0:Lcom/ficeto/customsettings/AppPickerPreference;

    iget-object v11, p0, Lcom/ficeto/customsettings/AppPickerPreference$3;->this$0:Lcom/ficeto/customsettings/AppPickerPreference;

    # getter for: Lcom/ficeto/customsettings/AppPickerPreference;->mContext:Landroid/content/Context;
    invoke-static {v11}, Lcom/ficeto/customsettings/AppPickerPreference;->access$8(Lcom/ficeto/customsettings/AppPickerPreference;)Landroid/content/Context;

    move-result-object v11

    const v12, 0x7f080005

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11, v13}, Lcom/ficeto/customsettings/AppPickerPreference$AppItem;-><init>(Lcom/ficeto/customsettings/AppPickerPreference;Ljava/lang/String;Landroid/content/pm/ResolveInfo;)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_4

    :cond_2
    return-object v13

    :cond_3
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/PackageInfo;

    invoke-virtual {p0}, Lcom/ficeto/customsettings/AppPickerPreference$3;->isCancelled()Z

    move-result v9

    if-nez v9, :cond_1

    iget-object v9, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v9}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v9, p0, Lcom/ficeto/customsettings/AppPickerPreference$3;->this$0:Lcom/ficeto/customsettings/AppPickerPreference;

    # getter for: Lcom/ficeto/customsettings/AppPickerPreference;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static {v9}, Lcom/ficeto/customsettings/AppPickerPreference;->access$1(Lcom/ficeto/customsettings/AppPickerPreference;)Landroid/content/pm/PackageManager;

    move-result-object v9

    invoke-virtual {v9, v4, v11}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    invoke-virtual {p0}, Lcom/ficeto/customsettings/AppPickerPreference$3;->isCancelled()Z

    move-result v9

    if-nez v9, :cond_2

    iget-object v9, p0, Lcom/ficeto/customsettings/AppPickerPreference$3;->this$0:Lcom/ficeto/customsettings/AppPickerPreference;

    # getter for: Lcom/ficeto/customsettings/AppPickerPreference;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static {v9}, Lcom/ficeto/customsettings/AppPickerPreference;->access$1(Lcom/ficeto/customsettings/AppPickerPreference;)Landroid/content/pm/PackageManager;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v1, Lcom/ficeto/customsettings/AppPickerPreference$AppItem;

    iget-object v9, p0, Lcom/ficeto/customsettings/AppPickerPreference$3;->this$0:Lcom/ficeto/customsettings/AppPickerPreference;

    invoke-direct {v1, v9, v3, v7}, Lcom/ficeto/customsettings/AppPickerPreference$AppItem;-><init>(Lcom/ficeto/customsettings/AppPickerPreference;Ljava/lang/String;Landroid/content/pm/ResolveInfo;)V

    iget-object v9, p0, Lcom/ficeto/customsettings/AppPickerPreference$3;->this$0:Lcom/ficeto/customsettings/AppPickerPreference;

    # getter for: Lcom/ficeto/customsettings/AppPickerPreference;->mListData:Ljava/util/ArrayList;
    invoke-static {v9}, Lcom/ficeto/customsettings/AppPickerPreference;->access$7(Lcom/ficeto/customsettings/AppPickerPreference;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/ficeto/customsettings/AppPickerPreference$3;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 4

    iget-object v0, p0, Lcom/ficeto/customsettings/AppPickerPreference$3;->this$0:Lcom/ficeto/customsettings/AppPickerPreference;

    # getter for: Lcom/ficeto/customsettings/AppPickerPreference;->mProgressBar:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/ficeto/customsettings/AppPickerPreference;->access$5(Lcom/ficeto/customsettings/AppPickerPreference;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/ficeto/customsettings/AppPickerPreference$3;->this$0:Lcom/ficeto/customsettings/AppPickerPreference;

    # getter for: Lcom/ficeto/customsettings/AppPickerPreference;->mSearch:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/ficeto/customsettings/AppPickerPreference;->access$9(Lcom/ficeto/customsettings/AppPickerPreference;)Landroid/widget/EditText;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    iget-object v0, p0, Lcom/ficeto/customsettings/AppPickerPreference$3;->this$0:Lcom/ficeto/customsettings/AppPickerPreference;

    # getter for: Lcom/ficeto/customsettings/AppPickerPreference;->mListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/ficeto/customsettings/AppPickerPreference;->access$4(Lcom/ficeto/customsettings/AppPickerPreference;)Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Lcom/ficeto/adapters/IconListAdapter;

    iget-object v2, p0, Lcom/ficeto/customsettings/AppPickerPreference$3;->this$0:Lcom/ficeto/customsettings/AppPickerPreference;

    # getter for: Lcom/ficeto/customsettings/AppPickerPreference;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/ficeto/customsettings/AppPickerPreference;->access$8(Lcom/ficeto/customsettings/AppPickerPreference;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/ficeto/customsettings/AppPickerPreference$3;->this$0:Lcom/ficeto/customsettings/AppPickerPreference;

    # getter for: Lcom/ficeto/customsettings/AppPickerPreference;->mListData:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/ficeto/customsettings/AppPickerPreference;->access$7(Lcom/ficeto/customsettings/AppPickerPreference;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/ficeto/adapters/IconListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/ficeto/customsettings/AppPickerPreference$3;->this$0:Lcom/ficeto/customsettings/AppPickerPreference;

    # getter for: Lcom/ficeto/customsettings/AppPickerPreference;->mListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/ficeto/customsettings/AppPickerPreference;->access$4(Lcom/ficeto/customsettings/AppPickerPreference;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/ficeto/adapters/IconListAdapter;

    invoke-virtual {v0}, Lcom/ficeto/adapters/IconListAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    iget-object v0, p0, Lcom/ficeto/customsettings/AppPickerPreference$3;->this$0:Lcom/ficeto/customsettings/AppPickerPreference;

    # getter for: Lcom/ficeto/customsettings/AppPickerPreference;->mProgressBar:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/ficeto/customsettings/AppPickerPreference;->access$5(Lcom/ficeto/customsettings/AppPickerPreference;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/ficeto/customsettings/AppPickerPreference$3;->this$0:Lcom/ficeto/customsettings/AppPickerPreference;

    # getter for: Lcom/ficeto/customsettings/AppPickerPreference;->mProgressBar:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/ficeto/customsettings/AppPickerPreference;->access$5(Lcom/ficeto/customsettings/AppPickerPreference;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->refreshDrawableState()V

    iget-object v0, p0, Lcom/ficeto/customsettings/AppPickerPreference$3;->this$0:Lcom/ficeto/customsettings/AppPickerPreference;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/ficeto/customsettings/AppPickerPreference;->access$6(Lcom/ficeto/customsettings/AppPickerPreference;Ljava/util/ArrayList;)V

    return-void
.end method
