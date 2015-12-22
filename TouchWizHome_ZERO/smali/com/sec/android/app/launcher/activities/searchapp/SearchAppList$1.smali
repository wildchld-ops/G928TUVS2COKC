.class Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList$1;
.super Ljava/lang/Object;
.source "SearchAppList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;->setFolderMultiSelectionView()V
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

    iput-object p1, p0, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList$1;->this$0:Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList$1;->this$0:Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;

    # getter for: Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;->mSelectionAll:Landroid/widget/CheckBox;
    invoke-static {v3}, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;->access$000(Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;)Landroid/widget/CheckBox;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    const/4 v1, 0x0

    :goto_0
    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList$1;->this$0:Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;

    iget-object v3, v3, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;->mAdapter:Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList$AppAdapter;

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList$AppAdapter;->getCount()I

    move-result v3

    if-ge v1, v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList$1;->this$0:Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;

    iget-object v3, v3, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;->mAdapter:Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList$AppAdapter;

    invoke-virtual {v3, v1}, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList$AppAdapter;->getItem(I)Lcom/sec/android/app/launcher/activities/searchapp/AppInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/searchapp/AppInfo;->getEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/launcher/activities/searchapp/AppInfo;->setChecked(Z)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList$1;->this$0:Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;

    iget-object v3, v3, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;->mAdapter:Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList$AppAdapter;

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList$AppAdapter;->notifyDataSetChanged()V

    return-void
.end method
