.class Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList$AppAdapter$1;
.super Ljava/lang/Object;
.source "SearchAppList.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList$AppAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList$AppAdapter;


# direct methods
.method constructor <init>(Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList$AppAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList$AppAdapter$1;->this$1:Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList$AppAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/launcher/activities/searchapp/AppInfo;

    invoke-virtual {v0, p2}, Lcom/sec/android/app/launcher/activities/searchapp/AppInfo;->setChecked(Z)V

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList$AppAdapter$1;->this$1:Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList$AppAdapter;

    iget-object v1, v1, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList$AppAdapter;->this$0:Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;

    # invokes: Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;->setSelectionCount()V
    invoke-static {v1}, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;->access$700(Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;)V

    return-void
.end method
